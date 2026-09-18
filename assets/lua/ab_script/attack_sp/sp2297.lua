--1023190:暗黒王メチカブラ(時の力解放)_ダークネスエグゼキューション
--sp_effect_a2_00171
--sp2297

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
SP_01 = 158592; --気を練るメチカブラ ef_001
SP_02 = 158594; --気を投げる～敵にあたる（手前） ef_002_front
SP_03 = 158595; --気を投げる～敵にあたる（奥） ef_002_back
SP_04 = 158598; --爆発～フィニッシュ ef_003

--敵側
SP_01r = 158593; --気を練るメチカブラ ef_001_r
SP_02r = 158596; --気を投げる～敵にあたる（手前）敵側 ef_002_r_front
SP_03r = 158597; --気を投げる～敵にあたる（奥）敵側 ef_002_r_back
SP_04r = 158599; --爆発～フィニッシュ　敵側 ef_003_r

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
-- 気を練るメチカブラ(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 145, 0x100, -1, 0, 0, 0 );  --気を練るメチカブラ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 145, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 145, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 145, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 145 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 145, first_f, 0 );

spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--気弾発生
SE001 = playSeVer2( spep_0 + 0, 1271, "",spep_0 +146 + 14 -1, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 4, 1295, "",spep_0 +146 + 14 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 120 );
setPitch( spep_0 + 4, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 4, 1240, "",spep_0 + 90, 0, 16, -1);

--腕あげる
SE002 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);

--腕まわす
SE005 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 65 );

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE006 = playSeVer2( spep_0 + 56, 1275, "",spep_0 +142 + 14 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 79 );
setPitch( spep_0 + 56, SE006, -700 );
setTimeStretch( SE006, 0.53, 30, 4 );
SE008 = playSeVer2( spep_0 + 70, 1200, "",spep_0 +142 + 14 -1, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 70, 1046, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE009, 65 );
SE010 = playSeVer2( spep_0 + 70, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE010, 182 );
setPitch( spep_0 + 70, SE010, -100 );
setTimeStretch( SE010, 0.93, 30, 4 );
SE011 = playSeVer2( spep_0 + 76, 1325, "",spep_0 +142 + 14 -1, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 145;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
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

--発射前溜め
SE013 = playSeVer2( spep_1 + 74, 1275, "",spep_1 +94 + 30, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 74, SE013, 214 );
setPitch( spep_1 + 74, SE013, -700 );
setTimeStretch( SE013, 0.53, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気を投げる～敵にあたる(218F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_02, 218, 0x100, -1, 0, 0, 0 );  --気を投げる～敵にあたる（手前） ef_002_front
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 218, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 218, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 218, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 218 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 218, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_03, 218, 0x80, -1, 0, 0, 0 );  --気を投げる～敵にあたる（奥） ef_002_back
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 218, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 218, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 218, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 218 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 218, attack_b, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE016, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 52, 1, 1 );
setDisp( spep_2 -3 + 82, 1, 0 );
changeAnime( spep_2 -3 + 52, 1, 100 );
changeAnime( spep_2 -3 + 64, 1, 104 );

setMoveKey( spep_2 -3 + 52, 1, 200.3, -9.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 176.2, -13.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 152.1, -18.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 128, -22.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 126.5, -23.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 125.2, -23.4 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 125.2, -23.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 143.6, -18.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 142.5, -18.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 141.3, -18.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 140.1, -19 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 138.9, -19.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 137.7, -19.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 136.5, -19.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 135.3, -19.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 134.2, -20.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 134.2, -20.1 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 54, 1, 1.2665, 1.2665 );
setScaleKey( spep_2 -3 + 56, 1, 1.6915, 1.6915 );
setScaleKey( spep_2 -3 + 58, 1, 2.108, 2.108 );
setScaleKey( spep_2 -3 + 60, 1, 2.1335, 2.1335 );
setScaleKey( spep_2 -3 + 62, 1, 2.159, 2.159 );
setScaleKey( spep_2 -3 + 63, 1, 2.159, 2.159 );
setScaleKey( spep_2 -3 + 64, 1, 2.1845, 2.1845 );
setScaleKey( spep_2 -3 + 66, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 68, 1, 2.2355, 2.2355 );
setScaleKey( spep_2 -3 + 70, 1, 2.261, 2.261 );
setScaleKey( spep_2 -3 + 72, 1, 2.278, 2.278 );
setScaleKey( spep_2 -3 + 74, 1, 2.3035, 2.3035 );
setScaleKey( spep_2 -3 + 76, 1, 2.329, 2.329 );
setScaleKey( spep_2 -3 + 78, 1, 2.3545, 2.3545 );
setScaleKey( spep_2 -3 + 80, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 82, 1, 2.38, 2.38 );

setRotateKey( spep_2 -3 + 52, 1, 0 );
setRotateKey( spep_2 -3 + 82, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 112, 1, 1 );
setDisp( spep_2 -3 + 174, 1, 0 );
changeAnime( spep_2 -3 + 112, 1, 104 );
changeAnime( spep_2 -3 + 126, 1, 106 );

setMoveKey( spep_2 -3 + 112, 1, 95.9, -14.3 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 95.9, -14.3 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 30.4, -9.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 41.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 25.4, -0.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 25.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 36.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 30.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 22.4, 1.7 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 36.4, -19.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 36.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 30.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 22.4, 0.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 40.4, -21.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 30.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 22.4, -19.3 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 38.4, 1.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 26.4, -18.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 30.4, -0.3 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 25.4, -9.3 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 41.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 25.4, -0.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 25.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 36.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 30.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 22.4, 1.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 22.4, 1.7 , 0 );

setScaleKey( spep_2 -3 + 112, 1, 2, 2 );
setScaleKey( spep_2 -3 + 174, 1, 2, 2 );

setRotateKey( spep_2 -3 + 112, 1, 0 );
setRotateKey( spep_2 -3 + 125, 1, 0 );
setRotateKey( spep_2 -3 + 126, 1, -43.9 );
setRotateKey( spep_2 -3 + 174, 1, -43.9 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 18, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 18, 1193, "",spep_2 + 156, 0, 64, -1);
SE016 = playSeVer2( spep_2 + 18, 1178, "", 0, 0, 0, -1);

--腕前に出す
SE017 = playSeVer2( spep_2 + 86, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE017, 150 );
SE019 = playSeVer2( spep_2 + 86, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE019, 79 );

--気弾敵ヒット
SE018 = playSeVer2( spep_2 + 110, 1296, "",spep_2 +218 + 38, 6, 4, -1);
setSeVolumeByWorkId( spep_2 + 110, SE018, 20 );
setStartTimeMs( SE018,  367 );
setPitch( spep_2 + 110, SE018, 500 );
setTimeStretch( SE018, 1.33, 30, 4 );
SE020 = playSeVer2( spep_2 + 112, 1214, "",spep_2 +218 + 38, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 112, SE020, 279 );
SE021 = playSeVer2( spep_2 + 112, 1026, "", 0, 0, 0, -1);

--気湧き上がる
SE022 = playSeVer2( spep_2 + 136, 1278, "",spep_2 +218 + 88, 80, 24, 0.5);
setSeVolumeByWorkId( spep_2 + 136, SE022, 68 );

--拳握る
SE023 = playSeVer2( spep_2 + 178, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 178, SE023, -300 );
setTimeStretch( SE023, 0.8, 30, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 218;


------------------------------------------------------
-- 爆発～フィニッシュ(200F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish = entryEffectLife( spep_3 + 0, SP_04, 200, 0x100, -1, 0, 0, 0 );  --爆発～フィニッシュ ef_003
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 200, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 200 -1, finish, 255 );
setEffAlphaKey( spep_3 + 200, finish, 0 );

-- ** 音 ** --
--次元開く
SE024 = playSeVer2( spep_3 + 22, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE024, 51 );
SE025 = playSeVer2( spep_3 + 30, 1153, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 30, SE025, 62 );
SE026 = playSeVer2( spep_3 + 30, 1193, "",spep_3 + 84, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 30, SE026, 157 );
setPitch( spep_3 + 30, SE026, -500 );
setTimeStretch( SE026, 0.67, 30, 4 );

--爆発
SE027 = playSeVer2( spep_3 + 80, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE027, 78 );
SE028 = playSeVer2( spep_3 + 80, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 80 );
endPhase( spep_3 + 190 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気を練るメチカブラ(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 145, 0x100, -1, 0, 0, 0 );  --気を練るメチカブラ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 145, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 145, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 145, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 145 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 145, first_f, 0 );

spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--気弾発生
SE001 = playSeVer2( spep_0 + 0, 1271, "",spep_0 +146 + 14 -1, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 4, 1295, "",spep_0 +146 + 14 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 120 );
setPitch( spep_0 + 4, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 4, 1240, "",spep_0 + 90, 0, 16, -1);

--腕あげる
SE002 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);

--腕まわす
SE005 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 65 );

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE006 = playSeVer2( spep_0 + 56, 1275, "",spep_0 +142 + 14 -1, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 79 );
setPitch( spep_0 + 56, SE006, -700 );
setTimeStretch( SE006, 0.53, 30, 4 );
SE008 = playSeVer2( spep_0 + 70, 1200, "",spep_0 +142 + 14 -1, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 70, 1046, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE009, 65 );
SE010 = playSeVer2( spep_0 + 70, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE010, 182 );
setPitch( spep_0 + 70, SE010, -100 );
setTimeStretch( SE010, 0.93, 30, 4 );
SE011 = playSeVer2( spep_0 + 76, 1325, "",spep_0 +142 + 14 -1, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 145;


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
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

--発射前溜め
SE013 = playSeVer2( spep_1 + 74, 1275, "",spep_1 +94 + 30, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 74, SE013, 214 );
setPitch( spep_1 + 74, SE013, -700 );
setTimeStretch( SE013, 0.53, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気を投げる～敵にあたる(218F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_02r, 218, 0x100, -1, 0, 0, 0 );  --気を投げる～敵にあたる（手前） ef_002_front
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 218, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 218, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 218, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 218 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 218, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_03r, 218, 0x80, -1, 0, 0, 0 );  --気を投げる～敵にあたる（奥） ef_002_back
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 218, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 218, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 218, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 218 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 218, attack_b, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE016, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 52, 1, 1 );
setDisp( spep_2 -3 + 82, 1, 0 );
changeAnime( spep_2 -3 + 52, 1, 100 );
changeAnime( spep_2 -3 + 64, 1, 104 );

setMoveKey( spep_2 -3 + 52, 1, 200.3, -9.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 176.2, -13.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 152.1, -18.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 128, -22.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 126.5, -23.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 125.2, -23.4 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 125.2, -23.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 143.6, -18.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 142.5, -18.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 141.3, -18.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 140.1, -19 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 138.9, -19.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 137.7, -19.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 136.5, -19.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 135.3, -19.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 134.2, -20.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 134.2, -20.1 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 54, 1, 1.2665, 1.2665 );
setScaleKey( spep_2 -3 + 56, 1, 1.6915, 1.6915 );
setScaleKey( spep_2 -3 + 58, 1, 2.108, 2.108 );
setScaleKey( spep_2 -3 + 60, 1, 2.1335, 2.1335 );
setScaleKey( spep_2 -3 + 62, 1, 2.159, 2.159 );
setScaleKey( spep_2 -3 + 63, 1, 2.159, 2.159 );
setScaleKey( spep_2 -3 + 64, 1, 2.1845, 2.1845 );
setScaleKey( spep_2 -3 + 66, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 68, 1, 2.2355, 2.2355 );
setScaleKey( spep_2 -3 + 70, 1, 2.261, 2.261 );
setScaleKey( spep_2 -3 + 72, 1, 2.278, 2.278 );
setScaleKey( spep_2 -3 + 74, 1, 2.3035, 2.3035 );
setScaleKey( spep_2 -3 + 76, 1, 2.329, 2.329 );
setScaleKey( spep_2 -3 + 78, 1, 2.3545, 2.3545 );
setScaleKey( spep_2 -3 + 80, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 82, 1, 2.38, 2.38 );

setRotateKey( spep_2 -3 + 52, 1, 0 );
setRotateKey( spep_2 -3 + 82, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 112, 1, 1 );
setDisp( spep_2 -3 + 174, 1, 0 );
changeAnime( spep_2 -3 + 112, 1, 104 );
changeAnime( spep_2 -3 + 126, 1, 106 );

setMoveKey( spep_2 -3 + 112, 1, 95.9, -14.3 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 95.9, -14.3 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 30.4, -9.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 41.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 25.4, -0.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 25.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 36.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 30.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 22.4, 1.7 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 36.4, -19.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 36.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 30.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 22.4, 0.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 40.4, -21.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 30.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 22.4, -19.3 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 38.4, 1.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 26.4, -18.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 30.4, -0.3 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 25.4, -9.3 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 41.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 25.4, -0.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 25.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 36.4, -1.3 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 30.4, -16.3 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 22.4, 1.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 22.4, 1.7 , 0 );

setScaleKey( spep_2 -3 + 112, 1, 2, 2 );
setScaleKey( spep_2 -3 + 174, 1, 2, 2 );

setRotateKey( spep_2 -3 + 112, 1, 0 );
setRotateKey( spep_2 -3 + 125, 1, 0 );
setRotateKey( spep_2 -3 + 126, 1, -43.9 );
setRotateKey( spep_2 -3 + 174, 1, -43.9 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 18, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 18, 1193, "",spep_2 + 156, 0, 64, -1);
SE016 = playSeVer2( spep_2 + 18, 1178, "", 0, 0, 0, -1);

--腕前に出す
SE017 = playSeVer2( spep_2 + 86, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE017, 150 );
SE019 = playSeVer2( spep_2 + 86, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE019, 79 );

--気弾敵ヒット
SE018 = playSeVer2( spep_2 + 110, 1296, "",spep_2 +218 + 38, 6, 4, -1);
setSeVolumeByWorkId( spep_2 + 110, SE018, 20 );
setStartTimeMs( SE018,  367 );
setPitch( spep_2 + 110, SE018, 500 );
setTimeStretch( SE018, 1.33, 30, 4 );
SE020 = playSeVer2( spep_2 + 112, 1214, "",spep_2 +218 + 38, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 112, SE020, 279 );
SE021 = playSeVer2( spep_2 + 112, 1026, "", 0, 0, 0, -1);

--気湧き上がる
SE022 = playSeVer2( spep_2 + 136, 1278, "",spep_2 +218 + 88, 80, 24, 0.5);
setSeVolumeByWorkId( spep_2 + 136, SE022, 68 );

--拳握る
SE023 = playSeVer2( spep_2 + 178, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 178, SE023, -300 );
setTimeStretch( SE023, 0.8, 30, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 218;


------------------------------------------------------
-- 爆発～フィニッシュ(200F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish = entryEffectLife( spep_3 + 0, SP_04r, 200, 0x100, -1, 0, 0, 0 );  --爆発～フィニッシュ ef_003
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 200, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 200 -1, finish, 255 );
setEffAlphaKey( spep_3 + 200, finish, 0 );

-- ** 音 ** --
--次元開く
SE024 = playSeVer2( spep_3 + 22, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE024, 51 );
SE025 = playSeVer2( spep_3 + 30, 1153, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 30, SE025, 62 );
SE026 = playSeVer2( spep_3 + 30, 1193, "",spep_3 + 84, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 30, SE026, 157 );
setPitch( spep_3 + 30, SE026, -500 );
setTimeStretch( SE026, 0.67, 30, 4 );

--爆発
SE027 = playSeVer2( spep_3 + 80, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE027, 78 );
SE028 = playSeVer2( spep_3 + 80, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 80 );
endPhase( spep_3 + 190 );

end