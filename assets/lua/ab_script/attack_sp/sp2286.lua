--1023300:超サイヤ人孫悟空(ゼノ)_瞬間移動かめはめ波
--sp_effect_a1_00324
--sp2286

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
SP_01 = 158534; --悟空登場〜かめはめ波タメ  ef_001
SP_02 = 158535; --悟空登場〜かめはめ波タメ  ef_002
SP_03 = 158536; --悟空瞬間移動〜フィニッシュ ef_003
SP_04 = 158537; --悟空瞬間移動〜フィニッシュ ef_004

--敵側
SP_01r = 158538; --敵用：悟空登場〜かめはめ波タメ  ef_001r
SP_02r = 158539; --敵用：悟空登場〜かめはめ波タメ  ef_002r
SP_03r = 158540; --敵用：悟空瞬間移動〜フィニッシュ ef_003r
SP_04r = 158541; --敵用：悟空瞬間移動〜フィニッシュ ef_004r

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
-- 悟空登場〜かめはめ波タメ(266F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 266 -1, 0x100, -1, 0, 0, 0 );  --悟空登場〜かめはめ波タメ    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 266 -1, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 266 -1, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 266 -1, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 266 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 266 -1, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 266 -1, 0x80, -1, 0, 0, 0 );  --悟空登場〜かめはめ波タメ ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 266 -1, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 266 -1, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 266 -1, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 266 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 266 -1, first_b, 0 );

spep_x = spep_0 + 0;
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

-- ** 書き文字エントリー ** --
ctba = entryEffectLife( spep_0 -3 + 92,  10022, 30, 0x100, -1, 0, 158.7, 150.6 );   --バッ
setEffMoveKey( spep_0 -3 + 92, ctba, 158.7, 150.6 , 0 );
setEffMoveKey( spep_0 -3 + 94, ctba, 178.5, 172.4 , 0 );
setEffMoveKey( spep_0 -3 + 96, ctba, 187, 181.7 , 0 );
setEffMoveKey( spep_0 -3 + 98, ctba, 191.4, 194.7 , 0 );
setEffMoveKey( spep_0 -3 + 100, ctba, 195.4, 185.9 , 0 );
setEffMoveKey( spep_0 -3 + 102, ctba, 202.3, 205.4 , 0 );
setEffMoveKey( spep_0 -3 + 104, ctba, 200.8, 194.7 , 0 );
setEffMoveKey( spep_0 -3 + 106, ctba, 209.6, 211.7 , 0 );
setEffMoveKey( spep_0 -3 + 108, ctba, 212.9, 199.7 , 0 );
setEffMoveKey( spep_0 -3 + 110, ctba, 205.5, 213.3 , 0 );
setEffMoveKey( spep_0 -3 + 112, ctba, 220.2, 205.8 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctba, 213.3, 220.2 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctba, 218.2, 206.1 , 0 );
setEffMoveKey( spep_0 -3 + 118, ctba, 218.8, 222.7 , 0 );
setEffMoveKey( spep_0 -3 + 120, ctba, 212.3, 208.4 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctba, 212.4, 208.3 , 0 );
setEffScaleKey( spep_0 -3 + 92, ctba, 0.84, 0.83 );
setEffScaleKey( spep_0 -3 + 94, ctba, 1.01, 0.99 );
setEffScaleKey( spep_0 -3 + 96, ctba, 1.08, 1.06 );
setEffScaleKey( spep_0 -3 + 98, ctba, 1.13, 1.11 );
setEffScaleKey( spep_0 -3 + 100, ctba, 1.17, 1.14 );
setEffScaleKey( spep_0 -3 + 102, ctba, 1.2, 1.18 );
setEffScaleKey( spep_0 -3 + 104, ctba, 1.22, 1.2 );
setEffScaleKey( spep_0 -3 + 106, ctba, 1.25, 1.22 );
setEffScaleKey( spep_0 -3 + 108, ctba, 1.27, 1.24 );
setEffScaleKey( spep_0 -3 + 110, ctba, 1.28, 1.26 );
setEffScaleKey( spep_0 -3 + 112, ctba, 1.3, 1.27 );
setEffScaleKey( spep_0 -3 + 114, ctba, 1.31, 1.28 );
setEffScaleKey( spep_0 -3 + 116, ctba, 1.32, 1.29 );
setEffScaleKey( spep_0 -3 + 118, ctba, 1.32, 1.3 );
setEffScaleKey( spep_0 -3 + 120, ctba, 1.33, 1.3 );
setEffScaleKey( spep_0 -3 + 122, ctba, 1.33, 1.3 );
setEffRotateKey( spep_0 -3 + 92, ctba, 30 );
setEffRotateKey( spep_0 -3 + 122, ctba, 30 );
setEffAlphaKey( spep_0 -3 + 92, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 110, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 112, ctba, 180 );
setEffAlphaKey( spep_0 -3 + 114, ctba, 118 );
setEffAlphaKey( spep_0 -3 + 116, ctba, 69 );
setEffAlphaKey( spep_0 -3 + 118, ctba, 32 );
setEffAlphaKey( spep_0 -3 + 120, ctba, 9 );
setEffAlphaKey( spep_0 -3 + 122, ctba, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 180, 1, 1 );
changeAnime( spep_0 -3 + 180, 1, 102 );

setBlendColor( spep_0 -3 + 180, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_0 -3 + 267, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_0 -3 + 268, 1, 3, 0.41, 0.79, 1.0, 0 );

setMoveKey( spep_0 -3 + 180, 1, 1659.7, -2006.3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 1559.2, -1925.8 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 1468, -1841.5 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 1357.4, -1744.7 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 1253.2, -1636.6 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 1128.5, -1519.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 1004, -1383.1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 862.2, -1229.3 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 721.8, -1061.1 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 638.1, -934.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 543.9, -780.3 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 443.5, -619.1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 367.8, -498.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 302.3, -398.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 260.6, -327.1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 225.2, -269.4 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 205.4, -240.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 191.3, -213.6 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 181.6, -206.4 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 183.4, -201.4 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 179.4, -198.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 183.6, -200.9 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 177.7, -200.1 , 0 );

setScaleKey( spep_0 -3 + 180, 1, 9.57, 9.57 );
setScaleKey( spep_0 -3 + 182, 1, 9.33, 9.33 );
setScaleKey( spep_0 -3 + 184, 1, 9.08, 9.08 );
setScaleKey( spep_0 -3 + 186, 1, 8.79, 8.79 );
setScaleKey( spep_0 -3 + 188, 1, 8.46, 8.46 );
setScaleKey( spep_0 -3 + 190, 1, 8.07, 8.07 );
setScaleKey( spep_0 -3 + 192, 1, 7.61, 7.61 );
setScaleKey( spep_0 -3 + 194, 1, 7.07, 7.07 );
setScaleKey( spep_0 -3 + 196, 1, 6.45, 6.45 );
setScaleKey( spep_0 -3 + 198, 1, 5.91, 5.91 );
setScaleKey( spep_0 -3 + 200, 1, 5.25, 5.25 );
setScaleKey( spep_0 -3 + 202, 1, 4.59, 4.59 );
setScaleKey( spep_0 -3 + 204, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 206, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 208, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 210, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 212, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 214, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 216, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 218, 1, 2.81, 2.81 );
setScaleKey( spep_0 -3 + 220, 1, 2.8, 2.8 );

setRotateKey( spep_0 -3 + 180, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 70 );
SE002 = playSeVer2( spep_0 + 2, 1232, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 78, 1182, "",spep_0 + 136, 14, 28, -1);
setSeVolumeByWorkId( spep_0 + 78, SE004, 52 );
setStartTimeMs( SE004,  67 );
SE005 = playSeVer2( spep_0 + 86, 1013, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1007, "", 0, 0, 0, -1);

--かめはめ波溜め
SE007 = playSeVer2( spep_0 + 130, 1210, "",spep_0 +266 + 14 -1, 20, 8, -1);
setStartTimeMs( SE007,  333 );
SE009 = playSeVer2( spep_0 + 132, 1209, "",spep_0 +266 + 14 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 132, SE009, 78 );

--腕合わせる
SE008 = playSeVer2( spep_0 + 132, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE008, 78 );

--画面遷移
SE010 = playSeVer2( spep_0 + 160, 1072, "", 0, 0, 0, 0.6);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 222 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE011, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 0, 1, 3, 0.41, 0.79, 1.0, 0.3 );
    setBlendColor( SP_dodge + 8, 1, 3, 0.41, 0.79, 1.0, 0.3 );
    setBlendColor( SP_dodge + 9, 1, 3, 0.41, 0.79, 1.0, 0 );

    setMoveKey( SP_dodge + 0, 1, 177.7, -200.1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 182.9, -199.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 178.7, -198.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 184, -198.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 178.7, -199.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 182.6, -198.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.8, 2.8 );
    setScaleKey( SP_dodge + 10, 1, 2.8, 2.8 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 268, 1, 0 );

setMoveKey( spep_0 -3 + 226, 1, 182.9, -199.5 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 178.7, -198.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 184, -198.8 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 178.7, -199.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 182.6, -198.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 179.6, -202.4 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 183.9, -199.5 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 178, -197.9 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 184.5, -200.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 178.4, -201.4 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 182.6, -199.7 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 178.2, -203 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 183, -200.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 178.9, -201.4 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 183.5, -199.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 178, -201 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 182.9, -197.1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 178.6, -200.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 184.1, -200.1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 177.7, -199.1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 184, -199.4 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 179.8, -202 , 0 );

setScaleKey( spep_0 -3 + 268, 1, 2.8, 2.8 );

setRotateKey( spep_0 -3 + 268, 1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 266 -1;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_1 + 0, SE_05 );

--発射前溜め
SE011 = playSeVer2( spep_1 + 88, 1210, "",spep_1 +94 +56, 8, 10, -1);
setStartTimeMs( SE011,  2367 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--[[
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
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
]]
-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- エフェクト(248F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --悟空瞬間移動〜フィニッシュ   ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 230, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 230, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 230, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 230, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --悟空瞬間移動〜フィニッシュ    ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 230, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 230, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 230, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 230, finish_b, 0255 );

-- ** 書き文字エントリー ** --
ctsyun = entryEffectLife( spep_2 -3 + 46,  10011, 12 +1, 0x100, -1, 0, -46, 285 );  --シュンッ
setEffMoveKey( spep_2 -3 + 46, ctsyun, -46, 285 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctsyun, -21.6, 311.5 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctsyun, -13.8, 319.9 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctsyun, -9, 325.1 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctsyun, -5.6, 328.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctsyun, -3.1, 331.4 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctsyun, -0.9, 333.6 , 0 );
setEffMoveKey( spep_2 -3 + 59, ctsyun, -0.9, 333.6 , 0 );
setEffScaleKey( spep_2 -3 + 46, ctsyun, 0.94, 0.93 );
setEffScaleKey( spep_2 -3 + 48, ctsyun, 1.26, 1.25 );
setEffScaleKey( spep_2 -3 + 50, ctsyun, 1.37, 1.35 );
setEffScaleKey( spep_2 -3 + 52, ctsyun, 1.43, 1.42 );
setEffScaleKey( spep_2 -3 + 54, ctsyun, 1.48, 1.46 );
setEffScaleKey( spep_2 -3 + 56, ctsyun, 1.51, 1.5 );
setEffScaleKey( spep_2 -3 + 58, ctsyun, 1.54, 1.53 );
setEffScaleKey( spep_2 -3 + 59, ctsyun, 1.54, 1.53 );
setEffRotateKey( spep_2 -3 + 46, ctsyun, 0 );
setEffRotateKey( spep_2 -3 + 59, ctsyun, 0 );
setEffAlphaKey( spep_2 -3 + 46, ctsyun, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctsyun, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctsyun, 160 );
setEffAlphaKey( spep_2 -3 + 56, ctsyun, 88 );
setEffAlphaKey( spep_2 -3 + 58, ctsyun, 26 );
setEffAlphaKey( spep_2 -3 + 59, ctsyun, 26 );

-- ** 書き文字エントリー ** --
a2 = 8;
ctbikkuri = entryEffectLife( spep_2 -3 -18 + 108, 10000, 8 +1, 0x100, -1, 0, 59.6 -5, 130.3 );   --!!
setEffMoveKey( spep_2 -3 -18 + 108, ctbikkuri, 59.6 -5, 130.3 , 0 );
setEffMoveKey( spep_2 -3 -18 + 110, ctbikkuri, 34.8 -a2, 163.1 , 0 );
setEffMoveKey( spep_2 -3 -18 + 112, ctbikkuri, 48.5 -a2, 149.5 , 0 );
setEffMoveKey( spep_2 -3 -18 + 114, ctbikkuri, 40.9 -a2, 159.5 , 0 );
setEffMoveKey( spep_2 -3 -18 + 116, ctbikkuri, 48.5 -a2, 149.5 , 0 );
setEffMoveKey( spep_2 -3 -18 + 117, ctbikkuri, 48.5 -a2, 149.5 , 0 );
setEffScaleKey( spep_2 -3 -18 + 108, ctbikkuri, 1.64, 1.63 );
setEffScaleKey( spep_2 -3 -18 + 110, ctbikkuri, 2.64, 2.62 );
setEffScaleKey( spep_2 -3 -18 + 112, ctbikkuri, 2.38, 2.37 );
setEffScaleKey( spep_2 -3 -18 + 116, ctbikkuri, 2.38, 2.37 );
setEffScaleKey( spep_2 -3 -18 + 117, ctbikkuri, 2.38, 2.37 );
setEffRotateKey( spep_2 -3 -18 + 108, ctbikkuri, -15 );
setEffRotateKey( spep_2 -3 -18 + 117, ctbikkuri, -15 );
setEffAlphaKey( spep_2 -3 -18 + 108, ctbikkuri, 255 );
setEffAlphaKey( spep_2 -3 -18 + 117, ctbikkuri, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 -18 + 118,  10012, 22, 0x100, -1, 0, 35.1, -107.1 ); --ズオッ
setEffMoveKey( spep_2 -3 -18 + 118, ctzuo, 35.1, -107.1 , 0 );
setEffMoveKey( spep_2 -3 -18 + 120, ctzuo, 92.9, -62 , 0 );
setEffMoveKey( spep_2 -3 -18 + 122, ctzuo, 121.5, -53.1 , 0 );
setEffMoveKey( spep_2 -3 -18 + 124, ctzuo, 133.2, -35.6 , 0 );
setEffMoveKey( spep_2 -3 -18 + 126, ctzuo, 143.8, -38.2 , 0 );
setEffMoveKey( spep_2 -3 -18 + 128, ctzuo, 144.1, -27.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 130, ctzuo, 154.3, -31.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 132, ctzuo, 155.6, -26.9 , 0 );
setEffMoveKey( spep_2 -3 -18 + 134, ctzuo, 158, -13.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 136, ctzuo, 167.3, -22.7 , 0 );
setEffMoveKey( spep_2 -3 -18 + 138, ctzuo, 159.8, -20.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 140, ctzuo, 160.5, -20.1 , 0 );

setEffScaleKey( spep_2 -3 -18 + 118, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_2 -3 -18 + 120, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_2 -3 -18 + 122, ctzuo, 2.1, 2.1 );
setEffScaleKey( spep_2 -3 -18 + 124, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 -18 + 126, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 -18 + 128, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 -18 + 130, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 -18 + 132, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 -18 + 134, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 -18 + 136, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 -18 + 138, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 -18 + 140, ctzuo, 2.76, 2.76 );

setEffRotateKey( spep_2 -3 -18 + 118, ctzuo, 30 );
setEffRotateKey( spep_2 -3 -18 + 140, ctzuo, 30 );

setEffAlphaKey( spep_2 -3 -18 + 118, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 -18 + 128, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 -18 + 130, ctzuo, 173 );
setEffAlphaKey( spep_2 -3 -18 + 132, ctzuo, 109 );
setEffAlphaKey( spep_2 -3 -18 + 134, ctzuo, 62 );
setEffAlphaKey( spep_2 -3 -18 + 136, ctzuo, 28 );
setEffAlphaKey( spep_2 -3 -18 + 138, ctzuo, 7 );
setEffAlphaKey( spep_2 -3 -18 + 140, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 112, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 -3 + 60, 1, 101 );
changeAnime( spep_2 -3 + 92, 1, 117 );
changeAnime( spep_2 -3 + 100, 1, 108 );


setBlendColor( spep_2 + 0, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 48, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 50, 1, 3, 0.41, 0.79, 1.0, 0.25 );
setBlendColor( spep_2 -3 + 52, 1, 3, 0.41, 0.79, 1.0, 0.20 );
setBlendColor( spep_2 -3 + 54, 1, 3, 0.41, 0.79, 1.0, 0.15 );
setBlendColor( spep_2 -3 + 56, 1, 3, 0.41, 0.79, 1.0, 0.1 );
setBlendColor( spep_2 -3 + 58, 1, 3, 0.41, 0.79, 1.0, 0 );

setBlendColor( spep_2 -3 -18 + 110, 1, 3, 0.55, 1.0, 1.0, 0.2 );
setBlendColor( spep_2 -3 -18 + 112, 1, 3, 0.55, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 -3 -18 + 114, 1, 3, 0.55, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 -3 -18 + 118, 1, 3, 0.55, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 -3 -18 + 120, 1, 3, 0.55, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 -3 -18 + 122, 1, 3, 0.55, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 124, 1, 3, 0.65, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 126, 1, 3, 0.75, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 128, 1, 3, 0.85, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 129, 1, 3, 0.85, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 130, 1, 3, 0.85, 1.0, 1.0, 0 );

setMoveKey( spep_2 + 0, 1, 180.3, -199.5 , 0 );
setMoveKey( spep_2 + 1, 1, 175.8, -198 , 0 );
setMoveKey( spep_2 + 2, 1, 184.8, -196.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 179.3, -203 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 182.8, -196.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 175.9, -199.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 185.1, -198.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 176.8, -199.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 184, -203.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 176.1, -195.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 184.3, -204.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 177.3, -194.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 184.9, -204 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 179.4, -195.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 180.6, -204.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 182.8, -193.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 180.4, -205.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 175.5, -196.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 182.7, -202.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 179.9, -194.3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 183.5, -203.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 177, -197.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 186.4, -198.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 175.3, -200.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 183.8, -201.1 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 175.2, -198.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 183.4, -196.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 180.3, -199.5 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 180.3, -199.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 149.9, -22 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 149.9, -22 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 151.4, -22 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 196.4, -30.1 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 151.8, -25.8 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 152.8, -19.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 170.5, -25.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 159.9, -15.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 159.9, -15.9 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 59, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 99, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 100, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 102, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 104, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 106, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 112, 1, 1.4, 1.4 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 112, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE013 = playSeVer2( spep_2 + 42, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 86 -18, 1109, "", 0, 0, 0, -1);

--かめはめ波発射
SE015 = playSeVer2( spep_2 + 106 -18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106 -18, SE015, 78 );
SE016 = playSeVer2( spep_2 + 106 -18, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106 -18, SE016, 74 );
SE017 = playSeVer2( spep_2 + 106 -18, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106 -18, SE017, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 98 );
endPhase( spep_2 + 220 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 悟空登場〜かめはめ波タメ(266F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 266 -1, 0x100, -1, 0, 0, 0 );  --悟空登場〜かめはめ波タメ    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 266 -1, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 266 -1, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 266 -1, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 266 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 266 -1, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 266 -1, 0x80, -1, 0, 0, 0 );  --悟空登場〜かめはめ波タメ ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 266 -1, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 266 -1, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 266 -1, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 266 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 266 -1, first_b, 0 );

spep_x = spep_0 + 0;
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

-- ** 書き文字エントリー ** --
ctba = entryEffectLife( spep_0 -3 + 92,  10022, 30, 0x100, -1, 0, 158.7, 150.6 );   --バッ
setEffMoveKey( spep_0 -3 + 92, ctba, 158.7, 150.6 , 0 );
setEffMoveKey( spep_0 -3 + 94, ctba, 178.5, 172.4 , 0 );
setEffMoveKey( spep_0 -3 + 96, ctba, 187, 181.7 , 0 );
setEffMoveKey( spep_0 -3 + 98, ctba, 191.4, 194.7 , 0 );
setEffMoveKey( spep_0 -3 + 100, ctba, 195.4, 185.9 , 0 );
setEffMoveKey( spep_0 -3 + 102, ctba, 202.3, 205.4 , 0 );
setEffMoveKey( spep_0 -3 + 104, ctba, 200.8, 194.7 , 0 );
setEffMoveKey( spep_0 -3 + 106, ctba, 209.6, 211.7 , 0 );
setEffMoveKey( spep_0 -3 + 108, ctba, 212.9, 199.7 , 0 );
setEffMoveKey( spep_0 -3 + 110, ctba, 205.5, 213.3 , 0 );
setEffMoveKey( spep_0 -3 + 112, ctba, 220.2, 205.8 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctba, 213.3, 220.2 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctba, 218.2, 206.1 , 0 );
setEffMoveKey( spep_0 -3 + 118, ctba, 218.8, 222.7 , 0 );
setEffMoveKey( spep_0 -3 + 120, ctba, 212.3, 208.4 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctba, 212.4, 208.3 , 0 );
setEffScaleKey( spep_0 -3 + 92, ctba, 0.84, 0.83 );
setEffScaleKey( spep_0 -3 + 94, ctba, 1.01, 0.99 );
setEffScaleKey( spep_0 -3 + 96, ctba, 1.08, 1.06 );
setEffScaleKey( spep_0 -3 + 98, ctba, 1.13, 1.11 );
setEffScaleKey( spep_0 -3 + 100, ctba, 1.17, 1.14 );
setEffScaleKey( spep_0 -3 + 102, ctba, 1.2, 1.18 );
setEffScaleKey( spep_0 -3 + 104, ctba, 1.22, 1.2 );
setEffScaleKey( spep_0 -3 + 106, ctba, 1.25, 1.22 );
setEffScaleKey( spep_0 -3 + 108, ctba, 1.27, 1.24 );
setEffScaleKey( spep_0 -3 + 110, ctba, 1.28, 1.26 );
setEffScaleKey( spep_0 -3 + 112, ctba, 1.3, 1.27 );
setEffScaleKey( spep_0 -3 + 114, ctba, 1.31, 1.28 );
setEffScaleKey( spep_0 -3 + 116, ctba, 1.32, 1.29 );
setEffScaleKey( spep_0 -3 + 118, ctba, 1.32, 1.3 );
setEffScaleKey( spep_0 -3 + 120, ctba, 1.33, 1.3 );
setEffScaleKey( spep_0 -3 + 122, ctba, 1.33, 1.3 );
setEffRotateKey( spep_0 -3 + 92, ctba, 30 );
setEffRotateKey( spep_0 -3 + 122, ctba, 30 );
setEffAlphaKey( spep_0 -3 + 92, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 110, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 112, ctba, 180 );
setEffAlphaKey( spep_0 -3 + 114, ctba, 118 );
setEffAlphaKey( spep_0 -3 + 116, ctba, 69 );
setEffAlphaKey( spep_0 -3 + 118, ctba, 32 );
setEffAlphaKey( spep_0 -3 + 120, ctba, 9 );
setEffAlphaKey( spep_0 -3 + 122, ctba, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 180, 1, 1 );
changeAnime( spep_0 -3 + 180, 1, 102 );

setBlendColor( spep_0 -3 + 180, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_0 -3 + 267, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_0 -3 + 268, 1, 3, 0.41, 0.79, 1.0, 0 );

setMoveKey( spep_0 -3 + 180, 1, 1659.7, -2006.3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 1559.2, -1925.8 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 1468, -1841.5 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 1357.4, -1744.7 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 1253.2, -1636.6 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 1128.5, -1519.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 1004, -1383.1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 862.2, -1229.3 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 721.8, -1061.1 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 638.1, -934.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 543.9, -780.3 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 443.5, -619.1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 367.8, -498.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 302.3, -398.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 260.6, -327.1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 225.2, -269.4 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 205.4, -240.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 191.3, -213.6 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 181.6, -206.4 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 183.4, -201.4 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 179.4, -198.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 183.6, -200.9 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 177.7, -200.1 , 0 );

setScaleKey( spep_0 -3 + 180, 1, 9.57, 9.57 );
setScaleKey( spep_0 -3 + 182, 1, 9.33, 9.33 );
setScaleKey( spep_0 -3 + 184, 1, 9.08, 9.08 );
setScaleKey( spep_0 -3 + 186, 1, 8.79, 8.79 );
setScaleKey( spep_0 -3 + 188, 1, 8.46, 8.46 );
setScaleKey( spep_0 -3 + 190, 1, 8.07, 8.07 );
setScaleKey( spep_0 -3 + 192, 1, 7.61, 7.61 );
setScaleKey( spep_0 -3 + 194, 1, 7.07, 7.07 );
setScaleKey( spep_0 -3 + 196, 1, 6.45, 6.45 );
setScaleKey( spep_0 -3 + 198, 1, 5.91, 5.91 );
setScaleKey( spep_0 -3 + 200, 1, 5.25, 5.25 );
setScaleKey( spep_0 -3 + 202, 1, 4.59, 4.59 );
setScaleKey( spep_0 -3 + 204, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 206, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 208, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 210, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 212, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 214, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 216, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 218, 1, 2.81, 2.81 );
setScaleKey( spep_0 -3 + 220, 1, 2.8, 2.8 );

setRotateKey( spep_0 -3 + 180, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 70 );
SE002 = playSeVer2( spep_0 + 2, 1232, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 78, 1182, "",spep_0 + 136, 14, 28, -1);
setSeVolumeByWorkId( spep_0 + 78, SE004, 52 );
setStartTimeMs( SE004,  67 );
SE005 = playSeVer2( spep_0 + 86, 1013, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1007, "", 0, 0, 0, -1);

--かめはめ波溜め
SE007 = playSeVer2( spep_0 + 130, 1210, "",spep_0 +266 + 14 -1, 20, 8, -1);
setStartTimeMs( SE007,  333 );
SE009 = playSeVer2( spep_0 + 132, 1209, "",spep_0 +266 + 14 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 132, SE009, 78 );

--腕合わせる
SE008 = playSeVer2( spep_0 + 132, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE008, 78 );

--画面遷移
SE010 = playSeVer2( spep_0 + 160, 1072, "", 0, 0, 0, 0.6);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 222 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE011, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 0, 1, 3, 0.41, 0.79, 1.0, 0.3 );
    setBlendColor( SP_dodge + 8, 1, 3, 0.41, 0.79, 1.0, 0.3 );
    setBlendColor( SP_dodge + 9, 1, 3, 0.41, 0.79, 1.0, 0 );

    setMoveKey( SP_dodge + 0, 1, 177.7, -200.1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 182.9, -199.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 178.7, -198.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 184, -198.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 178.7, -199.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 182.6, -198.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.8, 2.8 );
    setScaleKey( SP_dodge + 10, 1, 2.8, 2.8 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 268, 1, 0 );

setMoveKey( spep_0 -3 + 226, 1, 182.9, -199.5 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 178.7, -198.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 184, -198.8 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 178.7, -199.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 182.6, -198.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 179.6, -202.4 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 183.9, -199.5 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 178, -197.9 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 184.5, -200.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 178.4, -201.4 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 182.6, -199.7 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 178.2, -203 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 183, -200.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 178.9, -201.4 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 183.5, -199.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 178, -201 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 182.9, -197.1 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 178.6, -200.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 184.1, -200.1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 177.7, -199.1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 184, -199.4 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 179.8, -202 , 0 );

setScaleKey( spep_0 -3 + 268, 1, 2.8, 2.8 );

setRotateKey( spep_0 -3 + 268, 1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 266 -1;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
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

--発射前溜め
SE011 = playSeVer2( spep_1 + 88, 1210, "",spep_1 +94 +56, 8, 10, -1);
setStartTimeMs( SE011,  2367 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- エフェクト(248F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --悟空瞬間移動〜フィニッシュ   ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 230, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 230, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 230, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 230, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --悟空瞬間移動〜フィニッシュ    ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 230, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 230, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 230, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 230, finish_b, 0255 );

-- ** 書き文字エントリー ** --
ctsyun = entryEffectLife( spep_2 -3 + 46,  10011, 12 +1, 0x100, -1, 0, -46, 285 );  --シュンッ
setEffMoveKey( spep_2 -3 + 46, ctsyun, -46, 285 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctsyun, -21.6, 311.5 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctsyun, -13.8, 319.9 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctsyun, -9, 325.1 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctsyun, -5.6, 328.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctsyun, -3.1, 331.4 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctsyun, -0.9, 333.6 , 0 );
setEffMoveKey( spep_2 -3 + 59, ctsyun, -0.9, 333.6 , 0 );
setEffScaleKey( spep_2 -3 + 46, ctsyun, 0.94, 0.93 );
setEffScaleKey( spep_2 -3 + 48, ctsyun, 1.26, 1.25 );
setEffScaleKey( spep_2 -3 + 50, ctsyun, 1.37, 1.35 );
setEffScaleKey( spep_2 -3 + 52, ctsyun, 1.43, 1.42 );
setEffScaleKey( spep_2 -3 + 54, ctsyun, 1.48, 1.46 );
setEffScaleKey( spep_2 -3 + 56, ctsyun, 1.51, 1.5 );
setEffScaleKey( spep_2 -3 + 58, ctsyun, 1.54, 1.53 );
setEffScaleKey( spep_2 -3 + 59, ctsyun, 1.54, 1.53 );
setEffRotateKey( spep_2 -3 + 46, ctsyun, 0 );
setEffRotateKey( spep_2 -3 + 59, ctsyun, 0 );
setEffAlphaKey( spep_2 -3 + 46, ctsyun, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctsyun, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctsyun, 160 );
setEffAlphaKey( spep_2 -3 + 56, ctsyun, 88 );
setEffAlphaKey( spep_2 -3 + 58, ctsyun, 26 );
setEffAlphaKey( spep_2 -3 + 59, ctsyun, 26 );

-- ** 書き文字エントリー ** --
a2 = 8;
ctbikkuri = entryEffectLife( spep_2 -3 -18 + 108, 10000, 8 +1, 0x100, -1, 0, 59.6 -5, 130.3 );   --!!
setEffMoveKey( spep_2 -3 -18 + 108, ctbikkuri, 59.6 -5, 130.3 , 0 );
setEffMoveKey( spep_2 -3 -18 + 110, ctbikkuri, 34.8 -a2, 163.1 , 0 );
setEffMoveKey( spep_2 -3 -18 + 112, ctbikkuri, 48.5 -a2, 149.5 , 0 );
setEffMoveKey( spep_2 -3 -18 + 114, ctbikkuri, 40.9 -a2, 159.5 , 0 );
setEffMoveKey( spep_2 -3 -18 + 116, ctbikkuri, 48.5 -a2, 149.5 , 0 );
setEffMoveKey( spep_2 -3 -18 + 117, ctbikkuri, 48.5 -a2, 149.5 , 0 );
setEffScaleKey( spep_2 -3 -18 + 108, ctbikkuri, 1.64, 1.63 );
setEffScaleKey( spep_2 -3 -18 + 110, ctbikkuri, 2.64, 2.62 );
setEffScaleKey( spep_2 -3 -18 + 112, ctbikkuri, 2.38, 2.37 );
setEffScaleKey( spep_2 -3 -18 + 116, ctbikkuri, 2.38, 2.37 );
setEffScaleKey( spep_2 -3 -18 + 117, ctbikkuri, 2.38, 2.37 );
setEffRotateKey( spep_2 -3 -18 + 108, ctbikkuri, -15 );
setEffRotateKey( spep_2 -3 -18 + 117, ctbikkuri, -15 );
setEffAlphaKey( spep_2 -3 -18 + 108, ctbikkuri, 255 );
setEffAlphaKey( spep_2 -3 -18 + 117, ctbikkuri, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 -18 + 118,  10012, 22, 0x100, -1, 0, 35.1, -107.1 ); --ズオッ
setEffMoveKey( spep_2 -3 -18 + 118, ctzuo, 35.1, -107.1 , 0 );
setEffMoveKey( spep_2 -3 -18 + 120, ctzuo, 92.9, -62 , 0 );
setEffMoveKey( spep_2 -3 -18 + 122, ctzuo, 121.5, -53.1 , 0 );
setEffMoveKey( spep_2 -3 -18 + 124, ctzuo, 133.2, -35.6 , 0 );
setEffMoveKey( spep_2 -3 -18 + 126, ctzuo, 143.8, -38.2 , 0 );
setEffMoveKey( spep_2 -3 -18 + 128, ctzuo, 144.1, -27.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 130, ctzuo, 154.3, -31.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 132, ctzuo, 155.6, -26.9 , 0 );
setEffMoveKey( spep_2 -3 -18 + 134, ctzuo, 158, -13.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 136, ctzuo, 167.3, -22.7 , 0 );
setEffMoveKey( spep_2 -3 -18 + 138, ctzuo, 159.8, -20.4 , 0 );
setEffMoveKey( spep_2 -3 -18 + 140, ctzuo, 160.5, -20.1 , 0 );

setEffScaleKey( spep_2 -3 -18 + 118, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_2 -3 -18 + 120, ctzuo, 1.74, 1.74 );
setEffScaleKey( spep_2 -3 -18 + 122, ctzuo, 2.1, 2.1 );
setEffScaleKey( spep_2 -3 -18 + 124, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 -18 + 126, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 -18 + 128, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 -18 + 130, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 -18 + 132, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 -18 + 134, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 -18 + 136, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 -18 + 138, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 -18 + 140, ctzuo, 2.76, 2.76 );

setEffRotateKey( spep_2 -3 -18 + 118, ctzuo, 30 );
setEffRotateKey( spep_2 -3 -18 + 140, ctzuo, 30 );

setEffAlphaKey( spep_2 -3 -18 + 118, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 -18 + 128, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 -18 + 130, ctzuo, 173 );
setEffAlphaKey( spep_2 -3 -18 + 132, ctzuo, 109 );
setEffAlphaKey( spep_2 -3 -18 + 134, ctzuo, 62 );
setEffAlphaKey( spep_2 -3 -18 + 136, ctzuo, 28 );
setEffAlphaKey( spep_2 -3 -18 + 138, ctzuo, 7 );
setEffAlphaKey( spep_2 -3 -18 + 140, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 112, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 -3 + 60, 1, 101 );
changeAnime( spep_2 -3 + 92, 1, 117 );
changeAnime( spep_2 -3 + 100, 1, 108 );


setBlendColor( spep_2 + 0, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 48, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 50, 1, 3, 0.41, 0.79, 1.0, 0.25 );
setBlendColor( spep_2 -3 + 52, 1, 3, 0.41, 0.79, 1.0, 0.20 );
setBlendColor( spep_2 -3 + 54, 1, 3, 0.41, 0.79, 1.0, 0.15 );
setBlendColor( spep_2 -3 + 56, 1, 3, 0.41, 0.79, 1.0, 0.1 );
setBlendColor( spep_2 -3 + 58, 1, 3, 0.41, 0.79, 1.0, 0 );

setBlendColor( spep_2 -3 -18 + 110, 1, 3, 0.55, 1.0, 1.0, 0.2 );
setBlendColor( spep_2 -3 -18 + 112, 1, 3, 0.55, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 -3 -18 + 114, 1, 3, 0.55, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 -3 -18 + 118, 1, 3, 0.55, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 -3 -18 + 120, 1, 3, 0.55, 1.0, 1.0, 0.8 );
setBlendColor( spep_2 -3 -18 + 122, 1, 3, 0.55, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 124, 1, 3, 0.65, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 126, 1, 3, 0.75, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 128, 1, 3, 0.85, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 129, 1, 3, 0.85, 1.0, 1.0, 0.9 );
setBlendColor( spep_2 -3 -18 + 130, 1, 3, 0.85, 1.0, 1.0, 0 );

setMoveKey( spep_2 + 0, 1, 180.3, -199.5 , 0 );
setMoveKey( spep_2 + 1, 1, 175.8, -198 , 0 );
setMoveKey( spep_2 + 2, 1, 184.8, -196.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 179.3, -203 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 182.8, -196.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 175.9, -199.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 185.1, -198.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 176.8, -199.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 184, -203.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 176.1, -195.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 184.3, -204.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 177.3, -194.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 184.9, -204 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 179.4, -195.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 180.6, -204.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 182.8, -193.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 180.4, -205.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 175.5, -196.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 182.7, -202.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 179.9, -194.3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 183.5, -203.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 177, -197.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 186.4, -198.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 175.3, -200.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 183.8, -201.1 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 175.2, -198.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 183.4, -196.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 180.3, -199.5 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 180.3, -199.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 149.9, -22 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 149.9, -22 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 151.4, -22 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 196.4, -30.1 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 151.8, -25.8 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 152.8, -19.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 170.5, -25.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 159.9, -15.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 159.9, -15.9 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 59, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 99, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 100, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 102, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 104, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 106, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 112, 1, 1.4, 1.4 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 112, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE013 = playSeVer2( spep_2 + 42, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 86 -18, 1109, "", 0, 0, 0, -1);

--かめはめ波発射
SE015 = playSeVer2( spep_2 + 106 -18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106 -18, SE015, 78 );
SE016 = playSeVer2( spep_2 + 106 -18, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106 -18, SE016, 74 );
SE017 = playSeVer2( spep_2 + 106 -18, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106 -18, SE017, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 98 );
endPhase( spep_2 + 220 );

end