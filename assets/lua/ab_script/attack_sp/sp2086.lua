--1020930:トワ_ブラッディソース
--sp_effect_a5_00015
--sp2086

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
SP_01 = 156282;  --構え（味方側） ef_001
SP_02 = 156283;  --発射（敵味方共通）   ef_002
SP_03 = 156284;  --命中（味方側） ef_003

--敵側
SP_01r = 156285;  --構え（敵側）  ef_001_r
SP_03r = 156286;  --命中（敵側）  ef_003_r


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 構え(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 195, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 195, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 195, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 195, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 195, first_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 101 );

setMoveKey( spep_0 + 0, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 1, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 2, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 3, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 4, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 5, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 6, 1, 198.6, 37.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 198.6, 37.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 2, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 4, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 6, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 8, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 10, 1, 0.6, 0.6 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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
setDisp( spep_0 + 40, 1, 0 );

setMoveKey( spep_0 + 40, 1, 198.6, 37.9 , 0 );

setScaleKey( spep_0 + 40, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 40, 1, 0 );


-- ** 音 ** --
--指差す1
SE001 = playSe( spep_0 + 16, 1026 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 25 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 50 );
setSeVolumeByWorkId( spep_0 + 19, SE001, 75 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 100 );
setStartTimeMs( SE001,  100 );
--指差す2
SE002 = playSe( spep_0 + 14, 1003 );

--気弾集まる1
SE003 = playSe( spep_0 + 34, 1240 ,"",0.7 );
stopSe( spep_0 +196 + 18, SE003, 12 );

--気弾集まる2
SE004 = playSe( spep_0 + 34, 1252 );
stopSe( spep_0 +196 + 28, SE004, 0 );

--気弾集まる2
SE005 = playSe( spep_0 + 34, 1262 );
setSeVolumeByWorkId( spep_0 + 34, SE005, 62 );

--指を振る1
SE006 = playSe( spep_0 + 74, 4 );

--指を振る2
SE007 = playSe( spep_0 + 74, 1048 );

--指を振る3
SE008 = playSe( spep_0 + 100, 4 );
setSeVolumeByWorkId( spep_0 + 100, SE008, 83 );

--指を振る4
SE009 = playSe( spep_0 + 106, 1048 );
setSeVolumeByWorkId( spep_0 + 106, SE009, 81 );

--指を振る5
SE010 = playSe( spep_0 + 134, 4 );

--指を振る6
SE011 = playSe( spep_0 + 138, 1048 );
stopSe(spep_0 + 150, SE011, 5);

--指キラーン1
SE012 = playSe( spep_0 + 162, 1221 );

--指キラーン2
SE013 = playSe( spep_0 + 162, 1184 );
setSeVolumeByWorkId( spep_0 + 162, SE013, 76 );
stopSe( spep_0 +196 + 0, SE013, 30 );
setPitch( spep_0 + 162, SE013, 400 );
setTimeStretch( SE013, 1.27, 10, 1 );

--指キラーン3
SE014 = playSe( spep_0 + 162, 1273 );
setSeVolumeByWorkId( spep_0 + 162, SE014, 85 );
setPitch( spep_0 + 162, SE014, 400 );
setTimeStretch( SE014, 1.27, 10, 1 );

--指キラーン4
SE015 = playSe( spep_0 + 162, 1046 );
setSeVolumeByWorkId( spep_0 + 162, SE015, 114 );

--気弾溜め1
SE016 = playSe( spep_0 + 194, 1161 );
setSeVolumeByWorkId( spep_0 + 194, SE016, 42 );
stopSe( spep_0 +196 + 114, SE016, 0 );

--気弾溜め2
SE017 = playSe( spep_0 + 194, 49 );

-- ** 白フェード ** --
entryFade( spep_0 + 168, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


--------------------------------------
--発射(116F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_1 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, shot, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, shot, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot, 0 );
setEffRotateKey( spep_1 + 116, shot, 0 );
setEffAlphaKey( spep_1 + 0, shot, 255 );
setEffAlphaKey( spep_1 + 116, shot, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 3,  906, 112, 0x100, -1, -24, 135, 0 );  --集中線
setEffShake( spep_1 + 3, shuchusen1, 112, 25 );
setEffMoveKey(   spep_1 + 3, shuchusen1, -24, 135 , 0 );
setEffMoveKey(   spep_1 + 115, shuchusen1, -24, 135 , 0 );
setEffScaleKey(  spep_1 + 3, shuchusen1, 1.4, 1.7 );
setEffScaleKey(  spep_1 + 115, shuchusen1, 1.4, 1.7 );
setEffRotateKey( spep_1 + 3, shuchusen1, 0 );
setEffRotateKey( spep_1 + 115, shuchusen1, 0 );
setEffAlphaKey(  spep_1 + 3, shuchusen1, 255 );
setEffAlphaKey(  spep_1 + 115, shuchusen1, 255 );

spep_x = spep_1 + 20;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );


-- ** 音 ** --
--顔カットイン
SE018 = playSe( spep_1 + 24, 1018 );

--気弾溜め3
SE019 = playSe( spep_1 + 32, 49 );

--気弾溜め4
SE020 = playSe( spep_1 + 66, 49 );

--気弾溜め5
SE021 = playSe( spep_1 + 100, 49 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

--気弾発射前溜め1
SE023 = playSe( spep_2 + 88, 1240 );
stopSe( spep_2 +94 + 70, SE023, 12 );

--気弾発射前溜め2
SE024 = playSe( spep_2 + 88, 1252 );
setSeVolumeByWorkId( spep_2 + 88, SE024, 67 );
stopSe( spep_2 +94 + 68, SE024, 10 );

--気弾発射前溜め3
SE025 = playSe( spep_2 + 88, 1161 );
setSeVolumeByWorkId( spep_2 + 88, SE025, 48 );
stopSe( spep_2 +94 + 62, SE025, 0 );

--気弾発射前溜め4
SE026 = playSe( spep_2 + 88, 49 );
setSeVolumeByWorkId( spep_2 + 88, SE026, 77 );

spep_3 = spep_2 + 94;


--------------------------------------
--命中(186F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --命中(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 210, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 210, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 210, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 210, finish_f, 255 );

-- ** 音 ** --
--気弾発射前溜め5
SE027 = playSe( spep_3 + 28, 49 );
setSeVolumeByWorkId( spep_3 + 28, SE027, 68 );

--気弾発射1
SE028 = playSe( spep_3 + 30, 1117 );
setSeVolumeByWorkId( spep_3 + 30, SE028, 122 );
stopSe( spep_3 + 60, SE028, 12 );

--気弾発射2
SE029 = playSe( spep_3 + 30, 1027 );
setSeVolumeByWorkId( spep_3 + 30, SE029, 82 );

--ラスト爆発1
SE030 = playSe( spep_3 + 60, 1023 );

--ラスト爆発2
SE031 = playSe( spep_3 + 60, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 210, 0, 10, 10, 10, 170);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 64, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 170, 16, 26, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 100 );
endPhase( spep_3 + 200 );--200


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 195, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 195, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 195, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 195, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 195, first_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 101 );

setMoveKey( spep_0 + 0, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 1, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 2, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 3, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 4, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 5, 1, 198.6, 37.9 , 0 );
setMoveKey( spep_0 + 6, 1, 198.6, 37.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 198.6, 37.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 198.6, 37.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 2, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 4, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 6, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 8, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 10, 1, 0.6, 0.6 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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
setDisp( spep_0 + 40, 1, 0 );

setMoveKey( spep_0 + 40, 1, 198.6, 37.9 , 0 );

setScaleKey( spep_0 + 40, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 40, 1, 0 );


-- ** 音 ** --
--指差す1
SE001 = playSe( spep_0 + 16, 1026 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 25 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 50 );
setSeVolumeByWorkId( spep_0 + 19, SE001, 75 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 100 );
setStartTimeMs( SE001,  100 );

--指差す2
SE002 = playSe( spep_0 + 14, 1003 );

--気弾集まる1
SE003 = playSe( spep_0 + 34, 1240 ,"",0.7 );
stopSe( spep_0 +196 + 18, SE003, 12 );

--気弾集まる2
SE004 = playSe( spep_0 + 34, 1252 );
stopSe( spep_0 +196 + 28, SE004, 0 );

--気弾集まる2
SE005 = playSe( spep_0 + 34, 1262 );
setSeVolumeByWorkId( spep_0 + 34, SE005, 62 );

--指を振る1
SE006 = playSe( spep_0 + 74, 4 );

--指を振る2
SE007 = playSe( spep_0 + 74, 1048 );

--指を振る3
SE008 = playSe( spep_0 + 100, 4 );
setSeVolumeByWorkId( spep_0 + 100, SE008, 83 );

--指を振る4
SE009 = playSe( spep_0 + 106, 1048 );
setSeVolumeByWorkId( spep_0 + 106, SE009, 81 );

--指を振る5
SE010 = playSe( spep_0 + 134, 4 );

--指を振る6
SE011 = playSe( spep_0 + 138, 1048 );
stopSe(spep_0 + 150, SE011, 5);

--指キラーン1
SE012 = playSe( spep_0 + 162, 1221 );

--指キラーン2
SE013 = playSe( spep_0 + 162, 1184 );
setSeVolumeByWorkId( spep_0 + 162, SE013, 76 );
stopSe( spep_0 +196 + 0, SE013, 30 );
setPitch( spep_0 + 162, SE013, 400 );
setTimeStretch( SE013, 1.27, 10, 1 );

--指キラーン3
SE014 = playSe( spep_0 + 162, 1273 );
setSeVolumeByWorkId( spep_0 + 162, SE014, 85 );
setPitch( spep_0 + 162, SE014, 400 );
setTimeStretch( SE014, 1.27, 10, 1 );

--指キラーン4
SE015 = playSe( spep_0 + 162, 1046 );
setSeVolumeByWorkId( spep_0 + 162, SE015, 114 );

--気弾溜め1
SE016 = playSe( spep_0 + 194, 1161 );
setSeVolumeByWorkId( spep_0 + 194, SE016, 42 );
stopSe( spep_0 +196 + 114, SE016, 0 );

--気弾溜め2
SE017 = playSe( spep_0 + 194, 49 );

-- ** 白フェード ** --
entryFade( spep_0 + 168, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


--------------------------------------
--発射(116F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_1 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, shot, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, shot, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot, 0 );
setEffRotateKey( spep_1 + 116, shot, 0 );
setEffAlphaKey( spep_1 + 0, shot, 255 );
setEffAlphaKey( spep_1 + 116, shot, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 3,  906, 112, 0x100, -1, -24, 135, 0 );  --集中線
setEffShake( spep_1 + 3, shuchusen1, 112, 25 );
setEffMoveKey(   spep_1 + 3, shuchusen1, -24, 135 , 0 );
setEffMoveKey(   spep_1 + 115, shuchusen1, -24, 135 , 0 );
setEffScaleKey(  spep_1 + 3, shuchusen1, 1.4, 1.7 );
setEffScaleKey(  spep_1 + 115, shuchusen1, 1.4, 1.7 );
setEffRotateKey( spep_1 + 3, shuchusen1, 0 );
setEffRotateKey( spep_1 + 115, shuchusen1, 0 );
setEffAlphaKey(  spep_1 + 3, shuchusen1, 255 );
setEffAlphaKey(  spep_1 + 115, shuchusen1, 255 );

spep_x = spep_1 + 20;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );


-- ** 音 ** --
--顔カットイン
--SE018 = playSe( spep_1 + 24, 1018 );

--気弾溜め3
SE019 = playSe( spep_1 + 32, 49 );

--気弾溜め4
SE020 = playSe( spep_1 + 66, 49 );

--気弾溜め5
SE021 = playSe( spep_1 + 100, 49 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );


--気弾発射前溜め1
SE023 = playSe( spep_2 + 88, 1240 );
stopSe( spep_2 +94 + 70, SE023, 12 );

--気弾発射前溜め2
SE024 = playSe( spep_2 + 88, 1252 );
setSeVolumeByWorkId( spep_2 + 88, SE024, 67 );
stopSe( spep_2 +94 + 68, SE024, 10 );

--気弾発射前溜め3
SE025 = playSe( spep_2 + 88, 1161 );
setSeVolumeByWorkId( spep_2 + 88, SE025, 48 );
stopSe( spep_2 +94 + 62, SE025, 0 );

--気弾発射前溜め4
SE026 = playSe( spep_2 + 88, 49 );
setSeVolumeByWorkId( spep_2 + 88, SE026, 77 );

spep_3 = spep_2 + 94;


--------------------------------------
--命中(186F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --命中(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 210, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 210, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 210, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 210, finish_f, 255 );

-- ** 音 ** --
--気弾発射前溜め5
SE027 = playSe( spep_3 + 28, 49 );
setSeVolumeByWorkId( spep_3 + 28, SE027, 68 );

--気弾発射1
SE028 = playSe( spep_3 + 30, 1117 );
setSeVolumeByWorkId( spep_3 + 30, SE028, 122 );
stopSe( spep_3 + 60, SE028, 12 );

--気弾発射2
SE029 = playSe( spep_3 + 30, 1027 );
setSeVolumeByWorkId( spep_3 + 30, SE029, 82 );

--ラスト爆発1
SE030 = playSe( spep_3 + 60, 1023 );

--ラスト爆発2
SE031 = playSe( spep_3 + 60, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 210, 0, 10, 10, 10, 170);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 64, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 170, 16, 26, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 100 );
endPhase( spep_3 + 200 );--200

end