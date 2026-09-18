--1025440:SSRジャネンバ(改造)_羅刹光流弾_sp2454
--sp_effect_a3_00096

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
SP_01 = 160786;  --カットイン＆ジャネンバ振り向き    ef_001
SP_02 = 160787;  --ジャネンバ振り払い→ガラス散布    ef_002
SP_03 = 160788;  --ガラス敵着弾：敵より前    ef_003
SP_04 = 160789;  --ガラス敵着弾：敵より後ろ    ef_003_b

--敵側
SP_03r = 160790;  --ガラス敵着弾：敵より前_反転用   ef_003_r

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
-- カットイン＆ジャネンバ振り向き(194F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --カットイン＆ジャネンバ振り向き    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 192, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 192, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 192, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 192, first_f, 255 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 + 20, 906, 172, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20, shuchusen_1, 172, 20 );
setEffMoveKey( spep_0 + 20, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 192, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 20, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 192, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 20, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 192, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 20, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 192, shuchusen_1, 255 );

spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
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
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--集中線
SE002 = playSeVer2( spep_0 + 22, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 84 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--振り返る
SE004 = playSeVer2( spep_0 + 36, 1116, "",spep_0 + 74, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 68, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 104, 1265, "",spep_0 + 210, 12, 14, -1);
setStartTimeMs( SE006,  350 );
SE007 = playSeVer2( spep_0 + 100, 1307, "",spep_0 + 210, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 104, 1179, "",spep_0 + 210, 0, 14, -1);
SE009 = playSeVer2( spep_0 + 120, 1360, "",spep_0 + 210, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 192, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 184, 8, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 192;


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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
-- ジャネンバ振り払い→ガラス散布(144F)
--------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
glass = entryEffectLife( spep_2 + 0, SP_02, 141, 0x100, -1, 0, 0, 0 );  --ジャネンバ振り払い→ガラス散布    ef_002
setEffMoveKey( spep_2 + 0, glass, 0, 0 , 0 );
setEffMoveKey( spep_2 + 141, glass, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, glass, 1.0, 1.0 );
setEffScaleKey( spep_2 + 141, glass, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, glass, 0 );
setEffRotateKey( spep_2 + 141, glass, 0 );
setEffAlphaKey( spep_2 + 0, glass, 255 );
setEffAlphaKey( spep_2 + 141 -1, glass, 255 );
setEffAlphaKey( spep_2 + 141, glass, 0 );

-- ** 音 ** --
--刃放つ
SE011 = playSeVer2( spep_2 + 60, 1384, "", 0, 10, 0, -1);
setStartTimeMs( SE011,  1150 );

--光の線溜め
SE012 = playSeVer2( spep_2 + 2, 1227, "",spep_2 + 98, 0, 24, -1);
SE013 = playSeVer2( spep_2 + 2, 1240, "",spep_2 + 98, 0, 24, -1);
SE014 = playSeVer2( spep_2 + 10, 1179, "",spep_2 + 98, 0, 24, -1);
SE015 = playSeVer2( spep_2 + 20, 1004, "", 0, 0, 0, -1);

--刃放つ
SE016 = playSeVer2( spep_2 + 50, 1263, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 50, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 50, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 60, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE019, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 142, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 141;


------------------------------------------------------
-- ガラス敵着弾(286F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ガラス敵着弾：敵より前    ef_003
setEffMoveKey( spep_3 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 284, last_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 284, last_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last_f, 0 );
setEffRotateKey( spep_3 + 284, last_f, 0 );
setEffAlphaKey( spep_3 + 0, last_f, 255 );
setEffAlphaKey( spep_3 + 284 , last_f, 255 );

last_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ガラス敵着弾：敵より後ろ    ef_003_b
setEffMoveKey( spep_3 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 284, last_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 284, last_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last_b, 0 );
setEffRotateKey( spep_3 + 284, last_b, 0 );
setEffAlphaKey( spep_3 + 0, last_b, 255 );
setEffAlphaKey( spep_3 + 284 , last_b, 255 );

-- ** 集中線 ** --

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 284, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 60, 1, 106 );
changeAnime( spep_3 -3 + 96, 1, 108 );
changeAnime( spep_3 -3 + 152, 1, 106 );
changeAnime( spep_3 -3 + 168, 1, 108 );
changeAnime( spep_3 -3 + 172, 1, 106 );
changeAnime( spep_3 -3 + 184, 1, 108 );
changeAnime( spep_3 -3 + 188, 1, 106 );
changeAnime( spep_3 -3 + 204, 1, 108 );
changeAnime( spep_3 -3 + 208, 1, 106 );
changeAnime( spep_3 -3 + 222, 1, 108 );
changeAnime( spep_3 -3 + 226, 1, 106 );
changeAnime( spep_3 -3 + 242, 1, 108 );
changeAnime( spep_3 -3 + 246, 1, 106 );
changeAnime( spep_3 -3 + 260, 1, 108 );
changeAnime( spep_3 -3 + 264, 1, 106 );
changeAnime( spep_3 -3 + 280, 1, 108 );
changeAnime( spep_3 -3 + 284, 1, 106 );

setMoveKey( spep_3 + 0, 1, 1166.1, -458.7 , 0 );
setMoveKey( spep_3 + 1, 1, 1146, -455.2 , 0 );
setMoveKey( spep_3 + 2, 1, 1126, -451.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 1105.9, -448.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 1085.9, -444.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 1065.8, -441 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 1045.7, -437.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 1025.7, -434 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 1005.6, -430.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 985.6, -426.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 965.5, -423.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 945.5, -419.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 925.4, -416.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 905.3, -412.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 885.3, -409.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 865.2, -405.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 845.2, -402.2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 825.1, -398.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 750.6, -369.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 671.9, -338.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 590.9, -306.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 509.8, -274 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 430.8, -242.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 356, -213.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 287, -187 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 224.7, -163.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 169.6, -143.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 121.8, -127.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 81, -113.7 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 45.2, -89 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 88.6, -56.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 40.6, -113.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -2.8, -27.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 57.2, -27.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 49.3, -102.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 57.3, -67 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 30.5, -113.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 38.5, -77.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 49.7, -82.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 57.7, -46.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 9.2, -84.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 17.2, -48.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 60.1, -92.3 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 68.1, -56.5 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 10.3, -84 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 18.3, -48.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 50.3, -102.8 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 58.3, -67 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 83.1, -110.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 91.1, -74.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 20.7, -96.3 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 28.7, -60.5 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 37.3, -73.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 45.3, -37.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -3.5, -89.8 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 4.5, -53.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 47.5, -100.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 55.5, -64.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 9.6, -102 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 17.6, -66.1 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 9.2, -89.3 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 17.2, -53.5 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -3.5, -125.1 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 4.5, -89.2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -3.5, -89.8 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 4.5, -53.9 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 151, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 167, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 171, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 183, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 187, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 203, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 207, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 221, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 225, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 241, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 245, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 248, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 250, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 252, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 254, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 256, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 259, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 260, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 263, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 268, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 270, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 272, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 274, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 276, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 279, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 280, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 283, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 284, 1, 27.4, -113.1 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3 + 1, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 2, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 6, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 10, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 12, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 14, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 16, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 18, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 22, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 28, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 32, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 34, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 36, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 38, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 40, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 42, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 44, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 46, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 48, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 50, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 54, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 56, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 59, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 95, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 96, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 151, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 152, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 167, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 168, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 171, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 172, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 183, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 184, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 187, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 188, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 203, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 204, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 207, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 208, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 221, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 222, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 225, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 226, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 241, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 242, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 245, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 246, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 259, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 260, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 263, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 264, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 279, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 280, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 283, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 284, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 14.2 );
setRotateKey( spep_3 -3 + 59, 1, 14.2 );
setRotateKey( spep_3 -3 + 60, 1, -37.5 );
setRotateKey( spep_3 -3 + 95, 1, -37.5 );
setRotateKey( spep_3 -3 + 96, 1, -12.8 );
setRotateKey( spep_3 -3 + 151, 1, -12.8 );
setRotateKey( spep_3 -3 + 152, 1, -28.5 );
setRotateKey( spep_3 -3 + 167, 1, -28.5 );
setRotateKey( spep_3 -3 + 168, 1, -12.8 );
setRotateKey( spep_3 -3 + 171, 1, -12.8 );
setRotateKey( spep_3 -3 + 172, 1, -28.5 );
setRotateKey( spep_3 -3 + 183, 1, -28.5 );
setRotateKey( spep_3 -3 + 184, 1, -12.8 );
setRotateKey( spep_3 -3 + 187, 1, -12.8 );
setRotateKey( spep_3 -3 + 188, 1, -28.5 );
setRotateKey( spep_3 -3 + 203, 1, -28.5 );
setRotateKey( spep_3 -3 + 204, 1, -12.8 );
setRotateKey( spep_3 -3 + 207, 1, -12.8 );
setRotateKey( spep_3 -3 + 208, 1, -28.5 );
setRotateKey( spep_3 -3 + 221, 1, -28.5 );
setRotateKey( spep_3 -3 + 222, 1, -12.8 );
setRotateKey( spep_3 -3 + 225, 1, -12.8 );
setRotateKey( spep_3 -3 + 226, 1, -28.5 );
setRotateKey( spep_3 -3 + 241, 1, -28.5 );
setRotateKey( spep_3 -3 + 242, 1, -12.8 );
setRotateKey( spep_3 -3 + 245, 1, -12.8 );
setRotateKey( spep_3 -3 + 246, 1, -28.5 );
setRotateKey( spep_3 -3 + 259, 1, -28.5 );
setRotateKey( spep_3 -3 + 260, 1, -12.8 );
setRotateKey( spep_3 -3 + 263, 1, -12.8 );
setRotateKey( spep_3 -3 + 264, 1, -28.5 );
setRotateKey( spep_3 -3 + 279, 1, -28.5 );
setRotateKey( spep_3 -3 + 280, 1, -12.8 );
setRotateKey( spep_3 -3 + 283, 1, -12.8 );
setRotateKey( spep_3 -3 + 284, 1, -28.5 );

-- ** 音 ** --
--刃飛んでいく
SE020 = playSeVer2( spep_3 + 2, 1119, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 2, 1384, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 2, 1357, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE022, 70 );
SE023 = playSeVer2( spep_3 + 60, 1357, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE023, 79 );

--連続爆発
SE024 = playSeVer2( spep_3 + 60, 1011, "",spep_3 + 100, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 60, SE024, 85 );
SE025 = playSeVer2( spep_3 + 78, 1023, "",spep_3 + 128, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 78, SE025, 80 );
SE026 = playSeVer2( spep_3 + 100, 1025, "",spep_3 + 152, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 100, SE026, 81 );

--刃飛んでいく
SE027 = playSeVer2( spep_3 + 124, 1357, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_3 + 124, SE027, 79 );

--連続爆発
SE028 = playSeVer2( spep_3 + 124, 1023, "",spep_3 + 178, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 124, SE028, 87 );
SE029 = playSeVer2( spep_3 + 162, 1024, "",spep_3 + 218, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 162, SE029, 71 );
SE030 = playSeVer2( spep_3 + 162, 1052, "",spep_3 + 216, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 162, SE030, 86 );

--刃飛んでいく
SE031 = playSeVer2( spep_3 + 180, 1357, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_3 + 180, SE031, 74 );

--連続爆発
SE032 = playSeVer2( spep_3 + 192, 1067, "",spep_3 + 244, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 192, SE032, 83 );
SE033 = playSeVer2( spep_3 + 210, 1023, "",spep_3 + 260, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 210, SE033, 79 );
SE034 = playSeVer2( spep_3 + 228, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 228, SE034, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 284, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 148 ); -- ダメージ表示フレーム
endPhase( spep_3 + 274 ); -- 終了フレーム

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カットイン＆ジャネンバ振り向き(194F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --カットイン＆ジャネンバ振り向き    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 192, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 192, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 192, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 192, first_f, 255 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 + 20, 906, 172, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20, shuchusen_1, 172, 20 );
setEffMoveKey( spep_0 + 20, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 192, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 20, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 192, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 20, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 192, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 20, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 192, shuchusen_1, 255 );

spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
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
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--集中線
SE002 = playSeVer2( spep_0 + 22, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 84 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--振り返る
SE004 = playSeVer2( spep_0 + 36, 1116, "",spep_0 + 74, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 68, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 104, 1265, "",spep_0 + 210, 12, 14, -1);
setStartTimeMs( SE006,  350 );
SE007 = playSeVer2( spep_0 + 100, 1307, "",spep_0 + 210, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 104, 1179, "",spep_0 + 210, 0, 14, -1);
SE009 = playSeVer2( spep_0 + 120, 1360, "",spep_0 + 210, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 192, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 184, 8, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 192;


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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
-- ジャネンバ振り払い→ガラス散布(144F)
--------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
glass = entryEffectLife( spep_2 + 0, SP_02, 141, 0x100, -1, 0, 0, 0 );  --ジャネンバ振り払い→ガラス散布    ef_002
setEffMoveKey( spep_2 + 0, glass, 0, 0 , 0 );
setEffMoveKey( spep_2 + 141, glass, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, glass, -1.0, 1.0 );
setEffScaleKey( spep_2 + 141, glass, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, glass, 0 );
setEffRotateKey( spep_2 + 141, glass, 0 );
setEffAlphaKey( spep_2 + 0, glass, 255 );
setEffAlphaKey( spep_2 + 141 -1, glass, 255 );
setEffAlphaKey( spep_2 + 141, glass, 0 );

-- ** 音 ** --
--刃放つ
SE011 = playSeVer2( spep_2 + 60, 1384, "", 0, 10, 0, -1);
setStartTimeMs( SE011,  1150 );

--光の線溜め
SE012 = playSeVer2( spep_2 + 2, 1227, "",spep_2 + 98, 0, 24, -1);
SE013 = playSeVer2( spep_2 + 2, 1240, "",spep_2 + 98, 0, 24, -1);
SE014 = playSeVer2( spep_2 + 10, 1179, "",spep_2 + 98, 0, 24, -1);
SE015 = playSeVer2( spep_2 + 20, 1004, "", 0, 0, 0, -1);

--刃放つ
SE016 = playSeVer2( spep_2 + 50, 1263, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 50, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 50, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 60, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE019, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 142, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 141;


------------------------------------------------------
-- ガラス敵着弾(286F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ガラス敵着弾：敵より前_反転用   ef_003_r
setEffMoveKey( spep_3 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 284, last_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 284, last_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last_f, 0 );
setEffRotateKey( spep_3 + 284, last_f, 0 );
setEffAlphaKey( spep_3 + 0, last_f, 255 );
setEffAlphaKey( spep_3 + 284 , last_f, 255 );

last_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ガラス敵着弾：敵より後ろ    ef_003_b
setEffMoveKey( spep_3 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 284, last_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 284, last_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last_b, 0 );
setEffRotateKey( spep_3 + 284, last_b, 0 );
setEffAlphaKey( spep_3 + 0, last_b, 255 );
setEffAlphaKey( spep_3 + 284 , last_b, 255 );

-- ** 集中線 ** --

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 284, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 60, 1, 106 );
changeAnime( spep_3 -3 + 96, 1, 108 );
changeAnime( spep_3 -3 + 152, 1, 106 );
changeAnime( spep_3 -3 + 168, 1, 108 );
changeAnime( spep_3 -3 + 172, 1, 106 );
changeAnime( spep_3 -3 + 184, 1, 108 );
changeAnime( spep_3 -3 + 188, 1, 106 );
changeAnime( spep_3 -3 + 204, 1, 108 );
changeAnime( spep_3 -3 + 208, 1, 106 );
changeAnime( spep_3 -3 + 222, 1, 108 );
changeAnime( spep_3 -3 + 226, 1, 106 );
changeAnime( spep_3 -3 + 242, 1, 108 );
changeAnime( spep_3 -3 + 246, 1, 106 );
changeAnime( spep_3 -3 + 260, 1, 108 );
changeAnime( spep_3 -3 + 264, 1, 106 );
changeAnime( spep_3 -3 + 280, 1, 108 );
changeAnime( spep_3 -3 + 284, 1, 106 );

setMoveKey( spep_3 + 0, 1, 1166.1, -458.7 , 0 );
setMoveKey( spep_3 + 1, 1, 1146, -455.2 , 0 );
setMoveKey( spep_3 + 2, 1, 1126, -451.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 1105.9, -448.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 1085.9, -444.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 1065.8, -441 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 1045.7, -437.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 1025.7, -434 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 1005.6, -430.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 985.6, -426.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 965.5, -423.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 945.5, -419.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 925.4, -416.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 905.3, -412.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 885.3, -409.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 865.2, -405.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 845.2, -402.2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 825.1, -398.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 750.6, -369.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 671.9, -338.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 590.9, -306.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 509.8, -274 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 430.8, -242.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 356, -213.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 287, -187 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 224.7, -163.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 169.6, -143.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 121.8, -127.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 81, -113.7 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 45.2, -89 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 88.6, -56.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 40.6, -113.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -2.8, -27.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 57.2, -27.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 49.3, -102.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 57.3, -67 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 30.5, -113.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 38.5, -77.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 49.7, -82.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 57.7, -46.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 9.2, -84.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 17.2, -48.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 60.1, -92.3 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 68.1, -56.5 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 10.3, -84 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 18.3, -48.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 50.3, -102.8 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 58.3, -67 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 83.1, -110.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 91.1, -74.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 20.7, -96.3 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 28.7, -60.5 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 37.3, -73.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 45.3, -37.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -3.5, -89.8 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 4.5, -53.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 47.5, -100.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 55.5, -64.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 9.6, -102 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 17.6, -66.1 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 9.2, -89.3 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 17.2, -53.5 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -3.5, -125.1 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 4.5, -89.2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 47.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 55.9, -77.4 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -3.5, -89.8 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 4.5, -53.9 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 151, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 167, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 171, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 183, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 187, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 203, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 207, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 221, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 225, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 241, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 245, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 248, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 250, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 252, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 254, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 256, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 259, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 260, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 263, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 27.4, -113.1 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 35.4, -77.3 , 0 );
setMoveKey( spep_3 -3 + 268, 1, 51.2, -85.6 , 0 );
setMoveKey( spep_3 -3 + 270, 1, 59.2, -49.7 , 0 );
setMoveKey( spep_3 -3 + 272, 1, 11, -80.7 , 0 );
setMoveKey( spep_3 -3 + 274, 1, 19, -44.8 , 0 );
setMoveKey( spep_3 -3 + 276, 1, 60, -96.8 , 0 );
setMoveKey( spep_3 -3 + 279, 1, 68, -60.9 , 0 );
setMoveKey( spep_3 -3 + 280, 1, 35.3, -113.7 , 0 );
setMoveKey( spep_3 -3 + 283, 1, 43.3, -77.8 , 0 );
setMoveKey( spep_3 -3 + 284, 1, 27.4, -113.1 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3 + 1, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 2, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 6, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 10, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 12, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 14, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 16, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 18, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 22, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 28, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 32, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 34, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 36, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 38, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 40, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 42, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 44, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 46, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 48, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 50, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 54, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 56, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 59, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 95, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 96, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 151, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 152, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 167, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 168, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 171, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 172, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 183, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 184, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 187, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 188, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 203, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 204, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 207, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 208, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 221, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 222, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 225, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 226, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 241, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 242, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 245, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 246, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 259, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 260, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 263, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 264, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 279, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 280, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 283, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 284, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 14.2 );
setRotateKey( spep_3 -3 + 59, 1, 14.2 );
setRotateKey( spep_3 -3 + 60, 1, -37.5 );
setRotateKey( spep_3 -3 + 95, 1, -37.5 );
setRotateKey( spep_3 -3 + 96, 1, -12.8 );
setRotateKey( spep_3 -3 + 151, 1, -12.8 );
setRotateKey( spep_3 -3 + 152, 1, -28.5 );
setRotateKey( spep_3 -3 + 167, 1, -28.5 );
setRotateKey( spep_3 -3 + 168, 1, -12.8 );
setRotateKey( spep_3 -3 + 171, 1, -12.8 );
setRotateKey( spep_3 -3 + 172, 1, -28.5 );
setRotateKey( spep_3 -3 + 183, 1, -28.5 );
setRotateKey( spep_3 -3 + 184, 1, -12.8 );
setRotateKey( spep_3 -3 + 187, 1, -12.8 );
setRotateKey( spep_3 -3 + 188, 1, -28.5 );
setRotateKey( spep_3 -3 + 203, 1, -28.5 );
setRotateKey( spep_3 -3 + 204, 1, -12.8 );
setRotateKey( spep_3 -3 + 207, 1, -12.8 );
setRotateKey( spep_3 -3 + 208, 1, -28.5 );
setRotateKey( spep_3 -3 + 221, 1, -28.5 );
setRotateKey( spep_3 -3 + 222, 1, -12.8 );
setRotateKey( spep_3 -3 + 225, 1, -12.8 );
setRotateKey( spep_3 -3 + 226, 1, -28.5 );
setRotateKey( spep_3 -3 + 241, 1, -28.5 );
setRotateKey( spep_3 -3 + 242, 1, -12.8 );
setRotateKey( spep_3 -3 + 245, 1, -12.8 );
setRotateKey( spep_3 -3 + 246, 1, -28.5 );
setRotateKey( spep_3 -3 + 259, 1, -28.5 );
setRotateKey( spep_3 -3 + 260, 1, -12.8 );
setRotateKey( spep_3 -3 + 263, 1, -12.8 );
setRotateKey( spep_3 -3 + 264, 1, -28.5 );
setRotateKey( spep_3 -3 + 279, 1, -28.5 );
setRotateKey( spep_3 -3 + 280, 1, -12.8 );
setRotateKey( spep_3 -3 + 283, 1, -12.8 );
setRotateKey( spep_3 -3 + 284, 1, -28.5 );

-- ** 音 ** --
--刃飛んでいく
SE020 = playSeVer2( spep_3 + 2, 1119, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 2, 1384, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 2, 1357, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE022, 70 );
SE023 = playSeVer2( spep_3 + 60, 1357, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE023, 79 );

--連続爆発
SE024 = playSeVer2( spep_3 + 60, 1011, "",spep_3 + 100, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 60, SE024, 85 );
SE025 = playSeVer2( spep_3 + 78, 1023, "",spep_3 + 128, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 78, SE025, 80 );
SE026 = playSeVer2( spep_3 + 100, 1025, "",spep_3 + 152, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 100, SE026, 81 );

--刃飛んでいく
SE027 = playSeVer2( spep_3 + 124, 1357, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_3 + 124, SE027, 79 );

--連続爆発
SE028 = playSeVer2( spep_3 + 124, 1023, "",spep_3 + 178, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 124, SE028, 87 );
SE029 = playSeVer2( spep_3 + 162, 1024, "",spep_3 + 218, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 162, SE029, 71 );
SE030 = playSeVer2( spep_3 + 162, 1052, "",spep_3 + 216, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 162, SE030, 86 );

--刃飛んでいく
SE031 = playSeVer2( spep_3 + 180, 1357, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_3 + 180, SE031, 74 );

--連続爆発
SE032 = playSeVer2( spep_3 + 192, 1067, "",spep_3 + 244, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 192, SE032, 83 );
SE033 = playSeVer2( spep_3 + 210, 1023, "",spep_3 + 260, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 210, SE033, 79 );
SE034 = playSeVer2( spep_3 + 228, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 228, SE034, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 284, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 148 ); -- ダメージ表示フレーム
endPhase( spep_3 + 274 ); -- 終了フレーム


end