-- 1026720: UR_ドクター・ウイロー_ギガンティックボマー
-- sp_effect_b1_00254

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
SP_001 = 161879;  -- 開始、奥から特攻 ef_001
SP_001b = 161880;  -- 開始、奥から特攻 ef_001b
SP_002 = 161881;  -- フィニッシュブロー ef_002
SP_002b = 161882;  -- フィニッシュブロー ef_002b

-- 敵側
SP_002r = 161883;  -- フィニッシュブロー ef_002r
SP_002br = 161884;  -- フィニッシュブロー ef_002br

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
-- 開始、奥から特攻 ef_001 (104F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 104, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 104, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 104, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 104, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 104, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 104, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + 104, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + 104, entry_SP_001b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 104 + 2, 0, 0, 0, 0, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 104 + 10, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--エネルギー溜める
SE002 = playSeVer2( spep_0 + 6, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 40, 1275, "",spep_0 + 102, 14, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE004, 136 );
setStartTimeMs( SE004,  350 );
SE005 = playSeVer2( spep_0 + 38, 1243, "",spep_0 + 102, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 38, 1056, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 38, 1274, "",spep_0 + 102, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 38, SE007, 155 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE0000, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--向かっていく
SE008 = playSeVer2( spep_0 + 80, 1258, "",spep_0 + 104 + 14, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 88, 1182, "",spep_0 + 104 + 14, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 88, 9, "",spep_0 + 104 + 14, 0, 10, -1);

--飛行音
SE011 = playSeVer2( spep_0 + 88, 1019, "",spep_0 + 104 + 18, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 104;


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
-- フィニッシュブロー ef_002 (192F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 192, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 192, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 192, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 192, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 192, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 192, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 192, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 192, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 192, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 - n + 24, 1, 107 );

setMoveKey( spep_2 + 0, 1, 97.9, 63.2 , 0 );
setMoveKey( spep_2 - n + 2, 1, 91.3, 55.6 , 0 );
setMoveKey( spep_2 - n + 3, 1, 91.3, 55.6 , 0 );
setMoveKey( spep_2 - n + 4, 1, 84.7, 47.9 , 0 );
setMoveKey( spep_2 - n + 5, 1, 84.7, 47.9 , 0 );
setMoveKey( spep_2 - n + 6, 1, 78, 40.3 , 0 );
setMoveKey( spep_2 - n + 7, 1, 78, 40.3 , 0 );
setMoveKey( spep_2 - n + 8, 1, 71.4, 32.6 , 0 );
setMoveKey( spep_2 - n + 9, 1, 71.4, 32.6 , 0 );
setMoveKey( spep_2 - n + 10, 1, 64.8, 25 , 0 );
setMoveKey( spep_2 - n + 11, 1, 64.8, 25 , 0 );
setMoveKey( spep_2 - n + 12, 1, 58.2, 17.3 , 0 );
setMoveKey( spep_2 - n + 13, 1, 58.2, 17.3 , 0 );
setMoveKey( spep_2 - n + 14, 1, 51.6, 9.6 , 0 );
setMoveKey( spep_2 - n + 15, 1, 51.6, 9.6 , 0 );
setMoveKey( spep_2 - n + 16, 1, 44.9, 2 , 0 );
setMoveKey( spep_2 - n + 17, 1, 44.9, 2 , 0 );
setMoveKey( spep_2 - n + 18, 1, 38.3, -5.7 , 0 );
setMoveKey( spep_2 - n + 19, 1, 38.3, -5.7 , 0 );
setMoveKey( spep_2 - n + 20, 1, 31.7, -13.4 , 0 );
setMoveKey( spep_2 - n + 22, 1, 31.7, -13.4 , 0 );
setMoveKey( spep_2 - n + 23, 1, 25, -21 , 0 );
setMoveKey( spep_2 - n + 23, 1, 25, -21 , 0 );
setMoveKey( spep_2 - n + 24, 1, 73.9, 65.1 , 0 );
setMoveKey( spep_2 - n + 25, 1, 73.9, 65.1 , 0 );
setMoveKey( spep_2 - n + 26, 1, 44.4, 50.2 , 0 );
setMoveKey( spep_2 - n + 27, 1, 44.4, 50.2 , 0 );
setMoveKey( spep_2 - n + 28, 1, 50.6, 66.8 , 0 );
setMoveKey( spep_2 - n + 29, 1, 50.6, 66.8 , 0 );
setMoveKey( spep_2 - n + 30, 1, 69.4, 45.7 , 0 );
setMoveKey( spep_2 - n + 31, 1, 69.4, 45.7 , 0 );
setMoveKey( spep_2 - n + 32, 1, 73.5, 64.4 , 0 );
setMoveKey( spep_2 - n + 33, 1, 73.5, 64.4 , 0 );
setMoveKey( spep_2 - n + 34, 1, 43.9, 49.5 , 0 );
setMoveKey( spep_2 - n + 35, 1, 43.9, 49.5 , 0 );
setMoveKey( spep_2 - n + 36, 1, 50.1, 66.1 , 0 );
setMoveKey( spep_2 - n + 37, 1, 50.1, 66.1 , 0 );
setMoveKey( spep_2 - n + 38, 1, 68.9, 44.9 , 0 );
setMoveKey( spep_2 - n + 39, 1, 68.9, 44.9 , 0 );
setMoveKey( spep_2 - n + 40, 1, 72.9, 63.6 , 0 );
setMoveKey( spep_2 - n + 41, 1, 72.9, 63.6 , 0 );
setMoveKey( spep_2 - n + 42, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_2 - n + 43, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_2 - n + 44, 1, 49.5, 65.3 , 0 );
setMoveKey( spep_2 - n + 45, 1, 49.5, 65.3 , 0 );
setMoveKey( spep_2 - n + 46, 1, 68.2, 44 , 0 );
setMoveKey( spep_2 - n + 47, 1, 68.2, 44 , 0 );
setMoveKey( spep_2 - n + 48, 1, 72.3, 62.7 , 0 );
setMoveKey( spep_2 - n + 49, 1, 72.3, 62.7 , 0 );
setMoveKey( spep_2 - n + 50, 1, 42.7, 47.7 , 0 );
setMoveKey( spep_2 - n + 51, 1, 42.7, 47.7 , 0 );
setMoveKey( spep_2 - n + 52, 1, 48.8, 64.2 , 0 );
setMoveKey( spep_2 - n + 53, 1, 48.8, 64.2 , 0 );
setMoveKey( spep_2 - n + 54, 1, 67.5, 43 , 0 );
setMoveKey( spep_2 - n + 55, 1, 67.5, 43 , 0 );
setMoveKey( spep_2 - n + 56, 1, 71.5, 61.6 , 0 );
setMoveKey( spep_2 - n + 57, 1, 71.5, 61.6 , 0 );
setMoveKey( spep_2 - n + 58, 1, 41.9, 46.6 , 0 );
setMoveKey( spep_2 - n + 59, 1, 41.9, 46.6 , 0 );
setMoveKey( spep_2 - n + 60, 1, 48, 63 , 0 );
setMoveKey( spep_2 - n + 61, 1, 48, 63 , 0 );
setMoveKey( spep_2 - n + 62, 1, 75.2, 57 , 0 );
setMoveKey( spep_2 - n + 63, 1, 75.2, 57 , 0 );
setMoveKey( spep_2 - n + 64, 1, 91.9, 98.5 , 0 );
setMoveKey( spep_2 - n + 65, 1, 91.9, 98.5 , 0 );
setMoveKey( spep_2 - n + 66, 1, 80.5, 116.5 , 0 );
setMoveKey( spep_2 - n + 67, 1, 80.5, 116.5 , 0 );
setMoveKey( spep_2 - n + 68, 1, 111.3, 177.7 , 0 );
setMoveKey( spep_2 - n + 69, 1, 111.3, 177.7 , 0 );
setMoveKey( spep_2 - n + 70, 1, 160.3, 211.5 , 0 );
setMoveKey( spep_2 - n + 71, 1, 160.3, 211.5 , 0 );
setMoveKey( spep_2 - n + 72, 1, 196.7, 288.8 , 0 );
setMoveKey( spep_2 - n + 73, 1, 196.7, 288.8 , 0 );
setMoveKey( spep_2 - n + 74, 1, 198.1, 329.4 , 0 );
setMoveKey( spep_2 - n + 75, 1, 198.1, 329.4 , 0 );
setMoveKey( spep_2 - n + 76, 1, 204.4, 346.2 , 0 );
setMoveKey( spep_2 - n + 77, 1, 204.4, 346.2 , 0 );
setMoveKey( spep_2 - n + 78, 1, 223.3, 325.2 , 0 );
setMoveKey( spep_2 - n + 79, 1, 223.3, 325.2 , 0 );
setMoveKey( spep_2 - n + 80, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 81, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 82, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 83, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 84, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 85, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 86, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 87, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 88, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 89, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 90, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 91, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 92, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 93, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 94, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 95, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 96, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 97, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 98, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 99, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 100, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 101, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 102, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 103, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 104, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 105, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 106, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 107, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 108, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 109, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 110, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 111, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 112, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 113, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 114, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 115, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 116, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 117, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 118, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 119, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 120, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 121, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 122, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 123, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 124, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 125, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 126, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 127, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 128, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 129, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 130, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 131, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 132, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 133, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 134, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 135, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 136, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 137, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 138, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 139, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 140, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 141, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 142, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 143, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 144, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 145, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 146, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 147, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 148, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 149, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 150, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 151, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 152, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 153, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 154, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 155, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 156, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 157, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 158, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 159, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 160, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 161, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 162, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 163, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 164, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 165, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 166, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 167, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 168, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 169, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 170, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 171, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 172, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 173, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 174, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 175, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 176, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 177, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 178, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 179, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 180, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 181, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 182, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 183, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 184, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 185, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 186, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 187, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 188, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 189, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 190, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 191, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 192, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 + 192, 1, 217, 344.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.42, 2.42 );
setScaleKey( spep_2 - n + 2, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 3, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 4, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 5, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 6, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 7, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 8, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 9, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 10, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 11, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 12, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 13, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 14, 1, 1.65, 1.65 );
setScaleKey( spep_2 - n + 15, 1, 1.65, 1.65 );
setScaleKey( spep_2 - n + 16, 1, 1.54, 1.54 );
setScaleKey( spep_2 - n + 17, 1, 1.54, 1.54 );
setScaleKey( spep_2 - n + 18, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 19, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 20, 1, 1.32, 1.32 );
setScaleKey( spep_2 - n + 22, 1, 1.32, 1.32 );
setScaleKey( spep_2 - n + 23, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 23, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 24, 1, 0.53, 0.53 );
setScaleKey( spep_2 - n + 25, 1, 0.53, 0.53 );
setScaleKey( spep_2 - n + 26, 1, 0.54, 0.54 );
setScaleKey( spep_2 - n + 41, 1, 0.54, 0.54 );
setScaleKey( spep_2 - n + 42, 1, 0.55, 0.55 );
setScaleKey( spep_2 - n + 51, 1, 0.55, 0.55 );
setScaleKey( spep_2 - n + 52, 1, 0.56, 0.56 );
setScaleKey( spep_2 - n + 60, 1, 0.56, 0.56 );
setScaleKey( spep_2 - n + 61, 1, 0.56, 0.56 );
setScaleKey( spep_2 - n + 62, 1, 0.62, 0.62 );
setScaleKey( spep_2 - n + 63, 1, 0.62, 0.62 );
setScaleKey( spep_2 - n + 64, 1, 0.7, 0.7 );
setScaleKey( spep_2 - n + 65, 1, 0.7, 0.7 );
setScaleKey( spep_2 - n + 66, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 67, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 68, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 69, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 70, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 71, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 72, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 73, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 74, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 192, 1, 1.55, 1.55 );

setRotateKey( spep_2 + 0, 1, -3.2 );
setRotateKey( spep_2 - n + 2, 1, -3.7 );
setRotateKey( spep_2 - n + 3, 1, -3.7 );
setRotateKey( spep_2 - n + 4, 1, -4.2 );
setRotateKey( spep_2 - n + 5, 1, -4.2 );
setRotateKey( spep_2 - n + 6, 1, -4.8 );
setRotateKey( spep_2 - n + 7, 1, -4.8 );
setRotateKey( spep_2 - n + 8, 1, -5.3 );
setRotateKey( spep_2 - n + 9, 1, -5.3 );
setRotateKey( spep_2 - n + 10, 1, -5.8 );
setRotateKey( spep_2 - n + 11, 1, -5.8 );
setRotateKey( spep_2 - n + 12, 1, -6.3 );
setRotateKey( spep_2 - n + 13, 1, -6.3 );
setRotateKey( spep_2 - n + 14, 1, -6.9 );
setRotateKey( spep_2 - n + 15, 1, -6.9 );
setRotateKey( spep_2 - n + 16, 1, -7.4 );
setRotateKey( spep_2 - n + 17, 1, -7.4 );
setRotateKey( spep_2 - n + 18, 1, -7.9 );
setRotateKey( spep_2 - n + 19, 1, -7.9 );
setRotateKey( spep_2 - n + 20, 1, -8.4 );
setRotateKey( spep_2 - n + 22, 1, -8.4 );
setRotateKey( spep_2 - n + 23, 1, -8.9 );
setRotateKey( spep_2 - n + 23, 1, -8.9 );
setRotateKey( spep_2 - n + 24, 1, -44 );
setRotateKey( spep_2 - n + 25, 1, -44 );
setRotateKey( spep_2 - n + 26, 1, -43.9 );
setRotateKey( spep_2 - n + 27, 1, -43.9 );
setRotateKey( spep_2 - n + 28, 1, -43.7 );
setRotateKey( spep_2 - n + 29, 1, -43.7 );
setRotateKey( spep_2 - n + 30, 1, -43.6 );
setRotateKey( spep_2 - n + 31, 1, -43.6 );
setRotateKey( spep_2 - n + 32, 1, -43.4 );
setRotateKey( spep_2 - n + 33, 1, -43.4 );
setRotateKey( spep_2 - n + 34, 1, -43.2 );
setRotateKey( spep_2 - n + 35, 1, -43.2 );
setRotateKey( spep_2 - n + 36, 1, -43 );
setRotateKey( spep_2 - n + 37, 1, -43 );
setRotateKey( spep_2 - n + 38, 1, -42.8 );
setRotateKey( spep_2 - n + 39, 1, -42.8 );
setRotateKey( spep_2 - n + 40, 1, -42.6 );
setRotateKey( spep_2 - n + 41, 1, -42.6 );
setRotateKey( spep_2 - n + 42, 1, -42.4 );
setRotateKey( spep_2 - n + 43, 1, -42.4 );
setRotateKey( spep_2 - n + 44, 1, -42.2 );
setRotateKey( spep_2 - n + 45, 1, -42.2 );
setRotateKey( spep_2 - n + 46, 1, -41.9 );
setRotateKey( spep_2 - n + 47, 1, -41.9 );
setRotateKey( spep_2 - n + 48, 1, -41.7 );
setRotateKey( spep_2 - n + 49, 1, -41.7 );
setRotateKey( spep_2 - n + 50, 1, -41.4 );
setRotateKey( spep_2 - n + 51, 1, -41.4 );
setRotateKey( spep_2 - n + 52, 1, -41.2 );
setRotateKey( spep_2 - n + 53, 1, -41.2 );
setRotateKey( spep_2 - n + 54, 1, -40.9 );
setRotateKey( spep_2 - n + 55, 1, -40.9 );
setRotateKey( spep_2 - n + 56, 1, -40.6 );
setRotateKey( spep_2 - n + 57, 1, -40.6 );
setRotateKey( spep_2 - n + 58, 1, -40.3 );
setRotateKey( spep_2 - n + 59, 1, -40.3 );
setRotateKey( spep_2 - n + 60, 1, -40 );
setRotateKey( spep_2 + 192, 1, -40 );

-- ** 音 ** --
--向かっていく
SE013 = playSeVer2( spep_1 + 84, 1258, "",spep_2 + 38, 0, 20, -1);
SE014 = playSeVer2( spep_1 + 84, 9, "",spep_2 + 38, 0, 20, -1);

--飛行音
SE015 = playSeVer2( spep_1 + 90, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 60, 1019, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 124, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE016 = playSeVer2( spep_2 + 18, 1123, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 20, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 20, 1067, "", 0, 0, 0, -1);

--炎に包まれて飛んでいく
SE019 = playSeVer2( spep_2 + 52, 1258, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE019, 79 );
setTimeStretch( SE019, 1.11, 30, 4 );
SE021 = playSeVer2( spep_2 + 72, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE021, 145 );
SE022 = playSeVer2( spep_2 + 72, 1314, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 192 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 90 );
endPhase( spep_2 + 192 - 2 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始、奥から特攻 ef_001 (104F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 104, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + 104, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 104, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 104, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 104, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 104, entry_SP_001b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + 104, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + 104, entry_SP_001b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 104 + 2, 0, 0, 0, 0, 255 );

spep_x = spep_0 + 0;
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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 104 + 10, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--エネルギー溜める
SE002 = playSeVer2( spep_0 + 6, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 40, 1275, "",spep_0 + 102, 14, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE004, 136 );
setStartTimeMs( SE004,  350 );
SE005 = playSeVer2( spep_0 + 38, 1243, "",spep_0 + 102, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 38, 1056, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 38, 1274, "",spep_0 + 102, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 38, SE007, 155 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE0000, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--向かっていく
SE008 = playSeVer2( spep_0 + 80, 1258, "",spep_0 + 104 + 14, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 88, 1182, "",spep_0 + 104 + 14, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 88, 9, "",spep_0 + 104 + 14, 0, 10, -1);

--飛行音
SE011 = playSeVer2( spep_0 + 88, 1019, "",spep_0 + 104 + 18, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 104;


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
-- フィニッシュブロー ef_002 (192F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 192, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 192, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 192, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 192, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 192, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 192, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 192, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 192, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 192, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 - n + 24, 1, 107 );

setMoveKey( spep_2 + 0, 1, 97.9, 63.2 , 0 );
setMoveKey( spep_2 - n + 2, 1, 91.3, 55.6 , 0 );
setMoveKey( spep_2 - n + 3, 1, 91.3, 55.6 , 0 );
setMoveKey( spep_2 - n + 4, 1, 84.7, 47.9 , 0 );
setMoveKey( spep_2 - n + 5, 1, 84.7, 47.9 , 0 );
setMoveKey( spep_2 - n + 6, 1, 78, 40.3 , 0 );
setMoveKey( spep_2 - n + 7, 1, 78, 40.3 , 0 );
setMoveKey( spep_2 - n + 8, 1, 71.4, 32.6 , 0 );
setMoveKey( spep_2 - n + 9, 1, 71.4, 32.6 , 0 );
setMoveKey( spep_2 - n + 10, 1, 64.8, 25 , 0 );
setMoveKey( spep_2 - n + 11, 1, 64.8, 25 , 0 );
setMoveKey( spep_2 - n + 12, 1, 58.2, 17.3 , 0 );
setMoveKey( spep_2 - n + 13, 1, 58.2, 17.3 , 0 );
setMoveKey( spep_2 - n + 14, 1, 51.6, 9.6 , 0 );
setMoveKey( spep_2 - n + 15, 1, 51.6, 9.6 , 0 );
setMoveKey( spep_2 - n + 16, 1, 44.9, 2 , 0 );
setMoveKey( spep_2 - n + 17, 1, 44.9, 2 , 0 );
setMoveKey( spep_2 - n + 18, 1, 38.3, -5.7 , 0 );
setMoveKey( spep_2 - n + 19, 1, 38.3, -5.7 , 0 );
setMoveKey( spep_2 - n + 20, 1, 31.7, -13.4 , 0 );
setMoveKey( spep_2 - n + 22, 1, 31.7, -13.4 , 0 );
setMoveKey( spep_2 - n + 23, 1, 25, -21 , 0 );
setMoveKey( spep_2 - n + 23, 1, 25, -21 , 0 );
setMoveKey( spep_2 - n + 24, 1, 73.9, 65.1 , 0 );
setMoveKey( spep_2 - n + 25, 1, 73.9, 65.1 , 0 );
setMoveKey( spep_2 - n + 26, 1, 44.4, 50.2 , 0 );
setMoveKey( spep_2 - n + 27, 1, 44.4, 50.2 , 0 );
setMoveKey( spep_2 - n + 28, 1, 50.6, 66.8 , 0 );
setMoveKey( spep_2 - n + 29, 1, 50.6, 66.8 , 0 );
setMoveKey( spep_2 - n + 30, 1, 69.4, 45.7 , 0 );
setMoveKey( spep_2 - n + 31, 1, 69.4, 45.7 , 0 );
setMoveKey( spep_2 - n + 32, 1, 73.5, 64.4 , 0 );
setMoveKey( spep_2 - n + 33, 1, 73.5, 64.4 , 0 );
setMoveKey( spep_2 - n + 34, 1, 43.9, 49.5 , 0 );
setMoveKey( spep_2 - n + 35, 1, 43.9, 49.5 , 0 );
setMoveKey( spep_2 - n + 36, 1, 50.1, 66.1 , 0 );
setMoveKey( spep_2 - n + 37, 1, 50.1, 66.1 , 0 );
setMoveKey( spep_2 - n + 38, 1, 68.9, 44.9 , 0 );
setMoveKey( spep_2 - n + 39, 1, 68.9, 44.9 , 0 );
setMoveKey( spep_2 - n + 40, 1, 72.9, 63.6 , 0 );
setMoveKey( spep_2 - n + 41, 1, 72.9, 63.6 , 0 );
setMoveKey( spep_2 - n + 42, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_2 - n + 43, 1, 43.4, 48.7 , 0 );
setMoveKey( spep_2 - n + 44, 1, 49.5, 65.3 , 0 );
setMoveKey( spep_2 - n + 45, 1, 49.5, 65.3 , 0 );
setMoveKey( spep_2 - n + 46, 1, 68.2, 44 , 0 );
setMoveKey( spep_2 - n + 47, 1, 68.2, 44 , 0 );
setMoveKey( spep_2 - n + 48, 1, 72.3, 62.7 , 0 );
setMoveKey( spep_2 - n + 49, 1, 72.3, 62.7 , 0 );
setMoveKey( spep_2 - n + 50, 1, 42.7, 47.7 , 0 );
setMoveKey( spep_2 - n + 51, 1, 42.7, 47.7 , 0 );
setMoveKey( spep_2 - n + 52, 1, 48.8, 64.2 , 0 );
setMoveKey( spep_2 - n + 53, 1, 48.8, 64.2 , 0 );
setMoveKey( spep_2 - n + 54, 1, 67.5, 43 , 0 );
setMoveKey( spep_2 - n + 55, 1, 67.5, 43 , 0 );
setMoveKey( spep_2 - n + 56, 1, 71.5, 61.6 , 0 );
setMoveKey( spep_2 - n + 57, 1, 71.5, 61.6 , 0 );
setMoveKey( spep_2 - n + 58, 1, 41.9, 46.6 , 0 );
setMoveKey( spep_2 - n + 59, 1, 41.9, 46.6 , 0 );
setMoveKey( spep_2 - n + 60, 1, 48, 63 , 0 );
setMoveKey( spep_2 - n + 61, 1, 48, 63 , 0 );
setMoveKey( spep_2 - n + 62, 1, 75.2, 57 , 0 );
setMoveKey( spep_2 - n + 63, 1, 75.2, 57 , 0 );
setMoveKey( spep_2 - n + 64, 1, 91.9, 98.5 , 0 );
setMoveKey( spep_2 - n + 65, 1, 91.9, 98.5 , 0 );
setMoveKey( spep_2 - n + 66, 1, 80.5, 116.5 , 0 );
setMoveKey( spep_2 - n + 67, 1, 80.5, 116.5 , 0 );
setMoveKey( spep_2 - n + 68, 1, 111.3, 177.7 , 0 );
setMoveKey( spep_2 - n + 69, 1, 111.3, 177.7 , 0 );
setMoveKey( spep_2 - n + 70, 1, 160.3, 211.5 , 0 );
setMoveKey( spep_2 - n + 71, 1, 160.3, 211.5 , 0 );
setMoveKey( spep_2 - n + 72, 1, 196.7, 288.8 , 0 );
setMoveKey( spep_2 - n + 73, 1, 196.7, 288.8 , 0 );
setMoveKey( spep_2 - n + 74, 1, 198.1, 329.4 , 0 );
setMoveKey( spep_2 - n + 75, 1, 198.1, 329.4 , 0 );
setMoveKey( spep_2 - n + 76, 1, 204.4, 346.2 , 0 );
setMoveKey( spep_2 - n + 77, 1, 204.4, 346.2 , 0 );
setMoveKey( spep_2 - n + 78, 1, 223.3, 325.2 , 0 );
setMoveKey( spep_2 - n + 79, 1, 223.3, 325.2 , 0 );
setMoveKey( spep_2 - n + 80, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 81, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 82, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 83, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 84, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 85, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 86, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 87, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 88, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 89, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 90, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 91, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 92, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 93, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 94, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 95, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 96, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 97, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 98, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 99, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 100, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 101, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 102, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 103, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 104, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 105, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 106, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 107, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 108, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 109, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 110, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 111, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 112, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 113, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 114, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 115, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 116, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 117, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 118, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 119, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 120, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 121, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 122, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 123, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 124, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 125, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 126, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 127, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 128, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 129, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 130, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 131, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 132, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 133, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 134, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 135, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 136, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 137, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 138, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 139, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 140, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 141, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 142, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 143, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 144, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 145, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 146, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 147, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 148, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 149, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 150, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 151, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 152, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 153, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 154, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 155, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 156, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 157, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 158, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 159, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 160, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 161, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 162, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 163, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 164, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 165, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 166, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 167, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 168, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 169, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 170, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 171, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 172, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 173, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 174, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 175, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 176, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 177, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 178, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 179, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 180, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 181, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 182, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 183, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 184, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 185, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 - n + 186, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 187, 1, 206.5, 331.5 , 0 );
setMoveKey( spep_2 - n + 188, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 189, 1, 206.5, 344.1 , 0 );
setMoveKey( spep_2 - n + 190, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 191, 1, 223.3, 329.4 , 0 );
setMoveKey( spep_2 - n + 192, 1, 217, 344.1 , 0 );
setMoveKey( spep_2 + 192, 1, 217, 344.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.42, 2.42 );
setScaleKey( spep_2 - n + 2, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 3, 1, 2.31, 2.31 );
setScaleKey( spep_2 - n + 4, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 5, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 6, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 7, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 8, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 9, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 10, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 11, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 12, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 13, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 14, 1, 1.65, 1.65 );
setScaleKey( spep_2 - n + 15, 1, 1.65, 1.65 );
setScaleKey( spep_2 - n + 16, 1, 1.54, 1.54 );
setScaleKey( spep_2 - n + 17, 1, 1.54, 1.54 );
setScaleKey( spep_2 - n + 18, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 19, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 20, 1, 1.32, 1.32 );
setScaleKey( spep_2 - n + 22, 1, 1.32, 1.32 );
setScaleKey( spep_2 - n + 23, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 23, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 24, 1, 0.53, 0.53 );
setScaleKey( spep_2 - n + 25, 1, 0.53, 0.53 );
setScaleKey( spep_2 - n + 26, 1, 0.54, 0.54 );
setScaleKey( spep_2 - n + 41, 1, 0.54, 0.54 );
setScaleKey( spep_2 - n + 42, 1, 0.55, 0.55 );
setScaleKey( spep_2 - n + 51, 1, 0.55, 0.55 );
setScaleKey( spep_2 - n + 52, 1, 0.56, 0.56 );
setScaleKey( spep_2 - n + 60, 1, 0.56, 0.56 );
setScaleKey( spep_2 - n + 61, 1, 0.56, 0.56 );
setScaleKey( spep_2 - n + 62, 1, 0.62, 0.62 );
setScaleKey( spep_2 - n + 63, 1, 0.62, 0.62 );
setScaleKey( spep_2 - n + 64, 1, 0.7, 0.7 );
setScaleKey( spep_2 - n + 65, 1, 0.7, 0.7 );
setScaleKey( spep_2 - n + 66, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 67, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 68, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 69, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 70, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 71, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 72, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 73, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 74, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 192, 1, 1.55, 1.55 );

setRotateKey( spep_2 + 0, 1, -3.2 );
setRotateKey( spep_2 - n + 2, 1, -3.7 );
setRotateKey( spep_2 - n + 3, 1, -3.7 );
setRotateKey( spep_2 - n + 4, 1, -4.2 );
setRotateKey( spep_2 - n + 5, 1, -4.2 );
setRotateKey( spep_2 - n + 6, 1, -4.8 );
setRotateKey( spep_2 - n + 7, 1, -4.8 );
setRotateKey( spep_2 - n + 8, 1, -5.3 );
setRotateKey( spep_2 - n + 9, 1, -5.3 );
setRotateKey( spep_2 - n + 10, 1, -5.8 );
setRotateKey( spep_2 - n + 11, 1, -5.8 );
setRotateKey( spep_2 - n + 12, 1, -6.3 );
setRotateKey( spep_2 - n + 13, 1, -6.3 );
setRotateKey( spep_2 - n + 14, 1, -6.9 );
setRotateKey( spep_2 - n + 15, 1, -6.9 );
setRotateKey( spep_2 - n + 16, 1, -7.4 );
setRotateKey( spep_2 - n + 17, 1, -7.4 );
setRotateKey( spep_2 - n + 18, 1, -7.9 );
setRotateKey( spep_2 - n + 19, 1, -7.9 );
setRotateKey( spep_2 - n + 20, 1, -8.4 );
setRotateKey( spep_2 - n + 22, 1, -8.4 );
setRotateKey( spep_2 - n + 23, 1, -8.9 );
setRotateKey( spep_2 - n + 23, 1, -8.9 );
setRotateKey( spep_2 - n + 24, 1, -44 );
setRotateKey( spep_2 - n + 25, 1, -44 );
setRotateKey( spep_2 - n + 26, 1, -43.9 );
setRotateKey( spep_2 - n + 27, 1, -43.9 );
setRotateKey( spep_2 - n + 28, 1, -43.7 );
setRotateKey( spep_2 - n + 29, 1, -43.7 );
setRotateKey( spep_2 - n + 30, 1, -43.6 );
setRotateKey( spep_2 - n + 31, 1, -43.6 );
setRotateKey( spep_2 - n + 32, 1, -43.4 );
setRotateKey( spep_2 - n + 33, 1, -43.4 );
setRotateKey( spep_2 - n + 34, 1, -43.2 );
setRotateKey( spep_2 - n + 35, 1, -43.2 );
setRotateKey( spep_2 - n + 36, 1, -43 );
setRotateKey( spep_2 - n + 37, 1, -43 );
setRotateKey( spep_2 - n + 38, 1, -42.8 );
setRotateKey( spep_2 - n + 39, 1, -42.8 );
setRotateKey( spep_2 - n + 40, 1, -42.6 );
setRotateKey( spep_2 - n + 41, 1, -42.6 );
setRotateKey( spep_2 - n + 42, 1, -42.4 );
setRotateKey( spep_2 - n + 43, 1, -42.4 );
setRotateKey( spep_2 - n + 44, 1, -42.2 );
setRotateKey( spep_2 - n + 45, 1, -42.2 );
setRotateKey( spep_2 - n + 46, 1, -41.9 );
setRotateKey( spep_2 - n + 47, 1, -41.9 );
setRotateKey( spep_2 - n + 48, 1, -41.7 );
setRotateKey( spep_2 - n + 49, 1, -41.7 );
setRotateKey( spep_2 - n + 50, 1, -41.4 );
setRotateKey( spep_2 - n + 51, 1, -41.4 );
setRotateKey( spep_2 - n + 52, 1, -41.2 );
setRotateKey( spep_2 - n + 53, 1, -41.2 );
setRotateKey( spep_2 - n + 54, 1, -40.9 );
setRotateKey( spep_2 - n + 55, 1, -40.9 );
setRotateKey( spep_2 - n + 56, 1, -40.6 );
setRotateKey( spep_2 - n + 57, 1, -40.6 );
setRotateKey( spep_2 - n + 58, 1, -40.3 );
setRotateKey( spep_2 - n + 59, 1, -40.3 );
setRotateKey( spep_2 - n + 60, 1, -40 );
setRotateKey( spep_2 + 192, 1, -40 );

-- ** 音 ** --
--向かっていく
SE013 = playSeVer2( spep_1 + 84, 1258, "",spep_2 + 38, 0, 20, -1);
SE014 = playSeVer2( spep_1 + 84, 9, "",spep_2 + 38, 0, 20, -1);

--飛行音
SE015 = playSeVer2( spep_1 + 90, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 60, 1019, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 124, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE016 = playSeVer2( spep_2 + 18, 1123, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 20, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 20, 1067, "", 0, 0, 0, -1);

--炎に包まれて飛んでいく
SE019 = playSeVer2( spep_2 + 52, 1258, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE019, 79 );
setTimeStretch( SE019, 1.11, 30, 4 );
SE021 = playSeVer2( spep_2 + 72, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE021, 145 );
SE022 = playSeVer2( spep_2 + 72, 1314, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 192 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 90 );
endPhase( spep_2 + 192 - 2 );

end
