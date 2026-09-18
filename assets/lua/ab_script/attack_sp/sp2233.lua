--1022750:フリーザ(フルパワー)_フルパワーデスボール_sp2233
--sp_effect_a2_00166
--sp2233

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
SP_01 = 157976;	--冒頭～衝撃波まで：手前	ef_001
SP_02 = 157977;	--冒頭～衝撃波まで：奥	ef_002
SP_03 = 157978;	--衝撃波ヒット～爆発：手前	ef_003
SP_04 = 157979;	--衝撃波ヒット～爆発：奥	ef_004
SP_05 = 157980;	--KO	ef_005

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～衝撃波まで(402F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 402, 0x100, -1, 0, 0, 0 );  --冒頭～衝撃波まで：手前	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 402, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 402, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 402, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 402 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 402, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 402, 0x80, -1, 0, 0, 0 );  --冒頭～衝撃波まで：奥	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 402, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 402, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 402, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 402 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 402, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);

--突っ込んでくる
SE003 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 86, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 108 );

--突っ込んでくる
SE005 = playSeVer2( spep_0 + 86, 1278, "",spep_0 + 156, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 402 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 108 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 178, 1, 1 );
setDisp( spep_0 -3 + 234, 1, 0 );
changeAnime( spep_0 + 0, 1, 104 );

setMoveKey( spep_0 -3 + 178, 1, -78.2, -151.9 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -61.2, -149.4 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -44.2, -146.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -27.2, -144.3 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -10.2, -141.8 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 6.8, -139.3 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 23.8, -136.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 40.9, -134.3 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 57.9, -131.7 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 72.1, -125.6 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 86.3, -119.5 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 100.6, -113.5 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 101.1, -115.4 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 107.3, -135.7 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 119, -173.9 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 122.1, -184.1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 123.7, -189.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 124.6, -192.1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 125.2, -194.1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 125.6, -195.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 125.9, -196.5 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 126.1, -197.3 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 126.3, -197.8 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 126.4, -198.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 126.5, -198.4 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 126.5, -198.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 126.5, -198.6 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 126.5, -198.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 126.5, -198.5 , 0 );

setScaleKey( spep_0 -3 + 178, 1, 5.24, 5.24 );
setScaleKey( spep_0 -3 + 180, 1, 5.1, 5.1 );
setScaleKey( spep_0 -3 + 182, 1, 4.96, 4.96 );
setScaleKey( spep_0 -3 + 184, 1, 4.82, 4.82 );
setScaleKey( spep_0 -3 + 186, 1, 4.68, 4.68 );
setScaleKey( spep_0 -3 + 188, 1, 4.54, 4.54 );
setScaleKey( spep_0 -3 + 190, 1, 4.4, 4.4 );
setScaleKey( spep_0 -3 + 192, 1, 4.25, 4.25 );
setScaleKey( spep_0 -3 + 194, 1, 4.11, 4.11 );
setScaleKey( spep_0 -3 + 196, 1, 3.93, 3.93 );
setScaleKey( spep_0 -3 + 198, 1, 3.74, 3.74 );
setScaleKey( spep_0 -3 + 200, 1, 3.55, 3.55 );
setScaleKey( spep_0 -3 + 202, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 204, 1, 3.26, 3.26 );
setScaleKey( spep_0 -3 + 206, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 208, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 210, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 212, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 214, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 216, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 218, 1, 2.48, 2.48 );
setScaleKey( spep_0 -3 + 220, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 222, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 224, 1, 2.46, 2.46 );
setScaleKey( spep_0 -3 + 228, 1, 2.46, 2.46 );
setScaleKey( spep_0 -3 + 230, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 234, 1, 2.45, 2.45 );

setRotateKey( spep_0 -3 + 178, 1, 0 );
setRotateKey( spep_0 -3 + 180, 1, 0.1 );
setRotateKey( spep_0 -3 + 182, 1, 0.3 );
setRotateKey( spep_0 -3 + 184, 1, 0.4 );
setRotateKey( spep_0 -3 + 186, 1, 0.6 );
setRotateKey( spep_0 -3 + 188, 1, 0.7 );
setRotateKey( spep_0 -3 + 190, 1, 0.9 );
setRotateKey( spep_0 -3 + 192, 1, 1 );
setRotateKey( spep_0 -3 + 194, 1, 1.1 );
setRotateKey( spep_0 -3 + 196, 1, 1.3 );
setRotateKey( spep_0 -3 + 198, 1, 1.5 );
setRotateKey( spep_0 -3 + 200, 1, 1.7 );
setRotateKey( spep_0 -3 + 202, 1, 1.9 );
setRotateKey( spep_0 -3 + 204, 1, 3.8 );
setRotateKey( spep_0 -3 + 206, 1, 7.5 );
setRotateKey( spep_0 -3 + 208, 1, 8.4 );
setRotateKey( spep_0 -3 + 210, 1, 8.9 );
setRotateKey( spep_0 -3 + 212, 1, 9.2 );
setRotateKey( spep_0 -3 + 214, 1, 9.4 );
setRotateKey( spep_0 -3 + 216, 1, 9.5 );
setRotateKey( spep_0 -3 + 218, 1, 9.6 );
setRotateKey( spep_0 -3 + 220, 1, 9.7 );
setRotateKey( spep_0 -3 + 222, 1, 9.7 );
setRotateKey( spep_0 -3 + 224, 1, 9.8 );
setRotateKey( spep_0 -3 + 234, 1, 9.8 );

-- ** 音 ** --
--加速して突っ込んでくる
SE006 = playSeVer2( spep_0 + 140, 1182, "", 0, 0, 0, -1);

--加速して突っ込んでくる
SE007 = playSeVer2( spep_0 + 140, 1025, "", 0, 0, 0, -1);

--加速して突っ込んでくる
SE008 = playSeVer2( spep_0 + 140, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 58 );

--加速して突っ込んでくる
SE009 = playSeVer2( spep_0 + 140, 1314, "",spep_0 + 310, 0, 76, -1);

--フェイントジャンプ
SE010 = playSeVer2( spep_0 + 200, 1116, "",spep_0 + 236, 0, 18, -1);

--フェイントジャンプ
SE011 = playSeVer2( spep_0 + 200, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE011, 130 );

--フェイントジャンプ
SE012 = playSeVer2( spep_0 + 202, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 146 );

--左手広げる
SE013 = playSeVer2( spep_0 + 236, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE013, 127 );

--左手広げる
SE014 = playSeVer2( spep_0 + 238, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE014, 151 );
setPitch( spep_0 + 238, SE014, -600 );
setTimeStretch( SE014, 0.6, 30, 4 );

--右手広げる
SE015 = playSeVer2( spep_0 + 276, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE015, 127 );

--右手広げる
SE016 = playSeVer2( spep_0 + 280, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE016, 135 );
setPitch( spep_0 + 280, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

--ズームアウト
SE017 = playSeVer2( spep_0 + 286, 1072, "", 0, 0, 0, -1);

--腕を前に
SE018 = playSeVer2( spep_0 + 336, 1003, "", 0, 0, 0, -1);

--空気砲撃つ
SE019 = playSeVer2( spep_0 + 356, 1284, "",spep_0 +402 + 4, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 356, SE019, 72 );
setPitch( spep_0 + 356, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );

--空気砲撃つ
SE020 = playSeVer2( spep_0 + 356, 1145, "",spep_0 +402 + 10, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 402;


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
--playSe( spep_1 + 0, SE_05 );

--敵ヒット
SE022 = playSeVer2( spep_1 + 88, 1258, "",spep_1 +94 + 64, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE022, 82 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- エフェクト(674F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --衝撃波ヒット～爆発：手前	ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 674, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 674, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 674, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 674, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --衝撃波ヒット～爆発：奥	ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 674, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 674, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 674, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 674, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 58, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );
changeAnime( spep_2 -3 + 6, 1, 108 ); --くの字
changeAnime( spep_2 -3 + 30, 1, 5 );
changeAnime( spep_2 -3 + 50, 1, 106 );

setMoveKey( spep_2  + 0, 1, 124.6, -320.3 , 0 );
setMoveKey( spep_2  + 1, 1, 108.6, -280.6 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 88.4, -228.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 42.3, -34.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 59.1, -8.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 52, -10.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 60.9, -4.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 37.8, 9.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 62.8, -1.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 55.8, -15.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 64.7, 3.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 49.6, 1.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 66.4, 7.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 63, 21.8 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 70.3, 9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -29.8, 75.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -18.7, 79.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -21.6, 61.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -9.5, 44.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -6.1, 26.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -3.3, 11.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -1.1, 0.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 0.4, -8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 1.4, -12.9 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 1.7, -14.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -380.7, 380.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -302.4, 266.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -188.8, 102.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -46.3, -126.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -46.3, -126.6 , 0 );

setScaleKey( spep_2 + 0, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 1, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 5, 1, 2.17, 2.17 );

setScaleKey( spep_2 -3 + 6, 1, 3.26 +0.1, 3.2 -0.2 );
setScaleKey( spep_2 -3 + 8, 1, 3.18 +0.1, 3.08 +0.2 );
setScaleKey( spep_2 -3 + 10, 1, 3.1 +0.2, 2.97 +0.1 );
setScaleKey( spep_2 -3 + 12, 1, 3.07 +0.1, 2.87 +0.1 );
setScaleKey( spep_2 -3 + 14, 1, 3.03 -0.26, 2.77 -0.3 );
setScaleKey( spep_2 -3 + 16, 1, 2.99 -0, 2.67 -0.5 +0.1 );
setScaleKey( spep_2 -3 + 18, 1, 2.9 -0.1, 2.67 -0.2 );
setScaleKey( spep_2 -3 + 20, 1, 2.81 -0.1, 2.66 -0.2 );
setScaleKey( spep_2 -3 + 22, 1, 2.73 -0.1, 2.66 -0.2 );
setScaleKey( spep_2 -3 + 24, 1, 2.67 -0.2, 2.6 -0.1 );
setScaleKey( spep_2 -3 + 26, 1, 2.61 +0.2, 2.55 +0.16 );
setScaleKey( spep_2 -3 + 29, 1, 2.55 +0.2, 2.5 -0.2 );

--[[setScaleKey( spep_2 -3 + 6, 1, 3.26, 3.2 );
setScaleKey( spep_2 -3 + 8, 1, 3.18, 3.08 );
setScaleKey( spep_2 -3 + 10, 1, 3.1, 2.97 );
setScaleKey( spep_2 -3 + 12, 1, 3.07, 2.87 );
setScaleKey( spep_2 -3 + 14, 1, 3.03, 2.77 );
setScaleKey( spep_2 -3 + 16, 1, 2.99, 2.67 );
setScaleKey( spep_2 -3 + 18, 1, 2.9, 2.67 );
setScaleKey( spep_2 -3 + 20, 1, 2.81, 2.66 );
setScaleKey( spep_2 -3 + 22, 1, 2.73, 2.66 );
setScaleKey( spep_2 -3 + 24, 1, 2.67, 2.6 );
setScaleKey( spep_2 -3 + 26, 1, 2.61, 2.55 );
setScaleKey( spep_2 -3 + 29, 1, 2.55, 2.5 );]]

setScaleKey( spep_2 -3 + 30, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 32, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 34, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 42, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 44, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 46, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 49, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 50, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 58, 1, 0.29, 0.29 );

setRotateKey( spep_2  + 0, 1, -123.3 );
setRotateKey( spep_2  + 1, 1, -123.3 );
setRotateKey( spep_2 -3 + 5, 1, -123.7 );

setRotateKey( spep_2 -3 + 6, 1, 0 -11 );
setRotateKey( spep_2 -3 + 8, 1, 0 -1.2 );
setRotateKey( spep_2 -3 + 10, 1, 0 +1.2 );
setRotateKey( spep_2 -3 + 12, 1, 0 +1.7 );
setRotateKey( spep_2 -3 + 14, 1, 0 +5.6 );
setRotateKey( spep_2 -3 + 16, 1, 0 +9.7 );
setRotateKey( spep_2 -3 + 18, 1, 0 +10.2 );
setRotateKey( spep_2 -3 + 20, 1, 0 +11 );
setRotateKey( spep_2 -3 + 22, 1, 0 +11 );
setRotateKey( spep_2 -3 + 24, 1, 0 +10 );
setRotateKey( spep_2 -3 + 26, 1, 0 +1.1 );
setRotateKey( spep_2 -3 + 29, 1, 0 -2 );

setRotateKey( spep_2 -3 + 30, 1, 0 );
setRotateKey( spep_2 -3 + 49, 1, 0 );
setRotateKey( spep_2 -3 + 50, 1, 77.7 );
setRotateKey( spep_2 -3 + 52, 1, 79.4 );
setRotateKey( spep_2 -3 + 54, 1, 81.9 );
setRotateKey( spep_2 -3 + 58, 1, 85.2 );

KO = entryEffect( spep_2 + 662, SP_05, 0x100, -1, 0, 0, 0 );  --衝撃波ヒット～爆発：手前	ef_003
setEffMoveKey( spep_2 + 662, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 848, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 662, KO, 1.0, 1.0 );
setEffScaleKey( spep_2 + 848, KO, 1.0, 1.0 );
setEffRotateKey( spep_2 + 662, KO, 0 );
setEffRotateKey( spep_2 + 848, KO, 0 );
setEffAlphaKey( spep_2 + 662, KO, 255 );
setEffAlphaKey( spep_2 + 848, KO, 255 );

-- ** 音 ** --
--敵ヒット
SE023 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE023, 75 );

--敵飛んでいく
SE024 = playSeVer2( spep_2 + 6, 1121, "",spep_2 + 64, 0, 10, -1);

--敵落ちる
SE025 = playSeVer2( spep_2 + 48, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE025, 158 );
setStartTimeMs( SE025,  333 );

--敵落ちる
SE026 = playSeVer2( spep_2 + 48, 1024, "", 0, 0, 0, -1);

--気弾生成する
SE027 = playSeVer2( spep_2 + 132, 1303, "",spep_2 + 196, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 132, SE027, 75 );
setPitch( spep_2 + 132, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );

--気弾生成する
SE028 = playSeVer2( spep_2 + 132, 1289, "",spep_2 + 196, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 132, SE028, 65 );
setPitch( spep_2 + 132, SE028, -800 );
setTimeStretch( SE028, 0.47, 30, 4 );

--気弾生成ベース
SE029 = playSeVer2( spep_2 + 154, 1158, "", 0, 0, 0, -1);

--気弾生成ベース
SE030 = playSeVer2( spep_2 + 158, 1252, "", 0, 0, 0, -1);

--気弾大きくなる１
SE031 = playSeVer2( spep_2 + 158, 1064, "",spep_2 + 192, 0, 12, -1);

--気弾大きくなる１
SE032 = playSeVer2( spep_2 + 168, 1039, "",spep_2 + 186, 2, 4, -1);
setSeVolumeByWorkId( spep_2 + 168, SE032, 248 );
setStartTimeMs( SE032,  133 );
setPitch( spep_2 + 168, SE032, -200 );
setTimeStretch( SE032, 0.87, 30, 4 );

--気弾大きくなる１
SE033 = playSeVer2( spep_2 + 176, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE033, 207 );
setStartTimeMs( SE033,  200 );
setPitch( spep_2 + 176, SE033, -500 );
setTimeStretch( SE033, 0.67, 30, 4 );

--気弾大きくなる１
SE034 = playSeVer2( spep_2 + 178, 1246, "",spep_2 + 192, 0, 2, -1);
setSeVolumeByWorkId( spep_2 + 178, SE034, 190 );
setPitch( spep_2 + 178, SE034, 400 );
setTimeStretch( SE034, 1.27, 30, 4 );

--気弾大きくなる２
SE035 = playSeVer2( spep_2 + 194, 1064, "",spep_2 + 236, 0, 10, -1);

--気弾大きくなる２
SE036 = playSeVer2( spep_2 + 194, 1014, "",spep_2 + 236, 0, 10, -1);

--気弾大きくなる２
SE037 = playSeVer2( spep_2 + 204, 1039, "",spep_2 + 220, 2, 4, -1);
setSeVolumeByWorkId( spep_2 + 204, SE037, 228 );
setStartTimeMs( SE037,  133 );
setPitch( spep_2 + 204, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );

--気弾大きくなる２
SE038 = playSeVer2( spep_2 + 212, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE038, 182 );
setStartTimeMs( SE038,  200 );
setPitch( spep_2 + 212, SE038, -500 );
setTimeStretch( SE038, 0.67, 30, 4 );

--気弾大きくなる２
SE039 = playSeVer2( spep_2 + 212, 1246, "",spep_2 + 226, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 212, SE039, 170 );
setPitch( spep_2 + 212, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );

--気弾大きくなる３
SE040 = playSeVer2( spep_2 + 240, 1064, "",spep_2 + 276, 0, 12, -1);

--気弾大きくなる３
SE041 = playSeVer2( spep_2 + 240, 1060, "",spep_2 + 280, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 240, SE041, 80 );

--気弾大きくなる３
SE042 = playSeVer2( spep_2 + 240, 1068, "",spep_2 + 296, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 240, SE042, 85 );

--気弾大きくなる３
SE043 = playSeVer2( spep_2 + 250, 1039, "",spep_2 + 264, 2, 2, -1);
setSeVolumeByWorkId( spep_2 + 250, SE043, 228 );
setStartTimeMs( SE043,  150 );
setPitch( spep_2 + 250, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );

--気弾大きくなる３
SE044 = playSeVer2( spep_2 + 256, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE044, 182 );
setStartTimeMs( SE044,  183 );
setPitch( spep_2 + 256, SE044, -500 );
setTimeStretch( SE044, 0.67, 30, 4 );

--気弾大きくなる３
SE045 = playSeVer2( spep_2 + 258, 1246, "",spep_2 + 270, 0, 2, -1);
setSeVolumeByWorkId( spep_2 + 258, SE045, 170 );
setPitch( spep_2 + 258, SE045, 400 );
setTimeStretch( SE045, 1.27, 30, 4 );

--気弾大きくなる４
SE046 = playSeVer2( spep_2 + 282, 1060, "",spep_2 + 338, 0, 26, -1);

--気弾大きくなる４
SE047 = playSeVer2( spep_2 + 286, 1068, "",spep_2 + 330, 0, 20, -1);

--気弾大きくなる４
SE048 = playSeVer2( spep_2 + 294, 1039, "",spep_2 + 318, 4, 4, -1);
setSeVolumeByWorkId( spep_2 + 294, SE048, 208 );
setStartTimeMs( SE048,  133 );
setPitch( spep_2 + 300, SE048, -200 );
setTimeStretch( SE048, 0.87, 30, 4 );

--気弾大きくなる４
SE049 = playSeVer2( spep_2 + 302, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE049, 192 );
setStartTimeMs( SE049,  200 );
setPitch( spep_2 + 302, SE049, -500 );
setTimeStretch( SE049, 0.67, 30, 4 );

--気弾大きくなる４
SE050 = playSeVer2( spep_2 + 304, 1246, "",spep_2 + 318, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 304, SE050, 170 );
setPitch( spep_2 + 304, SE050, 400 );
setTimeStretch( SE050, 1.27, 30, 4 );

--気弾大きくなる５
SE051 = playSeVer2( spep_2 + 322, 1060, "",spep_2 + 378, 0, 26, -1);

--気弾大きくなる５
SE052 = playSeVer2( spep_2 + 326, 1068, "",spep_2 + 370, 0, 20, -1);

--気弾大きくなる５
SE053 = playSeVer2( spep_2 + 340, 1039, "",spep_2 + 356, 4, 2, -1);
setSeVolumeByWorkId( spep_2 + 340, SE053, 228 );
setStartTimeMs( SE053,  133 );
setPitch( spep_2 + 340, SE053, -200 );
setTimeStretch( SE053, 0.87, 30, 4 );

--気弾大きくなる５
SE054 = playSeVer2( spep_2 + 348, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE054, 182 );
setStartTimeMs( SE054,  200 );
setPitch( spep_2 + 348, SE054, -500 );
setTimeStretch( SE054, 0.67, 30, 4 );

--気弾溜め最大
SE055 = playSeVer2( spep_2 + 346, 1282, "",spep_2 + 446, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 346, SE055, 55 );

--気弾溜め最大
SE056 = playSeVer2( spep_2 + 346, 1265, "",spep_2 + 446, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 346, SE056, 112 );

--気弾大きくなる５
SE057 = playSeVer2( spep_2 + 350, 1246, "",spep_2 + 362, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 350, SE057, 170 );
setPitch( spep_2 + 350, SE057, 400 );
setTimeStretch( SE057, 1.27, 30, 4 );

--ズームアウト
SE058 = playSeVer2( spep_2 + 366, 1072, "", 0, 0, 0, -1);

--アップ
SE059 = playSeVer2( spep_2 + 430, 9, "",spep_2 + 466, 0, 18, -1);

--気弾発射
SE060 = playSeVer2( spep_2 + 444, 1193, "",spep_2 + 628, 0, 12, -1);

--気弾発射
SE061 = playSeVer2( spep_2 + 444, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE061, 79 );

--気弾発射
SE062 = playSeVer2( spep_2 + 444, 1213, "",spep_2 + 588, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 444, SE062, 84 );

--気弾近づく
SE063 = playSeVer2( spep_2 + 480, 1226, "",spep_2 + 590, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 480, SE063, 85 );

--ヒット
SE064 = playSeVer2( spep_2 + 550, 1024, "", 0, 0, 0, -1);

--ヒット
SE065 = playSeVer2( spep_2 + 550, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 550, SE065, 86 );

--爆発
SE066 = playSeVer2( spep_2 + 616, 1159, "", 0, 0, 0, -1);

--爆発
SE067 = playSeVer2( spep_2 + 616, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 616, SE067, 89 );

--爆発
SE068 = playSeVer2( spep_2 + 616, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 616, SE068, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 674 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 552 );
entryFade( spep_2 + 664 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 664 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～衝撃波まで(402F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 402, 0x100, -1, 0, 0, 0 );  --冒頭～衝撃波まで：手前	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 402, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 402, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 402, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 402 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 402, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 402, 0x80, -1, 0, 0, 0 );  --冒頭～衝撃波まで：奥	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 402, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 402, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 402, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 402 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 402, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);

--突っ込んでくる
SE003 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 86, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 108 );

--突っ込んでくる
SE005 = playSeVer2( spep_0 + 86, 1278, "",spep_0 + 156, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 402 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 108 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 178, 1, 1 );
setDisp( spep_0 -3 + 234, 1, 0 );
changeAnime( spep_0 + 0, 1, 4 );

setMoveKey( spep_0 -3 + 178, 1, 78.2, -151.9 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 61.2, -149.4 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 44.2, -146.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 27.2, -144.3 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 10.2, -141.8 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -6.8, -139.3 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -23.8, -136.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -40.9, -134.3 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -57.9, -131.7 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -72.1, -125.6 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -86.3, -119.5 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -100.6, -113.5 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -101.1, -115.4 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -107.3, -135.7 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -119, -173.9 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -122.1, -184.1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -123.7, -189.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -124.6, -192.1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -125.2, -194.1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -125.6, -195.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -125.9, -196.5 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -126.1, -197.3 , 0 );
setMoveKey( spep_0 -3 + 222, 1, -126.3, -197.8 , 0 );
setMoveKey( spep_0 -3 + 224, 1, -126.4, -198.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -126.5, -198.4 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -126.5, -198.5 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -126.5, -198.6 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -126.5, -198.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -126.5, -198.5 , 0 );

setScaleKey( spep_0 -3 + 178, 1, 5.24, 5.24 );
setScaleKey( spep_0 -3 + 180, 1, 5.1, 5.1 );
setScaleKey( spep_0 -3 + 182, 1, 4.96, 4.96 );
setScaleKey( spep_0 -3 + 184, 1, 4.82, 4.82 );
setScaleKey( spep_0 -3 + 186, 1, 4.68, 4.68 );
setScaleKey( spep_0 -3 + 188, 1, 4.54, 4.54 );
setScaleKey( spep_0 -3 + 190, 1, 4.4, 4.4 );
setScaleKey( spep_0 -3 + 192, 1, 4.25, 4.25 );
setScaleKey( spep_0 -3 + 194, 1, 4.11, 4.11 );
setScaleKey( spep_0 -3 + 196, 1, 3.93, 3.93 );
setScaleKey( spep_0 -3 + 198, 1, 3.74, 3.74 );
setScaleKey( spep_0 -3 + 200, 1, 3.55, 3.55 );
setScaleKey( spep_0 -3 + 202, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 204, 1, 3.26, 3.26 );
setScaleKey( spep_0 -3 + 206, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 208, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 210, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 212, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 214, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 216, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 218, 1, 2.48, 2.48 );
setScaleKey( spep_0 -3 + 220, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 222, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 224, 1, 2.46, 2.46 );
setScaleKey( spep_0 -3 + 228, 1, 2.46, 2.46 );
setScaleKey( spep_0 -3 + 230, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 234, 1, 2.45, 2.45 );

setRotateKey( spep_0 -3 + 178, 1, -0 );
setRotateKey( spep_0 -3 + 180, 1, -0.1 );
setRotateKey( spep_0 -3 + 182, 1, -0.3 );
setRotateKey( spep_0 -3 + 184, 1, -0.4 );
setRotateKey( spep_0 -3 + 186, 1, -0.6 );
setRotateKey( spep_0 -3 + 188, 1, -0.7 );
setRotateKey( spep_0 -3 + 190, 1, -0.9 );
setRotateKey( spep_0 -3 + 192, 1, -1 );
setRotateKey( spep_0 -3 + 194, 1, -1.1 );
setRotateKey( spep_0 -3 + 196, 1, -1.3 );
setRotateKey( spep_0 -3 + 198, 1, -1.5 );
setRotateKey( spep_0 -3 + 200, 1, -1.7 );
setRotateKey( spep_0 -3 + 202, 1, -1.9 );
setRotateKey( spep_0 -3 + 204, 1, -3.8 );
setRotateKey( spep_0 -3 + 206, 1, -7.5 );
setRotateKey( spep_0 -3 + 208, 1, -8.4 );
setRotateKey( spep_0 -3 + 210, 1, -8.9 );
setRotateKey( spep_0 -3 + 212, 1, -9.2 );
setRotateKey( spep_0 -3 + 214, 1, -9.4 );
setRotateKey( spep_0 -3 + 216, 1, -9.5 );
setRotateKey( spep_0 -3 + 218, 1, -9.6 );
setRotateKey( spep_0 -3 + 220, 1, -9.7 );
setRotateKey( spep_0 -3 + 222, 1, -9.7 );
setRotateKey( spep_0 -3 + 224, 1, -9.8 );
setRotateKey( spep_0 -3 + 234, 1, -9.8 );

-- ** 音 ** --
--加速して突っ込んでくる
SE006 = playSeVer2( spep_0 + 140, 1182, "", 0, 0, 0, -1);

--加速して突っ込んでくる
SE007 = playSeVer2( spep_0 + 140, 1025, "", 0, 0, 0, -1);

--加速して突っ込んでくる
SE008 = playSeVer2( spep_0 + 140, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 58 );

--加速して突っ込んでくる
SE009 = playSeVer2( spep_0 + 140, 1314, "",spep_0 + 310, 0, 76, -1);

--フェイントジャンプ
SE010 = playSeVer2( spep_0 + 200, 1116, "",spep_0 + 236, 0, 18, -1);

--フェイントジャンプ
SE011 = playSeVer2( spep_0 + 200, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE011, 130 );

--フェイントジャンプ
SE012 = playSeVer2( spep_0 + 202, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 146 );

--左手広げる
SE013 = playSeVer2( spep_0 + 236, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE013, 127 );

--左手広げる
SE014 = playSeVer2( spep_0 + 238, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE014, 151 );
setPitch( spep_0 + 238, SE014, -600 );
setTimeStretch( SE014, 0.6, 30, 4 );

--右手広げる
SE015 = playSeVer2( spep_0 + 276, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE015, 127 );

--右手広げる
SE016 = playSeVer2( spep_0 + 280, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE016, 135 );
setPitch( spep_0 + 280, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

--ズームアウト
SE017 = playSeVer2( spep_0 + 286, 1072, "", 0, 0, 0, -1);

--腕を前に
SE018 = playSeVer2( spep_0 + 336, 1003, "", 0, 0, 0, -1);

--空気砲撃つ
SE019 = playSeVer2( spep_0 + 356, 1284, "",spep_0 +402 + 4, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 356, SE019, 72 );
setPitch( spep_0 + 356, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );

--空気砲撃つ
SE020 = playSeVer2( spep_0 + 356, 1145, "",spep_0 +402 + 10, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 402;


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

--敵ヒット
SE022 = playSeVer2( spep_1 + 88, 1258, "",spep_1 +94 + 64, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE022, 82 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- エフェクト(674F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --衝撃波ヒット～爆発：手前	ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 674, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 674, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 674, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 674, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --衝撃波ヒット～爆発：奥	ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 674, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 674, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 674, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 674, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 58, 1, 0 );
changeAnime( spep_2 + 0, 1, 7 );
changeAnime( spep_2 -3 + 6, 1, 8 );
changeAnime( spep_2 -3 + 30, 1, 105 );
changeAnime( spep_2 -3 + 50, 1, 6 );

setMoveKey( spep_2  + 0, 1, -124.6, -320.3 , 0 );
setMoveKey( spep_2  + 1, 1, -108.6, -280.6 , 0 );
setMoveKey( spep_2 -3 + 5, 1, -88.4, -228.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -42.3, -34.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -59.1, -8.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -52, -10.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -60.9, -4.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -37.8, 9.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -62.8, -1.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -55.8, -15.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -64.7, 3.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -49.6, 1.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -66.4, 7.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -63, 21.8 , 0 );
setMoveKey( spep_2 -3 + 29, 1, -70.3, 9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 29.8, 75.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 18.7, 79.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 21.6, 61.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 9.5, 44.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 6.1, 26.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 3.3, 11.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 1.1, 0.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -0.4, -8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -1.4, -12.9 , 0 );
setMoveKey( spep_2 -3 + 49, 1, -1.7, -14.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 380.7, 380.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 302.4, 266.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 188.8, 102.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 46.3, -126.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 46.3, -126.6 , 0 );

setScaleKey( spep_2 + 0, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 1, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 5, 1, 2.17, 2.17 );

setScaleKey( spep_2 -3 + 6, 1, 3.26 +0.1, 3.2 -0.2 );
setScaleKey( spep_2 -3 + 8, 1, 3.18 +0.1, 3.08 +0.2 );
setScaleKey( spep_2 -3 + 10, 1, 3.1 +0.2, 2.97 +0.1 );
setScaleKey( spep_2 -3 + 12, 1, 3.07 +0.1, 2.87 +0.1 );
setScaleKey( spep_2 -3 + 14, 1, 3.03 -0.26, 2.77 -0.3 );
setScaleKey( spep_2 -3 + 16, 1, 2.99 -0, 2.67 -0.5 +0.1 );
setScaleKey( spep_2 -3 + 18, 1, 2.9 -0.1, 2.67 -0.2 );
setScaleKey( spep_2 -3 + 20, 1, 2.81 -0.1, 2.66 -0.2 );
setScaleKey( spep_2 -3 + 22, 1, 2.73 -0.1, 2.66 -0.2 );
setScaleKey( spep_2 -3 + 24, 1, 2.67 -0.2, 2.6 -0.1 );
setScaleKey( spep_2 -3 + 26, 1, 2.61 +0.2, 2.55 +0.16 );
setScaleKey( spep_2 -3 + 29, 1, 2.55 +0.2, 2.5 -0.2 );

--[[setScaleKey( spep_2 -3 + 6, 1, 3.26, 3.2 );
setScaleKey( spep_2 -3 + 8, 1, 3.18, 3.08 );
setScaleKey( spep_2 -3 + 10, 1, 3.1, 2.97 );
setScaleKey( spep_2 -3 + 12, 1, 3.07, 2.87 );
setScaleKey( spep_2 -3 + 14, 1, 3.03, 2.77 );
setScaleKey( spep_2 -3 + 16, 1, 2.99, 2.67 );
setScaleKey( spep_2 -3 + 18, 1, 2.9, 2.67 );
setScaleKey( spep_2 -3 + 20, 1, 2.81, 2.66 );
setScaleKey( spep_2 -3 + 22, 1, 2.73, 2.66 );
setScaleKey( spep_2 -3 + 24, 1, 2.67, 2.6 );
setScaleKey( spep_2 -3 + 26, 1, 2.61, 2.55 );
setScaleKey( spep_2 -3 + 29, 1, 2.55, 2.5 );]]

setScaleKey( spep_2 -3 + 30, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 32, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 34, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 42, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 44, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 46, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 49, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 50, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 58, 1, 0.29, 0.29 );

setRotateKey( spep_2  + 0, 1, 123.3 );
setRotateKey( spep_2  + 1, 1, 123.3 );
setRotateKey( spep_2 -3 + 5, 1, 123.7 );

setRotateKey( spep_2 -3 + 6, 1, 0 +11 );
setRotateKey( spep_2 -3 + 8, 1, 0 +1.2 );
setRotateKey( spep_2 -3 + 10, 1, 0 -1.2 );
setRotateKey( spep_2 -3 + 12, 1, 0 -1.7 );
setRotateKey( spep_2 -3 + 14, 1, 0 -5.6 );
setRotateKey( spep_2 -3 + 16, 1, 0 -9.7 );
setRotateKey( spep_2 -3 + 18, 1, 0 -10.2 );
setRotateKey( spep_2 -3 + 20, 1, 0 -11 );
setRotateKey( spep_2 -3 + 22, 1, 0 -11 );
setRotateKey( spep_2 -3 + 24, 1, 0 -10 );
setRotateKey( spep_2 -3 + 26, 1, 0 -1.1 );
setRotateKey( spep_2 -3 + 29, 1, 0 +2 );

setRotateKey( spep_2 -3 + 30, 1, -0 );
setRotateKey( spep_2 -3 + 49, 1, -0 );
setRotateKey( spep_2 -3 + 50, 1, -77.7 );
setRotateKey( spep_2 -3 + 52, 1, -79.4 );
setRotateKey( spep_2 -3 + 54, 1, -81.9 );
setRotateKey( spep_2 -3 + 58, 1, -85.2 );

KO = entryEffect( spep_2 + 662, SP_05, 0x100, -1, 0, 0, 0 );  --衝撃波ヒット～爆発：手前	ef_003
setEffMoveKey( spep_2 + 662, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 848, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 662, KO, -1.0, 1.0 );
setEffScaleKey( spep_2 + 848, KO, -1.0, 1.0 );
setEffRotateKey( spep_2 + 662, KO, 0 );
setEffRotateKey( spep_2 + 848, KO, 0 );
setEffAlphaKey( spep_2 + 662, KO, 255 );
setEffAlphaKey( spep_2 + 848, KO, 255 );

-- ** 音 ** --
--敵ヒット
SE023 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE023, 75 );

--敵飛んでいく
SE024 = playSeVer2( spep_2 + 6, 1121, "",spep_2 + 64, 0, 10, -1);

--敵落ちる
SE025 = playSeVer2( spep_2 + 48, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE025, 158 );
setStartTimeMs( SE025,  333 );

--敵落ちる
SE026 = playSeVer2( spep_2 + 48, 1024, "", 0, 0, 0, -1);

--気弾生成する
SE027 = playSeVer2( spep_2 + 132, 1303, "",spep_2 + 196, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 132, SE027, 75 );
setPitch( spep_2 + 132, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );

--気弾生成する
SE028 = playSeVer2( spep_2 + 132, 1289, "",spep_2 + 196, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 132, SE028, 65 );
setPitch( spep_2 + 132, SE028, -800 );
setTimeStretch( SE028, 0.47, 30, 4 );

--気弾生成ベース
SE029 = playSeVer2( spep_2 + 154, 1158, "", 0, 0, 0, -1);

--気弾生成ベース
SE030 = playSeVer2( spep_2 + 158, 1252, "", 0, 0, 0, -1);

--気弾大きくなる１
SE031 = playSeVer2( spep_2 + 158, 1064, "",spep_2 + 192, 0, 12, -1);

--気弾大きくなる１
SE032 = playSeVer2( spep_2 + 168, 1039, "",spep_2 + 186, 2, 4, -1);
setSeVolumeByWorkId( spep_2 + 168, SE032, 248 );
setStartTimeMs( SE032,  133 );
setPitch( spep_2 + 168, SE032, -200 );
setTimeStretch( SE032, 0.87, 30, 4 );

--気弾大きくなる１
SE033 = playSeVer2( spep_2 + 176, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE033, 207 );
setStartTimeMs( SE033,  200 );
setPitch( spep_2 + 176, SE033, -500 );
setTimeStretch( SE033, 0.67, 30, 4 );

--気弾大きくなる１
SE034 = playSeVer2( spep_2 + 178, 1246, "",spep_2 + 192, 0, 2, -1);
setSeVolumeByWorkId( spep_2 + 178, SE034, 190 );
setPitch( spep_2 + 178, SE034, 400 );
setTimeStretch( SE034, 1.27, 30, 4 );

--気弾大きくなる２
SE035 = playSeVer2( spep_2 + 194, 1064, "",spep_2 + 236, 0, 10, -1);

--気弾大きくなる２
SE036 = playSeVer2( spep_2 + 194, 1014, "",spep_2 + 236, 0, 10, -1);

--気弾大きくなる２
SE037 = playSeVer2( spep_2 + 204, 1039, "",spep_2 + 220, 2, 4, -1);
setSeVolumeByWorkId( spep_2 + 204, SE037, 228 );
setStartTimeMs( SE037,  133 );
setPitch( spep_2 + 204, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );

--気弾大きくなる２
SE038 = playSeVer2( spep_2 + 212, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE038, 182 );
setStartTimeMs( SE038,  200 );
setPitch( spep_2 + 212, SE038, -500 );
setTimeStretch( SE038, 0.67, 30, 4 );

--気弾大きくなる２
SE039 = playSeVer2( spep_2 + 212, 1246, "",spep_2 + 226, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 212, SE039, 170 );
setPitch( spep_2 + 212, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );

--気弾大きくなる３
SE040 = playSeVer2( spep_2 + 240, 1064, "",spep_2 + 276, 0, 12, -1);

--気弾大きくなる３
SE041 = playSeVer2( spep_2 + 240, 1060, "",spep_2 + 280, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 240, SE041, 80 );

--気弾大きくなる３
SE042 = playSeVer2( spep_2 + 240, 1068, "",spep_2 + 296, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 240, SE042, 85 );

--気弾大きくなる３
SE043 = playSeVer2( spep_2 + 250, 1039, "",spep_2 + 264, 2, 2, -1);
setSeVolumeByWorkId( spep_2 + 250, SE043, 228 );
setStartTimeMs( SE043,  150 );
setPitch( spep_2 + 250, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );

--気弾大きくなる３
SE044 = playSeVer2( spep_2 + 256, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE044, 182 );
setStartTimeMs( SE044,  183 );
setPitch( spep_2 + 256, SE044, -500 );
setTimeStretch( SE044, 0.67, 30, 4 );

--気弾大きくなる３
SE045 = playSeVer2( spep_2 + 258, 1246, "",spep_2 + 270, 0, 2, -1);
setSeVolumeByWorkId( spep_2 + 258, SE045, 170 );
setPitch( spep_2 + 258, SE045, 400 );
setTimeStretch( SE045, 1.27, 30, 4 );

--気弾大きくなる４
SE046 = playSeVer2( spep_2 + 282, 1060, "",spep_2 + 338, 0, 26, -1);

--気弾大きくなる４
SE047 = playSeVer2( spep_2 + 286, 1068, "",spep_2 + 330, 0, 20, -1);

--気弾大きくなる４
SE048 = playSeVer2( spep_2 + 294, 1039, "",spep_2 + 318, 4, 4, -1);
setSeVolumeByWorkId( spep_2 + 294, SE048, 208 );
setStartTimeMs( SE048,  133 );
setPitch( spep_2 + 300, SE048, -200 );
setTimeStretch( SE048, 0.87, 30, 4 );

--気弾大きくなる４
SE049 = playSeVer2( spep_2 + 302, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE049, 192 );
setStartTimeMs( SE049,  200 );
setPitch( spep_2 + 302, SE049, -500 );
setTimeStretch( SE049, 0.67, 30, 4 );

--気弾大きくなる４
SE050 = playSeVer2( spep_2 + 304, 1246, "",spep_2 + 318, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 304, SE050, 170 );
setPitch( spep_2 + 304, SE050, 400 );
setTimeStretch( SE050, 1.27, 30, 4 );

--気弾大きくなる５
SE051 = playSeVer2( spep_2 + 322, 1060, "",spep_2 + 378, 0, 26, -1);

--気弾大きくなる５
SE052 = playSeVer2( spep_2 + 326, 1068, "",spep_2 + 370, 0, 20, -1);

--気弾大きくなる５
SE053 = playSeVer2( spep_2 + 340, 1039, "",spep_2 + 356, 4, 2, -1);
setSeVolumeByWorkId( spep_2 + 340, SE053, 228 );
setStartTimeMs( SE053,  133 );
setPitch( spep_2 + 340, SE053, -200 );
setTimeStretch( SE053, 0.87, 30, 4 );

--気弾大きくなる５
SE054 = playSeVer2( spep_2 + 348, 1246, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE054, 182 );
setStartTimeMs( SE054,  200 );
setPitch( spep_2 + 348, SE054, -500 );
setTimeStretch( SE054, 0.67, 30, 4 );

--気弾溜め最大
SE055 = playSeVer2( spep_2 + 346, 1282, "",spep_2 + 446, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 346, SE055, 55 );

--気弾溜め最大
SE056 = playSeVer2( spep_2 + 346, 1265, "",spep_2 + 446, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 346, SE056, 112 );

--気弾大きくなる５
SE057 = playSeVer2( spep_2 + 350, 1246, "",spep_2 + 362, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 350, SE057, 170 );
setPitch( spep_2 + 350, SE057, 400 );
setTimeStretch( SE057, 1.27, 30, 4 );

--ズームアウト
SE058 = playSeVer2( spep_2 + 366, 1072, "", 0, 0, 0, -1);

--アップ
SE059 = playSeVer2( spep_2 + 430, 9, "",spep_2 + 466, 0, 18, -1);

--気弾発射
SE060 = playSeVer2( spep_2 + 444, 1193, "",spep_2 + 628, 0, 12, -1);

--気弾発射
SE061 = playSeVer2( spep_2 + 444, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE061, 79 );

--気弾発射
SE062 = playSeVer2( spep_2 + 444, 1213, "",spep_2 + 588, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 444, SE062, 84 );

--気弾近づく
SE063 = playSeVer2( spep_2 + 480, 1226, "",spep_2 + 590, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 480, SE063, 85 );

--ヒット
SE064 = playSeVer2( spep_2 + 550, 1024, "", 0, 0, 0, -1);

--ヒット
SE065 = playSeVer2( spep_2 + 550, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 550, SE065, 86 );

--爆発
SE066 = playSeVer2( spep_2 + 616, 1159, "", 0, 0, 0, -1);

--爆発
SE067 = playSeVer2( spep_2 + 616, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 616, SE067, 89 );

--爆発
SE068 = playSeVer2( spep_2 + 616, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 616, SE068, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 674 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 552 );
entryFade( spep_2 + 664 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 664 );

end