--1025660:トーマ_フレイムバレット_sp2470
--sp_effect_b4_00262

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
SP_01 = 160873;	--開始	ef_001
SP_02 = 160875;	--トーマキック	ef_002_front
SP_03 = 160876;	--トーマキック	ef_002_back
SP_04 = 160877;	--トーマ殴り	ef_003_front
SP_05 = 160878;	--トーマ殴り	ef_003_back
SP_06 = 160879;	--トーマ気弾放つ	ef_004_front
SP_07 = 160880;	--トーマ気弾放つ	ef_004_back
SP_08 = 160881;	--フィニッシュ	ef_005_front
SP_09 = 160882;	--フィニッシュ	ef_005_back

--敵側
SP_01r = 160874;	--開始　敵側	ef_001_r

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
-- 開始(162F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 162, 0x100, -1, 0, 0, 0 );  --開始	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 162, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 162, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 162, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 162 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 162, first_f, 0 );

spep_x = spep_0 + 20;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
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

--迫る
SE005 = playSeVer2( spep_0 + 136, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 162 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 162;


------------------------------------------------------
-- トーマキック(94F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tkick_f = entryEffectLife( spep_1 + 0, SP_02, 94, 0x100, -1, 0, 0, 0 );  --トーマキック	ef_002_front
setEffMoveKey( spep_1 + 0, tkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, tkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 94, tkick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_f, 0 );
setEffRotateKey( spep_1 + 94, tkick_f, 0 );
setEffAlphaKey( spep_1 + 0, tkick_f, 255 );
setEffAlphaKey( spep_1 + 94 -1, tkick_f, 255 );
setEffAlphaKey( spep_1 + 94, tkick_f, 0 );

tkick_b = entryEffectLife( spep_1 + 0, SP_03, 94, 0x80, -1, 0, 0, 0 );  --トーマキック	ef_002_back
setEffMoveKey( spep_1 + 0, tkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, tkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 94, tkick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_b, 0 );
setEffRotateKey( spep_1 + 94, tkick_b, 0 );
setEffAlphaKey( spep_1 + 0, tkick_b, 255 );
setEffAlphaKey( spep_1 + 94 -1, tkick_b, 255 );
setEffAlphaKey( spep_1 + 94, tkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
--setDisp( spep_1 -3 + 94, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 40, 1, 104 );
changeAnime( spep_1 -3 + 50, 1, 108 );

setMoveKey( spep_1 + 0, 1, -8, 1.8 , 0 );
setMoveKey( spep_1 + 1, 1, -7.9, 5.6 , 0 );
setMoveKey( spep_1 + 2, 1, -7.9, 9.4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -7.8, 13.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -7.7, 16.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -7.7, 20.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -7.8, 21.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -7.9, 22.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -8.1, 23 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -8.2, 23.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -8.3, 24.6 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -8.5, 25.3 , 0 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -8.5, 25.3 , 0 );
    setMoveKey( SP_dodge + 2, 1, -8.6, 26.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, -8.8, 26.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, -8.9, 27.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, -6.8, 23.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, -4.8, 19.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.73, 0.73 );
    setScaleKey( SP_dodge + 2, 1, 0.72, 0.72 );
    setScaleKey( SP_dodge + 4, 1, 0.71, 0.71 );
    setScaleKey( SP_dodge + 6, 1, 0.7, 0.7 );
    setScaleKey( SP_dodge + 8, 1, 0.77, 0.77 );
    setScaleKey( SP_dodge + 10, 1, 0.85, 0.85 );

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

setMoveKey( spep_1 -3 + 24, 1, -8.6, 26.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -8.8, 26.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -8.9, 27.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -6.8, 23.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -4.8, 19.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -2.7, 15.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -0.7, 11.2 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 1.3, 7.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 3.4, 3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 5.4, -1.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 7.4, -5.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 9.4, -9.4 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 11.5, -13.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 66.6, 29.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 50.6, 9.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 52.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 68.6, 3.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 62.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 54.6, 5.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 62.6, 31.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 40.6, 13.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 62.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 62.6, 7.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 50.8, 29.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 62.9, 9.3 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 59.1, 27 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 63.3, 42.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 63.5, 29.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 63.6, 31.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 63.8, 32.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 64, 33.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 64.1, 34.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 64.3, 35.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 64.4, 36.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 64.5, 37.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 64.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 64.7, 38.4 , 0 );
--setMoveKey( spep_1 -3 + 97, 1, 64.7, 38.4 , 0 );

setScaleKey( spep_1 -3 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 30, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 32, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 34, 1, 0.92, 0.92 );
setScaleKey( spep_1 -3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 39, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 40, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 42, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 44, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 46, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 49, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 68, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 70, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 72, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 74, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 76, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 78, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 80, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 82, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 84, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 86, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 88, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 90, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 92, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 94, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 96, 1, 0.25, 0.25 );
--setScaleKey( spep_1 -3 + 97, 1, 0.25, 0.25 );

setRotateKey( spep_1 -3 + 96, 1, 0 );

-- ** 音 ** --
--蹴り飛ばす
SE006 = playSeVer2( spep_1 + 28, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 44, 1187, "", 0, 0, 0, -1);

--向かってくる
SE008 = playSeVer2( spep_1 + 90, 44, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- トーマ殴り(146F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tknuckle_f = entryEffectLife( spep_2 + 0, SP_04, 146, 0x100, -1, 0, 0, 0 );  --トーマ殴り	ef_003_front
setEffMoveKey( spep_2 + 0, tknuckle_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tknuckle_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tknuckle_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tknuckle_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tknuckle_f, 0 );
setEffRotateKey( spep_2 + 146, tknuckle_f, 0 );
setEffAlphaKey( spep_2 + 0, tknuckle_f, 255 );
setEffAlphaKey( spep_2 + 146 -1, tknuckle_f, 255 );
setEffAlphaKey( spep_2 + 146, tknuckle_f, 0 );

tknuckle_b = entryEffectLife( spep_2 + 0, SP_05, 146, 0x80, -1, 0, 0, 0 );  --トーマ殴り	ef_003_back
setEffMoveKey( spep_2 + 0, tknuckle_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tknuckle_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tknuckle_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tknuckle_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tknuckle_b, 0 );
setEffRotateKey( spep_2 + 146, tknuckle_b, 0 );
setEffAlphaKey( spep_2 + 0, tknuckle_b, 255 );
setEffAlphaKey( spep_2 + 146 -1, tknuckle_b, 255 );
setEffAlphaKey( spep_2 + 146, tknuckle_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 32, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, -1082.5, -480.1 , 0 );
setMoveKey( spep_2 + 1, 1, -1041.6, -495.9 , 0 );
setMoveKey( spep_2 + 2, 1, -1000.3, -512.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -958.1, -528.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -915.6, -545.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -872.2, -562.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -828.5, -579.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -784, -597.3 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -738.7, -615.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -692.9, -633.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -646.5, -651.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -599.3, -670.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -551.7, -689.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -503.2, -709.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -454.3, -728.8 , 0 );
setMoveKey( spep_2 -3 + 31, 1, -404.6, -748.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -404.6, -748.8 , 0 );

setScaleKey( spep_2 + 0, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 1, 1, 9.01, 9.01 );
setScaleKey( spep_2 + 2, 1, 8.93, 8.93 );
setScaleKey( spep_2 -3 + 6, 1, 8.85, 8.85 );
setScaleKey( spep_2 -3 + 8, 1, 8.77, 8.77 );
setScaleKey( spep_2 -3 + 10, 1, 8.69, 8.69 );
setScaleKey( spep_2 -3 + 12, 1, 8.6, 8.6 );
setScaleKey( spep_2 -3 + 14, 1, 8.51, 8.51 );
setScaleKey( spep_2 -3 + 16, 1, 8.42, 8.42 );
setScaleKey( spep_2 -3 + 18, 1, 8.33, 8.33 );
setScaleKey( spep_2 -3 + 20, 1, 8.23, 8.23 );
setScaleKey( spep_2 -3 + 22, 1, 8.14, 8.14 );
setScaleKey( spep_2 -3 + 24, 1, 8.04, 8.04 );
setScaleKey( spep_2 -3 + 26, 1, 7.94, 7.94 );
setScaleKey( spep_2 -3 + 28, 1, 7.84, 7.84 );
setScaleKey( spep_2 -3 + 31, 1, 7.73, 7.73 );
setScaleKey( spep_2 -3 + 32, 1, 7.73, 7.73 );

setRotateKey( spep_2 + 0, 1, -13.5 );
setRotateKey( spep_2 + 1, 1, -13.4 );
setRotateKey( spep_2 + 2, 1, -13.4 );
setRotateKey( spep_2 -3 + 6, 1, -13.3 );
setRotateKey( spep_2 -3 + 8, 1, -13.2 );
setRotateKey( spep_2 -3 + 10, 1, -13.2 );
setRotateKey( spep_2 -3 + 12, 1, -13.1 );
setRotateKey( spep_2 -3 + 14, 1, -13 );
setRotateKey( spep_2 -3 + 16, 1, -13 );
setRotateKey( spep_2 -3 + 18, 1, -12.9 );
setRotateKey( spep_2 -3 + 20, 1, -12.8 );
setRotateKey( spep_2 -3 + 22, 1, -12.8 );
setRotateKey( spep_2 -3 + 24, 1, -12.7 );
setRotateKey( spep_2 -3 + 26, 1, -12.6 );
setRotateKey( spep_2 -3 + 28, 1, -12.5 );
setRotateKey( spep_2 -3 + 31, 1, -12.5 );
setRotateKey( spep_2 -3 + 32, 1, -12.5 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 149, 1, 0 );
changeAnime( spep_2 -3 + 42, 1, 106 );
changeAnime( spep_2 -3 + 84, 1, 108 );

setMoveKey( spep_2 -3 + 42, 1, 1121.7, -330.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 1013, -259.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 777.2, -151.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 434.8, -15.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 410.2, 63.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 363.3, 82.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 218.4, 123.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 220.1, 130.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 221.6, 136.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 223, 143 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 224, 148.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 225, 154.7 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 225.8, 160.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 226.3, 165.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 226.7, 170.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 227, 175.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 227, 180.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 226.8, 184.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 226.4, 188.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 226, 192.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 225.2, 196.5 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 225.2, 196.5 , 0 );--
setMoveKey( spep_2 -3 + 84, 1, 154.5, 152.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 156.4, 158.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 156.4, 198.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 156.4, 100.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 135.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 176.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 156.4, 160.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 156.4, 119.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 135.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 176.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 156.4, 160.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 156.4, 185.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 116.4, 122.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 188.4, 139.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 156.4, 156.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 140.4, 126 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 156.7, 196.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 124.4, 152.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 84.6, 99.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 38, 38.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 50.1, 48.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 49.2, 57.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 59.9, 69.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 65.9, 70.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 75.2, 79.4 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 71.5, 85 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 79.4, 93.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 82.6, 91.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 89.1, 96.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 82.6, 98.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 87.8, 104.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 88.1, 98.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 92.2, 100.4 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 92.2, 100.4 , 0 );

setScaleKey( spep_2 -3 + 42, 1, 11.66, 11.66 );
setScaleKey( spep_2 -3 + 44, 1, 10.53, 10.53 );
setScaleKey( spep_2 -3 + 46, 1, 8.41, 8.41 );
setScaleKey( spep_2 -3 + 48, 1, 5.45, 5.45 );
setScaleKey( spep_2 -3 + 50, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 52, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 54, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 60, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 62, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 64, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 66, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 68, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 70, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 72, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 74, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 76, 1, 3.13, 3.13 );
setScaleKey( spep_2 -3 + 78, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 80, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 82, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 83, 1, 3.1, 3.1 );--
setScaleKey( spep_2 -3 + 84, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 114, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 116, 1, 3.45, 3.45 );
setScaleKey( spep_2 -3 + 118, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 120, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 126, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 128, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 130, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 132, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 134, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 136, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 138, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 140, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 149, 1, 0.66, 0.66 );

setRotateKey( spep_2 -3 + 42, 1, -27.3 );
setRotateKey( spep_2 -3 + 44, 1, -27 );
setRotateKey( spep_2 -3 + 46, 1, -25.8 );
setRotateKey( spep_2 -3 + 48, 1, -23.5 );
setRotateKey( spep_2 -3 + 50, 1, -27.1 );
setRotateKey( spep_2 -3 + 52, 1, -29 );
setRotateKey( spep_2 -3 + 54, 1, -34.4 );
setRotateKey( spep_2 -3 + 56, 1, -34.6 );
setRotateKey( spep_2 -3 + 58, 1, -34.9 );
setRotateKey( spep_2 -3 + 60, 1, -35.1 );
setRotateKey( spep_2 -3 + 62, 1, -35.4 );
setRotateKey( spep_2 -3 + 64, 1, -35.8 );
setRotateKey( spep_2 -3 + 66, 1, -36.1 );
setRotateKey( spep_2 -3 + 68, 1, -36.4 );
setRotateKey( spep_2 -3 + 70, 1, -36.8 );
setRotateKey( spep_2 -3 + 72, 1, -37.2 );
setRotateKey( spep_2 -3 + 74, 1, -37.6 );
setRotateKey( spep_2 -3 + 76, 1, -38 );
setRotateKey( spep_2 -3 + 78, 1, -38.5 );
setRotateKey( spep_2 -3 + 80, 1, -38.9 );
setRotateKey( spep_2 -3 + 82, 1, -39.4 );
setRotateKey( spep_2 -3 + 83, 1, -39.4 );--
setRotateKey( spep_2 -3 + 84, 1, -3.6 );
setRotateKey( spep_2 -3 + 86, 1, -3.8 );
setRotateKey( spep_2 -3 + 114, 1, -3.8 );
setRotateKey( spep_2 -3 + 116, 1, -3.9 );
setRotateKey( spep_2 -3 + 149, 1, -3.9 );

-- ** 音 ** --
--振りかぶる
SE010 = playSeVer2( spep_2 + 28, 1116, "",spep_2 + 76, 0, 22, -1);

--腹パンチ
SE011 = playSeVer2( spep_2 + 64, 1003, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 74, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE012, 77 );
SE013 = playSeVer2( spep_2 + 76, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE013, 75 );
SE014 = playSeVer2( spep_2 + 78, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 80, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE015, 69 );

--敵吹き飛ぶ
SE016 = playSeVer2( spep_2 + 100, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE016, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
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

--ズームアウト
SE018 = playSeVer2( spep_3 + 84, 1232, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- トーマ気弾放つ(114F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_4 + 0, SP_06, 114, 0x100, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_004_front
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 114, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 114, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 114, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 114 -1, kidan_f, 255 );
setEffAlphaKey( spep_4 + 114, kidan_f, 0 );

kidan_b = entryEffectLife( spep_4 + 0, SP_07, 114, 0x80, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_004_back
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 114, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 114, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 114, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 114 -1, kidan_b, 255 );
setEffAlphaKey( spep_4 + 114, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 66, 1, 1 );
setDisp( spep_4 -3 + 114, 1, 0 );
changeAnime( spep_4 -3 + 66, 1, 108 );
changeAnime( spep_4 -3 + 80, 1,5 );

setMoveKey( spep_4 -3 + 66, 1, 46.9, -4.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 46, -3.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 45.1, -2.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 44.2, -1.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 43.3, -1 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 42.4, -0.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 41.5, 0.8 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 41.5, 0.8 , 0 );--
setMoveKey( spep_4 -3 + 80, 1, 4.3, -18.4 , 0 );
setMoveKey( spep_4 -3 + 81, 1, 4.3, -18.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 4.2, -73 , 0 );
setMoveKey( spep_4 -3 + 83, 1, 4.2, -73 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 34, -47.7 , 0 );
setMoveKey( spep_4 -3 + 85, 1, 34, -47.7 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -2.1, -62.4 , 0 );
setMoveKey( spep_4 -3 + 87, 1, -2.1, -62.4 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -14.2, 3 , 0 );
setMoveKey( spep_4 -3 + 89, 1, -14.2, 3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 37.6, -91.7 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 37.6, -91.7 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 9.5, -46.4 , 0 );
setMoveKey( spep_4 -3 + 93, 1, 9.5, -46.4 , 0 );
setMoveKey( spep_4 -3 + 94, 1, -11.6, -41 , 0 );
setMoveKey( spep_4 -3 + 95, 1, -11.6, -41 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 1.3, 24.3 , 0 );
setMoveKey( spep_4 -3 + 97, 1, 1.3, 24.3 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 1.2, -70.4 , 0 );
setMoveKey( spep_4 -3 + 99, 1, 1.2, -70.4 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 0, -10.1 , 0 );
setMoveKey( spep_4 -3 + 101, 1, 0, -10.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, -3.1, -19.7 , 0 );
setMoveKey( spep_4 -3 + 103, 1, -3.1, -19.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 3.8, 20.6 , 0 );
setMoveKey( spep_4 -3 + 105, 1, 3.8, 20.6 , 0 );
setMoveKey( spep_4 -3 + 106, 1, -12.4, -31.1 , 0 );
setMoveKey( spep_4 -3 + 107, 1, -12.4, -31.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 12.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 109, 1, 12.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -1.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 111, 1, -1.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 26.4, -3.8 , 0 );
setMoveKey( spep_4 -3 + 113, 1, 26.4, -3.8 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 26.4, -3.8 , 0 );

setScaleKey( spep_4 -3 + 66, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 68, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 70, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 72, 1, 2.41, 2.41 );
setScaleKey( spep_4 -3 + 74, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 76, 1, 2.28, 2.28 );
setScaleKey( spep_4 -3 + 78, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 79, 1, 2.21, 2.21 );--
setScaleKey( spep_4 -3 + 80, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 81, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 82, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 83, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 84, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 85, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 87, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 88, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 89, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 91, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 93, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 94, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 95, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 97, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 98, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 99, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 100, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 101, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 102, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 103, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 104, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 105, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 106, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 107, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 114, 1, 0.52, 0.52 );

setRotateKey( spep_4 -3 + 66, 1, 0 );
setRotateKey( spep_4 -3 + 79, 1, 0 );--
setRotateKey( spep_4 -3 + 80, 1, 27 );
setRotateKey( spep_4 -3 + 114, 1, 27 );

-- ** 音 ** --
--腕前に出す
SE019 = playSeVer2( spep_4 + 12, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 14, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE021 = playSeVer2( spep_4 + 20, 1276, "",spep_4 + 52, 0, 16, 0.6);

--気弾発射
SE022 = playSeVer2( spep_4 + 34, 1145, "",spep_4 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 34, SE022, 80 );
SE023 = playSeVer2( spep_4 + 34, 1284, "",spep_4 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 34, SE023, 76 );

--敵ヒット
SE024 = playSeVer2( spep_4 + 68, 1011, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 114 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 114;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_5 = 0;

-- ** ひび割れ ** --
finish_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --フィニッシュ	ef_005_front
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 130, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 130, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --フィニッシュ	ef_005_back
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 130, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 130, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 130, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

--[[setMoveKey( spep_5 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_5 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 13, 1, -24.9, -41.3 , 0 );--
--a1 = 50;
--b1 = 100;
a1 = 0;
b1 = 0;
setMoveKey( spep_5 -3 + 14, 1, -28.8 +a1, -46 -b1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -32.3 +a1, -52 -b1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -37.2 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -37.3 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -37.2 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.3 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -37.2 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 133, 1, -37.2 +a1, -57.6 -b1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 1, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 2, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 10, 1, 1.34, 1.34 );
setScaleKey( spep_5 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 13, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 14, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 16, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 18, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 24, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 26, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 133, 1, 1.79, 1.79 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, 105 );
setRotateKey( spep_5 + 2, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 -3 + 133, 1, 1080 );]]

setMoveKey( spep_5 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_5 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 + 130, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_5 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_5 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_5 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_5 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_5 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_5 + 130, 1, 1.73, 1.725 );

setRotateKey( spep_5 + 0, 1, -122.8 - 232 );
setRotateKey( spep_5 + 2, 1, -122.8 );
setRotateKey( spep_5 -3 + 6, 1, -1 );
setRotateKey( spep_5 -3 + 8, 1, 120.7 );
setRotateKey( spep_5 -3 + 10, 1, 242.5 );
setRotateKey( spep_5 -3 + 12, 1, 364.3 );
setRotateKey( spep_5 -3 + 14, 1, 486 );
setRotateKey( spep_5 -3 + 16, 1, 607.8 );
setRotateKey( spep_5 -3 + 18, 1, 729.5 );
setRotateKey( spep_5 + 130, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE025 = playSeVer2( spep_5 + 14, 1025, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 ); -- ダメージ表示フレーム
endPhase( spep_5 + 120 ); -- 終了フレーム


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始(162F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 162, 0x100, -1, 0, 0, 0 );  --開始	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 162, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 162, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 162, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 162 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 162, first_f, 0 );

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

--迫る
SE005 = playSeVer2( spep_0 + 136, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 162 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 162;


------------------------------------------------------
-- トーマキック(94F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tkick_f = entryEffectLife( spep_1 + 0, SP_02, 94, 0x100, -1, 0, 0, 0 );  --トーマキック	ef_002_front
setEffMoveKey( spep_1 + 0, tkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, tkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 94, tkick_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_f, 0 );
setEffRotateKey( spep_1 + 94, tkick_f, 0 );
setEffAlphaKey( spep_1 + 0, tkick_f, 255 );
setEffAlphaKey( spep_1 + 94 -1, tkick_f, 255 );
setEffAlphaKey( spep_1 + 94, tkick_f, 0 );

tkick_b = entryEffectLife( spep_1 + 0, SP_03, 94, 0x80, -1, 0, 0, 0 );  --トーマキック	ef_002_back
setEffMoveKey( spep_1 + 0, tkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, tkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 94, tkick_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_b, 0 );
setEffRotateKey( spep_1 + 94, tkick_b, 0 );
setEffAlphaKey( spep_1 + 0, tkick_b, 255 );
setEffAlphaKey( spep_1 + 94 -1, tkick_b, 255 );
setEffAlphaKey( spep_1 + 94, tkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
--setDisp( spep_1 -3 + 94, 1, 1 );
changeAnime( spep_1 + 0, 1, 0 );
changeAnime( spep_1 -3 + 40, 1, 4 );
changeAnime( spep_1 -3 + 50, 1, 8 );

setMoveKey( spep_1 + 0, 1, 8, 1.8 , 0 );
setMoveKey( spep_1 + 1, 1, 7.9, 5.6 , 0 );
setMoveKey( spep_1 + 2, 1, 7.9, 9.4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 7.8, 13.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 7.7, 16.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 7.7, 20.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 7.8, 21.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 7.9, 22.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 8.1, 23 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 8.2, 23.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 8.3, 24.6 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 8.5, 25.3 , 0 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 8.5, 25.3 , 0 );
    setMoveKey( SP_dodge + 2, 1, 8.6, 26.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 8.8, 26.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 8.9, 27.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 6.8, 23.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 4.8, 19.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.73, 0.73 );
    setScaleKey( SP_dodge + 2, 1, 0.72, 0.72 );
    setScaleKey( SP_dodge + 4, 1, 0.71, 0.71 );
    setScaleKey( SP_dodge + 6, 1, 0.7, 0.7 );
    setScaleKey( SP_dodge + 8, 1, 0.77, 0.77 );
    setScaleKey( SP_dodge + 10, 1, 0.85, 0.85 );

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

setMoveKey( spep_1 -3 + 24, 1, 8.6, 26.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 8.8, 26.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 8.9, 27.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 6.8, 23.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 4.8, 19.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 2.7, 15.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 0.7, 11.2 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -1.3, 7.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -3.4, 3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -5.4, -1.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -7.4, -5.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -9.4, -9.4 , 0 );
setMoveKey( spep_1 -3 + 49, 1, -11.5, -13.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -66.6, 29.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -50.6, 9.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -52.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -68.6, 3.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -62.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -54.6, 5.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -62.6, 31.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -40.6, 13.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -62.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -62.6, 7.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -50.8, 29.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -62.9, 9.3 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -59.1, 27 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -63.3, 42.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -63.5, 29.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -63.6, 31.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -63.8, 32.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -64, 33.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -64.1, 34.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -64.3, 35.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -64.4, 36.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -64.5, 37.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -64.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -64.7, 38.4 , 0 );
--setMoveKey( spep_1 -3 + 97, 1, 64.7, 38.4 , 0 );

setScaleKey( spep_1 -3 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 28, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 30, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 32, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 34, 1, 0.92, 0.92 );
setScaleKey( spep_1 -3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 39, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 40, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 42, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 44, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 46, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 49, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 68, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 70, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 72, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 74, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 76, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 78, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 80, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 82, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 84, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 86, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 88, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 90, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 92, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 94, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 96, 1, 0.25, 0.25 );
--setScaleKey( spep_1 -3 + 97, 1, 0.25, 0.25 );

setRotateKey( spep_1 -3 + 96, 1, -0 );

-- ** 音 ** --
--蹴り飛ばす
SE006 = playSeVer2( spep_1 + 28, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 44, 1187, "", 0, 0, 0, -1);

--向かってくる
SE008 = playSeVer2( spep_1 + 90, 44, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- トーマ殴り(146F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tknuckle_f = entryEffectLife( spep_2 + 0, SP_04, 146, 0x100, -1, 0, 0, 0 );  --トーマ殴り	ef_003_front
setEffMoveKey( spep_2 + 0, tknuckle_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tknuckle_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tknuckle_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tknuckle_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tknuckle_f, 0 );
setEffRotateKey( spep_2 + 146, tknuckle_f, 0 );
setEffAlphaKey( spep_2 + 0, tknuckle_f, 255 );
setEffAlphaKey( spep_2 + 146 -1, tknuckle_f, 255 );
setEffAlphaKey( spep_2 + 146, tknuckle_f, 0 );

tknuckle_b = entryEffectLife( spep_2 + 0, SP_05, 146, 0x80, -1, 0, 0, 0 );  --トーマ殴り	ef_003_back
setEffMoveKey( spep_2 + 0, tknuckle_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tknuckle_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tknuckle_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tknuckle_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tknuckle_b, 0 );
setEffRotateKey( spep_2 + 146, tknuckle_b, 0 );
setEffAlphaKey( spep_2 + 0, tknuckle_b, 255 );
setEffAlphaKey( spep_2 + 146 -1, tknuckle_b, 255 );
setEffAlphaKey( spep_2 + 146, tknuckle_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 32, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 0, 1, 1082.5, -480.1 , 0 );
setMoveKey( spep_2 + 1, 1, 1041.6, -495.9 , 0 );
setMoveKey( spep_2 + 2, 1, 1000.3, -512.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 958.1, -528.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 915.6, -545.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 872.2, -562.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 828.5, -579.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 784, -597.3 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 738.7, -615.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 692.9, -633.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 646.5, -651.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 599.3, -670.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 551.7, -689.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 503.2, -709.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 454.3, -728.8 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 404.6, -748.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 404.6, -748.8 , 0 );

setScaleKey( spep_2 + 0, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 1, 1, 9.01, 9.01 );
setScaleKey( spep_2 + 2, 1, 8.93, 8.93 );
setScaleKey( spep_2 -3 + 6, 1, 8.85, 8.85 );
setScaleKey( spep_2 -3 + 8, 1, 8.77, 8.77 );
setScaleKey( spep_2 -3 + 10, 1, 8.69, 8.69 );
setScaleKey( spep_2 -3 + 12, 1, 8.6, 8.6 );
setScaleKey( spep_2 -3 + 14, 1, 8.51, 8.51 );
setScaleKey( spep_2 -3 + 16, 1, 8.42, 8.42 );
setScaleKey( spep_2 -3 + 18, 1, 8.33, 8.33 );
setScaleKey( spep_2 -3 + 20, 1, 8.23, 8.23 );
setScaleKey( spep_2 -3 + 22, 1, 8.14, 8.14 );
setScaleKey( spep_2 -3 + 24, 1, 8.04, 8.04 );
setScaleKey( spep_2 -3 + 26, 1, 7.94, 7.94 );
setScaleKey( spep_2 -3 + 28, 1, 7.84, 7.84 );
setScaleKey( spep_2 -3 + 31, 1, 7.73, 7.73 );
setScaleKey( spep_2 -3 + 32, 1, 7.73, 7.73 );

setRotateKey( spep_2 + 0, 1, 13.5 );
setRotateKey( spep_2 + 1, 1, 13.4 );
setRotateKey( spep_2 + 2, 1, 13.4 );
setRotateKey( spep_2 -3 + 6, 1, 13.3 );
setRotateKey( spep_2 -3 + 8, 1, 13.2 );
setRotateKey( spep_2 -3 + 10, 1, 13.2 );
setRotateKey( spep_2 -3 + 12, 1, 13.1 );
setRotateKey( spep_2 -3 + 14, 1, 13 );
setRotateKey( spep_2 -3 + 16, 1, 13 );
setRotateKey( spep_2 -3 + 18, 1, 12.9 );
setRotateKey( spep_2 -3 + 20, 1, 12.8 );
setRotateKey( spep_2 -3 + 22, 1, 12.8 );
setRotateKey( spep_2 -3 + 24, 1, 12.7 );
setRotateKey( spep_2 -3 + 26, 1, 12.6 );
setRotateKey( spep_2 -3 + 28, 1, 12.5 );
setRotateKey( spep_2 -3 + 31, 1, 12.5 );
setRotateKey( spep_2 -3 + 32, 1, 12.5 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 149, 1, 0 );
changeAnime( spep_2 -3 + 42, 1, 6 );
changeAnime( spep_2 -3 + 84, 1, 8 );

setMoveKey( spep_2 -3 + 42, 1, -1121.7, -330.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -1013, -259.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -777.2, -151.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -434.8, -15.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -410.2, 63.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -363.3, 82.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -218.4, 123.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -220.1, 130.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -221.6, 136.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -223, 143 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -224, 148.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -225, 154.7 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -225.8, 160.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -226.3, 165.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -226.7, 170.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -227, 175.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -227, 180.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -226.8, 184.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -226.4, 188.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -226, 192.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -225.2, 196.5 , 0 );
setMoveKey( spep_2 -3 + 83, 1, -225.2, 196.5 , 0 );--
setMoveKey( spep_2 -3 + 84, 1, -154.5, 152.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -156.4, 158.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -156.4, 198.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -156.4, 100.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -135.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -176.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -156.4, 160.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -156.4, 119.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -135.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -176.9, 139.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -156.4, 160.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -156.4, 185.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -116.4, 122.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -188.4, 139.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -156.4, 156.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -140.4, 126 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -156.7, 196.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -124.4, 152.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -84.6, 99.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -38, 38.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -50.1, 48.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -49.2, 57.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -59.9, 69.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -65.9, 70.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -75.2, 79.4 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -71.5, 85 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -79.4, 93.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -82.6, 91.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -89.1, 96.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -82.6, 98.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -87.8, 104.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -88.1, 98.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -92.2, 100.4 , 0 );
setMoveKey( spep_2 -3 + 149, 1, -92.2, 100.4 , 0 );

setScaleKey( spep_2 -3 + 42, 1, 11.66, 11.66 );
setScaleKey( spep_2 -3 + 44, 1, 10.53, 10.53 );
setScaleKey( spep_2 -3 + 46, 1, 8.41, 8.41 );
setScaleKey( spep_2 -3 + 48, 1, 5.45, 5.45 );
setScaleKey( spep_2 -3 + 50, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 52, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 54, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 60, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 62, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 64, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 66, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 68, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 70, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 72, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 74, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 76, 1, 3.13, 3.13 );
setScaleKey( spep_2 -3 + 78, 1, 3.12, 3.12 );
setScaleKey( spep_2 -3 + 80, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 82, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 83, 1, 3.1, 3.1 );--
setScaleKey( spep_2 -3 + 84, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 114, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 116, 1, 3.45, 3.45 );
setScaleKey( spep_2 -3 + 118, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 120, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 126, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 128, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 130, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 132, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 134, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 136, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 138, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 140, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 149, 1, 0.66, 0.66 );

setRotateKey( spep_2 -3 + 42, 1, 27.3 );
setRotateKey( spep_2 -3 + 44, 1, 27 );
setRotateKey( spep_2 -3 + 46, 1, 25.8 );
setRotateKey( spep_2 -3 + 48, 1, 23.5 );
setRotateKey( spep_2 -3 + 50, 1, 27.1 );
setRotateKey( spep_2 -3 + 52, 1, 29 );
setRotateKey( spep_2 -3 + 54, 1, 34.4 );
setRotateKey( spep_2 -3 + 56, 1, 34.6 );
setRotateKey( spep_2 -3 + 58, 1, 34.9 );
setRotateKey( spep_2 -3 + 60, 1, 35.1 );
setRotateKey( spep_2 -3 + 62, 1, 35.4 );
setRotateKey( spep_2 -3 + 64, 1, 35.8 );
setRotateKey( spep_2 -3 + 66, 1, 36.1 );
setRotateKey( spep_2 -3 + 68, 1, 36.4 );
setRotateKey( spep_2 -3 + 70, 1, 36.8 );
setRotateKey( spep_2 -3 + 72, 1, 37.2 );
setRotateKey( spep_2 -3 + 74, 1, 37.6 );
setRotateKey( spep_2 -3 + 76, 1, 38 );
setRotateKey( spep_2 -3 + 78, 1, 38.5 );
setRotateKey( spep_2 -3 + 80, 1, 38.9 );
setRotateKey( spep_2 -3 + 82, 1, 39.4 );
setRotateKey( spep_2 -3 + 83, 1, 39.4 );--
setRotateKey( spep_2 -3 + 84, 1, 3.6 );
setRotateKey( spep_2 -3 + 86, 1, 3.8 );
setRotateKey( spep_2 -3 + 114, 1, 3.8 );
setRotateKey( spep_2 -3 + 116, 1, 3.9 );
setRotateKey( spep_2 -3 + 149, 1, 3.9 );

-- ** 音 ** --
--振りかぶる
SE010 = playSeVer2( spep_2 + 28, 1116, "",spep_2 + 76, 0, 22, -1);

--腹パンチ
SE011 = playSeVer2( spep_2 + 64, 1003, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 74, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE012, 77 );
SE013 = playSeVer2( spep_2 + 76, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE013, 75 );
SE014 = playSeVer2( spep_2 + 78, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 80, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE015, 69 );

--敵吹き飛ぶ
SE016 = playSeVer2( spep_2 + 100, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE016, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
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

--ズームアウト
SE018 = playSeVer2( spep_3 + 84, 1232, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- トーマ気弾放つ(114F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_4 + 0, SP_06, 114, 0x100, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_004_front
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 114, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 114, kidan_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 114, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 114 -1, kidan_f, 255 );
setEffAlphaKey( spep_4 + 114, kidan_f, 0 );

kidan_b = entryEffectLife( spep_4 + 0, SP_07, 114, 0x80, -1, 0, 0, 0 );  --トーマ気弾放つ	ef_004_back
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 114, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 114, kidan_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 114, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 114 -1, kidan_b, 255 );
setEffAlphaKey( spep_4 + 114, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 66, 1, 1 );
setDisp( spep_4 -3 + 114, 1, 0 );
changeAnime( spep_4 -3 + 66, 1, 8 );
changeAnime( spep_4 -3 + 80, 1, 105 );

setMoveKey( spep_4 -3 + 66, 1, -46.9, -4.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -46, -3.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -45.1, -2.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -44.2, -1.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -43.3, -1 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -42.4, -0.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -41.5, 0.8 , 0 );
setMoveKey( spep_4 -3 + 79, 1, -41.5, 0.8 , 0 );--
setMoveKey( spep_4 -3 + 80, 1, -4.3, -18.4 , 0 );
setMoveKey( spep_4 -3 + 81, 1, -4.3, -18.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -4.2, -73 , 0 );
setMoveKey( spep_4 -3 + 83, 1, -4.2, -73 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -34, -47.7 , 0 );
setMoveKey( spep_4 -3 + 85, 1, -34, -47.7 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 2.1, -62.4 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 2.1, -62.4 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 14.2, 3 , 0 );
setMoveKey( spep_4 -3 + 89, 1, 14.2, 3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -37.6, -91.7 , 0 );
setMoveKey( spep_4 -3 + 91, 1, -37.6, -91.7 , 0 );
setMoveKey( spep_4 -3 + 92, 1, -9.5, -46.4 , 0 );
setMoveKey( spep_4 -3 + 93, 1, -9.5, -46.4 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 11.6, -41 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 11.6, -41 , 0 );
setMoveKey( spep_4 -3 + 96, 1, -1.3, 24.3 , 0 );
setMoveKey( spep_4 -3 + 97, 1, -1.3, 24.3 , 0 );
setMoveKey( spep_4 -3 + 98, 1, -1.2, -70.4 , 0 );
setMoveKey( spep_4 -3 + 99, 1, -1.2, -70.4 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -0, -10.1 , 0 );
setMoveKey( spep_4 -3 + 101, 1, -0, -10.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 3.1, -19.7 , 0 );
setMoveKey( spep_4 -3 + 103, 1, 3.1, -19.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, -3.8, 20.6 , 0 );
setMoveKey( spep_4 -3 + 105, 1, -3.8, 20.6 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 12.4, -31.1 , 0 );
setMoveKey( spep_4 -3 + 107, 1, 12.4, -31.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -12.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 109, 1, -12.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 1.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 111, 1, 1.5, -3.8 , 0 );
setMoveKey( spep_4 -3 + 112, 1, -26.4, -3.8 , 0 );
setMoveKey( spep_4 -3 + 113, 1, -26.4, -3.8 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -26.4, -3.8 , 0 );

setScaleKey( spep_4 -3 + 66, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 68, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 70, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 72, 1, 2.41, 2.41 );
setScaleKey( spep_4 -3 + 74, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 76, 1, 2.28, 2.28 );
setScaleKey( spep_4 -3 + 78, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 79, 1, 2.21, 2.21 );--
setScaleKey( spep_4 -3 + 80, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 81, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 82, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 83, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 84, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 85, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 87, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 88, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 89, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 91, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 93, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 94, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 95, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 97, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 98, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 99, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 100, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 101, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 102, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 103, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 104, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 105, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 106, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 107, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 114, 1, 0.52, 0.52 );

setRotateKey( spep_4 -3 + 66, 1, -0 );
setRotateKey( spep_4 -3 + 79, 1, -0 );--
setRotateKey( spep_4 -3 + 80, 1, -27 );
setRotateKey( spep_4 -3 + 114, 1, -27 );

-- ** 音 ** --
--腕前に出す
SE019 = playSeVer2( spep_4 + 12, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 14, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE021 = playSeVer2( spep_4 + 20, 1276, "",spep_4 + 52, 0, 16, 0.6);

--気弾発射
SE022 = playSeVer2( spep_4 + 34, 1145, "",spep_4 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 34, SE022, 80 );
SE023 = playSeVer2( spep_4 + 34, 1284, "",spep_4 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 34, SE023, 76 );

--敵ヒット
SE024 = playSeVer2( spep_4 + 68, 1011, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 114 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 114;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_5 = 0;

-- ** ひび割れ ** --
finish_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --フィニッシュ	ef_005_front
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 130, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 130, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 130, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --フィニッシュ	ef_005_back
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 130, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 130, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 130, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 130, 1, 0 );
changeAnime( spep_5 + 0, 1, 7 );

--[[setMoveKey( spep_5 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_5 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 13, 1, -24.9, -41.3 , 0 );--
--a1 = 50;
--b1 = 100;
a1 = 0;
b1 = 0;
setMoveKey( spep_5 -3 + 14, 1, -28.8 +a1, -46 -b1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -32.3 +a1, -52 -b1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -37.2 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -37.3 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -37.2 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.3 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -37.2 +a1, -57.6 -b1 , 0 );
setMoveKey( spep_5 -3 + 133, 1, -37.2 +a1, -57.6 -b1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 1, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 2, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 10, 1, 1.34, 1.34 );
setScaleKey( spep_5 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 13, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 14, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 16, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 18, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 24, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 26, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 133, 1, 1.79, 1.79 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, 105 );
setRotateKey( spep_5 + 2, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 -3 + 133, 1, 1080 );]]

setMoveKey( spep_5 + 0, 1, 8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_5 + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 28.8, -46 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 32.3, -52 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_5 + 130, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_5 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_5 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_5 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_5 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_5 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_5 + 130, 1, 1.73, 1.725 );

setRotateKey( spep_5 + 0, 1, 122.8 + 232 );
setRotateKey( spep_5 + 2, 1, 122.8 );
setRotateKey( spep_5 -3 + 6, 1, 1 );
setRotateKey( spep_5 -3 + 8, 1, -120.7 );
setRotateKey( spep_5 -3 + 10, 1, -242.5 );
setRotateKey( spep_5 -3 + 12, 1, -364.3 );
setRotateKey( spep_5 -3 + 14, 1, -486 );
setRotateKey( spep_5 -3 + 16, 1, -607.8 );
setRotateKey( spep_5 -3 + 18, 1, -729.5 );
setRotateKey( spep_5 + 130, 1, -729.5 );

-- ** 音 ** --
--画面割れ
SE025 = playSeVer2( spep_5 + 14, 1025, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 ); -- ダメージ表示フレーム
endPhase( spep_5 + 120 ); -- 終了フレーム


end