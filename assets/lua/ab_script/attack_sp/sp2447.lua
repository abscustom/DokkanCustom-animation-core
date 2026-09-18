--1025070:孫悟空(少年期)_友情アタック(ユニット)
--sp_effect_b1_00219
--sp2447

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
SP_01 = 160641; --悟空＋ハッチャン登場    ef_001
SP_02 = 160642; --如意棒で攻撃    ef_002_front
SP_03 = 160643; --如意棒で攻撃    ef_002_back
SP_04 = 160646; --棒回し正面 ef_003
SP_05 = 160647; --棒投げ攻撃 ef_004_front
SP_06 = 160648; --棒投げ攻撃 ef_004_back
SP_07 = 160649; --ハッチャン攻撃～フィニッシュ    ef_005_front
SP_08 = 160650; --ハッチャン攻撃～フィニッシュ    ef_005_back

--敵側
SP_02r = 160644;    --如意棒で攻撃    ef_002_r_front
SP_03r = 160645;    --如意棒で攻撃    ef_002_r_back

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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
-- 正面突進(330F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正面突進    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 330, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 330, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 330, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 330 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 330, first_f, 0 );

spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--筋斗雲飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1327, "",spep_0 + 200, 0, 70, -1);
setPitch( spep_0 + 0, SE001, 200 );
setTimeStretch( SE001, 1.13, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 178, 74, 50, -1);
SE003 = playSeVer2( spep_0 + 0, 1186, "", 0, 76, 0, -1);
setPitch( spep_0 + 0, SE003, -1200 );
setTimeStretch( SE003, 0.2, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 0, 1311, "", 0, 40, 0, -1);
setPitch( spep_0 + 0, SE005, 300 );
setTimeStretch( SE005, 1.2, 30, 4 );
SE006 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 186, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE006, 79 );

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ハッチャン飛んでくる
SE008 = playSeVer2( spep_0 + 102, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 102, 44, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 132, 9, "",spep_0 + 210, 0, 50, -1);

--筋斗雲飛んでくる
SE010 = playSeVer2( spep_0 + 116, 1186, "",spep_0 + 172, 0, 40, -1);
setPitch( spep_0 + 116, SE010, -1200 );
setTimeStretch( SE010, 0.2, 30, 4 );

--ジャンプ
SE012 = playSeVer2( spep_0 + 172, 1007, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 172, 1117, "",spep_0 + 240, 0, 12, -1);

--着地
SE014 = playSeVer2( spep_0 + 224, 1192, "",spep_0 + 252, 0, 10, -1);
SE015 = playSeVer2( spep_0 + 226, 1108, "", 0, 0, 0, -1);

--突っ込んでくる
SE016 = playSeVer2( spep_0 + 234, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 234, 44, "",spep_0 + 278, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 330 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 258 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
   
    pauseAll( SP_dodge, 67);   
    
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

-- ** 音 ** --
--如意棒回す
SE018 = playSeVer2( spep_0 + 278, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 278, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 284, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 284, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_0 + 290, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 290, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_0 + 296, 1151, "", 0, 0, 0, 1.0);
SE022 = playSeVer2( spep_0 + 306, 1006, "",spep_0 + 322, 0, 4, 1.0);

-- ** 次の準備 ** --
spep_1 = spep_0 + 330;


------------------------------------------------------
-- 如意棒で攻撃(40F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --如意棒で攻撃    ef_002_front
setEffMoveKey( spep_1 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_f, 0 );
setEffRotateKey( spep_1 + 40, slash_f, 0 );
setEffAlphaKey( spep_1 + 0, slash_f, 255 );
setEffAlphaKey( spep_1 + 40 -1, slash_f, 255 );
setEffAlphaKey( spep_1 + 40, slash_f, 0 );

slash_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --如意棒で攻撃    ef_002_back
setEffMoveKey( spep_1 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_b, 0 );
setEffRotateKey( spep_1 + 40, slash_b, 0 );
setEffAlphaKey( spep_1 + 0, slash_b, 255 );
setEffAlphaKey( spep_1 + 40 -1, slash_b, 255 );
setEffAlphaKey( spep_1 + 40, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 43, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 12, 1, 108 );

setMoveKey( spep_1 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_1 + 1, 1, -0.7, -6 , 0 );
setMoveKey( spep_1 + 2, 1, -1.5, -12 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -2.3, -18 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -3, -24 , 0 );
setMoveKey( spep_1 -3 + 11, 1, -3.7, -30 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -13.9, -20.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 0.7, -49.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 39, 24.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 32, 37.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 83.1, 117.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 111.6, 170.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 139.5, 222.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 166.8, 273.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 193.5, 322.8 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 193.8, 323.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 194, 323.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 194.2, 324.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 194.3, 324.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 194.4, 324.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 194.4, 325 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 194.5, 325.1 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 194.5, 325.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 1, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 2, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 8, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 14, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 20, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 24, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 32, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 34, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 43, 1, 0.17, 0.17 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 43, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE023 = playSeVer2( spep_1 + 0, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 34, 0, 10, -1);

--如意棒ヒット
SE025 = playSeVer2( spep_1 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE025, 89 );
SE026 = playSeVer2( spep_1 + 10, 1110, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 40;


------------------------------------------------------
-- 棒回し正面(54F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
pose = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --棒回し正面 ef_003
setEffMoveKey( spep_2 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_2 + 53, pose, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_2 + 53, pose, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pose, 0 );
setEffRotateKey( spep_2 + 53, pose, 0 );
setEffAlphaKey( spep_2 + 0, pose, 255 );
setEffAlphaKey( spep_2 + 53 -1, pose, 255 );
setEffAlphaKey( spep_2 + 53, pose, 0 );

-- ** 音 ** --
--悟空回転
SE027 = playSeVer2( spep_2 + 0, 1151, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE028, 83 );
SE029 = playSeVer2( spep_2 + 4, 1189, "", 0, 0, 0, -1);

--着地
SE030 = playSeVer2( spep_2 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE030, 127 );
SE031 = playSeVer2( spep_2 + 48, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE031, 141 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 53 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 53;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;

-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
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
-- playSe( spep_3 + 0, SE_05 );

--悟空アップ
SE033 = playSeVer2( spep_3 + 80, 8, "", 0, 0, 0, -1);

--如意棒回す
SE034 = playSeVer2( spep_3 + 86, 1151, "",spep_3 + 104, 0, 6, -1);
SE035 = playSeVer2( spep_3 + 88, 1003, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 棒投げ攻撃(218F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
throw_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --棒投げ攻撃 ef_004_front
setEffMoveKey( spep_4 + 0, throw_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 218, throw_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 218, throw_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw_f, 0 );
setEffRotateKey( spep_4 + 218, throw_f, 0 );
setEffAlphaKey( spep_4 + 0, throw_f, 255 );
setEffAlphaKey( spep_4 + 218 -1, throw_f, 255 );
setEffAlphaKey( spep_4 + 218, throw_f, 0 );

throw_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --棒投げ攻撃 ef_004_back
setEffMoveKey( spep_4 + 0, throw_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 218, throw_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 218, throw_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw_b, 0 );
setEffRotateKey( spep_4 + 218, throw_b, 0 );
setEffAlphaKey( spep_4 + 0, throw_b, 255 );
setEffAlphaKey( spep_4 + 218 -1, throw_b, 255 );
setEffAlphaKey( spep_4 + 218, throw_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 114, 1, 1 );
setDisp( spep_4 -3 + 221, 1, 0 );
changeAnime( spep_4 -3 + 114, 1, 106 );
changeAnime( spep_4 -3 + 174, 1, 108 );

setMoveKey( spep_4 -3 + 114, 1, -65.1, -396.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, -71.4, -391.8 , 0 );
setMoveKey( spep_4 -3 + 118, 1, -77, -387 , 0 );
setMoveKey( spep_4 -3 + 120, 1, -82.1, -382.1 , 0 );
setMoveKey( spep_4 -3 + 122, 1, -86.7, -376.9 , 0 );
setMoveKey( spep_4 -3 + 124, 1, -90.7, -371.4 , 0 );
setMoveKey( spep_4 -3 + 126, 1, -94.2, -365.8 , 0 );
setMoveKey( spep_4 -3 + 128, 1, -97.1, -359.8 , 0 );
setMoveKey( spep_4 -3 + 130, 1, -99.6, -353.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, -101.4, -347.5 , 0 );
setMoveKey( spep_4 -3 + 134, 1, -102.7, -340.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, -103.5, -334 , 0 );
setMoveKey( spep_4 -3 + 138, 1, -103.7, -327 , 0 );
setMoveKey( spep_4 -3 + 140, 1, -103.5, -319.8 , 0 );
setMoveKey( spep_4 -3 + 142, 1, -102.6, -312.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, -101.2, -304.6 , 0 );
setMoveKey( spep_4 -3 + 146, 1, -99.4, -296.7 , 0 );
setMoveKey( spep_4 -3 + 148, 1, -96.9, -288.6 , 0 );
setMoveKey( spep_4 -3 + 150, 1, -93.9, -280.2 , 0 );
setMoveKey( spep_4 -3 + 152, 1, -90.4, -271.6 , 0 );
setMoveKey( spep_4 -3 + 154, 1, -86.3, -262.8 , 0 );
setMoveKey( spep_4 -3 + 156, 1, -81.7, -253.8 , 0 );
setMoveKey( spep_4 -3 + 158, 1, -76.5, -244.5 , 0 );
setMoveKey( spep_4 -3 + 160, 1, -70.9, -235 , 0 );
setMoveKey( spep_4 -3 + 162, 1, -64.6, -225.3 , 0 );
setMoveKey( spep_4 -3 + 164, 1, -57.8, -215.4 , 0 );
setMoveKey( spep_4 -3 + 166, 1, -50.5, -205.2 , 0 );
setMoveKey( spep_4 -3 + 168, 1, -42.7, -194.9 , 0 );
setMoveKey( spep_4 -3 + 170, 1, -34.3, -184.3 , 0 );
setMoveKey( spep_4 -3 + 172, 1, -25.4, -173.4 , 0 );
setMoveKey( spep_4 -3 + 173, 1, -25.4, -173.4 , 0 );--
setMoveKey( spep_4 -3 + 174, 1, -18.5, -68 , 0 );
setMoveKey( spep_4 -3 + 176, 1, -23.8, 42.5 , 0 );
setMoveKey( spep_4 -3 + 178, 1, -23.9, 44.4 , 0 );
setMoveKey( spep_4 -3 + 180, 1, -24, 46.3 , 0 );
setMoveKey( spep_4 -3 + 182, 1, -24.1, 48.2 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 148.8, 226.3 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 156.7, 237.2 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 164.2, 247.8 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 171.3, 258 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 178.1, 267.6 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 184.5, 277 , 0 );
setMoveKey( spep_4 -3 + 196, 1, 190.5, 285.8 , 0 );
setMoveKey( spep_4 -3 + 198, 1, 196.2, 294.3 , 0 );
setMoveKey( spep_4 -3 + 200, 1, 201.5, 302.3 , 0 );
setMoveKey( spep_4 -3 + 202, 1, 206.4, 309.9 , 0 );
setMoveKey( spep_4 -3 + 204, 1, 210.9, 317.1 , 0 );
setMoveKey( spep_4 -3 + 206, 1, 215.1, 323.8 , 0 );
setMoveKey( spep_4 -3 + 208, 1, 218.9, 330.2 , 0 );
setMoveKey( spep_4 -3 + 210, 1, 222.3, 336.1 , 0 );
setMoveKey( spep_4 -3 + 212, 1, 225.4, 341.6 , 0 );
setMoveKey( spep_4 -3 + 214, 1, 228.1, 346.6 , 0 );
setMoveKey( spep_4 -3 + 216, 1, 230.4, 351.2 , 0 );
setMoveKey( spep_4 -3 + 218, 1, 232.3, 355.5 , 0 );
setMoveKey( spep_4 -3 + 220, 1, 233.9, 359.3 , 0 );
setMoveKey( spep_4 -3 + 221, 1, 233.9, 359.3 , 0 );

setScaleKey( spep_4 -3 + 114, 1, 0.33, 0.33 );
setScaleKey( spep_4 -3 + 116, 1, 0.34, 0.34 );
setScaleKey( spep_4 -3 + 118, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 120, 1, 0.36, 0.36 );
setScaleKey( spep_4 -3 + 122, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 124, 1, 0.38, 0.38 );
setScaleKey( spep_4 -3 + 126, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 128, 1, 0.4, 0.4 );
setScaleKey( spep_4 -3 + 130, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 132, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 134, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 136, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 138, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 140, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 142, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 144, 1, 0.49, 0.49 );
setScaleKey( spep_4 -3 + 146, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 148, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 150, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 152, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 154, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 156, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 158, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 160, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 162, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 164, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 166, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 168, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 170, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 172, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 173, 1, 0.65, 0.65 );--
setScaleKey( spep_4 -3 + 174, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 221, 1, 0.65, 0.65 );

setRotateKey( spep_4 -3 + 114, 1, 0 );
setRotateKey( spep_4 -3 + 173, 1, 0 );--
setRotateKey( spep_4 -3 + 174, 1, 61.4 );
setRotateKey( spep_4 -3 + 182, 1, 61.4 );
setRotateKey( spep_4 -3 + 184, 1, -2.4 );
setRotateKey( spep_4 -3 + 221, 1, -2.4 );

-- ** 音 ** --
--如意棒回す
SE036 = playSeVer2( spep_4 + 6, 1151, "",spep_4 + 24, 0, 8, -1);
SE037 = playSeVer2( spep_4 + 8, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_4 + 18, 1151, "",spep_4 + 36, 0, 6, -1);
SE039 = playSeVer2( spep_4 + 20, 1003, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 30, 1151, "",spep_4 + 48, 0, 8, -1);
SE041 = playSeVer2( spep_4 + 34, 1003, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_4 + 40, 1151, "",spep_4 + 58, 0, 6, -1);
SE043 = playSeVer2( spep_4 + 42, 1003, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_4 + 46, 1151, "",spep_4 + 64, 0, 6, -1);
SE045 = playSeVer2( spep_4 + 48, 1003, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_4 + 52, 1151, "",spep_4 + 70, 0, 6, -1);
SE047 = playSeVer2( spep_4 + 54, 1003, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_4 + 58, 1151, "",spep_4 + 74, 0, 6, -1);
SE049 = playSeVer2( spep_4 + 58, 1003, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_4 + 62, 1151, "",spep_4 + 80, 0, 6, -1);
SE051 = playSeVer2( spep_4 + 64, 1003, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 68, 1151, "",spep_4 + 86, 0, 6, -1);
SE053 = playSeVer2( spep_4 + 70, 1003, "", 0, 0, 0, -1);

--如意棒投げる
SE054 = playSeVer2( spep_4 + 76, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 76, 1117, "",spep_4 + 166, 0, 4, -1);
SE056 = playSeVer2( spep_4 + 76, 1116, "",spep_4 + 166, 0, 4, -1);

--如意棒飛んでいく
SE057 = playSeVer2( spep_4 + 104, 1119, "",spep_4 + 166, 0, 4, -1);

--如意棒刺さる
SE058 = playSeVer2( spep_4 + 158, 1061, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_4 + 160, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 160, SE059, 84 );
SE060 = playSeVer2( spep_4 + 160, 1011, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_4 + 160, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 160, SE061, 84 );

--ハッチャン飛んでくる
SE062 = playSeVer2( spep_4 + 208, 1182, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_4 + 208, 9, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_4 + 208, 1068, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_4 + 208, 1314, "",spep_4 + 330, 0, 20, -1);
SE066 = playSeVer2( spep_4 + 208, 1019, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 218 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 218;


------------------------------------------------------
-- ハッチャン攻撃～フィニッシュ(382F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ハッチャン攻撃～フィニッシュ    ef_005_front
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 382, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 382, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 382, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 382, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --ハッチャン攻撃～フィニッシュ    ef_005_back
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 382, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 382, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 382, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 382, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 118, 1, 1 );
setDisp( spep_5 -3 + 176, 1, 0 );
changeAnime( spep_5 -3 + 118, 1, 105 );

setMoveKey( spep_5 -3 + 118, 1, -0.5, -334.1 , 0 );
setMoveKey( spep_5 -3 + 122, 1, -0.4, -284.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, -0.3, -234.9 , 0 );
setMoveKey( spep_5 -3 + 126, 1, -0.3, -185.3 , 0 );
setMoveKey( spep_5 -3 + 128, 1, -0.2, -135.7 , 0 );
setMoveKey( spep_5 -3 + 130, 1, -0.2, -86.1 , 0 );
setMoveKey( spep_5 -3 + 132, 1, -0.1, -36.5 , 0 );
setMoveKey( spep_5 -3 + 134, 1, -0.1, -34.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, -0.1, -32.9 , 0 );
setMoveKey( spep_5 -3 + 138, 1, -0.1, -31.2 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 0, -29.4 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 0, -27.6 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 0, -25.8 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 0, -24.1 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 0, -22.3 , 0 );
setMoveKey( spep_5 -3 + 150, 1, 0, -20.5 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 0, -18.8 , 0 );
setMoveKey( spep_5 -3 + 154, 1, 0, -17 , 0 );
setMoveKey( spep_5 -3 + 156, 1, 0, -15.2 , 0 );
setMoveKey( spep_5 -3 + 158, 1, 0, -13.4 , 0 );
setMoveKey( spep_5 -3 + 160, 1, 0, -11.7 , 0 );
setMoveKey( spep_5 -3 + 162, 1, 0, -9.9 , 0 );
setMoveKey( spep_5 -3 + 164, 1, 0, -8.1 , 0 );
setMoveKey( spep_5 -3 + 166, 1, 0, -6.4 , 0 );
setMoveKey( spep_5 -3 + 168, 1, 0, -4.6 , 0 );
setMoveKey( spep_5 -3 + 170, 1, 0, -2.8 , 0 );
setMoveKey( spep_5 -3 + 172, 1, 0, -1.1 , 0 );
setMoveKey( spep_5 -3 + 174, 1, 0, 0.7 , 0 );
setMoveKey( spep_5 -3 + 176, 1, 0, 0.7 , 0 );

setScaleKey( spep_5 -3 + 118, 1, 12.64, 12.64 );
setScaleKey( spep_5 -3 + 122, 1, 10.8, 10.8 );
setScaleKey( spep_5 -3 + 124, 1, 8.95, 8.95 );
setScaleKey( spep_5 -3 + 126, 1, 7.1, 7.1 );
setScaleKey( spep_5 -3 + 128, 1, 5.25, 5.25 );
setScaleKey( spep_5 -3 + 130, 1, 3.41, 3.41 );
setScaleKey( spep_5 -3 + 132, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 134, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 136, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 138, 1, 1.36, 1.36 );
setScaleKey( spep_5 -3 + 140, 1, 1.29, 1.29 );
setScaleKey( spep_5 -3 + 142, 1, 1.23, 1.23 );
setScaleKey( spep_5 -3 + 144, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 146, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 148, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 150, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 152, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 154, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 156, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 158, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 160, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 162, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 164, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 166, 1, 0.44, 0.44 );
setScaleKey( spep_5 -3 + 168, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 170, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 172, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 174, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 176, 1, 0.17, 0.17 );

setRotateKey( spep_5 -3 + 118, 1, -14 );
setRotateKey( spep_5 -3 + 176, 1, -14 );

-- ** 音 ** --
--ハッチャン飛んでくる
SE067 = playSeVer2( spep_5 + 54, 1019, "",spep_5 + 112, 0, 20, -1);

--パンチ
SE068 = playSeVer2( spep_5 + 90, 1359, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_5 + 90, 1187, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_5 + 90, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE071 = playSeVer2( spep_5 + 112, 1027, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_5 + 112, 1183, "",spep_5 + 206, 0, 38, -1);

--画面遷移
SE073 = playSeVer2( spep_5 + 168, 44, "", 0, 0, 0, -1);

--二人笑顔
SE074 = playSeVer2( spep_5 + 246, 32, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_5 + 252, 34, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 382 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 272 );
endPhase( spep_5 + 372 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面突進(330F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正面突進    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 330, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 330, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 330, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 330 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 330, first_f, 0 );

spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--筋斗雲飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1327, "",spep_0 + 200, 0, 70, -1);
setPitch( spep_0 + 0, SE001, 200 );
setTimeStretch( SE001, 1.13, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 178, 74, 50, -1);
SE003 = playSeVer2( spep_0 + 0, 1186, "", 0, 76, 0, -1);
setPitch( spep_0 + 0, SE003, -1200 );
setTimeStretch( SE003, 0.2, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 0, 1311, "", 0, 40, 0, -1);
setPitch( spep_0 + 0, SE005, 300 );
setTimeStretch( SE005, 1.2, 30, 4 );
SE006 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 186, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE006, 79 );

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ハッチャン飛んでくる
SE008 = playSeVer2( spep_0 + 102, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 102, 44, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 132, 9, "",spep_0 + 210, 0, 50, -1);

--筋斗雲飛んでくる
SE010 = playSeVer2( spep_0 + 116, 1186, "",spep_0 + 172, 0, 40, -1);
setPitch( spep_0 + 116, SE010, -1200 );
setTimeStretch( SE010, 0.2, 30, 4 );

--ジャンプ
SE012 = playSeVer2( spep_0 + 172, 1007, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 172, 1117, "",spep_0 + 240, 0, 12, -1);

--着地
SE014 = playSeVer2( spep_0 + 224, 1192, "",spep_0 + 252, 0, 10, -1);
SE015 = playSeVer2( spep_0 + 226, 1108, "", 0, 0, 0, -1);

--突っ込んでくる
SE016 = playSeVer2( spep_0 + 234, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 234, 44, "",spep_0 + 278, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 330 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 258 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
   
    pauseAll( SP_dodge, 67);   
    
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

-- ** 音 ** --
--如意棒回す
SE018 = playSeVer2( spep_0 + 278, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 278, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 284, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 284, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_0 + 290, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 290, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_0 + 296, 1151, "", 0, 0, 0, 1.0);
SE022 = playSeVer2( spep_0 + 306, 1006, "",spep_0 + 322, 0, 4, 1.0);

-- ** 次の準備 ** --
spep_1 = spep_0 + 330;


------------------------------------------------------
-- 如意棒で攻撃(40F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --如意棒で攻撃    ef_002_front
setEffMoveKey( spep_1 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_f, 0 );
setEffRotateKey( spep_1 + 40, slash_f, 0 );
setEffAlphaKey( spep_1 + 0, slash_f, 255 );
setEffAlphaKey( spep_1 + 40 -1, slash_f, 255 );
setEffAlphaKey( spep_1 + 40, slash_f, 0 );

slash_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --如意棒で攻撃    ef_002_back
setEffMoveKey( spep_1 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_b, 0 );
setEffRotateKey( spep_1 + 40, slash_b, 0 );
setEffAlphaKey( spep_1 + 0, slash_b, 255 );
setEffAlphaKey( spep_1 + 40 -1, slash_b, 255 );
setEffAlphaKey( spep_1 + 40, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 43, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 12, 1, 108 );

setMoveKey( spep_1 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_1 + 1, 1, -0.7, -6 , 0 );
setMoveKey( spep_1 + 2, 1, -1.5, -12 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -2.3, -18 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -3, -24 , 0 );
setMoveKey( spep_1 -3 + 11, 1, -3.7, -30 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -13.9, -20.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 0.7, -49.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 39, 24.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 32, 37.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 83.1, 117.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 111.6, 170.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 139.5, 222.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 166.8, 273.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 193.5, 322.8 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 193.8, 323.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 194, 323.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 194.2, 324.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 194.3, 324.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 194.4, 324.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 194.4, 325 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 194.5, 325.1 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 194.5, 325.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 1, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 2, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 8, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 14, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 20, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 24, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_1 -3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 + 32, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 34, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 43, 1, 0.17, 0.17 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 43, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE023 = playSeVer2( spep_1 + 0, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 34, 0, 10, -1);

--如意棒ヒット
SE025 = playSeVer2( spep_1 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE025, 89 );
SE026 = playSeVer2( spep_1 + 10, 1110, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 40;


------------------------------------------------------
-- 棒回し正面(54F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
pose = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --棒回し正面 ef_003
setEffMoveKey( spep_2 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_2 + 53, pose, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, pose, -1.0, 1.0 );
setEffScaleKey( spep_2 + 53, pose, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pose, 0 );
setEffRotateKey( spep_2 + 53, pose, 0 );
setEffAlphaKey( spep_2 + 0, pose, 255 );
setEffAlphaKey( spep_2 + 53 -1, pose, 255 );
setEffAlphaKey( spep_2 + 53, pose, 0 );

-- ** 音 ** --
--悟空回転
SE027 = playSeVer2( spep_2 + 0, 1151, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE028, 83 );
SE029 = playSeVer2( spep_2 + 4, 1189, "", 0, 0, 0, -1);

--着地
SE030 = playSeVer2( spep_2 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE030, 127 );
SE031 = playSeVer2( spep_2 + 48, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE031, 141 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 53 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 53;


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

--悟空アップ
SE033 = playSeVer2( spep_3 + 80, 8, "", 0, 0, 0, -1);

--如意棒回す
SE034 = playSeVer2( spep_3 + 86, 1151, "",spep_3 + 104, 0, 6, -1);
SE035 = playSeVer2( spep_3 + 88, 1003, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 棒投げ攻撃(218F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
throw_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --棒投げ攻撃 ef_004_front
setEffMoveKey( spep_4 + 0, throw_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 218, throw_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 218, throw_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw_f, 0 );
setEffRotateKey( spep_4 + 218, throw_f, 0 );
setEffAlphaKey( spep_4 + 0, throw_f, 255 );
setEffAlphaKey( spep_4 + 218 -1, throw_f, 255 );
setEffAlphaKey( spep_4 + 218, throw_f, 0 );

throw_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --棒投げ攻撃 ef_004_back
setEffMoveKey( spep_4 + 0, throw_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 218, throw_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, throw_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 218, throw_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, throw_b, 0 );
setEffRotateKey( spep_4 + 218, throw_b, 0 );
setEffAlphaKey( spep_4 + 0, throw_b, 255 );
setEffAlphaKey( spep_4 + 218 -1, throw_b, 255 );
setEffAlphaKey( spep_4 + 218, throw_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 114, 1, 1 );
setDisp( spep_4 -3 + 221, 1, 0 );
changeAnime( spep_4 -3 + 114, 1, 6 );
changeAnime( spep_4 -3 + 174, 1, 8 );

setMoveKey( spep_4 -3 + 114, 1, 65.1, -396.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 71.4, -391.8 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 77, -387 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 82.1, -382.1 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 86.7, -376.9 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 90.7, -371.4 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 94.2, -365.8 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 97.1, -359.8 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 99.6, -353.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 101.4, -347.5 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 102.7, -340.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 103.5, -334 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 103.7, -327 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 103.5, -319.8 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 102.6, -312.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 101.2, -304.6 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 99.4, -296.7 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 96.9, -288.6 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 93.9, -280.2 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 90.4, -271.6 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 86.3, -262.8 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 81.7, -253.8 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 76.5, -244.5 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 70.9, -235 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 64.6, -225.3 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 57.8, -215.4 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 50.5, -205.2 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 42.7, -194.9 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 34.3, -184.3 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 25.4, -173.4 , 0 );
setMoveKey( spep_4 -3 + 173, 1, 25.4, -173.4 , 0 );--
setMoveKey( spep_4 -3 + 174, 1, 18.5, -68 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 23.8, 42.5 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 23.9, 44.4 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 24, 46.3 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 24.1, 48.2 , 0 );
setMoveKey( spep_4 -3 + 184, 1, -148.8, 226.3 , 0 );
setMoveKey( spep_4 -3 + 186, 1, -156.7, 237.2 , 0 );
setMoveKey( spep_4 -3 + 188, 1, -164.2, 247.8 , 0 );
setMoveKey( spep_4 -3 + 190, 1, -171.3, 258 , 0 );
setMoveKey( spep_4 -3 + 192, 1, -178.1, 267.6 , 0 );
setMoveKey( spep_4 -3 + 194, 1, -184.5, 277 , 0 );
setMoveKey( spep_4 -3 + 196, 1, -190.5, 285.8 , 0 );
setMoveKey( spep_4 -3 + 198, 1, -196.2, 294.3 , 0 );
setMoveKey( spep_4 -3 + 200, 1, -201.5, 302.3 , 0 );
setMoveKey( spep_4 -3 + 202, 1, -206.4, 309.9 , 0 );
setMoveKey( spep_4 -3 + 204, 1, -210.9, 317.1 , 0 );
setMoveKey( spep_4 -3 + 206, 1, -215.1, 323.8 , 0 );
setMoveKey( spep_4 -3 + 208, 1, -218.9, 330.2 , 0 );
setMoveKey( spep_4 -3 + 210, 1, -222.3, 336.1 , 0 );
setMoveKey( spep_4 -3 + 212, 1, -225.4, 341.6 , 0 );
setMoveKey( spep_4 -3 + 214, 1, -228.1, 346.6 , 0 );
setMoveKey( spep_4 -3 + 216, 1, -230.4, 351.2 , 0 );
setMoveKey( spep_4 -3 + 218, 1, -232.3, 355.5 , 0 );
setMoveKey( spep_4 -3 + 220, 1, -233.9, 359.3 , 0 );
setMoveKey( spep_4 -3 + 221, 1, -233.9, 359.3 , 0 );

setScaleKey( spep_4 -3 + 114, 1, 0.33, 0.33 );
setScaleKey( spep_4 -3 + 116, 1, 0.34, 0.34 );
setScaleKey( spep_4 -3 + 118, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 120, 1, 0.36, 0.36 );
setScaleKey( spep_4 -3 + 122, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 124, 1, 0.38, 0.38 );
setScaleKey( spep_4 -3 + 126, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 128, 1, 0.4, 0.4 );
setScaleKey( spep_4 -3 + 130, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 132, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 134, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 136, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 138, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 140, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 142, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 144, 1, 0.49, 0.49 );
setScaleKey( spep_4 -3 + 146, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 148, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 150, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 152, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 154, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 156, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 158, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 160, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 162, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 164, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 166, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 168, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 170, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 172, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 173, 1, 0.65, 0.65 );--
setScaleKey( spep_4 -3 + 174, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 221, 1, 0.65, 0.65 );

setRotateKey( spep_4 -3 + 114, 1, -0 );
setRotateKey( spep_4 -3 + 173, 1, -0 );--
setRotateKey( spep_4 -3 + 174, 1, -61.4 );
setRotateKey( spep_4 -3 + 182, 1, -61.4 );
setRotateKey( spep_4 -3 + 184, 1, 2.4 );
setRotateKey( spep_4 -3 + 221, 1, 2.4 );

-- ** 音 ** --
--如意棒回す
SE036 = playSeVer2( spep_4 + 6, 1151, "",spep_4 + 24, 0, 8, -1);
SE037 = playSeVer2( spep_4 + 8, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_4 + 18, 1151, "",spep_4 + 36, 0, 6, -1);
SE039 = playSeVer2( spep_4 + 20, 1003, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 30, 1151, "",spep_4 + 48, 0, 8, -1);
SE041 = playSeVer2( spep_4 + 34, 1003, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_4 + 40, 1151, "",spep_4 + 58, 0, 6, -1);
SE043 = playSeVer2( spep_4 + 42, 1003, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_4 + 46, 1151, "",spep_4 + 64, 0, 6, -1);
SE045 = playSeVer2( spep_4 + 48, 1003, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_4 + 52, 1151, "",spep_4 + 70, 0, 6, -1);
SE047 = playSeVer2( spep_4 + 54, 1003, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_4 + 58, 1151, "",spep_4 + 74, 0, 6, -1);
SE049 = playSeVer2( spep_4 + 58, 1003, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_4 + 62, 1151, "",spep_4 + 80, 0, 6, -1);
SE051 = playSeVer2( spep_4 + 64, 1003, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 68, 1151, "",spep_4 + 86, 0, 6, -1);
SE053 = playSeVer2( spep_4 + 70, 1003, "", 0, 0, 0, -1);

--如意棒投げる
SE054 = playSeVer2( spep_4 + 76, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 76, 1117, "",spep_4 + 166, 0, 4, -1);
SE056 = playSeVer2( spep_4 + 76, 1116, "",spep_4 + 166, 0, 4, -1);

--如意棒飛んでいく
SE057 = playSeVer2( spep_4 + 104, 1119, "",spep_4 + 166, 0, 4, -1);

--如意棒刺さる
SE058 = playSeVer2( spep_4 + 158, 1061, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_4 + 160, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 160, SE059, 84 );
SE060 = playSeVer2( spep_4 + 160, 1011, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_4 + 160, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 160, SE061, 84 );

--ハッチャン飛んでくる
SE062 = playSeVer2( spep_4 + 208, 1182, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_4 + 208, 9, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_4 + 208, 1068, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_4 + 208, 1314, "",spep_4 + 330, 0, 20, -1);
SE066 = playSeVer2( spep_4 + 208, 1019, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 218 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 218;


------------------------------------------------------
-- ハッチャン攻撃～フィニッシュ(382F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ハッチャン攻撃～フィニッシュ    ef_005_front
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 382, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 382, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 382, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 382, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --ハッチャン攻撃～フィニッシュ    ef_005_back
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 382, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 382, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 382, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 382, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 118, 1, 1 );
setDisp( spep_5 -3 + 176, 1, 0 );
changeAnime( spep_5 -3 + 118, 1, 5 );

setMoveKey( spep_5 -3 + 118, 1, 0.5, -334.1 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 0.4, -284.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 0.3, -234.9 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 0.3, -185.3 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 0.2, -135.7 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 0.2, -86.1 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 0.1, -36.5 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 0.1, -34.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 0.1, -32.9 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 0.1, -31.2 , 0 );
setMoveKey( spep_5 -3 + 140, 1, -0, -29.4 , 0 );
setMoveKey( spep_5 -3 + 142, 1, -0, -27.6 , 0 );
setMoveKey( spep_5 -3 + 144, 1, -0, -25.8 , 0 );
setMoveKey( spep_5 -3 + 146, 1, -0, -24.1 , 0 );
setMoveKey( spep_5 -3 + 148, 1, -0, -22.3 , 0 );
setMoveKey( spep_5 -3 + 150, 1, -0, -20.5 , 0 );
setMoveKey( spep_5 -3 + 152, 1, -0, -18.8 , 0 );
setMoveKey( spep_5 -3 + 154, 1, -0, -17 , 0 );
setMoveKey( spep_5 -3 + 156, 1, -0, -15.2 , 0 );
setMoveKey( spep_5 -3 + 158, 1, -0, -13.4 , 0 );
setMoveKey( spep_5 -3 + 160, 1, -0, -11.7 , 0 );
setMoveKey( spep_5 -3 + 162, 1, -0, -9.9 , 0 );
setMoveKey( spep_5 -3 + 164, 1, -0, -8.1 , 0 );
setMoveKey( spep_5 -3 + 166, 1, -0, -6.4 , 0 );
setMoveKey( spep_5 -3 + 168, 1, -0, -4.6 , 0 );
setMoveKey( spep_5 -3 + 170, 1, -0, -2.8 , 0 );
setMoveKey( spep_5 -3 + 172, 1, -0, -1.1 , 0 );
setMoveKey( spep_5 -3 + 174, 1, -0, 0.7 , 0 );
setMoveKey( spep_5 -3 + 176, 1, -0, 0.7 , 0 );

setScaleKey( spep_5 -3 + 118, 1, 12.64, 12.64 );
setScaleKey( spep_5 -3 + 122, 1, 10.8, 10.8 );
setScaleKey( spep_5 -3 + 124, 1, 8.95, 8.95 );
setScaleKey( spep_5 -3 + 126, 1, 7.1, 7.1 );
setScaleKey( spep_5 -3 + 128, 1, 5.25, 5.25 );
setScaleKey( spep_5 -3 + 130, 1, 3.41, 3.41 );
setScaleKey( spep_5 -3 + 132, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 134, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 136, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 138, 1, 1.36, 1.36 );
setScaleKey( spep_5 -3 + 140, 1, 1.29, 1.29 );
setScaleKey( spep_5 -3 + 142, 1, 1.23, 1.23 );
setScaleKey( spep_5 -3 + 144, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 146, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 148, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 150, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 152, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 154, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 156, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 158, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 160, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 162, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 164, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 166, 1, 0.44, 0.44 );
setScaleKey( spep_5 -3 + 168, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 170, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 172, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 174, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 176, 1, 0.17, 0.17 );

setRotateKey( spep_5 -3 + 118, 1, 14 );
setRotateKey( spep_5 -3 + 176, 1, 14 );

-- ** 音 ** --
--ハッチャン飛んでくる
SE067 = playSeVer2( spep_5 + 54, 1019, "",spep_5 + 112, 0, 20, -1);

--パンチ
SE068 = playSeVer2( spep_5 + 90, 1359, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_5 + 90, 1187, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_5 + 90, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE071 = playSeVer2( spep_5 + 112, 1027, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_5 + 112, 1183, "",spep_5 + 206, 0, 38, -1);

--画面遷移
SE073 = playSeVer2( spep_5 + 168, 44, "", 0, 0, 0, -1);

--二人笑顔
SE074 = playSeVer2( spep_5 + 246, 32, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_5 + 252, 34, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 382 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 272 );
endPhase( spep_5 + 372 );

end