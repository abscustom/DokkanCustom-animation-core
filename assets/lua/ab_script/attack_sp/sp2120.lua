--1021330:パイクーハン_あの世の達人と融合戦士（ユニット必殺）
--sp_effect_a9_00069
--sp2120

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
SP_01 = 156532;  --ここは俺にまかせろ   ef_001
SP_02 = 156533;  --飛び上がって気弾溜め  ef_002
SP_03 = 156534;  --連続気弾～蹴り ef_003
SP_04 = 156535;  --連続気弾～蹴り　背景  ef_004
SP_05 = 156536;  --連続蹴り    ef_005
SP_06 = 156538;  --連続蹴り　背景 ef_006
SP_07 = 156539;  --手刀～フュージョン   ef_007
SP_08 = 156540;  --手刀～フュージョン　背景    ef_008
SP_09 = 156542;  --ゴジータ登場  ef_009
SP_10 = 156543;  --パイクーハン合流    ef_010
SP_11 = 156544;  --ツーショット  ef_011
SP_12 = 156545;  --ソウルパニッシャー玉  ef_012
SP_13 = 156546;  --２人が気弾を投げる   ef_013
SP_14 = 156547;  --フィニッシュ  ef_014
SP_15 = 156548;  --フィニッシュ　背景   ef_015

--敵側
SP_05r = 156537;  --連続蹴り　敵側 ef_005e
SP_08r = 156541;  --手刀～フュージョン　背景　敵側 ef_008e
SP_11r = 156606;  --ツーショット  ef_011

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
-- ここは俺にまかせろ(128F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 128, 0x100, -1, 0, 0, 0 );  --ここは俺にまかせろ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 128, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 128, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 127, first_f, 255 );
setEffAlphaKey( spep_0 + 128, first_f, 0 );

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
SE001 = playSe( spep_0 + 18, 1072,"",0.6 );
setStartTimeMs( SE001,  233 );

--顔カットイン
SE002 = playSe( spep_0 + 42, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 110, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 128;


------------------------------------------------------
-- 飛び上がって気弾溜め(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --飛び上がって気弾溜め(ef_002)
setEffMoveKey( spep_1 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, jump, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 56, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 56, jump, 255 );

-- ** 音 ** --
--気弾溜め1
SE003 = playSe( spep_1 + 18, 1276,"",0.6 );
setSeVolumeByWorkId( spep_1 + 18, SE003, 13 );
setSeVolumeByWorkId( spep_1 + 19, SE003, 26 );
setSeVolumeByWorkId( spep_1 + 20, SE003, 39 );
setSeVolumeByWorkId( spep_1 + 21, SE003, 39 );
setSeVolumeByWorkId( spep_1 + 22, SE003, 52 );
setSeVolumeByWorkId( spep_1 + 23, SE003, 65 );
setSeVolumeByWorkId( spep_1 + 24, SE003, 74 );
setStartTimeMs( SE003,  283 );
setPitch( spep_1 + 18, SE003, 200 );
setTimeStretch( SE003, 1.13, 10, 1 );

--ジャンプ1
SE005 = playSe( spep_1 + 10, 1116 );
setSeVolumeByWorkId( spep_1 + 10, SE005, 77 );
stopSe( spep_1 + 36, SE005, 24 );

--ジャンプ2
SE006 = playSe( spep_1 + 10, 1117 );
stopSe( spep_1 + 26, SE006, 26 );

--気弾溜め3
SE007 = playSe( spep_1 + 12, 1276,"",0.6 );
stopSe( spep_1 + 24, SE007, 12 );

--気弾溜め4
SE008 = playSe( spep_1 + 12, 1243 );
setSeVolumeByWorkId( spep_1 + 12, SE008, 60 );
stopSe( spep_1 +56 + 10, SE008, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 35, 18 +a1, 0 );
    --setMoveKey( SP_dodge + 2, 1, 39, 18.8 +a1, 0 );
    --setMoveKey( SP_dodge + 4, 1, 42.9, 19.6 +a1, 0 );
    --setMoveKey( SP_dodge + 6, 1, 46.8, 20.4 +a1, 0 );
    --setMoveKey( SP_dodge + 8, 1, 46.8, 20.4 +a1, 0 );
    --setMoveKey( SP_dodge + 10, 1, 39.6, 32.4 +a1, 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
    --setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

    --setRotateKey( SP_dodge + 0, 1, -11.7 );
    --setRotateKey( SP_dodge + 10, 1, -11.7 );
    
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
--気弾溜め2
SE004 = playSe( spep_1 + 32, 1296,"",0.6 );
setSeVolumeByWorkId( spep_1 + 32, SE004, 6 );
setSeVolumeByWorkId( spep_1 + 34, SE004, 12 );
setSeVolumeByWorkId( spep_1 + 36, SE004, 18 );
setSeVolumeByWorkId( spep_1 + 38, SE004, 24 );
setSeVolumeByWorkId( spep_1 + 40, SE004, 27 );
setSeVolumeByWorkId( spep_1 + 42, SE004, 34 );
setSeVolumeByWorkId( spep_1 + 44, SE004, 38 );
setSeVolumeByWorkId( spep_1 + 46, SE004, 42 );
stopSe( spep_1 +56 + 10, SE004, 0 );
setStartTimeMs( SE004,  433 );
setPitch( spep_1 + 32, SE004, 700 );
setTimeStretch( SE004, 1.47, 10, 1 );

-- ** 白フェード ** --
entryFade( spep_1 + 50, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
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
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 連続気弾～蹴り(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_03, 156, 0x100, -1, 0, 0, 0 );  --連続気弾～蹴り(ef_003)
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 156, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 155, kick_f, 255 );
setEffAlphaKey( spep_3 + 156, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_04, 156, 0x80, -1, 0, 0, 0 );  --連続気弾～蹴り　背景(ef_004)
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 156, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 155, kick_b, 255 );
setEffAlphaKey( spep_3 + 156, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 76, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );

a1 = 17;

setMoveKey( spep_3 + 0, 1, 86, 28.2 +a1, 0 );
setMoveKey( spep_3 + 1, 1, 71.3, 25.4 +a1, 0 );
setMoveKey( spep_3 + 2, 1, 56.6, 22.4 +a1, 0 );
setMoveKey( spep_3 -3 + 6, 1, 41.9, 19.4 +a1, 0 );
setMoveKey( spep_3 -3 + 8, 1, 27.2, 16.3 +a1, 0 );
setMoveKey( spep_3 -3 + 10, 1, 31.1, 17.1 +a1, 0 );
setMoveKey( spep_3 -3 + 12, 1, 35, 18 +a1, 0 );
setMoveKey( spep_3 -3 + 14, 1, 39, 18.8 +a1, 0 );
setMoveKey( spep_3 -3 + 16, 1, 42.9, 19.6 +a1, 0 );
setMoveKey( spep_3 -3 + 18, 1, 46.8, 20.4 +a1, 0 );
setMoveKey( spep_3 -3 + 22, 1, 46.8, 20.4 +a1, 0 );
setMoveKey( spep_3 -3 + 24, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 26, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 28, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 30, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 32, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 34, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 36, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 38, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 42, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 44, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 46, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 48, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 50, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 52, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 54, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 56, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 60, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 62, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 64, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 66, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 68, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 70, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 72, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 74, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 78, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 79, 1, 39.6, 22.8 +a1, 0 );

setScaleKey( spep_3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 79, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -11.6 );
setRotateKey( spep_3 -3 + 2, 1, -11.7 );
setRotateKey( spep_3 -3 + 79, 1, -11.7 );

-- ** 音 ** --
--気弾飛んでいく
SE010 = playSe( spep_3 + 0, 1177 );
setSeVolumeByWorkId( spep_3 + 0, SE010, 10 );
setSeVolumeByWorkId( spep_3 + 1, SE010, 20 );
setSeVolumeByWorkId( spep_3 + 2, SE010, 32 );
setSeVolumeByWorkId( spep_3 + 3, SE010, 44 );
setSeVolumeByWorkId( spep_3 + 4, SE010, 56 );
setSeVolumeByWorkId( spep_3 + 5, SE010, 68 );
setSeVolumeByWorkId( spep_3 + 6, SE010, 80 );
stopSe( spep_3 + 44, SE010, 10 );
setStartTimeMs( SE010,  283 );

--連続気弾1
SE011 = playSe( spep_3 + 4, 1016 );
setSeVolumeByWorkId( spep_3 + 4, SE011, 94 );

--連続気弾2
SE012 = playSe( spep_3 + 12, 1016 );
setSeVolumeByWorkId( spep_3 + 12, SE012, 80 );

--連続気弾3
SE013 = playSe( spep_3 + 22, 1016 );
setSeVolumeByWorkId( spep_3 + 22, SE013, 81 );

--爆発1
SE014 = playSe( spep_3 + 24, 1024 );
setSeVolumeByWorkId( spep_3 + 24, SE014, 87 );

--爆発2
SE015 = playSe( spep_3 + 32, 1023 );
setSeVolumeByWorkId( spep_3 + 32, SE015, 84 );

--連続気弾4
SE016 = playSe( spep_3 + 32, 1016 );

--連続気弾5
SE017 = playSe( spep_3 + 42, 1016 );
setSeVolumeByWorkId( spep_3 + 42, SE017, 78 );

--連続気弾6
SE018 = playSe( spep_3 + 50, 1016 );
setSeVolumeByWorkId( spep_3 + 50, SE018, 55 );

--前方ダッシュ1
SE019 = playSe( spep_3 + 88, 1182 );

--前方ダッシュ2
SE020 = playSe( spep_3 + 88, 9 );
stopSe( spep_3 + 150, SE020, 10 );

--蹴り振りかぶり1
SE021 = playSe( spep_3 + 130, 1116 );
setSeVolumeByWorkId( spep_3 + 130, SE021, 80 );
stopSe( spep_3 + 152, SE021, 8 );

--蹴り振りかぶり2
SE022 = playSe( spep_3 + 138, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 156;


------------------------------------------------------
-- 連続蹴り(101F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_f = entryEffectLife( spep_4 + 0, SP_05, 100, 0x100, -1, 0, 0, 0 );  --連続蹴り(ef_005)
setEffMoveKey( spep_4 + 0, entry_f, 0, 0 , 0 );
setEffMoveKey( spep_4 +100, entry_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, entry_f, 1.0, 1.0 );
setEffScaleKey( spep_4 +100, entry_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, entry_f, 0 );
setEffRotateKey( spep_4 +100, entry_f, 0 );
setEffAlphaKey( spep_4 + 0, entry_f, 255 );
setEffAlphaKey( spep_4 +98, entry_f, 255 );
setEffAlphaKey( spep_4 +99, entry_f, 255 );
setEffAlphaKey( spep_4 +100, entry_f, 0 );

entry_b = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --連続蹴り　背景(ef_006)
setEffMoveKey( spep_4 + 0, entry_b, 0, 0 , 0 );
setEffMoveKey( spep_4 +100, entry_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, entry_b, 1.0, 1.0 );
setEffScaleKey( spep_4 +100, entry_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, entry_b, 0 );
setEffRotateKey( spep_4 +100, entry_b, 0 );
setEffAlphaKey( spep_4 + 0, entry_b, 255 );
setEffAlphaKey( spep_4 +98, entry_b, 255 );
setEffAlphaKey( spep_4 +99, entry_b, 255 );
setEffAlphaKey( spep_4 +100, entry_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 102, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 105 );

setMoveKey( spep_4 + 0, 1, 43, -69.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 88, -39.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 148.9, -21 , 0 );
setMoveKey( spep_4-3 + 6, 1, 118.2, -20.1 , 0 );
setMoveKey( spep_4-3 + 8, 1, 101, -28.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 74.8, -28.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 51.5, -39.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, 54.4, -42.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 50, -40.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, 54.4, -37.1 , 0 );
setMoveKey( spep_4-3 + 20, 1, 52.8, -41 , 0 );
setMoveKey( spep_4-3 + 22, 1, 53.1, -40.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 53.6, -39.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 53.9, -39.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 54.3, -38.5 , 0 );
setMoveKey( spep_4-3 + 30, 1, 54.7, -37.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 55, -37.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 55.4, -36.6 , 0 );
setMoveKey( spep_4-3 + 36, 1, 55.8, -35.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 56.2, -35.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 56.6, -34.7 , 0 );
setMoveKey( spep_4-3 + 43, 1, 57, -34.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 17.9, -11 , 0 );
setMoveKey( spep_4-3 + 46, 1, 23.8, -18.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, 22.1, -7.3 , 0 );
setMoveKey( spep_4-3 + 50, 1, 27.2, -12 , 0 );
setMoveKey( spep_4-3 + 52, 1, 21, 4.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 24.6, 2.3 , 0 );
setMoveKey( spep_4-3 + 57, 1, 21.5, 7.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, 169.2, 244.6 , 0 );
setMoveKey( spep_4-3 + 60, 1, 137.4, 231.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 121.2, 214.2 , 0 );
setMoveKey( spep_4-3 + 64, 1, 96.9, 194.8 , 0 );
setMoveKey( spep_4-3 + 66, 1, 69.9, 167 , 0 );
setMoveKey( spep_4-3 + 68, 1, 76.3, 172.2 , 0 );
setMoveKey( spep_4-3 + 70, 1, 78.5, 173.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 82.1, 177.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 85.7, 181.4 , 0 );
setMoveKey( spep_4-3 + 76, 1, 89.2, 185.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, 92.8, 189.3 , 0 );
setMoveKey( spep_4-3 + 80, 1, 94.5, 191.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, 96.2, 193.5 , 0 );
setMoveKey( spep_4-3 + 84, 1, 98, 195.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 99.7, 197.7 , 0 );
setMoveKey( spep_4-3 + 88, 1, 101.4, 199.8 , 0 );
setMoveKey( spep_4-3 + 90, 1, 103.2, 201.9 , 0 );
setMoveKey( spep_4-3 + 92, 1, 104.9, 204 , 0 );
setMoveKey( spep_4-3 + 94, 1, 106.7, 206.1 , 0 );
setMoveKey( spep_4-3 + 96, 1, 108.4, 208.2 , 0 );
setMoveKey( spep_4-3 + 98, 1, 110.1, 210.3 , 0 );
setMoveKey( spep_4-3 + 100, 1, 111.8, 212.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 113.6, 214.5 , 0 );
--setMoveKey( spep_4-3 + 104, 1, 115.3, 216.6 , 0 );

setScaleKey( spep_4 + 0, 1,1.32,1.32);
--setScaleKey( spep_4-3 + 2,1,1.71,1.71);
setScaleKey( spep_4-3 + 4,1,2.11,2.11);
setScaleKey( spep_4-3 + 6,1,1.92,1.92);
setScaleKey( spep_4-3 + 8,1,1.71,1.71);
setScaleKey( spep_4-3 + 10, 1,1.51,1.51);
setScaleKey( spep_4-3 + 12, 1,1.32,1.32);
setScaleKey( spep_4-3 + 43, 1,1.32,1.32);
setScaleKey( spep_4-3 + 44, 1,1.42,1.42);
setScaleKey( spep_4-3 + 57, 1,1.42,1.42);
setScaleKey( spep_4-3 + 58, 1,1.53,1.53);
setScaleKey( spep_4-3 + 60, 1,1.36,1.36);
setScaleKey( spep_4-3 + 62, 1,1.21,1.21);
setScaleKey( spep_4-3 + 64, 1,1.05,1.05);
setScaleKey( spep_4-3 + 66, 1,0.9,0.9);
setScaleKey( spep_4-3 + 68, 1,0.81,0.81);
setScaleKey( spep_4-3 + 70, 1,0.72,0.72);
setScaleKey( spep_4-3 + 72, 1,0.63,0.63);
setScaleKey( spep_4-3 + 74, 1,0.54,0.54);
setScaleKey( spep_4-3 + 76, 1,0.45,0.45);
setScaleKey( spep_4-3 + 78, 1,0.36,0.36);
setScaleKey( spep_4-3 + 80, 1,0.33,0.33);
setScaleKey( spep_4-3 + 82, 1,0.31,0.31);
setScaleKey( spep_4-3 + 84, 1,0.28,0.28);
setScaleKey( spep_4-3 + 86, 1,0.26,0.26);
setScaleKey( spep_4-3 + 88, 1,0.24,0.24);
setScaleKey( spep_4-3 + 90, 1,0.21,0.21);
setScaleKey( spep_4-3 + 92, 1,0.2,0.2);
setScaleKey( spep_4-3 + 94, 1,0.18,0.18);
setScaleKey( spep_4-3 + 96, 1,0.15,0.15);
setScaleKey( spep_4-3 + 98, 1,0.13,0.13);
setScaleKey( spep_4-3 + 100,1,0.1,0.1);
setScaleKey( spep_4-3 + 102,1,0.08,0.08);
--setScaleKey( spep_4-3 + 104,1,0.06,0.06);

setRotateKey( spep_4-3 + 0, 1, -52.3 );
setRotateKey( spep_4-3 + 2, 1, -50.8 );
setRotateKey( spep_4-3 + 4, 1, -49.2 );
setRotateKey( spep_4-3 + 6, 1, -48.8 );
setRotateKey( spep_4-3 + 8, 1, -48.4 );
setRotateKey( spep_4-3 + 10, 1, -48 );
setRotateKey( spep_4-3 + 12, 1, -47.6 );
setRotateKey( spep_4-3 + 14, 1, -47.1 );
setRotateKey( spep_4-3 + 16, 1, -46.7 );
setRotateKey( spep_4-3 + 18, 1, -46.3 );
setRotateKey( spep_4-3 + 20, 1, -45.9 );
setRotateKey( spep_4-3 + 22, 1, -45.4 );
setRotateKey( spep_4-3 + 24, 1, -45 );
setRotateKey( spep_4-3 + 26, 1, -44.6 );
setRotateKey( spep_4-3 + 28, 1, -44.2 );
setRotateKey( spep_4-3 + 30, 1, -43.8 );
setRotateKey( spep_4-3 + 32, 1, -43.3 );
setRotateKey( spep_4-3 + 34, 1, -42.9 );
setRotateKey( spep_4-3 + 36, 1, -42.5 );
setRotateKey( spep_4-3 + 38, 1, -42.1 );
setRotateKey( spep_4-3 + 40, 1, -41.7 );
setRotateKey( spep_4-3 + 43, 1, -41.2 );
setRotateKey( spep_4-3 + 44, 1, -31.8 );
setRotateKey( spep_4-3 + 57, 1, -31.8 );
setRotateKey( spep_4-3 + 58, 1, 9.7 );
setRotateKey( spep_4-3 + 102, 1, 9.7 );

-- ** 音 ** --
--足払い1
SE023 = playSe( spep_4 + 6, 1010 );

--足払い2
SE024 = playSe( spep_4 + 6, 1110 );

--ハイキック1
SE025 = playSe( spep_4 + 42, 1189 );

--ハイキック2
SE026 = playSe( spep_4 + 46, 1001 );
setSeVolumeByWorkId( spep_4 + 46, SE026, 65 );
stopSe( spep_4 + 60, SE026, 6 );

--ハイキック3
SE027 = playSe( spep_4 + 46, 1009 );
setSeVolumeByWorkId( spep_4 + 46, SE027, 79 );
stopSe( spep_4 + 60, SE027, 6 );

--ジャンプハイキック1
SE028 = playSe( spep_4 + 64, 1010 );
setSeVolumeByWorkId( spep_4 + 64, SE028, 86 );

--ジャンプハイキック2
SE029 = playSe( spep_4 + 66, 1001 );
setSeVolumeByWorkId( spep_4 + 66, SE029, 73 );

--ジャンプハイキック3
SE030 = playSe( spep_4 + 66, 1110 );
setSeVolumeByWorkId( spep_4 + 66, SE030, 86 );

--敵追いかける1
SE031 = playSe( spep_4 + 88, 1183 );
stopSe( spep_4 +101 + 45, SE031, 10 );

--敵追いかける2
SE032 = playSe( spep_4 + 96, 1182 );
setSeVolumeByWorkId( spep_4 + 96, SE032, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0,102, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 +100;


------------------------------------------------------
-- 手刀～フュージョン(126F)
------------------------------------------------------
-- ** エフェクト等 ** --
fusion_f = entryEffectLife( spep_5 + 0, SP_07, 126, 0x100, -1, 0, 0, 0 );  --手刀～フュージョン(ef_007)
setEffMoveKey( spep_5 + 0, fusion_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, fusion_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, fusion_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, fusion_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fusion_f, 0 );
setEffRotateKey( spep_5 + 126, fusion_f, 0 );
setEffAlphaKey( spep_5 + 0, fusion_f, 255 );
setEffAlphaKey( spep_5 + 125, fusion_f, 255 );
setEffAlphaKey( spep_5 + 126, fusion_f, 0 );

fusion_b = entryEffectLife( spep_5 + 0, SP_08, 126, 0x80, -1, 0, 0, 0 );  --手刀～フュージョン　背景(ef_008)
setEffMoveKey( spep_5 + 0, fusion_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, fusion_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, fusion_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, fusion_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fusion_b, 0 );
setEffRotateKey( spep_5 + 126, fusion_b, 0 );
setEffAlphaKey( spep_5 + 0, fusion_b, 255 );
setEffAlphaKey( spep_5 + 125, fusion_b, 255 );
setEffAlphaKey( spep_5 + 126, fusion_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5-3 + 50, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );
changeAnime( spep_5-3 + 36, 1, 7 );

a=40;
b=300;

setMoveKey( spep_5 + 0,1,-231.2,-107.5-a,0);
--setMoveKey( spep_5-3 + 2,1,-208.1,-93.2-a,0);
setMoveKey( spep_5-3 + 4,1,-184.9,-93.2-a,0);
setMoveKey( spep_5-3 + 6,1,-161.8,-85-a,0);
setMoveKey( spep_5-3 + 8,1,-138.6,-76.9-a,0);
setMoveKey( spep_5-3 + 10,1,-115.5,-68.8-a,0);
setMoveKey( spep_5-3 + 12,1,-92.3,-60.7-a,0);
setMoveKey( spep_5-3 + 14,1,-69.2,-52.7-a,0);
setMoveKey( spep_5-3 + 16,1,-46,-44.7-a,0);
setMoveKey( spep_5-3 + 18,1,-22.9,-36.7-a,0);
--setMoveKey( spep_5-3 + 20,1,-21.5,-28.7-a,0);
--setMoveKey( spep_5-3 + 21,1,-21.5,-29.2-a,0);
--setMoveKey( spep_5-3 + 22,1,-20.1,-29.6-a,0);
--setMoveKey( spep_5-3 + 24,1,-18.7,-29.6-a,0);
--setMoveKey( spep_5-3 + 26,1,-17.4,-30.1-a,0);
--setMoveKey( spep_5-3 + 28,1,-16,-30.5-a,0);
--setMoveKey( spep_5-3 + 30,1,-14.7,-31-a,0);
--setMoveKey( spep_5-3 + 32,1,-13.3,-39.8-a,0);
--setMoveKey( spep_5-3 + 34,1,-11.9,-30.5-a,0);
setMoveKey( spep_5-3 + 35,1,1.9,-29.8-a,0);

setMoveKey( spep_5-3 + 36, 1, -38, -57.6-a , 0 );
setMoveKey( spep_5-3 + 38, 1, -68.2, -74.8-a , 0 );
setMoveKey( spep_5-3 + 40, 1, -85.7, -117.5-a , 0 );
setMoveKey( spep_5-3 + 42, 1, -120.2, -130.5-a , 0 );
--setMoveKey( spep_5-3 + 44, 1, -137.7, -164.7-a , 0 );
--setMoveKey( spep_5-3 + 46, 1, -168, -181.9-a , 0 );
--setMoveKey( spep_5-3 + 48, 1, -198.3, -203.4-a , 0 );
--setMoveKey( spep_5-3 + 50, 1, -215.8-b, -246.1-a , 0 );
--setMoveKey( spep_5-3 + 52, 1, -250.3-b, -259.1-a , 0 );
--setMoveKey( spep_5-3 + 54, 1, -267.8-b, -293.3-a , 0 );
--setMoveKey( spep_5-3 + 56, 1, -298-b, -310.5-a-30 , 0 );
setMoveKey( spep_5-3 + 50, 1, -324-b, -340.5-a-60 , 0 );

setScaleKey( spep_5 + 0,1,0.3,0.3);
setScaleKey( spep_5-3 + 2,1,0.38,0.38);
setScaleKey( spep_5-3 + 4,1,0.44,0.44);
setScaleKey( spep_5-3 + 6,1,0.52,0.52);
setScaleKey( spep_5-3 + 8,1,0.6,0.6);
setScaleKey( spep_5-3 + 10,1,0.68,0.68);
setScaleKey( spep_5-3 + 12,1,0.74,0.74);
setScaleKey( spep_5-3 + 14,1,0.82,0.82);
setScaleKey( spep_5-3 + 16,1,0.9,0.9);
setScaleKey( spep_5-3 + 18,1,0.96,0.96);
setScaleKey( spep_5-3 + 20,1,0.96,0.96);
setScaleKey( spep_5-3 + 22,1,0.98,0.98);
setScaleKey( spep_5-3 + 24,1,0.98,0.98);
setScaleKey( spep_5-3 + 26,1,0.98,0.98);
setScaleKey( spep_5-3 + 28,1,1,1);
setScaleKey( spep_5-3 + 30,1,1,1);
setScaleKey( spep_5-3 + 32,1,1,1);
setScaleKey( spep_5-3 + 35,1,1,1);
setScaleKey( spep_5-3 + 36,1,1.27,1.27);
setScaleKey( spep_5-3 + 38,1,1.54,1.54);
setScaleKey( spep_5-3 + 40,1,1.8,1.8);
setScaleKey( spep_5-3 + 42,1,2.07,2.07);
setScaleKey( spep_5-3 + 44,1,2.32,2.32);
setScaleKey( spep_5-3 + 46,1,2.57,2.57);
setScaleKey( spep_5-3 + 48,1,2.84,2.84);
setScaleKey( spep_5-3 + 50,1,3.09,3.09);

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 50, 1, 0 );

-- ** 音 ** --
--敵追いかける3
SE033 = playSe( spep_5 + 5, 9 );
setSeVolumeByWorkId( spep_5 + 5, SE033, 0 );
setSeVolumeByWorkId( spep_5 + 6, SE033, 5.6 );
setSeVolumeByWorkId( spep_5 + 7, SE033, 11.2 );
setSeVolumeByWorkId( spep_5 + 8, SE033, 16.8 );
setSeVolumeByWorkId( spep_5 + 9, SE033, 22.4 );
setSeVolumeByWorkId( spep_5 + 10, SE033, 28 );
setSeVolumeByWorkId( spep_5 + 11, SE033, 33.6 );
setSeVolumeByWorkId( spep_5 + 12, SE033, 39.2 );
setSeVolumeByWorkId( spep_5 + 13, SE033, 44.8 );
setSeVolumeByWorkId( spep_5 + 14, SE033, 50.4 );
setSeVolumeByWorkId( spep_5 + 15, SE033, 56 );
setSeVolumeByWorkId( spep_5 + 16, SE033, 61.6 );
setSeVolumeByWorkId( spep_5 + 17, SE033, 67.2 );
setSeVolumeByWorkId( spep_5 + 18, SE033, 72.8 );
setSeVolumeByWorkId( spep_5 + 19, SE033, 78.4 );
setSeVolumeByWorkId( spep_5 + 20, SE033, 84 );
setSeVolumeByWorkId( spep_5 + 21, SE033, 89.6 );
setSeVolumeByWorkId( spep_5 + 22, SE033, 95.2 );
setSeVolumeByWorkId( spep_5 + 23, SE033, 100 );
stopSe( spep_5 + 47, SE033, 6 );

--裏拳1
SE034 = playSe( spep_5 + 37, 1003 );
setSeVolumeByWorkId( spep_5 + 37, SE034, 69 );

--裏拳2
SE035 = playSe( spep_5 + 41, 1009 );

--裏拳3
SE036 = playSe( spep_5 + 43, 1000 );

--裏拳4
SE037 = playSe( spep_5 + 43, 1110 );
setSeVolumeByWorkId( spep_5 + 43, SE037, 85 );

--フュージョン1
SE038 = playSe( spep_5 + 69, 1274 );
stopSe( spep_5 + 107, SE038, 22 );
setTimeStretch( SE038, 0.84, 10, 1 );

--フュージョン2
SE039 = playSe( spep_5 + 83, 1230 );
setSeVolumeByWorkId( spep_5 + 83, SE039, 178 );

--フュージョン3
SE040 = playSe( spep_5 + 85, 1024 );
setSeVolumeByWorkId( spep_5 + 85, SE040, 45 );

--フュージョン4
SE041 = playSe( spep_5 + 85, 1035 );
setSeVolumeByWorkId( spep_5 + 85, SE041, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 128, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 120, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 126;


------------------------------------------------------
-- ゴジータ登場(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
g_entry = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ゴジータ登場  ef_009
setEffMoveKey( spep_6 + 0, g_entry, 0, 0 , 0 );
setEffMoveKey( spep_6 + 76, g_entry, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, g_entry, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, g_entry, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, g_entry, 0 );
setEffRotateKey( spep_6 + 76, g_entry, 0 );
setEffAlphaKey( spep_6 + 0, g_entry, 255 );
setEffAlphaKey( spep_6 + 76, g_entry, 255 );

-- ** 音 ** --
--画面遷移
SE042 = playSe( spep_6 + 3, 1072 );
setStartTimeMs( SE042,  300 );

--ゴジータ変身決め1
SE043 = playSe( spep_6 + 13, 1024 );
setSeVolumeByWorkId( spep_6 + 13, SE043, 114 );

--ゴジータ変身決め2
SE044 = playSe( spep_6 + 13, 1067 );
setSeVolumeByWorkId( spep_6 + 13, SE044, 55 );

--オーラ1
SE045 = playSe( spep_6 + 13, 1036 );
setSeVolumeByWorkId( spep_6 + 13, SE045, 58 );

--オーラ2
SE046 = playSe( spep_6 + 37, 1036 );
setSeVolumeByWorkId( spep_6 + 37, SE046, 79 );

--オーラ3
SE047 = playSe( spep_6 + 61, 1036 );
setSeVolumeByWorkId( spep_6 + 61, SE047, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 76;


------------------------------------------------------
-- パイクーハン合流(40F)
------------------------------------------------------
-- ** エフェクト等 ** --
join = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --パイクーハン合流(ef_010)
setEffMoveKey( spep_7 + 0, join, 0, 0 , 0 );
setEffMoveKey( spep_7 + 40, join, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, join, 1.0, 1.0 );
setEffScaleKey( spep_7 + 40, join, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, join, 0 );
setEffRotateKey( spep_7 + 40, join, 0 );
setEffAlphaKey( spep_7 + 0, join, 255 );
setEffAlphaKey( spep_7 + 40, join, 255 );

-- ** 音 ** --
--オーラ4
SE048 = playSe( spep_7 + 0, 1036 );
setSeVolumeByWorkId( spep_7 + 0, SE048, 79 );

--パイクーハンかけよる
SE049 = playSe( spep_7 + 0, 1116 );
stopSe( spep_7 + 24, SE049, 22 );

--オーラ5
SE050 = playSe( spep_7 + 24, 1036 );
setSeVolumeByWorkId( spep_7 + 24, SE050, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 33, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 40;


------------------------------------------------------
-- ツーショット(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
twoshot = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --ツーショット(ef_011)
setEffMoveKey( spep_8 + 0, twoshot, 0, 0 , 0 );
setEffMoveKey( spep_8 + 96, twoshot, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, twoshot, 1.0, 1.0 );
setEffScaleKey( spep_8 + 96, twoshot, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, twoshot, 0 );
setEffRotateKey( spep_8 + 96, twoshot, 0 );
setEffAlphaKey( spep_8 + 0, twoshot, 255 );
setEffAlphaKey( spep_8 + 96, twoshot, 255 );

-- ** 音 ** --
--環境音
SE051 = playSe( spep_8 + 0, 1175 );
setSeVolumeByWorkId( spep_8 + 0, SE051, 32 );
stopSe( spep_8 +96 + 8, SE051, 46 );

--オーラ6
SE052 = playSe( spep_8 + 8, 1036 );
setSeVolumeByWorkId( spep_8 + 8, SE052, 79 );

--オーラ7
SE053 = playSe( spep_8 + 32, 1036 );
setSeVolumeByWorkId( spep_8 + 32, SE053, 79 );

--オーラ8
SE054 = playSe( spep_8 + 56, 1036 );
setSeVolumeByWorkId( spep_8 + 56, SE054, 63 );

--オーラ9
SE055 = playSe( spep_8 + 80, 1036 );
setSeVolumeByWorkId( spep_8 + 80, SE055, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 98, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_8 + 88, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 96;


------------------------------------------------------
-- ソウルパニッシャー玉(110F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --ソウルパニッシャー玉(ef_012)
setEffMoveKey( spep_9 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_9 + 110, tame, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 110, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 110, tame, 255 );

-- ** 音 ** --
--虹色気弾中
SE056 = playSe( spep_9 + 0, 1295 );
setSeVolumeByWorkId( spep_9 + 0, SE056, 150 );
stopSe( spep_9 +110 + 12, SE056, 36 );

--オーラ10
SE057 = playSe( spep_9 + 2, 1036 );
setSeVolumeByWorkId( spep_9 + 2, SE057, 25 );

--オーラ11
SE058 = playSe( spep_9 + 26, 1036 );
setSeVolumeByWorkId( spep_9 + 26, SE058, 13 );

--気弾光奥へ
SE059 = playSe( spep_9 + 42, 1289,"",0.6 );

--気弾溢れる
SE060 = playSe( spep_9 + 98, 1290,"",0.6 );

--気弾を掴む1
SE061 = playSe( spep_9 + 92, 1251 );
setSeVolumeByWorkId( spep_9 + 92, SE061, 72 );
stopSe( spep_9 +95 + 11, SE061, 16 );
setPitch( spep_9 + 92, SE061, -1000 );
setTimeStretch( SE061, 0.33, 10, 1 );

--気弾を掴む2
SE062 = playSe( spep_9 + 92, 1178 );
setSeVolumeByWorkId( spep_9 + 92, SE062, 58 );

--気弾を掴む3
SE063 = playSe( spep_9 + 94, 1246 );
setSeVolumeByWorkId( spep_9 + 94, SE063, 112 );
stopSe( spep_9 +95 + 11, SE063, 6 );
setPitch( spep_9 + 94, SE063, -200 );
setTimeStretch( SE063, 0.87, 10, 1 );

--気弾を掴む4
SE064 = playSe( spep_9 +95 + 1, 1032 );
setSeVolumeByWorkId( spep_9 +95 + 1, SE064, 7 );
setSeVolumeByWorkId( spep_9 +95 + 3, SE064, 14 );
setSeVolumeByWorkId( spep_9 +95 + 5, SE064, 21 );
setSeVolumeByWorkId( spep_9 +95 + 7, SE064, 28 );
setSeVolumeByWorkId( spep_9 +95 + 9, SE064, 35 );
setSeVolumeByWorkId( spep_9 +95 + 11, SE064, 45 );
setPitch( spep_9 +95 + 1, SE064, 400 );
setTimeStretch( SE064, 1.27, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 112, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 104, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 110;


------------------------------------------------------
-- ２人が気弾を投げる(160F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --２人が気弾を投げる(ef_013)
setEffMoveKey( spep_10 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_10 + 160, kidan, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_10 + 160, kidan, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kidan, 0 );
setEffRotateKey( spep_10 + 160, kidan, 0 );
setEffAlphaKey( spep_10 + 0, kidan, 255 );
setEffAlphaKey( spep_10 + 160, kidan, 255 );

-- ** 音 ** --
--ゴジータ気弾投げる1
SE065 = playSe( spep_10 + 14, 1027 );
setSeVolumeByWorkId( spep_10 + 14, SE065, 54 );

--ゴジータ気弾投げる2
SE066 = playSe( spep_10 + 14, 1117 );
setSeVolumeByWorkId( spep_10 + 14, SE066, 112 );
stopSe( spep_10 + 42, SE066, 46 );

--ゴジータ気弾投げる3
SE067 = playSe( spep_10 + 16, 8 );
setSeVolumeByWorkId( spep_10 + 16, SE067, 65 );

--パイクーハンアップ
SE068 = playSe( spep_10 + 80, 1232 );

--パイクーハン回転
SE069 = playSe( spep_10 + 102, 1116 );
stopSe( spep_10 + 136, SE069, 24 );

--パイクーハン気弾投げる1
SE070 = playSe( spep_10 + 138, 1003 );

--パイクーハン気弾投げる2
SE071 = playSe( spep_10 + 140, 1027 );

--パイクーハン気弾投げる3
SE072 = playSe( spep_10 + 140, 1145 );
setSeVolumeByWorkId( spep_10 + 140, SE072, 36 );
setPitch( spep_10 + 140, SE072, 600 );
setTimeStretch( SE072, 1.4, 10, 1 );

--パイクーハン気弾投げる4
SE073 = playSe( spep_10 + 140, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 162, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 160;


------------------------------------------------------
-- フィニッシュ(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_014)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 176, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 176, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背景(ef_015)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 176, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 176, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 176, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 51, 1, 0 );
changeAnime( spep_11 + 0, 1, 105 );

setMoveKey( spep_11 + 0, 1, 0, -61 , 0 );
setMoveKey( spep_11 -3 + 54, 1, 0, -61 , 0 );

setScaleKey( spep_11 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_11 + 1, 1, 0.83, 0.83 );
setScaleKey( spep_11 -3 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_11 -3 + 8, 1, 0.82, 0.82 );
setScaleKey( spep_11 -3 + 10, 1, 0.82, 0.82 );
setScaleKey( spep_11 -3 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_11 -3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_11 -3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_11 -3 + 18, 1, 0.8, 0.8 );
setScaleKey( spep_11 -3 + 20, 1, 0.78, 0.78 );
setScaleKey( spep_11 -3 + 22, 1, 0.77, 0.77 );
setScaleKey( spep_11 -3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_11 -3 + 26, 1, 0.74, 0.74 );
setScaleKey( spep_11 -3 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_11 -3 + 30, 1, 0.71, 0.71 );
setScaleKey( spep_11 -3 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_11 -3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_11 -3 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_11 -3 + 38, 1, 0.65, 0.65 );
setScaleKey( spep_11 -3 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_11 -3 + 42, 1, 0.62, 0.62 );
setScaleKey( spep_11 -3 + 44, 1, 0.6, 0.6 );
setScaleKey( spep_11 -3 + 46, 1, 0.59, 0.59 );
setScaleKey( spep_11 -3 + 48, 1, 0.57, 0.57 );
setScaleKey( spep_11 -3 + 50, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 52, 1, 0.54, 0.54 );
setScaleKey( spep_11 -3 + 53, 1, 0.54, 0.54 );
setScaleKey( spep_11 -3 + 54, 1, 0.54, 0.54 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 -3 + 54, 1, 0 );


-- ** 音 ** --
--気弾飛んでいく1
SE074 = playSe( spep_11 + 3, 1272 );
setSeVolumeByWorkId( spep_11 + 3, SE074, 58 );

--気弾飛んでいく2
SE075 = playSe( spep_11 + 3, 1277 );
setSeVolumeByWorkId( spep_11 + 3, SE075, 129 );

--爆発1
SE076 = playSe( spep_11 + 57, 1067 );
setSeVolumeByWorkId( spep_11 + 57, SE076, 126 );

--爆発2
SE077 = playSe( spep_11 + 61, 1024 );
setSeVolumeByWorkId( spep_11 + 61, SE077, 89 );

--爆発3
SE078 = playSe( spep_11 + 63, 1159 );
setSeVolumeByWorkId( spep_11 + 63, SE078, 68 );

--爆発4
SE079 = playSe( spep_11 + 69, 1156 );
setSeVolumeByWorkId( spep_11 + 69, SE079, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 178, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_11 + 154, 22, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 66 );
endPhase( spep_11 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ここは俺にまかせろ(128F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 128, 0x100, -1, 0, 0, 0 );  --ここは俺にまかせろ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 128, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 128, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 127, first_f, 255 );
setEffAlphaKey( spep_0 + 128, first_f, 0 );

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
SE001 = playSe( spep_0 + 18, 1072,"",0.6 );
setStartTimeMs( SE001,  233 );

--顔カットイン
SE002 = playSe( spep_0 + 42, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 110, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 128;


------------------------------------------------------
-- 飛び上がって気弾溜め(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --飛び上がって気弾溜め(ef_002)
setEffMoveKey( spep_1 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, jump, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 56, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 56, jump, 255 );

-- ** 音 ** --
--気弾溜め1
SE003 = playSe( spep_1 + 18, 1276,"",0.6 );
setSeVolumeByWorkId( spep_1 + 18, SE003, 13 );
setSeVolumeByWorkId( spep_1 + 19, SE003, 26 );
setSeVolumeByWorkId( spep_1 + 20, SE003, 39 );
setSeVolumeByWorkId( spep_1 + 21, SE003, 39 );
setSeVolumeByWorkId( spep_1 + 22, SE003, 52 );
setSeVolumeByWorkId( spep_1 + 23, SE003, 65 );
setSeVolumeByWorkId( spep_1 + 24, SE003, 74 );
setStartTimeMs( SE003,  283 );
setPitch( spep_1 + 18, SE003, 200 );
setTimeStretch( SE003, 1.13, 10, 1 );

--ジャンプ1
SE005 = playSe( spep_1 + 10, 1116 );
setSeVolumeByWorkId( spep_1 + 10, SE005, 77 );
stopSe( spep_1 + 36, SE005, 24 );

--ジャンプ2
SE006 = playSe( spep_1 + 10, 1117 );
stopSe( spep_1 + 26, SE006, 26 );

--気弾溜め3
SE007 = playSe( spep_1 + 12, 1276,"",0.6 );
stopSe( spep_1 + 24, SE007, 12 );

--気弾溜め4
SE008 = playSe( spep_1 + 12, 1243 );
setSeVolumeByWorkId( spep_1 + 12, SE008, 60 );
stopSe( spep_1 +56 + 10, SE008, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 35, 18 +a1, 0 );
    --setMoveKey( SP_dodge + 2, 1, 39, 18.8 +a1, 0 );
    --setMoveKey( SP_dodge + 4, 1, 42.9, 19.6 +a1, 0 );
    --setMoveKey( SP_dodge + 6, 1, 46.8, 20.4 +a1, 0 );
    --setMoveKey( SP_dodge + 8, 1, 46.8, 20.4 +a1, 0 );
    --setMoveKey( SP_dodge + 10, 1, 39.6, 32.4 +a1, 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
    --setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

    --setRotateKey( SP_dodge + 0, 1, -11.7 );
    --setRotateKey( SP_dodge + 10, 1, -11.7 );
    
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
--気弾溜め2
SE004 = playSe( spep_1 + 32, 1296,"",0.6 );
setSeVolumeByWorkId( spep_1 + 32, SE004, 6 );
setSeVolumeByWorkId( spep_1 + 34, SE004, 12 );
setSeVolumeByWorkId( spep_1 + 36, SE004, 18 );
setSeVolumeByWorkId( spep_1 + 38, SE004, 24 );
setSeVolumeByWorkId( spep_1 + 40, SE004, 27 );
setSeVolumeByWorkId( spep_1 + 42, SE004, 34 );
setSeVolumeByWorkId( spep_1 + 44, SE004, 38 );
setSeVolumeByWorkId( spep_1 + 46, SE004, 42 );
stopSe( spep_1 +56 + 10, SE004, 0 );
setStartTimeMs( SE004,  433 );
setPitch( spep_1 + 32, SE004, 700 );
setTimeStretch( SE004, 1.47, 10, 1 );

-- ** 白フェード ** --
entryFade( spep_1 + 50, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 連続気弾～蹴り(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_03, 156, 0x100, -1, 0, 0, 0 );  --連続気弾～蹴り(ef_003)
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 156, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 155, kick_f, 255 );
setEffAlphaKey( spep_3 + 156, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_04, 156, 0x80, -1, 0, 0, 0 );  --連続気弾～蹴り　背景(ef_004)
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 156, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 155, kick_b, 255 );
setEffAlphaKey( spep_3 + 156, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 76, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );

a1 = 17;

setMoveKey( spep_3 + 0, 1, 86, 28.2 +a1, 0 );
setMoveKey( spep_3 + 1, 1, 71.3, 25.4 +a1, 0 );
setMoveKey( spep_3 + 2, 1, 56.6, 22.4 +a1, 0 );
setMoveKey( spep_3 -3 + 6, 1, 41.9, 19.4 +a1, 0 );
setMoveKey( spep_3 -3 + 8, 1, 27.2, 16.3 +a1, 0 );
setMoveKey( spep_3 -3 + 10, 1, 31.1, 17.1 +a1, 0 );
setMoveKey( spep_3 -3 + 12, 1, 35, 18 +a1, 0 );
setMoveKey( spep_3 -3 + 14, 1, 39, 18.8 +a1, 0 );
setMoveKey( spep_3 -3 + 16, 1, 42.9, 19.6 +a1, 0 );
setMoveKey( spep_3 -3 + 18, 1, 46.8, 20.4 +a1, 0 );
setMoveKey( spep_3 -3 + 22, 1, 46.8, 20.4 +a1, 0 );
setMoveKey( spep_3 -3 + 24, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 26, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 28, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 30, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 32, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 34, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 36, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 38, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 42, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 44, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 46, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 48, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 50, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 52, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 54, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 56, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 60, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 62, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 64, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 66, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 68, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 70, 1, 54, 15.6 +a1, 0 );
setMoveKey( spep_3 -3 + 72, 1, 46.8, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 74, 1, 39.6, 32.4 +a1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 54, 10.8 +a1, 0 );
setMoveKey( spep_3 -3 + 78, 1, 39.6, 22.8 +a1, 0 );
setMoveKey( spep_3 -3 + 79, 1, 39.6, 22.8 +a1, 0 );

setScaleKey( spep_3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 79, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -11.6 );
setRotateKey( spep_3 -3 + 2, 1, -11.7 );
setRotateKey( spep_3 -3 + 79, 1, -11.7 );

-- ** 音 ** --
--気弾飛んでいく
SE010 = playSe( spep_3 + 0, 1177 );
setSeVolumeByWorkId( spep_3 + 0, SE010, 10 );
setSeVolumeByWorkId( spep_3 + 1, SE010, 20 );
setSeVolumeByWorkId( spep_3 + 2, SE010, 32 );
setSeVolumeByWorkId( spep_3 + 3, SE010, 44 );
setSeVolumeByWorkId( spep_3 + 4, SE010, 56 );
setSeVolumeByWorkId( spep_3 + 5, SE010, 68 );
setSeVolumeByWorkId( spep_3 + 6, SE010, 80 );
stopSe( spep_3 + 44, SE010, 10 );
setStartTimeMs( SE010,  283 );

--連続気弾1
SE011 = playSe( spep_3 + 4, 1016 );
setSeVolumeByWorkId( spep_3 + 4, SE011, 94 );

--連続気弾2
SE012 = playSe( spep_3 + 12, 1016 );
setSeVolumeByWorkId( spep_3 + 12, SE012, 80 );

--連続気弾3
SE013 = playSe( spep_3 + 22, 1016 );
setSeVolumeByWorkId( spep_3 + 22, SE013, 81 );

--爆発1
SE014 = playSe( spep_3 + 24, 1024 );
setSeVolumeByWorkId( spep_3 + 24, SE014, 87 );

--爆発2
SE015 = playSe( spep_3 + 32, 1023 );
setSeVolumeByWorkId( spep_3 + 32, SE015, 84 );

--連続気弾4
SE016 = playSe( spep_3 + 32, 1016 );

--連続気弾5
SE017 = playSe( spep_3 + 42, 1016 );
setSeVolumeByWorkId( spep_3 + 42, SE017, 78 );

--連続気弾6
SE018 = playSe( spep_3 + 50, 1016 );
setSeVolumeByWorkId( spep_3 + 50, SE018, 55 );

--前方ダッシュ1
SE019 = playSe( spep_3 + 88, 1182 );

--前方ダッシュ2
SE020 = playSe( spep_3 + 88, 9 );
stopSe( spep_3 + 150, SE020, 10 );

--蹴り振りかぶり1
SE021 = playSe( spep_3 + 130, 1116 );
setSeVolumeByWorkId( spep_3 + 130, SE021, 80 );
stopSe( spep_3 + 152, SE021, 8 );

--蹴り振りかぶり2
SE022 = playSe( spep_3 + 138, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 156;


------------------------------------------------------
-- 連続蹴り(101F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_f = entryEffectLife( spep_4 + 0, SP_05r, 100, 0x100, -1, 0, 0, 0 );  --連続蹴り(ef_005)
setEffMoveKey( spep_4 + 0, entry_f, 0, 0 , 0 );
setEffMoveKey( spep_4 +100, entry_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, entry_f, 1.0, 1.0 );
setEffScaleKey( spep_4 +100, entry_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, entry_f, 0 );
setEffRotateKey( spep_4 +100, entry_f, 0 );
setEffAlphaKey( spep_4 + 0, entry_f, 255 );
setEffAlphaKey( spep_4 +98, entry_f, 255 );
setEffAlphaKey( spep_4 +99, entry_f, 255 );
setEffAlphaKey( spep_4 +100, entry_f, 0 );

entry_b = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --連続蹴り　背景(ef_006)
setEffMoveKey( spep_4 + 0, entry_b, 0, 0 , 0 );
setEffMoveKey( spep_4 +100, entry_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, entry_b, 1.0, 1.0 );
setEffScaleKey( spep_4 +100, entry_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, entry_b, 0 );
setEffRotateKey( spep_4 +100, entry_b, 0 );
setEffAlphaKey( spep_4 + 0, entry_b, 255 );
setEffAlphaKey( spep_4 +98, entry_b, 255 );
setEffAlphaKey( spep_4 +99, entry_b, 255 );
setEffAlphaKey( spep_4 +100, entry_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 102, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 105 );

setMoveKey( spep_4 + 0, 1, 43, -69.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 88, -39.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 148.9, -21 , 0 );
setMoveKey( spep_4-3 + 6, 1, 118.2, -20.1 , 0 );
setMoveKey( spep_4-3 + 8, 1, 101, -28.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 74.8, -28.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 51.5, -39.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, 54.4, -42.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 50, -40.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, 54.4, -37.1 , 0 );
setMoveKey( spep_4-3 + 20, 1, 52.8, -41 , 0 );
setMoveKey( spep_4-3 + 22, 1, 53.1, -40.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 53.6, -39.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 53.9, -39.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 54.3, -38.5 , 0 );
setMoveKey( spep_4-3 + 30, 1, 54.7, -37.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 55, -37.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 55.4, -36.6 , 0 );
setMoveKey( spep_4-3 + 36, 1, 55.8, -35.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 56.2, -35.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 56.6, -34.7 , 0 );
setMoveKey( spep_4-3 + 43, 1, 57, -34.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 17.9, -11 , 0 );
setMoveKey( spep_4-3 + 46, 1, 23.8, -18.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, 22.1, -7.3 , 0 );
setMoveKey( spep_4-3 + 50, 1, 27.2, -12 , 0 );
setMoveKey( spep_4-3 + 52, 1, 21, 4.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 24.6, 2.3 , 0 );
setMoveKey( spep_4-3 + 57, 1, 21.5, 7.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, 169.2, 244.6 , 0 );
setMoveKey( spep_4-3 + 60, 1, 137.4, 231.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 121.2, 214.2 , 0 );
setMoveKey( spep_4-3 + 64, 1, 96.9, 194.8 , 0 );
setMoveKey( spep_4-3 + 66, 1, 69.9, 167 , 0 );
setMoveKey( spep_4-3 + 68, 1, 76.3, 172.2 , 0 );
setMoveKey( spep_4-3 + 70, 1, 78.5, 173.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 82.1, 177.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 85.7, 181.4 , 0 );
setMoveKey( spep_4-3 + 76, 1, 89.2, 185.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, 92.8, 189.3 , 0 );
setMoveKey( spep_4-3 + 80, 1, 94.5, 191.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, 96.2, 193.5 , 0 );
setMoveKey( spep_4-3 + 84, 1, 98, 195.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 99.7, 197.7 , 0 );
setMoveKey( spep_4-3 + 88, 1, 101.4, 199.8 , 0 );
setMoveKey( spep_4-3 + 90, 1, 103.2, 201.9 , 0 );
setMoveKey( spep_4-3 + 92, 1, 104.9, 204 , 0 );
setMoveKey( spep_4-3 + 94, 1, 106.7, 206.1 , 0 );
setMoveKey( spep_4-3 + 96, 1, 108.4, 208.2 , 0 );
setMoveKey( spep_4-3 + 98, 1, 110.1, 210.3 , 0 );
setMoveKey( spep_4-3 + 100, 1, 111.8, 212.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 113.6, 214.5 , 0 );
--setMoveKey( spep_4-3 + 104, 1, 115.3, 216.6 , 0 );

setScaleKey( spep_4 + 0, 1,1.32,1.32);
--setScaleKey( spep_4-3 + 2,1,1.71,1.71);
setScaleKey( spep_4-3 + 4,1,2.11,2.11);
setScaleKey( spep_4-3 + 6,1,1.92,1.92);
setScaleKey( spep_4-3 + 8,1,1.71,1.71);
setScaleKey( spep_4-3 + 10, 1,1.51,1.51);
setScaleKey( spep_4-3 + 12, 1,1.32,1.32);
setScaleKey( spep_4-3 + 43, 1,1.32,1.32);
setScaleKey( spep_4-3 + 44, 1,1.42,1.42);
setScaleKey( spep_4-3 + 57, 1,1.42,1.42);
setScaleKey( spep_4-3 + 58, 1,1.53,1.53);
setScaleKey( spep_4-3 + 60, 1,1.36,1.36);
setScaleKey( spep_4-3 + 62, 1,1.21,1.21);
setScaleKey( spep_4-3 + 64, 1,1.05,1.05);
setScaleKey( spep_4-3 + 66, 1,0.9,0.9);
setScaleKey( spep_4-3 + 68, 1,0.81,0.81);
setScaleKey( spep_4-3 + 70, 1,0.72,0.72);
setScaleKey( spep_4-3 + 72, 1,0.63,0.63);
setScaleKey( spep_4-3 + 74, 1,0.54,0.54);
setScaleKey( spep_4-3 + 76, 1,0.45,0.45);
setScaleKey( spep_4-3 + 78, 1,0.36,0.36);
setScaleKey( spep_4-3 + 80, 1,0.33,0.33);
setScaleKey( spep_4-3 + 82, 1,0.31,0.31);
setScaleKey( spep_4-3 + 84, 1,0.28,0.28);
setScaleKey( spep_4-3 + 86, 1,0.26,0.26);
setScaleKey( spep_4-3 + 88, 1,0.24,0.24);
setScaleKey( spep_4-3 + 90, 1,0.21,0.21);
setScaleKey( spep_4-3 + 92, 1,0.2,0.2);
setScaleKey( spep_4-3 + 94, 1,0.18,0.18);
setScaleKey( spep_4-3 + 96, 1,0.15,0.15);
setScaleKey( spep_4-3 + 98, 1,0.13,0.13);
setScaleKey( spep_4-3 + 100,1,0.1,0.1);
setScaleKey( spep_4-3 + 102,1,0.08,0.08);
--setScaleKey( spep_4-3 + 104,1,0.06,0.06);

setRotateKey( spep_4-3 + 0, 1, -52.3 );
setRotateKey( spep_4-3 + 2, 1, -50.8 );
setRotateKey( spep_4-3 + 4, 1, -49.2 );
setRotateKey( spep_4-3 + 6, 1, -48.8 );
setRotateKey( spep_4-3 + 8, 1, -48.4 );
setRotateKey( spep_4-3 + 10, 1, -48 );
setRotateKey( spep_4-3 + 12, 1, -47.6 );
setRotateKey( spep_4-3 + 14, 1, -47.1 );
setRotateKey( spep_4-3 + 16, 1, -46.7 );
setRotateKey( spep_4-3 + 18, 1, -46.3 );
setRotateKey( spep_4-3 + 20, 1, -45.9 );
setRotateKey( spep_4-3 + 22, 1, -45.4 );
setRotateKey( spep_4-3 + 24, 1, -45 );
setRotateKey( spep_4-3 + 26, 1, -44.6 );
setRotateKey( spep_4-3 + 28, 1, -44.2 );
setRotateKey( spep_4-3 + 30, 1, -43.8 );
setRotateKey( spep_4-3 + 32, 1, -43.3 );
setRotateKey( spep_4-3 + 34, 1, -42.9 );
setRotateKey( spep_4-3 + 36, 1, -42.5 );
setRotateKey( spep_4-3 + 38, 1, -42.1 );
setRotateKey( spep_4-3 + 40, 1, -41.7 );
setRotateKey( spep_4-3 + 43, 1, -41.2 );
setRotateKey( spep_4-3 + 44, 1, -31.8 );
setRotateKey( spep_4-3 + 57, 1, -31.8 );
setRotateKey( spep_4-3 + 58, 1, 9.7 );
setRotateKey( spep_4-3 + 102, 1, 9.7 );

-- ** 音 ** --
--足払い1
SE023 = playSe( spep_4 + 6, 1010 );

--足払い2
SE024 = playSe( spep_4 + 6, 1110 );

--ハイキック1
SE025 = playSe( spep_4 + 42, 1189 );

--ハイキック2
SE026 = playSe( spep_4 + 46, 1001 );
setSeVolumeByWorkId( spep_4 + 46, SE026, 65 );
stopSe( spep_4 + 60, SE026, 6 );

--ハイキック3
SE027 = playSe( spep_4 + 46, 1009 );
setSeVolumeByWorkId( spep_4 + 46, SE027, 79 );
stopSe( spep_4 + 60, SE027, 6 );

--ジャンプハイキック1
SE028 = playSe( spep_4 + 64, 1010 );
setSeVolumeByWorkId( spep_4 + 64, SE028, 86 );

--ジャンプハイキック2
SE029 = playSe( spep_4 + 66, 1001 );
setSeVolumeByWorkId( spep_4 + 66, SE029, 73 );

--ジャンプハイキック3
SE030 = playSe( spep_4 + 66, 1110 );
setSeVolumeByWorkId( spep_4 + 66, SE030, 86 );

--敵追いかける1
SE031 = playSe( spep_4 + 88, 1183 );
stopSe( spep_4 +101 + 45, SE031, 10 );

--敵追いかける2
SE032 = playSe( spep_4 + 96, 1182 );
setSeVolumeByWorkId( spep_4 + 96, SE032, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0,102, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 +100;


------------------------------------------------------
-- 手刀～フュージョン(126F)
------------------------------------------------------
-- ** エフェクト等 ** --
fusion_f = entryEffectLife( spep_5 + 0, SP_07, 126, 0x100, -1, 0, 0, 0 );  --手刀～フュージョン(ef_007)
setEffMoveKey( spep_5 + 0, fusion_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, fusion_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, fusion_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, fusion_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fusion_f, 0 );
setEffRotateKey( spep_5 + 126, fusion_f, 0 );
setEffAlphaKey( spep_5 + 0, fusion_f, 255 );
setEffAlphaKey( spep_5 + 125, fusion_f, 255 );
setEffAlphaKey( spep_5 + 126, fusion_f, 0 );

fusion_b = entryEffectLife( spep_5 + 0, SP_08r, 126, 0x80, -1, 0, 0, 0 );  --手刀～フュージョン　背景(ef_008)
setEffMoveKey( spep_5 + 0, fusion_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, fusion_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, fusion_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, fusion_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fusion_b, 0 );
setEffRotateKey( spep_5 + 126, fusion_b, 0 );
setEffAlphaKey( spep_5 + 0, fusion_b, 255 );
setEffAlphaKey( spep_5 + 125, fusion_b, 255 );
setEffAlphaKey( spep_5 + 126, fusion_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5-3 + 50, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );
changeAnime( spep_5-3 + 36, 1, 7 );

a=40;
b=300;

setMoveKey( spep_5 + 0,1,-231.2,-107.5-a,0);
--setMoveKey( spep_5-3 + 2,1,-208.1,-93.2-a,0);
setMoveKey( spep_5-3 + 4,1,-184.9,-93.2-a,0);
setMoveKey( spep_5-3 + 6,1,-161.8,-85-a,0);
setMoveKey( spep_5-3 + 8,1,-138.6,-76.9-a,0);
setMoveKey( spep_5-3 + 10,1,-115.5,-68.8-a,0);
setMoveKey( spep_5-3 + 12,1,-92.3,-60.7-a,0);
setMoveKey( spep_5-3 + 14,1,-69.2,-52.7-a,0);
setMoveKey( spep_5-3 + 16,1,-46,-44.7-a,0);
setMoveKey( spep_5-3 + 18,1,-22.9,-36.7-a,0);
--setMoveKey( spep_5-3 + 20,1,-21.5,-28.7-a,0);
--setMoveKey( spep_5-3 + 21,1,-21.5,-29.2-a,0);
--setMoveKey( spep_5-3 + 22,1,-20.1,-29.6-a,0);
--setMoveKey( spep_5-3 + 24,1,-18.7,-29.6-a,0);
--setMoveKey( spep_5-3 + 26,1,-17.4,-30.1-a,0);
--setMoveKey( spep_5-3 + 28,1,-16,-30.5-a,0);
--setMoveKey( spep_5-3 + 30,1,-14.7,-31-a,0);
--setMoveKey( spep_5-3 + 32,1,-13.3,-39.8-a,0);
--setMoveKey( spep_5-3 + 34,1,-11.9,-30.5-a,0);
setMoveKey( spep_5-3 + 35,1,1.9,-29.8-a,0);

setMoveKey( spep_5-3 + 36, 1, -38, -57.6-a , 0 );
setMoveKey( spep_5-3 + 38, 1, -68.2, -74.8-a , 0 );
setMoveKey( spep_5-3 + 40, 1, -85.7, -117.5-a , 0 );
setMoveKey( spep_5-3 + 42, 1, -120.2, -130.5-a , 0 );
--setMoveKey( spep_5-3 + 44, 1, -137.7, -164.7-a , 0 );
--setMoveKey( spep_5-3 + 46, 1, -168, -181.9-a , 0 );
--setMoveKey( spep_5-3 + 48, 1, -198.3, -203.4-a , 0 );
--setMoveKey( spep_5-3 + 50, 1, -215.8-b, -246.1-a , 0 );
--setMoveKey( spep_5-3 + 52, 1, -250.3-b, -259.1-a , 0 );
--setMoveKey( spep_5-3 + 54, 1, -267.8-b, -293.3-a , 0 );
--setMoveKey( spep_5-3 + 56, 1, -298-b, -310.5-a-30 , 0 );
setMoveKey( spep_5-3 + 50, 1, -324-b, -340.5-a-60 , 0 );

setScaleKey( spep_5 + 0,1,0.3,0.3);
setScaleKey( spep_5-3 + 2,1,0.38,0.38);
setScaleKey( spep_5-3 + 4,1,0.44,0.44);
setScaleKey( spep_5-3 + 6,1,0.52,0.52);
setScaleKey( spep_5-3 + 8,1,0.6,0.6);
setScaleKey( spep_5-3 + 10,1,0.68,0.68);
setScaleKey( spep_5-3 + 12,1,0.74,0.74);
setScaleKey( spep_5-3 + 14,1,0.82,0.82);
setScaleKey( spep_5-3 + 16,1,0.9,0.9);
setScaleKey( spep_5-3 + 18,1,0.96,0.96);
setScaleKey( spep_5-3 + 20,1,0.96,0.96);
setScaleKey( spep_5-3 + 22,1,0.98,0.98);
setScaleKey( spep_5-3 + 24,1,0.98,0.98);
setScaleKey( spep_5-3 + 26,1,0.98,0.98);
setScaleKey( spep_5-3 + 28,1,1,1);
setScaleKey( spep_5-3 + 30,1,1,1);
setScaleKey( spep_5-3 + 32,1,1,1);
setScaleKey( spep_5-3 + 35,1,1,1);
setScaleKey( spep_5-3 + 36,1,1.27,1.27);
setScaleKey( spep_5-3 + 38,1,1.54,1.54);
setScaleKey( spep_5-3 + 40,1,1.8,1.8);
setScaleKey( spep_5-3 + 42,1,2.07,2.07);
setScaleKey( spep_5-3 + 44,1,2.32,2.32);
setScaleKey( spep_5-3 + 46,1,2.57,2.57);
setScaleKey( spep_5-3 + 48,1,2.84,2.84);
setScaleKey( spep_5-3 + 50,1,3.09,3.09);

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 50, 1, 0 );

-- ** 音 ** --
--敵追いかける3
SE033 = playSe( spep_5 + 5, 9 );
setSeVolumeByWorkId( spep_5 + 5, SE033, 0 );
setSeVolumeByWorkId( spep_5 + 6, SE033, 5.6 );
setSeVolumeByWorkId( spep_5 + 7, SE033, 11.2 );
setSeVolumeByWorkId( spep_5 + 8, SE033, 16.8 );
setSeVolumeByWorkId( spep_5 + 9, SE033, 22.4 );
setSeVolumeByWorkId( spep_5 + 10, SE033, 28 );
setSeVolumeByWorkId( spep_5 + 11, SE033, 33.6 );
setSeVolumeByWorkId( spep_5 + 12, SE033, 39.2 );
setSeVolumeByWorkId( spep_5 + 13, SE033, 44.8 );
setSeVolumeByWorkId( spep_5 + 14, SE033, 50.4 );
setSeVolumeByWorkId( spep_5 + 15, SE033, 56 );
setSeVolumeByWorkId( spep_5 + 16, SE033, 61.6 );
setSeVolumeByWorkId( spep_5 + 17, SE033, 67.2 );
setSeVolumeByWorkId( spep_5 + 18, SE033, 72.8 );
setSeVolumeByWorkId( spep_5 + 19, SE033, 78.4 );
setSeVolumeByWorkId( spep_5 + 20, SE033, 84 );
setSeVolumeByWorkId( spep_5 + 21, SE033, 89.6 );
setSeVolumeByWorkId( spep_5 + 22, SE033, 95.2 );
setSeVolumeByWorkId( spep_5 + 23, SE033, 100 );
stopSe( spep_5 + 47, SE033, 6 );

--裏拳1
SE034 = playSe( spep_5 + 37, 1003 );
setSeVolumeByWorkId( spep_5 + 37, SE034, 69 );

--裏拳2
SE035 = playSe( spep_5 + 41, 1009 );

--裏拳3
SE036 = playSe( spep_5 + 43, 1000 );

--裏拳4
SE037 = playSe( spep_5 + 43, 1110 );
setSeVolumeByWorkId( spep_5 + 43, SE037, 85 );

--フュージョン1
SE038 = playSe( spep_5 + 69, 1274 );
stopSe( spep_5 + 107, SE038, 22 );
setTimeStretch( SE038, 0.84, 10, 1 );

--フュージョン2
SE039 = playSe( spep_5 + 83, 1230 );
setSeVolumeByWorkId( spep_5 + 83, SE039, 178 );

--フュージョン3
SE040 = playSe( spep_5 + 85, 1024 );
setSeVolumeByWorkId( spep_5 + 85, SE040, 45 );

--フュージョン4
SE041 = playSe( spep_5 + 85, 1035 );
setSeVolumeByWorkId( spep_5 + 85, SE041, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 128, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 120, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 126;


------------------------------------------------------
-- ゴジータ登場(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
g_entry = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ゴジータ登場  ef_009
setEffMoveKey( spep_6 + 0, g_entry, 0, 0 , 0 );
setEffMoveKey( spep_6 + 76, g_entry, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, g_entry, -1.0, 1.0 );
setEffScaleKey( spep_6 + 76, g_entry, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, g_entry, 0 );
setEffRotateKey( spep_6 + 76, g_entry, 0 );
setEffAlphaKey( spep_6 + 0, g_entry, 255 );
setEffAlphaKey( spep_6 + 76, g_entry, 255 );

-- ** 音 ** --
--画面遷移
SE042 = playSe( spep_6 + 3, 1072 );
setStartTimeMs( SE042,  300 );

--ゴジータ変身決め1
SE043 = playSe( spep_6 + 13, 1024 );
setSeVolumeByWorkId( spep_6 + 13, SE043, 114 );

--ゴジータ変身決め2
SE044 = playSe( spep_6 + 13, 1067 );
setSeVolumeByWorkId( spep_6 + 13, SE044, 55 );

--オーラ1
SE045 = playSe( spep_6 + 13, 1036 );
setSeVolumeByWorkId( spep_6 + 13, SE045, 58 );

--オーラ2
SE046 = playSe( spep_6 + 37, 1036 );
setSeVolumeByWorkId( spep_6 + 37, SE046, 79 );

--オーラ3
SE047 = playSe( spep_6 + 61, 1036 );
setSeVolumeByWorkId( spep_6 + 61, SE047, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 76;


------------------------------------------------------
-- パイクーハン合流(40F)
------------------------------------------------------
-- ** エフェクト等 ** --
join = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --パイクーハン合流(ef_010)
setEffMoveKey( spep_7 + 0, join, 0, 0 , 0 );
setEffMoveKey( spep_7 + 40, join, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, join, -1.0, 1.0 );
setEffScaleKey( spep_7 + 40, join, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, join, 0 );
setEffRotateKey( spep_7 + 40, join, 0 );
setEffAlphaKey( spep_7 + 0, join, 255 );
setEffAlphaKey( spep_7 + 40, join, 255 );

-- ** 音 ** --
--オーラ4
SE048 = playSe( spep_7 + 0, 1036 );
setSeVolumeByWorkId( spep_7 + 0, SE048, 79 );

--パイクーハンかけよる
SE049 = playSe( spep_7 + 0, 1116 );
stopSe( spep_7 + 24, SE049, 22 );

--オーラ5
SE050 = playSe( spep_7 + 24, 1036 );
setSeVolumeByWorkId( spep_7 + 24, SE050, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 33, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 40;


------------------------------------------------------
-- ツーショット(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
twoshot = entryEffect( spep_8 + 0, SP_11r, 0x100, -1, 0, 0, 0 );  --ツーショット(ef_011)
setEffMoveKey( spep_8 + 0, twoshot, 0, 0 , 0 );
setEffMoveKey( spep_8 + 96, twoshot, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, twoshot, -1.0, 1.0 );
setEffScaleKey( spep_8 + 96, twoshot, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, twoshot, 0 );
setEffRotateKey( spep_8 + 96, twoshot, 0 );
setEffAlphaKey( spep_8 + 0, twoshot, 255 );
setEffAlphaKey( spep_8 + 96, twoshot, 255 );

-- ** 音 ** --
--環境音
SE051 = playSe( spep_8 + 0, 1175 );
setSeVolumeByWorkId( spep_8 + 0, SE051, 32 );
stopSe( spep_8 +96 + 8, SE051, 46 );

--オーラ6
SE052 = playSe( spep_8 + 8, 1036 );
setSeVolumeByWorkId( spep_8 + 8, SE052, 79 );

--オーラ7
SE053 = playSe( spep_8 + 32, 1036 );
setSeVolumeByWorkId( spep_8 + 32, SE053, 79 );

--オーラ8
SE054 = playSe( spep_8 + 56, 1036 );
setSeVolumeByWorkId( spep_8 + 56, SE054, 63 );

--オーラ9
SE055 = playSe( spep_8 + 80, 1036 );
setSeVolumeByWorkId( spep_8 + 80, SE055, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 98, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_8 + 88, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 96;


------------------------------------------------------
-- ソウルパニッシャー玉(110F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --ソウルパニッシャー玉(ef_012)
setEffMoveKey( spep_9 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_9 + 110, tame, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_9 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 110, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 110, tame, 255 );

-- ** 音 ** --
--虹色気弾中
SE056 = playSe( spep_9 + 0, 1295 );
setSeVolumeByWorkId( spep_9 + 0, SE056, 150 );
stopSe( spep_9 +110 + 12, SE056, 36 );

--オーラ10
SE057 = playSe( spep_9 + 2, 1036 );
setSeVolumeByWorkId( spep_9 + 2, SE057, 25 );

--オーラ11
SE058 = playSe( spep_9 + 26, 1036 );
setSeVolumeByWorkId( spep_9 + 26, SE058, 13 );

--気弾光奥へ
SE059 = playSe( spep_9 + 42, 1289,"",0.6 );

--気弾溢れる
SE060 = playSe( spep_9 + 98, 1290,"",0.6 );

--気弾を掴む1
SE061 = playSe( spep_9 + 92, 1251 );
setSeVolumeByWorkId( spep_9 + 92, SE061, 72 );
stopSe( spep_9 +95 + 11, SE061, 16 );
setPitch( spep_9 + 92, SE061, -1000 );
setTimeStretch( SE061, 0.33, 10, 1 );

--気弾を掴む2
SE062 = playSe( spep_9 + 92, 1178 );
setSeVolumeByWorkId( spep_9 + 92, SE062, 58 );

--気弾を掴む3
SE063 = playSe( spep_9 + 94, 1246 );
setSeVolumeByWorkId( spep_9 + 94, SE063, 112 );
stopSe( spep_9 +95 + 11, SE063, 6 );
setPitch( spep_9 + 94, SE063, -200 );
setTimeStretch( SE063, 0.87, 10, 1 );

--気弾を掴む4
SE064 = playSe( spep_9 +95 + 1, 1032 );
setSeVolumeByWorkId( spep_9 +95 + 1, SE064, 7 );
setSeVolumeByWorkId( spep_9 +95 + 3, SE064, 14 );
setSeVolumeByWorkId( spep_9 +95 + 5, SE064, 21 );
setSeVolumeByWorkId( spep_9 +95 + 7, SE064, 28 );
setSeVolumeByWorkId( spep_9 +95 + 9, SE064, 35 );
setSeVolumeByWorkId( spep_9 +95 + 11, SE064, 45 );
setPitch( spep_9 +95 + 1, SE064, 400 );
setTimeStretch( SE064, 1.27, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 112, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 104, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 110;


------------------------------------------------------
-- ２人が気弾を投げる(160F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --２人が気弾を投げる(ef_013)
setEffMoveKey( spep_10 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_10 + 160, kidan, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_10 + 160, kidan, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kidan, 0 );
setEffRotateKey( spep_10 + 160, kidan, 0 );
setEffAlphaKey( spep_10 + 0, kidan, 255 );
setEffAlphaKey( spep_10 + 160, kidan, 255 );

-- ** 音 ** --
--ゴジータ気弾投げる1
SE065 = playSe( spep_10 + 14, 1027 );
setSeVolumeByWorkId( spep_10 + 14, SE065, 54 );

--ゴジータ気弾投げる2
SE066 = playSe( spep_10 + 14, 1117 );
setSeVolumeByWorkId( spep_10 + 14, SE066, 112 );
stopSe( spep_10 + 42, SE066, 46 );

--ゴジータ気弾投げる3
SE067 = playSe( spep_10 + 16, 8 );
setSeVolumeByWorkId( spep_10 + 16, SE067, 65 );

--パイクーハンアップ
SE068 = playSe( spep_10 + 80, 1232 );

--パイクーハン回転
SE069 = playSe( spep_10 + 102, 1116 );
stopSe( spep_10 + 136, SE069, 24 );

--パイクーハン気弾投げる1
SE070 = playSe( spep_10 + 138, 1003 );

--パイクーハン気弾投げる2
SE071 = playSe( spep_10 + 140, 1027 );

--パイクーハン気弾投げる3
SE072 = playSe( spep_10 + 140, 1145 );
setSeVolumeByWorkId( spep_10 + 140, SE072, 36 );
setPitch( spep_10 + 140, SE072, 600 );
setTimeStretch( SE072, 1.4, 10, 1 );

--パイクーハン気弾投げる4
SE073 = playSe( spep_10 + 140, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 162, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 160;


------------------------------------------------------
-- フィニッシュ(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_014)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 176, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 176, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 176, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背景(ef_015)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_11 + 176, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 176, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 176, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 51, 1, 0 );
changeAnime( spep_11 + 0, 1, 105 );

setMoveKey( spep_11 + 0, 1, 0, -61 , 0 );
setMoveKey( spep_11 -3 + 54, 1, 0, -61 , 0 );

setScaleKey( spep_11 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_11 + 1, 1, 0.83, 0.83 );
setScaleKey( spep_11 -3 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_11 -3 + 8, 1, 0.82, 0.82 );
setScaleKey( spep_11 -3 + 10, 1, 0.82, 0.82 );
setScaleKey( spep_11 -3 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_11 -3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_11 -3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_11 -3 + 18, 1, 0.8, 0.8 );
setScaleKey( spep_11 -3 + 20, 1, 0.78, 0.78 );
setScaleKey( spep_11 -3 + 22, 1, 0.77, 0.77 );
setScaleKey( spep_11 -3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_11 -3 + 26, 1, 0.74, 0.74 );
setScaleKey( spep_11 -3 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_11 -3 + 30, 1, 0.71, 0.71 );
setScaleKey( spep_11 -3 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_11 -3 + 34, 1, 0.68, 0.68 );
setScaleKey( spep_11 -3 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_11 -3 + 38, 1, 0.65, 0.65 );
setScaleKey( spep_11 -3 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_11 -3 + 42, 1, 0.62, 0.62 );
setScaleKey( spep_11 -3 + 44, 1, 0.6, 0.6 );
setScaleKey( spep_11 -3 + 46, 1, 0.59, 0.59 );
setScaleKey( spep_11 -3 + 48, 1, 0.57, 0.57 );
setScaleKey( spep_11 -3 + 50, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 52, 1, 0.54, 0.54 );
setScaleKey( spep_11 -3 + 53, 1, 0.54, 0.54 );
setScaleKey( spep_11 -3 + 54, 1, 0.54, 0.54 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 -3 + 54, 1, 0 );


-- ** 音 ** --
--気弾飛んでいく1
SE074 = playSe( spep_11 + 3, 1272 );
setSeVolumeByWorkId( spep_11 + 3, SE074, 58 );

--気弾飛んでいく2
SE075 = playSe( spep_11 + 3, 1277 );
setSeVolumeByWorkId( spep_11 + 3, SE075, 129 );

--爆発1
SE076 = playSe( spep_11 + 57, 1067 );
setSeVolumeByWorkId( spep_11 + 57, SE076, 126 );

--爆発2
SE077 = playSe( spep_11 + 61, 1024 );
setSeVolumeByWorkId( spep_11 + 61, SE077, 89 );

--爆発3
SE078 = playSe( spep_11 + 63, 1159 );
setSeVolumeByWorkId( spep_11 + 63, SE078, 68 );

--爆発4
SE079 = playSe( spep_11 + 69, 1156 );
setSeVolumeByWorkId( spep_11 + 69, SE079, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 178, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_11 + 154, 22, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 66 );
endPhase( spep_11 + 166 );

end