-- 1026600: UR_ブルマ(少女期)_必殺技_怒りのマシンガン
-- sp_effect_b3_00006

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
SP_001 = 161863;  -- カプセルを取り出す～マシンガン装着 ef_001
SP_002 = 161864;  -- 敵に乱射が当たる ef_002
SP_002_b = 161865;  -- 敵に乱射が当たる ef_002_b

-- 敵側

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
-- カプセルを取り出す～マシンガン装着 ef_001 (288F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 288, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 288, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 288, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 288, entry_SP_001, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 288 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    
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

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--カプセル投げる
SE002 = playSeVer2( spep_0 + 20, 1189, "", 0, 0, 0, -1);

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--顔カットイン
--SE003 = playSeVer2( spep_0 + 42, 1018, "", 0, 0, 0, -1);

--カプセルキャッチする
SE004 = playSeVer2( spep_0 + 54, 1317, "",spep_0 + 62, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 170 );
SE005 = playSeVer2( spep_0 + 56, 1013, "",spep_0 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 170 );
setBandpassFilter( spep_0 + 56, SE005, 1350, 24000 );

--画面遷移
SE006 = playSeVer2( spep_0 + 104, 44, "",spep_0 + 156, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 104, SE006, 73 );

--カプセル空に投げる
SE007 = playSeVer2( spep_0 + 140, 1003, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 142, 1117, "",spep_0 + 194, 0, 28, -1);
SE009 = playSeVer2( spep_0 + 142, 1119, "",spep_0 + 196, 0, 12, 0.6);

--BOM
SE010 = playSeVer2( spep_0 + 190, 1017, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 190, 1236, "",spep_0 + 280, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 190, SE011, 92 );

--武器落ちてくる
SE012 = playSeVer2( spep_0 + 232, 1118, "",spep_0 + 276, 0, 14, 0.6);
setSeVolumeByWorkId( spep_0 + 232, SE012, 69 );

--武器キャッチ
SE013 = playSeVer2( spep_0 + 260, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE013,  450 );
SE014 = playSeVer2( spep_0 + 266, 1006, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 110, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 288;

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
-- 敵に乱射が当たる ef_002 (118F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 118, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 118, entry_SP_002, 255 );
entry_SP_002_b = entryEffect( spep_2 + 0, SP_002_b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, entry_SP_002_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, entry_SP_002_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_b, 0 );
setEffRotateKey( spep_2 + 118, entry_SP_002_b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_b, 255 );
setEffAlphaKey( spep_2 + 118, entry_SP_002_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, -142.2, -228.2 , 0 );
setMoveKey( spep_2 - n + 2, 1, -144.6, -228.2 , 0 );
setMoveKey( spep_2 - n + 3, 1, -144.6, -228.2 , 0 );
setMoveKey( spep_2 - n + 4, 1, -137.9, -219.2 , 0 );
setMoveKey( spep_2 - n + 5, 1, -137.9, -219.2 , 0 );
setMoveKey( spep_2 - n + 6, 1, -150.2, -229.1 , 0 );
setMoveKey( spep_2 - n + 7, 1, -150.2, -229.1 , 0 );
setMoveKey( spep_2 - n + 8, 1, -146.5, -234.1 , 0 );
setMoveKey( spep_2 - n + 9, 1, -146.5, -234.1 , 0 );
setMoveKey( spep_2 - n + 10, 1, -159.6, -223.4 , 0 );
setMoveKey( spep_2 - n + 11, 1, -159.6, -223.4 , 0 );
setMoveKey( spep_2 - n + 12, 1, -156.5, -228.3 , 0 );
setMoveKey( spep_2 - n + 13, 1, -156.5, -228.3 , 0 );
setMoveKey( spep_2 - n + 14, 1, -149.9, -219.3 , 0 );
setMoveKey( spep_2 - n + 15, 1, -149.9, -219.3 , 0 );
setMoveKey( spep_2 - n + 16, 1, -162.2, -229.2 , 0 );
setMoveKey( spep_2 - n + 17, 1, -162.2, -229.2 , 0 );
setMoveKey( spep_2 - n + 18, 1, -158.5, -234.2 , 0 );
setMoveKey( spep_2 - n + 19, 1, -158.5, -234.2 , 0 );
setMoveKey( spep_2 - n + 20, 1, -171.5, -223.5 , 0 );
setMoveKey( spep_2 - n + 21, 1, -171.5, -223.5 , 0 );
setMoveKey( spep_2 - n + 22, 1, -174.1, -234.1 , 0 );
setMoveKey( spep_2 - n + 23, 1, -174.1, -234.1 , 0 );
setMoveKey( spep_2 - n + 24, 1, -176.3, -223.5 , 0 );
setMoveKey( spep_2 - n + 25, 1, -176.3, -223.5 , 0 );
setMoveKey( spep_2 - n + 26, 1, -178.8, -234.2 , 0 );
setMoveKey( spep_2 - n + 27, 1, -178.8, -234.2 , 0 );
setMoveKey( spep_2 - n + 28, 1, -175.6, -228.5 , 0 );
setMoveKey( spep_2 - n + 29, 1, -175.6, -228.5 , 0 );
setMoveKey( spep_2 - n + 30, 1, -169, -219.5 , 0 );
setMoveKey( spep_2 - n + 31, 1, -169, -219.5 , 0 );
setMoveKey( spep_2 - n + 32, 1, -181.3, -229.4 , 0 );
setMoveKey( spep_2 - n + 33, 1, -181.3, -229.4 , 0 );
setMoveKey( spep_2 - n + 34, 1, -177.6, -234.3 , 0 );
setMoveKey( spep_2 - n + 35, 1, -177.6, -234.3 , 0 );
setMoveKey( spep_2 - n + 36, 1, -190.6, -223.6 , 0 );
setMoveKey( spep_2 - n + 37, 1, -190.6, -223.6 , 0 );
setMoveKey( spep_2 - n + 38, 1, -193.2, -234.3 , 0 );
setMoveKey( spep_2 - n + 39, 1, -193.2, -234.3 , 0 );
setMoveKey( spep_2 - n + 40, 1, -189.9, -228.7 , 0 );
setMoveKey( spep_2 - n + 41, 1, -189.9, -228.7 , 0 );
setMoveKey( spep_2 - n + 42, 1, -183.3, -219.6 , 0 );
setMoveKey( spep_2 - n + 43, 1, -183.3, -219.6 , 0 );
setMoveKey( spep_2 - n + 44, 1, -195.6, -229.6 , 0 );
setMoveKey( spep_2 - n + 45, 1, -195.6, -229.6 , 0 );
setMoveKey( spep_2 - n + 46, 1, -191.9, -234.5 , 0 );
setMoveKey( spep_2 - n + 47, 1, -191.9, -234.5 , 0 );
setMoveKey( spep_2 - n + 48, 1, -204.9, -223.8 , 0 );
setMoveKey( spep_2 - n + 49, 1, -204.9, -223.8 , 0 );
setMoveKey( spep_2 - n + 50, 1, -207.5, -234.5 , 0 );
setMoveKey( spep_2 - n + 51, 1, -207.5, -234.5 , 0 );
setMoveKey( spep_2 - n + 52, 1, -204.3, -228.7 , 0 );
setMoveKey( spep_2 - n + 53, 1, -204.3, -228.7 , 0 );
setMoveKey( spep_2 - n + 54, 1, -197.6, -219.8 , 0 );
setMoveKey( spep_2 - n + 55, 1, -197.6, -219.8 , 0 );
setMoveKey( spep_2 - n + 56, 1, -209, -228.8 , 0 );
setMoveKey( spep_2 - n + 57, 1, -209, -228.8 , 0 );
setMoveKey( spep_2 - n + 58, 1, -202.4, -219.8 , 0 );
setMoveKey( spep_2 - n + 59, 1, -202.4, -219.8 , 0 );
setMoveKey( spep_2 - n + 60, 1, -214.7, -229.8 , 0 );
setMoveKey( spep_2 - n + 61, 1, -214.7, -229.8 , 0 );
setMoveKey( spep_2 - n + 62, 1, -211, -234.6 , 0 );
setMoveKey( spep_2 - n + 63, 1, -211, -234.6 , 0 );
setMoveKey( spep_2 - n + 64, 1, -224, -224 , 0 );
setMoveKey( spep_2 - n + 65, 1, -224, -224 , 0 );
setMoveKey( spep_2 - n + 66, 1, -221, -228.9 , 0 );
setMoveKey( spep_2 - n + 67, 1, -221, -228.9 , 0 );
setMoveKey( spep_2 - n + 68, 1, -214.4, -219.9 , 0 );
setMoveKey( spep_2 - n + 69, 1, -214.4, -219.9 , 0 );
setMoveKey( spep_2 - n + 70, 1, -226.7, -229.9 , 0 );
setMoveKey( spep_2 - n + 71, 1, -226.7, -229.9 , 0 );
setMoveKey( spep_2 - n + 72, 1, -222.9, -234.7 , 0 );
setMoveKey( spep_2 - n + 73, 1, -222.9, -234.7 , 0 );
setMoveKey( spep_2 - n + 74, 1, -236, -224.1 , 0 );
setMoveKey( spep_2 - n + 75, 1, -236, -224.1 , 0 );
setMoveKey( spep_2 - n + 76, 1, -238.5, -234.7 , 0 );
setMoveKey( spep_2 - n + 77, 1, -238.5, -234.7 , 0 );
setMoveKey( spep_2 - n + 78, 1, -240.8, -224.1 , 0 );
setMoveKey( spep_2 - n + 79, 1, -240.8, -224.1 , 0 );
setMoveKey( spep_2 - n + 80, 1, -243.3, -234.8 , 0 );
setMoveKey( spep_2 - n + 81, 1, -243.3, -234.8 , 0 );
setMoveKey( spep_2 - n + 82, 1, -240.1, -229.1 , 0 );
setMoveKey( spep_2 - n + 83, 1, -240.1, -229.1 , 0 );
setMoveKey( spep_2 - n + 84, 1, -233.5, -220.1 , 0 );
setMoveKey( spep_2 - n + 85, 1, -233.5, -220.1 , 0 );
setMoveKey( spep_2 - n + 86, 1, -245.7, -230 , 0 );
setMoveKey( spep_2 - n + 87, 1, -245.7, -230 , 0 );
setMoveKey( spep_2 - n + 88, 1, -242, -234.9 , 0 );
setMoveKey( spep_2 - n + 89, 1, -242, -234.9 , 0 );
setMoveKey( spep_2 - n + 90, 1, -255.1, -224.3 , 0 );
setMoveKey( spep_2 - n + 91, 1, -255.1, -224.3 , 0 );
setMoveKey( spep_2 - n + 92, 1, -257.7, -234.9 , 0 );
setMoveKey( spep_2 - n + 93, 1, -257.7, -234.9 , 0 );
setMoveKey( spep_2 - n + 94, 1, -254.4, -229.2 , 0 );
setMoveKey( spep_2 - n + 95, 1, -254.4, -229.2 , 0 );
setMoveKey( spep_2 - n + 96, 1, -247.8, -220.2 , 0 );
setMoveKey( spep_2 - n + 97, 1, -247.8, -220.2 , 0 );
setMoveKey( spep_2 - n + 98, 1, -260.1, -230.1 , 0 );
setMoveKey( spep_2 - n + 99, 1, -260.1, -230.1 , 0 );
setMoveKey( spep_2 - n + 100, 1, -256.4, -235.1 , 0 );
setMoveKey( spep_2 - n + 101, 1, -256.4, -235.1 , 0 );
setMoveKey( spep_2 - n + 102, 1, -269.4, -224.4 , 0 );
setMoveKey( spep_2 - n + 103, 1, -269.4, -224.4 , 0 );
setMoveKey( spep_2 - n + 104, 1, -272, -235.1 , 0 );
setMoveKey( spep_2 - n + 105, 1, -272, -235.1 , 0 );
setMoveKey( spep_2 - n + 106, 1, -268.7, -229.3 , 0 );
setMoveKey( spep_2 - n + 107, 1, -268.7, -229.3 , 0 );
setMoveKey( spep_2 - n + 108, 1, -262.1, -220.4 , 0 );
setMoveKey( spep_2 - n + 109, 1, -262.1, -220.4 , 0 );
setMoveKey( spep_2 - n + 110, 1, -274.4, -230.3 , 0 );
setMoveKey( spep_2 - n + 111, 1, -274.4, -230.3 , 0 );
setMoveKey( spep_2 - n + 112, 1, -270.7, -235.2 , 0 );
setMoveKey( spep_2 - n + 113, 1, -270.7, -235.2 , 0 );
setMoveKey( spep_2 - n + 114, 1, -283.7, -224.5 , 0 );
setMoveKey( spep_2 - n + 115, 1, -283.7, -224.5 , 0 );
setMoveKey( spep_2 - n + 116, 1, -286.3, -235.2 , 0 );
setMoveKey( spep_2 - n + 117, 1, -286.3, -235.2 , 0 );
setMoveKey( spep_2 - n + 118, 1, -288.7, -235.2 , 0 );
setMoveKey( spep_2 + 118, 1, -288.7, -235.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_2 - n + 2, 1, 2.26, 2.26 );
setScaleKey( spep_2 - n + 3, 1, 2.26, 2.26 );
setScaleKey( spep_2 - n + 4, 1, 2.28, 2.28 );
setScaleKey( spep_2 - n + 5, 1, 2.28, 2.28 );
setScaleKey( spep_2 - n + 6, 1, 2.29, 2.29 );
setScaleKey( spep_2 - n + 7, 1, 2.29, 2.29 );
setScaleKey( spep_2 - n + 8, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 9, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 10, 1, 2.32, 2.32 );
setScaleKey( spep_2 - n + 11, 1, 2.32, 2.32 );
setScaleKey( spep_2 - n + 12, 1, 2.34, 2.34 );
setScaleKey( spep_2 - n + 13, 1, 2.34, 2.34 );
setScaleKey( spep_2 - n + 14, 1, 2.35, 2.35 );
setScaleKey( spep_2 - n + 15, 1, 2.35, 2.35 );
setScaleKey( spep_2 - n + 16, 1, 2.36, 2.36 );
setScaleKey( spep_2 - n + 17, 1, 2.36, 2.36 );
setScaleKey( spep_2 - n + 18, 1, 2.38, 2.38 );
setScaleKey( spep_2 - n + 19, 1, 2.38, 2.38 );
setScaleKey( spep_2 - n + 20, 1, 2.39, 2.39 );
setScaleKey( spep_2 - n + 21, 1, 2.39, 2.39 );
setScaleKey( spep_2 - n + 22, 1, 2.41, 2.41 );
setScaleKey( spep_2 - n + 23, 1, 2.41, 2.41 );
setScaleKey( spep_2 - n + 24, 1, 2.42, 2.42 );
setScaleKey( spep_2 - n + 25, 1, 2.42, 2.42 );
setScaleKey( spep_2 - n + 26, 1, 2.44, 2.44 );
setScaleKey( spep_2 - n + 27, 1, 2.44, 2.44 );
setScaleKey( spep_2 - n + 28, 1, 2.45, 2.45 );
setScaleKey( spep_2 - n + 29, 1, 2.45, 2.45 );
setScaleKey( spep_2 - n + 30, 1, 2.47, 2.47 );
setScaleKey( spep_2 - n + 31, 1, 2.47, 2.47 );
setScaleKey( spep_2 - n + 32, 1, 2.48, 2.48 );
setScaleKey( spep_2 - n + 33, 1, 2.48, 2.48 );
setScaleKey( spep_2 - n + 34, 1, 2.5, 2.5 );
setScaleKey( spep_2 - n + 35, 1, 2.5, 2.5 );
setScaleKey( spep_2 - n + 36, 1, 2.51, 2.51 );
setScaleKey( spep_2 - n + 37, 1, 2.51, 2.51 );
setScaleKey( spep_2 - n + 38, 1, 2.52, 2.52 );
setScaleKey( spep_2 - n + 39, 1, 2.52, 2.52 );
setScaleKey( spep_2 - n + 40, 1, 2.54, 2.54 );
setScaleKey( spep_2 - n + 41, 1, 2.54, 2.54 );
setScaleKey( spep_2 - n + 42, 1, 2.55, 2.55 );
setScaleKey( spep_2 - n + 43, 1, 2.55, 2.55 );
setScaleKey( spep_2 - n + 44, 1, 2.57, 2.57 );
setScaleKey( spep_2 - n + 45, 1, 2.57, 2.57 );
setScaleKey( spep_2 - n + 46, 1, 2.58, 2.58 );
setScaleKey( spep_2 - n + 47, 1, 2.58, 2.58 );
setScaleKey( spep_2 - n + 48, 1, 2.6, 2.6 );
setScaleKey( spep_2 - n + 49, 1, 2.6, 2.6 );
setScaleKey( spep_2 - n + 50, 1, 2.61, 2.61 );
setScaleKey( spep_2 - n + 51, 1, 2.61, 2.61 );
setScaleKey( spep_2 - n + 52, 1, 2.63, 2.63 );
setScaleKey( spep_2 - n + 53, 1, 2.63, 2.63 );
setScaleKey( spep_2 - n + 54, 1, 2.64, 2.64 );
setScaleKey( spep_2 - n + 55, 1, 2.64, 2.64 );
setScaleKey( spep_2 - n + 56, 1, 2.65, 2.65 );
setScaleKey( spep_2 - n + 57, 1, 2.65, 2.65 );
setScaleKey( spep_2 - n + 58, 1, 2.67, 2.67 );
setScaleKey( spep_2 - n + 59, 1, 2.67, 2.67 );
setScaleKey( spep_2 - n + 60, 1, 2.68, 2.68 );
setScaleKey( spep_2 - n + 61, 1, 2.68, 2.68 );
setScaleKey( spep_2 - n + 62, 1, 2.7, 2.7 );
setScaleKey( spep_2 - n + 63, 1, 2.7, 2.7 );
setScaleKey( spep_2 - n + 64, 1, 2.71, 2.71 );
setScaleKey( spep_2 - n + 65, 1, 2.71, 2.71 );
setScaleKey( spep_2 - n + 66, 1, 2.73, 2.73 );
setScaleKey( spep_2 - n + 67, 1, 2.73, 2.73 );
setScaleKey( spep_2 - n + 68, 1, 2.74, 2.74 );
setScaleKey( spep_2 - n + 69, 1, 2.74, 2.74 );
setScaleKey( spep_2 - n + 70, 1, 2.76, 2.76 );
setScaleKey( spep_2 - n + 71, 1, 2.76, 2.76 );
setScaleKey( spep_2 - n + 72, 1, 2.77, 2.77 );
setScaleKey( spep_2 - n + 73, 1, 2.77, 2.77 );
setScaleKey( spep_2 - n + 74, 1, 2.78, 2.78 );
setScaleKey( spep_2 - n + 75, 1, 2.78, 2.78 );
setScaleKey( spep_2 - n + 76, 1, 2.8, 2.8 );
setScaleKey( spep_2 - n + 77, 1, 2.8, 2.8 );
setScaleKey( spep_2 - n + 78, 1, 2.81, 2.81 );
setScaleKey( spep_2 - n + 79, 1, 2.81, 2.81 );
setScaleKey( spep_2 - n + 80, 1, 2.83, 2.83 );
setScaleKey( spep_2 - n + 81, 1, 2.83, 2.83 );
setScaleKey( spep_2 - n + 82, 1, 2.84, 2.84 );
setScaleKey( spep_2 - n + 83, 1, 2.84, 2.84 );
setScaleKey( spep_2 - n + 84, 1, 2.86, 2.86 );
setScaleKey( spep_2 - n + 85, 1, 2.86, 2.86 );
setScaleKey( spep_2 - n + 86, 1, 2.87, 2.87 );
setScaleKey( spep_2 - n + 87, 1, 2.87, 2.87 );
setScaleKey( spep_2 - n + 88, 1, 2.89, 2.89 );
setScaleKey( spep_2 - n + 89, 1, 2.89, 2.89 );
setScaleKey( spep_2 - n + 90, 1, 2.9, 2.9 );
setScaleKey( spep_2 - n + 91, 1, 2.9, 2.9 );
setScaleKey( spep_2 - n + 92, 1, 2.91, 2.91 );
setScaleKey( spep_2 - n + 93, 1, 2.91, 2.91 );
setScaleKey( spep_2 - n + 94, 1, 2.93, 2.93 );
setScaleKey( spep_2 - n + 95, 1, 2.93, 2.93 );
setScaleKey( spep_2 - n + 96, 1, 2.94, 2.94 );
setScaleKey( spep_2 - n + 97, 1, 2.94, 2.94 );
setScaleKey( spep_2 - n + 98, 1, 2.96, 2.96 );
setScaleKey( spep_2 - n + 99, 1, 2.96, 2.96 );
setScaleKey( spep_2 - n + 100, 1, 2.97, 2.97 );
setScaleKey( spep_2 - n + 101, 1, 2.97, 2.97 );
setScaleKey( spep_2 - n + 102, 1, 2.99, 2.99 );
setScaleKey( spep_2 - n + 103, 1, 2.99, 2.99 );
setScaleKey( spep_2 - n + 104, 1, 3, 3 );
setScaleKey( spep_2 - n + 105, 1, 3, 3 );
setScaleKey( spep_2 - n + 106, 1, 3.02, 3.02 );
setScaleKey( spep_2 - n + 107, 1, 3.02, 3.02 );
setScaleKey( spep_2 - n + 108, 1, 3.03, 3.03 );
setScaleKey( spep_2 - n + 109, 1, 3.03, 3.03 );
setScaleKey( spep_2 - n + 110, 1, 3.04, 3.04 );
setScaleKey( spep_2 - n + 111, 1, 3.04, 3.04 );
setScaleKey( spep_2 - n + 112, 1, 3.06, 3.06 );
setScaleKey( spep_2 - n + 113, 1, 3.06, 3.06 );
setScaleKey( spep_2 - n + 114, 1, 3.07, 3.07 );
setScaleKey( spep_2 - n + 115, 1, 3.07, 3.07 );
setScaleKey( spep_2 - n + 116, 1, 3.09, 3.09 );
setScaleKey( spep_2 - n + 117, 1, 3.09, 3.09 );
setScaleKey( spep_2 - n + 118, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 118, 1, 3.1, 3.1 );

setRotateKey( spep_2 + 0, 1, -41.1 );
setRotateKey( spep_2 - n + 2, 1, -43.1 );
setRotateKey( spep_2 - n + 3, 1, -43.1 );
setRotateKey( spep_2 - n + 4, 1, -40.4 );
setRotateKey( spep_2 - n + 5, 1, -40.4 );
setRotateKey( spep_2 - n + 6, 1, -41.8 );
setRotateKey( spep_2 - n + 7, 1, -41.8 );
setRotateKey( spep_2 - n + 8, 1, -40.3 );
setRotateKey( spep_2 - n + 9, 1, -40.3 );
setRotateKey( spep_2 - n + 10, 1, -41.1 );
setRotateKey( spep_2 - n + 11, 1, -41.1 );
setRotateKey( spep_2 - n + 12, 1, -43.1 );
setRotateKey( spep_2 - n + 13, 1, -43.1 );
setRotateKey( spep_2 - n + 14, 1, -40.4 );
setRotateKey( spep_2 - n + 15, 1, -40.4 );
setRotateKey( spep_2 - n + 16, 1, -41.8 );
setRotateKey( spep_2 - n + 17, 1, -41.8 );
setRotateKey( spep_2 - n + 18, 1, -40.3 );
setRotateKey( spep_2 - n + 19, 1, -40.3 );
setRotateKey( spep_2 - n + 20, 1, -41.1 );
setRotateKey( spep_2 - n + 21, 1, -41.1 );
setRotateKey( spep_2 - n + 22, 1, -43.1 );
setRotateKey( spep_2 - n + 23, 1, -43.1 );
setRotateKey( spep_2 - n + 24, 1, -40.4 );
setRotateKey( spep_2 - n + 25, 1, -40.4 );
setRotateKey( spep_2 - n + 26, 1, -41.8 );
setRotateKey( spep_2 - n + 27, 1, -41.8 );
setRotateKey( spep_2 - n + 28, 1, -40.3 );
setRotateKey( spep_2 - n + 29, 1, -40.3 );
setRotateKey( spep_2 - n + 30, 1, -41.1 );
setRotateKey( spep_2 - n + 31, 1, -41.1 );
setRotateKey( spep_2 - n + 32, 1, -43.1 );
setRotateKey( spep_2 - n + 33, 1, -43.1 );
setRotateKey( spep_2 - n + 34, 1, -40.4 );
setRotateKey( spep_2 - n + 35, 1, -40.4 );
setRotateKey( spep_2 - n + 36, 1, -41.8 );
setRotateKey( spep_2 - n + 37, 1, -41.8 );
setRotateKey( spep_2 - n + 38, 1, -40.3 );
setRotateKey( spep_2 - n + 39, 1, -40.3 );
setRotateKey( spep_2 - n + 40, 1, -41.1 );
setRotateKey( spep_2 - n + 41, 1, -41.1 );
setRotateKey( spep_2 - n + 42, 1, -43.1 );
setRotateKey( spep_2 - n + 43, 1, -43.1 );
setRotateKey( spep_2 - n + 44, 1, -40.4 );
setRotateKey( spep_2 - n + 45, 1, -40.4 );
setRotateKey( spep_2 - n + 46, 1, -41.8 );
setRotateKey( spep_2 - n + 47, 1, -41.8 );
setRotateKey( spep_2 - n + 48, 1, -40.3 );
setRotateKey( spep_2 - n + 49, 1, -40.3 );
setRotateKey( spep_2 - n + 50, 1, -41.1 );
setRotateKey( spep_2 - n + 51, 1, -41.1 );
setRotateKey( spep_2 - n + 52, 1, -43.1 );
setRotateKey( spep_2 - n + 53, 1, -43.1 );
setRotateKey( spep_2 - n + 54, 1, -40.4 );
setRotateKey( spep_2 - n + 55, 1, -40.4 );
setRotateKey( spep_2 - n + 56, 1, -41.8 );
setRotateKey( spep_2 - n + 57, 1, -41.8 );
setRotateKey( spep_2 - n + 58, 1, -40.3 );
setRotateKey( spep_2 - n + 59, 1, -40.3 );
setRotateKey( spep_2 - n + 60, 1, -41.1 );
setRotateKey( spep_2 - n + 61, 1, -41.1 );
setRotateKey( spep_2 - n + 62, 1, -43.1 );
setRotateKey( spep_2 - n + 63, 1, -43.1 );
setRotateKey( spep_2 - n + 64, 1, -40.4 );
setRotateKey( spep_2 - n + 65, 1, -40.4 );
setRotateKey( spep_2 - n + 66, 1, -41.8 );
setRotateKey( spep_2 - n + 67, 1, -41.8 );
setRotateKey( spep_2 - n + 68, 1, -40.3 );
setRotateKey( spep_2 - n + 69, 1, -40.3 );
setRotateKey( spep_2 - n + 70, 1, -41.1 );
setRotateKey( spep_2 - n + 71, 1, -41.1 );
setRotateKey( spep_2 - n + 72, 1, -43.1 );
setRotateKey( spep_2 - n + 73, 1, -43.1 );
setRotateKey( spep_2 - n + 74, 1, -40.4 );
setRotateKey( spep_2 - n + 75, 1, -40.4 );
setRotateKey( spep_2 - n + 76, 1, -41.8 );
setRotateKey( spep_2 - n + 77, 1, -41.8 );
setRotateKey( spep_2 - n + 78, 1, -40.3 );
setRotateKey( spep_2 - n + 79, 1, -40.3 );
setRotateKey( spep_2 - n + 80, 1, -41.1 );
setRotateKey( spep_2 - n + 81, 1, -41.1 );
setRotateKey( spep_2 - n + 82, 1, -43.1 );
setRotateKey( spep_2 - n + 83, 1, -43.1 );
setRotateKey( spep_2 - n + 84, 1, -40.4 );
setRotateKey( spep_2 - n + 85, 1, -40.4 );
setRotateKey( spep_2 - n + 86, 1, -41.8 );
setRotateKey( spep_2 - n + 87, 1, -41.8 );
setRotateKey( spep_2 - n + 88, 1, -40.3 );
setRotateKey( spep_2 - n + 89, 1, -40.3 );
setRotateKey( spep_2 - n + 90, 1, -41.1 );
setRotateKey( spep_2 - n + 91, 1, -41.1 );
setRotateKey( spep_2 - n + 92, 1, -43.1 );
setRotateKey( spep_2 - n + 93, 1, -43.1 );
setRotateKey( spep_2 - n + 94, 1, -40.4 );
setRotateKey( spep_2 - n + 95, 1, -40.4 );
setRotateKey( spep_2 - n + 96, 1, -41.8 );
setRotateKey( spep_2 - n + 97, 1, -41.8 );
setRotateKey( spep_2 - n + 98, 1, -40.3 );
setRotateKey( spep_2 - n + 99, 1, -40.3 );
setRotateKey( spep_2 - n + 100, 1, -41.1 );
setRotateKey( spep_2 - n + 101, 1, -41.1 );
setRotateKey( spep_2 - n + 102, 1, -43.1 );
setRotateKey( spep_2 - n + 103, 1, -43.1 );
setRotateKey( spep_2 - n + 104, 1, -40.4 );
setRotateKey( spep_2 - n + 105, 1, -40.4 );
setRotateKey( spep_2 - n + 106, 1, -41.8 );
setRotateKey( spep_2 - n + 107, 1, -41.8 );
setRotateKey( spep_2 - n + 108, 1, -40.3 );
setRotateKey( spep_2 - n + 109, 1, -40.3 );
setRotateKey( spep_2 - n + 110, 1, -41.1 );
setRotateKey( spep_2 - n + 111, 1, -41.1 );
setRotateKey( spep_2 - n + 112, 1, -43.1 );
setRotateKey( spep_2 - n + 113, 1, -43.1 );
setRotateKey( spep_2 - n + 114, 1, -40.4 );
setRotateKey( spep_2 - n + 115, 1, -40.4 );
setRotateKey( spep_2 - n + 116, 1, -41.8 );
setRotateKey( spep_2 - n + 117, 1, -41.8 );
setRotateKey( spep_2 - n + 118, 1, -40.3 );
setRotateKey( spep_2 + 118, 1, -40.3 );

-- ** 音 ** --
--マシンガン撃つ
SE016 = playSeVer2( spep_2 - 4, 1149, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 - 4, SE016, 136 );
SE017 = playSeVer2( spep_2 - 4, 1403, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 8 );
endPhase( spep_2 + 118 - 4 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カプセルを取り出す～マシンガン装着 ef_001 (288F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 288, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + 288, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 288, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 288, entry_SP_001, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 288 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    
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

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--カプセル投げる
SE002 = playSeVer2( spep_0 + 20, 1189, "", 0, 0, 0, -1);

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--顔カットイン
--SE003 = playSeVer2( spep_0 + 42, 1018, "", 0, 0, 0, -1);

--カプセルキャッチする
SE004 = playSeVer2( spep_0 + 54, 1317, "",spep_0 + 62, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 170 );
SE005 = playSeVer2( spep_0 + 56, 1013, "",spep_0 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 170 );
setBandpassFilter( spep_0 + 56, SE005, 1350, 24000 );

--画面遷移
SE006 = playSeVer2( spep_0 + 104, 44, "",spep_0 + 156, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 104, SE006, 73 );

--カプセル空に投げる
SE007 = playSeVer2( spep_0 + 140, 1003, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 142, 1117, "",spep_0 + 194, 0, 28, -1);
SE009 = playSeVer2( spep_0 + 142, 1119, "",spep_0 + 196, 0, 12, 0.6);

--BOM
SE010 = playSeVer2( spep_0 + 190, 1017, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 190, 1236, "",spep_0 + 280, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 190, SE011, 92 );

--武器落ちてくる
SE012 = playSeVer2( spep_0 + 232, 1118, "",spep_0 + 276, 0, 14, 0.6);
setSeVolumeByWorkId( spep_0 + 232, SE012, 69 );

--武器キャッチ
SE013 = playSeVer2( spep_0 + 260, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE013,  450 );
SE014 = playSeVer2( spep_0 + 266, 1006, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 110, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 288;

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
-- 敵に乱射が当たる ef_002 (118F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + 118, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 118, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 118, entry_SP_002, 255 );
entry_SP_002_b = entryEffect( spep_2 + 0, SP_002_b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, entry_SP_002_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 118, entry_SP_002_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_b, 0 );
setEffRotateKey( spep_2 + 118, entry_SP_002_b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_b, 255 );
setEffAlphaKey( spep_2 + 118, entry_SP_002_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 0, 1, 142.2, -228.2 , 0 );
setMoveKey( spep_2 - n + 2, 1, 144.6, -228.2 , 0 );
setMoveKey( spep_2 - n + 3, 1, 144.6, -228.2 , 0 );
setMoveKey( spep_2 - n + 4, 1, 137.9, -219.2 , 0 );
setMoveKey( spep_2 - n + 5, 1, 137.9, -219.2 , 0 );
setMoveKey( spep_2 - n + 6, 1, 150.2, -229.1 , 0 );
setMoveKey( spep_2 - n + 7, 1, 150.2, -229.1 , 0 );
setMoveKey( spep_2 - n + 8, 1, 146.5, -234.1 , 0 );
setMoveKey( spep_2 - n + 9, 1, 146.5, -234.1 , 0 );
setMoveKey( spep_2 - n + 10, 1, 159.6, -223.4 , 0 );
setMoveKey( spep_2 - n + 11, 1, 159.6, -223.4 , 0 );
setMoveKey( spep_2 - n + 12, 1, 156.5, -228.3 , 0 );
setMoveKey( spep_2 - n + 13, 1, 156.5, -228.3 , 0 );
setMoveKey( spep_2 - n + 14, 1, 149.9, -219.3 , 0 );
setMoveKey( spep_2 - n + 15, 1, 149.9, -219.3 , 0 );
setMoveKey( spep_2 - n + 16, 1, 162.2, -229.2 , 0 );
setMoveKey( spep_2 - n + 17, 1, 162.2, -229.2 , 0 );
setMoveKey( spep_2 - n + 18, 1, 158.5, -234.2 , 0 );
setMoveKey( spep_2 - n + 19, 1, 158.5, -234.2 , 0 );
setMoveKey( spep_2 - n + 20, 1, 171.5, -223.5 , 0 );
setMoveKey( spep_2 - n + 21, 1, 171.5, -223.5 , 0 );
setMoveKey( spep_2 - n + 22, 1, 174.1, -234.1 , 0 );
setMoveKey( spep_2 - n + 23, 1, 174.1, -234.1 , 0 );
setMoveKey( spep_2 - n + 24, 1, 176.3, -223.5 , 0 );
setMoveKey( spep_2 - n + 25, 1, 176.3, -223.5 , 0 );
setMoveKey( spep_2 - n + 26, 1, 178.8, -234.2 , 0 );
setMoveKey( spep_2 - n + 27, 1, 178.8, -234.2 , 0 );
setMoveKey( spep_2 - n + 28, 1, 175.6, -228.5 , 0 );
setMoveKey( spep_2 - n + 29, 1, 175.6, -228.5 , 0 );
setMoveKey( spep_2 - n + 30, 1, 169, -219.5 , 0 );
setMoveKey( spep_2 - n + 31, 1, 169, -219.5 , 0 );
setMoveKey( spep_2 - n + 32, 1, 181.3, -229.4 , 0 );
setMoveKey( spep_2 - n + 33, 1, 181.3, -229.4 , 0 );
setMoveKey( spep_2 - n + 34, 1, 177.6, -234.3 , 0 );
setMoveKey( spep_2 - n + 35, 1, 177.6, -234.3 , 0 );
setMoveKey( spep_2 - n + 36, 1, 190.6, -223.6 , 0 );
setMoveKey( spep_2 - n + 37, 1, 190.6, -223.6 , 0 );
setMoveKey( spep_2 - n + 38, 1, 193.2, -234.3 , 0 );
setMoveKey( spep_2 - n + 39, 1, 193.2, -234.3 , 0 );
setMoveKey( spep_2 - n + 40, 1, 189.9, -228.7 , 0 );
setMoveKey( spep_2 - n + 41, 1, 189.9, -228.7 , 0 );
setMoveKey( spep_2 - n + 42, 1, 183.3, -219.6 , 0 );
setMoveKey( spep_2 - n + 43, 1, 183.3, -219.6 , 0 );
setMoveKey( spep_2 - n + 44, 1, 195.6, -229.6 , 0 );
setMoveKey( spep_2 - n + 45, 1, 195.6, -229.6 , 0 );
setMoveKey( spep_2 - n + 46, 1, 191.9, -234.5 , 0 );
setMoveKey( spep_2 - n + 47, 1, 191.9, -234.5 , 0 );
setMoveKey( spep_2 - n + 48, 1, 204.9, -223.8 , 0 );
setMoveKey( spep_2 - n + 49, 1, 204.9, -223.8 , 0 );
setMoveKey( spep_2 - n + 50, 1, 207.5, -234.5 , 0 );
setMoveKey( spep_2 - n + 51, 1, 207.5, -234.5 , 0 );
setMoveKey( spep_2 - n + 52, 1, 204.3, -228.7 , 0 );
setMoveKey( spep_2 - n + 53, 1, 204.3, -228.7 , 0 );
setMoveKey( spep_2 - n + 54, 1, 197.6, -219.8 , 0 );
setMoveKey( spep_2 - n + 55, 1, 197.6, -219.8 , 0 );
setMoveKey( spep_2 - n + 56, 1, 209, -228.8 , 0 );
setMoveKey( spep_2 - n + 57, 1, 209, -228.8 , 0 );
setMoveKey( spep_2 - n + 58, 1, 202.4, -219.8 , 0 );
setMoveKey( spep_2 - n + 59, 1, 202.4, -219.8 , 0 );
setMoveKey( spep_2 - n + 60, 1, 214.7, -229.8 , 0 );
setMoveKey( spep_2 - n + 61, 1, 214.7, -229.8 , 0 );
setMoveKey( spep_2 - n + 62, 1, 211, -234.6 , 0 );
setMoveKey( spep_2 - n + 63, 1, 211, -234.6 , 0 );
setMoveKey( spep_2 - n + 64, 1, 224, -224 , 0 );
setMoveKey( spep_2 - n + 65, 1, 224, -224 , 0 );
setMoveKey( spep_2 - n + 66, 1, 221, -228.9 , 0 );
setMoveKey( spep_2 - n + 67, 1, 221, -228.9 , 0 );
setMoveKey( spep_2 - n + 68, 1, 214.4, -219.9 , 0 );
setMoveKey( spep_2 - n + 69, 1, 214.4, -219.9 , 0 );
setMoveKey( spep_2 - n + 70, 1, 226.7, -229.9 , 0 );
setMoveKey( spep_2 - n + 71, 1, 226.7, -229.9 , 0 );
setMoveKey( spep_2 - n + 72, 1, 222.9, -234.7 , 0 );
setMoveKey( spep_2 - n + 73, 1, 222.9, -234.7 , 0 );
setMoveKey( spep_2 - n + 74, 1, 236, -224.1 , 0 );
setMoveKey( spep_2 - n + 75, 1, 236, -224.1 , 0 );
setMoveKey( spep_2 - n + 76, 1, 238.5, -234.7 , 0 );
setMoveKey( spep_2 - n + 77, 1, 238.5, -234.7 , 0 );
setMoveKey( spep_2 - n + 78, 1, 240.8, -224.1 , 0 );
setMoveKey( spep_2 - n + 79, 1, 240.8, -224.1 , 0 );
setMoveKey( spep_2 - n + 80, 1, 243.3, -234.8 , 0 );
setMoveKey( spep_2 - n + 81, 1, 243.3, -234.8 , 0 );
setMoveKey( spep_2 - n + 82, 1, 240.1, -229.1 , 0 );
setMoveKey( spep_2 - n + 83, 1, 240.1, -229.1 , 0 );
setMoveKey( spep_2 - n + 84, 1, 233.5, -220.1 , 0 );
setMoveKey( spep_2 - n + 85, 1, 233.5, -220.1 , 0 );
setMoveKey( spep_2 - n + 86, 1, 245.7, -230 , 0 );
setMoveKey( spep_2 - n + 87, 1, 245.7, -230 , 0 );
setMoveKey( spep_2 - n + 88, 1, 242, -234.9 , 0 );
setMoveKey( spep_2 - n + 89, 1, 242, -234.9 , 0 );
setMoveKey( spep_2 - n + 90, 1, 255.1, -224.3 , 0 );
setMoveKey( spep_2 - n + 91, 1, 255.1, -224.3 , 0 );
setMoveKey( spep_2 - n + 92, 1, 257.7, -234.9 , 0 );
setMoveKey( spep_2 - n + 93, 1, 257.7, -234.9 , 0 );
setMoveKey( spep_2 - n + 94, 1, 254.4, -229.2 , 0 );
setMoveKey( spep_2 - n + 95, 1, 254.4, -229.2 , 0 );
setMoveKey( spep_2 - n + 96, 1, 247.8, -220.2 , 0 );
setMoveKey( spep_2 - n + 97, 1, 247.8, -220.2 , 0 );
setMoveKey( spep_2 - n + 98, 1, 260.1, -230.1 , 0 );
setMoveKey( spep_2 - n + 99, 1, 260.1, -230.1 , 0 );
setMoveKey( spep_2 - n + 100, 1, 256.4, -235.1 , 0 );
setMoveKey( spep_2 - n + 101, 1, 256.4, -235.1 , 0 );
setMoveKey( spep_2 - n + 102, 1, 269.4, -224.4 , 0 );
setMoveKey( spep_2 - n + 103, 1, 269.4, -224.4 , 0 );
setMoveKey( spep_2 - n + 104, 1, 272, -235.1 , 0 );
setMoveKey( spep_2 - n + 105, 1, 272, -235.1 , 0 );
setMoveKey( spep_2 - n + 106, 1, 268.7, -229.3 , 0 );
setMoveKey( spep_2 - n + 107, 1, 268.7, -229.3 , 0 );
setMoveKey( spep_2 - n + 108, 1, 262.1, -220.4 , 0 );
setMoveKey( spep_2 - n + 109, 1, 262.1, -220.4 , 0 );
setMoveKey( spep_2 - n + 110, 1, 274.4, -230.3 , 0 );
setMoveKey( spep_2 - n + 111, 1, 274.4, -230.3 , 0 );
setMoveKey( spep_2 - n + 112, 1, 270.7, -235.2 , 0 );
setMoveKey( spep_2 - n + 113, 1, 270.7, -235.2 , 0 );
setMoveKey( spep_2 - n + 114, 1, 283.7, -224.5 , 0 );
setMoveKey( spep_2 - n + 115, 1, 283.7, -224.5 , 0 );
setMoveKey( spep_2 - n + 116, 1, 286.3, -235.2 , 0 );
setMoveKey( spep_2 - n + 117, 1, 286.3, -235.2 , 0 );
setMoveKey( spep_2 - n + 118, 1, 288.7, -235.2 , 0 );
setMoveKey( spep_2 + 118, 1, 288.7, -235.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_2 - n + 2, 1, 2.26, 2.26 );
setScaleKey( spep_2 - n + 3, 1, 2.26, 2.26 );
setScaleKey( spep_2 - n + 4, 1, 2.28, 2.28 );
setScaleKey( spep_2 - n + 5, 1, 2.28, 2.28 );
setScaleKey( spep_2 - n + 6, 1, 2.29, 2.29 );
setScaleKey( spep_2 - n + 7, 1, 2.29, 2.29 );
setScaleKey( spep_2 - n + 8, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 9, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 10, 1, 2.32, 2.32 );
setScaleKey( spep_2 - n + 11, 1, 2.32, 2.32 );
setScaleKey( spep_2 - n + 12, 1, 2.34, 2.34 );
setScaleKey( spep_2 - n + 13, 1, 2.34, 2.34 );
setScaleKey( spep_2 - n + 14, 1, 2.35, 2.35 );
setScaleKey( spep_2 - n + 15, 1, 2.35, 2.35 );
setScaleKey( spep_2 - n + 16, 1, 2.36, 2.36 );
setScaleKey( spep_2 - n + 17, 1, 2.36, 2.36 );
setScaleKey( spep_2 - n + 18, 1, 2.38, 2.38 );
setScaleKey( spep_2 - n + 19, 1, 2.38, 2.38 );
setScaleKey( spep_2 - n + 20, 1, 2.39, 2.39 );
setScaleKey( spep_2 - n + 21, 1, 2.39, 2.39 );
setScaleKey( spep_2 - n + 22, 1, 2.41, 2.41 );
setScaleKey( spep_2 - n + 23, 1, 2.41, 2.41 );
setScaleKey( spep_2 - n + 24, 1, 2.42, 2.42 );
setScaleKey( spep_2 - n + 25, 1, 2.42, 2.42 );
setScaleKey( spep_2 - n + 26, 1, 2.44, 2.44 );
setScaleKey( spep_2 - n + 27, 1, 2.44, 2.44 );
setScaleKey( spep_2 - n + 28, 1, 2.45, 2.45 );
setScaleKey( spep_2 - n + 29, 1, 2.45, 2.45 );
setScaleKey( spep_2 - n + 30, 1, 2.47, 2.47 );
setScaleKey( spep_2 - n + 31, 1, 2.47, 2.47 );
setScaleKey( spep_2 - n + 32, 1, 2.48, 2.48 );
setScaleKey( spep_2 - n + 33, 1, 2.48, 2.48 );
setScaleKey( spep_2 - n + 34, 1, 2.5, 2.5 );
setScaleKey( spep_2 - n + 35, 1, 2.5, 2.5 );
setScaleKey( spep_2 - n + 36, 1, 2.51, 2.51 );
setScaleKey( spep_2 - n + 37, 1, 2.51, 2.51 );
setScaleKey( spep_2 - n + 38, 1, 2.52, 2.52 );
setScaleKey( spep_2 - n + 39, 1, 2.52, 2.52 );
setScaleKey( spep_2 - n + 40, 1, 2.54, 2.54 );
setScaleKey( spep_2 - n + 41, 1, 2.54, 2.54 );
setScaleKey( spep_2 - n + 42, 1, 2.55, 2.55 );
setScaleKey( spep_2 - n + 43, 1, 2.55, 2.55 );
setScaleKey( spep_2 - n + 44, 1, 2.57, 2.57 );
setScaleKey( spep_2 - n + 45, 1, 2.57, 2.57 );
setScaleKey( spep_2 - n + 46, 1, 2.58, 2.58 );
setScaleKey( spep_2 - n + 47, 1, 2.58, 2.58 );
setScaleKey( spep_2 - n + 48, 1, 2.6, 2.6 );
setScaleKey( spep_2 - n + 49, 1, 2.6, 2.6 );
setScaleKey( spep_2 - n + 50, 1, 2.61, 2.61 );
setScaleKey( spep_2 - n + 51, 1, 2.61, 2.61 );
setScaleKey( spep_2 - n + 52, 1, 2.63, 2.63 );
setScaleKey( spep_2 - n + 53, 1, 2.63, 2.63 );
setScaleKey( spep_2 - n + 54, 1, 2.64, 2.64 );
setScaleKey( spep_2 - n + 55, 1, 2.64, 2.64 );
setScaleKey( spep_2 - n + 56, 1, 2.65, 2.65 );
setScaleKey( spep_2 - n + 57, 1, 2.65, 2.65 );
setScaleKey( spep_2 - n + 58, 1, 2.67, 2.67 );
setScaleKey( spep_2 - n + 59, 1, 2.67, 2.67 );
setScaleKey( spep_2 - n + 60, 1, 2.68, 2.68 );
setScaleKey( spep_2 - n + 61, 1, 2.68, 2.68 );
setScaleKey( spep_2 - n + 62, 1, 2.7, 2.7 );
setScaleKey( spep_2 - n + 63, 1, 2.7, 2.7 );
setScaleKey( spep_2 - n + 64, 1, 2.71, 2.71 );
setScaleKey( spep_2 - n + 65, 1, 2.71, 2.71 );
setScaleKey( spep_2 - n + 66, 1, 2.73, 2.73 );
setScaleKey( spep_2 - n + 67, 1, 2.73, 2.73 );
setScaleKey( spep_2 - n + 68, 1, 2.74, 2.74 );
setScaleKey( spep_2 - n + 69, 1, 2.74, 2.74 );
setScaleKey( spep_2 - n + 70, 1, 2.76, 2.76 );
setScaleKey( spep_2 - n + 71, 1, 2.76, 2.76 );
setScaleKey( spep_2 - n + 72, 1, 2.77, 2.77 );
setScaleKey( spep_2 - n + 73, 1, 2.77, 2.77 );
setScaleKey( spep_2 - n + 74, 1, 2.78, 2.78 );
setScaleKey( spep_2 - n + 75, 1, 2.78, 2.78 );
setScaleKey( spep_2 - n + 76, 1, 2.8, 2.8 );
setScaleKey( spep_2 - n + 77, 1, 2.8, 2.8 );
setScaleKey( spep_2 - n + 78, 1, 2.81, 2.81 );
setScaleKey( spep_2 - n + 79, 1, 2.81, 2.81 );
setScaleKey( spep_2 - n + 80, 1, 2.83, 2.83 );
setScaleKey( spep_2 - n + 81, 1, 2.83, 2.83 );
setScaleKey( spep_2 - n + 82, 1, 2.84, 2.84 );
setScaleKey( spep_2 - n + 83, 1, 2.84, 2.84 );
setScaleKey( spep_2 - n + 84, 1, 2.86, 2.86 );
setScaleKey( spep_2 - n + 85, 1, 2.86, 2.86 );
setScaleKey( spep_2 - n + 86, 1, 2.87, 2.87 );
setScaleKey( spep_2 - n + 87, 1, 2.87, 2.87 );
setScaleKey( spep_2 - n + 88, 1, 2.89, 2.89 );
setScaleKey( spep_2 - n + 89, 1, 2.89, 2.89 );
setScaleKey( spep_2 - n + 90, 1, 2.9, 2.9 );
setScaleKey( spep_2 - n + 91, 1, 2.9, 2.9 );
setScaleKey( spep_2 - n + 92, 1, 2.91, 2.91 );
setScaleKey( spep_2 - n + 93, 1, 2.91, 2.91 );
setScaleKey( spep_2 - n + 94, 1, 2.93, 2.93 );
setScaleKey( spep_2 - n + 95, 1, 2.93, 2.93 );
setScaleKey( spep_2 - n + 96, 1, 2.94, 2.94 );
setScaleKey( spep_2 - n + 97, 1, 2.94, 2.94 );
setScaleKey( spep_2 - n + 98, 1, 2.96, 2.96 );
setScaleKey( spep_2 - n + 99, 1, 2.96, 2.96 );
setScaleKey( spep_2 - n + 100, 1, 2.97, 2.97 );
setScaleKey( spep_2 - n + 101, 1, 2.97, 2.97 );
setScaleKey( spep_2 - n + 102, 1, 2.99, 2.99 );
setScaleKey( spep_2 - n + 103, 1, 2.99, 2.99 );
setScaleKey( spep_2 - n + 104, 1, 3, 3 );
setScaleKey( spep_2 - n + 105, 1, 3, 3 );
setScaleKey( spep_2 - n + 106, 1, 3.02, 3.02 );
setScaleKey( spep_2 - n + 107, 1, 3.02, 3.02 );
setScaleKey( spep_2 - n + 108, 1, 3.03, 3.03 );
setScaleKey( spep_2 - n + 109, 1, 3.03, 3.03 );
setScaleKey( spep_2 - n + 110, 1, 3.04, 3.04 );
setScaleKey( spep_2 - n + 111, 1, 3.04, 3.04 );
setScaleKey( spep_2 - n + 112, 1, 3.06, 3.06 );
setScaleKey( spep_2 - n + 113, 1, 3.06, 3.06 );
setScaleKey( spep_2 - n + 114, 1, 3.07, 3.07 );
setScaleKey( spep_2 - n + 115, 1, 3.07, 3.07 );
setScaleKey( spep_2 - n + 116, 1, 3.09, 3.09 );
setScaleKey( spep_2 - n + 117, 1, 3.09, 3.09 );
setScaleKey( spep_2 - n + 118, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 118, 1, 3.1, 3.1 );

setRotateKey( spep_2 + 0, 1, 41.1 );
setRotateKey( spep_2 - n + 2, 1, 43.1 );
setRotateKey( spep_2 - n + 3, 1, 43.1 );
setRotateKey( spep_2 - n + 4, 1, 40.4 );
setRotateKey( spep_2 - n + 5, 1, 40.4 );
setRotateKey( spep_2 - n + 6, 1, 41.8 );
setRotateKey( spep_2 - n + 7, 1, 41.8 );
setRotateKey( spep_2 - n + 8, 1, 40.3 );
setRotateKey( spep_2 - n + 9, 1, 40.3 );
setRotateKey( spep_2 - n + 10, 1, 41.1 );
setRotateKey( spep_2 - n + 11, 1, 41.1 );
setRotateKey( spep_2 - n + 12, 1, 43.1 );
setRotateKey( spep_2 - n + 13, 1, 43.1 );
setRotateKey( spep_2 - n + 14, 1, 40.4 );
setRotateKey( spep_2 - n + 15, 1, 40.4 );
setRotateKey( spep_2 - n + 16, 1, 41.8 );
setRotateKey( spep_2 - n + 17, 1, 41.8 );
setRotateKey( spep_2 - n + 18, 1, 40.3 );
setRotateKey( spep_2 - n + 19, 1, 40.3 );
setRotateKey( spep_2 - n + 20, 1, 41.1 );
setRotateKey( spep_2 - n + 21, 1, 41.1 );
setRotateKey( spep_2 - n + 22, 1, 43.1 );
setRotateKey( spep_2 - n + 23, 1, 43.1 );
setRotateKey( spep_2 - n + 24, 1, 40.4 );
setRotateKey( spep_2 - n + 25, 1, 40.4 );
setRotateKey( spep_2 - n + 26, 1, 41.8 );
setRotateKey( spep_2 - n + 27, 1, 41.8 );
setRotateKey( spep_2 - n + 28, 1, 40.3 );
setRotateKey( spep_2 - n + 29, 1, 40.3 );
setRotateKey( spep_2 - n + 30, 1, 41.1 );
setRotateKey( spep_2 - n + 31, 1, 41.1 );
setRotateKey( spep_2 - n + 32, 1, 43.1 );
setRotateKey( spep_2 - n + 33, 1, 43.1 );
setRotateKey( spep_2 - n + 34, 1, 40.4 );
setRotateKey( spep_2 - n + 35, 1, 40.4 );
setRotateKey( spep_2 - n + 36, 1, 41.8 );
setRotateKey( spep_2 - n + 37, 1, 41.8 );
setRotateKey( spep_2 - n + 38, 1, 40.3 );
setRotateKey( spep_2 - n + 39, 1, 40.3 );
setRotateKey( spep_2 - n + 40, 1, 41.1 );
setRotateKey( spep_2 - n + 41, 1, 41.1 );
setRotateKey( spep_2 - n + 42, 1, 43.1 );
setRotateKey( spep_2 - n + 43, 1, 43.1 );
setRotateKey( spep_2 - n + 44, 1, 40.4 );
setRotateKey( spep_2 - n + 45, 1, 40.4 );
setRotateKey( spep_2 - n + 46, 1, 41.8 );
setRotateKey( spep_2 - n + 47, 1, 41.8 );
setRotateKey( spep_2 - n + 48, 1, 40.3 );
setRotateKey( spep_2 - n + 49, 1, 40.3 );
setRotateKey( spep_2 - n + 50, 1, 41.1 );
setRotateKey( spep_2 - n + 51, 1, 41.1 );
setRotateKey( spep_2 - n + 52, 1, 43.1 );
setRotateKey( spep_2 - n + 53, 1, 43.1 );
setRotateKey( spep_2 - n + 54, 1, 40.4 );
setRotateKey( spep_2 - n + 55, 1, 40.4 );
setRotateKey( spep_2 - n + 56, 1, 41.8 );
setRotateKey( spep_2 - n + 57, 1, 41.8 );
setRotateKey( spep_2 - n + 58, 1, 40.3 );
setRotateKey( spep_2 - n + 59, 1, 40.3 );
setRotateKey( spep_2 - n + 60, 1, 41.1 );
setRotateKey( spep_2 - n + 61, 1, 41.1 );
setRotateKey( spep_2 - n + 62, 1, 43.1 );
setRotateKey( spep_2 - n + 63, 1, 43.1 );
setRotateKey( spep_2 - n + 64, 1, 40.4 );
setRotateKey( spep_2 - n + 65, 1, 40.4 );
setRotateKey( spep_2 - n + 66, 1, 41.8 );
setRotateKey( spep_2 - n + 67, 1, 41.8 );
setRotateKey( spep_2 - n + 68, 1, 40.3 );
setRotateKey( spep_2 - n + 69, 1, 40.3 );
setRotateKey( spep_2 - n + 70, 1, 41.1 );
setRotateKey( spep_2 - n + 71, 1, 41.1 );
setRotateKey( spep_2 - n + 72, 1, 43.1 );
setRotateKey( spep_2 - n + 73, 1, 43.1 );
setRotateKey( spep_2 - n + 74, 1, 40.4 );
setRotateKey( spep_2 - n + 75, 1, 40.4 );
setRotateKey( spep_2 - n + 76, 1, 41.8 );
setRotateKey( spep_2 - n + 77, 1, 41.8 );
setRotateKey( spep_2 - n + 78, 1, 40.3 );
setRotateKey( spep_2 - n + 79, 1, 40.3 );
setRotateKey( spep_2 - n + 80, 1, 41.1 );
setRotateKey( spep_2 - n + 81, 1, 41.1 );
setRotateKey( spep_2 - n + 82, 1, 43.1 );
setRotateKey( spep_2 - n + 83, 1, 43.1 );
setRotateKey( spep_2 - n + 84, 1, 40.4 );
setRotateKey( spep_2 - n + 85, 1, 40.4 );
setRotateKey( spep_2 - n + 86, 1, 41.8 );
setRotateKey( spep_2 - n + 87, 1, 41.8 );
setRotateKey( spep_2 - n + 88, 1, 40.3 );
setRotateKey( spep_2 - n + 89, 1, 40.3 );
setRotateKey( spep_2 - n + 90, 1, 41.1 );
setRotateKey( spep_2 - n + 91, 1, 41.1 );
setRotateKey( spep_2 - n + 92, 1, 43.1 );
setRotateKey( spep_2 - n + 93, 1, 43.1 );
setRotateKey( spep_2 - n + 94, 1, 40.4 );
setRotateKey( spep_2 - n + 95, 1, 40.4 );
setRotateKey( spep_2 - n + 96, 1, 41.8 );
setRotateKey( spep_2 - n + 97, 1, 41.8 );
setRotateKey( spep_2 - n + 98, 1, 40.3 );
setRotateKey( spep_2 - n + 99, 1, 40.3 );
setRotateKey( spep_2 - n + 100, 1, 41.1 );
setRotateKey( spep_2 - n + 101, 1, 41.1 );
setRotateKey( spep_2 - n + 102, 1, 43.1 );
setRotateKey( spep_2 - n + 103, 1, 43.1 );
setRotateKey( spep_2 - n + 104, 1, 40.4 );
setRotateKey( spep_2 - n + 105, 1, 40.4 );
setRotateKey( spep_2 - n + 106, 1, 41.8 );
setRotateKey( spep_2 - n + 107, 1, 41.8 );
setRotateKey( spep_2 - n + 108, 1, 40.3 );
setRotateKey( spep_2 - n + 109, 1, 40.3 );
setRotateKey( spep_2 - n + 110, 1, 41.1 );
setRotateKey( spep_2 - n + 111, 1, 41.1 );
setRotateKey( spep_2 - n + 112, 1, 43.1 );
setRotateKey( spep_2 - n + 113, 1, 43.1 );
setRotateKey( spep_2 - n + 114, 1, 40.4 );
setRotateKey( spep_2 - n + 115, 1, 40.4 );
setRotateKey( spep_2 - n + 116, 1, 41.8 );
setRotateKey( spep_2 - n + 117, 1, 41.8 );
setRotateKey( spep_2 - n + 118, 1, 40.3 );
setRotateKey( spep_2 + 118, 1, 40.3 );
-- ** 音 ** --
--マシンガン撃つ
SE016 = playSeVer2( spep_2 - 4, 1149, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 - 4, SE016, 136 );
SE017 = playSeVer2( spep_2 - 4, 1403, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 8 );
endPhase( spep_2 + 118 - 4 );

end
