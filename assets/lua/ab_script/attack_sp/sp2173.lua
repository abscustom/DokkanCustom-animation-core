--1021810:ビーデル_ビーデルラッシュ(長髪ver)_sp2173
--sp_effect_b1_00147
--sp2173

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
SP_01 = 157139;  --ヘリから登場 ef_001 ビーデル長髪
SP_02 = 157140;  -- ef_001_bg 背景
SP_03 = 157143;  --着地～突進 ef_002 ビーデル長髪
SP_04 = 157144;  -- ef_002_bg 背景
SP_05 = 157145;  -- ef_002_ct 描き文字
SP_06 = 157147;  --ラッシュ ef_003 ビーデル長髪
SP_07 = 157148;  -- ef_003_bg 背景
SP_08 = 157149;  -- ef_003_ct 描き文字
SP_09 = 157152;  --膝蹴り準備	ef_004 ビーデル長髪
SP_10 = 157153;  -- ef_004_bg 背景
SP_11 = 157156;  --膝蹴り ef_005 ビーデル長髪
SP_12 = 157157;  -- ef_005_bg 背景
SP_13 = 157158;  -- ef_005_ct 描き文字
SP_14 = 157161;  --フィニッシュ ef_006 ビーデル長髪
SP_15 = 157162;  -- ef_006_bg 背景

--敵側
SP_01r = 157141;  -- ef_001_e ビーデル長髪　敵側
SP_06r = 157150;  -- ef_003_e ビーデル長髪　敵側
SP_09r = 157154;  -- ef_004_e ビーデル長髪　敵側
SP_11r = 157159;  -- ef_005_e ビーデル長髪　敵側
SP_14r = 157163;  -- ef_006_e ビーデル長髪　敵側

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
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ヘリから登場(160F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --リから登場	ef_001		ビーデル長髪
setEffMoveKey( spep_0 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 160, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_b, 0 );
setEffRotateKey( spep_0 + 160, kick_b, 0 );
setEffAlphaKey( spep_0 + 0, kick_b, 255 );
setEffAlphaKey( spep_0 + 160, kick_b, 255 );

kick_e = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ef_001_bg		背景
setEffMoveKey( spep_0 + 0, kick_e, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, kick_e, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kick_e, 1.0, 1.0 );
setEffScaleKey( spep_0 + 160, kick_e, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_e, 0 );
setEffRotateKey( spep_0 + 160, kick_e, 0 );
setEffAlphaKey( spep_0 + 0, kick_e, 255 );
setEffAlphaKey( spep_0 + 160, kick_e, 255 );

spep_x = spep_0 + 68;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--ヘリ上昇
SE001 = playSe( spep_0 + 0, 1278 );
stopSe( spep_0 + 106, SE001, 14 );

--ヘリ上昇
SE002 = playSe( spep_0 + 0, 1167 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );
setTimeStretch( SE002, 1.11, 10, 1 );

--フレア
SE003 = playSe( spep_0 + 38, 1179 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 123 );

--ヘリから降りてくる
SE004 = playSe( spep_0 + 56, 1182 );

--ヘリから降りてくる
SE005 = playSe( spep_0 + 56, 1117 );
setSeVolumeByWorkId( spep_0 + 56, SE005, 126 );

--ヘリから降りてくる
SE006 = playSe( spep_0 + 56, 1183 );
stopSe( spep_0 +160 + 8, SE006, 0 );

--顔カットイン
SE007 = playSe( spep_0 + 80, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 160 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 160;


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

--着地
SE009 = playSe( spep_1 + 90, 1207,"",0.6 );
setSeVolumeByWorkId( spep_1 + 90, SE009, 0 );
setSeVolumeByWorkId( spep_1 + 91, SE009, 2 );
setSeVolumeByWorkId( spep_1 + 92, SE009, 4 );
setSeVolumeByWorkId( spep_1 + 93, SE009, 8 );
setSeVolumeByWorkId( spep_1 + 94, SE009, 10 );
setSeVolumeByWorkId( spep_1 + 95, SE009, 12 );
setSeVolumeByWorkId( spep_1 + 96, SE009, 16 );
setSeVolumeByWorkId( spep_1 + 97, SE009, 20 );
setSeVolumeByWorkId( spep_1 + 98, SE009, 40 );
setSeVolumeByWorkId( spep_1 + 99, SE009, 60 );
setSeVolumeByWorkId( spep_1 + 100, SE009, 80 );
setSeVolumeByWorkId( spep_1 + 101, SE009, 90 );
setSeVolumeByWorkId( spep_1 + 102, SE009, 100 );
stopSe( spep_1 +94 + 20, SE009, 14 );
setStartTimeMs( SE009,  150 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 着地～突進(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
landing_b = entryEffectLife( spep_2 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --着地～突進	ef_002		ビーデル長髪
setEffMoveKey( spep_2 + 0, landing_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, landing_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, landing_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, landing_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing_b, 0 );
setEffRotateKey( spep_2 + 96, landing_b, 0 );
setEffAlphaKey( spep_2 + 0, landing_b, 255 );
setEffAlphaKey( spep_2 + 96 -1, landing_b, 255 );
setEffAlphaKey( spep_2 + 96, landing_b, 0 );

landing_e = entryEffectLife( spep_2 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --ef_002_bg		背景
setEffMoveKey( spep_2 + 0, landing_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, landing_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, landing_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, landing_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing_e, 0 );
setEffRotateKey( spep_2 + 96, landing_e, 0 );
setEffAlphaKey( spep_2 + 0, landing_e, 255 );
setEffAlphaKey( spep_2 + 96 -1, landing_e, 255 );
setEffAlphaKey( spep_2 + 96, landing_e, 0 );

landing_f = entryEffectLife( spep_2 + 0, SP_05, 96, 0x110, -1, 0, 0, 0 );  --	ef_002_ct		描き文字
setEffMoveKey( spep_2 + 0, landing_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, landing_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, landing_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, landing_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing_f, 0 );
setEffRotateKey( spep_2 + 96, landing_f, 0 );
setEffAlphaKey( spep_2 + 0, landing_f, 255 );
setEffAlphaKey( spep_2 + 96 -1, landing_f, 255 );
setEffAlphaKey( spep_2 + 96, landing_f, 0 );

-- ** 音 ** --
--着地
SE010 = playSe( spep_2 + 14, 1108 );
setSeVolumeByWorkId( spep_2 + 14, SE010, 172 );

--着地
SE011 = playSe( spep_2 + 18, 1107 );
setSeVolumeByWorkId( spep_2 + 18, SE011, 166 );

--カメラズームアウト
SE012 = playSe( spep_2 + 36, 1072 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 76 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE013, 0);
    --stopSe( SP_dodge - 12, SE014, 0);
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

-- ** 音 ** --
--前方ダッシュ
SE013 = playSe( spep_2 + 72, 1182 );

--前方ダッシュ
SE014 = playSe( spep_2 + 72, 9 );
stopSe( spep_2 +96 + 16, SE014, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;


------------------------------------------------------
-- ラッシュ(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
rush_b = entryEffectLife( spep_3 + 0, SP_06, 76, 0x100, -1, 0, 0, 0 );  --ラッシュ	ef_003		ビーデル長髪
setEffMoveKey( spep_3 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_b, 0 );
setEffRotateKey( spep_3 + 76, rush_b, 0 );
setEffAlphaKey( spep_3 + 0, rush_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, rush_b, 255 );
setEffAlphaKey( spep_3 + 76, rush_b, 0 );

rush_e = entryEffectLife( spep_3 + 0, SP_07, 76, 0x80, -1, 0, 0, 0 );  --ef_003_bg		背景
setEffMoveKey( spep_3 + 0, rush_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, rush_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_e, 0 );
setEffRotateKey( spep_3 + 76, rush_e, 0 );
setEffAlphaKey( spep_3 + 0, rush_e, 255 );
setEffAlphaKey( spep_3 + 76 -1, rush_e, 255 );
setEffAlphaKey( spep_3 + 76, rush_e, 0 );

rush_f = entryEffectLife( spep_3 + 0, SP_08, 76, 0x100, -1, 0, 0, 0 );  --ef_003_ct		描き文字
setEffMoveKey( spep_3 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 76, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, rush_f, 255 );
setEffAlphaKey( spep_3 + 76, rush_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 76, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3 -3 + 16, 1, 108 );

a1 = 20;
setMoveKey( spep_3 + 0, 1, 858.8 -a1, -81.1 , 0 );
setMoveKey( spep_3 + 1, 1, 753.6 -a1, -81.1 , 0 );
setMoveKey( spep_3 + 2, 1, 648.5 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 543.3 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 438.2 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 333 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 227.9 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 15, 1, 122.7 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 91 -a1, -2.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 112.9 -a1, -37 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 109.6 -a1, -11.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 99.2 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 112.4 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 117.5 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 122.7 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 152.5 -a1, -2.5 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 168.6 -a1, -36.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 159.7 -a1, -11.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 144 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 153.4 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 154.9 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 156.3 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 173.5 -a1, -17.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 169.8 -a1, -20.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 166 -a1, -24 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 151.7 -a1, -13.1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 169.7 -a1, -42.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 164.7 -a1, -15.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 152.7 -a1, -33.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 257.2 -a1, 27.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 225 -a1, 9.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 192.9 -a1, -8.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 179.7 -a1, -13 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 202.3 -a1, -42 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 202 -a1, -15 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 194.7 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 199.3 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 204 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 208.7 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 213.3 -a1, -32.9 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 213.3 -a1, -32.9 , 0 );

s1 = 0.2;
s2 = 0.4;
setScaleKey( spep_3 + 0, 1, 1.7 +s1, 1.7 +s1 );
setScaleKey( spep_3 -3 + 15, 1, 1.7 +s1, 1.7 +s1 );
setScaleKey( spep_3 -3 + 16, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 18, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 20, 1, 1.76 +s2, 1.76 +s2 );
setScaleKey( spep_3 -3 + 22, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 28, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 30, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 32, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 34, 1, 1.76 +s2, 1.76 +s2 );
setScaleKey( spep_3 -3 + 36, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 42, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 44, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 46, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 48, 1, 1.76 +s2, 1.76 +s2 );
setScaleKey( spep_3 -3 + 50, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 56, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 58, 1, 2.72 +s2, 2.72 +s2 );
setScaleKey( spep_3 -3 + 60, 1, 2.38 +s2, 2.38 +s2 );
setScaleKey( spep_3 -3 + 62, 1, 2.04 +s2, 2.04 +s2 );
setScaleKey( spep_3 -3 + 64, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 79, 1, 1.7 +s2, 1.7 +s2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 15, 1, 0 );
setRotateKey( spep_3 -3 + 16, 1, -12 );
setRotateKey( spep_3 -3 + 28, 1, -12 );
setRotateKey( spep_3 -3 + 30, 1, 4 );
setRotateKey( spep_3 -3 + 48, 1, 4 );
setRotateKey( spep_3 -3 + 50, 1, -20 );
setRotateKey( spep_3 -3 + 62, 1, -20 );
setRotateKey( spep_3 -3 + 64, 1, 4 );
setRotateKey( spep_3 -3 + 79, 1, 4 );

-- ** 音 ** --
--ラッシュ
SE015 = playSe( spep_3 + 8, 1189 );

--ラッシュ
SE016 = playSe( spep_3 + 14, 1000 );

--ラッシュ
SE017 = playSe( spep_3 + 14, 1110 );

--ラッシュ
SE018 = playSe( spep_3 + 34, 1009 );
setSeVolumeByWorkId( spep_3 + 34, SE018, 81 );

--ラッシュ
SE019 = playSe( spep_3 + 34, 1000 );

--ラッシュ
SE020 = playSe( spep_3 + 48, 1009 );

--ラッシュ
SE021 = playSe( spep_3 + 48, 1010 );

--ラッシュ
SE022 = playSe( spep_3 + 64, 1110 );

--ラッシュ
SE023 = playSe( spep_3 + 64, 1012 );

--ラッシュ
SE024 = playSe( spep_3 + 64, 1007 );
setSeVolumeByWorkId( spep_3 + 64, SE024, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 膝蹴り準備(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
knee_f = entryEffectLife( spep_4 + 0, SP_09, 56, 0x100, -1, 0, 0, 0 );  --膝蹴り準備	ef_004		ビーデル長髪
setEffMoveKey( spep_4 + 0, knee_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, knee_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, knee_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, knee_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knee_f, 0 );
setEffRotateKey( spep_4 + 56, knee_f, 0 );
setEffAlphaKey( spep_4 + 0, knee_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, knee_f, 255 );
setEffAlphaKey( spep_4 + 56, knee_f, 0 );

knee_b = entryEffectLife( spep_4 + 0, SP_10, 56, 0x80, -1, 0, 0, 0 );  --	ef_004_bg		背景
setEffMoveKey( spep_4 + 0, knee_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, knee_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, knee_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, knee_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knee_b, 0 );
setEffRotateKey( spep_4 + 56, knee_b, 0 );
setEffAlphaKey( spep_4 + 0, knee_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, knee_b, 255 );
setEffAlphaKey( spep_4 + 56, knee_b, 0 );

-- ** 音 ** --
--上昇
SE025 = playSe( spep_4 + 0, 1278 );
setSeVolumeByWorkId( spep_4 + 0, SE025, 73 );
stopSe( spep_4 +56 + 10, SE025, 8 );

--上昇
SE026 = playSe( spep_4 + 0, 1116 );
setSeVolumeByWorkId( spep_4 + 0, SE026, 135 );
stopSe( spep_4 + 38, SE026, 20 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 膝蹴り(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kick_b = entryEffectLife( spep_5 + 0, SP_11, 56, 0x100, -1, 0, 0, 0 );  --膝蹴り	ef_005		ビーデル長髪
setEffMoveKey( spep_5 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 56, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 56 -1, kick_b, 255 );
setEffAlphaKey( spep_5 + 56, kick_b, 0 );

kick_e = entryEffectLife( spep_5 + 0, SP_12, 56, 0x80, -1, 0, 0, 0 );  --ef_005_bg		背景
setEffMoveKey( spep_5 + 0, kick_e, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kick_e, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick_e, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_e, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_e, 0 );
setEffRotateKey( spep_5 + 56, kick_e, 0 );
setEffAlphaKey( spep_5 + 0, kick_e, 255 );
setEffAlphaKey( spep_5 + 56 -1, kick_e, 255 );
setEffAlphaKey( spep_5 + 56, kick_e, 0 );

kick_f = entryEffectLife( spep_5 + 0, SP_13, 56, 0x100, -1, 0, 0, 0 );  --ef_005_ct		描き文字
setEffMoveKey( spep_5 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 56, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, kick_f, 255 );
setEffAlphaKey( spep_5 + 56, kick_f, 0 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_5 + 9, 906, 19, 0x100, -1, 0, 25, 150 );  --集中線
setEffShake( spep_5 + 9, shuchusen_1, 90, 20 );
setEffMoveKey( spep_5 + 9, shuchusen_1, 25, 150 , 0 );
setEffMoveKey( spep_5 + 28, shuchusen_1, 25, 150 , 0 );
setEffScaleKey( spep_5 + 9, shuchusen_1, 1.4, 1.8 );
setEffScaleKey( spep_5 + 28, shuchusen_1, 1.4, 1.8 );
setEffRotateKey( spep_5 + 9, shuchusen_1, 0 );
setEffRotateKey( spep_5 + 28, shuchusen_1, 0 );
setEffAlphaKey( spep_5 + 9, shuchusen_1, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 -3 + 12, 1, 106 );

setMoveKey( spep_5 + 0, 1, -111.9, 9.2 , 0 );
--setMoveKey( spep_5 + 1, 1, -111.9, 9.2 , 0 );
--setMoveKey( spep_5 + 2, 1, -65.1, 47.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -18.2, 86.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 28.6, 125.4 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 75.4, 164.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 89.6, 178.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 73.5, 158.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 98.1, 161 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 77.3, 196.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 95, 196.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 79.8, 175.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 105.5, 177.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 86.2, 213 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 89, 217.4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 91.7, 221.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 94.4, 226.1 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 103.7, 237.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 113, 248.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 122.2, 259.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 131.5, 270.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 140.8, 282.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 150.1, 293.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 159.4, 304.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 168.6, 315.8 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 177.9, 327 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 187.2, 338.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 196.5, 349.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 205.7, 360.6 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 215, 371.8 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 215, 371.8 , 0 );

s3 = 0.6;
s4 = 0.4;
setScaleKey( spep_5 + 0, 1, 1.59 +s3, 1.59 +s3 );
--setScaleKey( spep_5 + 1, 1, 1.35, 1.35 );
--setScaleKey( spep_5 + 2, 1, 1.59, 1.59 );
--setScaleKey( spep_5 -3 + 6, 1, 1.5, 1.5 );
--setScaleKey( spep_5 -3 + 8, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 11, 1, 1.59 +s3, 1.59 +s3 );
setScaleKey( spep_5 -3 + 12, 1, 1.95 +s4, 1.95 +s4 );
setScaleKey( spep_5 -3 + 14, 1, 1.84 +s4, 1.84 +s4 );
setScaleKey( spep_5 -3 + 16, 1, 1.73 +s4, 1.73 +s4 );
setScaleKey( spep_5 -3 + 18, 1, 1.61 +s4, 1.61 +s4 );
setScaleKey( spep_5 -3 + 20, 1, 1.5 +s4, 1.5 +s4 );
setScaleKey( spep_5 -3 + 59, 1, 1.5 +s4, 1.5 +s4 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, -7.5 );
setRotateKey( spep_5 + 2, 1, 8.2 );
setRotateKey( spep_5 -3 + 6, 1, 0 );
setRotateKey( spep_5 -3 + 8, 1, 7 );
setRotateKey( spep_5 -3 + 11, 1, -9.7 );
setRotateKey( spep_5 -3 + 12, 1, -31.3 );
setRotateKey( spep_5 -3 + 14, 1, -30.7 );
setRotateKey( spep_5 -3 + 16, 1, -30 );
setRotateKey( spep_5 -3 + 18, 1, -29.3 );
setRotateKey( spep_5 -3 + 20, 1, -28.7 );
setRotateKey( spep_5 -3 + 22, 1, -28 );
setRotateKey( spep_5 -3 + 24, 1, -27.3 );
setRotateKey( spep_5 -3 + 26, 1, -26.7 );
setRotateKey( spep_5 -3 + 28, 1, -26 );
setRotateKey( spep_5 -3 + 30, 1, -25.4 );
setRotateKey( spep_5 -3 + 32, 1, -24.7 );
setRotateKey( spep_5 -3 + 34, 1, -24 );
setRotateKey( spep_5 -3 + 36, 1, -23.4 );
setRotateKey( spep_5 -3 + 38, 1, -22.7 );
setRotateKey( spep_5 -3 + 40, 1, -22 );
setRotateKey( spep_5 -3 + 42, 1, -21.4 );
setRotateKey( spep_5 -3 + 44, 1, -20.7 );
setRotateKey( spep_5 -3 + 46, 1, -20 );
setRotateKey( spep_5 -3 + 48, 1, -19.4 );
setRotateKey( spep_5 -3 + 50, 1, -18.7 );
setRotateKey( spep_5 -3 + 52, 1, -18 );
setRotateKey( spep_5 -3 + 54, 1, -17.4 );
setRotateKey( spep_5 -3 + 56, 1, -16.7 );
setRotateKey( spep_5 -3 + 58, 1, -16 );
setRotateKey( spep_5 -3 + 59, 1, -16 );

-- ** 音 ** --
--膝蹴り
SE027 = playSe( spep_5 + 8, 1003 );

--膝蹴り
SE028 = playSe( spep_5 + 12, 1187 );
setSeVolumeByWorkId( spep_5 + 16, SE028, 81 );

--膝蹴り
SE029 = playSe( spep_5 + 12, 1110 );
setSeVolumeByWorkId( spep_5 + 16, SE029, 70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --フィニッシュ	ef_006		ビーデル長髪
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 176, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 176, finish_f, 255 );

finnish_b = entryEffect( spep_6 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --	ef_006_bg		背景
setEffMoveKey( spep_6 + 0, finnish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finnish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finnish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finnish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finnish_b, 0 );
setEffRotateKey( spep_6 + 176, finnish_b, 0 );
setEffAlphaKey( spep_6 + 0, finnish_b, 255 );
setEffAlphaKey( spep_6 + 176, finnish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 32, 1, 1 );
setDisp( spep_6 -3 + 179, 1, 0 );
changeAnime( spep_6 -3 + 32, 1, 106 );

setMoveKey( spep_6 -3 + 32, 1, 125.1, 746.9 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 125.1, 746.9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 125, 648.6 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 125, 550.4 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 125, 452.1 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 125, 353.9 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 125, 255.6 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 125, 157.4 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 126.1, 56 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 129.8, -53 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 135.8, -108.4 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 143.6, -170.4 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 152.6, -169.3 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 162.1, -166.4 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 171.3, -160.5 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 179.5, -151 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 186, -200 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 190.1, -247.3 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 191.5, -289.1 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 191.5, -281.6 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 191.5, -274.1 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 191.5, -266.6 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 191.5, -274.6 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 191.5, -282.6 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 191.5, -290.6 , 0 );
setMoveKey( spep_6 -3 + 179, 1, 191.5, -290.6 , 0 );

setScaleKey( spep_6 -3 + 32, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 66, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 68, 1, 0.71, 0.71 );
setScaleKey( spep_6 -3 + 70, 1, 0.73, 0.73 );
setScaleKey( spep_6 -3 + 72, 1, 0.76, 0.76 );
setScaleKey( spep_6 -3 + 74, 1, 0.8, 0.8 );
setScaleKey( spep_6 -3 + 76, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 78, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 80, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_6 -3 + 84, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 86, 1, 1.04, 1.04 );
setScaleKey( spep_6 -3 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 179, 1, 1.05, 1.05 );

setRotateKey( spep_6 -3 + 32, 1, 60.7 );
setRotateKey( spep_6 -3 + 34, 1, 60.6 );
setRotateKey( spep_6 -3 + 70, 1, 60.6 );
setRotateKey( spep_6 -3 + 72, 1, 48.7 );
setRotateKey( spep_6 -3 + 74, 1, 36.7 );
setRotateKey( spep_6 -3 + 76, 1, 35.6 );
setRotateKey( spep_6 -3 + 78, 1, 34.6 );
setRotateKey( spep_6 -3 + 80, 1, 33.5 );
setRotateKey( spep_6 -3 + 82, 1, 32.4 );
setRotateKey( spep_6 -3 + 84, 1, 33.8 );
setRotateKey( spep_6 -3 + 86, 1, 35.3 );
setRotateKey( spep_6 -3 + 88, 1, 36.7 );
setRotateKey( spep_6 -3 + 179, 1, 36.7 );

-- ** 音 ** --
--着地
SE030 = playSe( spep_6 + 16, 1107 );
setSeVolumeByWorkId( spep_6 + 16, SE030, 130 );

--着地
SE031 = playSe( spep_6 + 20, 1106 );

--後ろで敵落下
SE032 = playSe( spep_6 + 64, 1007 );
setSeVolumeByWorkId( spep_6 + 64, SE032, 60 );

--後ろで敵落下
SE033 = playSe( spep_6 + 64, 1002 );
setSeVolumeByWorkId( spep_6 + 64, SE033, 56 );

--手を払う
SE034 = playSe( spep_6 + 66, 1111 );
setSeVolumeByWorkId( spep_6 + 66, SE034, 126 );
stopSe( spep_6 + 78, SE034, 2 );
setPitch( spep_6 + 66, SE034, 400 );
setTimeStretch( SE034, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 66, SE034, 600, 24000 );

--手を払う
SE035 = playSe( spep_6 + 68, 1108 );
setSeVolumeByWorkId( spep_6 + 68, SE035, 126 );
setPitch( spep_6 + 68, SE035, 200 );
setTimeStretch( SE035, 1.13, 10, 1 );

--後ろで敵落下
SE036 = playSe( spep_6 + 80, 1047 );
setSeVolumeByWorkId( spep_6 + 80, SE036, 61 );

--手を払う
SE037 = playSe( spep_6 + 86, 1111 );
setSeVolumeByWorkId( spep_6 + 86, SE037, 126 );
stopSe( spep_6 + 98, SE037, 2 );
setPitch( spep_6 + 86, SE037, 400 );
setTimeStretch( SE037, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 86, SE037, 600, 24000 );

--手を払う
SE038 = playSe( spep_6 + 88, 1108 );
setSeVolumeByWorkId( spep_6 + 88, SE038, 126 );
setPitch( spep_6 + 88, SE038, 200 );
setTimeStretch( SE038, 1.13, 10, 1 );

--手を払う
SE039 = playSe( spep_6 + 108, 1111 );
setSeVolumeByWorkId( spep_6 + 108, SE039, 126 );
stopSe( spep_6 + 120, SE039, 2 );
setPitch( spep_6 + 108, SE039, 400 );
setTimeStretch( SE039, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 108, SE039, 600, 24000 );

--手を払う
SE040 = playSe( spep_6 + 110, 1108 );
setSeVolumeByWorkId( spep_6 + 110, SE040, 126 );
setPitch( spep_6 + 110, SE040, 200 );
setTimeStretch( SE040, 1.13, 10, 1 );

--手を払う
SE041 = playSe( spep_6 + 130, 1111 );
setSeVolumeByWorkId( spep_6 + 130, SE041, 126 );
stopSe( spep_6 + 140, SE041, 4 );
setPitch( spep_6 + 130, SE041, 400 );
setTimeStretch( SE041, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 130, SE041, 600, 24000 );

--手を払う
SE042 = playSe( spep_6 + 132, 1108 );
setSeVolumeByWorkId( spep_6 + 132, SE042, 126 );
setPitch( spep_6 + 132, SE042, 200 );
setTimeStretch( SE042, 1.13, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 66 );
endPhase( spep_6 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ヘリから登場(160F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --リから登場	ef_001		ビーデル長髪
setEffMoveKey( spep_0 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 160, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_b, 0 );
setEffRotateKey( spep_0 + 160, kick_b, 0 );
setEffAlphaKey( spep_0 + 0, kick_b, 255 );
setEffAlphaKey( spep_0 + 160, kick_b, 255 );

kick_e = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ef_001_bg		背景
setEffMoveKey( spep_0 + 0, kick_e, 0, 0 , 0 );
setEffMoveKey( spep_0 + 160, kick_e, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kick_e, 1.0, 1.0 );
setEffScaleKey( spep_0 + 160, kick_e, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_e, 0 );
setEffRotateKey( spep_0 + 160, kick_e, 0 );
setEffAlphaKey( spep_0 + 0, kick_e, 255 );
setEffAlphaKey( spep_0 + 160, kick_e, 255 );

spep_x = spep_0 + 68;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--ヘリ上昇
SE001 = playSe( spep_0 + 0, 1278 );
stopSe( spep_0 + 106, SE001, 14 );

--ヘリ上昇
SE002 = playSe( spep_0 + 0, 1167 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );
setTimeStretch( SE002, 1.11, 10, 1 );

--フレア
SE003 = playSe( spep_0 + 38, 1179 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 123 );

--ヘリから降りてくる
SE004 = playSe( spep_0 + 56, 1182 );

--ヘリから降りてくる
SE005 = playSe( spep_0 + 56, 1117 );
setSeVolumeByWorkId( spep_0 + 56, SE005, 126 );

--ヘリから降りてくる
SE006 = playSe( spep_0 + 56, 1183 );
stopSe( spep_0 +160 + 8, SE006, 0 );

--顔カットイン
SE007 = playSe( spep_0 + 80, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 160 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 160;


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

--着地
SE009 = playSe( spep_1 + 90, 1207,"",0.6 );
setSeVolumeByWorkId( spep_1 + 90, SE009, 0 );
setSeVolumeByWorkId( spep_1 + 91, SE009, 2 );
setSeVolumeByWorkId( spep_1 + 92, SE009, 4 );
setSeVolumeByWorkId( spep_1 + 93, SE009, 8 );
setSeVolumeByWorkId( spep_1 + 94, SE009, 10 );
setSeVolumeByWorkId( spep_1 + 95, SE009, 12 );
setSeVolumeByWorkId( spep_1 + 96, SE009, 16 );
setSeVolumeByWorkId( spep_1 + 97, SE009, 20 );
setSeVolumeByWorkId( spep_1 + 98, SE009, 40 );
setSeVolumeByWorkId( spep_1 + 99, SE009, 60 );
setSeVolumeByWorkId( spep_1 + 100, SE009, 80 );
setSeVolumeByWorkId( spep_1 + 101, SE009, 90 );
setSeVolumeByWorkId( spep_1 + 102, SE009, 100 );
stopSe( spep_1 +94 + 20, SE009, 14 );
setStartTimeMs( SE009,  150 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 着地～突進(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
landing_b = entryEffectLife( spep_2 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --着地～突進	ef_002		ビーデル長髪
setEffMoveKey( spep_2 + 0, landing_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, landing_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, landing_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, landing_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing_b, 0 );
setEffRotateKey( spep_2 + 96, landing_b, 0 );
setEffAlphaKey( spep_2 + 0, landing_b, 255 );
setEffAlphaKey( spep_2 + 96 -1, landing_b, 255 );
setEffAlphaKey( spep_2 + 96, landing_b, 0 );

landing_e = entryEffectLife( spep_2 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --ef_002_bg		背景
setEffMoveKey( spep_2 + 0, landing_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, landing_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, landing_e, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, landing_e, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing_e, 0 );
setEffRotateKey( spep_2 + 96, landing_e, 0 );
setEffAlphaKey( spep_2 + 0, landing_e, 255 );
setEffAlphaKey( spep_2 + 96 -1, landing_e, 255 );
setEffAlphaKey( spep_2 + 96, landing_e, 0 );

landing_f = entryEffectLife( spep_2 + 0, SP_05, 96, 0x110, -1, 0, 0, 0 );  --	ef_002_ct		描き文字
setEffMoveKey( spep_2 + 0, landing_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, landing_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, landing_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, landing_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing_f, 0 );
setEffRotateKey( spep_2 + 96, landing_f, 0 );
setEffAlphaKey( spep_2 + 0, landing_f, 255 );
setEffAlphaKey( spep_2 + 96 -1, landing_f, 255 );
setEffAlphaKey( spep_2 + 96, landing_f, 0 );

-- ** 音 ** --
--着地
SE010 = playSe( spep_2 + 14, 1108 );
setSeVolumeByWorkId( spep_2 + 14, SE010, 172 );

--着地
SE011 = playSe( spep_2 + 18, 1107 );
setSeVolumeByWorkId( spep_2 + 18, SE011, 166 );

--カメラズームアウト
SE012 = playSe( spep_2 + 36, 1072 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 76 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE013, 0);
    --stopSe( SP_dodge - 12, SE014, 0);
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

-- ** 音 ** --
--前方ダッシュ
SE013 = playSe( spep_2 + 72, 1182 );

--前方ダッシュ
SE014 = playSe( spep_2 + 72, 9 );
stopSe( spep_2 +96 + 16, SE014, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;


------------------------------------------------------
-- ラッシュ(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
rush_b = entryEffectLife( spep_3 + 0, SP_06r, 76, 0x100, -1, 0, 0, 0 );  --ラッシュ  ef_003      ビーデル長髪
setEffMoveKey( spep_3 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_b, 0 );
setEffRotateKey( spep_3 + 76, rush_b, 0 );
setEffAlphaKey( spep_3 + 0, rush_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, rush_b, 255 );
setEffAlphaKey( spep_3 + 76, rush_b, 0 );

rush_e = entryEffectLife( spep_3 + 0, SP_07, 76, 0x80, -1, 0, 0, 0 );  --ef_003_bg      背景
setEffMoveKey( spep_3 + 0, rush_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, rush_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_e, 0 );
setEffRotateKey( spep_3 + 76, rush_e, 0 );
setEffAlphaKey( spep_3 + 0, rush_e, 255 );
setEffAlphaKey( spep_3 + 76 -1, rush_e, 255 );
setEffAlphaKey( spep_3 + 76, rush_e, 0 );

rush_f = entryEffectLife( spep_3 + 0, SP_08, 76, 0x100, -1, 0, 0, 0 );  --ef_003_ct     描き文字
setEffMoveKey( spep_3 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 76, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, rush_f, 255 );
setEffAlphaKey( spep_3 + 76, rush_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 76, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3 -3 + 16, 1, 108 );

a1 = 20;
setMoveKey( spep_3 + 0, 1, 858.8 -a1, -81.1 , 0 );
setMoveKey( spep_3 + 1, 1, 753.6 -a1, -81.1 , 0 );
setMoveKey( spep_3 + 2, 1, 648.5 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 543.3 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 438.2 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 333 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 227.9 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 15, 1, 122.7 -a1, -81.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 91 -a1, -2.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 112.9 -a1, -37 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 109.6 -a1, -11.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 99.2 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 112.4 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 117.5 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 122.7 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 152.5 -a1, -2.5 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 168.6 -a1, -36.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 159.7 -a1, -11.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 144 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 153.4 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 154.9 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 156.3 -a1, -27 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 173.5 -a1, -17.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 169.8 -a1, -20.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 166 -a1, -24 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 151.7 -a1, -13.1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 169.7 -a1, -42.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 164.7 -a1, -15.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 152.7 -a1, -33.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 257.2 -a1, 27.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 225 -a1, 9.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 192.9 -a1, -8.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 179.7 -a1, -13 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 202.3 -a1, -42 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 202 -a1, -15 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 194.7 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 199.3 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 204 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 208.7 -a1, -33 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 213.3 -a1, -32.9 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 213.3 -a1, -32.9 , 0 );

s1 = 0.2;
s2 = 0.4;
setScaleKey( spep_3 + 0, 1, 1.7 +s1, 1.7 +s1 );
setScaleKey( spep_3 -3 + 15, 1, 1.7 +s1, 1.7 +s1 );
setScaleKey( spep_3 -3 + 16, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 18, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 20, 1, 1.76 +s2, 1.76 +s2 );
setScaleKey( spep_3 -3 + 22, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 28, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 30, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 32, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 34, 1, 1.76 +s2, 1.76 +s2 );
setScaleKey( spep_3 -3 + 36, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 42, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 44, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 46, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 48, 1, 1.76 +s2, 1.76 +s2 );
setScaleKey( spep_3 -3 + 50, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 56, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 58, 1, 2.72 +s2, 2.72 +s2 );
setScaleKey( spep_3 -3 + 60, 1, 2.38 +s2, 2.38 +s2 );
setScaleKey( spep_3 -3 + 62, 1, 2.04 +s2, 2.04 +s2 );
setScaleKey( spep_3 -3 + 64, 1, 1.7 +s2, 1.7 +s2 );
setScaleKey( spep_3 -3 + 79, 1, 1.7 +s2, 1.7 +s2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 15, 1, 0 );
setRotateKey( spep_3 -3 + 16, 1, -12 );
setRotateKey( spep_3 -3 + 28, 1, -12 );
setRotateKey( spep_3 -3 + 30, 1, 4 );
setRotateKey( spep_3 -3 + 48, 1, 4 );
setRotateKey( spep_3 -3 + 50, 1, -20 );
setRotateKey( spep_3 -3 + 62, 1, -20 );
setRotateKey( spep_3 -3 + 64, 1, 4 );
setRotateKey( spep_3 -3 + 79, 1, 4 );

-- ** 音 ** --
--ラッシュ
SE015 = playSe( spep_3 + 8, 1189 );

--ラッシュ
SE016 = playSe( spep_3 + 14, 1000 );

--ラッシュ
SE017 = playSe( spep_3 + 14, 1110 );

--ラッシュ
SE018 = playSe( spep_3 + 34, 1009 );
setSeVolumeByWorkId( spep_3 + 34, SE018, 81 );

--ラッシュ
SE019 = playSe( spep_3 + 34, 1000 );

--ラッシュ
SE020 = playSe( spep_3 + 48, 1009 );

--ラッシュ
SE021 = playSe( spep_3 + 48, 1010 );

--ラッシュ
SE022 = playSe( spep_3 + 64, 1110 );

--ラッシュ
SE023 = playSe( spep_3 + 64, 1012 );

--ラッシュ
SE024 = playSe( spep_3 + 64, 1007 );
setSeVolumeByWorkId( spep_3 + 64, SE024, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 膝蹴り準備(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
knee_f = entryEffectLife( spep_4 + 0, SP_09r, 56, 0x100, -1, 0, 0, 0 );  --膝蹴り準備 ef_004      ビーデル長髪
setEffMoveKey( spep_4 + 0, knee_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, knee_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, knee_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, knee_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knee_f, 0 );
setEffRotateKey( spep_4 + 56, knee_f, 0 );
setEffAlphaKey( spep_4 + 0, knee_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, knee_f, 255 );
setEffAlphaKey( spep_4 + 56, knee_f, 0 );

knee_b = entryEffectLife( spep_4 + 0, SP_10, 56, 0x80, -1, 0, 0, 0 );  --   ef_004_bg       背景
setEffMoveKey( spep_4 + 0, knee_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, knee_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, knee_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, knee_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, knee_b, 0 );
setEffRotateKey( spep_4 + 56, knee_b, 0 );
setEffAlphaKey( spep_4 + 0, knee_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, knee_b, 255 );
setEffAlphaKey( spep_4 + 56, knee_b, 0 );

-- ** 音 ** --
--上昇
SE025 = playSe( spep_4 + 0, 1278 );
setSeVolumeByWorkId( spep_4 + 0, SE025, 73 );
stopSe( spep_4 +56 + 10, SE025, 8 );

--上昇
SE026 = playSe( spep_4 + 0, 1116 );
setSeVolumeByWorkId( spep_4 + 0, SE026, 135 );
stopSe( spep_4 + 38, SE026, 20 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 膝蹴り(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kick_b = entryEffectLife( spep_5 + 0, SP_11r, 56, 0x100, -1, 0, 0, 0 );  --膝蹴り   ef_005      ビーデル長髪
setEffMoveKey( spep_5 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 56, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 56 -1, kick_b, 255 );
setEffAlphaKey( spep_5 + 56, kick_b, 0 );

kick_e = entryEffectLife( spep_5 + 0, SP_12, 56, 0x80, -1, 0, 0, 0 );  --ef_005_bg      背景
setEffMoveKey( spep_5 + 0, kick_e, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kick_e, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick_e, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_e, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_e, 0 );
setEffRotateKey( spep_5 + 56, kick_e, 0 );
setEffAlphaKey( spep_5 + 0, kick_e, 255 );
setEffAlphaKey( spep_5 + 56 -1, kick_e, 255 );
setEffAlphaKey( spep_5 + 56, kick_e, 0 );

kick_f = entryEffectLife( spep_5 + 0, SP_13, 56, 0x100, -1, 0, 0, 0 );  --ef_005_ct     描き文字
setEffMoveKey( spep_5 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 56, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, kick_f, 255 );
setEffAlphaKey( spep_5 + 56, kick_f, 0 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_5 + 9, 906, 19, 0x100, -1, 0, 25, 150 );  --集中線
setEffShake( spep_5 + 9, shuchusen_1, 90, 20 );
setEffMoveKey( spep_5 + 9, shuchusen_1, 25, 150 , 0 );
setEffMoveKey( spep_5 + 28, shuchusen_1, 25, 150 , 0 );
setEffScaleKey( spep_5 + 9, shuchusen_1, 1.4, 1.8 );
setEffScaleKey( spep_5 + 28, shuchusen_1, 1.4, 1.8 );
setEffRotateKey( spep_5 + 9, shuchusen_1, 0 );
setEffRotateKey( spep_5 + 28, shuchusen_1, 0 );
setEffAlphaKey( spep_5 + 9, shuchusen_1, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 -3 + 12, 1, 106 );

setMoveKey( spep_5 + 0, 1, -111.9, 9.2 , 0 );
--setMoveKey( spep_5 + 1, 1, -111.9, 9.2 , 0 );
--setMoveKey( spep_5 + 2, 1, -65.1, 47.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -18.2, 86.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 28.6, 125.4 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 75.4, 164.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 89.6, 178.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 73.5, 158.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 98.1, 161 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 77.3, 196.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 95, 196.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 79.8, 175.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 105.5, 177.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 86.2, 213 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 89, 217.4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 91.7, 221.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 94.4, 226.1 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 103.7, 237.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 113, 248.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 122.2, 259.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 131.5, 270.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 140.8, 282.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 150.1, 293.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 159.4, 304.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 168.6, 315.8 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 177.9, 327 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 187.2, 338.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 196.5, 349.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 205.7, 360.6 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 215, 371.8 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 215, 371.8 , 0 );

s3 = 0.6;
s4 = 0.4;
setScaleKey( spep_5 + 0, 1, 1.59 +s3, 1.59 +s3 );
--setScaleKey( spep_5 + 1, 1, 1.35, 1.35 );
--setScaleKey( spep_5 + 2, 1, 1.59, 1.59 );
--setScaleKey( spep_5 -3 + 6, 1, 1.5, 1.5 );
--setScaleKey( spep_5 -3 + 8, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 11, 1, 1.59 +s3, 1.59 +s3 );
setScaleKey( spep_5 -3 + 12, 1, 1.95 +s4, 1.95 +s4 );
setScaleKey( spep_5 -3 + 14, 1, 1.84 +s4, 1.84 +s4 );
setScaleKey( spep_5 -3 + 16, 1, 1.73 +s4, 1.73 +s4 );
setScaleKey( spep_5 -3 + 18, 1, 1.61 +s4, 1.61 +s4 );
setScaleKey( spep_5 -3 + 20, 1, 1.5 +s4, 1.5 +s4 );
setScaleKey( spep_5 -3 + 59, 1, 1.5 +s4, 1.5 +s4 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, -7.5 );
setRotateKey( spep_5 + 2, 1, 8.2 );
setRotateKey( spep_5 -3 + 6, 1, 0 );
setRotateKey( spep_5 -3 + 8, 1, 7 );
setRotateKey( spep_5 -3 + 11, 1, -9.7 );
setRotateKey( spep_5 -3 + 12, 1, -31.3 );
setRotateKey( spep_5 -3 + 14, 1, -30.7 );
setRotateKey( spep_5 -3 + 16, 1, -30 );
setRotateKey( spep_5 -3 + 18, 1, -29.3 );
setRotateKey( spep_5 -3 + 20, 1, -28.7 );
setRotateKey( spep_5 -3 + 22, 1, -28 );
setRotateKey( spep_5 -3 + 24, 1, -27.3 );
setRotateKey( spep_5 -3 + 26, 1, -26.7 );
setRotateKey( spep_5 -3 + 28, 1, -26 );
setRotateKey( spep_5 -3 + 30, 1, -25.4 );
setRotateKey( spep_5 -3 + 32, 1, -24.7 );
setRotateKey( spep_5 -3 + 34, 1, -24 );
setRotateKey( spep_5 -3 + 36, 1, -23.4 );
setRotateKey( spep_5 -3 + 38, 1, -22.7 );
setRotateKey( spep_5 -3 + 40, 1, -22 );
setRotateKey( spep_5 -3 + 42, 1, -21.4 );
setRotateKey( spep_5 -3 + 44, 1, -20.7 );
setRotateKey( spep_5 -3 + 46, 1, -20 );
setRotateKey( spep_5 -3 + 48, 1, -19.4 );
setRotateKey( spep_5 -3 + 50, 1, -18.7 );
setRotateKey( spep_5 -3 + 52, 1, -18 );
setRotateKey( spep_5 -3 + 54, 1, -17.4 );
setRotateKey( spep_5 -3 + 56, 1, -16.7 );
setRotateKey( spep_5 -3 + 58, 1, -16 );
setRotateKey( spep_5 -3 + 59, 1, -16 );

-- ** 音 ** --
--膝蹴り
SE027 = playSe( spep_5 + 8, 1003 );

--膝蹴り
SE028 = playSe( spep_5 + 12, 1187 );
setSeVolumeByWorkId( spep_5 + 16, SE028, 81 );

--膝蹴り
SE029 = playSe( spep_5 + 12, 1110 );
setSeVolumeByWorkId( spep_5 + 16, SE029, 70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_14r, 0x100, -1, 0, 0, 0 );  --フィニッシュ	ef_006		ビーデル長髪
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 176, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 176, finish_f, 255 );

finnish_b = entryEffect( spep_6 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --	ef_006_bg		背景
setEffMoveKey( spep_6 + 0, finnish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finnish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finnish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finnish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finnish_b, 0 );
setEffRotateKey( spep_6 + 176, finnish_b, 0 );
setEffAlphaKey( spep_6 + 0, finnish_b, 255 );
setEffAlphaKey( spep_6 + 176, finnish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 32, 1, 1 );
setDisp( spep_6 -3 + 179, 1, 0 );
changeAnime( spep_6 -3 + 32, 1, 106 );

setMoveKey( spep_6 -3 + 32, 1, 125.1, 746.9 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 125.1, 746.9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 125, 648.6 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 125, 550.4 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 125, 452.1 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 125, 353.9 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 125, 255.6 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 125, 157.4 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 126.1, 56 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 129.8, -53 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 135.8, -108.4 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 143.6, -170.4 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 152.6, -169.3 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 162.1, -166.4 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 171.3, -160.5 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 179.5, -151 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 186, -200 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 190.1, -247.3 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 191.5, -289.1 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 191.5, -281.6 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 191.5, -274.1 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 191.5, -266.6 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 191.5, -274.6 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 191.5, -282.6 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 191.5, -290.6 , 0 );
setMoveKey( spep_6 -3 + 179, 1, 191.5, -290.6 , 0 );

setScaleKey( spep_6 -3 + 32, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 66, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 68, 1, 0.71, 0.71 );
setScaleKey( spep_6 -3 + 70, 1, 0.73, 0.73 );
setScaleKey( spep_6 -3 + 72, 1, 0.76, 0.76 );
setScaleKey( spep_6 -3 + 74, 1, 0.8, 0.8 );
setScaleKey( spep_6 -3 + 76, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 78, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 80, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 82, 1, 0.98, 0.98 );
setScaleKey( spep_6 -3 + 84, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 86, 1, 1.04, 1.04 );
setScaleKey( spep_6 -3 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 179, 1, 1.05, 1.05 );

setRotateKey( spep_6 -3 + 32, 1, 60.7 );
setRotateKey( spep_6 -3 + 34, 1, 60.6 );
setRotateKey( spep_6 -3 + 70, 1, 60.6 );
setRotateKey( spep_6 -3 + 72, 1, 48.7 );
setRotateKey( spep_6 -3 + 74, 1, 36.7 );
setRotateKey( spep_6 -3 + 76, 1, 35.6 );
setRotateKey( spep_6 -3 + 78, 1, 34.6 );
setRotateKey( spep_6 -3 + 80, 1, 33.5 );
setRotateKey( spep_6 -3 + 82, 1, 32.4 );
setRotateKey( spep_6 -3 + 84, 1, 33.8 );
setRotateKey( spep_6 -3 + 86, 1, 35.3 );
setRotateKey( spep_6 -3 + 88, 1, 36.7 );
setRotateKey( spep_6 -3 + 179, 1, 36.7 );

-- ** 音 ** --
--着地
SE030 = playSe( spep_6 + 16, 1107 );
setSeVolumeByWorkId( spep_6 + 16, SE030, 130 );

--着地
SE031 = playSe( spep_6 + 20, 1106 );

--後ろで敵落下
SE032 = playSe( spep_6 + 64, 1007 );
setSeVolumeByWorkId( spep_6 + 64, SE032, 60 );

--後ろで敵落下
SE033 = playSe( spep_6 + 64, 1002 );
setSeVolumeByWorkId( spep_6 + 64, SE033, 56 );

--手を払う
SE034 = playSe( spep_6 + 66, 1111 );
setSeVolumeByWorkId( spep_6 + 66, SE034, 126 );
stopSe( spep_6 + 78, SE034, 2 );
setPitch( spep_6 + 66, SE034, 400 );
setTimeStretch( SE034, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 66, SE034, 600, 24000 );

--手を払う
SE035 = playSe( spep_6 + 68, 1108 );
setSeVolumeByWorkId( spep_6 + 68, SE035, 126 );
setPitch( spep_6 + 68, SE035, 200 );
setTimeStretch( SE035, 1.13, 10, 1 );

--後ろで敵落下
SE036 = playSe( spep_6 + 80, 1047 );
setSeVolumeByWorkId( spep_6 + 80, SE036, 61 );

--手を払う
SE037 = playSe( spep_6 + 86, 1111 );
setSeVolumeByWorkId( spep_6 + 86, SE037, 126 );
stopSe( spep_6 + 98, SE037, 2 );
setPitch( spep_6 + 86, SE037, 400 );
setTimeStretch( SE037, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 86, SE037, 600, 24000 );

--手を払う
SE038 = playSe( spep_6 + 88, 1108 );
setSeVolumeByWorkId( spep_6 + 88, SE038, 126 );
setPitch( spep_6 + 88, SE038, 200 );
setTimeStretch( SE038, 1.13, 10, 1 );

--手を払う
SE039 = playSe( spep_6 + 108, 1111 );
setSeVolumeByWorkId( spep_6 + 108, SE039, 126 );
stopSe( spep_6 + 120, SE039, 2 );
setPitch( spep_6 + 108, SE039, 400 );
setTimeStretch( SE039, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 108, SE039, 600, 24000 );

--手を払う
SE040 = playSe( spep_6 + 110, 1108 );
setSeVolumeByWorkId( spep_6 + 110, SE040, 126 );
setPitch( spep_6 + 110, SE040, 200 );
setTimeStretch( SE040, 1.13, 10, 1 );

--手を払う
SE041 = playSe( spep_6 + 130, 1111 );
setSeVolumeByWorkId( spep_6 + 130, SE041, 126 );
stopSe( spep_6 + 140, SE041, 4 );
setPitch( spep_6 + 130, SE041, 400 );
setTimeStretch( SE041, 1.27, 10, 1 );
setBandpassFilter( spep_6 + 130, SE041, 600, 24000 );

--手を払う
SE042 = playSe( spep_6 + 132, 1108 );
setSeVolumeByWorkId( spep_6 + 132, SE042, 126 );
setPitch( spep_6 + 132, SE042, 200 );
setTimeStretch( SE042, 1.13, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 66 );
endPhase( spep_6 + 166 );

end