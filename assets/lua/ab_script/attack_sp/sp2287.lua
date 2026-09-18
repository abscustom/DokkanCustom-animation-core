--1023310:超サイヤ人ベジータ(ゼノ)_ビッグ・バン・アタック
--sp_effect_a2_00172
--sp2287

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
SP_01 = 158570; --前半    ef_001
SP_02 = 158571; --後半    ef_002

--敵側
SP_01r = 158616; --前半 敵 ef_001r
SP_02r = 158617; --後半 敵 ef_002r

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
-- エフェクト(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 174, 0x100, -1, 0, 0, 0 );  --前半    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 174, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 174, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 174, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 174 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 174, first_f, 0 );

spep_x = spep_0 + 90;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 63 );
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);

--手を前に出す
SE005 = playSeVer2( spep_0 + 52, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE005, 89 );

--気弾溜め
SE006 = playSeVer2( spep_0 + 54, 1296, "",spep_0 +174 + 2, 0, 4, -1);

--アップ気弾溜め
SE009 = playSeVer2( spep_0 + 88, 1144, "",spep_0 +174 + 4, 0, 4, 0.6);
setSeVolumeByWorkId( spep_0 + 88, SE009, 61 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 180 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 174;


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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- エフェクト(336F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect04 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --後半    ef_002
setEffMoveKey( spep_2 + 0, effect04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, effect04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect04, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, effect04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect04, 0 );
setEffRotateKey( spep_2 + 336, effect04, 0 );
setEffAlphaKey( spep_2 + 0, effect04, 255 );
setEffAlphaKey( spep_2 + 336, effect04, 255 );

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_2 + 2, 1191, "",spep_2 + 60, 0, 14, -1);
SE015 = playSeVer2( spep_2 + 2, 1157, "",spep_2 + 60, 0, 14, -1);
SE016 = playSeVer2( spep_2 + 2, 1230, "",spep_2 + 60, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 336 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
   
    pauseAll( SP_dodge, 67);
    
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
setDisp( spep_2 -3 + 90, 1, 1 );
setDisp( spep_2 -3 + 132, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );

setBlendColor( spep_2 -3 + 90, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 120, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 122, 1, 3, 0.51, 0.89, 1.0, 0.4 );
setBlendColor( spep_2 -3 + 124, 1, 3, 0.82, 0.97, 0.97, 0.5 );
setBlendColor( spep_2 -3 + 126, 1, 3, 0.82, 0.97, 0.97, 0.6 );
setBlendColor( spep_2 -3 + 128, 1, 3, 0.82, 0.97, 0.97, 0.7 );
setBlendColor( spep_2 -3 + 130, 1, 3, 0.82, 0.97, 0.97, 0.8 );
setBlendColor( spep_2 -3 + 131, 1, 3, 0.82, 0.97, 0.97, 0.8 );
setBlendColor( spep_2 -3 + 132, 1, 3, 0.82, 0.97, 0.97, 0 );

setMoveKey( spep_2 -3 + 90, 1, 78.1, -508.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 78.1, -508.1 , 0 );

setScaleKey( spep_2 -3 + 90, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 132, 1, 2.55, 2.55 );

setRotateKey( spep_2 -3 + 90, 1, 0 );
setRotateKey( spep_2 -3 + 132, 1, 0 );

-- ** 音 ** --
--気弾発射
SE017 = playSeVer2( spep_2 + 44, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE017, 82 );
SE018 = playSeVer2( spep_2 + 44, 1193, "",spep_2 + 148, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE018, 86 );
SE019 = playSeVer2( spep_2 + 44, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE019, 86 );

--気弾向かってくる
SE020 = playSeVer2( spep_2 + 88, 1021, "", 0, 0, 0, -1);

--爆発
SE021 = playSeVer2( spep_2 + 128, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 146, 1067, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 152, 1024, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 336;


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 176 );
endPhase( spep_2 + 326 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- エフェクト(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 174, 0x100, -1, 0, 0, 0 );  --前半    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 174, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 174, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 174, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 174 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 174, first_f, 0 );

spep_x = spep_0 + 90;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 63 );
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);

--手を前に出す
SE005 = playSeVer2( spep_0 + 52, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE005, 89 );

--気弾溜め
SE006 = playSeVer2( spep_0 + 54, 1296, "",spep_0 +174 + 2, 0, 4, -1);

--アップ気弾溜め
SE009 = playSeVer2( spep_0 + 88, 1144, "",spep_0 +174 + 4, 0, 4, 0.6);
setSeVolumeByWorkId( spep_0 + 88, SE009, 61 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 180 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 174;


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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- エフェクト(336F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect04 = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --後半    ef_002
setEffMoveKey( spep_2 + 0, effect04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, effect04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect04, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, effect04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect04, 0 );
setEffRotateKey( spep_2 + 336, effect04, 0 );
setEffAlphaKey( spep_2 + 0, effect04, 255 );
setEffAlphaKey( spep_2 + 336, effect04, 255 );

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_2 + 2, 1191, "",spep_2 + 60, 0, 14, -1);
SE015 = playSeVer2( spep_2 + 2, 1157, "",spep_2 + 60, 0, 14, -1);
SE016 = playSeVer2( spep_2 + 2, 1230, "",spep_2 + 60, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 336 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
   
    pauseAll( SP_dodge, 67);
    
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
setDisp( spep_2 -3 + 90, 1, 1 );
setDisp( spep_2 -3 + 132, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );

setBlendColor( spep_2 -3 + 90, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 120, 1, 3, 0.41, 0.79, 1.0, 0.3 );
setBlendColor( spep_2 -3 + 122, 1, 3, 0.51, 0.89, 1.0, 0.4 );
setBlendColor( spep_2 -3 + 124, 1, 3, 0.82, 0.97, 0.97, 0.5 );
setBlendColor( spep_2 -3 + 126, 1, 3, 0.82, 0.97, 0.97, 0.6 );
setBlendColor( spep_2 -3 + 128, 1, 3, 0.82, 0.97, 0.97, 0.7 );
setBlendColor( spep_2 -3 + 130, 1, 3, 0.82, 0.97, 0.97, 0.8 );
setBlendColor( spep_2 -3 + 131, 1, 3, 0.82, 0.97, 0.97, 0.8 );
setBlendColor( spep_2 -3 + 132, 1, 3, 0.82, 0.97, 0.97, 0 );

setMoveKey( spep_2 -3 + 90, 1, 78.1, -508.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 78.1, -508.1 , 0 );

setScaleKey( spep_2 -3 + 90, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 132, 1, 2.55, 2.55 );

setRotateKey( spep_2 -3 + 90, 1, 0 );
setRotateKey( spep_2 -3 + 132, 1, 0 );

-- ** 音 ** --
--気弾発射
SE017 = playSeVer2( spep_2 + 44, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE017, 82 );
SE018 = playSeVer2( spep_2 + 44, 1193, "",spep_2 + 148, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE018, 86 );
SE019 = playSeVer2( spep_2 + 44, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE019, 86 );

--気弾向かってくる
SE020 = playSeVer2( spep_2 + 88, 1021, "", 0, 0, 0, -1);

--爆発
SE021 = playSeVer2( spep_2 + 128, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 146, 1067, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 152, 1024, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 336;


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 176 );
endPhase( spep_2 + 326 );

end