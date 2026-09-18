--1021960タピオン&ミノシア_ブレイブヒートアタック(簡易版)_sp2181
--sp_effect_b2_00040

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
SP_01 = 157177;     --気をためる ef_001
SP_02 = 157178;     --気弾連射〜敵が岩山激突   ef_002_front
SP_03 = 157180;     --気弾連射〜敵が岩山激突   ef_002_back

--敵側
SP_02r = 157179;    --気弾連射〜敵が岩山激突   ef_002_front_re
SP_03r = 157181;    --気弾連射〜敵が岩山激突   ef_002_back_re

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
-- 気をためる(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --気をためる    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
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
--SE
--顔カットイン
SE001 = playSe( spep_x + 8, 1018 );

--タピオン気弾溜め
SE002 = playSe( spep_0 + 8, 1239 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 126 );
--stopSe( spep_0 + 94, SE002, 14 );
stopSe( spep_0 + 86, SE002, 14 );
SE003 = playSe( spep_0 + 8, 1199 );
SE004 = playSe( spep_0 + 8, 1262 );
setSeVolumeByWorkId( spep_0 + 8, SE004, 141 );
SE005 = playSe( spep_0 + 8, 1295 );
setSeVolumeByWorkId( spep_0 + 8, SE005, 77 );
--stopSe( spep_0 + 98, SE005, 12 );
stopSe( spep_0 + 86, SE005, 12 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
-- 気弾連射〜敵が岩山激突(376F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --気弾連射〜敵が岩山激突 ef_002_front
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 376, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 376, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 376, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 376, finish_f, 255 );

fininsh_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --気弾連射〜敵が岩山激突 ef_002_back
setEffMoveKey( spep_2 + 0, fininsh_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 376, fininsh_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fininsh_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 376, fininsh_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fininsh_b, 0 );
setEffRotateKey( spep_2 + 376, fininsh_b, 0 );
setEffAlphaKey( spep_2 + 0, fininsh_b, 255 );
setEffAlphaKey( spep_2 + 376, fininsh_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 70, 1, 1 );
changeAnime( spep_2 -3 + 70, 1, 0 );

setMoveKey( spep_2 -3 + 70, 1, 225.4, -21.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 221.9, -20.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 218.3, -20.2 , 0 );

setScaleKey( spep_2 -3 + 70, 1, -0.41, 0.41 );
setScaleKey( spep_2 -3 + 72, 1, -0.45, 0.45 );
setScaleKey( spep_2 -3 + 74, 1, -0.49, 0.49 );

setRotateKey( spep_2 -3 + 70, 1, -3.7 );

-- ** 音 ** --
--連続気弾
SE006 = playSe( spep_2 + 2, 1155 );
stopSe( spep_2 + 24, SE006, 4 );
SE007 = playSe( spep_2 + 4, 1027 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 41 );
stopSe( spep_2 + 16, SE007, 12 );
SE008 = playSe( spep_2 + 6, 1016 );
setSeVolumeByWorkId( spep_2 + 6, SE008, 122 );
stopSe( spep_2 + 24, SE008, 4 );
SE009 = playSe( spep_2 + 16, 1155 );
stopSe( spep_2 + 38, SE009, 8 );
SE010 = playSe( spep_2 + 18, 1027 );
setSeVolumeByWorkId( spep_2 + 18, SE010, 43 );
stopSe( spep_2 + 30, SE010, 10 );
SE011 = playSe( spep_2 + 20, 1016 );
stopSe( spep_2 + 38, SE011, 8 );
SE012 = playSe( spep_2 + 32, 1155 );
SE013 = playSe( spep_2 + 34, 1027 );
setSeVolumeByWorkId( spep_2 + 34, SE013, 43 );

----連続気弾
stopSe( spep_2 + 54, SE012, 4 );
stopSe( spep_2 + 46, SE013, 8 );
SE014 = playSe( spep_2 + 36, 1016 );
stopSe( spep_2 + 54, SE014, 4 );
SE015 = playSe( spep_2 + 46, 1155 );
stopSe( spep_2 + 64, SE015, 6 );
SE016 = playSe( spep_2 + 48, 1027 );
setSeVolumeByWorkId( spep_2 + 48, SE016, 42 );
stopSe( spep_2 + 58, SE016, 14 );
SE017 = playSe( spep_2 + 50, 1016 );
stopSe( spep_2 + 64, SE017, 6 );
SE018 = playSe( spep_2 + 58, 1155 );
stopSe( spep_2 + 94, SE018, 6 );
SE019 = playSe( spep_2 + 60, 1027 );
setSeVolumeByWorkId( spep_2 + 60, SE019, 42 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 376 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 72 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 218.3, -20.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 214.7, -19.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 211.1, -18.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 207.5, -18.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 203.9, -17.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 200.3, -16.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, -0.49, 0.49 );
    setScaleKey( SP_dodge + 2, 1, -0.53, 0.53 );
    setScaleKey( SP_dodge + 4, 1, -0.57, 0.57 );
    setScaleKey( SP_dodge + 6, 1, -0.61, 0.61 );
    setScaleKey( SP_dodge + 8, 1, -0.65, 0.65 );
    setScaleKey( SP_dodge + 10, 1, -0.69, 0.69 );

    setRotateKey( SP_dodge + 0, 1, -3.7 );
    setRotateKey( SP_dodge + 10, 1, -3.7 );    
    
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
setDisp( spep_2 -3 + 150, 1, 0 );

setDisp( spep_2 -3 + 196, 1, 1 );
setDisp( spep_2 -3 + 280, 1, 0 );
changeAnime( spep_2 -3 + 96, 1, 4 );
changeAnime( spep_2 -3 + 132, 1, 5 );
changeAnime( spep_2 -3 + 196, 1, 6 );
changeAnime( spep_2 -3 + 204, 1, 8 );

setMoveKey( spep_2 -3 + 76, 1, 214.7, -19.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 211.1, -18.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 207.5, -18.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 203.9, -17.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 200.3, -16.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 196.7, -16.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 193.1, -15.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 189.5, -14.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 185.9, -14.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 182.3, -13.6 , 0 )
setMoveKey( spep_2 -3 + 95, 1, 182.3, -13.6 , 0 )--
setMoveKey( spep_2 -3 + 96, 1, 178.7, -12.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 175.1, -12.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 184.8, -37.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 160.6, -50.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 153.6, -46 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 145.5, -44.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 143.8, -39.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 131.1, -40.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 136.3, -45.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 131, -47 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 137.6, -41.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 130.7, -43.7 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 127.5, -51.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 112.4, -38.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 103, -48.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 104.8, -47.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 104.5, -38.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 105.1, -36.1 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 105.1, -36.1 , 0 );--
setMoveKey( spep_2 -3 + 132, 1, 117.4, -1.4 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 143.9, -1.4 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 163.7, -1.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 177.9, -1.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 187.5, -1.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 193.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 196.2, -1.5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 197.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 197.5, -1.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 197.5, -1.5 , 0 );--
--
setMoveKey( spep_2 -3 + 196, 1, 681.8, 348 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 535.3, 272 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 388.8, 196 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 242.4, 120 , 0 );
setMoveKey( spep_2 -3 + 203, 1, 242.4, 120 , 0 );--
setMoveKey( spep_2 -3 + 204, 1, 95.9, 44 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 95.9, 44 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 86.9, 53.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 97.9, 43.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 102, 39.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 103.2, 46.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 99.2, 32.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 95.5, 44.6 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 103.9, 27.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 113.7, 38.2 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 118.8, 36.5 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 122.1, 35.4 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 124.1, 34.7 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 125.2, 34.4 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 125.8, 34.2 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 126, 34.1 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 126, 34.1 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 125.9, 34.1 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 125.7, 34.1 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 125.4, 34 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 124.7, 33.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 123.8, 33.8 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 122.5, 33.6 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 120.8, 33.4 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 118.6, 33 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 115.8, 32.6 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 112.4, 32.2 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 108.4, 31.6 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 103.6, 30.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 98, 30.1 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 91.5, 29.1 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 84.2, 28.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 75.8, 26.9 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 66.4, 25.5 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 50.2, 28.5 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 44.5, 33 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 44.5, 33 , 0 );


setScaleKey( spep_2 -3 + 76, 1, -0.53, 0.53 );
setScaleKey( spep_2 -3 + 78, 1, -0.57, 0.57 );
setScaleKey( spep_2 -3 + 80, 1, -0.61, 0.61 );
setScaleKey( spep_2 -3 + 82, 1, -0.65, 0.65 );
setScaleKey( spep_2 -3 + 84, 1, -0.69, 0.69 );
setScaleKey( spep_2 -3 + 86, 1, -0.73, 0.73 );
setScaleKey( spep_2 -3 + 88, 1, -0.77, 0.77 );
setScaleKey( spep_2 -3 + 90, 1, -0.81, 0.81 );
setScaleKey( spep_2 -3 + 92, 1, -0.85, 0.85 );
setScaleKey( spep_2 -3 + 94, 1, -0.89, 0.89 );
setScaleKey( spep_2 -3 + 95, 1, -0.89, 0.89 );
setScaleKey( spep_2 -3 + 96, 1, -0.93, 0.93 );
setScaleKey( spep_2 -3 + 98, 1, -0.97, 0.97 );
setScaleKey( spep_2 -3 + 100, 1, -1.01, 1.01 );
setScaleKey( spep_2 -3 + 102, 1, -1.05, 1.05 );
setScaleKey( spep_2 -3 + 104, 1, -1.09, 1.09 );
setScaleKey( spep_2 -3 + 106, 1, -1.13, 1.13 );
setScaleKey( spep_2 -3 + 108, 1, -1.17, 1.17 );
setScaleKey( spep_2 -3 + 110, 1, -1.21, 1.21 );
setScaleKey( spep_2 -3 + 112, 1, -1.25, 1.25 );
setScaleKey( spep_2 -3 + 114, 1, -1.29, 1.29 );
setScaleKey( spep_2 -3 + 116, 1, -1.33, 1.33 );
setScaleKey( spep_2 -3 + 118, 1, -1.37, 1.37 );
setScaleKey( spep_2 -3 + 120, 1, -1.41, 1.41 );
setScaleKey( spep_2 -3 + 122, 1, -1.46, 1.46 );
setScaleKey( spep_2 -3 + 124, 1, -1.5, 1.5 );
setScaleKey( spep_2 -3 + 126, 1, -1.54, 1.54 );
setScaleKey( spep_2 -3 + 128, 1, -1.58, 1.58 );
setScaleKey( spep_2 -3 + 130, 1, -1.62, 1.62 );
setScaleKey( spep_2 -3 + 131, 1, -1.62, 1.62 );--
setScaleKey( spep_2 -3 + 132, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 134, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 136, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 138, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 140, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 144, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 146, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 150, 1, 0.65, 0.65 );
--
setScaleKey( spep_2 -3 + 196, 1, -1.8, 1.8 );
setScaleKey( spep_2 -3 + 203, 1, -1.8, 1.8 );--
setScaleKey( spep_2 -3 + 204, 1, -2.25, 2.25 );
setScaleKey( spep_2 -3 + 218, 1, -2.25, 2.25 );
setScaleKey( spep_2 -3 + 220, 1, -1.86, 1.86 );
setScaleKey( spep_2 -3 + 222, 1, -1.57, 1.57 );
setScaleKey( spep_2 -3 + 224, 1, -1.37, 1.37 );
setScaleKey( spep_2 -3 + 226, 1, -1.25, 1.25 );
setScaleKey( spep_2 -3 + 228, 1, -1.17, 1.17 );
setScaleKey( spep_2 -3 + 230, 1, -1.12, 1.12 );
setScaleKey( spep_2 -3 + 232, 1, -1.11, 1.11 );
setScaleKey( spep_2 -3 + 234, 1, -1.1, 1.1 );
setScaleKey( spep_2 -3 + 246, 1, -1.1, 1.1 );
setScaleKey( spep_2 -3 + 248, 1, -1.08, 1.08 );
setScaleKey( spep_2 -3 + 252, 1, -1.08, 1.08 );
setScaleKey( spep_2 -3 + 254, 1, -1.07, 1.07 );
setScaleKey( spep_2 -3 + 256, 1, -1.06, 1.06 );
setScaleKey( spep_2 -3 + 258, 1, -1.05, 1.05 );
setScaleKey( spep_2 -3 + 260, 1, -1.03, 1.03 );
setScaleKey( spep_2 -3 + 262, 1, -1.01, 1.01 );
setScaleKey( spep_2 -3 + 264, 1, -0.98, 0.98 );
setScaleKey( spep_2 -3 + 266, 1, -0.96, 0.96 );
setScaleKey( spep_2 -3 + 268, 1, -0.93, 0.93 );
setScaleKey( spep_2 -3 + 270, 1, -0.9, 0.9 );
setScaleKey( spep_2 -3 + 272, 1, -0.85, 0.85 );
setScaleKey( spep_2 -3 + 274, 1, -0.81, 0.81 );
setScaleKey( spep_2 -3 + 276, 1, -0.76, 0.76 );
setScaleKey( spep_2 -3 + 280, 1, -0.76, 0.76 );


setRotateKey( spep_2 -3 + 96, 1, -3.7 );
setRotateKey( spep_2 -3 + 131, 1, -3.7 );--
setRotateKey( spep_2 -3 + 132, 1, 70.4 );
setRotateKey( spep_2 -3 + 134, 1, 78.1 );
setRotateKey( spep_2 -3 + 136, 1, 83.9 );
setRotateKey( spep_2 -3 + 138, 1, 88.1 );
setRotateKey( spep_2 -3 + 140, 1, 90.8 );
setRotateKey( spep_2 -3 + 142, 1, 92.5 );
setRotateKey( spep_2 -3 + 144, 1, 93.4 );
setRotateKey( spep_2 -3 + 146, 1, 93.7 );
setRotateKey( spep_2 -3 + 150, 1, 93.7 );
--
setRotateKey( spep_2 -3 + 196, 1, -17.7 );
setRotateKey( spep_2 -3 + 204, 1, -17.7 );
setRotateKey( spep_2 -3 + 244, 1, -17.7 );
setRotateKey( spep_2 -3 + 246, 1, -17.8 );
setRotateKey( spep_2 -3 + 248, 1, -17.9 );
setRotateKey( spep_2 -3 + 250, 1, -18.1 );
setRotateKey( spep_2 -3 + 252, 1, -18.4 );
setRotateKey( spep_2 -3 + 254, 1, -18.8 );
setRotateKey( spep_2 -3 + 256, 1, -19.2 );
setRotateKey( spep_2 -3 + 258, 1, -19.8 );
setRotateKey( spep_2 -3 + 260, 1, -20.5 );
setRotateKey( spep_2 -3 + 262, 1, -21.4 );
setRotateKey( spep_2 -3 + 264, 1, -22.4 );
setRotateKey( spep_2 -3 + 266, 1, -23.6 );
setRotateKey( spep_2 -3 + 268, 1, -24.9 );
setRotateKey( spep_2 -3 + 270, 1, -26.4 );
setRotateKey( spep_2 -3 + 272, 1, -28.2 );
setRotateKey( spep_2 -3 + 274, 1, -30.2 );
setRotateKey( spep_2 -3 + 276, 1, -32.4 );
setRotateKey( spep_2 -3 + 280, 1, -32.4 );

-- ** 音 ** --
----連続気弾
SE020 = playSe( spep_2 + 64, 1016 );

--気弾飛んでいく
SE021 = playSe( spep_2 + 64, 1021 );
setSeVolumeByWorkId( spep_2 + 62, SE021, 78 );

--気弾ヒット
SE022 = playSe( spep_2 + 88, 1023 );
SE023 = playSe( spep_2 + 102, 1014 );
setSeVolumeByWorkId( spep_2 + 102, SE023, 77 );
stopSe( spep_2 + 118, SE023, 18 );
SE024 = playSe( spep_2 + 112, 1014 );
setSeVolumeByWorkId( spep_2 + 112, SE024, 80 );
stopSe( spep_2 + 132, SE024, 18 );
SE025 = playSe( spep_2 + 122, 1011 );

--ミノシア迫ってくる
SE026 = playSe( spep_2 + 140, 1167 );
setSeVolumeByWorkId( spep_2 + 140, SE026, 45 );
SE027 = playSe( spep_2 + 140, 1182 );
SE028 = playSe( spep_2 + 140, 1183 );
stopSe( spep_2 + 196, SE028, 4 );

--ミノシア突き
SE029 = playSe( spep_2 + 192, 1180 );
setSeVolumeByWorkId( spep_2 + 196, SE029, 0 );
setSeVolumeByWorkId( spep_2 + 197, SE029, 25 );
setSeVolumeByWorkId( spep_2 + 198, SE029, 50 );
setSeVolumeByWorkId( spep_2 + 199, SE029, 75 );
setSeVolumeByWorkId( spep_2 + 200, SE029, 100 );
setStartTimeMs( SE029,  550 );
setPitch( spep_2 + 192, SE029, 500 );
setTimeStretch( SE029, 1.33, 10, 1 );
SE030 = playSe( spep_2 + 198, 1141 );
setSeVolumeByWorkId( spep_2 + 202, SE030, 100 );
SE031 = playSe( spep_2 + 198, 1142 );
SE032 = playSe( spep_2 + 200, 1032 );

--敵飛んでいく
SE033 = playSe( spep_2 + 214, 1121 );
setSeVolumeByWorkId( spep_2 + 214, SE033, 53 );
stopSe( spep_2 + 270, SE033, 8 );
SE034 = playSe( spep_2 + 214, 1183 );
setSeVolumeByWorkId( spep_2 + 214, SE034, 66 );
stopSe( spep_2 + 270, SE034, 8 );

--岩激突
SE035 = playSe( spep_2 + 268, 1159 );
setSeVolumeByWorkId( spep_2 + 268, SE035, 72 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 266 );
endPhase( spep_2 + 366 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気をためる(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --気をためる    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--SE
--顔カットイン
SE001 = playSe( spep_x + 8, 1018 );

--タピオン気弾溜め
SE002 = playSe( spep_0 + 8, 1239 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 126 );
--stopSe( spep_0 + 94, SE002, 14 );
stopSe( spep_0 + 86, SE002, 14 );
SE003 = playSe( spep_0 + 8, 1199 );
SE004 = playSe( spep_0 + 8, 1262 );
setSeVolumeByWorkId( spep_0 + 8, SE004, 141 );
SE005 = playSe( spep_0 + 8, 1295 );
setSeVolumeByWorkId( spep_0 + 8, SE005, 77 );
--stopSe( spep_0 + 98, SE005, 12 );
stopSe( spep_0 + 86, SE005, 12 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
-- 気弾連射〜敵が岩山激突(376F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --気弾連射〜敵が岩山激突 ef_002_front
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 376, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 376, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 376, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 376, finish_f, 255 );

fininsh_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --気弾連射〜敵が岩山激突 ef_002_back
setEffMoveKey( spep_2 + 0, fininsh_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 376, fininsh_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fininsh_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 376, fininsh_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fininsh_b, 0 );
setEffRotateKey( spep_2 + 376, fininsh_b, 0 );
setEffAlphaKey( spep_2 + 0, fininsh_b, 255 );
setEffAlphaKey( spep_2 + 376, fininsh_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 70, 1, 1 );
changeAnime( spep_2 -3 + 70, 1, 0 );

setMoveKey( spep_2 -3 + 70, 1, 225.4, -21.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 221.9, -20.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 218.3, -20.2 , 0 );

setScaleKey( spep_2 -3 + 70, 1, -0.41, 0.41 );
setScaleKey( spep_2 -3 + 72, 1, -0.45, 0.45 );
setScaleKey( spep_2 -3 + 74, 1, -0.49, 0.49 );

setRotateKey( spep_2 -3 + 70, 1, -3.7 );

-- ** 音 ** --
--連続気弾
SE006 = playSe( spep_2 + 2, 1155 );
stopSe( spep_2 + 24, SE006, 4 );
SE007 = playSe( spep_2 + 4, 1027 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 41 );
stopSe( spep_2 + 16, SE007, 12 );
SE008 = playSe( spep_2 + 6, 1016 );
setSeVolumeByWorkId( spep_2 + 6, SE008, 122 );
stopSe( spep_2 + 24, SE008, 4 );
SE009 = playSe( spep_2 + 16, 1155 );
stopSe( spep_2 + 38, SE009, 8 );
SE010 = playSe( spep_2 + 18, 1027 );
setSeVolumeByWorkId( spep_2 + 18, SE010, 43 );
stopSe( spep_2 + 30, SE010, 10 );
SE011 = playSe( spep_2 + 20, 1016 );
stopSe( spep_2 + 38, SE011, 8 );
SE012 = playSe( spep_2 + 32, 1155 );
SE013 = playSe( spep_2 + 34, 1027 );
setSeVolumeByWorkId( spep_2 + 34, SE013, 43 );

----連続気弾
stopSe( spep_2 + 54, SE012, 4 );
stopSe( spep_2 + 46, SE013, 8 );
SE014 = playSe( spep_2 + 36, 1016 );
stopSe( spep_2 + 54, SE014, 4 );
SE015 = playSe( spep_2 + 46, 1155 );
stopSe( spep_2 + 64, SE015, 6 );
SE016 = playSe( spep_2 + 48, 1027 );
setSeVolumeByWorkId( spep_2 + 48, SE016, 42 );
stopSe( spep_2 + 58, SE016, 14 );
SE017 = playSe( spep_2 + 50, 1016 );
stopSe( spep_2 + 64, SE017, 6 );
SE018 = playSe( spep_2 + 58, 1155 );
stopSe( spep_2 + 94, SE018, 6 );
SE019 = playSe( spep_2 + 60, 1027 );
setSeVolumeByWorkId( spep_2 + 60, SE019, 42 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 376 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 72 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 218.3, -20.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 214.7, -19.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 211.1, -18.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 207.5, -18.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 203.9, -17.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 200.3, -16.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, -0.49, 0.49 );
    setScaleKey( SP_dodge + 2, 1, -0.53, 0.53 );
    setScaleKey( SP_dodge + 4, 1, -0.57, 0.57 );
    setScaleKey( SP_dodge + 6, 1, -0.61, 0.61 );
    setScaleKey( SP_dodge + 8, 1, -0.65, 0.65 );
    setScaleKey( SP_dodge + 10, 1, -0.69, 0.69 );

    setRotateKey( SP_dodge + 0, 1, -3.7 );
    setRotateKey( SP_dodge + 10, 1, -3.7 );    
    
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
setDisp( spep_2 -3 + 150, 1, 0 );

setDisp( spep_2 -3 + 196, 1, 1 );
setDisp( spep_2 -3 + 280, 1, 0 );
changeAnime( spep_2 -3 + 96, 1, 4 );
changeAnime( spep_2 -3 + 132, 1, 5 );
changeAnime( spep_2 -3 + 196, 1, 6 );
changeAnime( spep_2 -3 + 204, 1, 8 );

setMoveKey( spep_2 -3 + 76, 1, 214.7, -19.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 211.1, -18.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 207.5, -18.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 203.9, -17.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 200.3, -16.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 196.7, -16.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 193.1, -15.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 189.5, -14.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 185.9, -14.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 182.3, -13.6 , 0 )
setMoveKey( spep_2 -3 + 95, 1, 182.3, -13.6 , 0 )--
setMoveKey( spep_2 -3 + 96, 1, 178.7, -12.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 175.1, -12.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 184.8, -37.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 160.6, -50.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 153.6, -46 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 145.5, -44.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 143.8, -39.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 131.1, -40.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 136.3, -45.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 131, -47 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 137.6, -41.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 130.7, -43.7 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 127.5, -51.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 112.4, -38.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 103, -48.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 104.8, -47.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 104.5, -38.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 105.1, -36.1 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 105.1, -36.1 , 0 );--
setMoveKey( spep_2 -3 + 132, 1, 117.4, -1.4 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 143.9, -1.4 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 163.7, -1.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 177.9, -1.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 187.5, -1.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 193.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 196.2, -1.5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 197.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 197.5, -1.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 197.5, -1.5 , 0 );--
--
setMoveKey( spep_2 -3 + 196, 1, 681.8, 348 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 535.3, 272 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 388.8, 196 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 242.4, 120 , 0 );
setMoveKey( spep_2 -3 + 203, 1, 242.4, 120 , 0 );--
setMoveKey( spep_2 -3 + 204, 1, 95.9, 44 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 95.9, 44 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 86.9, 53.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 97.9, 43.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 102, 39.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 103.2, 46.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 99.2, 32.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 95.5, 44.6 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 103.9, 27.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 113.7, 38.2 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 118.8, 36.5 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 122.1, 35.4 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 124.1, 34.7 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 125.2, 34.4 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 125.8, 34.2 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 126, 34.1 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 126, 34.1 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 125.9, 34.1 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 125.7, 34.1 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 125.4, 34 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 124.7, 33.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 123.8, 33.8 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 122.5, 33.6 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 120.8, 33.4 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 118.6, 33 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 115.8, 32.6 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 112.4, 32.2 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 108.4, 31.6 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 103.6, 30.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 98, 30.1 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 91.5, 29.1 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 84.2, 28.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 75.8, 26.9 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 66.4, 25.5 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 50.2, 28.5 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 44.5, 33 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 44.5, 33 , 0 );


setScaleKey( spep_2 -3 + 76, 1, -0.53, 0.53 );
setScaleKey( spep_2 -3 + 78, 1, -0.57, 0.57 );
setScaleKey( spep_2 -3 + 80, 1, -0.61, 0.61 );
setScaleKey( spep_2 -3 + 82, 1, -0.65, 0.65 );
setScaleKey( spep_2 -3 + 84, 1, -0.69, 0.69 );
setScaleKey( spep_2 -3 + 86, 1, -0.73, 0.73 );
setScaleKey( spep_2 -3 + 88, 1, -0.77, 0.77 );
setScaleKey( spep_2 -3 + 90, 1, -0.81, 0.81 );
setScaleKey( spep_2 -3 + 92, 1, -0.85, 0.85 );
setScaleKey( spep_2 -3 + 94, 1, -0.89, 0.89 );
setScaleKey( spep_2 -3 + 95, 1, -0.89, 0.89 );
setScaleKey( spep_2 -3 + 96, 1, -0.93, 0.93 );
setScaleKey( spep_2 -3 + 98, 1, -0.97, 0.97 );
setScaleKey( spep_2 -3 + 100, 1, -1.01, 1.01 );
setScaleKey( spep_2 -3 + 102, 1, -1.05, 1.05 );
setScaleKey( spep_2 -3 + 104, 1, -1.09, 1.09 );
setScaleKey( spep_2 -3 + 106, 1, -1.13, 1.13 );
setScaleKey( spep_2 -3 + 108, 1, -1.17, 1.17 );
setScaleKey( spep_2 -3 + 110, 1, -1.21, 1.21 );
setScaleKey( spep_2 -3 + 112, 1, -1.25, 1.25 );
setScaleKey( spep_2 -3 + 114, 1, -1.29, 1.29 );
setScaleKey( spep_2 -3 + 116, 1, -1.33, 1.33 );
setScaleKey( spep_2 -3 + 118, 1, -1.37, 1.37 );
setScaleKey( spep_2 -3 + 120, 1, -1.41, 1.41 );
setScaleKey( spep_2 -3 + 122, 1, -1.46, 1.46 );
setScaleKey( spep_2 -3 + 124, 1, -1.5, 1.5 );
setScaleKey( spep_2 -3 + 126, 1, -1.54, 1.54 );
setScaleKey( spep_2 -3 + 128, 1, -1.58, 1.58 );
setScaleKey( spep_2 -3 + 130, 1, -1.62, 1.62 );
setScaleKey( spep_2 -3 + 131, 1, -1.62, 1.62 );--
setScaleKey( spep_2 -3 + 132, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 134, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 136, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 138, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 140, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 144, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 146, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 150, 1, 0.65, 0.65 );
--
setScaleKey( spep_2 -3 + 196, 1, -1.8, 1.8 );
setScaleKey( spep_2 -3 + 203, 1, -1.8, 1.8 );--
setScaleKey( spep_2 -3 + 204, 1, -2.25, 2.25 );
setScaleKey( spep_2 -3 + 218, 1, -2.25, 2.25 );
setScaleKey( spep_2 -3 + 220, 1, -1.86, 1.86 );
setScaleKey( spep_2 -3 + 222, 1, -1.57, 1.57 );
setScaleKey( spep_2 -3 + 224, 1, -1.37, 1.37 );
setScaleKey( spep_2 -3 + 226, 1, -1.25, 1.25 );
setScaleKey( spep_2 -3 + 228, 1, -1.17, 1.17 );
setScaleKey( spep_2 -3 + 230, 1, -1.12, 1.12 );
setScaleKey( spep_2 -3 + 232, 1, -1.11, 1.11 );
setScaleKey( spep_2 -3 + 234, 1, -1.1, 1.1 );
setScaleKey( spep_2 -3 + 246, 1, -1.1, 1.1 );
setScaleKey( spep_2 -3 + 248, 1, -1.08, 1.08 );
setScaleKey( spep_2 -3 + 252, 1, -1.08, 1.08 );
setScaleKey( spep_2 -3 + 254, 1, -1.07, 1.07 );
setScaleKey( spep_2 -3 + 256, 1, -1.06, 1.06 );
setScaleKey( spep_2 -3 + 258, 1, -1.05, 1.05 );
setScaleKey( spep_2 -3 + 260, 1, -1.03, 1.03 );
setScaleKey( spep_2 -3 + 262, 1, -1.01, 1.01 );
setScaleKey( spep_2 -3 + 264, 1, -0.98, 0.98 );
setScaleKey( spep_2 -3 + 266, 1, -0.96, 0.96 );
setScaleKey( spep_2 -3 + 268, 1, -0.93, 0.93 );
setScaleKey( spep_2 -3 + 270, 1, -0.9, 0.9 );
setScaleKey( spep_2 -3 + 272, 1, -0.85, 0.85 );
setScaleKey( spep_2 -3 + 274, 1, -0.81, 0.81 );
setScaleKey( spep_2 -3 + 276, 1, -0.76, 0.76 );
setScaleKey( spep_2 -3 + 280, 1, -0.76, 0.76 );


setRotateKey( spep_2 -3 + 96, 1, -3.7 );
setRotateKey( spep_2 -3 + 131, 1, -3.7 );--
setRotateKey( spep_2 -3 + 132, 1, 70.4 );
setRotateKey( spep_2 -3 + 134, 1, 78.1 );
setRotateKey( spep_2 -3 + 136, 1, 83.9 );
setRotateKey( spep_2 -3 + 138, 1, 88.1 );
setRotateKey( spep_2 -3 + 140, 1, 90.8 );
setRotateKey( spep_2 -3 + 142, 1, 92.5 );
setRotateKey( spep_2 -3 + 144, 1, 93.4 );
setRotateKey( spep_2 -3 + 146, 1, 93.7 );
setRotateKey( spep_2 -3 + 150, 1, 93.7 );
--
setRotateKey( spep_2 -3 + 196, 1, -17.7 );
setRotateKey( spep_2 -3 + 204, 1, -17.7 );
setRotateKey( spep_2 -3 + 244, 1, -17.7 );
setRotateKey( spep_2 -3 + 246, 1, -17.8 );
setRotateKey( spep_2 -3 + 248, 1, -17.9 );
setRotateKey( spep_2 -3 + 250, 1, -18.1 );
setRotateKey( spep_2 -3 + 252, 1, -18.4 );
setRotateKey( spep_2 -3 + 254, 1, -18.8 );
setRotateKey( spep_2 -3 + 256, 1, -19.2 );
setRotateKey( spep_2 -3 + 258, 1, -19.8 );
setRotateKey( spep_2 -3 + 260, 1, -20.5 );
setRotateKey( spep_2 -3 + 262, 1, -21.4 );
setRotateKey( spep_2 -3 + 264, 1, -22.4 );
setRotateKey( spep_2 -3 + 266, 1, -23.6 );
setRotateKey( spep_2 -3 + 268, 1, -24.9 );
setRotateKey( spep_2 -3 + 270, 1, -26.4 );
setRotateKey( spep_2 -3 + 272, 1, -28.2 );
setRotateKey( spep_2 -3 + 274, 1, -30.2 );
setRotateKey( spep_2 -3 + 276, 1, -32.4 );
setRotateKey( spep_2 -3 + 280, 1, -32.4 );

-- ** 音 ** --
----連続気弾
SE020 = playSe( spep_2 + 64, 1016 );

--気弾飛んでいく
SE021 = playSe( spep_2 + 64, 1021 );
setSeVolumeByWorkId( spep_2 + 62, SE021, 78 );

--気弾ヒット
SE022 = playSe( spep_2 + 88, 1023 );
SE023 = playSe( spep_2 + 102, 1014 );
setSeVolumeByWorkId( spep_2 + 102, SE023, 77 );
stopSe( spep_2 + 118, SE023, 18 );
SE024 = playSe( spep_2 + 112, 1014 );
setSeVolumeByWorkId( spep_2 + 112, SE024, 80 );
stopSe( spep_2 + 132, SE024, 18 );
SE025 = playSe( spep_2 + 122, 1011 );

--ミノシア迫ってくる
SE026 = playSe( spep_2 + 140, 1167 );
setSeVolumeByWorkId( spep_2 + 140, SE026, 45 );
SE027 = playSe( spep_2 + 140, 1182 );
SE028 = playSe( spep_2 + 140, 1183 );
stopSe( spep_2 + 196, SE028, 4 );

--ミノシア突き
SE029 = playSe( spep_2 + 192, 1180 );
setSeVolumeByWorkId( spep_2 + 196, SE029, 0 );
setSeVolumeByWorkId( spep_2 + 197, SE029, 25 );
setSeVolumeByWorkId( spep_2 + 198, SE029, 50 );
setSeVolumeByWorkId( spep_2 + 199, SE029, 75 );
setSeVolumeByWorkId( spep_2 + 200, SE029, 100 );
setStartTimeMs( SE029,  550 );
setPitch( spep_2 + 192, SE029, 500 );
setTimeStretch( SE029, 1.33, 10, 1 );
SE030 = playSe( spep_2 + 198, 1141 );
setSeVolumeByWorkId( spep_2 + 202, SE030, 100 );
SE031 = playSe( spep_2 + 198, 1142 );
SE032 = playSe( spep_2 + 200, 1032 );

--敵飛んでいく
SE033 = playSe( spep_2 + 214, 1121 );
setSeVolumeByWorkId( spep_2 + 214, SE033, 53 );
stopSe( spep_2 + 270, SE033, 8 );
SE034 = playSe( spep_2 + 214, 1183 );
setSeVolumeByWorkId( spep_2 + 214, SE034, 66 );
stopSe( spep_2 + 270, SE034, 8 );

--岩激突
SE035 = playSe( spep_2 + 268, 1159 );
setSeVolumeByWorkId( spep_2 + 268, SE035, 72 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 266 );
endPhase( spep_2 + 366 );

end