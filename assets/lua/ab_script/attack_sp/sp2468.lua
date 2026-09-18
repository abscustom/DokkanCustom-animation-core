--1025670:トーマ_団結したサイヤ人の力_sp2468
--sp_effect_b4_00263

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
SP_01 = 160883;	--開始	ef_001
SP_02 = 160885;	--パンブーキン＋トーマ	ef_002_front
SP_03 = 160886;	--パンブーキン＋トーマ	ef_002_back
SP_04 = 160887;	--セリパ＋トテッポ	ef_003_front
SP_05 = 160888;	--セリパ＋トテッポ	ef_003_back
SP_06 = 160889;	--トーマ殴り	ef_004_front
SP_07 = 160890;	--トーマ殴り	ef_004_back
SP_08 = 160891;	--トーマ気弾放つ	ef_005_front
SP_09 = 160892;	--トーマ気弾放つ	ef_005_back
SP_10 = 160893;	--フィニッシュ	ef_006_front
SP_11 = 160894;	--フィニッシュ	ef_006_back

SP_01r = 160884;	--開始　敵側	ef_001_re

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
-- 開始(200F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 198, 0x100, -1, 0, 0, 0 );  --開始	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 198, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 198, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 198, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 198 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 198, first_f, 0 );

spep_x = spep_0 + 20;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かっていく
SE003 = playSeVer2( spep_0 + 112, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 112, 1117, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 112, 1278, "",spep_0 + 198 + 96 -14, 0, 82, -1);

--迫る
SE006 = playSeVer2( spep_0 + 140, 1072, "", 0, 0, 0, -1);

--加速する
SE007 = playSeVer2( spep_0 + 176, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 176, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 198 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 198;


------------------------------------------------------
-- パンブーキン＋トーマ(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
ptkick_f = entryEffectLife( spep_1 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --パンブーキン＋トーマ	ef_002_front
setEffMoveKey( spep_1 + 0, ptkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ptkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ptkick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ptkick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ptkick_f, 0 );
setEffRotateKey( spep_1 + 96, ptkick_f, 0 );
setEffAlphaKey( spep_1 + 0, ptkick_f, 255 );
setEffAlphaKey( spep_1 + 96 -1, ptkick_f, 255 );
setEffAlphaKey( spep_1 + 96, ptkick_f, 0 );

ptkick_b = entryEffectLife( spep_1 + 0, SP_03, 96, 0x80, -1, 0, 0, 0 );  --パンブーキン＋トーマ	ef_002_back
setEffMoveKey( spep_1 + 0, ptkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ptkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ptkick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ptkick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ptkick_b, 0 );
setEffRotateKey( spep_1 + 96, ptkick_b, 0 );
setEffAlphaKey( spep_1 + 0, ptkick_b, 255 );
setEffAlphaKey( spep_1 + 96 -1, ptkick_b, 255 );
setEffAlphaKey( spep_1 + 96, ptkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 99, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 42, 1, 104 );
changeAnime( spep_1 -3 + 52, 1, 108 );

setMoveKey( spep_1 + 0, 1, -8, 1.8 , 0 );
setMoveKey( spep_1 + 1, 1, -7.9, 5.6 , 0 );
setMoveKey( spep_1 + 2, 1, -7.9, 9.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -7.8, 13.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -7.8, 16.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -7.7, 20.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -7.9, 21.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -8, 22.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -8.2, 23 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -8.3, 23.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -8.4, 24.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -8.6, 25.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 6, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 12, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 20, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 22, 1, 0.73, 0.73 );

setRotateKey( spep_1 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -8.6, 25.3 , 0 );
    setMoveKey( SP_dodge + 2, 1, -8.7, 26.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, -8.8, 26.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, -9, 27.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, -7.1, 23.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, -5.2, 20.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.73, 0.73 );
    setScaleKey( SP_dodge + 2, 1, 0.72, 0.72 );
    setScaleKey( SP_dodge + 4, 1, 0.71, 0.71 );
    setScaleKey( SP_dodge + 6, 1, 0.7, 0.7 );
    setScaleKey( SP_dodge + 8, 1, 0.77, 0.77 );
    setScaleKey( SP_dodge + 10, 1, 0.83, 0.83 );

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

setMoveKey( spep_1 -3 + 24, 1, -8.7, 26.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -8.8, 26.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -9, 27.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -7.1, 23.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -5.2, 20.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -3.3, 16.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -1.5, 12.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 0.3, 9 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 2.2, 5.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 4.1, 1.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 5.9, -2.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 7.8, -6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 9.6, -9.7 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 11.5, -13.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 53.8, 19.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 46.5, 1.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 64.5, 73.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 60.5, -28.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 82.5, 53.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 30.5, -10.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 62.5, 55.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 28.5, -10.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 90.5, 53.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 58.5, -24.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 38.7, 37.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 62.9, -2.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 63.1, 27 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 63.2, 42.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 63.4, 29.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 63.6, 31.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 63.8, 32.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 63.9, 33.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 64.1, 34.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 64.2, 35.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 64.3, 36.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 64.5, 37.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 64.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 64.6, 38.4 , 0 );
setMoveKey( spep_1 -3 + 99, 1, 64.6, 38.4 , 0 );

setScaleKey( spep_1 -3 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 30, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 32, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 34, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 38, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 41, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 42, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 44, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 46, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 48, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 51, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 52, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 54, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 70, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 72, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 74, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 76, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 78, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 80, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 82, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 84, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 86, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 88, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 90, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 92, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 94, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 96, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 98, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 99, 1, 0.25, 0.25 );

setRotateKey( spep_1 -3 + 99, 1, 0 );

-- ** 音 ** --
--二人キック
SE009 = playSeVer2( spep_1 + 30, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 44, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 44, 1153, "", 0, 0, 0, -1);

--敵飛んでいく
SE012 = playSeVer2( spep_1 + 44, 1121, "",spep_1 + 168, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 44, SE012, 82 );
SE013 = playSeVer2( spep_1 + 66, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 66, SE013, 65 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


------------------------------------------------------
-- セリパ＋トテッポ(178F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
stshot_f = entryEffectLife( spep_2 + 0, SP_04, 178, 0x100, -1, 0, 0, 0 );  --セリパ＋トテッポ	ef_003_front
setEffMoveKey( spep_2 + 0, stshot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, stshot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stshot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, stshot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stshot_f, 0 );
setEffRotateKey( spep_2 + 178, stshot_f, 0 );
setEffAlphaKey( spep_2 + 0, stshot_f, 255 );
setEffAlphaKey( spep_2 + 178 -1, stshot_f, 255 );
setEffAlphaKey( spep_2 + 178, stshot_f, 0 );

stshot_b = entryEffectLife( spep_2 + 0, SP_05, 178, 0x80, -1, 0, 0, 0 );  --セリパ＋トテッポ	ef_003_back
setEffMoveKey( spep_2 + 0, stshot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, stshot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stshot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, stshot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stshot_b, 0 );
setEffRotateKey( spep_2 + 178, stshot_b, 0 );
setEffAlphaKey( spep_2 + 0, stshot_b, 255 );
setEffAlphaKey( spep_2 + 178 -1, stshot_b, 255 );
setEffAlphaKey( spep_2 + 178, stshot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 92, 1, 1 );
setDisp( spep_2 -3 + 144, 1, 0 );
changeAnime( spep_2 -3 + 92, 1, 108 );

setMoveKey( spep_2 -3 + 92, 1, -461.7, 51.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -433.8, 70.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -406.9, 87.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -381, 104.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -356.1, 120.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -332.3, 135.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -309.4, 150.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -287.5, 164.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -266.7, 177.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -246.8, 189.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -228, 201.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -210.1, 212.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -193.2, 222.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -177.4, 232 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -162.5, 240.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -148.7, 248.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -135.9, 255.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -124, 262.5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -113.2, 268.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -103.4, 273.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -94.5, 277.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -81.8, 254.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -66.9, 232.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -50.8, 211.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -34.2, 191 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -17.9, 170.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -17.9, 170.3 , 0 );

setScaleKey( spep_2 -3 + 92, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 94, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 96, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 98, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 100, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 102, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 104, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 106, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 108, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 110, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 112, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 114, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 116, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 118, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 120, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 122, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 124, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 130, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 132, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 134, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 136, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 138, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 140, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 142, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 144, 1, 1.23, 1.23 );

setRotateKey( spep_2 -3 + 92, 1, 10.5 );
setRotateKey( spep_2 -3 + 94, 1, 11.5 );
setRotateKey( spep_2 -3 + 96, 1, 12.4 );
setRotateKey( spep_2 -3 + 98, 1, 13.2 );
setRotateKey( spep_2 -3 + 100, 1, 14.1 );
setRotateKey( spep_2 -3 + 102, 1, 14.9 );
setRotateKey( spep_2 -3 + 104, 1, 15.6 );
setRotateKey( spep_2 -3 + 106, 1, 16.4 );
setRotateKey( spep_2 -3 + 108, 1, 17.1 );
setRotateKey( spep_2 -3 + 110, 1, 17.7 );
setRotateKey( spep_2 -3 + 112, 1, 18.3 );
setRotateKey( spep_2 -3 + 114, 1, 18.9 );
setRotateKey( spep_2 -3 + 116, 1, 19.5 );
setRotateKey( spep_2 -3 + 118, 1, 20 );
setRotateKey( spep_2 -3 + 120, 1, 20.5 );
setRotateKey( spep_2 -3 + 122, 1, 20.9 );
setRotateKey( spep_2 -3 + 124, 1, 21.3 );
setRotateKey( spep_2 -3 + 126, 1, 21.7 );
setRotateKey( spep_2 -3 + 128, 1, 22.1 );
setRotateKey( spep_2 -3 + 130, 1, 22.4 );
setRotateKey( spep_2 -3 + 132, 1, 22.7 );
setRotateKey( spep_2 -3 + 134, 1, 22.9 );
setRotateKey( spep_2 -3 + 136, 1, 23.1 );
setRotateKey( spep_2 -3 + 138, 1, 23.3 );
setRotateKey( spep_2 -3 + 140, 1, 23.4 );
setRotateKey( spep_2 -3 + 142, 1, 23.5 );
setRotateKey( spep_2 -3 + 144, 1, 23.5 );

-- ** 音 ** --
--二人気弾溜め
SE014 = playSeVer2( spep_2 + 6, 1296, "",spep_2 + 168, 0, 40, -1);
SE015 = playSeVer2( spep_2 + 6, 1265, "",spep_2 + 168, 0, 40, -1);
SE016 = playSeVer2( spep_2 + 50, 1282, "",spep_2 + 168, 0, 40, -1);

--気弾発射
SE017 = playSeVer2( spep_2 + 118, 1145, "",spep_2 + 180, 0, 34, -1);
SE018 = playSeVer2( spep_2 + 118, 1177, "",spep_2 + 180, 0, 34, -1);

--気弾ヒット
SE019 = playSeVer2( spep_2 + 142, 1024, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 144, 1068, "", 0, 0, 0, -1);

--トーマ向かってくる
SE021 = playSeVer2( spep_2 + 174, 44, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 174, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 178;


------------------------------------------------------
-- トーマ殴り(146F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tknuckle_f = entryEffectLife( spep_3 + 0, SP_06, 146, 0x100, -1, 0, 0, 0 );  --トーマ殴り	ef_004_front
setEffMoveKey( spep_3 + 0, tknuckle_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, tknuckle_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tknuckle_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, tknuckle_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tknuckle_f, 0 );
setEffRotateKey( spep_3 + 146, tknuckle_f, 0 );
setEffAlphaKey( spep_3 + 0, tknuckle_f, 255 );
setEffAlphaKey( spep_3 + 146 -1, tknuckle_f, 255 );
setEffAlphaKey( spep_3 + 146, tknuckle_f, 0 );

tknuckle_b = entryEffectLife( spep_3 + 0, SP_07, 146, 0x80, -1, 0, 0, 0 );  --トーマ殴り	ef_004_back
setEffMoveKey( spep_3 + 0, tknuckle_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, tknuckle_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tknuckle_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, tknuckle_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tknuckle_b, 0 );
setEffRotateKey( spep_3 + 146, tknuckle_b, 0 );
setEffAlphaKey( spep_3 + 0, tknuckle_b, 255 );
setEffAlphaKey( spep_3 + 146 -1, tknuckle_b, 255 );
setEffAlphaKey( spep_3 + 146, tknuckle_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 32, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -1082.5, -480.1 , 0 );
setMoveKey( spep_3 + 1, 1, -1041.6, -495.9 , 0 );
setMoveKey( spep_3 + 2, 1, -1000.3, -512.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -958.1, -528.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -915.6, -545.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -872.2, -562.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -828.5, -579.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -784, -597.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -738.7, -615.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -692.9, -633.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -646.5, -651.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -599.3, -670.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -551.7, -689.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -503.2, -709.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -454.3, -728.8 , 0 );
setMoveKey( spep_3 -3 + 31, 1, -404.6, -748.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -404.6, -748.8 , 0 );

setScaleKey( spep_3 + 0, 1, 9.09, 9.09 );
setScaleKey( spep_3 + 1, 1, 9.01, 9.01 );
setScaleKey( spep_3 + 2, 1, 8.93, 8.93 );
setScaleKey( spep_3 -3 + 6, 1, 8.85, 8.85 );
setScaleKey( spep_3 -3 + 8, 1, 8.77, 8.77 );
setScaleKey( spep_3 -3 + 10, 1, 8.69, 8.69 );
setScaleKey( spep_3 -3 + 12, 1, 8.6, 8.6 );
setScaleKey( spep_3 -3 + 14, 1, 8.51, 8.51 );
setScaleKey( spep_3 -3 + 16, 1, 8.42, 8.42 );
setScaleKey( spep_3 -3 + 18, 1, 8.33, 8.33 );
setScaleKey( spep_3 -3 + 20, 1, 8.23, 8.23 );
setScaleKey( spep_3 -3 + 22, 1, 8.14, 8.14 );
setScaleKey( spep_3 -3 + 24, 1, 8.04, 8.04 );
setScaleKey( spep_3 -3 + 26, 1, 7.94, 7.94 );
setScaleKey( spep_3 -3 + 28, 1, 7.84, 7.84 );
setScaleKey( spep_3 -3 + 31, 1, 7.73, 7.73 );
setScaleKey( spep_3 -3 + 32, 1, 7.73, 7.73 );

setRotateKey( spep_3 + 0, 1, -13.5 );
setRotateKey( spep_3 + 1, 1, -13.4 );
setRotateKey( spep_3 + 2, 1, -13.4 );
setRotateKey( spep_3 -3 + 6, 1, -13.3 );
setRotateKey( spep_3 -3 + 8, 1, -13.2 );
setRotateKey( spep_3 -3 + 10, 1, -13.2 );
setRotateKey( spep_3 -3 + 12, 1, -13.1 );
setRotateKey( spep_3 -3 + 14, 1, -13 );
setRotateKey( spep_3 -3 + 16, 1, -13 );
setRotateKey( spep_3 -3 + 18, 1, -12.9 );
setRotateKey( spep_3 -3 + 20, 1, -12.8 );
setRotateKey( spep_3 -3 + 22, 1, -12.8 );
setRotateKey( spep_3 -3 + 24, 1, -12.7 );
setRotateKey( spep_3 -3 + 26, 1, -12.6 );
setRotateKey( spep_3 -3 + 28, 1, -12.5 );
setRotateKey( spep_3 -3 + 31, 1, -12.5 );
setRotateKey( spep_3 -3 + 32, 1, -12.5 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 42, 1, 1 );
setDisp( spep_3 -3 + 149, 1, 0 );
changeAnime( spep_3 -3 + 42, 1, 106 );
changeAnime( spep_3 -3 + 84, 1, 108 );

setMoveKey( spep_3 -3 + 42, 1, 1121.7, -330.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 1013, -259.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 777.2, -151.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 434.8, -15.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 410.2, 63.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 363.3, 82.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 218.4, 123.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 220.1, 130.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 221.6, 136.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 223, 143 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 224, 148.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 225, 154.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 225.8, 160.2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 226.3, 165.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 226.7, 170.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 227, 175.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 227, 180.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 226.8, 184.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 226.4, 188.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 226, 192.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 225.2, 196.5 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 225.2, 196.5 , 0 );--
setMoveKey( spep_3 -3 + 84, 1, 154.5, 152.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 156.4, 158.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 156.4, 198.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 156.4, 100.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 135.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 176.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 156.4, 160.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 156.4, 119.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 135.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 176.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 156.4, 160.2 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 156.4, 185.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 116.4, 122.5 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 188.4, 139.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 156.4, 156.9 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 140.4, 126 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 156.7, 196.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 124.4, 152.6 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 84.6, 99.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 38, 38.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 50.1, 48.6 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 49.2, 57.6 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 59.9, 69.8 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 65.9, 70.9 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 75.2, 79.4 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 71.5, 85 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 79.4, 93.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 82.6, 91.5 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 89.1, 96.6 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 82.6, 98.7 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 87.8, 104.1 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 88.1, 98.4 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 92.2, 100.4 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 92.2, 100.4 , 0 );

setScaleKey( spep_3 -3 + 42, 1, 11.66, 11.66 );
setScaleKey( spep_3 -3 + 44, 1, 10.53, 10.53 );
setScaleKey( spep_3 -3 + 46, 1, 8.41, 8.41 );
setScaleKey( spep_3 -3 + 48, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 50, 1, 4.4, 4.4 );
setScaleKey( spep_3 -3 + 52, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 54, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 60, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 62, 1, 3.17, 3.17 );
setScaleKey( spep_3 -3 + 64, 1, 3.17, 3.17 );
setScaleKey( spep_3 -3 + 66, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 68, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 70, 1, 3.15, 3.15 );
setScaleKey( spep_3 -3 + 72, 1, 3.15, 3.15 );
setScaleKey( spep_3 -3 + 74, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 76, 1, 3.13, 3.13 );
setScaleKey( spep_3 -3 + 78, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 80, 1, 3.11, 3.11 );
setScaleKey( spep_3 -3 + 82, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 83, 1, 3.1, 3.1 );--
setScaleKey( spep_3 -3 + 84, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 114, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 116, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 118, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 120, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 126, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 128, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 130, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 132, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 134, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 136, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 138, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 140, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 149, 1, 0.66, 0.66 );

setRotateKey( spep_3 -3 + 42, 1, -27.3 );
setRotateKey( spep_3 -3 + 44, 1, -27 );
setRotateKey( spep_3 -3 + 46, 1, -25.8 );
setRotateKey( spep_3 -3 + 48, 1, -23.5 );
setRotateKey( spep_3 -3 + 50, 1, -27.1 );
setRotateKey( spep_3 -3 + 52, 1, -29 );
setRotateKey( spep_3 -3 + 54, 1, -34.4 );
setRotateKey( spep_3 -3 + 56, 1, -34.6 );
setRotateKey( spep_3 -3 + 58, 1, -34.9 );
setRotateKey( spep_3 -3 + 60, 1, -35.1 );
setRotateKey( spep_3 -3 + 62, 1, -35.4 );
setRotateKey( spep_3 -3 + 64, 1, -35.8 );
setRotateKey( spep_3 -3 + 66, 1, -36.1 );
setRotateKey( spep_3 -3 + 68, 1, -36.4 );
setRotateKey( spep_3 -3 + 70, 1, -36.8 );
setRotateKey( spep_3 -3 + 72, 1, -37.2 );
setRotateKey( spep_3 -3 + 74, 1, -37.6 );
setRotateKey( spep_3 -3 + 76, 1, -38 );
setRotateKey( spep_3 -3 + 78, 1, -38.5 );
setRotateKey( spep_3 -3 + 80, 1, -38.9 );
setRotateKey( spep_3 -3 + 82, 1, -39.4 );
setRotateKey( spep_3 -3 + 83, 1, -39.4 );--
setRotateKey( spep_3 -3 + 84, 1, -3.6 );
setRotateKey( spep_3 -3 + 86, 1, -3.8 );
setRotateKey( spep_3 -3 + 114, 1, -3.8 );
setRotateKey( spep_3 -3 + 116, 1, -3.9 );
setRotateKey( spep_3 -3 + 149, 1, -3.9 );

-- ** 音 ** --
--振りかぶる
SE023 = playSeVer2( spep_3 + 28, 1116, "",spep_3 + 76, 0, 20, -1);

--腹パンチ
SE024 = playSeVer2( spep_3 + 64, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 74, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE025, 77 );
SE026 = playSeVer2( spep_3 + 76, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE026, 75 );
SE027 = playSeVer2( spep_3 + 78, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_3 + 80, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE028, 69 );

--敵吹き飛ぶ
SE029 = playSeVer2( spep_3 + 98, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 98, SE029, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
playSe( spep_4 + 0, SE_05 );

--ズームアウト
SE031 = playSeVer2( spep_4 + 84, 1232, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- トーマ気弾放つ(114F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_5 + 0, SP_08, 114, 0x100, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_005_front
setEffMoveKey( spep_5 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 114, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 114, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan_f, 0 );
setEffRotateKey( spep_5 + 114, kidan_f, 0 );
setEffAlphaKey( spep_5 + 0, kidan_f, 255 );
setEffAlphaKey( spep_5 + 114 -1, kidan_f, 255 );
setEffAlphaKey( spep_5 + 114, kidan_f, 0 );

kidan_b = entryEffectLife( spep_5 + 0, SP_09, 114, 0x80, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_005_back
setEffMoveKey( spep_5 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 114, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 114, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan_b, 0 );
setEffRotateKey( spep_5 + 114, kidan_b, 0 );
setEffAlphaKey( spep_5 + 0, kidan_b, 255 );
setEffAlphaKey( spep_5 + 114 -1, kidan_b, 255 );
setEffAlphaKey( spep_5 + 114, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 66, 1, 1 );
setDisp( spep_5 -3 + 114, 1, 0 );
changeAnime( spep_5 -3 + 66, 1, 108 );
changeAnime( spep_5 -3 + 80, 1,5 );

setMoveKey( spep_5 -3 + 66, 1, 46.9, -4.7 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 46, -3.8 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 45.1, -2.8 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 44.2, -1.9 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 43.3, -1 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 42.4, -0.1 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 41.5, 0.8 , 0 );
setMoveKey( spep_5 -3 + 79, 1, 41.5, 0.8 , 0 );--
setMoveKey( spep_5 -3 + 80, 1, 4.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 81, 1, 4.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 4.2, -73 , 0 );
setMoveKey( spep_5 -3 + 83, 1, 4.2, -73 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 34, -47.7 , 0 );
setMoveKey( spep_5 -3 + 85, 1, 34, -47.7 , 0 );
setMoveKey( spep_5 -3 + 86, 1, -2.1, -62.4 , 0 );
setMoveKey( spep_5 -3 + 87, 1, -2.1, -62.4 , 0 );
setMoveKey( spep_5 -3 + 88, 1, -14.2, 3 , 0 );
setMoveKey( spep_5 -3 + 89, 1, -14.2, 3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 37.6, -91.7 , 0 );
setMoveKey( spep_5 -3 + 91, 1, 37.6, -91.7 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 9.5, -46.4 , 0 );
setMoveKey( spep_5 -3 + 93, 1, 9.5, -46.4 , 0 );
setMoveKey( spep_5 -3 + 94, 1, -11.6, -41 , 0 );
setMoveKey( spep_5 -3 + 95, 1, -11.6, -41 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 1.3, 24.3 , 0 );
setMoveKey( spep_5 -3 + 97, 1, 1.3, 24.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 1.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 99, 1, 1.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 0, -10.1 , 0 );
setMoveKey( spep_5 -3 + 101, 1, 0, -10.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, -3.1, -19.7 , 0 );
setMoveKey( spep_5 -3 + 103, 1, -3.1, -19.7 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 3.8, 20.6 , 0 );
setMoveKey( spep_5 -3 + 105, 1, 3.8, 20.6 , 0 );
setMoveKey( spep_5 -3 + 106, 1, -12.4, -31.1 , 0 );
setMoveKey( spep_5 -3 + 107, 1, -12.4, -31.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 12.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 109, 1, 12.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 110, 1, -1.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 111, 1, -1.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 26.4, -3.8 , 0 );
setMoveKey( spep_5 -3 + 113, 1, 26.4, -3.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 26.4, -3.8 , 0 );

setScaleKey( spep_5 -3 + 66, 1, 2.61, 2.61 );
setScaleKey( spep_5 -3 + 68, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 70, 1, 2.48, 2.48 );
setScaleKey( spep_5 -3 + 72, 1, 2.41, 2.41 );
setScaleKey( spep_5 -3 + 74, 1, 2.35, 2.35 );
setScaleKey( spep_5 -3 + 76, 1, 2.28, 2.28 );
setScaleKey( spep_5 -3 + 78, 1, 2.21, 2.21 );
setScaleKey( spep_5 -3 + 79, 1, 2.21, 2.21 );--
setScaleKey( spep_5 -3 + 80, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 81, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 82, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 83, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 84, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 85, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 87, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 88, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 89, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 91, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 93, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 94, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 95, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 97, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 98, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 99, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 100, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 101, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 102, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 103, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 104, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 105, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 106, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 107, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 114, 1, 0.52, 0.52 );

setRotateKey( spep_5 -3 + 66, 1, 0 );
setRotateKey( spep_5 -3 + 79, 1, 0 );--
setRotateKey( spep_5 -3 + 80, 1, 27 );
setRotateKey( spep_5 -3 + 114, 1, 27 );

-- ** 音 ** --
--腕前に出す
SE032 = playSeVer2( spep_5 + 12, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 14, 1003, "", 0, 0, 0, -1);

--発射前気弾溜め
SE034 = playSeVer2( spep_5 + 18, 1276, "",spep_5 + 52, 0, 16, 0.6);

--気弾発射
SE035 = playSeVer2( spep_5 + 34, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 34, SE035, 80 );
SE036 = playSeVer2( spep_5 + 34, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 34, SE036, 76 );

--気弾ヒット
SE037 = playSeVer2( spep_5 + 68, 1011, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_5 + 68, 1022, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 114 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 114;


------------------------------------------------------
-- フィニッシュ(186F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ	ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 186, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 186, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 186, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --フィニッシュ	ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 186, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 186, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 186, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 54, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, 114.3, 317.2 , 0 );
setMoveKey( spep_6 + 1, 1, 113.6, 304.2 , 0 );
setMoveKey( spep_6 + 2, 1, 112.8, 291.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 112, 278.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 111.1, 266.1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 110.2, 253.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 109.2, 241.5 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 108.1, 229.3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 107, 217.4 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 105.8, 205.6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 104.4, 193.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 103.1, 182.3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 101.7, 170.9 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 100.2, 159.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 98.7, 148.6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 97.1, 137.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 95.5, 126.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 93.7, 116.1 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 91.9, 105.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 90.1, 95.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 88.2, 85 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 86.2, 74.9 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 84.2, 64.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 82.1, 55.1 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 79.9, 45.4 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 77.7, 36 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 75.4, 26.6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 75.4, 26.6 , 0 );

setScaleKey( spep_6 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_6 + 1, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 2, 1, 0.44, 0.44 );
setScaleKey( spep_6 -3 + 6, 1, 0.43, 0.43 );
setScaleKey( spep_6 -3 + 8, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 10, 1, 0.41, 0.41 );
setScaleKey( spep_6 -3 + 12, 1, 0.4, 0.4 );
setScaleKey( spep_6 -3 + 14, 1, 0.38, 0.38 );
setScaleKey( spep_6 -3 + 16, 1, 0.37, 0.37 );
setScaleKey( spep_6 -3 + 18, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_6 -3 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_6 -3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_6 -3 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_6 -3 + 30, 1, 0.3, 0.3 );
setScaleKey( spep_6 -3 + 32, 1, 0.29, 0.29 );
setScaleKey( spep_6 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_6 -3 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_6 -3 + 38, 1, 0.26, 0.26 );
setScaleKey( spep_6 -3 + 40, 1, 0.25, 0.25 );
setScaleKey( spep_6 -3 + 42, 1, 0.24, 0.24 );
setScaleKey( spep_6 -3 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_6 -3 + 46, 1, 0.22, 0.22 );
setScaleKey( spep_6 -3 + 48, 1, 0.21, 0.21 );
setScaleKey( spep_6 -3 + 50, 1, 0.2, 0.2 );
setScaleKey( spep_6 -3 + 52, 1, 0.19, 0.19 );
setScaleKey( spep_6 -3 + 54, 1, 0.19, 0.19 );

setRotateKey( spep_6 + 0, 1, -3 );
setRotateKey( spep_6 + 1, 1, -2 );
setRotateKey( spep_6 + 2, 1, -1 );
setRotateKey( spep_6 -3 + 6, 1, -0.1 );
setRotateKey( spep_6 -3 + 8, 1, 0.9 );
setRotateKey( spep_6 -3 + 10, 1, 1.8 );
setRotateKey( spep_6 -3 + 12, 1, 2.8 );
setRotateKey( spep_6 -3 + 14, 1, 3.8 );
setRotateKey( spep_6 -3 + 16, 1, 4.7 );
setRotateKey( spep_6 -3 + 18, 1, 5.7 );
setRotateKey( spep_6 -3 + 20, 1, 6.6 );
setRotateKey( spep_6 -3 + 22, 1, 7.6 );
setRotateKey( spep_6 -3 + 24, 1, 8.6 );
setRotateKey( spep_6 -3 + 26, 1, 9.5 );
setRotateKey( spep_6 -3 + 28, 1, 10.5 );
setRotateKey( spep_6 -3 + 30, 1, 11.4 );
setRotateKey( spep_6 -3 + 32, 1, 12.4 );
setRotateKey( spep_6 -3 + 34, 1, 13.4 );
setRotateKey( spep_6 -3 + 36, 1, 14.3 );
setRotateKey( spep_6 -3 + 38, 1, 15.3 );
setRotateKey( spep_6 -3 + 40, 1, 16.2 );
setRotateKey( spep_6 -3 + 42, 1, 17.2 );
setRotateKey( spep_6 -3 + 44, 1, 18.2 );
setRotateKey( spep_6 -3 + 46, 1, 19.1 );
setRotateKey( spep_6 -3 + 48, 1, 20.1 );
setRotateKey( spep_6 -3 + 50, 1, 21 );
setRotateKey( spep_6 -3 + 52, 1, 22 );
setRotateKey( spep_6 -3 + 54, 1, 22 );

-- ** 音 ** --
--爆発
SE039 = playSeVer2( spep_6 + 44, 1024, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_6 + 44, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 66 );
endPhase( spep_6 + 176 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始(200F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 198, 0x100, -1, 0, 0, 0 );  --開始	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 198, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 198, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 198, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 198 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 198, first_f, 0 );

spep_x = spep_0 + 20;
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
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かっていく
SE003 = playSeVer2( spep_0 + 112, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 112, 1117, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 112, 1278, "",spep_0 + 198 + 96 -14, 0, 82, -1);

--迫る
SE006 = playSeVer2( spep_0 + 140, 1072, "", 0, 0, 0, -1);

--加速する
SE007 = playSeVer2( spep_0 + 176, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 176, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 198 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 198;


------------------------------------------------------
-- パンブーキン＋トーマ(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
ptkick_f = entryEffectLife( spep_1 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --パンブーキン＋トーマ	ef_002_front
setEffMoveKey( spep_1 + 0, ptkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ptkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ptkick_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ptkick_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ptkick_f, 0 );
setEffRotateKey( spep_1 + 96, ptkick_f, 0 );
setEffAlphaKey( spep_1 + 0, ptkick_f, 255 );
setEffAlphaKey( spep_1 + 96 -1, ptkick_f, 255 );
setEffAlphaKey( spep_1 + 96, ptkick_f, 0 );

ptkick_b = entryEffectLife( spep_1 + 0, SP_03, 96, 0x80, -1, 0, 0, 0 );  --パンブーキン＋トーマ	ef_002_back
setEffMoveKey( spep_1 + 0, ptkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ptkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ptkick_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ptkick_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ptkick_b, 0 );
setEffRotateKey( spep_1 + 96, ptkick_b, 0 );
setEffAlphaKey( spep_1 + 0, ptkick_b, 255 );
setEffAlphaKey( spep_1 + 96 -1, ptkick_b, 255 );
setEffAlphaKey( spep_1 + 96, ptkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 99, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 42, 1, 4 );
changeAnime( spep_1 -3 + 52, 1, 8 );

setMoveKey( spep_1 + 0, 1, 8, 1.8 , 0 );
setMoveKey( spep_1 + 1, 1, 7.9, 5.6 , 0 );
setMoveKey( spep_1 + 2, 1, 7.9, 9.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 7.8, 13.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 7.8, 16.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 7.7, 20.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 7.9, 21.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 8, 22.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 8.2, 23 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 8.3, 23.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 8.4, 24.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 8.6, 25.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 6, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 12, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 20, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 22, 1, 0.73, 0.73 );

setRotateKey( spep_1 + 0, 1, -0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 8.6, 25.3 , 0 );
    setMoveKey( SP_dodge + 2, 1, 8.7, 26.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 8.8, 26.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 9, 27.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 7.1, 23.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 5.2, 20.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.73, 0.73 );
    setScaleKey( SP_dodge + 2, 1, 0.72, 0.72 );
    setScaleKey( SP_dodge + 4, 1, 0.71, 0.71 );
    setScaleKey( SP_dodge + 6, 1, 0.7, 0.7 );
    setScaleKey( SP_dodge + 8, 1, 0.77, 0.77 );
    setScaleKey( SP_dodge + 10, 1, 0.83, 0.83 );

    setRotateKey( SP_dodge + 0, 1, -0 );
    setRotateKey( SP_dodge + 10, 1, -0 );    
    
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

setMoveKey( spep_1 -3 + 24, 1, 8.7, 26.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 8.8, 26.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 9, 27.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 7.1, 23.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 5.2, 20.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 3.3, 16.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 1.5, 12.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -0.3, 9 , 0 );
setMoveKey( spep_1 -3 + 41, 1, -2.2, 5.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -4.1, 1.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -5.9, -2.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -7.8, -6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -9.6, -9.7 , 0 );
setMoveKey( spep_1 -3 + 51, 1, -11.5, -13.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -53.8, 19.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -46.5, 1.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -64.5, 73.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -60.5, -28.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -82.5, 53.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -30.5, -10.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -62.5, 55.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -28.5, -10.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -90.5, 53.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -58.5, -24.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -38.7, 37.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -62.9, -2.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -63.1, 27 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -63.2, 42.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -63.4, 29.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -63.6, 31.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -63.8, 32.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -63.9, 33.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -64.1, 34.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -64.2, 35.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -64.3, 36.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -64.5, 37.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -64.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -64.6, 38.4 , 0 );
setMoveKey( spep_1 -3 + 99, 1, -64.6, 38.4 , 0 );

setScaleKey( spep_1 -3 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 30, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 32, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 34, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 38, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 41, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 42, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 44, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 46, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 48, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 51, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 52, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 54, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 70, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 72, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 74, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 76, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 78, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 80, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 82, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 84, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 86, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 88, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 90, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 92, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 94, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 96, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 98, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 99, 1, 0.25, 0.25 );

setRotateKey( spep_1 -3 + 99, 1, -0 );

-- ** 音 ** --
--二人キック
SE009 = playSeVer2( spep_1 + 30, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 44, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 44, 1153, "", 0, 0, 0, -1);

--敵飛んでいく
SE012 = playSeVer2( spep_1 + 44, 1121, "",spep_1 + 168, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 44, SE012, 82 );
SE013 = playSeVer2( spep_1 + 66, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 66, SE013, 65 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


------------------------------------------------------
-- セリパ＋トテッポ(178F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
stshot_f = entryEffectLife( spep_2 + 0, SP_04, 178, 0x100, -1, 0, 0, 0 );  --セリパ＋トテッポ	ef_003_front
setEffMoveKey( spep_2 + 0, stshot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, stshot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stshot_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 178, stshot_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stshot_f, 0 );
setEffRotateKey( spep_2 + 178, stshot_f, 0 );
setEffAlphaKey( spep_2 + 0, stshot_f, 255 );
setEffAlphaKey( spep_2 + 178 -1, stshot_f, 255 );
setEffAlphaKey( spep_2 + 178, stshot_f, 0 );

stshot_b = entryEffectLife( spep_2 + 0, SP_05, 178, 0x80, -1, 0, 0, 0 );  --セリパ＋トテッポ	ef_003_back
setEffMoveKey( spep_2 + 0, stshot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, stshot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stshot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, stshot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stshot_b, 0 );
setEffRotateKey( spep_2 + 178, stshot_b, 0 );
setEffAlphaKey( spep_2 + 0, stshot_b, 255 );
setEffAlphaKey( spep_2 + 178 -1, stshot_b, 255 );
setEffAlphaKey( spep_2 + 178, stshot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 92, 1, 1 );
setDisp( spep_2 -3 + 144, 1, 0 );
changeAnime( spep_2 -3 + 92, 1, 8 );

setMoveKey( spep_2 -3 + 92, 1, 461.7, 51.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 433.8, 70.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 406.9, 87.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 381, 104.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 356.1, 120.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 332.3, 135.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 309.4, 150.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 287.5, 164.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 266.7, 177.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 246.8, 189.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 228, 201.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 210.1, 212.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 193.2, 222.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 177.4, 232 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 162.5, 240.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 148.7, 248.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 135.9, 255.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 124, 262.5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 113.2, 268.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 103.4, 273.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 94.5, 277.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 81.8, 254.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 66.9, 232.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 50.8, 211.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 34.2, 191 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 17.9, 170.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 17.9, 170.3 , 0 );

setScaleKey( spep_2 -3 + 92, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 94, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 96, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 98, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 100, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 102, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 104, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 106, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 108, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 110, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 112, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 114, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 116, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 118, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 120, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 122, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 124, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 130, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 132, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 134, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 136, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 138, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 140, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 142, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 144, 1, 1.23, 1.23 );

setRotateKey( spep_2 -3 + 92, 1, -10.5 );
setRotateKey( spep_2 -3 + 94, 1, -11.5 );
setRotateKey( spep_2 -3 + 96, 1, -12.4 );
setRotateKey( spep_2 -3 + 98, 1, -13.2 );
setRotateKey( spep_2 -3 + 100, 1, -14.1 );
setRotateKey( spep_2 -3 + 102, 1, -14.9 );
setRotateKey( spep_2 -3 + 104, 1, -15.6 );
setRotateKey( spep_2 -3 + 106, 1, -16.4 );
setRotateKey( spep_2 -3 + 108, 1, -17.1 );
setRotateKey( spep_2 -3 + 110, 1, -17.7 );
setRotateKey( spep_2 -3 + 112, 1, -18.3 );
setRotateKey( spep_2 -3 + 114, 1, -18.9 );
setRotateKey( spep_2 -3 + 116, 1, -19.5 );
setRotateKey( spep_2 -3 + 118, 1, -20 );
setRotateKey( spep_2 -3 + 120, 1, -20.5 );
setRotateKey( spep_2 -3 + 122, 1, -20.9 );
setRotateKey( spep_2 -3 + 124, 1, -21.3 );
setRotateKey( spep_2 -3 + 126, 1, -21.7 );
setRotateKey( spep_2 -3 + 128, 1, -22.1 );
setRotateKey( spep_2 -3 + 130, 1, -22.4 );
setRotateKey( spep_2 -3 + 132, 1, -22.7 );
setRotateKey( spep_2 -3 + 134, 1, -22.9 );
setRotateKey( spep_2 -3 + 136, 1, -23.1 );
setRotateKey( spep_2 -3 + 138, 1, -23.3 );
setRotateKey( spep_2 -3 + 140, 1, -23.4 );
setRotateKey( spep_2 -3 + 142, 1, -23.5 );
setRotateKey( spep_2 -3 + 144, 1, -23.5 );

-- ** 音 ** --
--二人気弾溜め
SE014 = playSeVer2( spep_2 + 6, 1296, "",spep_2 + 168, 0, 40, -1);
SE015 = playSeVer2( spep_2 + 6, 1265, "",spep_2 + 168, 0, 40, -1);
SE016 = playSeVer2( spep_2 + 50, 1282, "",spep_2 + 168, 0, 40, -1);

--気弾発射
SE017 = playSeVer2( spep_2 + 118, 1145, "",spep_2 + 180, 0, 34, -1);
SE018 = playSeVer2( spep_2 + 118, 1177, "",spep_2 + 180, 0, 34, -1);

--気弾ヒット
SE019 = playSeVer2( spep_2 + 142, 1024, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 144, 1068, "", 0, 0, 0, -1);

--トーマ向かってくる
SE021 = playSeVer2( spep_2 + 174, 44, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 174, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 178;


------------------------------------------------------
-- トーマ殴り(146F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tknuckle_f = entryEffectLife( spep_3 + 0, SP_06, 146, 0x100, -1, 0, 0, 0 );  --トーマ殴り	ef_004_front
setEffMoveKey( spep_3 + 0, tknuckle_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, tknuckle_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tknuckle_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 146, tknuckle_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tknuckle_f, 0 );
setEffRotateKey( spep_3 + 146, tknuckle_f, 0 );
setEffAlphaKey( spep_3 + 0, tknuckle_f, 255 );
setEffAlphaKey( spep_3 + 146 -1, tknuckle_f, 255 );
setEffAlphaKey( spep_3 + 146, tknuckle_f, 0 );

tknuckle_b = entryEffectLife( spep_3 + 0, SP_07, 146, 0x80, -1, 0, 0, 0 );  --トーマ殴り	ef_004_back
setEffMoveKey( spep_3 + 0, tknuckle_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, tknuckle_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tknuckle_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 146, tknuckle_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tknuckle_b, 0 );
setEffRotateKey( spep_3 + 146, tknuckle_b, 0 );
setEffAlphaKey( spep_3 + 0, tknuckle_b, 255 );
setEffAlphaKey( spep_3 + 146 -1, tknuckle_b, 255 );
setEffAlphaKey( spep_3 + 146, tknuckle_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 32, 1, 0 );
changeAnime( spep_3 + 0, 1, 6 );

setMoveKey( spep_3 + 0, 1, 1082.5, -480.1 , 0 );
setMoveKey( spep_3 + 1, 1, 1041.6, -495.9 , 0 );
setMoveKey( spep_3 + 2, 1, 1000.3, -512.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 958.1, -528.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 915.6, -545.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 872.2, -562.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 828.5, -579.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 784, -597.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 738.7, -615.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 692.9, -633.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 646.5, -651.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 599.3, -670.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 551.7, -689.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 503.2, -709.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 454.3, -728.8 , 0 );
setMoveKey( spep_3 -3 + 31, 1, 404.6, -748.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 404.6, -748.8 , 0 );

setScaleKey( spep_3 + 0, 1, 9.09, 9.09 );
setScaleKey( spep_3 + 1, 1, 9.01, 9.01 );
setScaleKey( spep_3 + 2, 1, 8.93, 8.93 );
setScaleKey( spep_3 -3 + 6, 1, 8.85, 8.85 );
setScaleKey( spep_3 -3 + 8, 1, 8.77, 8.77 );
setScaleKey( spep_3 -3 + 10, 1, 8.69, 8.69 );
setScaleKey( spep_3 -3 + 12, 1, 8.6, 8.6 );
setScaleKey( spep_3 -3 + 14, 1, 8.51, 8.51 );
setScaleKey( spep_3 -3 + 16, 1, 8.42, 8.42 );
setScaleKey( spep_3 -3 + 18, 1, 8.33, 8.33 );
setScaleKey( spep_3 -3 + 20, 1, 8.23, 8.23 );
setScaleKey( spep_3 -3 + 22, 1, 8.14, 8.14 );
setScaleKey( spep_3 -3 + 24, 1, 8.04, 8.04 );
setScaleKey( spep_3 -3 + 26, 1, 7.94, 7.94 );
setScaleKey( spep_3 -3 + 28, 1, 7.84, 7.84 );
setScaleKey( spep_3 -3 + 31, 1, 7.73, 7.73 );
setScaleKey( spep_3 -3 + 32, 1, 7.73, 7.73 );

setRotateKey( spep_3 + 0, 1, 13.5 );
setRotateKey( spep_3 + 1, 1, 13.4 );
setRotateKey( spep_3 + 2, 1, 13.4 );
setRotateKey( spep_3 -3 + 6, 1, 13.3 );
setRotateKey( spep_3 -3 + 8, 1, 13.2 );
setRotateKey( spep_3 -3 + 10, 1, 13.2 );
setRotateKey( spep_3 -3 + 12, 1, 13.1 );
setRotateKey( spep_3 -3 + 14, 1, 13 );
setRotateKey( spep_3 -3 + 16, 1, 13 );
setRotateKey( spep_3 -3 + 18, 1, 12.9 );
setRotateKey( spep_3 -3 + 20, 1, 12.8 );
setRotateKey( spep_3 -3 + 22, 1, 12.8 );
setRotateKey( spep_3 -3 + 24, 1, 12.7 );
setRotateKey( spep_3 -3 + 26, 1, 12.6 );
setRotateKey( spep_3 -3 + 28, 1, 12.5 );
setRotateKey( spep_3 -3 + 31, 1, 12.5 );
setRotateKey( spep_3 -3 + 32, 1, 12.5 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 42, 1, 1 );
setDisp( spep_3 -3 + 149, 1, 0 );
changeAnime( spep_3 -3 + 42, 1, 6 );
changeAnime( spep_3 -3 + 84, 1, 8 );

setMoveKey( spep_3 -3 + 42, 1, -1121.7, -330.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -1013, -259.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -777.2, -151.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -434.8, -15.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -410.2, 63.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -363.3, 82.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -218.4, 123.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -220.1, 130.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -221.6, 136.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -223, 143 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -224, 148.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -225, 154.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -225.8, 160.2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -226.3, 165.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -226.7, 170.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -227, 175.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -227, 180.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -226.8, 184.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -226.4, 188.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -226, 192.8 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -225.2, 196.5 , 0 );
setMoveKey( spep_3 -3 + 83, 1, -225.2, 196.5 , 0 );--
setMoveKey( spep_3 -3 + 84, 1, -154.5, 152.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -156.4, 158.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -156.4, 198.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -156.4, 100.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -135.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -176.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -156.4, 160.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -156.4, 119.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -135.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -176.9, 139.7 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -156.4, 160.2 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -156.4, 185.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -116.4, 122.5 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -188.4, 139.7 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -156.4, 156.9 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -140.4, 126 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -156.7, 196.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -124.4, 152.6 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -84.6, 99.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -38, 38.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -50.1, 48.6 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -49.2, 57.6 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -59.9, 69.8 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -65.9, 70.9 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -75.2, 79.4 , 0 );
setMoveKey( spep_3 -3 + 134, 1, -71.5, 85 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -79.4, 93.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, -82.6, 91.5 , 0 );
setMoveKey( spep_3 -3 + 140, 1, -89.1, 96.6 , 0 );
setMoveKey( spep_3 -3 + 142, 1, -82.6, 98.7 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -87.8, 104.1 , 0 );
setMoveKey( spep_3 -3 + 146, 1, -88.1, 98.4 , 0 );
setMoveKey( spep_3 -3 + 148, 1, -92.2, 100.4 , 0 );
setMoveKey( spep_3 -3 + 149, 1, -92.2, 100.4 , 0 );

setScaleKey( spep_3 -3 + 42, 1, 11.66, 11.66 );
setScaleKey( spep_3 -3 + 44, 1, 10.53, 10.53 );
setScaleKey( spep_3 -3 + 46, 1, 8.41, 8.41 );
setScaleKey( spep_3 -3 + 48, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 50, 1, 4.4, 4.4 );
setScaleKey( spep_3 -3 + 52, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 54, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 60, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 62, 1, 3.17, 3.17 );
setScaleKey( spep_3 -3 + 64, 1, 3.17, 3.17 );
setScaleKey( spep_3 -3 + 66, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 68, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 70, 1, 3.15, 3.15 );
setScaleKey( spep_3 -3 + 72, 1, 3.15, 3.15 );
setScaleKey( spep_3 -3 + 74, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 76, 1, 3.13, 3.13 );
setScaleKey( spep_3 -3 + 78, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 80, 1, 3.11, 3.11 );
setScaleKey( spep_3 -3 + 82, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 83, 1, 3.1, 3.1 );--
setScaleKey( spep_3 -3 + 84, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 114, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 116, 1, 3.45, 3.45 );
setScaleKey( spep_3 -3 + 118, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 120, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 126, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 128, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 130, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 132, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 134, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 136, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 138, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 140, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 149, 1, 0.66, 0.66 );

setRotateKey( spep_3 -3 + 42, 1, 27.3 );
setRotateKey( spep_3 -3 + 44, 1, 27 );
setRotateKey( spep_3 -3 + 46, 1, 25.8 );
setRotateKey( spep_3 -3 + 48, 1, 23.5 );
setRotateKey( spep_3 -3 + 50, 1, 27.1 );
setRotateKey( spep_3 -3 + 52, 1, 29 );
setRotateKey( spep_3 -3 + 54, 1, 34.4 );
setRotateKey( spep_3 -3 + 56, 1, 34.6 );
setRotateKey( spep_3 -3 + 58, 1, 34.9 );
setRotateKey( spep_3 -3 + 60, 1, 35.1 );
setRotateKey( spep_3 -3 + 62, 1, 35.4 );
setRotateKey( spep_3 -3 + 64, 1, 35.8 );
setRotateKey( spep_3 -3 + 66, 1, 36.1 );
setRotateKey( spep_3 -3 + 68, 1, 36.4 );
setRotateKey( spep_3 -3 + 70, 1, 36.8 );
setRotateKey( spep_3 -3 + 72, 1, 37.2 );
setRotateKey( spep_3 -3 + 74, 1, 37.6 );
setRotateKey( spep_3 -3 + 76, 1, 38 );
setRotateKey( spep_3 -3 + 78, 1, 38.5 );
setRotateKey( spep_3 -3 + 80, 1, 38.9 );
setRotateKey( spep_3 -3 + 82, 1, 39.4 );
setRotateKey( spep_3 -3 + 83, 1, 39.4 );--
setRotateKey( spep_3 -3 + 84, 1, 3.6 );
setRotateKey( spep_3 -3 + 86, 1, 3.8 );
setRotateKey( spep_3 -3 + 114, 1, 3.8 );
setRotateKey( spep_3 -3 + 116, 1, 3.9 );
setRotateKey( spep_3 -3 + 149, 1, 3.9 );

-- ** 音 ** --
--振りかぶる
SE023 = playSeVer2( spep_3 + 28, 1116, "",spep_3 + 76, 0, 20, -1);

--腹パンチ
SE024 = playSeVer2( spep_3 + 64, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 74, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE025, 77 );
SE026 = playSeVer2( spep_3 + 76, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE026, 75 );
SE027 = playSeVer2( spep_3 + 78, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_3 + 80, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE028, 69 );

--敵吹き飛ぶ
SE029 = playSeVer2( spep_3 + 98, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 98, SE029, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
playSe( spep_4 + 0, SE_05 );

--ズームアウト
SE031 = playSeVer2( spep_4 + 84, 1232, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- トーマ気弾放つ(114F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_5 + 0, SP_08, 114, 0x100, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_005_front
setEffMoveKey( spep_5 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 114, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kidan_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 114, kidan_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan_f, 0 );
setEffRotateKey( spep_5 + 114, kidan_f, 0 );
setEffAlphaKey( spep_5 + 0, kidan_f, 255 );
setEffAlphaKey( spep_5 + 114 -1, kidan_f, 255 );
setEffAlphaKey( spep_5 + 114, kidan_f, 0 );

kidan_b = entryEffectLife( spep_5 + 0, SP_09, 114, 0x80, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_005_back
setEffMoveKey( spep_5 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 114, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kidan_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 114, kidan_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan_b, 0 );
setEffRotateKey( spep_5 + 114, kidan_b, 0 );
setEffAlphaKey( spep_5 + 0, kidan_b, 255 );
setEffAlphaKey( spep_5 + 114 -1, kidan_b, 255 );
setEffAlphaKey( spep_5 + 114, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 66, 1, 1 );
setDisp( spep_5 -3 + 114, 1, 0 );
changeAnime( spep_5 -3 + 66, 1, 8 );
changeAnime( spep_5 -3 + 80, 1, 105 );

setMoveKey( spep_5 -3 + 66, 1, -46.9, -4.7 , 0 );
setMoveKey( spep_5 -3 + 68, 1, -46, -3.8 , 0 );
setMoveKey( spep_5 -3 + 70, 1, -45.1, -2.8 , 0 );
setMoveKey( spep_5 -3 + 72, 1, -44.2, -1.9 , 0 );
setMoveKey( spep_5 -3 + 74, 1, -43.3, -1 , 0 );
setMoveKey( spep_5 -3 + 76, 1, -42.4, -0.1 , 0 );
setMoveKey( spep_5 -3 + 78, 1, -41.5, 0.8 , 0 );
setMoveKey( spep_5 -3 + 79, 1, -41.5, 0.8 , 0 );--
setMoveKey( spep_5 -3 + 80, 1, -4.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 81, 1, -4.3, -18.4 , 0 );
setMoveKey( spep_5 -3 + 82, 1, -4.2, -73 , 0 );
setMoveKey( spep_5 -3 + 83, 1, -4.2, -73 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -34, -47.7 , 0 );
setMoveKey( spep_5 -3 + 85, 1, -34, -47.7 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 2.1, -62.4 , 0 );
setMoveKey( spep_5 -3 + 87, 1, 2.1, -62.4 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 14.2, 3 , 0 );
setMoveKey( spep_5 -3 + 89, 1, 14.2, 3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, -37.6, -91.7 , 0 );
setMoveKey( spep_5 -3 + 91, 1, -37.6, -91.7 , 0 );
setMoveKey( spep_5 -3 + 92, 1, -9.5, -46.4 , 0 );
setMoveKey( spep_5 -3 + 93, 1, -9.5, -46.4 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 11.6, -41 , 0 );
setMoveKey( spep_5 -3 + 95, 1, 11.6, -41 , 0 );
setMoveKey( spep_5 -3 + 96, 1, -1.3, 24.3 , 0 );
setMoveKey( spep_5 -3 + 97, 1, -1.3, 24.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, -1.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 99, 1, -1.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 100, 1, -0, -10.1 , 0 );
setMoveKey( spep_5 -3 + 101, 1, -0, -10.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 3.1, -19.7 , 0 );
setMoveKey( spep_5 -3 + 103, 1, 3.1, -19.7 , 0 );
setMoveKey( spep_5 -3 + 104, 1, -3.8, 20.6 , 0 );
setMoveKey( spep_5 -3 + 105, 1, -3.8, 20.6 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 12.4, -31.1 , 0 );
setMoveKey( spep_5 -3 + 107, 1, 12.4, -31.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, -12.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 109, 1, -12.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 1.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 111, 1, 1.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, -26.4, -3.8 , 0 );
setMoveKey( spep_5 -3 + 113, 1, -26.4, -3.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, -26.4, -3.8 , 0 );

setScaleKey( spep_5 -3 + 66, 1, 2.61, 2.61 );
setScaleKey( spep_5 -3 + 68, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 70, 1, 2.48, 2.48 );
setScaleKey( spep_5 -3 + 72, 1, 2.41, 2.41 );
setScaleKey( spep_5 -3 + 74, 1, 2.35, 2.35 );
setScaleKey( spep_5 -3 + 76, 1, 2.28, 2.28 );
setScaleKey( spep_5 -3 + 78, 1, 2.21, 2.21 );
setScaleKey( spep_5 -3 + 79, 1, 2.21, 2.21 );--
setScaleKey( spep_5 -3 + 80, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 81, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 82, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 83, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 84, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 85, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 87, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 88, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 89, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 91, 1, 1.02, 1.02 );
setScaleKey( spep_5 -3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 93, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 94, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 95, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 97, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 98, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 99, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 100, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 101, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 102, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 103, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 104, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 105, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 106, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 107, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 114, 1, 0.52, 0.52 );

setRotateKey( spep_5 -3 + 66, 1, -0 );
setRotateKey( spep_5 -3 + 79, 1, -0 );--
setRotateKey( spep_5 -3 + 80, 1, -27 );
setRotateKey( spep_5 -3 + 114, 1, -27 );

-- ** 音 ** --
--腕前に出す
SE032 = playSeVer2( spep_5 + 12, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 14, 1003, "", 0, 0, 0, -1);

--発射前気弾溜め
SE034 = playSeVer2( spep_5 + 18, 1276, "",spep_5 + 52, 0, 16, 0.6);

--気弾発射
SE035 = playSeVer2( spep_5 + 34, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 34, SE035, 80 );
SE036 = playSeVer2( spep_5 + 34, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 34, SE036, 76 );

--気弾ヒット
SE037 = playSeVer2( spep_5 + 68, 1011, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_5 + 68, 1022, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 114 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 114;


------------------------------------------------------
-- フィニッシュ(186F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ	ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 186, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 186, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 186, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --フィニッシュ	ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 186, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 186, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 186, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 54, 1, 0 );
changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -114.3, 317.2 , 0 );
setMoveKey( spep_6 + 1, 1, -113.6, 304.2 , 0 );
setMoveKey( spep_6 + 2, 1, -112.8, 291.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -112, 278.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -111.1, 266.1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -110.2, 253.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -109.2, 241.5 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -108.1, 229.3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -107, 217.4 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -105.8, 205.6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -104.4, 193.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -103.1, 182.3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -101.7, 170.9 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -100.2, 159.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -98.7, 148.6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -97.1, 137.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -95.5, 126.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -93.7, 116.1 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -91.9, 105.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -90.1, 95.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -88.2, 85 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -86.2, 74.9 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -84.2, 64.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -82.1, 55.1 , 0 );
setMoveKey( spep_6 -3 + 48, 1, -79.9, 45.4 , 0 );
setMoveKey( spep_6 -3 + 50, 1, -77.7, 36 , 0 );
setMoveKey( spep_6 -3 + 52, 1, -75.4, 26.6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, -75.4, 26.6 , 0 );

setScaleKey( spep_6 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_6 + 1, 1, 0.46, 0.46 );
setScaleKey( spep_6 + 2, 1, 0.44, 0.44 );
setScaleKey( spep_6 -3 + 6, 1, 0.43, 0.43 );
setScaleKey( spep_6 -3 + 8, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 10, 1, 0.41, 0.41 );
setScaleKey( spep_6 -3 + 12, 1, 0.4, 0.4 );
setScaleKey( spep_6 -3 + 14, 1, 0.38, 0.38 );
setScaleKey( spep_6 -3 + 16, 1, 0.37, 0.37 );
setScaleKey( spep_6 -3 + 18, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_6 -3 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_6 -3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_6 -3 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_6 -3 + 30, 1, 0.3, 0.3 );
setScaleKey( spep_6 -3 + 32, 1, 0.29, 0.29 );
setScaleKey( spep_6 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_6 -3 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_6 -3 + 38, 1, 0.26, 0.26 );
setScaleKey( spep_6 -3 + 40, 1, 0.25, 0.25 );
setScaleKey( spep_6 -3 + 42, 1, 0.24, 0.24 );
setScaleKey( spep_6 -3 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_6 -3 + 46, 1, 0.22, 0.22 );
setScaleKey( spep_6 -3 + 48, 1, 0.21, 0.21 );
setScaleKey( spep_6 -3 + 50, 1, 0.2, 0.2 );
setScaleKey( spep_6 -3 + 52, 1, 0.19, 0.19 );
setScaleKey( spep_6 -3 + 54, 1, 0.19, 0.19 );

setRotateKey( spep_6 + 0, 1, 3 );
setRotateKey( spep_6 + 1, 1, 2 );
setRotateKey( spep_6 + 2, 1, 1 );
setRotateKey( spep_6 -3 + 6, 1, 0.1 );
setRotateKey( spep_6 -3 + 8, 1, -0.9 );
setRotateKey( spep_6 -3 + 10, 1, -1.8 );
setRotateKey( spep_6 -3 + 12, 1, -2.8 );
setRotateKey( spep_6 -3 + 14, 1, -3.8 );
setRotateKey( spep_6 -3 + 16, 1, -4.7 );
setRotateKey( spep_6 -3 + 18, 1, -5.7 );
setRotateKey( spep_6 -3 + 20, 1, -6.6 );
setRotateKey( spep_6 -3 + 22, 1, -7.6 );
setRotateKey( spep_6 -3 + 24, 1, -8.6 );
setRotateKey( spep_6 -3 + 26, 1, -9.5 );
setRotateKey( spep_6 -3 + 28, 1, -10.5 );
setRotateKey( spep_6 -3 + 30, 1, -11.4 );
setRotateKey( spep_6 -3 + 32, 1, -12.4 );
setRotateKey( spep_6 -3 + 34, 1, -13.4 );
setRotateKey( spep_6 -3 + 36, 1, -14.3 );
setRotateKey( spep_6 -3 + 38, 1, -15.3 );
setRotateKey( spep_6 -3 + 40, 1, -16.2 );
setRotateKey( spep_6 -3 + 42, 1, -17.2 );
setRotateKey( spep_6 -3 + 44, 1, -18.2 );
setRotateKey( spep_6 -3 + 46, 1, -19.1 );
setRotateKey( spep_6 -3 + 48, 1, -20.1 );
setRotateKey( spep_6 -3 + 50, 1, -21 );
setRotateKey( spep_6 -3 + 52, 1, -22 );
setRotateKey( spep_6 -3 + 54, 1, -22 );

-- ** 音 ** --
--爆発
SE039 = playSeVer2( spep_6 + 44, 1024, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_6 + 44, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 66 );
endPhase( spep_6 + 176 );


end