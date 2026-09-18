--4024410:セル(完全体)_パワーブレイク
--sp_effect_b1_00202
--sp2364

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
SP_01 = 159658;  --セル 空から降りてくる ef_001
SP_02 = 159659;  --セル 着地（セリフカットイン） ef_002
SP_03 = 159660;  --セル 敵に突撃 ef_003
SP_04 = 159661;  --セル 敵に突撃 ef_003_b
SP_05 = 159663;  --セル 4連続交互に殴る ef_004
SP_06 = 159664;  --セル 4連続交互に殴る ef_004_b
SP_07 = 159666;  --セル 地面に拳を叩きつけている状態   ef_005

--敵側
SP_03r = 159662;  --セル 敵に突撃 ef_003_r
SP_05r = 159665;  --セル 4連続交互に殴る ef_004_r 

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
-- 空から降りてくる(32F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 32, 0x100, -1, 0, 0, 0 );  --空から降りてくる ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 32, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 32, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 32, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 32 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 32, first_f, 0 );

-- ** 音 ** --
--降りてくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 32 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 32;


------------------------------------------------------
-- 着地(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
landing = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --着地（セリフカットイン） ef_002
setEffMoveKey( spep_1 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, landing, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, landing, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing, 0 );
setEffRotateKey( spep_1 + 86, landing, 0 );
setEffAlphaKey( spep_1 + 0, landing, 255 );
setEffAlphaKey( spep_1 + 86 -1, landing, 255 );
setEffAlphaKey( spep_1 + 86, landing, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
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

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--着地
SE005 = playSeVer2( spep_1 + 8, 1003, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_1 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE006, 63 );
SE009 = playSeVer2( spep_1 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE009, 63 );
SE010 = playSeVer2( spep_1 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE010, 63 );

--着地
SE007 = playSeVer2( spep_1 + 20, 1024, "",spep_1 + 102, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 20, SE007, 94 );
SE008 = playSeVer2( spep_1 + 20, 1168, "",spep_1 + 102, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 20, SE008, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 80, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


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

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 敵に突撃(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 );  --敵に突撃 ef_003
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 56, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 56, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04, 56, 0x80, -1, 0, 0, 0 );  --敵に突撃 ef_003_b
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 56, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 56, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 117 );

setMoveKey( spep_3 + 0, 1, 185.5, -58.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 185.5, -58.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 215.4, -28.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 176.3, -67.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 206.4, -92.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 191.2, -50.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 191.2, -81 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 198.1, -60.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 190.4, -54.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 183.2, -48.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 185.1, -68.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 184.2, -60.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 30, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 32, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 38, 1, 0.26, 0.26 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 音 ** --
--オーラ
SE012 = playSeVer2( spep_3 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 6, SE012, 32 );

--向かっていく
SE013 = playSeVer2( spep_3 + 10, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 10, 1011, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 10, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 184.2, -60.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 182.1, -50 , 0 );
    setMoveKey( SP_dodge + 4, 1, 178.2, -54.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 178.2, -50.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 174.6, -50.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 171.2, -47.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.26, 0.26 );
    setScaleKey( SP_dodge + 2, 1, 0.26, 0.26 );
    setScaleKey( SP_dodge + 4, 1, 0.25, 0.25 );
    setScaleKey( SP_dodge + 6, 1, 0.25, 0.25 );
    setScaleKey( SP_dodge + 8, 1, 0.24, 0.24 );
    setScaleKey( SP_dodge + 10, 1, 0.24, 0.24 );

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
setMoveKey( spep_3 -3 + 40, 1, 182.1, -50 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 178.2, -54.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 178.2, -50.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 174.6, -50.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 171.2, -47.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 169.1, -49.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 165.7, -46.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 165.6, -47.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 163.5, -45.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 161.5, -46.6 , 0 );

setScaleKey( spep_3 -3 + 40, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 46, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 50, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 52, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 56, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 58, 1, 0.21, 0.21 );

setRotateKey( spep_3 -3 + 8, 1, 0 );

-- ** 音 ** --
--オーラ
SE016 = playSeVer2( spep_3 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE016, 32 );
SE017 = playSeVer2( spep_3 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 54, SE017, 32 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 4連続交互に殴る(266F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rash_f = entryEffectLife( spep_4 + 0, SP_05, 266, 0x100, -1, 0, 0, 0 );  --4連続交互に殴る ef_004
setEffMoveKey( spep_4 + 0, rash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 266, rash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 266, rash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_f, 0 );
setEffRotateKey( spep_4 + 266, rash_f, 0 );
setEffAlphaKey( spep_4 + 0, rash_f, 255 );
setEffAlphaKey( spep_4 + 266 -1, rash_f, 255 );
setEffAlphaKey( spep_4 + 266, rash_f, 0 );

rash_b = entryEffectLife( spep_4 + 0, SP_06, 266, 0x80, -1, 0, 0, 0 );  --4連続交互に殴る ef_004_b
setEffMoveKey( spep_4 + 0, rash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 266, rash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 266, rash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_b, 0 );
setEffRotateKey( spep_4 + 266, rash_b, 0 );
setEffAlphaKey( spep_4 + 0, rash_b, 255 );
setEffAlphaKey( spep_4 + 266 -1, rash_b, 255 );
setEffAlphaKey( spep_4 + 266, rash_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 269, 1, 1 );
changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 -3 + 22, 1, 108 );
changeAnime( spep_4 -3 + 92, 1, 106 );
changeAnime( spep_4 -3 + 132, 1, 108 );
changeAnime( spep_4 -3 + 220, 1, 107 );

setMoveKey( spep_4 + 0, 1, 69.3, -149.8 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 69.3, -149.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 127.6, -82.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 180.4, -155.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 140, -164.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 123.9, -115.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 199.9, -70.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 148.8, -75 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 196.8, -149.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 201, -77.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 206.7, -72.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 208.2, -78.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 212.5, -80.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 211.2, -77.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 216.8, -72.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 218.5, -72.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 220.2, -71.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 222, -71.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 223.7, -70.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 225.4, -70 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 227.1, -69.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 228.8, -68.9 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 230.6, -68.4 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 232.4, -67.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 234.1, -67.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 235.9, -66.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 237.6, -66.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 239.4, -65.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 241.2, -65 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 243, -64.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 244.8, -63.9 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 246.5, -63.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 248.4, -62.8 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 250.2, -62.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 252, -61.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 253.8, -61 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 255.6, -60.5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 98.2, -65.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 40.4, -33.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 103, -108.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 82.7, -69 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 102.5, -27.3 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 47.7, -31.3 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 91.9, -105.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 36.2, -64.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 35.4, -63 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 37.4, -64.8 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 33.5, -64.8 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 31.1, -63.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 28.6, -62 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 26.1, -60.5 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 23.6, -59.1 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 21.1, -57.6 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 18.6, -56.2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 16.1, -54.8 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 13.5, -53.3 , 0 );
setMoveKey( spep_4 -3 + 131, 1, 11, -51.9 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 91.2, -56.3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 62.1, -28.4 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 111.5, -104.4 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 45.7, -69.2 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 122.4, -24.7 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 73.4, -28.6 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 73.1, -34.3 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 79.5, -37.1 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 80.3, -33.4 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 82.8, -33.6 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 85.2, -33.8 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 87.7, -34 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 90.1, -34.3 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 92.6, -34.4 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 95.1, -34.7 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 97.6, -34.8 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 100.2, -35 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 102.6, -35.2 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 105.2, -35.5 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 107.7, -35.7 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 110.3, -35.9 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 112.8, -36.1 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 115.3, -36.3 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 117.9, -36.5 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 120.5, -36.7 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 123, -37 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 125.6, -37.2 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 128.2, -37.4 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 130.9, -37.6 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 133.5, -37.8 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 136.1, -38.1 , 0 );
setMoveKey( spep_4 -3 + 196, 1, 138.7, -38.3 , 0 );
setMoveKey( spep_4 -3 + 198, 1, 141.4, -38.5 , 0 );
setMoveKey( spep_4 -3 + 200, 1, 144, -38.7 , 0 );
setMoveKey( spep_4 -3 + 202, 1, 146.6, -39 , 0 );
setMoveKey( spep_4 -3 + 204, 1, 149.4, -39.3 , 0 );
setMoveKey( spep_4 -3 + 206, 1, 152, -39.4 , 0 );
setMoveKey( spep_4 -3 + 208, 1, 154.7, -39.7 , 0 );
setMoveKey( spep_4 -3 + 210, 1, 157.3, -39.9 , 0 );
setMoveKey( spep_4 -3 + 212, 1, 160.1, -40.2 , 0 );
setMoveKey( spep_4 -3 + 214, 1, 162.8, -40.4 , 0 );
setMoveKey( spep_4 -3 + 216, 1, 165.5, -40.7 , 0 );
setMoveKey( spep_4 -3 + 219, 1, 168.2, -40.9 , 0 );
setMoveKey( spep_4 -3 + 220, 1, -106.2, -553 , 0 );
setMoveKey( spep_4 -3 + 222, 1, -59.2, -644.8 , 0 );
setMoveKey( spep_4 -3 + 224, 1, -127.3, -610.6 , 0 );
setMoveKey( spep_4 -3 + 226, 1, -52.9, -567.1 , 0 );
setMoveKey( spep_4 -3 + 228, 1, -105.7, -573.2 , 0 );
setMoveKey( spep_4 -3 + 230, 1, -113.1, -609.2 , 0 );
setMoveKey( spep_4 -3 + 232, 1, -74.8, -603.3 , 0 );
setMoveKey( spep_4 -3 + 234, 1, -106.2, -576.4 , 0 );
setMoveKey( spep_4 -3 + 236, 1, -59.2, -653.3 , 0 );
setMoveKey( spep_4 -3 + 238, 1, -127.3, -619 , 0 );
setMoveKey( spep_4 -3 + 240, 1, -52.9, -575.6 , 0 );
setMoveKey( spep_4 -3 + 242, 1, -113.1, -616.5 , 0 );
setMoveKey( spep_4 -3 + 244, 1, -74.8, -610.6 , 0 );
setMoveKey( spep_4 -3 + 246, 1, -106.2, -583.6 , 0 );
setMoveKey( spep_4 -3 + 248, 1, -98.2, -576.8 , 0 );
setMoveKey( spep_4 -3 + 250, 1, -90.2, -597.3 , 0 );
setMoveKey( spep_4 -3 + 252, 1, -104.6, -582.5 , 0 );
setMoveKey( spep_4 -3 + 254, 1, -111, -593.3 , 0 );
setMoveKey( spep_4 -3 + 256, 1, -106.2, -589.7 , 0 );
setMoveKey( spep_4 -3 + 258, 1, -106.2, -597.3 , 0 );
setMoveKey( spep_4 -3 + 260, 1, -104.6, -603.3 , 0 );
setMoveKey( spep_4 -3 + 262, 1, -106.2, -602.9 , 0 );
setMoveKey( spep_4 -3 + 264, 1, -109.4, -607.3 , 0 );
setMoveKey( spep_4 -3 + 266, 1, -107.8, -606.9 , 0 );
setMoveKey( spep_4 -3 + 268, 1, -109.4, -609.8 , 0 );
setMoveKey( spep_4 -3 + 269, 1, -109.4, -609.8 , 0 );

setScaleKey( spep_4 + 0, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 21, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 22, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 24, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 26, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 28, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 30, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 32, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 36, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 38, 1, 2.67, 2.67 );
setScaleKey( spep_4 -3 + 40, 1, 2.67, 2.67 );
setScaleKey( spep_4 -3 + 42, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 44, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 46, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 48, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 50, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 52, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 54, 1, 2.71, 2.71 );
setScaleKey( spep_4 -3 + 56, 1, 2.71, 2.71 );
setScaleKey( spep_4 -3 + 58, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 62, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 64, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 66, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 68, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 70, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 72, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 74, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 76, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 80, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 82, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 84, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 86, 1, 2.78, 2.78 );
setScaleKey( spep_4 -3 + 88, 1, 2.78, 2.78 );
setScaleKey( spep_4 -3 + 91, 1, 2.79, 2.79 );
setScaleKey( spep_4 -3 + 92, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 94, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 98, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 100, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 102, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 104, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 106, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 108, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 110, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 112, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 114, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 116, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 118, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 120, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 124, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 126, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 128, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 131, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 132, 1, 3.03, 3.03 );
setScaleKey( spep_4 -3 + 134, 1, 3.04, 3.04 );
setScaleKey( spep_4 -3 + 136, 1, 3.04, 3.04 );
setScaleKey( spep_4 -3 + 138, 1, 3.05, 3.05 );
setScaleKey( spep_4 -3 + 140, 1, 3.05, 3.05 );
setScaleKey( spep_4 -3 + 142, 1, 3.06, 3.06 );
setScaleKey( spep_4 -3 + 144, 1, 3.07, 3.07 );
setScaleKey( spep_4 -3 + 146, 1, 3.07, 3.07 );
setScaleKey( spep_4 -3 + 148, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 150, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 152, 1, 3.09, 3.09 );
setScaleKey( spep_4 -3 + 154, 1, 3.09, 3.09 );
setScaleKey( spep_4 -3 + 156, 1, 3.1, 3.1 );
setScaleKey( spep_4 -3 + 158, 1, 3.1, 3.1 );
setScaleKey( spep_4 -3 + 160, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 162, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 164, 1, 3.12, 3.12 );
setScaleKey( spep_4 -3 + 166, 1, 3.12, 3.12 );
setScaleKey( spep_4 -3 + 168, 1, 3.13, 3.13 );
setScaleKey( spep_4 -3 + 170, 1, 3.13, 3.13 );
setScaleKey( spep_4 -3 + 172, 1, 3.14, 3.14 );
setScaleKey( spep_4 -3 + 174, 1, 3.14, 3.14 );
setScaleKey( spep_4 -3 + 176, 1, 3.15, 3.15 );
setScaleKey( spep_4 -3 + 178, 1, 3.15, 3.15 );
setScaleKey( spep_4 -3 + 180, 1, 3.16, 3.16 );
setScaleKey( spep_4 -3 + 182, 1, 3.17, 3.17 );
setScaleKey( spep_4 -3 + 184, 1, 3.17, 3.17 );
setScaleKey( spep_4 -3 + 186, 1, 3.18, 3.18 );
setScaleKey( spep_4 -3 + 188, 1, 3.18, 3.18 );
setScaleKey( spep_4 -3 + 190, 1, 3.19, 3.19 );
setScaleKey( spep_4 -3 + 192, 1, 3.19, 3.19 );
setScaleKey( spep_4 -3 + 194, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 196, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 198, 1, 3.21, 3.21 );
setScaleKey( spep_4 -3 + 200, 1, 3.21, 3.21 );
setScaleKey( spep_4 -3 + 202, 1, 3.22, 3.22 );
setScaleKey( spep_4 -3 + 204, 1, 3.22, 3.22 );
setScaleKey( spep_4 -3 + 206, 1, 3.23, 3.23 );
setScaleKey( spep_4 -3 + 208, 1, 3.23, 3.23 );
setScaleKey( spep_4 -3 + 210, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 212, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 214, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 216, 1, 3.26, 3.26 );
setScaleKey( spep_4 -3 + 219, 1, 3.26, 3.26 );
setScaleKey( spep_4 -3 + 220, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 269, 1, 1.91, 1.91 );

setRotateKey( spep_4 -3 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 21, 1, 0 );
setRotateKey( spep_4 -3 + 22, 1, 6.3 );
setRotateKey( spep_4 -3 + 24, 1, 6.6 );
setRotateKey( spep_4 -3 + 26, 1, 6.8 );
setRotateKey( spep_4 -3 + 28, 1, 6.9 );
setRotateKey( spep_4 -3 + 30, 1, 7.1 );
setRotateKey( spep_4 -3 + 32, 1, 7.3 );
setRotateKey( spep_4 -3 + 34, 1, 7.4 );
setRotateKey( spep_4 -3 + 36, 1, 7.6 );
setRotateKey( spep_4 -3 + 38, 1, 7.8 );
setRotateKey( spep_4 -3 + 40, 1, 7.9 );
setRotateKey( spep_4 -3 + 42, 1, 8.1 );
setRotateKey( spep_4 -3 + 44, 1, 8.2 );
setRotateKey( spep_4 -3 + 46, 1, 8.4 );
setRotateKey( spep_4 -3 + 48, 1, 8.6 );
setRotateKey( spep_4 -3 + 50, 1, 8.7 );
setRotateKey( spep_4 -3 + 52, 1, 8.9 );
setRotateKey( spep_4 -3 + 54, 1, 9.1 );
setRotateKey( spep_4 -3 + 56, 1, 9.2 );
setRotateKey( spep_4 -3 + 58, 1, 9.4 );
setRotateKey( spep_4 -3 + 60, 1, 9.5 );
setRotateKey( spep_4 -3 + 62, 1, 9.7 );
setRotateKey( spep_4 -3 + 64, 1, 9.9 );
setRotateKey( spep_4 -3 + 66, 1, 10 );
setRotateKey( spep_4 -3 + 68, 1, 10.2 );
setRotateKey( spep_4 -3 + 70, 1, 10.4 );
setRotateKey( spep_4 -3 + 72, 1, 10.5 );
setRotateKey( spep_4 -3 + 74, 1, 10.7 );
setRotateKey( spep_4 -3 + 76, 1, 10.9 );
setRotateKey( spep_4 -3 + 78, 1, 11 );
setRotateKey( spep_4 -3 + 80, 1, 11.2 );
setRotateKey( spep_4 -3 + 82, 1, 11.3 );
setRotateKey( spep_4 -3 + 84, 1, 11.5 );
setRotateKey( spep_4 -3 + 86, 1, 11.7 );
setRotateKey( spep_4 -3 + 88, 1, 11.8 );
setRotateKey( spep_4 -3 + 91, 1, 12 );
setRotateKey( spep_4 -3 + 92, 1, -53.7 );
setRotateKey( spep_4 -3 + 94, 1, -54.4 );
setRotateKey( spep_4 -3 + 96, 1, -55.1 );
setRotateKey( spep_4 -3 + 98, 1, -55.8 );
setRotateKey( spep_4 -3 + 100, 1, -56.5 );
setRotateKey( spep_4 -3 + 102, 1, -57.2 );
setRotateKey( spep_4 -3 + 104, 1, -57.9 );
setRotateKey( spep_4 -3 + 106, 1, -58.6 );
setRotateKey( spep_4 -3 + 108, 1, -59.3 );
setRotateKey( spep_4 -3 + 110, 1, -60 );
setRotateKey( spep_4 -3 + 112, 1, -60.7 );
setRotateKey( spep_4 -3 + 114, 1, -61.4 );
setRotateKey( spep_4 -3 + 116, 1, -62.1 );
setRotateKey( spep_4 -3 + 118, 1, -62.8 );
setRotateKey( spep_4 -3 + 120, 1, -63.5 );
setRotateKey( spep_4 -3 + 122, 1, -64.2 );
setRotateKey( spep_4 -3 + 124, 1, -64.9 );
setRotateKey( spep_4 -3 + 126, 1, -65.6 );
setRotateKey( spep_4 -3 + 128, 1, -66.3 );
setRotateKey( spep_4 -3 + 131, 1, -67 );
setRotateKey( spep_4 -3 + 132, 1, -8.3 );
setRotateKey( spep_4 -3 + 134, 1, -8.2 );
setRotateKey( spep_4 -3 + 136, 1, -7.8 );
setRotateKey( spep_4 -3 + 138, 1, -7.5 );
setRotateKey( spep_4 -3 + 140, 1, -7.1 );
setRotateKey( spep_4 -3 + 142, 1, -6.8 );
setRotateKey( spep_4 -3 + 144, 1, -6.4 );
setRotateKey( spep_4 -3 + 146, 1, -6.1 );
setRotateKey( spep_4 -3 + 148, 1, -5.8 );
setRotateKey( spep_4 -3 + 150, 1, -5.4 );
setRotateKey( spep_4 -3 + 152, 1, -5.1 );
setRotateKey( spep_4 -3 + 154, 1, -4.7 );
setRotateKey( spep_4 -3 + 156, 1, -4.4 );
setRotateKey( spep_4 -3 + 158, 1, -4 );
setRotateKey( spep_4 -3 + 160, 1, -3.7 );
setRotateKey( spep_4 -3 + 162, 1, -3.4 );
setRotateKey( spep_4 -3 + 164, 1, -3 );
setRotateKey( spep_4 -3 + 166, 1, -2.7 );
setRotateKey( spep_4 -3 + 168, 1, -2.3 );
setRotateKey( spep_4 -3 + 170, 1, -2 );
setRotateKey( spep_4 -3 + 172, 1, -1.6 );
setRotateKey( spep_4 -3 + 174, 1, -1.3 );
setRotateKey( spep_4 -3 + 176, 1, -1 );
setRotateKey( spep_4 -3 + 178, 1, -0.6 );
setRotateKey( spep_4 -3 + 180, 1, -0.3 );
setRotateKey( spep_4 -3 + 182, 1, 0.1 );
setRotateKey( spep_4 -3 + 184, 1, 0.4 );
setRotateKey( spep_4 -3 + 186, 1, 0.8 );
setRotateKey( spep_4 -3 + 188, 1, 1.1 );
setRotateKey( spep_4 -3 + 190, 1, 1.4 );
setRotateKey( spep_4 -3 + 192, 1, 1.8 );
setRotateKey( spep_4 -3 + 194, 1, 2.1 );
setRotateKey( spep_4 -3 + 196, 1, 2.5 );
setRotateKey( spep_4 -3 + 198, 1, 2.8 );
setRotateKey( spep_4 -3 + 200, 1, 3.1 );
setRotateKey( spep_4 -3 + 202, 1, 3.5 );
setRotateKey( spep_4 -3 + 204, 1, 3.8 );
setRotateKey( spep_4 -3 + 206, 1, 4.2 );
setRotateKey( spep_4 -3 + 208, 1, 4.5 );
setRotateKey( spep_4 -3 + 210, 1, 4.9 );
setRotateKey( spep_4 -3 + 212, 1, 5.2 );
setRotateKey( spep_4 -3 + 214, 1, 5.5 );
setRotateKey( spep_4 -3 + 216, 1, 5.9 );
setRotateKey( spep_4 -3 + 219, 1, 6.2 );
setRotateKey( spep_4 -3 + 220, 1, 47.9 );
setRotateKey( spep_4 -3 + 269, 1, 47.9 );

-- ** 音 ** --
--オーラ
SE021 = playSeVer2( spep_4 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 22, SE021, 32 );
SE022 = playSeVer2( spep_4 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE022, 32 );
SE024 = playSeVer2( spep_4 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 70, SE024, 32 );
SE028 = playSeVer2( spep_4 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 94, SE028, 32 );
SE029 = playSeVer2( spep_4 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 118, SE029, 32 );
SE035 = playSeVer2( spep_4 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 166, SE035, 32 );
SE037 = playSeVer2( spep_4 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 190, SE037, 32 );
SE033 = playSeVer2( spep_4 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 142, SE033, 32 );
SE039 = playSeVer2( spep_4 + 214, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 214, SE039, 32 );
SE043 = playSeVer2( spep_4 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 238, SE043, 32 );
SE044 = playSeVer2( spep_4 + 262, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 262, SE044, 71 );

--初手パンチ
SE018 = playSeVer2( spep_4 + 10, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 12, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12, SE019, 63 );
SE020 = playSeVer2( spep_4 + 16, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE020, 85 );

--振りかぶる
SE023 = playSeVer2( spep_4 + 50, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 50, SE023, 85 );

--パンチ
SE025 = playSeVer2( spep_4 + 86, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 86, 1359, "",spep_4 + 118, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 86, SE026, 72 );
SE027 = playSeVer2( spep_4 + 90, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 90, SE027, 110 );

--パンチ２
SE030 = playSeVer2( spep_4 + 132, 1010, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 132, 1359, "",spep_4 + 162, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 132, SE031, 66 );
SE032 = playSeVer2( spep_4 + 138, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 138, SE032, 117 );

--振りかぶる
SE034 = playSeVer2( spep_4 + 160, 1116, "",spep_4 + 204, 0, 20, -1);

--ラスト叩きつけ
SE038 = playSeVer2( spep_4 + 214, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 214, SE038, 88 );
SE040 = playSeVer2( spep_4 + 216, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 216, SE040, 86 );
SE041 = playSeVer2( spep_4 + 218, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE041, 87 );
SE042 = playSeVer2( spep_4 + 218, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE042, 86 );

--瓦礫音
SE036 = playSeVer2( spep_4 + 264, 1168, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_4 + 264, SE036, 60 );
setStartTimeMs( SE036,  1233 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 266 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 266;


------------------------------------------------------
-- 地面に拳を叩きつけている状態(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --地面に拳を叩きつけている状態   ef_005
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 116, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 116 -1, finish, 255 );
setEffAlphaKey( spep_5 + 116, finish, 0 );

-- ** 音 ** --
--オーラ
SE045 = playSeVer2( spep_5 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 20, SE045, 71 );
SE046 = playSeVer2( spep_5 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 44, SE046, 71 );
SE047 = playSeVer2( spep_5 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 68, SE047, 71 );
SE048 = playSeVer2( spep_5 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 92, SE048, 71 );
-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 );
endPhase( spep_5 + 106 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 空から降りてくる(32F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 32, 0x100, -1, 0, 0, 0 );  --空から降りてくる ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 32, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 32, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 32, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 32 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 32, first_f, 0 );

-- ** 音 ** --
--降りてくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 32 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 32;


------------------------------------------------------
-- 着地(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
landing = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --着地（セリフカットイン） ef_002
setEffMoveKey( spep_1 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, landing, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, landing, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing, 0 );
setEffRotateKey( spep_1 + 86, landing, 0 );
setEffAlphaKey( spep_1 + 0, landing, 255 );
setEffAlphaKey( spep_1 + 86 -1, landing, 255 );
setEffAlphaKey( spep_1 + 86, landing, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--着地
SE005 = playSeVer2( spep_1 + 8, 1003, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_1 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE006, 63 );
SE009 = playSeVer2( spep_1 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE009, 63 );
SE010 = playSeVer2( spep_1 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE010, 63 );

--着地
SE007 = playSeVer2( spep_1 + 20, 1024, "",spep_1 + 102, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 20, SE007, 94 );
SE008 = playSeVer2( spep_1 + 20, 1168, "",spep_1 + 102, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 20, SE008, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 80, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


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
SE_CUTIN = playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 敵に突撃(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03r, 56, 0x100, -1, 0, 0, 0 );  --敵に突撃 ef_003
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 56, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 56, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04, 56, 0x80, -1, 0, 0, 0 );  --敵に突撃 ef_003_b
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 56, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 56, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 117 );

setMoveKey( spep_3 + 0, 1, 185.5, -58.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 185.5, -58.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 215.4, -28.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 176.3, -67.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 206.4, -92.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 191.2, -50.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 191.2, -81 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 198.1, -60.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 190.4, -54.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 183.2, -48.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 185.1, -68.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 184.2, -60.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 30, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 32, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 38, 1, 0.26, 0.26 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 音 ** --
--オーラ
SE012 = playSeVer2( spep_3 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 6, SE012, 32 );

--向かっていく
SE013 = playSeVer2( spep_3 + 10, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 10, 1011, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 10, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 184.2, -60.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 182.1, -50 , 0 );
    setMoveKey( SP_dodge + 4, 1, 178.2, -54.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 178.2, -50.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 174.6, -50.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 171.2, -47.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.26, 0.26 );
    setScaleKey( SP_dodge + 2, 1, 0.26, 0.26 );
    setScaleKey( SP_dodge + 4, 1, 0.25, 0.25 );
    setScaleKey( SP_dodge + 6, 1, 0.25, 0.25 );
    setScaleKey( SP_dodge + 8, 1, 0.24, 0.24 );
    setScaleKey( SP_dodge + 10, 1, 0.24, 0.24 );

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
setMoveKey( spep_3 -3 + 40, 1, 182.1, -50 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 178.2, -54.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 178.2, -50.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 174.6, -50.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 171.2, -47.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 169.1, -49.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 165.7, -46.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 165.6, -47.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 163.5, -45.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 161.5, -46.6 , 0 );

setScaleKey( spep_3 -3 + 40, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 46, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 50, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 52, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 56, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 58, 1, 0.21, 0.21 );

setRotateKey( spep_3 -3 + 8, 1, 0 );

-- ** 音 ** --
--オーラ
SE016 = playSeVer2( spep_3 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE016, 32 );
SE017 = playSeVer2( spep_3 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 54, SE017, 32 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 4連続交互に殴る(266F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rash_f = entryEffectLife( spep_4 + 0, SP_05r, 266, 0x100, -1, 0, 0, 0 );  --4連続交互に殴る ef_004
setEffMoveKey( spep_4 + 0, rash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 266, rash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 266, rash_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_f, 0 );
setEffRotateKey( spep_4 + 266, rash_f, 0 );
setEffAlphaKey( spep_4 + 0, rash_f, 255 );
setEffAlphaKey( spep_4 + 266 -1, rash_f, 255 );
setEffAlphaKey( spep_4 + 266, rash_f, 0 );

rash_b = entryEffectLife( spep_4 + 0, SP_06, 266, 0x80, -1, 0, 0, 0 );  --4連続交互に殴る ef_004_b
setEffMoveKey( spep_4 + 0, rash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 266, rash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 266, rash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_b, 0 );
setEffRotateKey( spep_4 + 266, rash_b, 0 );
setEffAlphaKey( spep_4 + 0, rash_b, 255 );
setEffAlphaKey( spep_4 + 266 -1, rash_b, 255 );
setEffAlphaKey( spep_4 + 266, rash_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 269, 1, 1 );
changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 -3 + 22, 1, 108 );
changeAnime( spep_4 -3 + 92, 1, 106 );
changeAnime( spep_4 -3 + 132, 1, 108 );
changeAnime( spep_4 -3 + 220, 1, 107 );

setMoveKey( spep_4 + 0, 1, 69.3, -149.8 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 69.3, -149.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 127.6, -82.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 180.4, -155.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 140, -164.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 123.9, -115.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 199.9, -70.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 148.8, -75 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 196.8, -149.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 201, -77.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 206.7, -72.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 208.2, -78.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 212.5, -80.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 211.2, -77.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 216.8, -72.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 218.5, -72.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 220.2, -71.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 222, -71.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 223.7, -70.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 225.4, -70 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 227.1, -69.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 228.8, -68.9 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 230.6, -68.4 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 232.4, -67.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 234.1, -67.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 235.9, -66.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 237.6, -66.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 239.4, -65.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 241.2, -65 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 243, -64.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 244.8, -63.9 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 246.5, -63.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 248.4, -62.8 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 250.2, -62.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 252, -61.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 253.8, -61 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 255.6, -60.5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 98.2, -65.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 40.4, -33.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 103, -108.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 82.7, -69 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 102.5, -27.3 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 47.7, -31.3 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 91.9, -105.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 36.2, -64.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 35.4, -63 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 37.4, -64.8 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 33.5, -64.8 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 31.1, -63.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 28.6, -62 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 26.1, -60.5 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 23.6, -59.1 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 21.1, -57.6 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 18.6, -56.2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 16.1, -54.8 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 13.5, -53.3 , 0 );
setMoveKey( spep_4 -3 + 131, 1, 11, -51.9 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 91.2, -56.3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 62.1, -28.4 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 111.5, -104.4 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 45.7, -69.2 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 122.4, -24.7 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 73.4, -28.6 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 73.1, -34.3 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 79.5, -37.1 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 80.3, -33.4 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 82.8, -33.6 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 85.2, -33.8 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 87.7, -34 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 90.1, -34.3 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 92.6, -34.4 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 95.1, -34.7 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 97.6, -34.8 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 100.2, -35 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 102.6, -35.2 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 105.2, -35.5 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 107.7, -35.7 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 110.3, -35.9 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 112.8, -36.1 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 115.3, -36.3 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 117.9, -36.5 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 120.5, -36.7 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 123, -37 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 125.6, -37.2 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 128.2, -37.4 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 130.9, -37.6 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 133.5, -37.8 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 136.1, -38.1 , 0 );
setMoveKey( spep_4 -3 + 196, 1, 138.7, -38.3 , 0 );
setMoveKey( spep_4 -3 + 198, 1, 141.4, -38.5 , 0 );
setMoveKey( spep_4 -3 + 200, 1, 144, -38.7 , 0 );
setMoveKey( spep_4 -3 + 202, 1, 146.6, -39 , 0 );
setMoveKey( spep_4 -3 + 204, 1, 149.4, -39.3 , 0 );
setMoveKey( spep_4 -3 + 206, 1, 152, -39.4 , 0 );
setMoveKey( spep_4 -3 + 208, 1, 154.7, -39.7 , 0 );
setMoveKey( spep_4 -3 + 210, 1, 157.3, -39.9 , 0 );
setMoveKey( spep_4 -3 + 212, 1, 160.1, -40.2 , 0 );
setMoveKey( spep_4 -3 + 214, 1, 162.8, -40.4 , 0 );
setMoveKey( spep_4 -3 + 216, 1, 165.5, -40.7 , 0 );
setMoveKey( spep_4 -3 + 219, 1, 168.2, -40.9 , 0 );
setMoveKey( spep_4 -3 + 220, 1, -106.2, -553 , 0 );
setMoveKey( spep_4 -3 + 222, 1, -59.2, -644.8 , 0 );
setMoveKey( spep_4 -3 + 224, 1, -127.3, -610.6 , 0 );
setMoveKey( spep_4 -3 + 226, 1, -52.9, -567.1 , 0 );
setMoveKey( spep_4 -3 + 228, 1, -105.7, -573.2 , 0 );
setMoveKey( spep_4 -3 + 230, 1, -113.1, -609.2 , 0 );
setMoveKey( spep_4 -3 + 232, 1, -74.8, -603.3 , 0 );
setMoveKey( spep_4 -3 + 234, 1, -106.2, -576.4 , 0 );
setMoveKey( spep_4 -3 + 236, 1, -59.2, -653.3 , 0 );
setMoveKey( spep_4 -3 + 238, 1, -127.3, -619 , 0 );
setMoveKey( spep_4 -3 + 240, 1, -52.9, -575.6 , 0 );
setMoveKey( spep_4 -3 + 242, 1, -113.1, -616.5 , 0 );
setMoveKey( spep_4 -3 + 244, 1, -74.8, -610.6 , 0 );
setMoveKey( spep_4 -3 + 246, 1, -106.2, -583.6 , 0 );
setMoveKey( spep_4 -3 + 248, 1, -98.2, -576.8 , 0 );
setMoveKey( spep_4 -3 + 250, 1, -90.2, -597.3 , 0 );
setMoveKey( spep_4 -3 + 252, 1, -104.6, -582.5 , 0 );
setMoveKey( spep_4 -3 + 254, 1, -111, -593.3 , 0 );
setMoveKey( spep_4 -3 + 256, 1, -106.2, -589.7 , 0 );
setMoveKey( spep_4 -3 + 258, 1, -106.2, -597.3 , 0 );
setMoveKey( spep_4 -3 + 260, 1, -104.6, -603.3 , 0 );
setMoveKey( spep_4 -3 + 262, 1, -106.2, -602.9 , 0 );
setMoveKey( spep_4 -3 + 264, 1, -109.4, -607.3 , 0 );
setMoveKey( spep_4 -3 + 266, 1, -107.8, -606.9 , 0 );
setMoveKey( spep_4 -3 + 268, 1, -109.4, -609.8 , 0 );
setMoveKey( spep_4 -3 + 269, 1, -109.4, -609.8 , 0 );

setScaleKey( spep_4 + 0, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 21, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 22, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 24, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 26, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 28, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 30, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 32, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 36, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 38, 1, 2.67, 2.67 );
setScaleKey( spep_4 -3 + 40, 1, 2.67, 2.67 );
setScaleKey( spep_4 -3 + 42, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 44, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 46, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 48, 1, 2.69, 2.69 );
setScaleKey( spep_4 -3 + 50, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 52, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 54, 1, 2.71, 2.71 );
setScaleKey( spep_4 -3 + 56, 1, 2.71, 2.71 );
setScaleKey( spep_4 -3 + 58, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 62, 1, 2.72, 2.72 );
setScaleKey( spep_4 -3 + 64, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 66, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 68, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 70, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 72, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 74, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 76, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 80, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 82, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 84, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 86, 1, 2.78, 2.78 );
setScaleKey( spep_4 -3 + 88, 1, 2.78, 2.78 );
setScaleKey( spep_4 -3 + 91, 1, 2.79, 2.79 );
setScaleKey( spep_4 -3 + 92, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 94, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 98, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 100, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 102, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 104, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 106, 1, 2.6, 2.6 );
setScaleKey( spep_4 -3 + 108, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 110, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 112, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 114, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 116, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 118, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 120, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 124, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 126, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 128, 1, 2.65, 2.65 );
setScaleKey( spep_4 -3 + 131, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 132, 1, 3.03, 3.03 );
setScaleKey( spep_4 -3 + 134, 1, 3.04, 3.04 );
setScaleKey( spep_4 -3 + 136, 1, 3.04, 3.04 );
setScaleKey( spep_4 -3 + 138, 1, 3.05, 3.05 );
setScaleKey( spep_4 -3 + 140, 1, 3.05, 3.05 );
setScaleKey( spep_4 -3 + 142, 1, 3.06, 3.06 );
setScaleKey( spep_4 -3 + 144, 1, 3.07, 3.07 );
setScaleKey( spep_4 -3 + 146, 1, 3.07, 3.07 );
setScaleKey( spep_4 -3 + 148, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 150, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 152, 1, 3.09, 3.09 );
setScaleKey( spep_4 -3 + 154, 1, 3.09, 3.09 );
setScaleKey( spep_4 -3 + 156, 1, 3.1, 3.1 );
setScaleKey( spep_4 -3 + 158, 1, 3.1, 3.1 );
setScaleKey( spep_4 -3 + 160, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 162, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 164, 1, 3.12, 3.12 );
setScaleKey( spep_4 -3 + 166, 1, 3.12, 3.12 );
setScaleKey( spep_4 -3 + 168, 1, 3.13, 3.13 );
setScaleKey( spep_4 -3 + 170, 1, 3.13, 3.13 );
setScaleKey( spep_4 -3 + 172, 1, 3.14, 3.14 );
setScaleKey( spep_4 -3 + 174, 1, 3.14, 3.14 );
setScaleKey( spep_4 -3 + 176, 1, 3.15, 3.15 );
setScaleKey( spep_4 -3 + 178, 1, 3.15, 3.15 );
setScaleKey( spep_4 -3 + 180, 1, 3.16, 3.16 );
setScaleKey( spep_4 -3 + 182, 1, 3.17, 3.17 );
setScaleKey( spep_4 -3 + 184, 1, 3.17, 3.17 );
setScaleKey( spep_4 -3 + 186, 1, 3.18, 3.18 );
setScaleKey( spep_4 -3 + 188, 1, 3.18, 3.18 );
setScaleKey( spep_4 -3 + 190, 1, 3.19, 3.19 );
setScaleKey( spep_4 -3 + 192, 1, 3.19, 3.19 );
setScaleKey( spep_4 -3 + 194, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 196, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 198, 1, 3.21, 3.21 );
setScaleKey( spep_4 -3 + 200, 1, 3.21, 3.21 );
setScaleKey( spep_4 -3 + 202, 1, 3.22, 3.22 );
setScaleKey( spep_4 -3 + 204, 1, 3.22, 3.22 );
setScaleKey( spep_4 -3 + 206, 1, 3.23, 3.23 );
setScaleKey( spep_4 -3 + 208, 1, 3.23, 3.23 );
setScaleKey( spep_4 -3 + 210, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 212, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 214, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 216, 1, 3.26, 3.26 );
setScaleKey( spep_4 -3 + 219, 1, 3.26, 3.26 );
setScaleKey( spep_4 -3 + 220, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 269, 1, 1.91, 1.91 );

setRotateKey( spep_4 -3 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 21, 1, 0 );
setRotateKey( spep_4 -3 + 22, 1, 6.3 );
setRotateKey( spep_4 -3 + 24, 1, 6.6 );
setRotateKey( spep_4 -3 + 26, 1, 6.8 );
setRotateKey( spep_4 -3 + 28, 1, 6.9 );
setRotateKey( spep_4 -3 + 30, 1, 7.1 );
setRotateKey( spep_4 -3 + 32, 1, 7.3 );
setRotateKey( spep_4 -3 + 34, 1, 7.4 );
setRotateKey( spep_4 -3 + 36, 1, 7.6 );
setRotateKey( spep_4 -3 + 38, 1, 7.8 );
setRotateKey( spep_4 -3 + 40, 1, 7.9 );
setRotateKey( spep_4 -3 + 42, 1, 8.1 );
setRotateKey( spep_4 -3 + 44, 1, 8.2 );
setRotateKey( spep_4 -3 + 46, 1, 8.4 );
setRotateKey( spep_4 -3 + 48, 1, 8.6 );
setRotateKey( spep_4 -3 + 50, 1, 8.7 );
setRotateKey( spep_4 -3 + 52, 1, 8.9 );
setRotateKey( spep_4 -3 + 54, 1, 9.1 );
setRotateKey( spep_4 -3 + 56, 1, 9.2 );
setRotateKey( spep_4 -3 + 58, 1, 9.4 );
setRotateKey( spep_4 -3 + 60, 1, 9.5 );
setRotateKey( spep_4 -3 + 62, 1, 9.7 );
setRotateKey( spep_4 -3 + 64, 1, 9.9 );
setRotateKey( spep_4 -3 + 66, 1, 10 );
setRotateKey( spep_4 -3 + 68, 1, 10.2 );
setRotateKey( spep_4 -3 + 70, 1, 10.4 );
setRotateKey( spep_4 -3 + 72, 1, 10.5 );
setRotateKey( spep_4 -3 + 74, 1, 10.7 );
setRotateKey( spep_4 -3 + 76, 1, 10.9 );
setRotateKey( spep_4 -3 + 78, 1, 11 );
setRotateKey( spep_4 -3 + 80, 1, 11.2 );
setRotateKey( spep_4 -3 + 82, 1, 11.3 );
setRotateKey( spep_4 -3 + 84, 1, 11.5 );
setRotateKey( spep_4 -3 + 86, 1, 11.7 );
setRotateKey( spep_4 -3 + 88, 1, 11.8 );
setRotateKey( spep_4 -3 + 91, 1, 12 );
setRotateKey( spep_4 -3 + 92, 1, -53.7 );
setRotateKey( spep_4 -3 + 94, 1, -54.4 );
setRotateKey( spep_4 -3 + 96, 1, -55.1 );
setRotateKey( spep_4 -3 + 98, 1, -55.8 );
setRotateKey( spep_4 -3 + 100, 1, -56.5 );
setRotateKey( spep_4 -3 + 102, 1, -57.2 );
setRotateKey( spep_4 -3 + 104, 1, -57.9 );
setRotateKey( spep_4 -3 + 106, 1, -58.6 );
setRotateKey( spep_4 -3 + 108, 1, -59.3 );
setRotateKey( spep_4 -3 + 110, 1, -60 );
setRotateKey( spep_4 -3 + 112, 1, -60.7 );
setRotateKey( spep_4 -3 + 114, 1, -61.4 );
setRotateKey( spep_4 -3 + 116, 1, -62.1 );
setRotateKey( spep_4 -3 + 118, 1, -62.8 );
setRotateKey( spep_4 -3 + 120, 1, -63.5 );
setRotateKey( spep_4 -3 + 122, 1, -64.2 );
setRotateKey( spep_4 -3 + 124, 1, -64.9 );
setRotateKey( spep_4 -3 + 126, 1, -65.6 );
setRotateKey( spep_4 -3 + 128, 1, -66.3 );
setRotateKey( spep_4 -3 + 131, 1, -67 );
setRotateKey( spep_4 -3 + 132, 1, -8.3 );
setRotateKey( spep_4 -3 + 134, 1, -8.2 );
setRotateKey( spep_4 -3 + 136, 1, -7.8 );
setRotateKey( spep_4 -3 + 138, 1, -7.5 );
setRotateKey( spep_4 -3 + 140, 1, -7.1 );
setRotateKey( spep_4 -3 + 142, 1, -6.8 );
setRotateKey( spep_4 -3 + 144, 1, -6.4 );
setRotateKey( spep_4 -3 + 146, 1, -6.1 );
setRotateKey( spep_4 -3 + 148, 1, -5.8 );
setRotateKey( spep_4 -3 + 150, 1, -5.4 );
setRotateKey( spep_4 -3 + 152, 1, -5.1 );
setRotateKey( spep_4 -3 + 154, 1, -4.7 );
setRotateKey( spep_4 -3 + 156, 1, -4.4 );
setRotateKey( spep_4 -3 + 158, 1, -4 );
setRotateKey( spep_4 -3 + 160, 1, -3.7 );
setRotateKey( spep_4 -3 + 162, 1, -3.4 );
setRotateKey( spep_4 -3 + 164, 1, -3 );
setRotateKey( spep_4 -3 + 166, 1, -2.7 );
setRotateKey( spep_4 -3 + 168, 1, -2.3 );
setRotateKey( spep_4 -3 + 170, 1, -2 );
setRotateKey( spep_4 -3 + 172, 1, -1.6 );
setRotateKey( spep_4 -3 + 174, 1, -1.3 );
setRotateKey( spep_4 -3 + 176, 1, -1 );
setRotateKey( spep_4 -3 + 178, 1, -0.6 );
setRotateKey( spep_4 -3 + 180, 1, -0.3 );
setRotateKey( spep_4 -3 + 182, 1, 0.1 );
setRotateKey( spep_4 -3 + 184, 1, 0.4 );
setRotateKey( spep_4 -3 + 186, 1, 0.8 );
setRotateKey( spep_4 -3 + 188, 1, 1.1 );
setRotateKey( spep_4 -3 + 190, 1, 1.4 );
setRotateKey( spep_4 -3 + 192, 1, 1.8 );
setRotateKey( spep_4 -3 + 194, 1, 2.1 );
setRotateKey( spep_4 -3 + 196, 1, 2.5 );
setRotateKey( spep_4 -3 + 198, 1, 2.8 );
setRotateKey( spep_4 -3 + 200, 1, 3.1 );
setRotateKey( spep_4 -3 + 202, 1, 3.5 );
setRotateKey( spep_4 -3 + 204, 1, 3.8 );
setRotateKey( spep_4 -3 + 206, 1, 4.2 );
setRotateKey( spep_4 -3 + 208, 1, 4.5 );
setRotateKey( spep_4 -3 + 210, 1, 4.9 );
setRotateKey( spep_4 -3 + 212, 1, 5.2 );
setRotateKey( spep_4 -3 + 214, 1, 5.5 );
setRotateKey( spep_4 -3 + 216, 1, 5.9 );
setRotateKey( spep_4 -3 + 219, 1, 6.2 );
setRotateKey( spep_4 -3 + 220, 1, 47.9 );
setRotateKey( spep_4 -3 + 269, 1, 47.9 );

-- ** 音 ** --
--オーラ
SE021 = playSeVer2( spep_4 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 22, SE021, 32 );
SE022 = playSeVer2( spep_4 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE022, 32 );
SE024 = playSeVer2( spep_4 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 70, SE024, 32 );
SE028 = playSeVer2( spep_4 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 94, SE028, 32 );
SE029 = playSeVer2( spep_4 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 118, SE029, 32 );
SE035 = playSeVer2( spep_4 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 166, SE035, 32 );
SE037 = playSeVer2( spep_4 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 190, SE037, 32 );
SE033 = playSeVer2( spep_4 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 142, SE033, 32 );
SE039 = playSeVer2( spep_4 + 214, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 214, SE039, 32 );
SE043 = playSeVer2( spep_4 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 238, SE043, 32 );
SE044 = playSeVer2( spep_4 + 262, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 262, SE044, 71 );

--初手パンチ
SE018 = playSeVer2( spep_4 + 10, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 12, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12, SE019, 63 );
SE020 = playSeVer2( spep_4 + 16, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE020, 85 );

--振りかぶる
SE023 = playSeVer2( spep_4 + 50, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 50, SE023, 85 );

--パンチ
SE025 = playSeVer2( spep_4 + 86, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 86, 1359, "",spep_4 + 118, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 86, SE026, 72 );
SE027 = playSeVer2( spep_4 + 90, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 90, SE027, 110 );

--パンチ２
SE030 = playSeVer2( spep_4 + 132, 1010, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 132, 1359, "",spep_4 + 162, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 132, SE031, 66 );
SE032 = playSeVer2( spep_4 + 138, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 138, SE032, 117 );

--振りかぶる
SE034 = playSeVer2( spep_4 + 160, 1116, "",spep_4 + 204, 0, 20, -1);

--ラスト叩きつけ
SE038 = playSeVer2( spep_4 + 214, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 214, SE038, 88 );
SE040 = playSeVer2( spep_4 + 216, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 216, SE040, 86 );
SE041 = playSeVer2( spep_4 + 218, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE041, 87 );
SE042 = playSeVer2( spep_4 + 218, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE042, 86 );

--瓦礫音
SE036 = playSeVer2( spep_4 + 264, 1168, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_4 + 264, SE036, 60 );
setStartTimeMs( SE036,  1233 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 266 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 266;


------------------------------------------------------
-- 地面に拳を叩きつけている状態(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --地面に拳を叩きつけている状態   ef_005
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 116, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 116 -1, finish, 255 );
setEffAlphaKey( spep_5 + 116, finish, 0 );

-- ** 音 ** --
--オーラ
SE045 = playSeVer2( spep_5 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 20, SE045, 71 );
SE046 = playSeVer2( spep_5 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 44, SE046, 71 );
SE047 = playSeVer2( spep_5 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 68, SE047, 71 );
SE048 = playSeVer2( spep_5 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 92, SE048, 71 );
-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 );
endPhase( spep_5 + 106 );


end