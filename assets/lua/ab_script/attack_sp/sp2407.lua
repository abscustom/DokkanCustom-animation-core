--1024860:LR_超サイヤ人孫悟空_必殺技：超メテオスマッシュ
--sp_effect_b1_00216
--sp2407

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

-- エフェクト(共通)
SP_01 = 160421; --カードカットイン前 ef_001
SP_02 = 160422; --フィニッシュ_フロント ef_002_front

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 206;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 446 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 446 , SP_02, spep_2 + 446 -1 + 2, 1);

        -- ** 音 ** --
        --パンチ１
        SE066 = playSeVer2( spep_2 + 446 + 3, 1189, "", 0, 0, 0, -1);


    else 

        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- カードカットイン前(206F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 206, 0x100, -1, 0, 0, 0 );  --カードカットイン前   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 206, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 206, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 206 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 206, first_f, 0 );


-- ** 顔カットイン ** --
spep_x = spep_0 + 76;
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


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 79 );
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 79 );
SE005 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 79 );
SE007 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE007, 79 );
SE010 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE010, 79 );
SE011 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE011, 79 );
SE016 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE016, 79 );

--入り
SE002 = playSeVer2( spep_0 + 6, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 71 );
setPitch( spep_0 + 6, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--顔カットイン
SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE008 = playSeVer2( spep_0 + 94, 1035, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 100, 1024, "",spep_0 + 222, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 100, SE009, 76 );

--向かってくる
SE012 = playSeVer2( spep_0 + 150, 1182, "",spep_0 + 222 -1, 0, 8, -1);
SE013 = playSeVer2( spep_0 + 150, 9, "",spep_0 + 222 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 150, SE013, 83 );
SE014 = playSeVer2( spep_0 + 152, 44, "",spep_0 + 222 -1, 0, 8, -1);
SE015 = playSeVer2( spep_0 + 152, 1068, "",spep_0 + 222 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 152, SE015, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 206 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 206+4;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- フィニッシュ(670F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect03 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --フィニッシュ_フロント ef_002_front
setEffMoveKey( spep_2 + 0, effect03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 670, effect03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect03, 1.0, 1.0 );
setEffScaleKey( spep_2 + 670, effect03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect03, 0 );
setEffRotateKey( spep_2 + 670, effect03, 0 );
setEffAlphaKey( spep_2 + 0, effect03, 255 );
setEffAlphaKey( spep_2 + 670, effect03, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 101 );

setMoveKey( spep_2 + 0, 1, 105.2, 60.2 , 0 );
setMoveKey( spep_2 + 2, 1, 110.2, 62.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 114.9, 64.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 119.1, 66.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 123.2, 68.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 127, 70.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 130.4, 72.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 133.5, 73.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 136.5, 75 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 139.1, 76.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 141.5, 77.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 143.8, 78.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 145.7, 79.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 147.4, 80.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 149, 81 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 150.4, 81.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 151.6, 82.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 152.6, 82.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 153.5, 83.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 154.2, 83.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 154.9, 83.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 2, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 10, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 12, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 14, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 16, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 20, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 24, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 26, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 28, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 34, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 36, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 38, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 40, 1, 0.22, 0.22 );

setRotateKey( spep_2 + 0, 1, 33.4 );
setRotateKey( spep_2 + 2, 1, 32.9 );
setRotateKey( spep_2 -3 + 6, 1, 32.4 );
setRotateKey( spep_2 -3 + 8, 1, 31.9 );
setRotateKey( spep_2 -3 + 10, 1, 31.4 );
setRotateKey( spep_2 -3 + 12, 1, 31 );
setRotateKey( spep_2 -3 + 14, 1, 30.7 );
setRotateKey( spep_2 -3 + 16, 1, 30.3 );
setRotateKey( spep_2 -3 + 18, 1, 30 );
setRotateKey( spep_2 -3 + 20, 1, 29.7 );
setRotateKey( spep_2 -3 + 22, 1, 29.5 );
setRotateKey( spep_2 -3 + 24, 1, 29.2 );
setRotateKey( spep_2 -3 + 26, 1, 29 );
setRotateKey( spep_2 -3 + 28, 1, 28.8 );
setRotateKey( spep_2 -3 + 30, 1, 28.7 );
setRotateKey( spep_2 -3 + 32, 1, 28.5 );
setRotateKey( spep_2 -3 + 34, 1, 28.4 );
setRotateKey( spep_2 -3 + 36, 1, 28.3 );
setRotateKey( spep_2 -3 + 38, 1, 28.2 );
setRotateKey( spep_2 -3 + 40, 1, 28.1 );
setRotateKey( spep_2 -3 + 42, 1, 28 );

-- ** 音 ** --
--飛んでいく
SE018 = playSeVer2( spep_2 + 10, 1068, "",spep_2 + 92, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 10, SE018, 86 );
SE019 = playSeVer2( spep_2 + 10, 44, "",spep_2 + 74, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 10, SE019, 84 );
SE020 = playSeVer2( spep_2 + 10, 1183, "",spep_2 + 74, 0, 10, -1);
SE021 = playSeVer2( spep_2 + 10, 1355, "",spep_2 + 66, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 10, SE021, 34 );
setPitch( spep_2 + 10, SE021, 300 );
setTimeStretch( SE021, 1.2, 30, 4 );
SE022 = playSeVer2( spep_2 + 18, 1277, "",spep_2 + 74, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 670 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE001X, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 154.9, 83.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 155.5, 84 , 0 );
    setMoveKey( SP_dodge + 4, 1, 155.8, 84.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 156.2, 84.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 156.5, 84.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 156.6, 84.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.22, 0.22 );
    setScaleKey( SP_dodge + 2, 1, 0.22, 0.22 );
    setScaleKey( SP_dodge + 4, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 10, 1, 0.21, 0.21 );

    setRotateKey( SP_dodge + 0, 1, 28 );
    setRotateKey( SP_dodge + 2, 1, 28 );
    setRotateKey( SP_dodge + 4, 1, 27.9 );
    setRotateKey( SP_dodge + 8, 1, 27.9 );
    setRotateKey( SP_dodge + 10, 1, 27.8 );

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 256, 1, 0 );
changeAnime( spep_2 -3 + 76, 1, 108 );
changeAnime( spep_2 -3 + 118, 1, 107 );
changeAnime( spep_2 -3 + 238, 1, 108 );
changeAnime( spep_2 -3 + 244, 1, 106 );

setMoveKey( spep_2 -3 + 44, 1, 155.5, 84 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 155.8, 84.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 156.2, 84.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 156.5, 84.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 156.6, 84.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 156.7, 84.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 156.8, 84.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 156.9, 84.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 156.8, 84.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 156.8, 84.5 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 156.8, 84.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 79.6, -67.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 89.9, -67.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 89.9, -67.2 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 132, -67.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 127.1, -52.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 117.6, -47.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 110.8, -62.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 120.6, -65.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 117.8, -56.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 117.8, -56.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 113.7, -56.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 113.7, -56.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 109.5, -56.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 109.5, -56.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 106.6, -56.8 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 106.6, -56.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 285.5, 249.2 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 284, 247.6 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 283, 249.4 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 269.4, 627.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 268.7, 626.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 267.3, 611.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 265.3, 615.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 370.7, 616.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 395.5, 591.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 391.4, 589.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 395.5, 590.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 271.1, 624.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 263.3, 620.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 268.4, 615 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 268, 616.3 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 369.5, 616 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 389.3, 583.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 392.6, 587.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 268.3, 629.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 268.1, 627 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 263.8, 618.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 263.9, 616.4 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 366.1, 615.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 389.9, 584.9 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 389.6, 585.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 388.4, 585 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 263.2, 632.1 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 268, 619 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 267.4, 617.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 262.4, 616.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 369.9, 618.2 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 394.6, 590.9 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 393.2, 584.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 264.8, 631.2 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 267.4, 626.5 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 266.6, 612.6 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 271.1, 615.2 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 372.7, 619 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 391.4, 588.5 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 395.2, 587.2 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 396.2, 586.5 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 267.6, 625.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 265.8, 618.1 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 264.7, 617.9 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 264.2, 615.3 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 367.4, 618.1 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 394, 587.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 393.7, 590.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 266.8, 629.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 267.2, 629.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 270, 619.2 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 269, 616.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 371.8, 612.7 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 393.9, 588.1 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 391.4, 588.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 392.8, 584.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 271.3, 630.3 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 268.4, 612.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 272.9, 619 , 0 );
setMoveKey( spep_2 -3 + 237, 1, 267.1, 615 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -10.6, 1.3 , 0 );
setMoveKey( spep_2 -3 + 243, 1, -10.6, 1.3 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 267.5, -176.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 277.5, -168.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 280.7, -175.3 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 263.6, -185.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 406.3, -232.3 , 0 );
setMoveKey( spep_2 -3 + 255, 1, 415, -228.2 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 415, -228.2 , 0 );

setScaleKey( spep_2 -3 + 44, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 46, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 62, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 63, 1, 0.21, 0.21 );

s1 = 1.0;
setScaleKey( spep_2 -3 + 64, 1, 5.3 -s1, 5.3 -s1 );
setScaleKey( spep_2 -3 + 117, 1, 5.3 -s1, 5.3 -s1 );

setScaleKey( spep_2 -3 + 118, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 122, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 124, 1, 4.57, 4.57 );
setScaleKey( spep_2 -3 + 237, 1, 4.57, 4.57 );
setScaleKey( spep_2 -3 + 238, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 256, 1, 1.46, 1.46 );

setRotateKey( spep_2 -3 + 44, 1, 28 );
setRotateKey( spep_2 -3 + 46, 1, 27.9 );
setRotateKey( spep_2 -3 + 50, 1, 27.9 );
setRotateKey( spep_2 -3 + 52, 1, 27.8 );
setRotateKey( spep_2 -3 + 62, 1, 27.8 );
setRotateKey( spep_2 -3 + 63, 1, 27.8 );
setRotateKey( spep_2 -3 + 64, 1, 15 );
setRotateKey( spep_2 -3 + 75, 1, 15 );
setRotateKey( spep_2 -3 + 76, 1, -10 );
setRotateKey( spep_2 -3 + 80, 1, -10 );
setRotateKey( spep_2 -3 + 82, 1, -11.5 );
setRotateKey( spep_2 -3 + 88, 1, -11.5 );
setRotateKey( spep_2 -3 + 90, 1, -13.5 );
setRotateKey( spep_2 -3 + 96, 1, -13.5 );
setRotateKey( spep_2 -3 + 98, 1, -15.5 );
setRotateKey( spep_2 -3 + 102, 1, -15.5 );
setRotateKey( spep_2 -3 + 104, 1, -17 );
setRotateKey( spep_2 -3 + 117, 1, -17 );
setRotateKey( spep_2 -3 + 118, 1, -98 );
setRotateKey( spep_2 -3 + 130, 1, -98 );
setRotateKey( spep_2 -3 + 132, 1, -94 );
setRotateKey( spep_2 -3 + 134, 1, -91 );
setRotateKey( spep_2 -3 + 138, 1, -91 );
setRotateKey( spep_2 -3 + 140, 1, -98 );
setRotateKey( spep_2 -3 + 146, 1, -98 );
setRotateKey( spep_2 -3 + 148, 1, -94 );
setRotateKey( spep_2 -3 + 150, 1, -91 );
setRotateKey( spep_2 -3 + 152, 1, -91 );
setRotateKey( spep_2 -3 + 154, 1, -98 );
setRotateKey( spep_2 -3 + 160, 1, -98 );
setRotateKey( spep_2 -3 + 162, 1, -94 );
setRotateKey( spep_2 -3 + 164, 1, -91 );
setRotateKey( spep_2 -3 + 168, 1, -91 );
setRotateKey( spep_2 -3 + 170, 1, -98 );
setRotateKey( spep_2 -3 + 176, 1, -98 );
setRotateKey( spep_2 -3 + 178, 1, -94 );
setRotateKey( spep_2 -3 + 180, 1, -91 );
setRotateKey( spep_2 -3 + 182, 1, -91 );
setRotateKey( spep_2 -3 + 184, 1, -98 );
setRotateKey( spep_2 -3 + 190, 1, -98 );
setRotateKey( spep_2 -3 + 192, 1, -94 );
setRotateKey( spep_2 -3 + 194, 1, -91 );
setRotateKey( spep_2 -3 + 198, 1, -91 );
setRotateKey( spep_2 -3 + 200, 1, -98 );
setRotateKey( spep_2 -3 + 206, 1, -98 );
setRotateKey( spep_2 -3 + 208, 1, -94 );
setRotateKey( spep_2 -3 + 210, 1, -91 );
setRotateKey( spep_2 -3 + 212, 1, -91 );
setRotateKey( spep_2 -3 + 214, 1, -98 );
setRotateKey( spep_2 -3 + 220, 1, -98 );
setRotateKey( spep_2 -3 + 222, 1, -94 );
setRotateKey( spep_2 -3 + 224, 1, -91 );
setRotateKey( spep_2 -3 + 228, 1, -91 );
setRotateKey( spep_2 -3 + 230, 1, -98 );
setRotateKey( spep_2 -3 + 237, 1, -98 );
setRotateKey( spep_2 -3 + 238, 1, 33.6 );
setRotateKey( spep_2 -3 + 256, 1, 33.6 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 274, 1, 1 );
setDisp( spep_2 -3 + 334, 1, 0 );
changeAnime( spep_2 -3 + 274, 1, 5 );

setMoveKey( spep_2 -3 + 274, 1, -206.2, 37.2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -58.3, 43.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 30.4, 46.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 91.5, 48.9 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 135.7, 50.6 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 168.1, 51.8 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 191.5, 52.7 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 207.9, 53.4 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 218.6, 53.8 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 224.8, 54 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 228, 54.1 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 229.8, 54.2 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 231.1, 54.3 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 232.2, 54.3 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 233.1, 54.3 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 233.9, 54.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 234.7, 54.4 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 235.4, 54.4 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 236.1, 54.5 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 236.7, 54.5 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 237.3, 54.5 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 237.8, 54.5 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 238.4, 54.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 238.9, 54.6 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 239.3, 54.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 239.7, 54.6 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 240.1, 54.6 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 240.4, 54.6 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 240.7, 54.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 240.5, 54.6 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 240.5, 54.6 , 0 );

setScaleKey( spep_2 -3 + 274, 1, 6.36, 6.36 );
setScaleKey( spep_2 -3 + 276, 1, 4.32, 4.32 );
setScaleKey( spep_2 -3 + 278, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 280, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 282, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 284, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 286, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 288, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 290, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 292, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 294, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 296, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 298, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 300, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 302, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 304, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 306, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 308, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 310, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 312, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 314, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 316, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 318, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 320, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 322, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 324, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 326, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 328, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 334, 1, 0.22, 0.22 );

setRotateKey( spep_2 -3 + 274, 1, 99.8 );
setRotateKey( spep_2 -3 + 276, 1, 97.5 );
setRotateKey( spep_2 -3 + 278, 1, 96.1 );
setRotateKey( spep_2 -3 + 280, 1, 95.2 );
setRotateKey( spep_2 -3 + 282, 1, 94.5 );
setRotateKey( spep_2 -3 + 284, 1, 94 );
setRotateKey( spep_2 -3 + 286, 1, 93.6 );
setRotateKey( spep_2 -3 + 288, 1, 93.4 );
setRotateKey( spep_2 -3 + 290, 1, 93.2 );
setRotateKey( spep_2 -3 + 292, 1, 93.1 );
setRotateKey( spep_2 -3 + 294, 1, 93.1 );
setRotateKey( spep_2 -3 + 296, 1, 93 );
setRotateKey( spep_2 -3 + 308, 1, 93 );
setRotateKey( spep_2 -3 + 310, 1, 92.9 );
setRotateKey( spep_2 -3 + 334, 1, 92.9 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 396, 1, 1 );
setDisp( spep_2 -3 + 448, 1, 0 );
changeAnime( spep_2 -3 + 396, 1, 106 );
changeAnime( spep_2 -3 + 398, 1, 108 );

setMoveKey( spep_2 -3 + 396, 1, 107.6, -16.9 , 0 );
setMoveKey( spep_2 -3 + 397, 1, 107.6, -16.9 , 0 );--
setMoveKey( spep_2 -3 + 398, 1, 158.9, 61.9 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 174.3, 79.2 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 170.6, 69.4 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 164.4, 58.4 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 164.9, 88.4 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 176.4, 90 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 179.8, 88.3 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 182.9, 86.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 184.5, 89 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 185.8, 91.4 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 187, 93.4 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 188, 95.2 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 188.9, 96.8 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 189.6, 98.1 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 190.2, 99.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 190.7, 100.1 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 191, 100.8 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 191.3, 101.5 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 191.4, 101.9 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 191.6, 102.3 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 191.6, 102.5 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 191.6, 102.7 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 191.6, 102.8 , 0 );
setMoveKey( spep_2 -3 + 444, 1, 191.5, 102.9 , 0 );
setMoveKey( spep_2 -3 + 446, 1, 191.4, 102.9 , 0 );
setMoveKey( spep_2 -3 + 448, 1, 191.4, 102.9 , 0 );

s2 = 0.4;
setScaleKey( spep_2 -3 + 396, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 397, 1, 2.47, 2.47 );--
setScaleKey( spep_2 -3 + 398, 1, 3.07 -s2, 3.07 -s2 );
setScaleKey( spep_2 -3 + 400, 1, 3.06 -s2, 3.06 -s2 );
setScaleKey( spep_2 -3 + 402, 1, 3.06 -s2, 3.06 -s2 );
setScaleKey( spep_2 -3 + 404, 1, 3.05 -s2, 3.05 -s2 );
setScaleKey( spep_2 -3 + 408, 1, 3.05 -s2, 3.05 -s2 );
setScaleKey( spep_2 -3 + 410, 1, 3.04 -s2, 3.04 -s2 );
setScaleKey( spep_2 -3 + 414, 1, 3.04 -s2, 3.04 -s2 );
setScaleKey( spep_2 -3 + 416, 1, 3.03 -s2, 3.03 -s2 );
setScaleKey( spep_2 -3 + 430, 1, 3.03 -s2, 3.03 -s2 );
setScaleKey( spep_2 -3 + 432, 1, 3.02 -s2, 3.02 -s2 );
setScaleKey( spep_2 -3 + 448, 1, 3.02 -s2, 3.02 -s2 );

setRotateKey( spep_2 -3 + 396, 1, -42 );
setRotateKey( spep_2 -3 + 397, 1, -42 );--
setRotateKey( spep_2 -3 + 398, 1, -25.1 );
setRotateKey( spep_2 -3 + 448, 1, -25.1 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 458, 1, 1 );
setDisp( spep_2 -3 + 490, 1, 0 );
changeAnime( spep_2 -3 + 458, 1, 106 );

setMoveKey( spep_2 -3 + 458, 1, -1.1, -139.2 , 0 );
setMoveKey( spep_2 -3 + 460, 1, -12.1, -142.2 , 0 );
setMoveKey( spep_2 -3 + 462, 1, -17.2, -134.3 , 0 );
setMoveKey( spep_2 -3 + 464, 1, 102.2, -175.8 , 0 );
setMoveKey( spep_2 -3 + 466, 1, 114.9, -176.2 , 0 );
setMoveKey( spep_2 -3 + 468, 1, 111.5, -186.7 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 116.2, -189.2 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 118.4, -190.8 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 120.6, -192.3 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 120.6, -192.3 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 54, -195.6 , 0 );
setMoveKey( spep_2 -3 + 482, 1, 57.9, -199.6 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 23.9, -129 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 48.5, -128.3 , 0 );
setMoveKey( spep_2 -3 + 488, 1, 558.7, -510.4 , 0 );
setMoveKey( spep_2 -3 + 490, 1, 558.7, -510.4 , 0 );

s3 = 0.53;
setScaleKey( spep_2 -3 + 458, 1, 3.19 -s3, 3.19 -s3 );
setScaleKey( spep_2 -3 + 490, 1, 3.19 -s3, 3.19 -s3 );

setRotateKey( spep_2 -3 + 458, 1, -26.5 );
setRotateKey( spep_2 -3 + 462, 1, -26.5 );
setRotateKey( spep_2 -3 + 464, 1, -19 );
setRotateKey( spep_2 -3 + 466, 1, -19.2 );
setRotateKey( spep_2 -3 + 468, 1, -19.4 );
setRotateKey( spep_2 -3 + 470, 1, -19.6 );
setRotateKey( spep_2 -3 + 472, 1, -19.8 );
setRotateKey( spep_2 -3 + 474, 1, -20 );
setRotateKey( spep_2 -3 + 478, 1, -20 );
setRotateKey( spep_2 -3 + 480, 1, -28 );
setRotateKey( spep_2 -3 + 482, 1, -28 );
setRotateKey( spep_2 -3 + 484, 1, -1 );
setRotateKey( spep_2 -3 + 486, 1, 5 );
setRotateKey( spep_2 -3 + 488, 1, 44 );
setRotateKey( spep_2 -3 + 490, 1, 44 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 492, 1, 1 );
setDisp( spep_2 -3 + 502, 1, 0 );
changeAnime( spep_2 -3 + 492, 1, 106 );

setMoveKey( spep_2 -3 + 492, 1, -435.8, 26.9 , 0 );
setMoveKey( spep_2 -3 + 494, 1, -196.4, -75 , 0 );
setMoveKey( spep_2 -3 + 496, 1, 47.1, -172.9 , 0 );
setMoveKey( spep_2 -3 + 498, 1, 288.9, -271.3 , 0 );
setMoveKey( spep_2 -3 + 500, 1, 530.7, -369.7 , 0 );
setMoveKey( spep_2 -3 + 502, 1, 530.7, -369.7 , 0 );

setScaleKey( spep_2 -3 + 492, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 502, 1, 2.66, 2.66 );

setRotateKey( spep_2 -3 + 492, 1, 52 );
setRotateKey( spep_2 -3 + 494, 1, 52.7 );
setRotateKey( spep_2 -3 + 496, 1, 53.5 );
setRotateKey( spep_2 -3 + 498, 1, 54.2 );
setRotateKey( spep_2 -3 + 500, 1, 55 );
setRotateKey( spep_2 -3 + 502, 1, 55 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 506, 1, 1 );
setDisp( spep_2 -3 + 542, 1, 0 );
changeAnime( spep_2 -3 + 506, 1, 5 );

setMoveKey( spep_2 -3 + 506, 1, -97.7, -190 , 0 );
setMoveKey( spep_2 -3 + 508, 1, -50.4, -168.8 , 0 );
setMoveKey( spep_2 -3 + 510, 1, -11.3, -151.2 , 0 );
setMoveKey( spep_2 -3 + 512, 1, 20.7, -136.8 , 0 );
setMoveKey( spep_2 -3 + 514, 1, 46.5, -125.2 , 0 );
setMoveKey( spep_2 -3 + 516, 1, 67, -116 , 0 );
setMoveKey( spep_2 -3 + 518, 1, 83, -108.8 , 0 );
setMoveKey( spep_2 -3 + 520, 1, 95.1, -103.3 , 0 );
setMoveKey( spep_2 -3 + 522, 1, 104.1, -99.2 , 0 );
setMoveKey( spep_2 -3 + 524, 1, 110.5, -96.3 , 0 );
setMoveKey( spep_2 -3 + 526, 1, 114.9, -94.3 , 0 );
setMoveKey( spep_2 -3 + 528, 1, 117.7, -92.9 , 0 );
setMoveKey( spep_2 -3 + 530, 1, 119.4, -92 , 0 );
setMoveKey( spep_2 -3 + 532, 1, 120.3, -91.5 , 0 );
setMoveKey( spep_2 -3 + 534, 1, 120.6, -91.3 , 0 );
setMoveKey( spep_2 -3 + 536, 1, 120.7, -91.2 , 0 );
setMoveKey( spep_2 -3 + 538, 1, 120.6, -91.1 , 0 );
setMoveKey( spep_2 -3 + 540, 1, 120.5, -91 , 0 );
setMoveKey( spep_2 -3 + 542, 1, 120.5, -91 , 0 );

setScaleKey( spep_2 -3 + 506, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 508, 1, 2.63, 2.63 );
setScaleKey( spep_2 -3 + 510, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 512, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 514, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 516, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 518, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 520, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 522, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 524, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 526, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 528, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 530, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 532, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 534, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 542, 1, 0.06, 0.06 );

setRotateKey( spep_2 -3 + 506, 1, 77.2 );
setRotateKey( spep_2 -3 + 542, 1, 77.2 );


-- ** 音 ** --
--殴る
SE023 = playSeVer2( spep_2 + 58, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 66, 1359, "",spep_2 + 102, 0, 18, -1);
SE025 = playSeVer2( spep_2 + 66, 1153, "", spep_2 + 116, 0, 6, -1);
SE026 = playSeVer2( spep_2 + 68, 1110, "", spep_2 + 116, 0, 6, -1);

--ラッシュ
SE027 = playSeVer2( spep_2 + 110, 1189, "", spep_2 + 126, 0, 2, 0.5);
SE028 = playSeVer2( spep_2 + 116, 1009, "",spep_2 + 134, 0, 2, 0.5);
SE029 = playSeVer2( spep_2 + 116, 1153, "",spep_2 + 134, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 116, SE029, 92 );
SE030 = playSeVer2( spep_2 + 118, 1110, "",spep_2 + 144, 0, 2, 0.5);
SE031 = playSeVer2( spep_2 + 126, 1010, "",spep_2 + 144, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 126, SE031, 75 );
SE032 = playSeVer2( spep_2 + 126, 1153, "",spep_2 + 144, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 126, SE032, 85 );
SE033 = playSeVer2( spep_2 + 136, 1009, "",spep_2 + 154, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 136, SE033, 93 );
setPitch( spep_2 + 136, SE033, -200 );
setTimeStretch( SE033, 0.87, 30, 4 );
SE034 = playSeVer2( spep_2 + 136, 1153, "",spep_2 + 154, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 136, SE034, 86 );
setPitch( spep_2 + 136, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );
SE035 = playSeVer2( spep_2 + 138, 1110, "",spep_2 + 164, 0, 2, 0.5);
setPitch( spep_2 + 138, SE035, -200 );
setTimeStretch( SE035, 0.87, 30, 4 );
SE036 = playSeVer2( spep_2 + 146, 1010, "",spep_2 + 164, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 146, SE036, 84 );
SE037 = playSeVer2( spep_2 + 146, 1153, "",spep_2 + 164, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 146, SE037, 87 );
SE038 = playSeVer2( spep_2 + 156, 1009, "",spep_2 + 174, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 156, SE038, 90 );
SE039 = playSeVer2( spep_2 + 156, 1153, "",spep_2 + 174, 0, 2, 0.5);
SE040 = playSeVer2( spep_2 + 160, 1110, "",spep_2 + 188, 0, 2, 0.5);
SE041 = playSeVer2( spep_2 + 166, 1010, "",spep_2 + 184, 0, 2, 0.5);
SE042 = playSeVer2( spep_2 + 166, 1153, "",spep_2 + 184, 0, 2, 0.5);
SE043 = playSeVer2( spep_2 + 176, 1009, "",spep_2 + 194, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 176, SE043, 91 );
setPitch( spep_2 + 176, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );
SE044 = playSeVer2( spep_2 + 176, 1153, "",spep_2 + 194, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 176, SE044, 80 );
setPitch( spep_2 + 176, SE044, -300 );
setTimeStretch( SE044, 0.8, 30, 4 );
SE045 = playSeVer2( spep_2 + 180, 1110, "",spep_2 + 208, 0, 2, 0.5);
setPitch( spep_2 + 180, SE045, -300 );
setTimeStretch( SE045, 0.8, 30, 4 );
SE046 = playSeVer2( spep_2 + 186, 1010, "",spep_2 + 204, 0, 2, 0.5);
SE047 = playSeVer2( spep_2 + 186, 1153, "",spep_2 + 204, 0, 2, 0.5);
SE048 = playSeVer2( spep_2 + 196, 1009, "",spep_2 + 214, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 196, SE048, 87 );
setPitch( spep_2 + 196, SE048, 100 );
setTimeStretch( SE048, 1.07, 30, 4 );
SE049 = playSeVer2( spep_2 + 196, 1153, "",spep_2 + 214, 0, 2, 0.5);
setPitch( spep_2 + 196, SE049, 100 );
setTimeStretch( SE049, 1.07, 30, 4 );
SE050 = playSeVer2( spep_2 + 200, 1110, "",spep_2 + 226, 0, 2, 0.5);
setPitch( spep_2 + 200, SE050, 100 );
setTimeStretch( SE050, 1.07, 30, 4 );
SE051 = playSeVer2( spep_2 + 206, 1010, "",spep_2 + 228, 0, 2, 0.5);
SE052 = playSeVer2( spep_2 + 206, 1153, "",spep_2 + 228, 0, 2, 0.5);
SE053 = playSeVer2( spep_2 + 216, 1009, "",spep_2 + 238, 0, 2, 0.5);
SE054 = playSeVer2( spep_2 + 216, 1153, "", 0, 0, 0, 0.5);
SE055 = playSeVer2( spep_2 + 218, 1110, "",spep_2 + 246, 0, 2, 0.5);

--殴り飛ばし
SE056 = playSeVer2( spep_2 + 234, 1123, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 238, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE057, 73 );

--敵飛んでいく
SE058 = playSeVer2( spep_2 + 268, 1121, "",spep_2 + 386, 0, 48, -1);
SE059 = playSeVer2( spep_2 + 268, 1183, "", 0, 0, 0, -1);

--向かってくる
SE060 = playSeVer2( spep_2 + 336, 1182, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 336, 1068, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 336, 1355, "",spep_2 + 400, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 336, SE062, 47 );
setPitch( spep_2 + 336, SE062, 200 );
setTimeStretch( SE062, 1.13, 30, 4 );
SE063 = playSeVer2( spep_2 + 336, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE063, 65 );

--膝蹴り
SE064 = playSeVer2( spep_2 + 392, 1187, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 392, 1153, "",spep_2 + 434, 0, 26, -1);

--パンチ１
SE066 = playSeVer2( spep_2 + 442, 1189, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 450, 1009, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 450, 1110, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 450, 1359, "",spep_2 + 482, 0, 14, -1);

--パンチ２
SE070 = playSeVer2( spep_2 + 468, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 468, SE070, 91 );
SE071 = playSeVer2( spep_2 + 468, 1359, "",spep_2 + 500, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 468, SE071, 86 );
SE072 = playSeVer2( spep_2 + 468, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 468, SE072, 88 );

--敵飛んでいく
SE073 = playSeVer2( spep_2 + 496, 1121, "",spep_2 + 570, 0, 14, -1);
SE074 = playSeVer2( spep_2 + 496, 1183, "",spep_2 + 570, 0, 14, -1);

--地面激突
SE075 = playSeVer2( spep_2 + 550, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 556 );
endPhase( spep_2 + 660 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カードカットイン前(206F)
------------------------------------------------------
spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 206, 0x100, -1, 0, 0, 0 );  --カードカットイン前   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 206, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 206, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 206, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 206 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 206, first_f, 0 );


-- ** 顔カットイン ** --
spep_x = spep_0 + 76;
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 79 );
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 79 );
SE005 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 79 );
SE007 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE007, 79 );
SE010 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE010, 79 );
SE011 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE011, 79 );
SE016 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE016, 79 );

--入り
SE002 = playSeVer2( spep_0 + 6, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 71 );
setPitch( spep_0 + 6, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--顔カットイン
--SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE008 = playSeVer2( spep_0 + 94, 1035, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 100, 1024, "",spep_0 + 222, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 100, SE009, 76 );

--向かってくる
SE012 = playSeVer2( spep_0 + 150, 1182, "",spep_0 + 222 -1, 0, 8, -1);
SE013 = playSeVer2( spep_0 + 150, 9, "",spep_0 + 222 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 150, SE013, 83 );
SE014 = playSeVer2( spep_0 + 152, 44, "",spep_0 + 222 -1, 0, 8, -1);
SE015 = playSeVer2( spep_0 + 152, 1068, "",spep_0 + 222 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 152, SE015, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 206 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 206+4;


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
SE001X = playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- フィニッシュ(670F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect03 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --フィニッシュ_フロント ef_002_front
setEffMoveKey( spep_2 + 0, effect03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 670, effect03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect03, -1.0, 1.0 );
setEffScaleKey( spep_2 + 670, effect03, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect03, 0 );
setEffRotateKey( spep_2 + 670, effect03, 0 );
setEffAlphaKey( spep_2 + 0, effect03, 255 );
setEffAlphaKey( spep_2 + 670, effect03, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 1 );

setMoveKey( spep_2 + 0, 1, -105.2, 60.2 , 0 );
setMoveKey( spep_2 + 2, 1, -110.2, 62.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -114.9, 64.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -119.1, 66.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -123.2, 68.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -127, 70.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -130.4, 72.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -133.5, 73.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -136.5, 75 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -139.1, 76.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -141.5, 77.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -143.8, 78.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -145.7, 79.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -147.4, 80.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -149, 81 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -150.4, 81.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -151.6, 82.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -152.6, 82.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -153.5, 83.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -154.2, 83.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -154.9, 83.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 2, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 8, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 10, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 12, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 14, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 16, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 20, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 24, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 26, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 28, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 34, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 36, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 38, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 40, 1, 0.22, 0.22 );

setRotateKey( spep_2 + 0, 1, -33.4 );
setRotateKey( spep_2 + 2, 1, -32.9 );
setRotateKey( spep_2 -3 + 6, 1, -32.4 );
setRotateKey( spep_2 -3 + 8, 1, -31.9 );
setRotateKey( spep_2 -3 + 10, 1, -31.4 );
setRotateKey( spep_2 -3 + 12, 1, -31 );
setRotateKey( spep_2 -3 + 14, 1, -30.7 );
setRotateKey( spep_2 -3 + 16, 1, -30.3 );
setRotateKey( spep_2 -3 + 18, 1, -30 );
setRotateKey( spep_2 -3 + 20, 1, -29.7 );
setRotateKey( spep_2 -3 + 22, 1, -29.5 );
setRotateKey( spep_2 -3 + 24, 1, -29.2 );
setRotateKey( spep_2 -3 + 26, 1, -29 );
setRotateKey( spep_2 -3 + 28, 1, -28.8 );
setRotateKey( spep_2 -3 + 30, 1, -28.7 );
setRotateKey( spep_2 -3 + 32, 1, -28.5 );
setRotateKey( spep_2 -3 + 34, 1, -28.4 );
setRotateKey( spep_2 -3 + 36, 1, -28.3 );
setRotateKey( spep_2 -3 + 38, 1, -28.2 );
setRotateKey( spep_2 -3 + 40, 1, -28.1 );
setRotateKey( spep_2 -3 + 42, 1, -28 );

-- ** 音 ** --
--飛んでいく
SE018 = playSeVer2( spep_2 + 10, 1068, "",spep_2 + 92, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 10, SE018, 86 );
SE019 = playSeVer2( spep_2 + 10, 44, "",spep_2 + 74, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 10, SE019, 84 );
SE020 = playSeVer2( spep_2 + 10, 1183, "",spep_2 + 74, 0, 10, -1);
SE021 = playSeVer2( spep_2 + 10, 1355, "",spep_2 + 66, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 10, SE021, 34 );
setPitch( spep_2 + 10, SE021, 300 );
setTimeStretch( SE021, 1.2, 30, 4 );
SE022 = playSeVer2( spep_2 + 18, 1277, "",spep_2 + 74, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 670 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE001X, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -154.9, 83.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, -155.5, 84 , 0 );
    setMoveKey( SP_dodge + 4, 1, -155.8, 84.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, -156.2, 84.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, -156.5, 84.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, -156.6, 84.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.22, 0.22 );
    setScaleKey( SP_dodge + 2, 1, 0.22, 0.22 );
    setScaleKey( SP_dodge + 4, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 10, 1, 0.21, 0.21 );

    setRotateKey( SP_dodge + 0, 1, -28 );
    setRotateKey( SP_dodge + 2, 1, -28 );
    setRotateKey( SP_dodge + 4, 1, -27.9 );
    setRotateKey( SP_dodge + 8, 1, -27.9 );
    setRotateKey( SP_dodge + 10, 1, -27.8 );

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 256, 1, 0 );
changeAnime( spep_2 -3 + 76, 1, 8 );
changeAnime( spep_2 -3 + 118, 1, 7 );
changeAnime( spep_2 -3 + 238, 1, 8 );
changeAnime( spep_2 -3 + 244, 1, 6 );

setMoveKey( spep_2 -3 + 44, 1, -155.5, 84 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -155.8, 84.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -156.2, 84.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -156.5, 84.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -156.6, 84.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -156.7, 84.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -156.8, 84.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -156.9, 84.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -156.8, 84.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -156.8, 84.5 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -156.8, 84.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -79.6, -67.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -89.9, -67.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -89.9, -67.2 , 0 );
setMoveKey( spep_2 -3 + 75, 1, -132, -67.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -127.1, -52.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -117.6, -47.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -110.8, -62.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -120.6, -65.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -117.8, -56.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -117.8, -56.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -113.7, -56.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -113.7, -56.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -109.5, -56.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -109.5, -56.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -106.6, -56.8 , 0 );
setMoveKey( spep_2 -3 + 117, 1, -106.6, -56.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -285.5, 249.2 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -284, 247.6 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -283, 249.4 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -269.4, 627.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -268.7, 626.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -267.3, 611.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -265.3, 615.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -370.7, 616.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -395.5, 591.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -391.4, 589.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -395.5, 590.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -271.1, 624.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -263.3, 620.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -268.4, 615 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -268, 616.3 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -369.5, 616 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -389.3, 583.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -392.6, 587.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -268.3, 629.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -268.1, 627 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -263.8, 618.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -263.9, 616.4 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -366.1, 615.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -389.9, 584.9 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -389.6, 585.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -388.4, 585 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -263.2, 632.1 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -268, 619 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -267.4, 617.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -262.4, 616.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -369.9, 618.2 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -394.6, 590.9 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -393.2, 584.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -264.8, 631.2 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -267.4, 626.5 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -266.6, 612.6 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -271.1, 615.2 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -372.7, 619 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -391.4, 588.5 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -395.2, 587.2 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -396.2, 586.5 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -267.6, 625.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -265.8, 618.1 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -264.7, 617.9 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -264.2, 615.3 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -367.4, 618.1 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -394, 587.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -393.7, 590.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -266.8, 629.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -267.2, 629.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -270, 619.2 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -269, 616.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -371.8, 612.7 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -393.9, 588.1 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -391.4, 588.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -392.8, 584.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -271.3, 630.3 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -268.4, 612.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -272.9, 619 , 0 );
setMoveKey( spep_2 -3 + 237, 1, -267.1, 615 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_2 -3 + 243, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -267.5, -176.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -277.5, -168.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -280.7, -175.3 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -263.6, -185.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, -406.3, -232.3 , 0 );
setMoveKey( spep_2 -3 + 255, 1, -415, -228.2 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -415, -228.2 , 0 );

setScaleKey( spep_2 -3 + 44, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 46, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 62, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 63, 1, 0.21, 0.21 );

s1 = 1.0;
setScaleKey( spep_2 -3 + 64, 1, 5.3 -s1, 5.3 -s1 );
setScaleKey( spep_2 -3 + 117, 1, 5.3 -s1, 5.3 -s1 );

setScaleKey( spep_2 -3 + 118, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 122, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 124, 1, 4.57, 4.57 );
setScaleKey( spep_2 -3 + 237, 1, 4.57, 4.57 );
setScaleKey( spep_2 -3 + 238, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 256, 1, 1.46, 1.46 );

setRotateKey( spep_2 -3 + 44, 1, -28 );
setRotateKey( spep_2 -3 + 46, 1, -27.9 );
setRotateKey( spep_2 -3 + 50, 1, -27.9 );
setRotateKey( spep_2 -3 + 52, 1, -27.8 );
setRotateKey( spep_2 -3 + 62, 1, -27.8 );
setRotateKey( spep_2 -3 + 63, 1, -27.8 );
setRotateKey( spep_2 -3 + 64, 1, -15 );
setRotateKey( spep_2 -3 + 75, 1, -15 );
setRotateKey( spep_2 -3 + 76, 1, 10 );
setRotateKey( spep_2 -3 + 80, 1, 10 );
setRotateKey( spep_2 -3 + 82, 1, 11.5 );
setRotateKey( spep_2 -3 + 88, 1, 11.5 );
setRotateKey( spep_2 -3 + 90, 1, 13.5 );
setRotateKey( spep_2 -3 + 96, 1, 13.5 );
setRotateKey( spep_2 -3 + 98, 1, 15.5 );
setRotateKey( spep_2 -3 + 102, 1, 15.5 );
setRotateKey( spep_2 -3 + 104, 1, 17 );
setRotateKey( spep_2 -3 + 117, 1, 17 );
setRotateKey( spep_2 -3 + 118, 1, 98 );
setRotateKey( spep_2 -3 + 130, 1, 98 );
setRotateKey( spep_2 -3 + 132, 1, 94 );
setRotateKey( spep_2 -3 + 134, 1, 91 );
setRotateKey( spep_2 -3 + 138, 1, 91 );
setRotateKey( spep_2 -3 + 140, 1, 98 );
setRotateKey( spep_2 -3 + 146, 1, 98 );
setRotateKey( spep_2 -3 + 148, 1, 94 );
setRotateKey( spep_2 -3 + 150, 1, 91 );
setRotateKey( spep_2 -3 + 152, 1, 91 );
setRotateKey( spep_2 -3 + 154, 1, 98 );
setRotateKey( spep_2 -3 + 160, 1, 98 );
setRotateKey( spep_2 -3 + 162, 1, 94 );
setRotateKey( spep_2 -3 + 164, 1, 91 );
setRotateKey( spep_2 -3 + 168, 1, 91 );
setRotateKey( spep_2 -3 + 170, 1, 98 );
setRotateKey( spep_2 -3 + 176, 1, 98 );
setRotateKey( spep_2 -3 + 178, 1, 94 );
setRotateKey( spep_2 -3 + 180, 1, 91 );
setRotateKey( spep_2 -3 + 182, 1, 91 );
setRotateKey( spep_2 -3 + 184, 1, 98 );
setRotateKey( spep_2 -3 + 190, 1, 98 );
setRotateKey( spep_2 -3 + 192, 1, 94 );
setRotateKey( spep_2 -3 + 194, 1, 91 );
setRotateKey( spep_2 -3 + 198, 1, 91 );
setRotateKey( spep_2 -3 + 200, 1, 98 );
setRotateKey( spep_2 -3 + 206, 1, 98 );
setRotateKey( spep_2 -3 + 208, 1, 94 );
setRotateKey( spep_2 -3 + 210, 1, 91 );
setRotateKey( spep_2 -3 + 212, 1, 91 );
setRotateKey( spep_2 -3 + 214, 1, 98 );
setRotateKey( spep_2 -3 + 220, 1, 98 );
setRotateKey( spep_2 -3 + 222, 1, 94 );
setRotateKey( spep_2 -3 + 224, 1, 91 );
setRotateKey( spep_2 -3 + 228, 1, 91 );
setRotateKey( spep_2 -3 + 230, 1, 98 );
setRotateKey( spep_2 -3 + 237, 1, 98 );
setRotateKey( spep_2 -3 + 238, 1, -33.6 );
setRotateKey( spep_2 -3 + 256, 1, -33.6 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 274, 1, 1 );
setDisp( spep_2 -3 + 334, 1, 0 );
changeAnime( spep_2 -3 + 274, 1, 105 );

setMoveKey( spep_2 -3 + 274, 1, 206.2, 37.2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 58.3, 43.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -30.4, 46.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -91.5, 48.9 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -135.7, 50.6 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -168.1, 51.8 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -191.5, 52.7 , 0 );
setMoveKey( spep_2 -3 + 288, 1, -207.9, 53.4 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -218.6, 53.8 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -224.8, 54 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -228, 54.1 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -229.8, 54.2 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -231.1, 54.3 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -232.2, 54.3 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -233.1, 54.3 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -233.9, 54.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -234.7, 54.4 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -235.4, 54.4 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -236.1, 54.5 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -236.7, 54.5 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -237.3, 54.5 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -237.8, 54.5 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -238.4, 54.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -238.9, 54.6 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -239.3, 54.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -239.7, 54.6 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -240.1, 54.6 , 0 );
setMoveKey( spep_2 -3 + 328, 1, -240.4, 54.6 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -240.7, 54.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -240.5, 54.6 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -240.5, 54.6 , 0 );

setScaleKey( spep_2 -3 + 274, 1, 6.36, 6.36 );
setScaleKey( spep_2 -3 + 276, 1, 4.32, 4.32 );
setScaleKey( spep_2 -3 + 278, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 280, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 282, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 284, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 286, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 288, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 290, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 292, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 294, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 296, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 298, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 300, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 302, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 304, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 306, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 308, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 310, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 312, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 314, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 316, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 318, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 320, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 322, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 324, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 326, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 328, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 334, 1, 0.22, 0.22 );

setRotateKey( spep_2 -3 + 274, 1, -99.8 );
setRotateKey( spep_2 -3 + 276, 1, -97.5 );
setRotateKey( spep_2 -3 + 278, 1, -96.1 );
setRotateKey( spep_2 -3 + 280, 1, -95.2 );
setRotateKey( spep_2 -3 + 282, 1, -94.5 );
setRotateKey( spep_2 -3 + 284, 1, -94 );
setRotateKey( spep_2 -3 + 286, 1, -93.6 );
setRotateKey( spep_2 -3 + 288, 1, -93.4 );
setRotateKey( spep_2 -3 + 290, 1, -93.2 );
setRotateKey( spep_2 -3 + 292, 1, -93.1 );
setRotateKey( spep_2 -3 + 294, 1, -93.1 );
setRotateKey( spep_2 -3 + 296, 1, -93 );
setRotateKey( spep_2 -3 + 308, 1, -93 );
setRotateKey( spep_2 -3 + 310, 1, -92.9 );
setRotateKey( spep_2 -3 + 334, 1, -92.9 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 396, 1, 1 );
setDisp( spep_2 -3 + 448, 1, 0 );
changeAnime( spep_2 -3 + 396, 1, 6 );
changeAnime( spep_2 -3 + 398, 1, 8 );

setMoveKey( spep_2 -3 + 396, 1, -107.6, -16.9 , 0 );
setMoveKey( spep_2 -3 + 397, 1, -107.6, -16.9 , 0 );--
setMoveKey( spep_2 -3 + 398, 1, -158.9, 61.9 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -174.3, 79.2 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -170.6, 69.4 , 0 );
setMoveKey( spep_2 -3 + 404, 1, -164.4, 58.4 , 0 );
setMoveKey( spep_2 -3 + 406, 1, -164.9, 88.4 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -176.4, 90 , 0 );
setMoveKey( spep_2 -3 + 410, 1, -179.8, 88.3 , 0 );
setMoveKey( spep_2 -3 + 412, 1, -182.9, 86.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, -184.5, 89 , 0 );
setMoveKey( spep_2 -3 + 416, 1, -185.8, 91.4 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -187, 93.4 , 0 );
setMoveKey( spep_2 -3 + 420, 1, -188, 95.2 , 0 );
setMoveKey( spep_2 -3 + 422, 1, -188.9, 96.8 , 0 );
setMoveKey( spep_2 -3 + 424, 1, -189.6, 98.1 , 0 );
setMoveKey( spep_2 -3 + 426, 1, -190.2, 99.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, -190.7, 100.1 , 0 );
setMoveKey( spep_2 -3 + 430, 1, -191, 100.8 , 0 );
setMoveKey( spep_2 -3 + 432, 1, -191.3, 101.5 , 0 );
setMoveKey( spep_2 -3 + 434, 1, -191.4, 101.9 , 0 );
setMoveKey( spep_2 -3 + 436, 1, -191.6, 102.3 , 0 );
setMoveKey( spep_2 -3 + 438, 1, -191.6, 102.5 , 0 );
setMoveKey( spep_2 -3 + 440, 1, -191.6, 102.7 , 0 );
setMoveKey( spep_2 -3 + 442, 1, -191.6, 102.8 , 0 );
setMoveKey( spep_2 -3 + 444, 1, -191.5, 102.9 , 0 );
setMoveKey( spep_2 -3 + 446, 1, -191.4, 102.9 , 0 );
setMoveKey( spep_2 -3 + 448, 1, -191.4, 102.9 , 0 );

s2 = 0.4;
setScaleKey( spep_2 -3 + 396, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 397, 1, 2.47, 2.47 );--
setScaleKey( spep_2 -3 + 398, 1, 3.07 -s2, 3.07 -s2 );
setScaleKey( spep_2 -3 + 400, 1, 3.06 -s2, 3.06 -s2 );
setScaleKey( spep_2 -3 + 402, 1, 3.06 -s2, 3.06 -s2 );
setScaleKey( spep_2 -3 + 404, 1, 3.05 -s2, 3.05 -s2 );
setScaleKey( spep_2 -3 + 408, 1, 3.05 -s2, 3.05 -s2 );
setScaleKey( spep_2 -3 + 410, 1, 3.04 -s2, 3.04 -s2 );
setScaleKey( spep_2 -3 + 414, 1, 3.04 -s2, 3.04 -s2 );
setScaleKey( spep_2 -3 + 416, 1, 3.03 -s2, 3.03 -s2 );
setScaleKey( spep_2 -3 + 430, 1, 3.03 -s2, 3.03 -s2 );
setScaleKey( spep_2 -3 + 432, 1, 3.02 -s2, 3.02 -s2 );
setScaleKey( spep_2 -3 + 448, 1, 3.02 -s2, 3.02 -s2 );

setRotateKey( spep_2 -3 + 396, 1, 42 );
setRotateKey( spep_2 -3 + 397, 1, 42 );
setRotateKey( spep_2 -3 + 398, 1, 25.1 );
setRotateKey( spep_2 -3 + 448, 1, 25.1 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 458, 1, 1 );
setDisp( spep_2 -3 + 490, 1, 0 );
changeAnime( spep_2 -3 + 458, 1, 6 );

setMoveKey( spep_2 -3 + 458, 1, 1.1, -139.2 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 12.1, -142.2 , 0 );
setMoveKey( spep_2 -3 + 462, 1, 17.2, -134.3 , 0 );
setMoveKey( spep_2 -3 + 464, 1, -102.2, -175.8 , 0 );
setMoveKey( spep_2 -3 + 466, 1, -114.9, -176.2 , 0 );
setMoveKey( spep_2 -3 + 468, 1, -111.5, -186.7 , 0 );
setMoveKey( spep_2 -3 + 470, 1, -116.2, -189.2 , 0 );
setMoveKey( spep_2 -3 + 472, 1, -118.4, -190.8 , 0 );
setMoveKey( spep_2 -3 + 474, 1, -120.6, -192.3 , 0 );
setMoveKey( spep_2 -3 + 478, 1, -120.6, -192.3 , 0 );
setMoveKey( spep_2 -3 + 480, 1, -54, -195.6 , 0 );
setMoveKey( spep_2 -3 + 482, 1, -57.9, -199.6 , 0 );
setMoveKey( spep_2 -3 + 484, 1, -23.9, -129 , 0 );
setMoveKey( spep_2 -3 + 486, 1, -48.5, -128.3 , 0 );
setMoveKey( spep_2 -3 + 488, 1, -558.7, -510.4 , 0 );
setMoveKey( spep_2 -3 + 490, 1, -558.7, -510.4 , 0 );

s3 = 0.53;
setScaleKey( spep_2 -3 + 458, 1, 3.19 -s3, 3.19 -s3 );
setScaleKey( spep_2 -3 + 490, 1, 3.19 -s3, 3.19 -s3 );

setRotateKey( spep_2 -3 + 458, 1, 26.5 );
setRotateKey( spep_2 -3 + 462, 1, 26.5 );
setRotateKey( spep_2 -3 + 464, 1, 19 );
setRotateKey( spep_2 -3 + 466, 1, 19.2 );
setRotateKey( spep_2 -3 + 468, 1, 19.4 );
setRotateKey( spep_2 -3 + 470, 1, 19.6 );
setRotateKey( spep_2 -3 + 472, 1, 19.8 );
setRotateKey( spep_2 -3 + 474, 1, 20 );
setRotateKey( spep_2 -3 + 478, 1, 20 );
setRotateKey( spep_2 -3 + 480, 1, 28 );
setRotateKey( spep_2 -3 + 482, 1, 28 );
setRotateKey( spep_2 -3 + 484, 1, 1 );
setRotateKey( spep_2 -3 + 486, 1, -5 );
setRotateKey( spep_2 -3 + 488, 1, -44 );
setRotateKey( spep_2 -3 + 490, 1, -44 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 492, 1, 1 );
setDisp( spep_2 -3 + 502, 1, 0 );
changeAnime( spep_2 -3 + 492, 1, 6 );

setMoveKey( spep_2 -3 + 492, 1, 435.8, 26.9 , 0 );
setMoveKey( spep_2 -3 + 494, 1, 196.4, -75 , 0 );
setMoveKey( spep_2 -3 + 496, 1, -47.1, -172.9 , 0 );
setMoveKey( spep_2 -3 + 498, 1, -288.9, -271.3 , 0 );
setMoveKey( spep_2 -3 + 500, 1, -530.7, -369.7 , 0 );
setMoveKey( spep_2 -3 + 502, 1, -530.7, -369.7 , 0 );

setScaleKey( spep_2 -3 + 492, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 502, 1, 2.66, 2.66 );

setRotateKey( spep_2 -3 + 492, 1, -52 );
setRotateKey( spep_2 -3 + 494, 1, -52.7 );
setRotateKey( spep_2 -3 + 496, 1, -53.5 );
setRotateKey( spep_2 -3 + 498, 1, -54.2 );
setRotateKey( spep_2 -3 + 500, 1, -55 );
setRotateKey( spep_2 -3 + 502, 1, -55 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 506, 1, 1 );
setDisp( spep_2 -3 + 542, 1, 0 );
changeAnime( spep_2 -3 + 506, 1, 105 );

setMoveKey( spep_2 -3 + 506, 1, 97.7, -190 , 0 );
setMoveKey( spep_2 -3 + 508, 1, 50.4, -168.8 , 0 );
setMoveKey( spep_2 -3 + 510, 1, 11.3, -151.2 , 0 );
setMoveKey( spep_2 -3 + 512, 1, -20.7, -136.8 , 0 );
setMoveKey( spep_2 -3 + 514, 1, -46.5, -125.2 , 0 );
setMoveKey( spep_2 -3 + 516, 1, -67, -116 , 0 );
setMoveKey( spep_2 -3 + 518, 1, -83, -108.8 , 0 );
setMoveKey( spep_2 -3 + 520, 1, -95.1, -103.3 , 0 );
setMoveKey( spep_2 -3 + 522, 1, -104.1, -99.2 , 0 );
setMoveKey( spep_2 -3 + 524, 1, -110.5, -96.3 , 0 );
setMoveKey( spep_2 -3 + 526, 1, -114.9, -94.3 , 0 );
setMoveKey( spep_2 -3 + 528, 1, -117.7, -92.9 , 0 );
setMoveKey( spep_2 -3 + 530, 1, -119.4, -92 , 0 );
setMoveKey( spep_2 -3 + 532, 1, -120.3, -91.5 , 0 );
setMoveKey( spep_2 -3 + 534, 1, -120.6, -91.3 , 0 );
setMoveKey( spep_2 -3 + 536, 1, -120.7, -91.2 , 0 );
setMoveKey( spep_2 -3 + 538, 1, -120.6, -91.1 , 0 );
setMoveKey( spep_2 -3 + 540, 1, -120.5, -91 , 0 );
setMoveKey( spep_2 -3 + 542, 1, -120.5, -91 , 0 );

setScaleKey( spep_2 -3 + 506, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 508, 1, 2.63, 2.63 );
setScaleKey( spep_2 -3 + 510, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 512, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 514, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 516, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 518, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 520, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 522, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 524, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 526, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 528, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 530, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 532, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 534, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 542, 1, 0.06, 0.06 );

setRotateKey( spep_2 -3 + 506, 1, -77.2 );
setRotateKey( spep_2 -3 + 542, 1, -77.2 );


-- ** 音 ** --
--殴る
SE023 = playSeVer2( spep_2 + 58, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 66, 1359, "",spep_2 + 102, 0, 18, -1);
SE025 = playSeVer2( spep_2 + 66, 1153, "", spep_2 + 116, 0, 6, -1);
SE026 = playSeVer2( spep_2 + 68, 1110, "", spep_2 + 116, 0, 6, -1);

--ラッシュ
SE027 = playSeVer2( spep_2 + 110, 1189, "", spep_2 + 126, 0, 2, 0.5);
SE028 = playSeVer2( spep_2 + 116, 1009, "",spep_2 + 134, 0, 2, 0.5);
SE029 = playSeVer2( spep_2 + 116, 1153, "",spep_2 + 134, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 116, SE029, 92 );
SE030 = playSeVer2( spep_2 + 118, 1110, "",spep_2 + 144, 0, 2, 0.5);
SE031 = playSeVer2( spep_2 + 126, 1010, "",spep_2 + 144, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 126, SE031, 75 );
SE032 = playSeVer2( spep_2 + 126, 1153, "",spep_2 + 144, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 126, SE032, 85 );
SE033 = playSeVer2( spep_2 + 136, 1009, "",spep_2 + 154, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 136, SE033, 93 );
setPitch( spep_2 + 136, SE033, -200 );
setTimeStretch( SE033, 0.87, 30, 4 );
SE034 = playSeVer2( spep_2 + 136, 1153, "",spep_2 + 154, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 136, SE034, 86 );
setPitch( spep_2 + 136, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );
SE035 = playSeVer2( spep_2 + 138, 1110, "",spep_2 + 164, 0, 2, 0.5);
setPitch( spep_2 + 138, SE035, -200 );
setTimeStretch( SE035, 0.87, 30, 4 );
SE036 = playSeVer2( spep_2 + 146, 1010, "",spep_2 + 164, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 146, SE036, 84 );
SE037 = playSeVer2( spep_2 + 146, 1153, "",spep_2 + 164, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 146, SE037, 87 );
SE038 = playSeVer2( spep_2 + 156, 1009, "",spep_2 + 174, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 156, SE038, 90 );
SE039 = playSeVer2( spep_2 + 156, 1153, "",spep_2 + 174, 0, 2, 0.5);
SE040 = playSeVer2( spep_2 + 160, 1110, "",spep_2 + 188, 0, 2, 0.5);
SE041 = playSeVer2( spep_2 + 166, 1010, "",spep_2 + 184, 0, 2, 0.5);
SE042 = playSeVer2( spep_2 + 166, 1153, "",spep_2 + 184, 0, 2, 0.5);
SE043 = playSeVer2( spep_2 + 176, 1009, "",spep_2 + 194, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 176, SE043, 91 );
setPitch( spep_2 + 176, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );
SE044 = playSeVer2( spep_2 + 176, 1153, "",spep_2 + 194, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 176, SE044, 80 );
setPitch( spep_2 + 176, SE044, -300 );
setTimeStretch( SE044, 0.8, 30, 4 );
SE045 = playSeVer2( spep_2 + 180, 1110, "",spep_2 + 208, 0, 2, 0.5);
setPitch( spep_2 + 180, SE045, -300 );
setTimeStretch( SE045, 0.8, 30, 4 );
SE046 = playSeVer2( spep_2 + 186, 1010, "",spep_2 + 204, 0, 2, 0.5);
SE047 = playSeVer2( spep_2 + 186, 1153, "",spep_2 + 204, 0, 2, 0.5);
SE048 = playSeVer2( spep_2 + 196, 1009, "",spep_2 + 214, 0, 2, 0.5);
setSeVolumeByWorkId( spep_2 + 196, SE048, 87 );
setPitch( spep_2 + 196, SE048, 100 );
setTimeStretch( SE048, 1.07, 30, 4 );
SE049 = playSeVer2( spep_2 + 196, 1153, "",spep_2 + 214, 0, 2, 0.5);
setPitch( spep_2 + 196, SE049, 100 );
setTimeStretch( SE049, 1.07, 30, 4 );
SE050 = playSeVer2( spep_2 + 200, 1110, "",spep_2 + 226, 0, 2, 0.5);
setPitch( spep_2 + 200, SE050, 100 );
setTimeStretch( SE050, 1.07, 30, 4 );
SE051 = playSeVer2( spep_2 + 206, 1010, "",spep_2 + 228, 0, 2, 0.5);
SE052 = playSeVer2( spep_2 + 206, 1153, "",spep_2 + 228, 0, 2, 0.5);
SE053 = playSeVer2( spep_2 + 216, 1009, "",spep_2 + 238, 0, 2, 0.5);
SE054 = playSeVer2( spep_2 + 216, 1153, "", 0, 0, 0, 0.5);
SE055 = playSeVer2( spep_2 + 218, 1110, "",spep_2 + 246, 0, 2, 0.5);

--殴り飛ばし
SE056 = playSeVer2( spep_2 + 234, 1123, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 238, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE057, 73 );

--敵飛んでいく
SE058 = playSeVer2( spep_2 + 268, 1121, "",spep_2 + 386, 0, 48, -1);
SE059 = playSeVer2( spep_2 + 268, 1183, "", 0, 0, 0, -1);

--向かってくる
SE060 = playSeVer2( spep_2 + 336, 1182, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 336, 1068, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 336, 1355, "",spep_2 + 400, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 336, SE062, 47 );
setPitch( spep_2 + 336, SE062, 200 );
setTimeStretch( SE062, 1.13, 30, 4 );
SE063 = playSeVer2( spep_2 + 336, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE063, 65 );

--膝蹴り
SE064 = playSeVer2( spep_2 + 392, 1187, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 392, 1153, "",spep_2 + 434, 0, 26, -1);

--パンチ１
SE066 = playSeVer2( spep_2 + 442, 1189, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 450, 1009, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 450, 1110, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 450, 1359, "",spep_2 + 482, 0, 14, -1);

--パンチ２
SE070 = playSeVer2( spep_2 + 468, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 468, SE070, 91 );
SE071 = playSeVer2( spep_2 + 468, 1359, "",spep_2 + 500, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 468, SE071, 86 );
SE072 = playSeVer2( spep_2 + 468, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 468, SE072, 88 );

--敵飛んでいく
SE073 = playSeVer2( spep_2 + 496, 1121, "",spep_2 + 570, 0, 14, -1);
SE074 = playSeVer2( spep_2 + 496, 1183, "",spep_2 + 570, 0, 14, -1);

--地面激突
SE075 = playSeVer2( spep_2 + 550, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 556 );
endPhase( spep_2 + 660 );


end