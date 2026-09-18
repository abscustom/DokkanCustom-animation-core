--1024240:SSR人造人間16号&18号_デュアルデストロイド_sp2369
--sp_effect_b4_00231

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
SP_01 = 159765;	--開幕〜セリフカットインまで	ef_001
SP_02 = 159766;	--飛び出す16号と18号	ef_002
SP_03 = 159767;	--敵に迫る18号〜16号カメラに近づく	ef_003
SP_04 = 159769;	--敵に迫る18号〜16号カメラに近づく	ef_004
SP_05 = 159771;	--殴る16号〜敵が吹っ飛ぶまで	ef_005
SP_06 = 159773;	--殴る16号〜敵が吹っ飛ぶまで	ef_006
SP_07 = 159774;	--フィニッシュ	ef_007

--敵側
SP_03r = 159768;	--同上　敵側	ef_003r
SP_04r = 159770;	--同上　敵側	ef_004r
SP_05r = 159772;	--同上　敵側	ef_005r

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
-- 開幕〜セリフカットイン(91F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 98, 0x100, -1, 0, 0, 0 );  --開幕〜セリフカットインまで	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 98, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 98 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 98, first_f, 0 );

spep_x = spep_0 + 6;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;


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


------------------------------------------------------
-- 飛び出す16号と18号(76F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_2 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --飛び出す16号と18号	ef_002
setEffMoveKey( spep_2 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, dash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, dash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 76, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 76 -1, dash, 255 );
setEffAlphaKey( spep_2 + 76, dash, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 音 ** --
--18号飛び込む
SE005 = playSeVer2( spep_2 + 6, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 8, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 34, 1314, "",spep_2 + 124, 0, 18, -1);

--18号向かっていく
SE010 = playSeVer2( spep_2 + 74, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 74, SE010, 39 );
setPitch( spep_2 + 74, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


------------------------------------------------------
-- 18号敵に迫る〜16号カメラに近づく(312F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03, 312, 0x100, -1, 0, 0, 0 );  --敵に迫る18号〜16号カメラに近づく	ef_003
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 312, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 312, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 312, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 312 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 312, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04, 312, 0x80, -1, 0, 0, 0 );  --敵に迫る18号〜16号カメラに近づく	ef_004
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 312, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 312, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 312, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 312 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 312, move_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 112, 1, 0 );
changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 48, 1, 106 );
changeAnime( spep_3 -3 + 78, 1, 108 );

setMoveKey( spep_3+ 0, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_3+ 21, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 8.8, -40.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 8.4, -41.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 7.8, -42.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 7, -43.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 5.9, -45.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 4.5, -47.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 2.9, -50.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 1, -53.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -1.1, -56.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -3.5, -60.7 , 0 );
setMoveKey( spep_3 -3 + 47, 1, -4.5, -65.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 91, 46.2 , 0 );
setMoveKey( spep_3 -3 + 51, 1, 91, 46.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 67.5, 26.4 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 73.1, 30 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 64, 21.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 76.2, 20.8 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 64.2, 34.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 69.5, 29 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 73.3, 25.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 70.2, 25.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 72.1, 26.5 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 72.8, 27 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 184.6, 142 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 184.6, 142 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 140.4, 109.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 128.7, 100.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 138.5, 98.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 124.4, 111.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 134.2, 107.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 123.1, 98.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 133.4, 96.9 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 119.9, 109.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 123.9, 104.2 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 126.7, 100 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 122.8, 100 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 124.2, 100.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 124.2, 100.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.768, 0.768 );
setScaleKey( spep_3 -3 + 24, 1, 0.768, 0.768 );
setScaleKey( spep_3 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 28, 1, 0.804, 0.804 );
setScaleKey( spep_3 -3 + 30, 1, 0.852, 0.852 );
setScaleKey( spep_3 -3 + 32, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 34, 1, 0.972, 0.972 );
setScaleKey( spep_3 -3 + 36, 1, 1.068, 1.068 );
setScaleKey( spep_3 -3 + 38, 1, 1.176, 1.176 );
setScaleKey( spep_3 -3 + 40, 1, 1.296, 1.296 );
setScaleKey( spep_3 -3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 44, 1, 1.596, 1.596 );
setScaleKey( spep_3 -3 + 47, 1, 1.764, 1.764 );
setScaleKey( spep_3 -3 + 48, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 49, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 50, 1, 3.504, 3.504 );
setScaleKey( spep_3 -3 + 51, 1, 3.504, 3.504 );
setScaleKey( spep_3 -3 + 52, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 53, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 54, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 55, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 56, 1, 3, 3 );
setScaleKey( spep_3 -3 + 57, 1, 3, 3 );
setScaleKey( spep_3 -3 + 58, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 77, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 78, 1, 3.025, 3.025 );
setScaleKey( spep_3 -3 + 79, 1, 3.025, 3.025 );
setScaleKey( spep_3 -3 + 80, 1, 3.608, 3.608 );
setScaleKey( spep_3 -3 + 81, 1, 3.608, 3.608 );
setScaleKey( spep_3 -3 + 82, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 83, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 84, 1, 2.236, 2.236 );--
setScaleKey( spep_3 -3 + 85, 1, 2.236, 2.236 );--
setScaleKey( spep_3 -3 + 86, 1, 2.794, 2.794 );
setScaleKey( spep_3 -3 + 87, 1, 2.794, 2.794 );
setScaleKey( spep_3 -3 + 88, 1, 2.171, 2.171 );
setScaleKey( spep_3 -3 + 90, 1, 2.119, 2.119 );
setScaleKey( spep_3 -3 + 92, 1, 2.054, 2.054 );
setScaleKey( spep_3 -3 + 94, 1, 2.015, 2.015 );
setScaleKey( spep_3 -3 + 96, 1, 1.963, 1.963 );
setScaleKey( spep_3 -3 + 98, 1, 1.924, 1.924 );
setScaleKey( spep_3 -3 + 100, 1, 1.898, 1.898 );
setScaleKey( spep_3 -3 + 102, 1, 1.872, 1.872 );
setScaleKey( spep_3 -3 + 104, 1, 1.846, 1.846 );
setScaleKey( spep_3 -3 + 106, 1, 1.833, 1.833 );
setScaleKey( spep_3 -3 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 111, 1, 1.807, 1.807 );
setScaleKey( spep_3 -3 + 112, 1, 1.807, 1.807 );

setRotateKey( spep_3 + 0, 1, -4.1 );
setRotateKey( spep_3 -3 + 42, 1, -4.1 );
setRotateKey( spep_3 -3 + 44, 1, -4 );
setRotateKey( spep_3 -3 + 47, 1, -4 );
setRotateKey( spep_3 -3 + 48, 1, -52 );
setRotateKey( spep_3 -3 + 49, 1, -52 );
setRotateKey( spep_3 -3 + 50, 1, -50.7 );
setRotateKey( spep_3 -3 + 51, 1, -50.7 );
setRotateKey( spep_3 -3 + 52, 1, -50 );
setRotateKey( spep_3 -3 + 53, 1, -50 );
setRotateKey( spep_3 -3 + 54, 1, -49.7 );
setRotateKey( spep_3 -3 + 55, 1, -49.7 );
setRotateKey( spep_3 -3 + 56, 1, -49.4 );
setRotateKey( spep_3 -3 + 57, 1, -49.4 );
setRotateKey( spep_3 -3 + 58, 1, -49.1 );
setRotateKey( spep_3 -3 + 60, 1, -48.9 );
setRotateKey( spep_3 -3 + 62, 1, -48.7 );
setRotateKey( spep_3 -3 + 64, 1, -48.5 );
setRotateKey( spep_3 -3 + 66, 1, -48.4 );
setRotateKey( spep_3 -3 + 68, 1, -48.2 );
setRotateKey( spep_3 -3 + 70, 1, -48.1 );
setRotateKey( spep_3 -3 + 72, 1, -48.1 );
setRotateKey( spep_3 -3 + 74, 1, -48 );
setRotateKey( spep_3 -3 + 77, 1, -48 );
setRotateKey( spep_3 -3 + 78, 1, -2.5 );
setRotateKey( spep_3 -3 + 79, 1, -2.5 );
setRotateKey( spep_3 -3 + 80, 1, -2.6 );
setRotateKey( spep_3 -3 + 81, 1, -2.6 );
setRotateKey( spep_3 -3 + 82, 1, -2.7 );
setRotateKey( spep_3 -3 + 90, 1, -2.7 );
setRotateKey( spep_3 -3 + 92, 1, -2.6 );
setRotateKey( spep_3 -3 + 111, 1, -2.6 );
setRotateKey( spep_3 -3 + 112, 1, -2.6 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 124, 1, 1 );
setDisp( spep_3 -3 + 180, 1, 0 );
changeAnime( spep_3 -3 + 124, 1, 108 );
changeAnime( spep_3 -3 + 146, 1, 107 );

setMoveKey( spep_3 -3 + 124, 1, 2035.9, -385.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 1943.5, -375.3 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 1759.3, -362.5 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 1492.2, -347 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 1153.2, -328.9 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 755.2, -308.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 313.4, -286.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 284.3, -269.9 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 255.6, -252.4 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 244.5, -252.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 317, -346.9 , 0 );
setMoveKey( spep_3 -3 + 145, 1, 317, -346.9 , 0 );--
setMoveKey( spep_3 -3 + 146, 1, 344.5, -187.5 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 289.3, -158.2 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 223.9, -122.2 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 344.8, -192.8 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 251.5, -139.7 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 177.7, -104.1 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 124.4, -100 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 143.8, -84.4 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 145.2, -99.4 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 123.5, -84.1 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 122.7, -100.6 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 436.6, -169.3 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 686.7, -255.6 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 878.6, -308.1 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 1038.1, -354.5 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 1140.1, -380.5 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 1203, -403.8 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 1227, -402.2 , 0 );

setScaleKey( spep_3 -3 + 124, 1, 7.28, 7.28 );
setScaleKey( spep_3 -3 + 126, 1, 7.05, 7.05 );
setScaleKey( spep_3 -3 + 128, 1, 6.66, 6.66 );
setScaleKey( spep_3 -3 + 130, 1, 6.14, 6.14 );
setScaleKey( spep_3 -3 + 132, 1, 5.5, 5.5 );
setScaleKey( spep_3 -3 + 134, 1, 4.75, 4.75 );
setScaleKey( spep_3 -3 + 136, 1, 3.93, 3.93 );
setScaleKey( spep_3 -3 + 138, 1, 3.69, 3.69 );
setScaleKey( spep_3 -3 + 140, 1, 3.44, 3.44 );
setScaleKey( spep_3 -3 + 142, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 144, 1, 4.68, 4.68 );
setScaleKey( spep_3 -3 + 145, 1, 4.68, 4.68 );--
setScaleKey( spep_3 -3 + 146, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 148, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 150, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 152, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 154, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 156, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 158, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 162, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 166, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 168, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 170, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 172, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 174, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 176, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 180, 1, 1.81, 1.81 );

setRotateKey( spep_3 -3 + 124, 1, 17.7 );
setRotateKey( spep_3 -3 + 145, 1, 17.7 );--
setRotateKey( spep_3 -3 + 146, 1, 0 );
setRotateKey( spep_3 -3 + 180, 1, 0 );

-- ** 音 ** --
--18号パンチ
SE010 = playSeVer2( spep_3 + 36, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 44, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 44, 1187, "",spep_3 + 76, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 44, SE013, 60 );

--18号パンチ2
SE014 = playSeVer2( spep_3 + 78, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 78, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 78, 1190, "",spep_3 + 114, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 78, SE016, 68 );

--画面遷移
SE017 = playSeVer2( spep_3 + 84, 1072, "", 0, 0, 0, -1);

--18号キック
SE018 = playSeVer2( spep_3 + 134, 1123, "", 0, 0, 0, -1);

--16号ダッシュ
SE019 = playSeVer2( spep_3 + 180, 9, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 180, 1278, "",spep_3 + 354, 0, 70, -1);
setSeVolumeByWorkId( spep_3 + 180, SE020, 82 );

--土煙
SE021 = playSeVer2( spep_3 + 216, 1168, "",spep_3 + 354, 0, 74, -1);
setSeVolumeByWorkId( spep_3 + 216, SE021, 89 );

--16号向かってくる
SE022 = playSeVer2( spep_3 + 258, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 258, SE022, 55 );
setPitch( spep_3 + 258, SE022, -400 );
setTimeStretch( SE022, 1.05, 30, 4 );

--18号ジャンプ
SE023 = playSeVer2( spep_3 + 282, 1207, "",spep_3 + 354, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 282, SE023, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 312 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 312;


------------------------------------------------------
-- 殴る16号〜カードカットイン(100F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_4 + 0, SP_05, 100, 0x100, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで	ef_004
setEffMoveKey( spep_4 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 100, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 100 -1, tame_f, 255 );
setEffAlphaKey( spep_4 + 100, tame_f, 0 );

tame_b = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで	ef_005
setEffMoveKey( spep_4 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 100, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 100 -1, tame_b, 255 );
setEffAlphaKey( spep_4 + 100, tame_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 52, 1, 1 );
changeAnime( spep_4 -3 + 52, 1, 5 );

setMoveKey( spep_4 -3 + 52, 1, 43.1, -123.3 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 43.1, -123.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 44.4, -124.7 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 44.4, -124.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 48.2, -134.5 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 48.2, -134.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 54.5, -152.1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 54.5, -152.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 71.3, -203.6 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 71.3, -203.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 68.6, -255.6 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 68.6, -255.6 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 71.3, -189.8 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 71.3, -189.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 60.7, -146.1 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 60.7, -146.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 76.8, -235.7 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 76.8, -235.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 60.5, -168.9 , 0 );
setMoveKey( spep_4 -3 + 71, 1, 60.5, -168.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 47, -122.7 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 47, -122.7 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 67.5, -157.4 , 0 );
setMoveKey( spep_4 -3 + 75, 1, 67.5, -157.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 44.4, -163.8 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 44.4, -163.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 55.6, -135.6 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 55.6, -135.6 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 36.3, -96.5 , 0 );
setMoveKey( spep_4 -3 + 81, 1, 36.3, -96.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 32.1, -50.1 , 0 );
setMoveKey( spep_4 -3 + 83, 1, 32.1, -50.1 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 15.5, -1.4 , 0 );
setMoveKey( spep_4 -3 + 85, 1, 15.5, -1.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 8.9, 20.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 5, 19 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 9.4, 23 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 7, 17.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 10.7, 20.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 4.6, 25 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 4.6, 25.1 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 4.6, 25.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 4.5, 25.2 , 0 );

setScaleKey( spep_4 -3 + 52, 1, 2.898, 2.898 );
setScaleKey( spep_4 -3 + 53, 1, 2.898, 2.898 );
setScaleKey( spep_4 -3 + 54, 1, 2.907, 2.907 );
setScaleKey( spep_4 -3 + 55, 1, 2.907, 2.907 );
setScaleKey( spep_4 -3 + 56, 1, 3.096, 3.096 );
setScaleKey( spep_4 -3 + 57, 1, 3.096, 3.096 );
setScaleKey( spep_4 -3 + 58, 1, 3.465, 3.465 );
setScaleKey( spep_4 -3 + 59, 1, 3.465, 3.465 );
setScaleKey( spep_4 -3 + 60, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 61, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 62, 1, 5.823, 5.823 );
setScaleKey( spep_4 -3 + 63, 1, 5.823, 5.823 );
setScaleKey( spep_4 -3 + 64, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 65, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 66, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 67, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 68, 1, 4.995, 4.995 );
setScaleKey( spep_4 -3 + 69, 1, 4.995, 4.995 );
setScaleKey( spep_4 -3 + 70, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 71, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 72, 1, 3.285, 3.285 );
setScaleKey( spep_4 -3 + 73, 1, 3.285, 3.285 );
setScaleKey( spep_4 -3 + 74, 1, 3.249, 3.249 );
setScaleKey( spep_4 -3 + 75, 1, 3.249, 3.249 );
setScaleKey( spep_4 -3 + 76, 1, 3.213, 3.213 );
setScaleKey( spep_4 -3 + 77, 1, 3.213, 3.213 );
setScaleKey( spep_4 -3 + 78, 1, 3.186, 3.186 );
setScaleKey( spep_4 -3 + 79, 1, 3.186, 3.186 );
setScaleKey( spep_4 -3 + 80, 1, 2.484, 2.484 );
setScaleKey( spep_4 -3 + 81, 1, 2.484, 2.484 );
setScaleKey( spep_4 -3 + 82, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 83, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 84, 1, 1.125, 1.125 );
setScaleKey( spep_4 -3 + 85, 1, 1.125, 1.125 );
setScaleKey( spep_4 -3 + 86, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 88, 1, 0.513, 0.513 );
setScaleKey( spep_4 -3 + 90, 1, 0.486, 0.486 );
setScaleKey( spep_4 -3 + 92, 1, 0.459, 0.459 );
setScaleKey( spep_4 -3 + 94, 1, 0.441, 0.441 );
setScaleKey( spep_4 -3 + 96, 1, 0.432, 0.432 );
setScaleKey( spep_4 -3 + 98, 1, 0.423, 0.423 );
setScaleKey( spep_4 -3 + 100, 1, 0.414, 0.414 );
setScaleKey( spep_4 -3 + 102, 1, 0.414, 0.414 );

setRotateKey( spep_4 -3 + 52, 1, -6.3 );
setRotateKey( spep_4 -3 + 102, 1, -6.3 );

-- ** 音 ** --
--振りかぶる
SE024 = playSeVer2( spep_4 + 18, 1116, "",spep_4 + 62, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 18, SE024, 146 );
SE025 = playSeVer2( spep_4 + 24, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 24, SE025, 132 );

--16号パンチ
SE026 = playSeVer2( spep_4 + 60, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE026, 78 );
SE027 = playSeVer2( spep_4 + 60, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE027, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 100, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_5    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_5    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_5    + 0, 1, 0 );
setRotateKey( spep_5    + 1, 1, 105 );
setRotateKey( spep_5    + 2, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE029 = playSeVer2( spep_5 + 8, 1054, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_5 + 8, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜セリフカットイン(91F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 98, 0x100, -1, 0, 0, 0 );  --開幕〜セリフカットインまで    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 98, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 98, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 98 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 98, first_f, 0 );

spep_x = spep_0 + 6;
---- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;


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


------------------------------------------------------
-- 飛び出す16号と18号(76F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_2 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --飛び出す16号と18号 ef_002
setEffMoveKey( spep_2 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, dash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, dash, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 76, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 76 -1, dash, 255 );
setEffAlphaKey( spep_2 + 76, dash, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 音 ** --
--18号飛び込む
SE005 = playSeVer2( spep_2 + 6, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 8, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 34, 1314, "",spep_2 + 124, 0, 18, -1);

--18号向かっていく
SE010 = playSeVer2( spep_2 + 74, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 74, SE010, 39 );
setPitch( spep_2 + 74, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


------------------------------------------------------
-- 18号敵に迫る〜16号カメラに近づく(312F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03r, 312, 0x100, -1, 0, 0, 0 );  --敵に迫る18号〜16号カメラに近づく   ef_003
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 312, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 312, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 312, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 312 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 312, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04r, 312, 0x80, -1, 0, 0, 0 );  --敵に迫る18号〜16号カメラに近づく    ef_004
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 312, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 312, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 312, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 312 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 312, move_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 112, 1, 0 );
changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 48, 1, 106 );
changeAnime( spep_3 -3 + 78, 1, 108 );

setMoveKey( spep_3+ 0, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_3+ 21, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 8.8, -40.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 8.4, -41.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 7.8, -42.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 7, -43.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 5.9, -45.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 4.5, -47.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 2.9, -50.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 1, -53.4 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -1.1, -56.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -3.5, -60.7 , 0 );
setMoveKey( spep_3 -3 + 47, 1, -4.5, -65.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 91, 46.2 , 0 );
setMoveKey( spep_3 -3 + 51, 1, 91, 46.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 67.5, 26.4 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 73.1, 30 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 64, 21.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 76.2, 20.8 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 64.2, 34.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 69.5, 29 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 73.3, 25.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 70.2, 25.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 72.1, 26.5 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 72.8, 27 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 184.6, 142 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 184.6, 142 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 140.4, 109.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 128.7, 100.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 138.5, 98.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 124.4, 111.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 134.2, 107.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 123.1, 98.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 133.4, 96.9 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 119.9, 109.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 123.9, 104.2 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 126.7, 100 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 122.8, 100 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 124.2, 100.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 124.2, 100.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.768, 0.768 );
setScaleKey( spep_3 -3 + 24, 1, 0.768, 0.768 );
setScaleKey( spep_3 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 28, 1, 0.804, 0.804 );
setScaleKey( spep_3 -3 + 30, 1, 0.852, 0.852 );
setScaleKey( spep_3 -3 + 32, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 34, 1, 0.972, 0.972 );
setScaleKey( spep_3 -3 + 36, 1, 1.068, 1.068 );
setScaleKey( spep_3 -3 + 38, 1, 1.176, 1.176 );
setScaleKey( spep_3 -3 + 40, 1, 1.296, 1.296 );
setScaleKey( spep_3 -3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 44, 1, 1.596, 1.596 );
setScaleKey( spep_3 -3 + 47, 1, 1.764, 1.764 );
setScaleKey( spep_3 -3 + 48, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 49, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 50, 1, 3.504, 3.504 );
setScaleKey( spep_3 -3 + 51, 1, 3.504, 3.504 );
setScaleKey( spep_3 -3 + 52, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 53, 1, 2.76, 2.76 );
setScaleKey( spep_3 -3 + 54, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 55, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 56, 1, 3, 3 );
setScaleKey( spep_3 -3 + 57, 1, 3, 3 );
setScaleKey( spep_3 -3 + 58, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 77, 1, 2.004, 2.004 );
setScaleKey( spep_3 -3 + 78, 1, 3.025, 3.025 );
setScaleKey( spep_3 -3 + 79, 1, 3.025, 3.025 );
setScaleKey( spep_3 -3 + 80, 1, 3.608, 3.608 );
setScaleKey( spep_3 -3 + 81, 1, 3.608, 3.608 );
setScaleKey( spep_3 -3 + 82, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 83, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 84, 1, 2.236, 2.236 );--
setScaleKey( spep_3 -3 + 85, 1, 2.236, 2.236 );--
setScaleKey( spep_3 -3 + 86, 1, 2.794, 2.794 );
setScaleKey( spep_3 -3 + 87, 1, 2.794, 2.794 );
setScaleKey( spep_3 -3 + 88, 1, 2.171, 2.171 );
setScaleKey( spep_3 -3 + 90, 1, 2.119, 2.119 );
setScaleKey( spep_3 -3 + 92, 1, 2.054, 2.054 );
setScaleKey( spep_3 -3 + 94, 1, 2.015, 2.015 );
setScaleKey( spep_3 -3 + 96, 1, 1.963, 1.963 );
setScaleKey( spep_3 -3 + 98, 1, 1.924, 1.924 );
setScaleKey( spep_3 -3 + 100, 1, 1.898, 1.898 );
setScaleKey( spep_3 -3 + 102, 1, 1.872, 1.872 );
setScaleKey( spep_3 -3 + 104, 1, 1.846, 1.846 );
setScaleKey( spep_3 -3 + 106, 1, 1.833, 1.833 );
setScaleKey( spep_3 -3 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 111, 1, 1.807, 1.807 );
setScaleKey( spep_3 -3 + 112, 1, 1.807, 1.807 );

setRotateKey( spep_3 + 0, 1, -4.1 );
setRotateKey( spep_3 -3 + 42, 1, -4.1 );
setRotateKey( spep_3 -3 + 44, 1, -4 );
setRotateKey( spep_3 -3 + 47, 1, -4 );
setRotateKey( spep_3 -3 + 48, 1, -52 );
setRotateKey( spep_3 -3 + 49, 1, -52 );
setRotateKey( spep_3 -3 + 50, 1, -50.7 );
setRotateKey( spep_3 -3 + 51, 1, -50.7 );
setRotateKey( spep_3 -3 + 52, 1, -50 );
setRotateKey( spep_3 -3 + 53, 1, -50 );
setRotateKey( spep_3 -3 + 54, 1, -49.7 );
setRotateKey( spep_3 -3 + 55, 1, -49.7 );
setRotateKey( spep_3 -3 + 56, 1, -49.4 );
setRotateKey( spep_3 -3 + 57, 1, -49.4 );
setRotateKey( spep_3 -3 + 58, 1, -49.1 );
setRotateKey( spep_3 -3 + 60, 1, -48.9 );
setRotateKey( spep_3 -3 + 62, 1, -48.7 );
setRotateKey( spep_3 -3 + 64, 1, -48.5 );
setRotateKey( spep_3 -3 + 66, 1, -48.4 );
setRotateKey( spep_3 -3 + 68, 1, -48.2 );
setRotateKey( spep_3 -3 + 70, 1, -48.1 );
setRotateKey( spep_3 -3 + 72, 1, -48.1 );
setRotateKey( spep_3 -3 + 74, 1, -48 );
setRotateKey( spep_3 -3 + 77, 1, -48 );
setRotateKey( spep_3 -3 + 78, 1, -2.5 );
setRotateKey( spep_3 -3 + 79, 1, -2.5 );
setRotateKey( spep_3 -3 + 80, 1, -2.6 );
setRotateKey( spep_3 -3 + 81, 1, -2.6 );
setRotateKey( spep_3 -3 + 82, 1, -2.7 );
setRotateKey( spep_3 -3 + 90, 1, -2.7 );
setRotateKey( spep_3 -3 + 92, 1, -2.6 );
setRotateKey( spep_3 -3 + 111, 1, -2.6 );
setRotateKey( spep_3 -3 + 112, 1, -2.6 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 124, 1, 1 );
setDisp( spep_3 -3 + 180, 1, 0 );
changeAnime( spep_3 -3 + 124, 1, 108 );
changeAnime( spep_3 -3 + 146, 1, 107 );

setMoveKey( spep_3 -3 + 124, 1, 2035.9, -385.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 1943.5, -375.3 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 1759.3, -362.5 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 1492.2, -347 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 1153.2, -328.9 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 755.2, -308.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 313.4, -286.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 284.3, -269.9 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 255.6, -252.4 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 244.5, -252.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 317, -346.9 , 0 );
setMoveKey( spep_3 -3 + 145, 1, 317, -346.9 , 0 );--
setMoveKey( spep_3 -3 + 146, 1, 344.5, -187.5 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 289.3, -158.2 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 223.9, -122.2 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 344.8, -192.8 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 251.5, -139.7 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 177.7, -104.1 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 124.4, -100 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 143.8, -84.4 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 145.2, -99.4 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 123.5, -84.1 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 122.7, -100.6 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 436.6, -169.3 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 686.7, -255.6 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 878.6, -308.1 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 1038.1, -354.5 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 1140.1, -380.5 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 1203, -403.8 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 1227, -402.2 , 0 );

setScaleKey( spep_3 -3 + 124, 1, 7.28, 7.28 );
setScaleKey( spep_3 -3 + 126, 1, 7.05, 7.05 );
setScaleKey( spep_3 -3 + 128, 1, 6.66, 6.66 );
setScaleKey( spep_3 -3 + 130, 1, 6.14, 6.14 );
setScaleKey( spep_3 -3 + 132, 1, 5.5, 5.5 );
setScaleKey( spep_3 -3 + 134, 1, 4.75, 4.75 );
setScaleKey( spep_3 -3 + 136, 1, 3.93, 3.93 );
setScaleKey( spep_3 -3 + 138, 1, 3.69, 3.69 );
setScaleKey( spep_3 -3 + 140, 1, 3.44, 3.44 );
setScaleKey( spep_3 -3 + 142, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 144, 1, 4.68, 4.68 );
setScaleKey( spep_3 -3 + 145, 1, 4.68, 4.68 );--
setScaleKey( spep_3 -3 + 146, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 148, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 150, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 152, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 154, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 156, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 158, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 162, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 166, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 168, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 170, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 172, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 174, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 176, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 180, 1, 1.81, 1.81 );

setRotateKey( spep_3 -3 + 124, 1, 17.7 );
setRotateKey( spep_3 -3 + 145, 1, 17.7 );--
setRotateKey( spep_3 -3 + 146, 1, 0 );
setRotateKey( spep_3 -3 + 180, 1, 0 );

-- ** 音 ** --
--18号パンチ
SE010 = playSeVer2( spep_3 + 36, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 44, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 44, 1187, "",spep_3 + 76, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 44, SE013, 60 );

--18号パンチ2
SE014 = playSeVer2( spep_3 + 78, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 78, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 78, 1190, "",spep_3 + 114, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 78, SE016, 68 );

--画面遷移
SE017 = playSeVer2( spep_3 + 84, 1072, "", 0, 0, 0, -1);

--18号キック
SE018 = playSeVer2( spep_3 + 134, 1123, "", 0, 0, 0, -1);

--16号ダッシュ
SE019 = playSeVer2( spep_3 + 180, 9, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 180, 1278, "",spep_3 + 354, 0, 70, -1);
setSeVolumeByWorkId( spep_3 + 180, SE020, 82 );

--土煙
SE021 = playSeVer2( spep_3 + 216, 1168, "",spep_3 + 354, 0, 74, -1);
setSeVolumeByWorkId( spep_3 + 216, SE021, 89 );

--16号向かってくる
SE022 = playSeVer2( spep_3 + 258, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 258, SE022, 55 );
setPitch( spep_3 + 258, SE022, -400 );
setTimeStretch( SE022, 1.05, 30, 4 );

--18号ジャンプ
SE023 = playSeVer2( spep_3 + 282, 1207, "",spep_3 + 354, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 282, SE023, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 312 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 312;


------------------------------------------------------
-- 殴る16号〜カードカットイン(100F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_4 + 0, SP_05r, 100, 0x100, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで ef_004
setEffMoveKey( spep_4 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 100, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 100 -1, tame_f, 255 );
setEffAlphaKey( spep_4 + 100, tame_f, 0 );

tame_b = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで  ef_005
setEffMoveKey( spep_4 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 100, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 100 -1, tame_b, 255 );
setEffAlphaKey( spep_4 + 100, tame_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 52, 1, 1 );
changeAnime( spep_4 -3 + 52, 1, 105 );

setMoveKey( spep_4 -3 + 52, 1, -43.1, -123.3 , 0 );
setMoveKey( spep_4 -3 + 53, 1, -43.1, -123.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -44.4, -124.7 , 0 );
setMoveKey( spep_4 -3 + 55, 1, -44.4, -124.7 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -48.2, -134.5 , 0 );
setMoveKey( spep_4 -3 + 57, 1, -48.2, -134.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -54.5, -152.1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, -54.5, -152.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -71.3, -203.6 , 0 );
setMoveKey( spep_4 -3 + 61, 1, -71.3, -203.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -68.6, -255.6 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -68.6, -255.6 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -71.3, -189.8 , 0 );
setMoveKey( spep_4 -3 + 65, 1, -71.3, -189.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -60.7, -146.1 , 0 );
setMoveKey( spep_4 -3 + 67, 1, -60.7, -146.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -76.8, -235.7 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -76.8, -235.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -60.5, -168.9 , 0 );
setMoveKey( spep_4 -3 + 71, 1, -60.5, -168.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -47, -122.7 , 0 );
setMoveKey( spep_4 -3 + 73, 1, -47, -122.7 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -67.5, -157.4 , 0 );
setMoveKey( spep_4 -3 + 75, 1, -67.5, -157.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -44.4, -163.8 , 0 );
setMoveKey( spep_4 -3 + 77, 1, -44.4, -163.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -55.6, -135.6 , 0 );
setMoveKey( spep_4 -3 + 79, 1, -55.6, -135.6 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -36.3, -96.5 , 0 );
setMoveKey( spep_4 -3 + 81, 1, -36.3, -96.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -32.1, -50.1 , 0 );
setMoveKey( spep_4 -3 + 83, 1, -32.1, -50.1 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -15.5, -1.4 , 0 );
setMoveKey( spep_4 -3 + 85, 1, -15.5, -1.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -8.9, 20.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -5, 19 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -9.4, 23 , 0 );
setMoveKey( spep_4 -3 + 92, 1, -7, 17.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, -10.7, 20.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, -4.6, 25 , 0 );
setMoveKey( spep_4 -3 + 98, 1, -4.6, 25.1 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -4.6, 25.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, -4.5, 25.2 , 0 );

setScaleKey( spep_4 -3 + 52, 1, 2.898, 2.898 );
setScaleKey( spep_4 -3 + 53, 1, 2.898, 2.898 );
setScaleKey( spep_4 -3 + 54, 1, 2.907, 2.907 );
setScaleKey( spep_4 -3 + 55, 1, 2.907, 2.907 );
setScaleKey( spep_4 -3 + 56, 1, 3.096, 3.096 );
setScaleKey( spep_4 -3 + 57, 1, 3.096, 3.096 );
setScaleKey( spep_4 -3 + 58, 1, 3.465, 3.465 );
setScaleKey( spep_4 -3 + 59, 1, 3.465, 3.465 );
setScaleKey( spep_4 -3 + 60, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 61, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 62, 1, 5.823, 5.823 );
setScaleKey( spep_4 -3 + 63, 1, 5.823, 5.823 );
setScaleKey( spep_4 -3 + 64, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 65, 1, 4.572, 4.572 );
setScaleKey( spep_4 -3 + 66, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 67, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 68, 1, 4.995, 4.995 );
setScaleKey( spep_4 -3 + 69, 1, 4.995, 4.995 );
setScaleKey( spep_4 -3 + 70, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 71, 1, 3.33, 3.33 );
setScaleKey( spep_4 -3 + 72, 1, 3.285, 3.285 );
setScaleKey( spep_4 -3 + 73, 1, 3.285, 3.285 );
setScaleKey( spep_4 -3 + 74, 1, 3.249, 3.249 );
setScaleKey( spep_4 -3 + 75, 1, 3.249, 3.249 );
setScaleKey( spep_4 -3 + 76, 1, 3.213, 3.213 );
setScaleKey( spep_4 -3 + 77, 1, 3.213, 3.213 );
setScaleKey( spep_4 -3 + 78, 1, 3.186, 3.186 );
setScaleKey( spep_4 -3 + 79, 1, 3.186, 3.186 );
setScaleKey( spep_4 -3 + 80, 1, 2.484, 2.484 );
setScaleKey( spep_4 -3 + 81, 1, 2.484, 2.484 );
setScaleKey( spep_4 -3 + 82, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 83, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 84, 1, 1.125, 1.125 );
setScaleKey( spep_4 -3 + 85, 1, 1.125, 1.125 );
setScaleKey( spep_4 -3 + 86, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 88, 1, 0.513, 0.513 );
setScaleKey( spep_4 -3 + 90, 1, 0.486, 0.486 );
setScaleKey( spep_4 -3 + 92, 1, 0.459, 0.459 );
setScaleKey( spep_4 -3 + 94, 1, 0.441, 0.441 );
setScaleKey( spep_4 -3 + 96, 1, 0.432, 0.432 );
setScaleKey( spep_4 -3 + 98, 1, 0.423, 0.423 );
setScaleKey( spep_4 -3 + 100, 1, 0.414, 0.414 );
setScaleKey( spep_4 -3 + 102, 1, 0.414, 0.414 );

setRotateKey( spep_4 -3 + 52, 1, 6.3 );
setRotateKey( spep_4 -3 + 102, 1, 6.3 );

-- ** 音 ** --
--振りかぶる
SE024 = playSeVer2( spep_4 + 18, 1116, "",spep_4 + 62, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 18, SE024, 146 );
SE025 = playSeVer2( spep_4 + 24, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 24, SE025, 132 );

--16号パンチ
SE026 = playSeVer2( spep_4 + 60, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE026, 78 );
SE027 = playSeVer2( spep_4 + 60, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE027, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 100, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_5    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_5    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_5    + 0, 1, 0 );
setRotateKey( spep_5    + 1, 1, 105 );
setRotateKey( spep_5    + 2, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE029 = playSeVer2( spep_5 + 8, 1054, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_5 + 8, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );


end