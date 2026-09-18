-- 1026560: UR_マジュニア(巨大化)_爆力魔波
-- sp_effect_a2_00212

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_001 = 161828;  -- 冒頭～投げる：手前 ef_001
SP_002 = 161829;  -- 冒頭～投げる：奥 ef_002
SP_003 = 161830;  -- タメ～ラスト：手前 ef_003
SP_004 = 161831;  -- タメ～ラスト：奥 ef_004

-- 敵側
SP_001r = 161832;  -- 敵用・冒頭～投げる：手前 ef_001r
SP_002r = 161833;  -- 敵用・冒頭～投げる：奥 ef_002r
SP_003r = 161834;  -- 敵用・タメ～ラスト：手前 ef_003r
SP_004r = 161835;  -- 敵用・タメ～ラスト：奥 ef_004r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

spep_0 = 0;

------------------------------------------------------
-- 冒頭～投げる：手前 ef_001 (258F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 256, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 256, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 256, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 256, entry_SP_001, 255 );
entry_SP_002 = entryEffect( spep_0 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_0 + 256, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_0 + 256, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_0 + 256, entry_SP_002, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_0 + 256, entry_SP_002, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 256 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕伸ばす
SE002 = playSeVer2( spep_0 + 26, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 30, 1334, "",spep_0 + 164, 0, 56, 0.6);
SE004 = playSeVer2( spep_0 + 30, 1320, "",spep_0 + 164, 0, 56, 0.6);
SE005 = playSeVer2( spep_0 + 30, 1326, "",spep_0 + 164, 0, 56, 0.6);
SE006 = playSeVer2( spep_0 + 46, 1354, "", 0, 0, 0, -1);
setTimeStretch( SE006, 1.25, 30, 4 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    
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
n = 1;

-- ** 敵キャラクター ** --
setDisp( spep_0 - n + 90, 1, 1 );
setDisp( spep_0 - n + 146, 1, 0 );
setDisp( spep_0 - n + 208, 1, 1 );
setDisp( spep_0 - n + 212, 1, 0 );
setDisp( spep_0 - n + 216, 1, 1 );
setDisp( spep_0 + 256, 1, 0 );
changeAnime( spep_0 - n + 90, 1, 117 );
changeAnime( spep_0 - n + 108, 1, 106 );
changeAnime( spep_0 - n + 208, 1, 108 );

setMoveKey( spep_0 - n + 90, 1, 202.4, 6 , 0 );
setMoveKey( spep_0 - n + 91, 1, 202.4, 6 , 0 );
setMoveKey( spep_0 - n + 92, 1, 183.4, 5.9 , 0 );
setMoveKey( spep_0 - n + 93, 1, 183.4, 5.9 , 0 );
setMoveKey( spep_0 - n + 94, 1, 162, 5.8 , 0 );
setMoveKey( spep_0 - n + 95, 1, 162, 5.8 , 0 );
setMoveKey( spep_0 - n + 96, 1, 138.3, 5.5 , 0 );
setMoveKey( spep_0 - n + 97, 1, 138.3, 5.5 , 0 );
setMoveKey( spep_0 - n + 98, 1, 112.1, 5.1 , 0 );
setMoveKey( spep_0 - n + 99, 1, 112.1, 5.1 , 0 );
setMoveKey( spep_0 - n + 100, 1, 83.5, 4.5 , 0 );
setMoveKey( spep_0 - n + 101, 1, 83.5, 4.5 , 0 );
setMoveKey( spep_0 - n + 102, 1, 52.5, 3.7 , 0 );
setMoveKey( spep_0 - n + 103, 1, 52.5, 3.7 , 0 );
setMoveKey( spep_0 - n + 104, 1, 19.1, 2.7 , 0 );
setMoveKey( spep_0 - n + 106, 1, 19.1, 2.7 , 0 );
setMoveKey( spep_0 - n + 107, 1, -16.8, 1.4 , 0 );
setMoveKey( spep_0 - n + 107, 1, -16.8, 1.4 , 0 );
setMoveKey( spep_0 - n + 108, 1, 69.6, -191.3 , 0 );
setMoveKey( spep_0 - n + 109, 1, 69.6, -191.3 , 0 );
setMoveKey( spep_0 - n + 110, 1, 71.8, -190.7 , 0 );
setMoveKey( spep_0 - n + 111, 1, 71.8, -190.7 , 0 );
setMoveKey( spep_0 - n + 112, 1, 74, -190 , 0 );
setMoveKey( spep_0 - n + 113, 1, 74, -190 , 0 );
setMoveKey( spep_0 - n + 114, 1, 76.2, -189.4 , 0 );
setMoveKey( spep_0 - n + 115, 1, 76.2, -189.4 , 0 );
setMoveKey( spep_0 - n + 116, 1, 78.3, -188.7 , 0 );
setMoveKey( spep_0 - n + 117, 1, 78.3, -188.7 , 0 );
setMoveKey( spep_0 - n + 118, 1, 80.5, -188 , 0 );
setMoveKey( spep_0 - n + 119, 1, 80.5, -188 , 0 );
setMoveKey( spep_0 - n + 120, 1, 82.7, -187.4 , 0 );
setMoveKey( spep_0 - n + 121, 1, 82.7, -187.4 , 0 );
setMoveKey( spep_0 - n + 122, 1, 84.9, -186.7 , 0 );
setMoveKey( spep_0 - n + 123, 1, 84.9, -186.7 , 0 );
setMoveKey( spep_0 - n + 124, 1, 87.1, -186.1 , 0 );
setMoveKey( spep_0 - n + 125, 1, 87.1, -186.1 , 0 );
setMoveKey( spep_0 - n + 126, 1, 89.2, -185.4 , 0 );
setMoveKey( spep_0 - n + 127, 1, 89.2, -185.4 , 0 );
setMoveKey( spep_0 - n + 128, 1, 70, -179 , 0 );
setMoveKey( spep_0 - n + 129, 1, 70, -179 , 0 );
setMoveKey( spep_0 - n + 130, 1, -96.9, -163.3 , 0 );
setMoveKey( spep_0 - n + 131, 1, -96.9, -163.3 , 0 );
setMoveKey( spep_0 - n + 132, 1, -326.7, -141.5 , 0 );
setMoveKey( spep_0 - n + 133, 1, -326.7, -141.5 , 0 );
setMoveKey( spep_0 - n + 134, 1, -619.3, -113.7 , 0 );
setMoveKey( spep_0 - n + 135, 1, -619.3, -113.7 , 0 );
setMoveKey( spep_0 - n + 136, 1, -974.8, -79.8 , 0 );
setMoveKey( spep_0 - n + 137, 1, -974.8, -79.8 , 0 );
setMoveKey( spep_0 - n + 138, 1, -1392.9, -39.7 , 0 );
setMoveKey( spep_0 - n + 139, 1, -1392.9, -39.7 , 0 );
setMoveKey( spep_0 - n + 140, 1, -1873.8, 6.7 , 0 );
setMoveKey( spep_0 - n + 141, 1, -1873.8, 6.7 , 0 );
setMoveKey( spep_0 - n + 142, 1, -2417.2, 59.5 , 0 );
setMoveKey( spep_0 - n + 143, 1, -2417.2, 59.5 , 0 );
setMoveKey( spep_0 - n + 144, 1, -3023.2, 118.9 , 0 );
--
setMoveKey( spep_0 - n + 208, 1, 880.5, -228.1 , 0 );
setMoveKey( spep_0 - n + 209, 1, 880.5, -228.1 , 0 );
setMoveKey( spep_0 - n + 210, 1, 709.4, 746.4 , 0 );
setMoveKey( spep_0 - n + 212, 1, 709.4, 746.4 , 0 );
--
setMoveKey( spep_0 - n + 216, 1, 122.4, 732.2 , 0 );
setMoveKey( spep_0 - n + 217, 1, 122.4, 732.2 , 0 );
setMoveKey( spep_0 - n + 218, 1, 140.4, 677.3 , 0 );
setMoveKey( spep_0 - n + 219, 1, 140.4, 677.3 , 0 );
setMoveKey( spep_0 - n + 220, 1, 151.9, 608.3 , 0 );
setMoveKey( spep_0 - n + 221, 1, 151.9, 608.3 , 0 );
setMoveKey( spep_0 - n + 222, 1, 156.2, 524.4 , 0 );
setMoveKey( spep_0 - n + 223, 1, 156.2, 524.4 , 0 );
setMoveKey( spep_0 - n + 224, 1, 143.4, 439 , 0 );
setMoveKey( spep_0 - n + 225, 1, 143.4, 439 , 0 );
setMoveKey( spep_0 - n + 226, 1, 155.3, 459.1 , 0 );
setMoveKey( spep_0 - n + 227, 1, 155.3, 459.1 , 0 );
setMoveKey( spep_0 - n + 228, 1, 167, 478.7 , 0 );
setMoveKey( spep_0 - n + 229, 1, 167, 478.7 , 0 );
setMoveKey( spep_0 - n + 230, 1, 178.4, 497.9 , 0 );
setMoveKey( spep_0 - n + 231, 1, 178.4, 497.9 , 0 );
setMoveKey( spep_0 - n + 232, 1, 178.1, 499.6 , 0 );
setMoveKey( spep_0 - n + 233, 1, 178.1, 499.6 , 0 );
setMoveKey( spep_0 - n + 234, 1, 177.6, 501.1 , 0 );
setMoveKey( spep_0 - n + 235, 1, 177.6, 501.1 , 0 );
setMoveKey( spep_0 - n + 236, 1, 177.2, 502.4 , 0 );
setMoveKey( spep_0 - n + 237, 1, 177.2, 502.4 , 0 );
setMoveKey( spep_0 - n + 238, 1, 174.5, 494 , 0 );
setMoveKey( spep_0 - n + 239, 1, 174.5, 494 , 0 );
setMoveKey( spep_0 - n + 240, 1, 171.8, 485.6 , 0 );
setMoveKey( spep_0 - n + 241, 1, 171.8, 485.6 , 0 );
setMoveKey( spep_0 - n + 242, 1, 169, 477.1 , 0 );
setMoveKey( spep_0 - n + 243, 1, 169, 477.1 , 0 );
setMoveKey( spep_0 - n + 244, 1, 166.3, 468.7 , 0 );
setMoveKey( spep_0 - n + 245, 1, 166.3, 468.7 , 0 );
setMoveKey( spep_0 - n + 246, 1, 163.5, 460.2 , 0 );
setMoveKey( spep_0 - n + 247, 1, 163.5, 460.2 , 0 );
setMoveKey( spep_0 - n + 248, 1, 160.7, 451.6 , 0 );
setMoveKey( spep_0 - n + 249, 1, 160.7, 451.6 , 0 );
setMoveKey( spep_0 - n + 250, 1, 157.9, 443.1 , 0 );
setMoveKey( spep_0 - n + 251, 1, 157.9, 443.1 , 0 );
setMoveKey( spep_0 - n + 252, 1, 155.1, 434.5 , 0 );
setMoveKey( spep_0 - n + 253, 1, 155.1, 434.5 , 0 );
setMoveKey( spep_0 - n + 254, 1, 152.3, 425.9 , 0 );
setMoveKey( spep_0 - n + 255, 1, 152.3, 425.9 , 0 );
setMoveKey( spep_0 - n + 256, 1, 149.4, 417.3 , 0 );
setMoveKey( spep_0 - n + 257, 1, 149.4, 417.3 , 0 );
--setMoveKey( spep_0 - n + 258, 1, 146.6, 408.7 , 0 );

setScaleKey( spep_0 - n + 90, 1, 3.04, 3.04 );
setScaleKey( spep_0 - n + 91, 1, 3.04, 3.04 );
setScaleKey( spep_0 - n + 92, 1, 3.6, 3.6 );
setScaleKey( spep_0 - n + 93, 1, 3.6, 3.6 );
setScaleKey( spep_0 - n + 94, 1, 4.22, 4.22 );
setScaleKey( spep_0 - n + 95, 1, 4.22, 4.22 );
setScaleKey( spep_0 - n + 96, 1, 4.92, 4.92 );
setScaleKey( spep_0 - n + 97, 1, 4.92, 4.92 );
setScaleKey( spep_0 - n + 98, 1, 5.69, 5.69 );
setScaleKey( spep_0 - n + 99, 1, 5.69, 5.69 );
setScaleKey( spep_0 - n + 100, 1, 6.53, 6.53 );
setScaleKey( spep_0 - n + 101, 1, 6.53, 6.53 );
setScaleKey( spep_0 - n + 102, 1, 7.44, 7.44 );
setScaleKey( spep_0 - n + 103, 1, 7.44, 7.44 );
setScaleKey( spep_0 - n + 104, 1, 8.42, 8.42 );
setScaleKey( spep_0 - n + 106, 1, 8.42, 8.42 );
setScaleKey( spep_0 - n + 107, 1, 9.47, 9.47 );
setScaleKey( spep_0 - n + 107, 1, 9.47, 9.47 );
setScaleKey( spep_0 - n + 108, 1, 9.46, 9.46 );
setScaleKey( spep_0 - n + 109, 1, 9.46, 9.46 );
setScaleKey( spep_0 - n + 110, 1, 9.39, 9.39 );
setScaleKey( spep_0 - n + 111, 1, 9.39, 9.39 );
setScaleKey( spep_0 - n + 112, 1, 9.33, 9.33 );
setScaleKey( spep_0 - n + 113, 1, 9.33, 9.33 );
setScaleKey( spep_0 - n + 114, 1, 9.26, 9.26 );
setScaleKey( spep_0 - n + 115, 1, 9.26, 9.26 );
setScaleKey( spep_0 - n + 116, 1, 9.19, 9.19 );
setScaleKey( spep_0 - n + 117, 1, 9.19, 9.19 );
setScaleKey( spep_0 - n + 118, 1, 9.13, 9.13 );
setScaleKey( spep_0 - n + 119, 1, 9.13, 9.13 );
setScaleKey( spep_0 - n + 120, 1, 9.06, 9.06 );
setScaleKey( spep_0 - n + 121, 1, 9.06, 9.06 );
setScaleKey( spep_0 - n + 122, 1, 8.99, 8.99 );
setScaleKey( spep_0 - n + 123, 1, 8.99, 8.99 );
setScaleKey( spep_0 - n + 124, 1, 8.92, 8.92 );
setScaleKey( spep_0 - n + 125, 1, 8.92, 8.92 );
setScaleKey( spep_0 - n + 126, 1, 8.86, 8.86 );
setScaleKey( spep_0 - n + 128, 1, 8.86, 8.86 );
setScaleKey( spep_0 - n + 129, 1, 8.86, 8.86 );
setScaleKey( spep_0 - n + 130, 1, 10.12, 10.12 );
setScaleKey( spep_0 - n + 131, 1, 10.12, 10.12 );
setScaleKey( spep_0 - n + 132, 1, 11.86, 11.86 );
setScaleKey( spep_0 - n + 133, 1, 11.86, 11.86 );
setScaleKey( spep_0 - n + 134, 1, 14.07, 14.07 );
setScaleKey( spep_0 - n + 135, 1, 14.07, 14.07 );
setScaleKey( spep_0 - n + 136, 1, 16.77, 16.77 );
setScaleKey( spep_0 - n + 137, 1, 16.77, 16.77 );
setScaleKey( spep_0 - n + 138, 1, 19.93, 19.93 );
setScaleKey( spep_0 - n + 139, 1, 19.93, 19.93 );
setScaleKey( spep_0 - n + 140, 1, 23.58, 23.58 );
setScaleKey( spep_0 - n + 141, 1, 23.58, 23.58 );
setScaleKey( spep_0 - n + 142, 1, 27.69, 27.69 );
setScaleKey( spep_0 - n + 143, 1, 27.69, 27.69 );
setScaleKey( spep_0 - n + 144, 1, 32.29, 32.29 );
--
setScaleKey( spep_0 - n + 208, 1, 10.53, 10.53 );
setScaleKey( spep_0 - n + 209, 1, 10.53, 10.53 );
setScaleKey( spep_0 - n + 210, 1, 9.86, 9.86 );
setScaleKey( spep_0 - n + 212, 1, 9.86, 9.86 );
--
setScaleKey( spep_0 - n + 216, 1, 3.78, 3.78 );
setScaleKey( spep_0 - n + 217, 1, 3.78, 3.78 );
setScaleKey( spep_0 - n + 218, 1, 2.9, 2.9 );
setScaleKey( spep_0 - n + 219, 1, 2.9, 2.9 );
setScaleKey( spep_0 - n + 220, 1, 2.08, 2.08 );
setScaleKey( spep_0 - n + 221, 1, 2.08, 2.08 );
setScaleKey( spep_0 - n + 222, 1, 1.34, 1.34 );
setScaleKey( spep_0 - n + 223, 1, 1.34, 1.34 );
setScaleKey( spep_0 - n + 224, 1, 1, 1 );
setScaleKey( spep_0 - n + 225, 1, 1, 1 );
setScaleKey( spep_0 - n + 226, 1, 0.8, 0.8 );
setScaleKey( spep_0 - n + 227, 1, 0.8, 0.8 );
setScaleKey( spep_0 - n + 228, 1, 0.6, 0.6 );
setScaleKey( spep_0 - n + 229, 1, 0.6, 0.6 );
setScaleKey( spep_0 - n + 230, 1, 0.4, 0.4 );
setScaleKey( spep_0 - n + 231, 1, 0.4, 0.4 );
setScaleKey( spep_0 - n + 232, 1, 0.35, 0.35 );
setScaleKey( spep_0 - n + 233, 1, 0.35, 0.35 );
setScaleKey( spep_0 - n + 234, 1, 0.31, 0.31 );
setScaleKey( spep_0 - n + 235, 1, 0.31, 0.31 );
setScaleKey( spep_0 - n + 236, 1, 0.27, 0.27 );
setScaleKey( spep_0 - n + 237, 1, 0.27, 0.27 );
setScaleKey( spep_0 - n + 238, 1, 0.25, 0.25 );
setScaleKey( spep_0 - n + 239, 1, 0.25, 0.25 );
setScaleKey( spep_0 - n + 240, 1, 0.24, 0.24 );
setScaleKey( spep_0 - n + 241, 1, 0.24, 0.24 );
setScaleKey( spep_0 - n + 242, 1, 0.22, 0.22 );
setScaleKey( spep_0 - n + 243, 1, 0.22, 0.22 );
setScaleKey( spep_0 - n + 244, 1, 0.21, 0.21 );
setScaleKey( spep_0 - n + 245, 1, 0.21, 0.21 );
setScaleKey( spep_0 - n + 246, 1, 0.19, 0.19 );
setScaleKey( spep_0 - n + 247, 1, 0.19, 0.19 );
setScaleKey( spep_0 - n + 248, 1, 0.18, 0.18 );
setScaleKey( spep_0 - n + 249, 1, 0.18, 0.18 );
setScaleKey( spep_0 - n + 250, 1, 0.16, 0.16 );
setScaleKey( spep_0 - n + 251, 1, 0.16, 0.16 );
setScaleKey( spep_0 - n + 252, 1, 0.15, 0.15 );
setScaleKey( spep_0 - n + 253, 1, 0.15, 0.15 );
setScaleKey( spep_0 - n + 254, 1, 0.13, 0.13 );
setScaleKey( spep_0 - n + 255, 1, 0.13, 0.13 );
setScaleKey( spep_0 - n + 256, 1, 0.12, 0.12 );
setScaleKey( spep_0 - n + 257, 1, 0.12, 0.12 );
--setScaleKey( spep_0 - n + 258, 1, 0.11, 0.11 );

setRotateKey( spep_0 - n + 90, 1, 0 );
setRotateKey( spep_0 - n + 107, 1, 0 );
setRotateKey( spep_0 - n + 107, 1, 0 );
setRotateKey( spep_0 - n + 108, 1, -63.2 );
setRotateKey( spep_0 - n + 109, 1, -63.2 );
setRotateKey( spep_0 - n + 110, 1, -62.7 );
setRotateKey( spep_0 - n + 111, 1, -62.7 );
setRotateKey( spep_0 - n + 112, 1, -62.3 );
setRotateKey( spep_0 - n + 113, 1, -62.3 );
setRotateKey( spep_0 - n + 114, 1, -61.8 );
setRotateKey( spep_0 - n + 115, 1, -61.8 );
setRotateKey( spep_0 - n + 116, 1, -61.3 );
setRotateKey( spep_0 - n + 117, 1, -61.3 );
setRotateKey( spep_0 - n + 118, 1, -60.8 );
setRotateKey( spep_0 - n + 119, 1, -60.8 );
setRotateKey( spep_0 - n + 120, 1, -60.3 );
setRotateKey( spep_0 - n + 121, 1, -60.3 );
setRotateKey( spep_0 - n + 122, 1, -59.8 );
setRotateKey( spep_0 - n + 123, 1, -59.8 );
setRotateKey( spep_0 - n + 124, 1, -59.3 );
setRotateKey( spep_0 - n + 125, 1, -59.3 );
setRotateKey( spep_0 - n + 126, 1, -58.8 );
setRotateKey( spep_0 - n + 144, 1, -58.8 );
--
setRotateKey( spep_0 - n + 208, 1, 15.5 );
setRotateKey( spep_0 - n + 209, 1, 15.5 );
setRotateKey( spep_0 - n + 210, 1, -32.8 );
setRotateKey( spep_0 - n + 212, 1, -32.8 );
--
setRotateKey( spep_0 - n + 216, 1, -51 );
setRotateKey( spep_0 - n + 217, 1, -51 );
setRotateKey( spep_0 - n + 218, 1, -52.6 );
setRotateKey( spep_0 - n + 219, 1, -52.6 );
setRotateKey( spep_0 - n + 220, 1, -54.2 );
setRotateKey( spep_0 - n + 221, 1, -54.2 );
setRotateKey( spep_0 - n + 222, 1, -55.7 );
setRotateKey( spep_0 - n + 223, 1, -55.7 );
setRotateKey( spep_0 - n + 224, 1, -58.9 );
setRotateKey( spep_0 - n + 225, 1, -58.9 );
setRotateKey( spep_0 - n + 226, 1, -62.1 );
setRotateKey( spep_0 - n + 227, 1, -62.1 );
setRotateKey( spep_0 - n + 228, 1, -65.3 );
setRotateKey( spep_0 - n + 229, 1, -65.3 );
setRotateKey( spep_0 - n + 230, 1, -68.5 );
setRotateKey( spep_0 - n + 231, 1, -68.5 );
setRotateKey( spep_0 - n + 232, 1, -69.2 );
setRotateKey( spep_0 - n + 233, 1, -69.2 );
setRotateKey( spep_0 - n + 234, 1, -70 );
setRotateKey( spep_0 - n + 235, 1, -70 );
setRotateKey( spep_0 - n + 236, 1, -70.7 );
setRotateKey( spep_0 - n + 237, 1, -70.7 );
setRotateKey( spep_0 - n + 238, 1, -70.9 );
setRotateKey( spep_0 - n + 239, 1, -70.9 );
setRotateKey( spep_0 - n + 240, 1, -71.1 );
setRotateKey( spep_0 - n + 241, 1, -71.1 );
setRotateKey( spep_0 - n + 242, 1, -71.4 );
setRotateKey( spep_0 - n + 243, 1, -71.4 );
setRotateKey( spep_0 - n + 244, 1, -71.6 );
setRotateKey( spep_0 - n + 245, 1, -71.6 );
setRotateKey( spep_0 - n + 246, 1, -71.8 );
setRotateKey( spep_0 - n + 247, 1, -71.8 );
setRotateKey( spep_0 - n + 248, 1, -72 );
setRotateKey( spep_0 - n + 249, 1, -72 );
setRotateKey( spep_0 - n + 250, 1, -72.3 );
setRotateKey( spep_0 - n + 251, 1, -72.3 );
setRotateKey( spep_0 - n + 252, 1, -72.5 );
setRotateKey( spep_0 - n + 253, 1, -72.5 );
setRotateKey( spep_0 - n + 254, 1, -72.7 );
setRotateKey( spep_0 - n + 255, 1, -72.7 );
setRotateKey( spep_0 - n + 256, 1, -73 );
setRotateKey( spep_0 - n + 257, 1, -73 );
--setRotateKey( spep_0 - n + 258, 1, -73.2 );

-- ** 音 ** --
--敵つかむ
SE007 = playSeVer2( spep_0 + 108, 1006, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 108, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE009 = playSeVer2( spep_0 + 160, 1116, "",spep_0 + 206, 0, 26, -1);
SE010 = playSeVer2( spep_0 + 160, 1004, "", 0, 0, 0, -1);

--敵投げ飛ばす
SE011 = playSeVer2( spep_0 + 204, 1258, "",spep_0 + 256 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 204, SE011, 71 );
SE012 = playSeVer2( spep_0 + 212, 1117, "",spep_0 + 256 + 6, 0, 6, -1);
SE013 = playSeVer2( spep_0 + 212, 1121, "",spep_0 + 256 + 6, 0, 6, -1);
SE014 = playSeVer2( spep_0 + 212, 1027, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 256;


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- タメ～ラスト：手前 ef_003 (676F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_003 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_003, 0, 0 , 0 );
setEffMoveKey( spep_2 + 678, entry_SP_003, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_003, 1.0, 1.0 );
setEffScaleKey( spep_2 + 678, entry_SP_003, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_003, 0 );
setEffRotateKey( spep_2 + 678, entry_SP_003, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_003, 255 );
setEffAlphaKey( spep_2 + 678, entry_SP_003, 255 );
entry_SP_004 = entryEffect( spep_2 + 0, SP_004, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_004, 0, 0 , 0 );
setEffMoveKey( spep_2 + 678, entry_SP_004, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_004, 1.0, 1.0 );
setEffScaleKey( spep_2 + 678, entry_SP_004, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_004, 0 );
setEffRotateKey( spep_2 + 678, entry_SP_004, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_004, 255 );
setEffAlphaKey( spep_2 + 678, entry_SP_004, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 678 + 2, 0, 0, 0, 0, 255 );

spep_x = spep_2 + 246;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
setDisp( spep_2 - n + 184, 1, 1 );
setDisp( spep_2 - n + 254, 1, 0 );
setDisp( spep_2 - n + 494, 1, 1 );
setDisp( spep_2 - n + 546, 1, 0 );
changeAnime( spep_2 - n + 184, 1, 107 );
changeAnime( spep_2 - n + 194, 1, 102 );
changeAnime( spep_2 - n + 198, 1, 118 );
changeAnime( spep_2 - n + 214, 1, 104 );
changeAnime( spep_2 - n + 494, 1, 117 );
changeAnime( spep_2 - n + 506, 1, 118 );
changeAnime( spep_2 - n + 508, 1, 11 );
changeAnime( spep_2 - n + 510, 1, 3 );

setMoveKey( spep_2 - n + 184, 1, -22.9, -153.1 , 0 );
setMoveKey( spep_2 - n + 185, 1, -22.9, -153.1 , 0 );
setMoveKey( spep_2 - n + 186, 1, -12.6, -136.6 , 0 );
setMoveKey( spep_2 - n + 187, 1, -12.6, -136.6 , 0 );
setMoveKey( spep_2 - n + 188, 1, -4.5, -122.6 , 0 );
setMoveKey( spep_2 - n + 189, 1, -4.5, -122.6 , 0 );
setMoveKey( spep_2 - n + 190, 1, 1.4, -111.2 , 0 );
setMoveKey( spep_2 - n + 191, 1, 1.4, -111.2 , 0 );
setMoveKey( spep_2 - n + 192, 1, 5, -102.2 , 0 );
setMoveKey( spep_2 - n + 193, 1, 5, -102.2 , 0 );
setMoveKey( spep_2 - n + 194, 1, 43, -107.1 , 0 );
setMoveKey( spep_2 - n + 195, 1, 43, -107.1 , 0 );
setMoveKey( spep_2 - n + 196, 1, 45.4, -100.2 , 0 );
setMoveKey( spep_2 - n + 197, 1, 45.4, -100.2 , 0 );
setMoveKey( spep_2 - n + 198, 1, 81.3, -58.1 , 0 );
setMoveKey( spep_2 - n + 199, 1, 81.3, -58.1 , 0 );
setMoveKey( spep_2 - n + 200, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 201, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 202, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 203, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 204, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 205, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 206, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 207, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 208, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 209, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 210, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 211, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 212, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 213, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 214, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 215, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 216, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 217, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 218, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 219, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 220, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 221, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 222, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 223, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 224, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 225, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 226, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 227, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 228, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 229, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 230, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 231, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 232, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 233, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 234, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 235, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 236, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 237, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 238, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 239, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 240, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 241, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 242, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 243, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 244, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 245, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 246, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 247, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 248, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 249, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 250, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 251, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 252, 1, 95.2, 227.6 , 0 );
--
setMoveKey( spep_2 - n + 494, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 495, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 496, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 497, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 498, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 499, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 500, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 501, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 502, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 503, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 504, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 505, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 506, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 507, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 508, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 509, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 510, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 511, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 512, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 513, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 514, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 515, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 516, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 517, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 518, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 519, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 520, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 521, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 522, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 523, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 524, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 525, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 526, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 527, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 528, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 529, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 530, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 531, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 532, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 533, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 534, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 535, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 536, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 537, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 538, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 539, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 540, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 541, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 542, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 543, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 544, 1, 164.3, 190.7 , 0 );
setMoveKey( spep_2 - n + 546, 1, 164.3, 190.7 , 0 );

setScaleKey( spep_2 - n + 184, 1, 0.44, 0.44 );
setScaleKey( spep_2 - n + 185, 1, 0.44, 0.44 );
setScaleKey( spep_2 - n + 186, 1, 0.46, 0.46 );
setScaleKey( spep_2 - n + 187, 1, 0.46, 0.46 );
setScaleKey( spep_2 - n + 188, 1, 0.48, 0.48 );
setScaleKey( spep_2 - n + 189, 1, 0.48, 0.48 );
setScaleKey( spep_2 - n + 190, 1, 0.49, 0.49 );
setScaleKey( spep_2 - n + 191, 1, 0.49, 0.49 );
setScaleKey( spep_2 - n + 192, 1, 0.5, 0.5 );
setScaleKey( spep_2 - n + 193, 1, 0.5, 0.5 );
setScaleKey( spep_2 - n + 194, 1, 1.6, 1.6 );
setScaleKey( spep_2 - n + 195, 1, 1.6, 1.6 );
setScaleKey( spep_2 - n + 196, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 197, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 198, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 199, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 200, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 201, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 202, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 203, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 204, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 205, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 206, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 207, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 208, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 209, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 210, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 211, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 212, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 213, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 214, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 215, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 216, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 217, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 218, 1, 2, 2 );
setScaleKey( spep_2 - n + 219, 1, 2, 2 );
setScaleKey( spep_2 - n + 220, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 221, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 222, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 223, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 224, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 225, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 226, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 227, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 228, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 229, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 230, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 231, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 232, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 233, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 234, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 235, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 236, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 237, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 238, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 239, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 240, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 241, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 242, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 243, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 244, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 245, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 246, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 247, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 248, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 249, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 250, 1, 2.23, 2.23 );
setScaleKey( spep_2 - n + 252, 1, 2.23, 2.23 );
--
setScaleKey( spep_2 - n + 494, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 495, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 496, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 497, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 498, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 499, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 500, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 501, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 502, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 503, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 504, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 505, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 506, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 507, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 508, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 509, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 510, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 511, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 512, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 513, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 514, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 515, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 516, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 517, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 518, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 519, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 520, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 521, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 522, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 523, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 524, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 525, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 526, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 527, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 528, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 529, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 530, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 531, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 532, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 533, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 534, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 535, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 536, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 537, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 538, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 539, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 540, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 541, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 542, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 543, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 544, 1, 0.04, 0.04 );
setScaleKey( spep_2 - n + 546, 1, 0.04, 0.04 );

setRotateKey( spep_2 - n + 184, 1, -37 );
setRotateKey( spep_2 - n + 185, 1, -37 );
setRotateKey( spep_2 - n + 186, 1, -36.5 );
setRotateKey( spep_2 - n + 187, 1, -36.5 );
setRotateKey( spep_2 - n + 188, 1, -36.2 );
setRotateKey( spep_2 - n + 189, 1, -36.2 );
setRotateKey( spep_2 - n + 190, 1, -35.9 );
setRotateKey( spep_2 - n + 191, 1, -35.9 );
setRotateKey( spep_2 - n + 192, 1, -35.7 );
setRotateKey( spep_2 - n + 193, 1, -35.7 );
setRotateKey( spep_2 - n + 194, 1, -23.2 );
setRotateKey( spep_2 - n + 197, 1, -23.2 );
setRotateKey( spep_2 - n + 198, 1, -14 );
setRotateKey( spep_2 - n + 213, 1, -14 );
setRotateKey( spep_2 - n + 213, 1, -14 );
setRotateKey( spep_2 - n + 214, 1, -42.8 );
setRotateKey( spep_2 - n + 215, 1, -42.8 );
setRotateKey( spep_2 - n + 216, 1, -42.1 );
setRotateKey( spep_2 - n + 217, 1, -42.1 );
setRotateKey( spep_2 - n + 218, 1, -41.6 );
setRotateKey( spep_2 - n + 219, 1, -41.6 );
setRotateKey( spep_2 - n + 220, 1, -41 );
setRotateKey( spep_2 - n + 221, 1, -41 );
setRotateKey( spep_2 - n + 222, 1, -40.4 );
setRotateKey( spep_2 - n + 223, 1, -40.4 );
setRotateKey( spep_2 - n + 224, 1, -39.9 );
setRotateKey( spep_2 - n + 225, 1, -39.9 );
setRotateKey( spep_2 - n + 226, 1, -39.4 );
setRotateKey( spep_2 - n + 227, 1, -39.4 );
setRotateKey( spep_2 - n + 228, 1, -38.9 );
setRotateKey( spep_2 - n + 229, 1, -38.9 );
setRotateKey( spep_2 - n + 230, 1, -38.5 );
setRotateKey( spep_2 - n + 231, 1, -38.5 );
setRotateKey( spep_2 - n + 232, 1, -38 );
setRotateKey( spep_2 - n + 233, 1, -38 );
setRotateKey( spep_2 - n + 234, 1, -37.6 );
setRotateKey( spep_2 - n + 235, 1, -37.6 );
setRotateKey( spep_2 - n + 236, 1, -37.2 );
setRotateKey( spep_2 - n + 237, 1, -37.2 );
setRotateKey( spep_2 - n + 238, 1, -36.9 );
setRotateKey( spep_2 - n + 239, 1, -36.9 );
setRotateKey( spep_2 - n + 240, 1, -36.5 );
setRotateKey( spep_2 - n + 241, 1, -36.5 );
setRotateKey( spep_2 - n + 242, 1, -36.2 );
setRotateKey( spep_2 - n + 243, 1, -36.2 );
setRotateKey( spep_2 - n + 244, 1, -35.9 );
setRotateKey( spep_2 - n + 245, 1, -35.9 );
setRotateKey( spep_2 - n + 246, 1, -35.6 );
setRotateKey( spep_2 - n + 247, 1, -35.6 );
setRotateKey( spep_2 - n + 248, 1, -35.3 );
setRotateKey( spep_2 - n + 249, 1, -35.3 );
setRotateKey( spep_2 - n + 250, 1, -35.1 );
setRotateKey( spep_2 - n + 251, 1, -35.1 );
setRotateKey( spep_2 - n + 252, 1, -34.9 );
--
setRotateKey( spep_2 - n + 494, 1, 0 );
setRotateKey( spep_2 - n + 505, 1, 0 );
setRotateKey( spep_2 - n + 506, 1, 8.7 );
setRotateKey( spep_2 - n + 507, 1, 8.7 );
setRotateKey( spep_2 - n + 508, 1, -18.9 );
setRotateKey( spep_2 - n + 509, 1, -18.9 );
setRotateKey( spep_2 - n + 510, 1, -14 );
setRotateKey( spep_2 - n + 511, 1, -14 );
setRotateKey( spep_2 - n + 512, 1, -16.7 );
setRotateKey( spep_2 - n + 513, 1, -16.7 );
setRotateKey( spep_2 - n + 514, 1, -19.2 );
setRotateKey( spep_2 - n + 515, 1, -19.2 );
setRotateKey( spep_2 - n + 516, 1, -21.5 );
setRotateKey( spep_2 - n + 517, 1, -21.5 );
setRotateKey( spep_2 - n + 518, 1, -23.6 );
setRotateKey( spep_2 - n + 519, 1, -23.6 );
setRotateKey( spep_2 - n + 520, 1, -25.6 );
setRotateKey( spep_2 - n + 521, 1, -25.6 );
setRotateKey( spep_2 - n + 522, 1, -27.4 );
setRotateKey( spep_2 - n + 523, 1, -27.4 );
setRotateKey( spep_2 - n + 524, 1, -29 );
setRotateKey( spep_2 - n + 525, 1, -29 );
setRotateKey( spep_2 - n + 526, 1, -29.4 );
setRotateKey( spep_2 - n + 527, 1, -29.4 );
setRotateKey( spep_2 - n + 528, 1, -29.9 );
setRotateKey( spep_2 - n + 529, 1, -29.9 );
setRotateKey( spep_2 - n + 530, 1, -30.3 );
setRotateKey( spep_2 - n + 531, 1, -30.3 );
setRotateKey( spep_2 - n + 532, 1, -30.8 );
setRotateKey( spep_2 - n + 533, 1, -30.8 );
setRotateKey( spep_2 - n + 534, 1, -31.3 );
setRotateKey( spep_2 - n + 535, 1, -31.3 );
setRotateKey( spep_2 - n + 536, 1, -31.7 );
setRotateKey( spep_2 - n + 537, 1, -31.7 );
setRotateKey( spep_2 - n + 538, 1, -32.2 );
setRotateKey( spep_2 - n + 539, 1, -32.2 );
setRotateKey( spep_2 - n + 540, 1, -32.6 );
setRotateKey( spep_2 - n + 541, 1, -32.6 );
setRotateKey( spep_2 - n + 542, 1, -33.1 );
setRotateKey( spep_2 - n + 543, 1, -33.1 );
setRotateKey( spep_2 - n + 544, 1, -33.6 );
setRotateKey( spep_2 - n + 546, 1, -33.6 );


-- ** 音 ** --
--凄む
SE016 = playSeVer2( spep_1 + 88, 1399, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 88, 1397, "",spep_2 + 128, 0, 42, -1);
SE018 = playSeVer2( spep_1 + 88, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE018, 162 );

--気溜める
SE019 = playSeVer2( spep_2 + 56, 1283, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE019, 81 );
setPitch( spep_2 + 56, SE019, 700 );
setTimeStretch( SE019, 1.47, 30, 4 );
SE020 = playSeVer2( spep_2 + 62, 17, "",spep_2 + 138, 0, 20, -1);
SE021 = playSeVer2( spep_2 + 74, 1296, "",spep_2 + 142, 14, 40, -1);
setSeVolumeByWorkId( spep_2 + 74, SE021, 132 );

--気弾発射
SE022 = playSeVer2( spep_2 + 132, 1122, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 132, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 132, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE025 = playSeVer2( spep_2 + 178, 1121, "",spep_2 + 362, 0, 20, -1);
setPitch( spep_2 + 178, SE025, 300 );
setTimeStretch( SE025, 1.2, 30, 4 );
SE026 = playSeVer2( spep_2 + 210, 1116, "",spep_2 + 252, 0, 20, -1);
SE027 = playSeVer2( spep_2 + 218, 1277, "", 0, 0, 0, -1);

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--顔カットイン
--SE028 = playSeVer2( spep_2 + 250, 1018, "", 0, 0, 0, -1);

--叫ぶ背景
SE029 = playSeVer2( spep_2 + 258, 1264, "",spep_2 + 378, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 258, SE029, 74 );
SE030 = playSeVer2( spep_2 + 258, 1399, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE030, 184 );

--気弾Uターン
SE031 = playSeVer2( spep_2 + 354, 1027, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 354, 1272, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE032, 141 );
setPitch( spep_2 + 354, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );
SE033 = playSeVer2( spep_2 + 360, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 360, SE033, 79 );
SE034 = playSeVer2( spep_2 + 376, 1374, "", 0, 52, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 376, SE034, 78 );
setStartTimeMs( SE034,  250 );
setPitch( spep_2 + 376, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );
SE035 = playSeVer2( spep_2 + 368, 44, "", 0, 0, 0, -1);

--気弾飛んでいく
SE036 = playSeVer2( spep_2 + 450, 1116, "",spep_2 + 490, 0, 22, -1);
SE037 = playSeVer2( spep_2 + 450, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 450, 1117, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 450, 1177, "",spep_2 + 594, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 450, SE039, 76 );

--気弾飛んでいく２
SE040 = playSeVer2( spep_2 + 504, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 504, SE040, 178 );

--爆発前兆
SE041 = playSeVer2( spep_2 + 542, 1157, "",spep_2 + 612, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 542, SE041, 146 );

--爆発
SE042 = playSeVer2( spep_2 + 572, 1069, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 588, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 588, 1159, "", 0, 0, 0, -1);

--風圧
SE045 = playSeVer2( spep_2 + 588, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 588, SE045, 77 );

-- ** おわり ** --
dealDamage( spep_2 + 556 );
endPhase( spep_2 + 678 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭～投げる：手前 ef_001 (256F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 256, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 256, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 256, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 256, entry_SP_001, 255 );
entry_SP_002 = entryEffect( spep_0 + 0, SP_002r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_0 + 256, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_0 + 256, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_0 + 256, entry_SP_002, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_0 + 256, entry_SP_002, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 256 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕伸ばす
SE002 = playSeVer2( spep_0 + 26, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 30, 1334, "",spep_0 + 164, 0, 56, 0.6);
SE004 = playSeVer2( spep_0 + 30, 1320, "",spep_0 + 164, 0, 56, 0.6);
SE005 = playSeVer2( spep_0 + 30, 1326, "",spep_0 + 164, 0, 56, 0.6);
SE006 = playSeVer2( spep_0 + 46, 1354, "", 0, 0, 0, -1);
setTimeStretch( SE006, 1.25, 30, 4 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    
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
n = 1;

-- ** 敵キャラクター ** --
setDisp( spep_0 - n + 90, 1, 1 );
setDisp( spep_0 - n + 146, 1, 0 );
setDisp( spep_0 - n + 208, 1, 1 );
setDisp( spep_0 - n + 212, 1, 0 );
setDisp( spep_0 - n + 216, 1, 1 );
setDisp( spep_0 + 256, 1, 0 );
changeAnime( spep_0 - n + 90, 1, 117 );
changeAnime( spep_0 - n + 108, 1, 106 );
changeAnime( spep_0 - n + 208, 1, 108 );

setMoveKey( spep_0 - n + 90, 1, 202.4, 6 , 0 );
setMoveKey( spep_0 - n + 91, 1, 202.4, 6 , 0 );
setMoveKey( spep_0 - n + 92, 1, 183.4, 5.9 , 0 );
setMoveKey( spep_0 - n + 93, 1, 183.4, 5.9 , 0 );
setMoveKey( spep_0 - n + 94, 1, 162, 5.8 , 0 );
setMoveKey( spep_0 - n + 95, 1, 162, 5.8 , 0 );
setMoveKey( spep_0 - n + 96, 1, 138.3, 5.5 , 0 );
setMoveKey( spep_0 - n + 97, 1, 138.3, 5.5 , 0 );
setMoveKey( spep_0 - n + 98, 1, 112.1, 5.1 , 0 );
setMoveKey( spep_0 - n + 99, 1, 112.1, 5.1 , 0 );
setMoveKey( spep_0 - n + 100, 1, 83.5, 4.5 , 0 );
setMoveKey( spep_0 - n + 101, 1, 83.5, 4.5 , 0 );
setMoveKey( spep_0 - n + 102, 1, 52.5, 3.7 , 0 );
setMoveKey( spep_0 - n + 103, 1, 52.5, 3.7 , 0 );
setMoveKey( spep_0 - n + 104, 1, 19.1, 2.7 , 0 );
setMoveKey( spep_0 - n + 106, 1, 19.1, 2.7 , 0 );
setMoveKey( spep_0 - n + 107, 1, -16.8, 1.4 , 0 );
setMoveKey( spep_0 - n + 107, 1, -16.8, 1.4 , 0 );
setMoveKey( spep_0 - n + 108, 1, 69.6, -191.3 , 0 );
setMoveKey( spep_0 - n + 109, 1, 69.6, -191.3 , 0 );
setMoveKey( spep_0 - n + 110, 1, 71.8, -190.7 , 0 );
setMoveKey( spep_0 - n + 111, 1, 71.8, -190.7 , 0 );
setMoveKey( spep_0 - n + 112, 1, 74, -190 , 0 );
setMoveKey( spep_0 - n + 113, 1, 74, -190 , 0 );
setMoveKey( spep_0 - n + 114, 1, 76.2, -189.4 , 0 );
setMoveKey( spep_0 - n + 115, 1, 76.2, -189.4 , 0 );
setMoveKey( spep_0 - n + 116, 1, 78.3, -188.7 , 0 );
setMoveKey( spep_0 - n + 117, 1, 78.3, -188.7 , 0 );
setMoveKey( spep_0 - n + 118, 1, 80.5, -188 , 0 );
setMoveKey( spep_0 - n + 119, 1, 80.5, -188 , 0 );
setMoveKey( spep_0 - n + 120, 1, 82.7, -187.4 , 0 );
setMoveKey( spep_0 - n + 121, 1, 82.7, -187.4 , 0 );
setMoveKey( spep_0 - n + 122, 1, 84.9, -186.7 , 0 );
setMoveKey( spep_0 - n + 123, 1, 84.9, -186.7 , 0 );
setMoveKey( spep_0 - n + 124, 1, 87.1, -186.1 , 0 );
setMoveKey( spep_0 - n + 125, 1, 87.1, -186.1 , 0 );
setMoveKey( spep_0 - n + 126, 1, 89.2, -185.4 , 0 );
setMoveKey( spep_0 - n + 127, 1, 89.2, -185.4 , 0 );
setMoveKey( spep_0 - n + 128, 1, 70, -179 , 0 );
setMoveKey( spep_0 - n + 129, 1, 70, -179 , 0 );
setMoveKey( spep_0 - n + 130, 1, -96.9, -163.3 , 0 );
setMoveKey( spep_0 - n + 131, 1, -96.9, -163.3 , 0 );
setMoveKey( spep_0 - n + 132, 1, -326.7, -141.5 , 0 );
setMoveKey( spep_0 - n + 133, 1, -326.7, -141.5 , 0 );
setMoveKey( spep_0 - n + 134, 1, -619.3, -113.7 , 0 );
setMoveKey( spep_0 - n + 135, 1, -619.3, -113.7 , 0 );
setMoveKey( spep_0 - n + 136, 1, -974.8, -79.8 , 0 );
setMoveKey( spep_0 - n + 137, 1, -974.8, -79.8 , 0 );
setMoveKey( spep_0 - n + 138, 1, -1392.9, -39.7 , 0 );
setMoveKey( spep_0 - n + 139, 1, -1392.9, -39.7 , 0 );
setMoveKey( spep_0 - n + 140, 1, -1873.8, 6.7 , 0 );
setMoveKey( spep_0 - n + 141, 1, -1873.8, 6.7 , 0 );
setMoveKey( spep_0 - n + 142, 1, -2417.2, 59.5 , 0 );
setMoveKey( spep_0 - n + 143, 1, -2417.2, 59.5 , 0 );
setMoveKey( spep_0 - n + 144, 1, -3023.2, 118.9 , 0 );
--
setMoveKey( spep_0 - n + 208, 1, 880.5, -228.1 , 0 );
setMoveKey( spep_0 - n + 209, 1, 880.5, -228.1 , 0 );
setMoveKey( spep_0 - n + 210, 1, 709.4, 746.4 , 0 );
setMoveKey( spep_0 - n + 212, 1, 709.4, 746.4 , 0 );
--
setMoveKey( spep_0 - n + 216, 1, 122.4, 732.2 , 0 );
setMoveKey( spep_0 - n + 217, 1, 122.4, 732.2 , 0 );
setMoveKey( spep_0 - n + 218, 1, 140.4, 677.3 , 0 );
setMoveKey( spep_0 - n + 219, 1, 140.4, 677.3 , 0 );
setMoveKey( spep_0 - n + 220, 1, 151.9, 608.3 , 0 );
setMoveKey( spep_0 - n + 221, 1, 151.9, 608.3 , 0 );
setMoveKey( spep_0 - n + 222, 1, 156.2, 524.4 , 0 );
setMoveKey( spep_0 - n + 223, 1, 156.2, 524.4 , 0 );
setMoveKey( spep_0 - n + 224, 1, 143.4, 439 , 0 );
setMoveKey( spep_0 - n + 225, 1, 143.4, 439 , 0 );
setMoveKey( spep_0 - n + 226, 1, 155.3, 459.1 , 0 );
setMoveKey( spep_0 - n + 227, 1, 155.3, 459.1 , 0 );
setMoveKey( spep_0 - n + 228, 1, 167, 478.7 , 0 );
setMoveKey( spep_0 - n + 229, 1, 167, 478.7 , 0 );
setMoveKey( spep_0 - n + 230, 1, 178.4, 497.9 , 0 );
setMoveKey( spep_0 - n + 231, 1, 178.4, 497.9 , 0 );
setMoveKey( spep_0 - n + 232, 1, 178.1, 499.6 , 0 );
setMoveKey( spep_0 - n + 233, 1, 178.1, 499.6 , 0 );
setMoveKey( spep_0 - n + 234, 1, 177.6, 501.1 , 0 );
setMoveKey( spep_0 - n + 235, 1, 177.6, 501.1 , 0 );
setMoveKey( spep_0 - n + 236, 1, 177.2, 502.4 , 0 );
setMoveKey( spep_0 - n + 237, 1, 177.2, 502.4 , 0 );
setMoveKey( spep_0 - n + 238, 1, 174.5, 494 , 0 );
setMoveKey( spep_0 - n + 239, 1, 174.5, 494 , 0 );
setMoveKey( spep_0 - n + 240, 1, 171.8, 485.6 , 0 );
setMoveKey( spep_0 - n + 241, 1, 171.8, 485.6 , 0 );
setMoveKey( spep_0 - n + 242, 1, 169, 477.1 , 0 );
setMoveKey( spep_0 - n + 243, 1, 169, 477.1 , 0 );
setMoveKey( spep_0 - n + 244, 1, 166.3, 468.7 , 0 );
setMoveKey( spep_0 - n + 245, 1, 166.3, 468.7 , 0 );
setMoveKey( spep_0 - n + 246, 1, 163.5, 460.2 , 0 );
setMoveKey( spep_0 - n + 247, 1, 163.5, 460.2 , 0 );
setMoveKey( spep_0 - n + 248, 1, 160.7, 451.6 , 0 );
setMoveKey( spep_0 - n + 249, 1, 160.7, 451.6 , 0 );
setMoveKey( spep_0 - n + 250, 1, 157.9, 443.1 , 0 );
setMoveKey( spep_0 - n + 251, 1, 157.9, 443.1 , 0 );
setMoveKey( spep_0 - n + 252, 1, 155.1, 434.5 , 0 );
setMoveKey( spep_0 - n + 253, 1, 155.1, 434.5 , 0 );
setMoveKey( spep_0 - n + 254, 1, 152.3, 425.9 , 0 );
setMoveKey( spep_0 - n + 255, 1, 152.3, 425.9 , 0 );
setMoveKey( spep_0 - n + 256, 1, 149.4, 417.3 , 0 );
setMoveKey( spep_0 - n + 257, 1, 149.4, 417.3 , 0 );
--setMoveKey( spep_0 - n + 258, 1, 146.6, 408.7 , 0 );

setScaleKey( spep_0 - n + 90, 1, 3.04, 3.04 );
setScaleKey( spep_0 - n + 91, 1, 3.04, 3.04 );
setScaleKey( spep_0 - n + 92, 1, 3.6, 3.6 );
setScaleKey( spep_0 - n + 93, 1, 3.6, 3.6 );
setScaleKey( spep_0 - n + 94, 1, 4.22, 4.22 );
setScaleKey( spep_0 - n + 95, 1, 4.22, 4.22 );
setScaleKey( spep_0 - n + 96, 1, 4.92, 4.92 );
setScaleKey( spep_0 - n + 97, 1, 4.92, 4.92 );
setScaleKey( spep_0 - n + 98, 1, 5.69, 5.69 );
setScaleKey( spep_0 - n + 99, 1, 5.69, 5.69 );
setScaleKey( spep_0 - n + 100, 1, 6.53, 6.53 );
setScaleKey( spep_0 - n + 101, 1, 6.53, 6.53 );
setScaleKey( spep_0 - n + 102, 1, 7.44, 7.44 );
setScaleKey( spep_0 - n + 103, 1, 7.44, 7.44 );
setScaleKey( spep_0 - n + 104, 1, 8.42, 8.42 );
setScaleKey( spep_0 - n + 106, 1, 8.42, 8.42 );
setScaleKey( spep_0 - n + 107, 1, 9.47, 9.47 );
setScaleKey( spep_0 - n + 107, 1, 9.47, 9.47 );
setScaleKey( spep_0 - n + 108, 1, 9.46, 9.46 );
setScaleKey( spep_0 - n + 109, 1, 9.46, 9.46 );
setScaleKey( spep_0 - n + 110, 1, 9.39, 9.39 );
setScaleKey( spep_0 - n + 111, 1, 9.39, 9.39 );
setScaleKey( spep_0 - n + 112, 1, 9.33, 9.33 );
setScaleKey( spep_0 - n + 113, 1, 9.33, 9.33 );
setScaleKey( spep_0 - n + 114, 1, 9.26, 9.26 );
setScaleKey( spep_0 - n + 115, 1, 9.26, 9.26 );
setScaleKey( spep_0 - n + 116, 1, 9.19, 9.19 );
setScaleKey( spep_0 - n + 117, 1, 9.19, 9.19 );
setScaleKey( spep_0 - n + 118, 1, 9.13, 9.13 );
setScaleKey( spep_0 - n + 119, 1, 9.13, 9.13 );
setScaleKey( spep_0 - n + 120, 1, 9.06, 9.06 );
setScaleKey( spep_0 - n + 121, 1, 9.06, 9.06 );
setScaleKey( spep_0 - n + 122, 1, 8.99, 8.99 );
setScaleKey( spep_0 - n + 123, 1, 8.99, 8.99 );
setScaleKey( spep_0 - n + 124, 1, 8.92, 8.92 );
setScaleKey( spep_0 - n + 125, 1, 8.92, 8.92 );
setScaleKey( spep_0 - n + 126, 1, 8.86, 8.86 );
setScaleKey( spep_0 - n + 128, 1, 8.86, 8.86 );
setScaleKey( spep_0 - n + 129, 1, 8.86, 8.86 );
setScaleKey( spep_0 - n + 130, 1, 10.12, 10.12 );
setScaleKey( spep_0 - n + 131, 1, 10.12, 10.12 );
setScaleKey( spep_0 - n + 132, 1, 11.86, 11.86 );
setScaleKey( spep_0 - n + 133, 1, 11.86, 11.86 );
setScaleKey( spep_0 - n + 134, 1, 14.07, 14.07 );
setScaleKey( spep_0 - n + 135, 1, 14.07, 14.07 );
setScaleKey( spep_0 - n + 136, 1, 16.77, 16.77 );
setScaleKey( spep_0 - n + 137, 1, 16.77, 16.77 );
setScaleKey( spep_0 - n + 138, 1, 19.93, 19.93 );
setScaleKey( spep_0 - n + 139, 1, 19.93, 19.93 );
setScaleKey( spep_0 - n + 140, 1, 23.58, 23.58 );
setScaleKey( spep_0 - n + 141, 1, 23.58, 23.58 );
setScaleKey( spep_0 - n + 142, 1, 27.69, 27.69 );
setScaleKey( spep_0 - n + 143, 1, 27.69, 27.69 );
setScaleKey( spep_0 - n + 144, 1, 32.29, 32.29 );
--
setScaleKey( spep_0 - n + 208, 1, 10.53, 10.53 );
setScaleKey( spep_0 - n + 209, 1, 10.53, 10.53 );
setScaleKey( spep_0 - n + 210, 1, 9.86, 9.86 );
setScaleKey( spep_0 - n + 212, 1, 9.86, 9.86 );
--
setScaleKey( spep_0 - n + 216, 1, 3.78, 3.78 );
setScaleKey( spep_0 - n + 217, 1, 3.78, 3.78 );
setScaleKey( spep_0 - n + 218, 1, 2.9, 2.9 );
setScaleKey( spep_0 - n + 219, 1, 2.9, 2.9 );
setScaleKey( spep_0 - n + 220, 1, 2.08, 2.08 );
setScaleKey( spep_0 - n + 221, 1, 2.08, 2.08 );
setScaleKey( spep_0 - n + 222, 1, 1.34, 1.34 );
setScaleKey( spep_0 - n + 223, 1, 1.34, 1.34 );
setScaleKey( spep_0 - n + 224, 1, 1, 1 );
setScaleKey( spep_0 - n + 225, 1, 1, 1 );
setScaleKey( spep_0 - n + 226, 1, 0.8, 0.8 );
setScaleKey( spep_0 - n + 227, 1, 0.8, 0.8 );
setScaleKey( spep_0 - n + 228, 1, 0.6, 0.6 );
setScaleKey( spep_0 - n + 229, 1, 0.6, 0.6 );
setScaleKey( spep_0 - n + 230, 1, 0.4, 0.4 );
setScaleKey( spep_0 - n + 231, 1, 0.4, 0.4 );
setScaleKey( spep_0 - n + 232, 1, 0.35, 0.35 );
setScaleKey( spep_0 - n + 233, 1, 0.35, 0.35 );
setScaleKey( spep_0 - n + 234, 1, 0.31, 0.31 );
setScaleKey( spep_0 - n + 235, 1, 0.31, 0.31 );
setScaleKey( spep_0 - n + 236, 1, 0.27, 0.27 );
setScaleKey( spep_0 - n + 237, 1, 0.27, 0.27 );
setScaleKey( spep_0 - n + 238, 1, 0.25, 0.25 );
setScaleKey( spep_0 - n + 239, 1, 0.25, 0.25 );
setScaleKey( spep_0 - n + 240, 1, 0.24, 0.24 );
setScaleKey( spep_0 - n + 241, 1, 0.24, 0.24 );
setScaleKey( spep_0 - n + 242, 1, 0.22, 0.22 );
setScaleKey( spep_0 - n + 243, 1, 0.22, 0.22 );
setScaleKey( spep_0 - n + 244, 1, 0.21, 0.21 );
setScaleKey( spep_0 - n + 245, 1, 0.21, 0.21 );
setScaleKey( spep_0 - n + 246, 1, 0.19, 0.19 );
setScaleKey( spep_0 - n + 247, 1, 0.19, 0.19 );
setScaleKey( spep_0 - n + 248, 1, 0.18, 0.18 );
setScaleKey( spep_0 - n + 249, 1, 0.18, 0.18 );
setScaleKey( spep_0 - n + 250, 1, 0.16, 0.16 );
setScaleKey( spep_0 - n + 251, 1, 0.16, 0.16 );
setScaleKey( spep_0 - n + 252, 1, 0.15, 0.15 );
setScaleKey( spep_0 - n + 253, 1, 0.15, 0.15 );
setScaleKey( spep_0 - n + 254, 1, 0.13, 0.13 );
setScaleKey( spep_0 - n + 255, 1, 0.13, 0.13 );
setScaleKey( spep_0 - n + 256, 1, 0.12, 0.12 );
setScaleKey( spep_0 - n + 257, 1, 0.12, 0.12 );
--setScaleKey( spep_0 - n + 258, 1, 0.11, 0.11 );

setRotateKey( spep_0 - n + 90, 1, 0 );
setRotateKey( spep_0 - n + 107, 1, 0 );
setRotateKey( spep_0 - n + 107, 1, 0 );
setRotateKey( spep_0 - n + 108, 1, -63.2 );
setRotateKey( spep_0 - n + 109, 1, -63.2 );
setRotateKey( spep_0 - n + 110, 1, -62.7 );
setRotateKey( spep_0 - n + 111, 1, -62.7 );
setRotateKey( spep_0 - n + 112, 1, -62.3 );
setRotateKey( spep_0 - n + 113, 1, -62.3 );
setRotateKey( spep_0 - n + 114, 1, -61.8 );
setRotateKey( spep_0 - n + 115, 1, -61.8 );
setRotateKey( spep_0 - n + 116, 1, -61.3 );
setRotateKey( spep_0 - n + 117, 1, -61.3 );
setRotateKey( spep_0 - n + 118, 1, -60.8 );
setRotateKey( spep_0 - n + 119, 1, -60.8 );
setRotateKey( spep_0 - n + 120, 1, -60.3 );
setRotateKey( spep_0 - n + 121, 1, -60.3 );
setRotateKey( spep_0 - n + 122, 1, -59.8 );
setRotateKey( spep_0 - n + 123, 1, -59.8 );
setRotateKey( spep_0 - n + 124, 1, -59.3 );
setRotateKey( spep_0 - n + 125, 1, -59.3 );
setRotateKey( spep_0 - n + 126, 1, -58.8 );
setRotateKey( spep_0 - n + 144, 1, -58.8 );
--
setRotateKey( spep_0 - n + 208, 1, 15.5 );
setRotateKey( spep_0 - n + 209, 1, 15.5 );
setRotateKey( spep_0 - n + 210, 1, -32.8 );
setRotateKey( spep_0 - n + 212, 1, -32.8 );
--
setRotateKey( spep_0 - n + 216, 1, -51 );
setRotateKey( spep_0 - n + 217, 1, -51 );
setRotateKey( spep_0 - n + 218, 1, -52.6 );
setRotateKey( spep_0 - n + 219, 1, -52.6 );
setRotateKey( spep_0 - n + 220, 1, -54.2 );
setRotateKey( spep_0 - n + 221, 1, -54.2 );
setRotateKey( spep_0 - n + 222, 1, -55.7 );
setRotateKey( spep_0 - n + 223, 1, -55.7 );
setRotateKey( spep_0 - n + 224, 1, -58.9 );
setRotateKey( spep_0 - n + 225, 1, -58.9 );
setRotateKey( spep_0 - n + 226, 1, -62.1 );
setRotateKey( spep_0 - n + 227, 1, -62.1 );
setRotateKey( spep_0 - n + 228, 1, -65.3 );
setRotateKey( spep_0 - n + 229, 1, -65.3 );
setRotateKey( spep_0 - n + 230, 1, -68.5 );
setRotateKey( spep_0 - n + 231, 1, -68.5 );
setRotateKey( spep_0 - n + 232, 1, -69.2 );
setRotateKey( spep_0 - n + 233, 1, -69.2 );
setRotateKey( spep_0 - n + 234, 1, -70 );
setRotateKey( spep_0 - n + 235, 1, -70 );
setRotateKey( spep_0 - n + 236, 1, -70.7 );
setRotateKey( spep_0 - n + 237, 1, -70.7 );
setRotateKey( spep_0 - n + 238, 1, -70.9 );
setRotateKey( spep_0 - n + 239, 1, -70.9 );
setRotateKey( spep_0 - n + 240, 1, -71.1 );
setRotateKey( spep_0 - n + 241, 1, -71.1 );
setRotateKey( spep_0 - n + 242, 1, -71.4 );
setRotateKey( spep_0 - n + 243, 1, -71.4 );
setRotateKey( spep_0 - n + 244, 1, -71.6 );
setRotateKey( spep_0 - n + 245, 1, -71.6 );
setRotateKey( spep_0 - n + 246, 1, -71.8 );
setRotateKey( spep_0 - n + 247, 1, -71.8 );
setRotateKey( spep_0 - n + 248, 1, -72 );
setRotateKey( spep_0 - n + 249, 1, -72 );
setRotateKey( spep_0 - n + 250, 1, -72.3 );
setRotateKey( spep_0 - n + 251, 1, -72.3 );
setRotateKey( spep_0 - n + 252, 1, -72.5 );
setRotateKey( spep_0 - n + 253, 1, -72.5 );
setRotateKey( spep_0 - n + 254, 1, -72.7 );
setRotateKey( spep_0 - n + 255, 1, -72.7 );
setRotateKey( spep_0 - n + 256, 1, -73 );
setRotateKey( spep_0 - n + 257, 1, -73 );
--setRotateKey( spep_0 - n + 258, 1, -73.2 );

-- ** 音 ** --
--敵つかむ
SE007 = playSeVer2( spep_0 + 108, 1006, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 108, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE009 = playSeVer2( spep_0 + 160, 1116, "",spep_0 + 206, 0, 26, -1);
SE010 = playSeVer2( spep_0 + 160, 1004, "", 0, 0, 0, -1);

--敵投げ飛ばす
SE011 = playSeVer2( spep_0 + 204, 1258, "",spep_0 + 256 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 204, SE011, 71 );
SE012 = playSeVer2( spep_0 + 212, 1117, "",spep_0 + 256 + 6, 0, 6, -1);
SE013 = playSeVer2( spep_0 + 212, 1121, "",spep_0 + 256 + 6, 0, 6, -1);
SE014 = playSeVer2( spep_0 + 212, 1027, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 256;


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- タメ～ラスト：手前 ef_003 (676F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_003 = entryEffect( spep_2 + 0, SP_003r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_003, 0, 0 , 0 );
setEffMoveKey( spep_2 + 678, entry_SP_003, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_003, 1.0, 1.0 );
setEffScaleKey( spep_2 + 678, entry_SP_003, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_003, 0 );
setEffRotateKey( spep_2 + 678, entry_SP_003, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_003, 255 );
setEffAlphaKey( spep_2 + 678, entry_SP_003, 255 );
entry_SP_004 = entryEffect( spep_2 + 0, SP_004r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_004, 0, 0 , 0 );
setEffMoveKey( spep_2 + 678, entry_SP_004, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_004, 1.0, 1.0 );
setEffScaleKey( spep_2 + 678, entry_SP_004, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_004, 0 );
setEffRotateKey( spep_2 + 678, entry_SP_004, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_004, 255 );
setEffAlphaKey( spep_2 + 678, entry_SP_004, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 678 + 2, 0, 0, 0, 0, 255 );

spep_x = spep_2 + 246;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
setDisp( spep_2 - n + 184, 1, 1 );
setDisp( spep_2 - n + 254, 1, 0 );
setDisp( spep_2 - n + 494, 1, 1 );
setDisp( spep_2 - n + 546, 1, 0 );
changeAnime( spep_2 - n + 184, 1, 107 );
changeAnime( spep_2 - n + 194, 1, 102 );
changeAnime( spep_2 - n + 198, 1, 118 );
changeAnime( spep_2 - n + 214, 1, 104 );
changeAnime( spep_2 - n + 494, 1, 117 );
changeAnime( spep_2 - n + 506, 1, 118 );
changeAnime( spep_2 - n + 508, 1, 11 );
changeAnime( spep_2 - n + 510, 1, 3 );

setMoveKey( spep_2 - n + 184, 1, -22.9, -153.1 , 0 );
setMoveKey( spep_2 - n + 185, 1, -22.9, -153.1 , 0 );
setMoveKey( spep_2 - n + 186, 1, -12.6, -136.6 , 0 );
setMoveKey( spep_2 - n + 187, 1, -12.6, -136.6 , 0 );
setMoveKey( spep_2 - n + 188, 1, -4.5, -122.6 , 0 );
setMoveKey( spep_2 - n + 189, 1, -4.5, -122.6 , 0 );
setMoveKey( spep_2 - n + 190, 1, 1.4, -111.2 , 0 );
setMoveKey( spep_2 - n + 191, 1, 1.4, -111.2 , 0 );
setMoveKey( spep_2 - n + 192, 1, 5, -102.2 , 0 );
setMoveKey( spep_2 - n + 193, 1, 5, -102.2 , 0 );
setMoveKey( spep_2 - n + 194, 1, 43, -107.1 , 0 );
setMoveKey( spep_2 - n + 195, 1, 43, -107.1 , 0 );
setMoveKey( spep_2 - n + 196, 1, 45.4, -100.2 , 0 );
setMoveKey( spep_2 - n + 197, 1, 45.4, -100.2 , 0 );
setMoveKey( spep_2 - n + 198, 1, 81.3, -58.1 , 0 );
setMoveKey( spep_2 - n + 199, 1, 81.3, -58.1 , 0 );
setMoveKey( spep_2 - n + 200, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 201, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 202, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 203, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 204, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 205, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 206, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 207, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 208, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 209, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 210, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 211, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 212, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 213, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 214, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 215, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 216, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 217, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 218, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 219, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 220, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 221, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 222, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 223, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 224, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 225, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 226, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 227, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 228, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 229, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 230, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 231, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 232, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 233, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 234, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 235, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 236, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 237, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 238, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 239, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 240, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 241, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 242, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 243, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 244, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 245, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 246, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 247, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 248, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 249, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 250, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 251, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 252, 1, 95.2, 227.6 , 0 );
--
setMoveKey( spep_2 - n + 494, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 495, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 496, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 497, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 498, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 499, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 500, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 501, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 502, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 503, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 504, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 505, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 506, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 507, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 508, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 509, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 510, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 511, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 512, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 513, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 514, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 515, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 516, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 517, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 518, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 519, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 520, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 521, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 522, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 523, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 524, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 525, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 526, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 527, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 528, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 529, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 530, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 531, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 532, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 533, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 534, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 535, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 536, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 537, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 538, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 539, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 540, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 541, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 542, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 543, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 544, 1, 164.3, 190.7 , 0 );
setMoveKey( spep_2 - n + 546, 1, 164.3, 190.7 , 0 );

setScaleKey( spep_2 - n + 184, 1, 0.44, 0.44 );
setScaleKey( spep_2 - n + 185, 1, 0.44, 0.44 );
setScaleKey( spep_2 - n + 186, 1, 0.46, 0.46 );
setScaleKey( spep_2 - n + 187, 1, 0.46, 0.46 );
setScaleKey( spep_2 - n + 188, 1, 0.48, 0.48 );
setScaleKey( spep_2 - n + 189, 1, 0.48, 0.48 );
setScaleKey( spep_2 - n + 190, 1, 0.49, 0.49 );
setScaleKey( spep_2 - n + 191, 1, 0.49, 0.49 );
setScaleKey( spep_2 - n + 192, 1, 0.5, 0.5 );
setScaleKey( spep_2 - n + 193, 1, 0.5, 0.5 );
setScaleKey( spep_2 - n + 194, 1, 1.6, 1.6 );
setScaleKey( spep_2 - n + 195, 1, 1.6, 1.6 );
setScaleKey( spep_2 - n + 196, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 197, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 198, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 199, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 200, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 201, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 202, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 203, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 204, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 205, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 206, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 207, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 208, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 209, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 210, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 211, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 212, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 213, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 214, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 215, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 216, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 217, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 218, 1, 2, 2 );
setScaleKey( spep_2 - n + 219, 1, 2, 2 );
setScaleKey( spep_2 - n + 220, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 221, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 222, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 223, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 224, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 225, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 226, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 227, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 228, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 229, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 230, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 231, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 232, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 233, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 234, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 235, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 236, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 237, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 238, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 239, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 240, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 241, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 242, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 243, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 244, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 245, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 246, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 247, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 248, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 249, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 250, 1, 2.23, 2.23 );
setScaleKey( spep_2 - n + 252, 1, 2.23, 2.23 );
--
setScaleKey( spep_2 - n + 494, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 495, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 496, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 497, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 498, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 499, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 500, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 501, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 502, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 503, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 504, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 505, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 506, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 507, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 508, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 509, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 510, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 511, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 512, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 513, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 514, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 515, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 516, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 517, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 518, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 519, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 520, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 521, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 522, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 523, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 524, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 525, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 526, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 527, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 528, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 529, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 530, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 531, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 532, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 533, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 534, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 535, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 536, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 537, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 538, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 539, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 540, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 541, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 542, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 543, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 544, 1, 0.04, 0.04 );
setScaleKey( spep_2 - n + 546, 1, 0.04, 0.04 );

setRotateKey( spep_2 - n + 184, 1, -37 );
setRotateKey( spep_2 - n + 185, 1, -37 );
setRotateKey( spep_2 - n + 186, 1, -36.5 );
setRotateKey( spep_2 - n + 187, 1, -36.5 );
setRotateKey( spep_2 - n + 188, 1, -36.2 );
setRotateKey( spep_2 - n + 189, 1, -36.2 );
setRotateKey( spep_2 - n + 190, 1, -35.9 );
setRotateKey( spep_2 - n + 191, 1, -35.9 );
setRotateKey( spep_2 - n + 192, 1, -35.7 );
setRotateKey( spep_2 - n + 193, 1, -35.7 );
setRotateKey( spep_2 - n + 194, 1, -23.2 );
setRotateKey( spep_2 - n + 197, 1, -23.2 );
setRotateKey( spep_2 - n + 198, 1, -14 );
setRotateKey( spep_2 - n + 213, 1, -14 );
setRotateKey( spep_2 - n + 213, 1, -14 );
setRotateKey( spep_2 - n + 214, 1, -42.8 );
setRotateKey( spep_2 - n + 215, 1, -42.8 );
setRotateKey( spep_2 - n + 216, 1, -42.1 );
setRotateKey( spep_2 - n + 217, 1, -42.1 );
setRotateKey( spep_2 - n + 218, 1, -41.6 );
setRotateKey( spep_2 - n + 219, 1, -41.6 );
setRotateKey( spep_2 - n + 220, 1, -41 );
setRotateKey( spep_2 - n + 221, 1, -41 );
setRotateKey( spep_2 - n + 222, 1, -40.4 );
setRotateKey( spep_2 - n + 223, 1, -40.4 );
setRotateKey( spep_2 - n + 224, 1, -39.9 );
setRotateKey( spep_2 - n + 225, 1, -39.9 );
setRotateKey( spep_2 - n + 226, 1, -39.4 );
setRotateKey( spep_2 - n + 227, 1, -39.4 );
setRotateKey( spep_2 - n + 228, 1, -38.9 );
setRotateKey( spep_2 - n + 229, 1, -38.9 );
setRotateKey( spep_2 - n + 230, 1, -38.5 );
setRotateKey( spep_2 - n + 231, 1, -38.5 );
setRotateKey( spep_2 - n + 232, 1, -38 );
setRotateKey( spep_2 - n + 233, 1, -38 );
setRotateKey( spep_2 - n + 234, 1, -37.6 );
setRotateKey( spep_2 - n + 235, 1, -37.6 );
setRotateKey( spep_2 - n + 236, 1, -37.2 );
setRotateKey( spep_2 - n + 237, 1, -37.2 );
setRotateKey( spep_2 - n + 238, 1, -36.9 );
setRotateKey( spep_2 - n + 239, 1, -36.9 );
setRotateKey( spep_2 - n + 240, 1, -36.5 );
setRotateKey( spep_2 - n + 241, 1, -36.5 );
setRotateKey( spep_2 - n + 242, 1, -36.2 );
setRotateKey( spep_2 - n + 243, 1, -36.2 );
setRotateKey( spep_2 - n + 244, 1, -35.9 );
setRotateKey( spep_2 - n + 245, 1, -35.9 );
setRotateKey( spep_2 - n + 246, 1, -35.6 );
setRotateKey( spep_2 - n + 247, 1, -35.6 );
setRotateKey( spep_2 - n + 248, 1, -35.3 );
setRotateKey( spep_2 - n + 249, 1, -35.3 );
setRotateKey( spep_2 - n + 250, 1, -35.1 );
setRotateKey( spep_2 - n + 251, 1, -35.1 );
setRotateKey( spep_2 - n + 252, 1, -34.9 );
--
setRotateKey( spep_2 - n + 494, 1, 0 );
setRotateKey( spep_2 - n + 505, 1, 0 );
setRotateKey( spep_2 - n + 506, 1, 8.7 );
setRotateKey( spep_2 - n + 507, 1, 8.7 );
setRotateKey( spep_2 - n + 508, 1, -18.9 );
setRotateKey( spep_2 - n + 509, 1, -18.9 );
setRotateKey( spep_2 - n + 510, 1, -14 );
setRotateKey( spep_2 - n + 511, 1, -14 );
setRotateKey( spep_2 - n + 512, 1, -16.7 );
setRotateKey( spep_2 - n + 513, 1, -16.7 );
setRotateKey( spep_2 - n + 514, 1, -19.2 );
setRotateKey( spep_2 - n + 515, 1, -19.2 );
setRotateKey( spep_2 - n + 516, 1, -21.5 );
setRotateKey( spep_2 - n + 517, 1, -21.5 );
setRotateKey( spep_2 - n + 518, 1, -23.6 );
setRotateKey( spep_2 - n + 519, 1, -23.6 );
setRotateKey( spep_2 - n + 520, 1, -25.6 );
setRotateKey( spep_2 - n + 521, 1, -25.6 );
setRotateKey( spep_2 - n + 522, 1, -27.4 );
setRotateKey( spep_2 - n + 523, 1, -27.4 );
setRotateKey( spep_2 - n + 524, 1, -29 );
setRotateKey( spep_2 - n + 525, 1, -29 );
setRotateKey( spep_2 - n + 526, 1, -29.4 );
setRotateKey( spep_2 - n + 527, 1, -29.4 );
setRotateKey( spep_2 - n + 528, 1, -29.9 );
setRotateKey( spep_2 - n + 529, 1, -29.9 );
setRotateKey( spep_2 - n + 530, 1, -30.3 );
setRotateKey( spep_2 - n + 531, 1, -30.3 );
setRotateKey( spep_2 - n + 532, 1, -30.8 );
setRotateKey( spep_2 - n + 533, 1, -30.8 );
setRotateKey( spep_2 - n + 534, 1, -31.3 );
setRotateKey( spep_2 - n + 535, 1, -31.3 );
setRotateKey( spep_2 - n + 536, 1, -31.7 );
setRotateKey( spep_2 - n + 537, 1, -31.7 );
setRotateKey( spep_2 - n + 538, 1, -32.2 );
setRotateKey( spep_2 - n + 539, 1, -32.2 );
setRotateKey( spep_2 - n + 540, 1, -32.6 );
setRotateKey( spep_2 - n + 541, 1, -32.6 );
setRotateKey( spep_2 - n + 542, 1, -33.1 );
setRotateKey( spep_2 - n + 543, 1, -33.1 );
setRotateKey( spep_2 - n + 544, 1, -33.6 );
setRotateKey( spep_2 - n + 546, 1, -33.6 );


-- ** 音 ** --
--凄む
SE016 = playSeVer2( spep_1 + 88, 1399, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 88, 1397, "",spep_2 + 128, 0, 42, -1);
SE018 = playSeVer2( spep_1 + 88, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE018, 162 );

--気溜める
SE019 = playSeVer2( spep_2 + 56, 1283, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE019, 81 );
setPitch( spep_2 + 56, SE019, 700 );
setTimeStretch( SE019, 1.47, 30, 4 );
SE020 = playSeVer2( spep_2 + 62, 17, "",spep_2 + 138, 0, 20, -1);
SE021 = playSeVer2( spep_2 + 74, 1296, "",spep_2 + 142, 14, 40, -1);
setSeVolumeByWorkId( spep_2 + 74, SE021, 132 );

--気弾発射
SE022 = playSeVer2( spep_2 + 132, 1122, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 132, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 132, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE025 = playSeVer2( spep_2 + 178, 1121, "",spep_2 + 362, 0, 20, -1);
setPitch( spep_2 + 178, SE025, 300 );
setTimeStretch( SE025, 1.2, 30, 4 );
SE026 = playSeVer2( spep_2 + 210, 1116, "",spep_2 + 252, 0, 20, -1);
SE027 = playSeVer2( spep_2 + 218, 1277, "", 0, 0, 0, -1);

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--顔カットイン
--SE028 = playSeVer2( spep_2 + 250, 1018, "", 0, 0, 0, -1);

--叫ぶ背景
SE029 = playSeVer2( spep_2 + 258, 1264, "",spep_2 + 378, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 258, SE029, 74 );
SE030 = playSeVer2( spep_2 + 258, 1399, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE030, 184 );

--気弾Uターン
SE031 = playSeVer2( spep_2 + 354, 1027, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 354, 1272, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE032, 141 );
setPitch( spep_2 + 354, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );
SE033 = playSeVer2( spep_2 + 360, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 360, SE033, 79 );
SE034 = playSeVer2( spep_2 + 376, 1374, "", 0, 52, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 376, SE034, 78 );
setStartTimeMs( SE034,  250 );
setPitch( spep_2 + 376, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );
SE035 = playSeVer2( spep_2 + 368, 44, "", 0, 0, 0, -1);

--気弾飛んでいく
SE036 = playSeVer2( spep_2 + 450, 1116, "",spep_2 + 490, 0, 22, -1);
SE037 = playSeVer2( spep_2 + 450, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 450, 1117, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 450, 1177, "",spep_2 + 594, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 450, SE039, 76 );

--気弾飛んでいく２
SE040 = playSeVer2( spep_2 + 504, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 504, SE040, 178 );

--爆発前兆
SE041 = playSeVer2( spep_2 + 542, 1157, "",spep_2 + 612, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 542, SE041, 146 );

--爆発
SE042 = playSeVer2( spep_2 + 572, 1069, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 588, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 588, 1159, "", 0, 0, 0, -1);

--風圧
SE045 = playSeVer2( spep_2 + 588, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 588, SE045, 77 );

-- ** おわり ** --
dealDamage( spep_2 + 556 );
endPhase( spep_2 + 678 );



end


