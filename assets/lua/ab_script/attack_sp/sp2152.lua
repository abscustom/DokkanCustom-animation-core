--1021480:人造人間17号(第7宇宙チーム)_アクセルドライブ
--sp_effect_a1_00278
--sp2152

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
SP_01 = 156879;  --開幕  ef_001
SP_02 = 156880;  --走る  ef_002
SP_03 = 156882;  --キック　前面  ef_003
SP_04 = 156884;  --キック　後面  ef_004
SP_05 = 156885;  --ジグザグ迫り  ef_005
SP_06 = 156886;  --回し蹴り　前面 ef_006
SP_07 = 156888;  --回し蹴り　後面 ef_007
SP_08 = 156889;  --踏み潰し　前面 ef_008
SP_09 = 156891;  --踏み潰し　背面 ef_009
SP_10 = 156892;  --気溜め ef_010
SP_11 = 156894;  --発射  ef_011
SP_12 = 156896;  --フィニッシュ　前面   ef_012
SP_13 = 156897;  --フィニッシュ　後面   ef_013

--敵側
SP_02r = 156881;  --走る　敵側   ef_002e
SP_03r = 156883;  --キック　前面　敵側   ef_003e
SP_07r = 156887;  --回し蹴り　前面　敵側  ef_006e
SP_08r = 156890;  --踏み潰し　前　敵側   ef_008e
SP_10r = 156893;  --気溜め　敵側  ef_010e
SP_11r = 156895;  --発射　敵側   ef_011e

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
-- 開幕(106F)
------------------------------------------------------
spep_0 = 0;

first_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --開幕  ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 106, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 106, first_b, 255 );

spep_x = spep_0 + 4;

-- ** セリフカットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 89, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 89, shuchusen, 16, 20 );
setEffMoveKey( spep_0 + 89, shuchusen, 30, -800 , 0 );
setEffMoveKey( spep_0 + 105, shuchusen, 30, -800 , 0 );
setEffScaleKey( spep_0 +89, shuchusen, 1.5, 3.8 );
setEffScaleKey( spep_0 + 105, shuchusen, 1.5, 3.8 );
setEffRotateKey( spep_0 + 89, shuchusen, 0 );
setEffRotateKey( spep_0 + 105, shuchusen, 0 );
setEffAlphaKey( spep_0 + 89, shuchusen, 255 );
setEffAlphaKey( spep_0 + 105, shuchusen, 255 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 16, 1018 );

--瞬間移動
SE002 = playSe( spep_0 + 90, 1232 );
setSeVolumeByWorkId( spep_0 + 90, SE002, 53 );
stopSe( spep_0 +106 + 10, SE002, 0 );

--瞬間移動
SE003 = playSe( spep_0 + 90, 1109 );
stopSe( spep_0 +106 + 10, SE003, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;


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
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
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
--playSe( spep_1 + 0, SE_05 );

--環境音
SE005 = playSe( spep_1 + 90, 1278 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 90, SE005, 23 );
setSeVolumeByWorkId( spep_1 + 92, SE005, 46 );
setSeVolumeByWorkId( spep_1 + 94, SE005, 67 );
stopSe( spep_1 +94 + 56, SE005, 34 );
setStartTimeMs( SE005,  1183 );

--ダッシュ
SE006 = playSe( spep_1 + 92, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 92, SE006, 119 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 走る(76F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
run = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --走る  ef_002
setEffMoveKey( spep_2 + 0, run, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, run, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, run, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, run, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, run, 0 );
setEffRotateKey( spep_2 + 76, run, 0 );
setEffAlphaKey( spep_2 + 0, run, 255 );
setEffAlphaKey( spep_2 + 76, run, 255 );

-- ** 音 ** --
SE007 = playSe( spep_2 + 4, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 4, SE007, 90 );
stopSe(spep_2 + 8 +4,SE007,0);

--ダッシュ
SE008 = playSe( spep_2 + 10, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 10, SE008, 122 );
stopSe(spep_2 + 8 +10,SE008,0);

--ダッシュ
SE009 = playSe( spep_2 + 14, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 14, SE009, 115 );
stopSe(spep_2 + 8 +14,SE009,0);

--ダッシュ
SE010 = playSe( spep_2 + 20, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 20, SE010, 108 );
stopSe(spep_2 + 8 +20,SE010,0);

--ダッシュ
SE011 = playSe( spep_2 + 24, 1108 ,"",0.5);
stopSe(spep_2 + 8 +24,SE011,0);

--ダッシュ
SE012 = playSe( spep_2 + 30, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 30, SE012, 132 );
stopSe(spep_2 + 8 +30,SE012,0);

--ダッシュ
SE013 = playSe( spep_2 + 34, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 34, SE013, 117 );
stopSe(spep_2 + 8 +34,SE013,0);

--ダッシュ
SE014 = playSe( spep_2 + 40, 1108 ,"",0.5);
stopSe(spep_2 + 8 +40,SE014,0);

--ダッシュ
SE015 = playSe( spep_2 + 46, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 46, SE015, 122 );
stopSe(spep_2 + 8 +46,SE015,0);

--ダッシュ
SE016 = playSe( spep_2 + 50, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 50, SE016, 133 );
stopSe(spep_2 + 8 +50,SE016,0);

--ダッシュ
SE017 = playSe( spep_2 + 54, 1108 ,"",0.5);
stopSe(spep_2 + 8 +54,SE017,0);

--ダッシュ
SE018 = playSe( spep_2 + 58, 1108 ,"",0.5);
stopSe(spep_2 + 8 +58,SE018,0);

--17号ジャンプ
SE019 = playSe( spep_2 + 62, 1117 );
stopSe( spep_2 +76 + 0, SE019, 14 );

--瞬間移動
SE020 = playSe( spep_2 + 62, 1109 );
stopSe( spep_2 +76 + 18, SE020, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


------------------------------------------------------
-- キック(70F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --キック　前面  ef_003
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 70, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 70, kick_f, 255 );

kick_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --キック　後面  ef_004
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 70, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 70, kick_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 97.5, 49.9 , 0 );

s1=0.2;
setScaleKey( spep_3 + 0, 1, 1 +s1, 1 +s1 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 97.5, 49.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 97.5, 49.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1 +s1, 1 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1 +s1, 1 +s1 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 61, 1, 0 );
changeAnime( spep_3 -3 + 22, 1, 108 );
changeAnime( spep_3 -3 + 36, 1, 106 );

setMoveKey( spep_3 -3 + 21, 1, 97.5, 49.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 89.5, 57.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 89.5, 57.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 94.5, 62.9 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 84, 52.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 94.5, 52.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 84, 62.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 94.5, 62.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 84, 52.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 94.5, 52.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 145, 94.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 205.5, 125.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 266, 156.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 326.5, 187.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 387, 219.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 447.5, 250.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 508, 281.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 568.5, 312.9 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 568.5, 312.9 , 0 );

s2=0.15;
setScaleKey( spep_3 -3 + 21, 1, 1 +s1, 1 +s1 );
setScaleKey( spep_3 -3 + 22, 1, 1 +s1, 1 +s1 );
setScaleKey( spep_3 -3 + 32, 1, 1 +s1, 1 +s1 );
setScaleKey( spep_3 -3 + 35, 1, 1.05 +s1, 1.05 +s1 );

setScaleKey( spep_3 -3 + 36, 1, 1 +s2, 1 +s2 );
setScaleKey( spep_3 -3 + 38, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_3 -3 + 40, 1, 1 +s2, 1 +s2 );
setScaleKey( spep_3 -3 + 42, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_3 -3 + 44, 1, 1 +s2, 1 +s2 );
setScaleKey( spep_3 -3 + 61, 1, 1 +s2, 1 +s2 );

setRotateKey( spep_3 -3 + 21, 1, 0 );
setRotateKey( spep_3 -3 + 22, 1, -22.7 );
setRotateKey( spep_3 -3 + 61, 1, -22.7 );

-- ** 音 ** --
--瞬間移動
SE021 = playSe( spep_3 + 14, 1109 );
stopSe( spep_3 + 40, SE021, 0 );

--キック
SE022 = playSe( spep_3 + 32, 1189 );

--キック
SE023 = playSe( spep_3 + 38, 1010 );
setSeVolumeByWorkId( spep_3 + 38, SE023, 86 );

--キック
SE024 = playSe( spep_3 + 38, 1001 );
setSeVolumeByWorkId( spep_3 + 38, SE024, 49 );

--キック
SE025 = playSe( spep_3 + 40, 1110 );

--瞬間移動
SE026 = playSe( spep_3 + 60, 1109 );

--岩間移動１
SE027 = playSe( spep_3 +68, 1245 );
setSeVolumeByWorkId( spep_3 + 68, SE027, 33 );
stopSe( spep_3 +70 + 10, SE027, 18 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;


------------------------------------------------------
-- ジグザグ迫り(96F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_4 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --ジグザグ迫り  ef_005
setEffMoveKey( spep_4 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, move_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, move_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move_f, 0 );
setEffRotateKey( spep_4 + 96, move_f, 0 );
setEffAlphaKey( spep_4 + 0, move_f, 255 );
setEffAlphaKey( spep_4 + 96 -1, move_f, 255 );
setEffAlphaKey( spep_4 + 96, move_f, 0 );

-- ** 音 ** --
--岩間移動１
SE028 = playSe( spep_4 + 0, 1207 );
setSeVolumeByWorkId( spep_4 + 0, SE028, 38 );
stopSe( spep_4 + 14, SE028, 8 );

--岩間移動１
SE029 = playSe( spep_4 + 0, 1046 );
setSeVolumeByWorkId( spep_4 + 0, SE029, 48 );
stopSe( spep_4 + 14, SE029, 10 );

--岩間移動１
SE030 = playSe( spep_4 + 0, 1287 );
setSeVolumeByWorkId( spep_4 + 0, SE030, 153 );
stopSe( spep_4 + 18, SE030, 6 );

--岩間移動２
SE031 = playSe( spep_4 + 18, 1245 );
setSeVolumeByWorkId( spep_4 + 18, SE031, 48 );
stopSe( spep_4 + 34, SE031, 14 );

--岩間移動２
SE032 = playSe( spep_4 + 20, 1207 );
setSeVolumeByWorkId( spep_4 + 20, SE032, 40 );
stopSe( spep_4 + 34, SE032, 16 );

--岩間移動２
SE033 = playSe( spep_4 + 20, 1046 );
setSeVolumeByWorkId( spep_4 + 20, SE033, 65 );
stopSe( spep_4 + 34, SE033, 10 );

--岩間移動２
SE034 = playSe( spep_4 + 20, 1287 );
setSeVolumeByWorkId( spep_4 + 20, SE034, 176 );
stopSe( spep_4 + 38, SE034, 6 );

--岩間移動３
SE035 = playSe( spep_4 + 34, 1245 );
setSeVolumeByWorkId( spep_4 + 34, SE035, 54 );
stopSe( spep_4 + 50, SE035, 14 );

--岩間移動３
SE036 = playSe( spep_4 + 36, 1207 );
setSeVolumeByWorkId( spep_4 + 36, SE036, 42 );
stopSe( spep_4 + 52, SE036, 14 );

--岩間移動３
SE037 = playSe( spep_4 + 36, 1046 );
setSeVolumeByWorkId( spep_4 + 36, SE037, 60 );
stopSe( spep_4 + 50, SE037, 10 );

--岩間移動３
SE038 = playSe( spep_4 + 36, 1287 );
setSeVolumeByWorkId( spep_4 + 36, SE038, 174 );
stopSe( spep_4 + 54, SE038, 6 );

--岩間移動４
SE039 = playSe( spep_4 + 52, 1245 );
setSeVolumeByWorkId( spep_4 + 52, SE039, 64 );
stopSe( spep_4 + 68, SE039, 14 );

--岩間移動４
SE040 = playSe( spep_4 + 54, 1207 );
setSeVolumeByWorkId( spep_4 + 54, SE040, 44 );
stopSe( spep_4 + 70, SE040, 14 );

--岩間移動４
SE041 = playSe( spep_4 + 54, 1046 );
setSeVolumeByWorkId( spep_4 + 54, SE041, 67 );
stopSe( spep_4 + 68, SE041, 10 );

--岩間移動４
SE042 = playSe( spep_4 + 54, 1287 );
setSeVolumeByWorkId( spep_4 + 54, SE042, 200 );
stopSe( spep_4 + 72, SE042, 6 );

--緑瞬間移動
SE043 = playSe( spep_4 + 70, 1207 );
setSeVolumeByWorkId( spep_4 + 70, SE043, 38 );
stopSe( spep_4 + 84, SE043, 32 );

--緑瞬間移動
SE044 = playSe( spep_4 + 70, 1245 );
setSeVolumeByWorkId( spep_4 + 70, SE044, 56 );

--緑瞬間移動
SE045 = playSe( spep_4 + 72, 1109 );
stopSe( spep_4 +96 + 12, SE045, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** 次の準備 ** --
spep_5 = spep_4 + 96;


------------------------------------------------------
-- 回し蹴り(56F)
------------------------------------------------------
--spep_5 = 0;
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --回し蹴り　前面 ef_006
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 56, hit_f, 0 );

hit_e = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --回し蹴り　後面 ef_007
setEffMoveKey( spep_5 + 0, hit_e, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hit_e, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_e, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_e, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_e, 0 );
setEffRotateKey( spep_5 + 56, hit_e, 0 );
setEffAlphaKey( spep_5 + 0, hit_e, 255 );
setEffAlphaKey( spep_5 + 56, hit_e, 255 );

--hit_b = entryEffect( spep_5 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --回し蹴り　前面 ef_006
--setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
--setEffMoveKey( spep_5 + 56, hit_b, 0, 0 , 0 );
--setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
--setEffScaleKey( spep_5 + 56, hit_b, 1.0, 1.0 );
--setEffRotateKey( spep_5 + 0, hit_b, 0 );
--setEffRotateKey( spep_5 + 56, hit_b, 0 );
--setEffAlphaKey( spep_5 + 0, hit_b, 0 );
--setEffAlphaKey( spep_5 + 26, hit_b, 0 );
--setEffAlphaKey( spep_5 + 27, hit_b, 255 );
--setEffAlphaKey( spep_5 + 56, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctsyun = entryEffectLife( spep_5 -3 + 6,  10011, 13, 0x100, -1, 0, 156, 362 );  --シュン

setEffMoveKey( spep_5 -3 + 6, ctsyun, 156, 362 , 0 );
setEffMoveKey( spep_5 -3 + 19, ctsyun, 156, 362 , 0 );

setEffScaleKey( spep_5 -3 + 6, ctsyun, 1, 1 );
setEffScaleKey( spep_5 -3 + 19, ctsyun, 1, 1 );

setEffRotateKey( spep_5 -3 + 6, ctsyun, 0 );
setEffRotateKey( spep_5 -3 + 19, ctsyun, 0 );

setEffAlphaKey( spep_5 -3 + 6, ctsyun, 255 );
setEffAlphaKey( spep_5 -3 + 19, ctsyun, 255 );

ctbaki = entryEffectLife( spep_5 -3 + 30,  10020, 21, 0x100, -1, 0, -88.2, 109 ); --バキッ
setEffMoveKey( spep_5 -3 + 30, ctbaki, -88.2, 109 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctbaki, -131, 306.7 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctbaki, -119, 300.7 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctbaki, -131, 307 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctbaki, -119, 301 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctbaki, -131.1, 307.3 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctbaki, -119.1, 301.3 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctbaki, -131.2, 307.6 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctbaki, -119.2, 301.7 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctbaki, -131.3, 308 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctbaki, -119.2, 301.9 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctbaki, -119.2, 301.9 , 0 );

setEffScaleKey( spep_5 -3 + 30, ctbaki, 0.53, 0.53 );
setEffScaleKey( spep_5 -3 + 32, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_5 -3 + 42, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_5 -3 + 44, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_5 -3 + 54, ctbaki, 2.12, 2.12 );

setEffRotateKey( spep_5 -3 + 30, ctbaki, -11.3 );
setEffRotateKey( spep_5 -3 + 32, ctbaki, -11.5 );
setEffRotateKey( spep_5 -3 + 54, ctbaki, -11.5 );

setEffAlphaKey( spep_5 -3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 54, ctbaki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 44, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 30, 1, 7 );

setMoveKey( spep_5 + 0, 1, -372, -255.9 , 0 );
setMoveKey( spep_5 + 1, 1, -348.2, -236.3 , 0 );
setMoveKey( spep_5 + 2, 1, -324.5, -216.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -300.8, -197.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -277.1, -177.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -253.4, -158 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -229.6, -138.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -205.9, -118.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -182.2, -99.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -158.5, -79.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -134.8, -60.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -111.1, -40.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -87.3, -21 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -63.6, -1.5 , 0 );
setMoveKey( spep_5 -3 + 29, 1, -39.9, 18.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -69.9, -60.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -88.6, -90.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -82.2, -109.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -104.9, -114.1 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -131.2, -210.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -180.5, -315.7 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -204.8, -409.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -204.8, -409.5 , 0 );

s3=0.1;
setScaleKey( spep_5 + 0, 1, 1.3 +s3, 1.3 +s3 );
setScaleKey( spep_5 -3 + 29, 1, 1.3 +s3, 1.3 +s3 );
setScaleKey( spep_5 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 32, 1, 0.858, 0.858 );
setScaleKey( spep_5 -3 + 34, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 36, 1, 1.008, 1.008 );
setScaleKey( spep_5 -3 + 38, 1, 1.392, 1.392 );
setScaleKey( spep_5 -3 + 40, 1, 1.776, 1.776 );
setScaleKey( spep_5 -3 + 42, 1, 2.154, 2.154 );
setScaleKey( spep_5 -3 + 44, 1, 2.154, 2.154 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 44, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE046 = playSe( spep_5 + 4, 1109 );

--蹴り
SE047 = playSe( spep_5 +26, 1004 );

--蹴り
SE048 = playSe( spep_5 + 32, 1110 );
setSeVolumeByWorkId( spep_5 + 32, SE048, 92 );

--蹴り
SE049 = playSe( spep_5 + 32, 1187 );
setSeVolumeByWorkId( spep_5 + 32, SE049, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 踏み潰し(106F)
------------------------------------------------------
--spep_6 = 0;
-- ** エフェクト等 ** --
tread_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --踏み潰し　前面 ef_008
setEffMoveKey( spep_6 + 0, tread_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 106, tread_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tread_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 106, tread_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tread_f, 0 );
setEffRotateKey( spep_6 + 106, tread_f, 0 );
setEffAlphaKey( spep_6 + 0, tread_f, 255 );
setEffAlphaKey( spep_6 + 106, tread_f, 255 );

tread_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --踏み潰し　背面 ef_009
setEffMoveKey( spep_6 + 0, tread_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 106, tread_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tread_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 106, tread_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tread_b, 0 );
setEffRotateKey( spep_6 + 106, tread_b, 0 );
setEffAlphaKey( spep_6 + 0, tread_b, 255 );
setEffAlphaKey( spep_6 + 106, tread_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 40, 1, 0 );
changeAnime( spep_6 + 0, 1, 7 );

a1=50;
b1=20;
setMoveKey( spep_6 + 0, 1, 77.7 -a1, -233.6 +b1 , 0 );
setMoveKey( spep_6 + 1, 1, 78.6 -a1, -238 +b1 , 0 );
setMoveKey( spep_6 + 2, 1, 75.4 -a1, -244.3 +b1 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 75.8 -a1, -247.4 +b1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 76.9 -a1, -252.1 +b1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 73.1 -a1, -258.8 +b1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 73.7 -a1, -261.9 +b1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 74.9 -a1, -266.9 +b1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 70.7 -a1, -274.2 +b1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 71.3 -a1, -277.3 +b1 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 72.9 -a1, -282.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 68.2 -a1, -290.4 +b1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 68.9 -a1, -293.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 70.6 -a1, -299.1 +b1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 65.3 -a1, -307.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 66.1 -a1, -310.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 68.1 -a1, -316.5 +b1 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 62.3 -a1, -325.5 +b1 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 63.4 -a1, -328.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 87.2 -a1, -290 +b1 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 87.2 -a1, -290 +b1 , 0 );

s4=0;
setScaleKey( spep_6 + 0, 1, 0.294 +s4, 0.294 +s4 );
setScaleKey( spep_6 + 1, 1, 0.324 +s4, 0.324 +s4 );
setScaleKey( spep_6 + 2, 1, 0.324 +s4, 0.324 +s4 );
setScaleKey( spep_6 -3 + 6, 1, 0.342 +s4, 0.342 +s4 );
setScaleKey( spep_6 -3 + 8, 1, 0.378 +s4, 0.378 +s4 );
setScaleKey( spep_6 -3 + 10, 1, 0.372 +s4, 0.372 +s4 );
setScaleKey( spep_6 -3 + 12, 1, 0.39 +s4, 0.39 +s4 );
setScaleKey( spep_6 -3 + 14, 1, 0.426 +s4, 0.426 +s4 );
setScaleKey( spep_6 -3 + 16, 1, 0.426 +s4, 0.426 +s4 );
setScaleKey( spep_6 -3 + 18, 1, 0.444 +s4, 0.444 +s4 );
setScaleKey( spep_6 -3 + 20, 1, 0.486 +s4, 0.486 +s4 );
setScaleKey( spep_6 -3 + 22, 1, 0.48 +s4, 0.48 +s4 );
setScaleKey( spep_6 -3 + 24, 1, 0.498 +s4, 0.498 +s4 );
setScaleKey( spep_6 -3 + 26, 1, 0.54 +s4, 0.54 +s4 );
setScaleKey( spep_6 -3 + 28, 1, 0.534 +s4, 0.534 +s4 );
setScaleKey( spep_6 -3 + 30, 1, 0.552 +s4, 0.552 +s4 );
setScaleKey( spep_6 -3 + 32, 1, 0.606 +s4, 0.606 +s4 );
setScaleKey( spep_6 -3 + 34, 1, 0.594 +s4, 0.594 +s4 );
setScaleKey( spep_6 -3 + 36, 1, 0.612 +s4, 0.612 +s4 );
setScaleKey( spep_6 -3 + 38, 1, 0.654 +s4, 0.654 +s4 );
setScaleKey( spep_6 -3 + 40, 1, 0.654 +s4, 0.654 +s4 );

setRotateKey( spep_6 + 0, 1, 1.7 );
setRotateKey( spep_6 + 1, 1, 0 );
setRotateKey( spep_6 + 2, 1, -1.5 );
setRotateKey( spep_6 -3 + 6, 1, 1.7 );
setRotateKey( spep_6 -3 + 8, 1, 0 );
setRotateKey( spep_6 -3 + 10, 1, -1.5 );
setRotateKey( spep_6 -3 + 12, 1, 1.7 );
setRotateKey( spep_6 -3 + 14, 1, 0 );
setRotateKey( spep_6 -3 + 16, 1, -1.5 );
setRotateKey( spep_6 -3 + 18, 1, 1.7 );
setRotateKey( spep_6 -3 + 20, 1, 0 );
setRotateKey( spep_6 -3 + 22, 1, -1.5 );
setRotateKey( spep_6 -3 + 24, 1, 1.7 );
setRotateKey( spep_6 -3 + 26, 1, 0 );
setRotateKey( spep_6 -3 + 28, 1, -1.5 );
setRotateKey( spep_6 -3 + 30, 1, 1.7 );
setRotateKey( spep_6 -3 + 32, 1, 0 );
setRotateKey( spep_6 -3 + 34, 1, -1.5 );
setRotateKey( spep_6 -3 + 36, 1, 1.7 );
setRotateKey( spep_6 -3 + 38, 1, 0 );
setRotateKey( spep_6 -3 + 40, 1, 0 );

-- ** 音 ** --
--敵地面ずりずり
SE050 = playSe( spep_6 + 0, 1192 );
setSeVolumeByWorkId( spep_6 + 0, SE050, 248 );

--敵地面ずりずり
SE051 = playSe( spep_6 + 0, 1168 );
stopSe( spep_6 + 50, SE051, 20 );

--踏みつけ
SE052 = playSe( spep_6 + 30, 1003 );

--踏みつけ
SE053 = playSe( spep_6 + 36, 1153 );
setSeVolumeByWorkId( spep_6 + 36, SE053, 81 );

--踏みつけ
SE054 = playSe( spep_6 + 36, 1123 );
setSeVolumeByWorkId( spep_6 + 36, SE054, 82 );

--踏みつけ
SE055 = playSe( spep_6 + 36, 1024 );
stopSe( spep_6 +106 + 0, SE055, 14 );

--くるりん
SE056 = playSe( spep_6 + 72, 1117 );
stopSe( spep_6 +106 + 8, SE056, 4 );

--画面遷移
SE057 = playSe( spep_6 + 86, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 104;


------------------------------------------------------
-- 気溜め(76F)
------------------------------------------------------
--spep_7 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --気溜め ef_010
setEffMoveKey( spep_7 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_7 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 76, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 76, tame, 255 );

-- ** 音 ** --
--気ダメ
SE058 = playSe( spep_7 + 16, 1035 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 76;


------------------------------------------------------
-- 発射(86F)
------------------------------------------------------
--spep_8 = 0;
-- ** エフェクト等 ** --
shot = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --発射  ef_011
setEffMoveKey( spep_8 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, shot, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_8 + 86, shot, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shot, 0 );
setEffRotateKey( spep_8 + 86, shot, 0 );
setEffAlphaKey( spep_8 + 0, shot, 255 );
setEffAlphaKey( spep_8 + 86, shot, 255 );

-- ** 音 ** --
--気弾発射
SE059 = playSe( spep_8 + 0, 1146 );
setSeVolumeByWorkId( spep_8 + 10, SE059, 64 );

--気弾発射
SE060 = playSe( spep_8 + 0, 1213 );
setSeVolumeByWorkId( spep_8 + 10, SE060, 58 );

--気弾発射
SE061 = playSe( spep_8 + 0, 1168 );
setSeVolumeByWorkId( spep_8 + 10, SE061, 47 );

--気弾発射
SE062 = playSe( spep_8 + 0, 1284 );
setSeVolumeByWorkId( spep_8 + 10, SE062, 62 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 84;


------------------------------------------------------
-- フィニッシュ(150F)
------------------------------------------------------
--spep_9 = 0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --フィニッシュ　前面   ef_012
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 150, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 150, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 150, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_13, 0x80, -1, 0, 0, 0 );  --フィニッシュ　後面   ef_013
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 150, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 150, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 150, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 52, 1, 0 );
changeAnime( spep_9 + 0, 1, 105 );

setBlendColor( spep_9 + 0, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_9 + 1, 1, 3, 0.11, 0.17, 0.17, 1.0 );
setBlendColor( spep_9 + 2, 1, 3, 0.13, 0.24, 0.24, 1.0 );
setBlendColor( spep_9 -3 + 6, 1, 3, 0.18, 0.3, 0.3, 1.0 );
setBlendColor( spep_9 -3 + 8, 1, 3, 0.23, 0.4, 0.4, 1.0 );
setBlendColor( spep_9 -3 + 10, 1, 3, 0.24, 0.46, 0.46, 1.0 );
setBlendColor( spep_9 -3 + 12, 1, 3, 0.3, 0.53, 0.53, 1.0 );
setBlendColor( spep_9 -3 + 14, 1, 3, 0.34, 0.59, 0.59, 1.0 );
setBlendColor( spep_9 -3 + 16, 1, 3, 0.38, 0.66, 0.66, 1.0 );
setBlendColor( spep_9 -3 + 18, 1, 3, 0.4, 0.7, 0.7, 1.0 );
setBlendColor( spep_9 -3 + 20, 1, 3, 0.45, 0.73, 0.74, 1.0 );
setBlendColor( spep_9 -3 + 22, 1, 3, 0.5, 0.77, 0.79, 1.0 );
setBlendColor( spep_9 -3 + 24, 1, 3, 0.53, 0.8, 0.82, 1.0 );
setBlendColor( spep_9 -3 + 26, 1, 3, 0.57, 0.83, 0.86, 1.0 );
setBlendColor( spep_9 -3 + 28, 1, 3, 0.6, 0.86, 0.88, 1.0 );
setBlendColor( spep_9 -3 + 30, 1, 3, 0.64, 0.89, 0.92, 1.0 );
setBlendColor( spep_9 -3 + 32, 1, 3, 0.68, 0.92, 0.95, 1.0 );
setBlendColor( spep_9 -3 + 34, 1, 3, 0.7, 0.94, 0.98, 1.0 );
setBlendColor( spep_9 -3 + 36, 1, 3, 0.76, 0.97, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 38, 1, 3, 0.79, 0.99, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 40, 1, 3, 0.83, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 42, 1, 3, 0.9, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 44, 1, 3, 0.94, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 46, 1, 3, 0.96, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 48, 1, 3, 0.98, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 50, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 51, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 52, 1, 3, 1.0, 1.0, 1.0, 0 );

setMoveKey( spep_9 + 0, 1, 158.2, 0.6 , 0 );
setMoveKey( spep_9 + 1, 1, 127.6, -15.8 , 0 );
setMoveKey( spep_9 + 2, 1, 142.7, -14.6 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 101.8, 14.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 100.3, 6.4 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 62.7, -9.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 71.2, -8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 23.7, 21.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 22.1, 13.6 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 3.7, -4.3 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 31.3, -4.3 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 2.9, 23.8 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 20.5, 13.8 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 2.1, -4.2 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 29.7, -4.1 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 1.3, 23.9 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 18.9, 13.9 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 0.5, -4 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 28.1, -4 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -0.3, 24 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 17.3, 14.1 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 8.9, 6.1 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 16.5, 6.2 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 8.1, 14.2 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 15.7, 14.2 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 7.3, 6.3 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 14.9, 6.3 , 0 );

setScaleKey( spep_9 + 0, 1, 7.99, 7.99 );
setScaleKey( spep_9 + 1, 1, 7.19, 7.19 );
setScaleKey( spep_9 + 2, 1, 6.8, 6.8 );
setScaleKey( spep_9 -3 + 6, 1, 6, 6 );
setScaleKey( spep_9 -3 + 8, 1, 4.89, 4.89 );
setScaleKey( spep_9 -3 + 10, 1, 4.06, 4.06 );
setScaleKey( spep_9 -3 + 12, 1, 2.97, 2.97 );
setScaleKey( spep_9 -3 + 14, 1, 1.92, 1.92 );
setScaleKey( spep_9 -3 + 16, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 18, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 20, 1, 0.89, 0.89 );
setScaleKey( spep_9 -3 + 22, 1, 0.9, 0.9 );
setScaleKey( spep_9 -3 + 24, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_9 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_9 -3 + 30, 1, 0.8, 0.8 );
setScaleKey( spep_9 -3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_9 -3 + 34, 1, 0.78, 0.78 );
setScaleKey( spep_9 -3 + 36, 1, 0.74, 0.74 );
setScaleKey( spep_9 -3 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_9 -3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_9 -3 + 42, 1, 0.68, 0.68 );
setScaleKey( spep_9 -3 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_9 -3 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_9 -3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_9 -3 + 50, 1, 0.58, 0.58 );
setScaleKey( spep_9 -3 + 52, 1, 0.59, 0.59 );

setRotateKey( spep_9 + 0, 1, -18.1 );
setRotateKey( spep_9 + 1, 1, -18.2 );
setRotateKey( spep_9 -3 + 52, 1, -18.2 );

-- ** 音 ** --
--敵飲み込まれる
SE063 = playSe( spep_9 + 8, 1021 );

--敵飲み込まれる
SE064 = playSe( spep_9 + 8, 1258 );
setSeVolumeByWorkId( spep_9 + 8, SE064, 63 );
setTimeStretch( SE064, 1.18, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 150 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 40 );
endPhase( spep_9 + 140 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(106F)
------------------------------------------------------
spep_0 = 0;

first_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --開幕  ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 106, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 106, first_b, 255 );

spep_x = spep_0 + 4;

-- ** セリフカットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 89, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 89, shuchusen, 16, 20 );
setEffMoveKey( spep_0 + 89, shuchusen, -30, -800 , 0 );
setEffMoveKey( spep_0 + 105, shuchusen, -30, -800 , 0 );
setEffScaleKey( spep_0 +89, shuchusen, 1.5, 3.8 );
setEffScaleKey( spep_0 + 105, shuchusen, 1.5, 3.8 );
setEffRotateKey( spep_0 + 89, shuchusen, 0 );
setEffRotateKey( spep_0 + 105, shuchusen, 0 );
setEffAlphaKey( spep_0 + 89, shuchusen, 255 );
setEffAlphaKey( spep_0 + 105, shuchusen, 255 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 16, 1018 );

--瞬間移動
SE002 = playSe( spep_0 + 90, 1232 );
setSeVolumeByWorkId( spep_0 + 90, SE002, 53 );
stopSe( spep_0 +106 + 10, SE002, 0 );

--瞬間移動
SE003 = playSe( spep_0 + 90, 1109 );
stopSe( spep_0 +106 + 10, SE003, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;


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

--環境音
SE005 = playSe( spep_1 + 90, 1278 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 90, SE005, 23 );
setSeVolumeByWorkId( spep_1 + 92, SE005, 46 );
setSeVolumeByWorkId( spep_1 + 94, SE005, 67 );
stopSe( spep_1 +94 + 56, SE005, 34 );
setStartTimeMs( SE005,  1183 );

--ダッシュ
SE006 = playSe( spep_1 + 92, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 92, SE006, 119 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 走る(76F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
run = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --走る  ef_002
setEffMoveKey( spep_2 + 0, run, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, run, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, run, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, run, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, run, 0 );
setEffRotateKey( spep_2 + 76, run, 0 );
setEffAlphaKey( spep_2 + 0, run, 255 );
setEffAlphaKey( spep_2 + 76, run, 255 );

-- ** 音 ** --
-- ** 音 ** --
SE007 = playSe( spep_2 + 4, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 4, SE007, 90 );
stopSe(spep_2 + 8 +4,SE007,0);

--ダッシュ
SE008 = playSe( spep_2 + 10, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 10, SE008, 122 );
stopSe(spep_2 + 8 +10,SE008,0);

--ダッシュ
SE009 = playSe( spep_2 + 14, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 14, SE009, 115 );
stopSe(spep_2 + 8 +14,SE009,0);

--ダッシュ
SE010 = playSe( spep_2 + 20, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 20, SE010, 108 );
stopSe(spep_2 + 8 +20,SE010,0);

--ダッシュ
SE011 = playSe( spep_2 + 24, 1108 ,"",0.5);
stopSe(spep_2 + 8 +24,SE011,0);

--ダッシュ
SE012 = playSe( spep_2 + 30, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 30, SE012, 132 );
stopSe(spep_2 + 8 +30,SE012,0);

--ダッシュ
SE013 = playSe( spep_2 + 34, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 34, SE013, 117 );
stopSe(spep_2 + 8 +34,SE013,0);

--ダッシュ
SE014 = playSe( spep_2 + 40, 1108 ,"",0.5);
stopSe(spep_2 + 8 +40,SE014,0);

--ダッシュ
SE015 = playSe( spep_2 + 46, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 46, SE015, 122 );
stopSe(spep_2 + 8 +46,SE015,0);

--ダッシュ
SE016 = playSe( spep_2 + 50, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 50, SE016, 133 );
stopSe(spep_2 + 8 +50,SE016,0);

--ダッシュ
SE017 = playSe( spep_2 + 54, 1108 ,"",0.5);
stopSe(spep_2 + 8 +54,SE017,0);

--ダッシュ
SE018 = playSe( spep_2 + 58, 1108 ,"",0.5);
stopSe(spep_2 + 8 +58,SE018,0);

--17号ジャンプ
SE019 = playSe( spep_2 + 62, 1117 );
stopSe( spep_2 +76 + 0, SE019, 14 );

--瞬間移動
SE020 = playSe( spep_2 + 62, 1109 );
stopSe( spep_2 +76 + 18, SE020, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


------------------------------------------------------
-- キック(70F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --キック　前面  ef_003
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 70, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 70, kick_f, 255 );

kick_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --キック　後面  ef_004
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 70, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 70, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 70, kick_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 97.5, 49.9 , 0 );

s1=0.2;
setScaleKey( spep_3 + 0, 1, 1 +s1, 1 +s1 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 97.5, 49.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 97.5, 49.9 , 0 );

	setScaleKey( SP_dodge + 0, 1, 1 +s1, 1 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1 +s1, 1 +s1 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 61, 1, 0 );
changeAnime( spep_3 -3 + 22, 1, 108 );
changeAnime( spep_3 -3 + 36, 1, 106 );

setMoveKey( spep_3 -3 + 21, 1, 97.5, 49.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 89.5, 57.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 89.5, 57.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 94.5, 62.9 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 84, 52.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 94.5, 52.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 84, 62.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 94.5, 62.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 84, 52.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 94.5, 52.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 145, 94.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 205.5, 125.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 266, 156.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 326.5, 187.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 387, 219.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 447.5, 250.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 508, 281.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 568.5, 312.9 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 568.5, 312.9 , 0 );

s2=0.15;
setScaleKey( spep_3 -3 + 21, 1, 1 +s1, 1 +s1 );
setScaleKey( spep_3 -3 + 22, 1, 1 +s1, 1 +s1 );
setScaleKey( spep_3 -3 + 32, 1, 1 +s1, 1 +s1 );
setScaleKey( spep_3 -3 + 35, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_3 -3 + 36, 1, 1 +s2, 1 +s2 );
setScaleKey( spep_3 -3 + 38, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_3 -3 + 40, 1, 1 +s2, 1 +s2 );
setScaleKey( spep_3 -3 + 42, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_3 -3 + 44, 1, 1 +s2, 1 +s2 );
setScaleKey( spep_3 -3 + 61, 1, 1 +s2, 1 +s2 );

setRotateKey( spep_3 -3 + 21, 1, 0 );
setRotateKey( spep_3 -3 + 22, 1, -22.7 );
setRotateKey( spep_3 -3 + 61, 1, -22.7 );

-- ** 音 ** --
--瞬間移動
SE021 = playSe( spep_3 + 14, 1109 );
stopSe( spep_3 + 40, SE021, 0 );

--キック
SE022 = playSe( spep_3 + 32, 1189 );

--キック
SE023 = playSe( spep_3 + 38, 1010 );
setSeVolumeByWorkId( spep_3 + 38, SE023, 86 );

--キック
SE024 = playSe( spep_3 + 38, 1001 );
setSeVolumeByWorkId( spep_3 + 38, SE024, 49 );

--キック
SE025 = playSe( spep_3 + 40, 1110 );

--瞬間移動
SE026 = playSe( spep_3 + 60, 1109 );

--岩間移動１
SE027 = playSe( spep_3 +68, 1245 );
setSeVolumeByWorkId( spep_3 + 68, SE027, 33 );
stopSe( spep_3 +70 + 10, SE027, 18 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 70;


------------------------------------------------------
-- ジグザグ迫り(96F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_4 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --ジグザグ迫り  ef_005
setEffMoveKey( spep_4 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, move_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, move_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move_f, 0 );
setEffRotateKey( spep_4 + 96, move_f, 0 );
setEffAlphaKey( spep_4 + 0, move_f, 255 );
setEffAlphaKey( spep_4 + 96 -1, move_f, 255 );
setEffAlphaKey( spep_4 + 96, move_f, 0 );

-- ** 音 ** --
--岩間移動１
SE028 = playSe( spep_4 + 0, 1207 );
setSeVolumeByWorkId( spep_4 + 0, SE028, 38 );
stopSe( spep_4 + 14, SE028, 8 );

--岩間移動１
SE029 = playSe( spep_4 + 0, 1046 );
setSeVolumeByWorkId( spep_4 + 0, SE029, 48 );
stopSe( spep_4 + 14, SE029, 10 );

--岩間移動１
SE030 = playSe( spep_4 + 0, 1287 );
setSeVolumeByWorkId( spep_4 + 0, SE030, 153 );
stopSe( spep_4 + 18, SE030, 6 );

--岩間移動２
SE031 = playSe( spep_4 + 18, 1245 );
setSeVolumeByWorkId( spep_4 + 18, SE031, 48 );
stopSe( spep_4 + 34, SE031, 14 );

--岩間移動２
SE032 = playSe( spep_4 + 20, 1207 );
setSeVolumeByWorkId( spep_4 + 20, SE032, 40 );
stopSe( spep_4 + 34, SE032, 16 );

--岩間移動２
SE033 = playSe( spep_4 + 20, 1046 );
setSeVolumeByWorkId( spep_4 + 20, SE033, 65 );
stopSe( spep_4 + 34, SE033, 10 );

--岩間移動２
SE034 = playSe( spep_4 + 20, 1287 );
setSeVolumeByWorkId( spep_4 + 20, SE034, 176 );
stopSe( spep_4 + 38, SE034, 6 );

--岩間移動３
SE035 = playSe( spep_4 + 34, 1245 );
setSeVolumeByWorkId( spep_4 + 34, SE035, 54 );
stopSe( spep_4 + 50, SE035, 14 );

--岩間移動３
SE036 = playSe( spep_4 + 36, 1207 );
setSeVolumeByWorkId( spep_4 + 36, SE036, 42 );
stopSe( spep_4 + 52, SE036, 14 );

--岩間移動３
SE037 = playSe( spep_4 + 36, 1046 );
setSeVolumeByWorkId( spep_4 + 36, SE037, 60 );
stopSe( spep_4 + 50, SE037, 10 );

--岩間移動３
SE038 = playSe( spep_4 + 36, 1287 );
setSeVolumeByWorkId( spep_4 + 36, SE038, 174 );
stopSe( spep_4 + 54, SE038, 6 );

--岩間移動４
SE039 = playSe( spep_4 + 52, 1245 );
setSeVolumeByWorkId( spep_4 + 52, SE039, 64 );
stopSe( spep_4 + 68, SE039, 14 );

--岩間移動４
SE040 = playSe( spep_4 + 54, 1207 );
setSeVolumeByWorkId( spep_4 + 54, SE040, 44 );
stopSe( spep_4 + 70, SE040, 14 );

--岩間移動４
SE041 = playSe( spep_4 + 54, 1046 );
setSeVolumeByWorkId( spep_4 + 54, SE041, 67 );
stopSe( spep_4 + 68, SE041, 10 );

--岩間移動４
SE042 = playSe( spep_4 + 54, 1287 );
setSeVolumeByWorkId( spep_4 + 54, SE042, 200 );
stopSe( spep_4 + 72, SE042, 6 );

--緑瞬間移動
SE043 = playSe( spep_4 + 70, 1207 );
setSeVolumeByWorkId( spep_4 + 70, SE043, 38 );
stopSe( spep_4 + 84, SE043, 32 );

--緑瞬間移動
SE044 = playSe( spep_4 + 70, 1245 );
setSeVolumeByWorkId( spep_4 + 70, SE044, 56 );

--緑瞬間移動
SE045 = playSe( spep_4 + 72, 1109 );
stopSe( spep_4 +96 + 12, SE045, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** 次の準備 ** --
spep_5 = spep_4 + 96;


------------------------------------------------------
-- 回し蹴り(56F)
------------------------------------------------------
--spep_5 = 0;
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --回し蹴り　前面 ef_006
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 56, hit_f, 0 );

hit_e = entryEffect( spep_5 + 0, SP_07r, 0x80, -1, 0, 0, 0 );  --回し蹴り　後面 ef_007
setEffMoveKey( spep_5 + 0, hit_e, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hit_e, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_e, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_e, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_e, 0 );
setEffRotateKey( spep_5 + 56, hit_e, 0 );
setEffAlphaKey( spep_5 + 0, hit_e, 255 );
setEffAlphaKey( spep_5 + 56, hit_e, 255 );

--hit_b = entryEffect( spep_5 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --回し蹴り　前面 ef_006
--setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
--setEffMoveKey( spep_5 + 56, hit_b, 0, 0 , 0 );
--setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
--setEffScaleKey( spep_5 + 56, hit_b, 1.0, 1.0 );
--setEffRotateKey( spep_5 + 0, hit_b, 0 );
--setEffRotateKey( spep_5 + 56, hit_b, 0 );
--setEffAlphaKey( spep_5 + 0, hit_b, 0 );
--setEffAlphaKey( spep_5 + 26, hit_b, 0 );
--setEffAlphaKey( spep_5 + 27, hit_b, 255 );
--setEffAlphaKey( spep_5 + 56, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctsyun = entryEffectLife( spep_5 -3 + 6,  10011, 13, 0x100, -1, 0, 156, 362 );  --シュン

setEffMoveKey( spep_5 -3 + 6, ctsyun, 156, 362 , 0 );
setEffMoveKey( spep_5 -3 + 19, ctsyun, 156, 362 , 0 );

setEffScaleKey( spep_5 -3 + 6, ctsyun, 1, 1 );
setEffScaleKey( spep_5 -3 + 19, ctsyun, 1, 1 );

setEffRotateKey( spep_5 -3 + 6, ctsyun, 0 );
setEffRotateKey( spep_5 -3 + 19, ctsyun, 0 );

setEffAlphaKey( spep_5 -3 + 6, ctsyun, 255 );
setEffAlphaKey( spep_5 -3 + 19, ctsyun, 255 );

ctbaki = entryEffectLife( spep_5 -3 + 30,  10020, 21, 0x100, -1, 0, -88.2, 109 ); --バキッ
setEffMoveKey( spep_5 -3 + 30, ctbaki, -88.2, 109 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctbaki, -131, 306.7 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctbaki, -119, 300.7 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctbaki, -131, 307 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctbaki, -119, 301 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctbaki, -131.1, 307.3 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctbaki, -119.1, 301.3 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctbaki, -131.2, 307.6 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctbaki, -119.2, 301.7 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctbaki, -131.3, 308 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctbaki, -119.2, 301.9 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctbaki, -119.2, 301.9 , 0 );

setEffScaleKey( spep_5 -3 + 30, ctbaki, 0.53, 0.53 );
setEffScaleKey( spep_5 -3 + 32, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_5 -3 + 42, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_5 -3 + 44, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_5 -3 + 54, ctbaki, 2.12, 2.12 );

setEffRotateKey( spep_5 -3 + 30, ctbaki, -11.3 );
setEffRotateKey( spep_5 -3 + 32, ctbaki, -11.5 );
setEffRotateKey( spep_5 -3 + 54, ctbaki, -11.5 );

setEffAlphaKey( spep_5 -3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_5 -3 + 54, ctbaki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 44, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 30, 1, 7 );

setMoveKey( spep_5 + 0, 1, -372, -255.9 , 0 );
setMoveKey( spep_5 + 1, 1, -348.2, -236.3 , 0 );
setMoveKey( spep_5 + 2, 1, -324.5, -216.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -300.8, -197.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -277.1, -177.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -253.4, -158 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -229.6, -138.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -205.9, -118.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -182.2, -99.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -158.5, -79.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -134.8, -60.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -111.1, -40.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -87.3, -21 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -63.6, -1.5 , 0 );
setMoveKey( spep_5 -3 + 29, 1, -39.9, 18.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -69.9, -60.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -88.6, -90.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -82.2, -109.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -104.9, -114.1 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -131.2, -210.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -180.5, -315.7 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -204.8, -409.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -204.8, -409.5 , 0 );

s3=0.1;	
setScaleKey( spep_5 + 0, 1, 1.3 +s3, 1.3 +s3 );
setScaleKey( spep_5 -3 + 29, 1, 1.3 +s3, 1.3 +s3 );
setScaleKey( spep_5 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 32, 1, 0.858, 0.858 );
setScaleKey( spep_5 -3 + 34, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 36, 1, 1.008, 1.008 );
setScaleKey( spep_5 -3 + 38, 1, 1.392, 1.392 );
setScaleKey( spep_5 -3 + 40, 1, 1.776, 1.776 );
setScaleKey( spep_5 -3 + 42, 1, 2.154, 2.154 );
setScaleKey( spep_5 -3 + 44, 1, 2.154, 2.154 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 44, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE046 = playSe( spep_5 + 4, 1109 );

--蹴り
SE047 = playSe( spep_5 +26, 1004 );

--蹴り
SE048 = playSe( spep_5 + 32, 1110 );
setSeVolumeByWorkId( spep_5 + 32, SE048, 92 );

--蹴り
SE049 = playSe( spep_5 + 32, 1187 );
setSeVolumeByWorkId( spep_5 + 32, SE049, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 踏み潰し(106F)
------------------------------------------------------
--spep_6 = 0;
-- ** エフェクト等 ** --
tread_f = entryEffect( spep_6 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --踏み潰し　前面 ef_008
setEffMoveKey( spep_6 + 0, tread_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 106, tread_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tread_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 106, tread_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tread_f, 0 );
setEffRotateKey( spep_6 + 106, tread_f, 0 );
setEffAlphaKey( spep_6 + 0, tread_f, 255 );
setEffAlphaKey( spep_6 + 106, tread_f, 255 );

tread_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --踏み潰し　背面 ef_009
setEffMoveKey( spep_6 + 0, tread_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 106, tread_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tread_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 106, tread_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tread_b, 0 );
setEffRotateKey( spep_6 + 106, tread_b, 0 );
setEffAlphaKey( spep_6 + 0, tread_b, 255 );
setEffAlphaKey( spep_6 + 106, tread_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 40, 1, 0 );
changeAnime( spep_6 + 0, 1, 7 );

a1=50;
b1=20;
setMoveKey( spep_6 + 0, 1, 77.7 -a1, -233.6 +b1 , 0 );
setMoveKey( spep_6 + 1, 1, 78.6 -a1, -238 +b1 , 0 );
setMoveKey( spep_6 + 2, 1, 75.4 -a1, -244.3 +b1 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 75.8 -a1, -247.4 +b1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 76.9 -a1, -252.1 +b1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 73.1 -a1, -258.8 +b1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 73.7 -a1, -261.9 +b1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 74.9 -a1, -266.9 +b1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 70.7 -a1, -274.2 +b1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 71.3 -a1, -277.3 +b1 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 72.9 -a1, -282.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 68.2 -a1, -290.4 +b1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 68.9 -a1, -293.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 70.6 -a1, -299.1 +b1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 65.3 -a1, -307.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 66.1 -a1, -310.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 68.1 -a1, -316.5 +b1 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 62.3 -a1, -325.5 +b1 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 63.4 -a1, -328.6 +b1 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 87.2 -a1, -290 +b1 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 87.2 -a1, -290 +b1 , 0 );

s4=0;
setScaleKey( spep_6 + 0, 1, 0.294 +s4, 0.294 +s4 );
setScaleKey( spep_6 + 1, 1, 0.324 +s4, 0.324 +s4 );
setScaleKey( spep_6 + 2, 1, 0.324 +s4, 0.324 +s4 );
setScaleKey( spep_6 -3 + 6, 1, 0.342 +s4, 0.342 +s4 );
setScaleKey( spep_6 -3 + 8, 1, 0.378 +s4, 0.378 +s4 );
setScaleKey( spep_6 -3 + 10, 1, 0.372 +s4, 0.372 +s4 );
setScaleKey( spep_6 -3 + 12, 1, 0.39 +s4, 0.39 +s4 );
setScaleKey( spep_6 -3 + 14, 1, 0.426 +s4, 0.426 +s4 );
setScaleKey( spep_6 -3 + 16, 1, 0.426 +s4, 0.426 +s4 );
setScaleKey( spep_6 -3 + 18, 1, 0.444 +s4, 0.444 +s4 );
setScaleKey( spep_6 -3 + 20, 1, 0.486 +s4, 0.486 +s4 );
setScaleKey( spep_6 -3 + 22, 1, 0.48 +s4, 0.48 +s4 );
setScaleKey( spep_6 -3 + 24, 1, 0.498 +s4, 0.498 +s4 );
setScaleKey( spep_6 -3 + 26, 1, 0.54 +s4, 0.54 +s4 );
setScaleKey( spep_6 -3 + 28, 1, 0.534 +s4, 0.534 +s4 );
setScaleKey( spep_6 -3 + 30, 1, 0.552 +s4, 0.552 +s4 );
setScaleKey( spep_6 -3 + 32, 1, 0.606 +s4, 0.606 +s4 );
setScaleKey( spep_6 -3 + 34, 1, 0.594 +s4, 0.594 +s4 );
setScaleKey( spep_6 -3 + 36, 1, 0.612 +s4, 0.612 +s4 );
setScaleKey( spep_6 -3 + 38, 1, 0.654 +s4, 0.654 +s4 );
setScaleKey( spep_6 -3 + 40, 1, 0.654 +s4, 0.654 +s4 );

setRotateKey( spep_6 + 0, 1, 1.7 );
setRotateKey( spep_6 + 1, 1, 0 );
setRotateKey( spep_6 + 2, 1, -1.5 );
setRotateKey( spep_6 -3 + 6, 1, 1.7 );
setRotateKey( spep_6 -3 + 8, 1, 0 );
setRotateKey( spep_6 -3 + 10, 1, -1.5 );
setRotateKey( spep_6 -3 + 12, 1, 1.7 );
setRotateKey( spep_6 -3 + 14, 1, 0 );
setRotateKey( spep_6 -3 + 16, 1, -1.5 );
setRotateKey( spep_6 -3 + 18, 1, 1.7 );
setRotateKey( spep_6 -3 + 20, 1, 0 );
setRotateKey( spep_6 -3 + 22, 1, -1.5 );
setRotateKey( spep_6 -3 + 24, 1, 1.7 );
setRotateKey( spep_6 -3 + 26, 1, 0 );
setRotateKey( spep_6 -3 + 28, 1, -1.5 );
setRotateKey( spep_6 -3 + 30, 1, 1.7 );
setRotateKey( spep_6 -3 + 32, 1, 0 );
setRotateKey( spep_6 -3 + 34, 1, -1.5 );
setRotateKey( spep_6 -3 + 36, 1, 1.7 );
setRotateKey( spep_6 -3 + 38, 1, 0 );
setRotateKey( spep_6 -3 + 40, 1, 0 );

-- ** 音 ** --
--敵地面ずりずり
SE050 = playSe( spep_6 + 0, 1192 );
setSeVolumeByWorkId( spep_6 + 0, SE050, 248 );

--敵地面ずりずり
SE051 = playSe( spep_6 + 0, 1168 );
stopSe( spep_6 + 50, SE051, 20 );

--踏みつけ
SE052 = playSe( spep_6 + 30, 1003 );

--踏みつけ
SE053 = playSe( spep_6 + 36, 1153 );
setSeVolumeByWorkId( spep_6 + 36, SE053, 81 );

--踏みつけ
SE054 = playSe( spep_6 + 36, 1123 );
setSeVolumeByWorkId( spep_6 + 36, SE054, 82 );

--踏みつけ
SE055 = playSe( spep_6 + 36, 1024 );
stopSe( spep_6 +106 + 0, SE055, 14 );

--くるりん
SE056 = playSe( spep_6 + 72, 1117 );
stopSe( spep_6 +106 + 8, SE056, 4 );

--画面遷移
SE057 = playSe( spep_6 + 86, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 104;


------------------------------------------------------
-- 気溜め(76F)
------------------------------------------------------
--spep_7 = 0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_7 + 0, SP_10r, 0x100, -1, 0, 0, 0 );  --気溜め ef_010
setEffMoveKey( spep_7 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_7 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 76, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 76, tame, 255 );

-- ** 音 ** --
--気ダメ
SE058 = playSe( spep_7 + 16, 1035 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 76;


------------------------------------------------------
-- 発射(86F)
------------------------------------------------------
--spep_8 = 0;
-- ** エフェクト等 ** --
shot = entryEffect( spep_8 + 0, SP_11r, 0x100, -1, 0, 0, 0 );  --発射  ef_011
setEffMoveKey( spep_8 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, shot, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_8 + 86, shot, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shot, 0 );
setEffRotateKey( spep_8 + 86, shot, 0 );
setEffAlphaKey( spep_8 + 0, shot, 255 );
setEffAlphaKey( spep_8 + 86, shot, 255 );

-- ** 音 ** --
--気弾発射
SE059 = playSe( spep_8 + 0, 1146 );
setSeVolumeByWorkId( spep_8 + 10, SE059, 64 );

--気弾発射
SE060 = playSe( spep_8 + 0, 1213 );
setSeVolumeByWorkId( spep_8 + 10, SE060, 58 );

--気弾発射
SE061 = playSe( spep_8 + 0, 1168 );
setSeVolumeByWorkId( spep_8 + 10, SE061, 47 );

--気弾発射
SE062 = playSe( spep_8 + 0, 1284 );
setSeVolumeByWorkId( spep_8 + 10, SE062, 62 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 84;


------------------------------------------------------
-- フィニッシュ(150F)
------------------------------------------------------
--spep_9 = 0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --フィニッシュ　前面   ef_012
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 150, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 150, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 150, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_13, 0x80, -1, 0, 0, 0 );  --フィニッシュ　後面   ef_013
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 150, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 150, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 150, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 52, 1, 0 );
changeAnime( spep_9 + 0, 1, 105 );

setBlendColor( spep_9 + 0, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_9 + 1, 1, 3, 0.11, 0.17, 0.17, 1.0 );
setBlendColor( spep_9 + 2, 1, 3, 0.13, 0.24, 0.24, 1.0 );
setBlendColor( spep_9 -3 + 6, 1, 3, 0.18, 0.3, 0.3, 1.0 );
setBlendColor( spep_9 -3 + 8, 1, 3, 0.23, 0.4, 0.4, 1.0 );
setBlendColor( spep_9 -3 + 10, 1, 3, 0.24, 0.46, 0.46, 1.0 );
setBlendColor( spep_9 -3 + 12, 1, 3, 0.3, 0.53, 0.53, 1.0 );
setBlendColor( spep_9 -3 + 14, 1, 3, 0.34, 0.59, 0.59, 1.0 );
setBlendColor( spep_9 -3 + 16, 1, 3, 0.38, 0.66, 0.66, 1.0 );
setBlendColor( spep_9 -3 + 18, 1, 3, 0.4, 0.7, 0.7, 1.0 );
setBlendColor( spep_9 -3 + 20, 1, 3, 0.45, 0.73, 0.74, 1.0 );
setBlendColor( spep_9 -3 + 22, 1, 3, 0.5, 0.77, 0.79, 1.0 );
setBlendColor( spep_9 -3 + 24, 1, 3, 0.53, 0.8, 0.82, 1.0 );
setBlendColor( spep_9 -3 + 26, 1, 3, 0.57, 0.83, 0.86, 1.0 );
setBlendColor( spep_9 -3 + 28, 1, 3, 0.6, 0.86, 0.88, 1.0 );
setBlendColor( spep_9 -3 + 30, 1, 3, 0.64, 0.89, 0.92, 1.0 );
setBlendColor( spep_9 -3 + 32, 1, 3, 0.68, 0.92, 0.95, 1.0 );
setBlendColor( spep_9 -3 + 34, 1, 3, 0.7, 0.94, 0.98, 1.0 );
setBlendColor( spep_9 -3 + 36, 1, 3, 0.76, 0.97, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 38, 1, 3, 0.79, 0.99, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 40, 1, 3, 0.83, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 42, 1, 3, 0.9, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 44, 1, 3, 0.94, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 46, 1, 3, 0.96, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 48, 1, 3, 0.98, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 50, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 51, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_9 -3 + 52, 1, 3, 1.0, 1.0, 1.0, 0 );

setMoveKey( spep_9 + 0, 1, 158.2, 0.6 , 0 );
setMoveKey( spep_9 + 1, 1, 127.6, -15.8 , 0 );
setMoveKey( spep_9 + 2, 1, 142.7, -14.6 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 101.8, 14.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 100.3, 6.4 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 62.7, -9.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 71.2, -8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 23.7, 21.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 22.1, 13.6 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 3.7, -4.3 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 31.3, -4.3 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 2.9, 23.8 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 20.5, 13.8 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 2.1, -4.2 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 29.7, -4.1 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 1.3, 23.9 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 18.9, 13.9 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 0.5, -4 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 28.1, -4 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -0.3, 24 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 17.3, 14.1 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 8.9, 6.1 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 16.5, 6.2 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 8.1, 14.2 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 15.7, 14.2 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 7.3, 6.3 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 14.9, 6.3 , 0 );

setScaleKey( spep_9 + 0, 1, 7.99, 7.99 );
setScaleKey( spep_9 + 1, 1, 7.19, 7.19 );
setScaleKey( spep_9 + 2, 1, 6.8, 6.8 );
setScaleKey( spep_9 -3 + 6, 1, 6, 6 );
setScaleKey( spep_9 -3 + 8, 1, 4.89, 4.89 );
setScaleKey( spep_9 -3 + 10, 1, 4.06, 4.06 );
setScaleKey( spep_9 -3 + 12, 1, 2.97, 2.97 );
setScaleKey( spep_9 -3 + 14, 1, 1.92, 1.92 );
setScaleKey( spep_9 -3 + 16, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 18, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 20, 1, 0.89, 0.89 );
setScaleKey( spep_9 -3 + 22, 1, 0.9, 0.9 );
setScaleKey( spep_9 -3 + 24, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_9 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_9 -3 + 30, 1, 0.8, 0.8 );
setScaleKey( spep_9 -3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_9 -3 + 34, 1, 0.78, 0.78 );
setScaleKey( spep_9 -3 + 36, 1, 0.74, 0.74 );
setScaleKey( spep_9 -3 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_9 -3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_9 -3 + 42, 1, 0.68, 0.68 );
setScaleKey( spep_9 -3 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_9 -3 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_9 -3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_9 -3 + 50, 1, 0.58, 0.58 );
setScaleKey( spep_9 -3 + 52, 1, 0.59, 0.59 );

setRotateKey( spep_9 + 0, 1, -18.1 );
setRotateKey( spep_9 + 1, 1, -18.2 );
setRotateKey( spep_9 -3 + 52, 1, -18.2 );

-- ** 音 ** --
--敵飲み込まれる
SE063 = playSe( spep_9 + 8, 1021 );

--敵飲み込まれる
SE064 = playSe( spep_9 + 8, 1258 );
setSeVolumeByWorkId( spep_9 + 8, SE064, 63 );
setTimeStretch( SE064, 1.18, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 150 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 40 );
endPhase( spep_9 + 140 );

end