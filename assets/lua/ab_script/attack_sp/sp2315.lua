--4023520:ベジータ(大猿)_超ギャリックブラスター
--sp_effect_a1_00317
--sp2315

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
SP_01 = 158886;  --構える ef_001
SP_02 = 158887;  --口を開けて気弾を溜める ef_002
SP_03 = 158888;  --気弾を放つ   ef_003
SP_04 = 158889;  --敵に向かって気弾が迫る（横画面）    ef_004
SP_05 = 158891;  --気弾が敵を飲み込む　手前    ef_005
SP_06 = 158892;  --気弾が敵を飲み込む　奥 ef_005_b
SP_07 = 158893;  --フィニッシュ  ef_006

--敵側
SP_04r = 158890;  --敵に向かって気弾が迫る（横画面）    ef_004_r
SP_05r = 159229;  --気弾が敵を飲み込む　手　敵側  ef_005_r


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
-- 構える(98F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 98, 0x80, -1, 0, 0, 0 );  --構える ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 98, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 98 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 98, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 125, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 125, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 125, 515.5 , 0 );
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
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE001 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 10, 1153, "",spep_0 + 46, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 87 );
SE004 = playSeVer2( spep_0 + 10, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE004, 86 );

--ズームイン
SE005 = playSeVer2( spep_0 + 84, 1072, "", 0, 14, 0, 0.6);
setStartTimeMs( SE005,  233 );
SE006 = playSeVer2( spep_0 + 86, 1116, "",spep_0 +98 + 30, 0, 20, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;


------------------------------------------------------
-- 口を開けて気弾を溜める(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 86, 0x80, -1, 0, 0, 0 );  --口を開けて気弾を溜める ef_002
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 86, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 86 -1, tame, 255 );
setEffAlphaKey( spep_1 + 86, tame, 0 );

-- ** 音 ** --
--口気弾溜め
SE007 = playSeVer2( spep_1 + 26, 1157, "",spep_1 +86 + 16, 0, 10, -1);
SE008 = playSeVer2( spep_1 + 26, 1296, "",spep_1 +86 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 26, SE008, 116 );
SE009 = playSeVer2( spep_1 + 26, 1144, "",spep_1 +86 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 26, SE009, 79 );
SE010 = playSeVer2( spep_1 + 26, 1356, "",spep_1 +86 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 26, SE010, 136 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
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
-- playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 気弾を放つ(36F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_3 + 0, SP_03, 36, 0x80, -1, 0, 0, 0 );  --気弾を放つ   ef_003
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 36, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 36, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 36 -1, shot, 255 );
setEffAlphaKey( spep_3 + 36, shot, 0 );

-- ** 音 ** --
--正面気弾発射
SE012 = playSeVer2( spep_3 + 4, 1213, "",spep_3 +36 +136 + 52, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 4, SE012, 83 );
SE013 = playSeVer2( spep_3 + 4, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 4, 1193, "",spep_3 +36 +136 + 52, 0, 20, -1);

--気弾横発射
SE015 = playSeVer2( spep_3 + 30, 1146, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 30, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE016, 67 );
SE017 = playSeVer2( spep_3 + 30, 1177, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 36;


------------------------------------------------------
-- 敵に向かって気弾が迫る(136F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_4 + 0, SP_04, 136, 0x80, -1, 0, 0, 0 );  --敵に向かって気弾が迫る（横画面）    ef_004
setEffMoveKey( spep_4 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, move, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, move, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move, 0 );
setEffRotateKey( spep_4 + 136, move, 0 );
setEffAlphaKey( spep_4 + 0, move, 255 );
setEffAlphaKey( spep_4 + 136 -1, move, 255 );
setEffAlphaKey( spep_4 + 136, move, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
   
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

-- ** 音 ** --
--気弾飲み込まれる
SE018 = playSeVer2( spep_4 + 130, 1021, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_4 + 130, SE018, 157 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;


------------------------------------------------------
-- 気弾が敵を飲み込む(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_05, 116, 0x100, -1, 0, 0, 0 );  --気弾が敵を飲み込む　手前    ef_005
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 116, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 116, hit_f, 0 );

hit_b = entryEffectLife( spep_5 + 0, SP_06, 116, 0x80, -1, 0, 0, 0 );  --気弾が敵を飲み込む　奥 ef_005_b
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 116, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_b, 255 );
setEffAlphaKey( spep_5 + 116, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 90, 1, 0 );
changeAnime( spep_5 + 0, 1, 118 );
changeAnime( spep_5 -3 + 34, 1, 107 );

setBlendColor( spep_5 + 20 -3, 1, 3, 0, 0, 0, 0.085 );
setBlendColor( spep_5 + 22 -3, 1, 3, 0, 0, 0, 0.17 );
setBlendColor( spep_5 + 24 -3, 1, 3, 0, 0, 0, 0.26 );
setBlendColor( spep_5 + 26 -3, 1, 3, 0, 0, 0, 0.34 );
setBlendColor( spep_5 + 28 -3, 1, 3, 0, 0, 0, 0.43 );
setBlendColor( spep_5 + 33 -3, 1, 3, 0, 0, 0, 0.51 );
setBlendColor( spep_5 + 34 -3, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_5 + 36 -3, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_5 + 38 -3, 1, 3, 0, 0, 0, 0.616 );
setBlendColor( spep_5 + 40 -3, 1, 3, 0, 0, 0, 0.632 );
setBlendColor( spep_5 + 42 -3, 1, 3, 0, 0, 0, 0.648 );
setBlendColor( spep_5 + 44 -3, 1, 3, 0, 0, 0, 0.664 );
setBlendColor( spep_5 + 46 -3, 1, 3, 0, 0, 0, 0.68 );
setBlendColor( spep_5 + 48 -3, 1, 3, 0, 0, 0, 0.696 );
setBlendColor( spep_5 + 50 -3, 1, 3, 0, 0, 0, 0.712 );
setBlendColor( spep_5 + 52 -3, 1, 3, 0, 0, 0, 0.728 );
setBlendColor( spep_5 + 54 -3, 1, 3, 0, 0, 0, 0.744 );
setBlendColor( spep_5 + 56 -3, 1, 3, 0, 0, 0, 0.76 );
setBlendColor( spep_5 + 57 -3, 1, 3, 0, 0, 0, 0.776 );
setBlendColor( spep_5 + 60 -3, 1, 3, 0, 0, 0, 0.792 );
setBlendColor( spep_5 + 62 -3, 1, 3, 0, 0, 0, 0.808 );
setBlendColor( spep_5 + 64 -3, 1, 3, 0, 0, 0, 0.824 );
setBlendColor( spep_5 + 66 -3, 1, 3, 0, 0, 0, 0.84 );
setBlendColor( spep_5 + 68 -3, 1, 3, 0, 0, 0, 0.856 );
setBlendColor( spep_5 + 70 -3, 1, 3, 0, 0, 0, 0.872 );
setBlendColor( spep_5 + 72 -3, 1, 3, 0, 0, 0, 0.888 );
setBlendColor( spep_5 + 74 -3, 1, 3, 0, 0, 0, 0.904 );
setBlendColor( spep_5 + 76 -3, 1, 3, 0, 0, 0, 0.92 );
setBlendColor( spep_5 + 78 -3, 1, 3, 0, 0, 0, 0.936 );
setBlendColor( spep_5 + 80 -3, 1, 3, 0, 0, 0, 0.952 );
setBlendColor( spep_5 + 82 -3, 1, 3, 0, 0, 0, 0.968 );
setBlendColor( spep_5 + 84 -3, 1, 3, 0, 0, 0, 0.984 );
setBlendColor( spep_5 + 86 -3, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 89 -3, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 90 -3, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_5 + 0, 1, 63.3, 35.6 , 0 );
setMoveKey( spep_5 + 1, 1, 63.7, 35.6 , 0 );
setMoveKey( spep_5 + 2, 1, 64.9, 37 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 66.1, 38.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 64.5, 36.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 63, 34.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 63, 36.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 63, 37.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 63.3, 34.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 63.6, 31.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 66.7, 36.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 69.9, 41.1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 63.1, 36.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 66.2, 35.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 67.6, 38 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 63.3, 35.1 , 0 );
setMoveKey( spep_5 -3 + 33, 1, 67.9, 36.1 , 0 );--
setMoveKey( spep_5 -3 + 34, 1, 130.2, 57.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 164.7, 64.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 157.3, 87.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 210.8, 80.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 205.5, 59.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 248.4, 46.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 270.8, 71.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 268.6, 67.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 273.7, 41.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 320.4, 35.6 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 357.4, 65.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 352.7, 71.2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 397.3, 23.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 387.3, 43 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 396.8, 42.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 450.6, 77.6 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 467.6, 53.7 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 460.1, 76.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 513.6, 69.8 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 508.3, 48.2 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 551.2, 35.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 573.7, 60.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 571.5, 56.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 576.6, 30.5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 623.2, 24.5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 660.2, 54.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 655.6, 60.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 700.2, 12.4 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 700.2, 12.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_5 -3 + 33, 1, 1.59, 1.59 );--
setScaleKey( spep_5 -3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 40, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 42, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 46, 1, 1.48, 1.48 );
setScaleKey( spep_5 -3 + 48, 1, 1.58, 1.58 );
setScaleKey( spep_5 -3 + 50, 1, 1.69, 1.69 );
setScaleKey( spep_5 -3 + 52, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 54, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 56, 1, 2, 2 );
setScaleKey( spep_5 -3 + 58, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 60, 1, 2.21, 2.21 );
setScaleKey( spep_5 -3 + 62, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 64, 1, 2.41, 2.41 );
setScaleKey( spep_5 -3 + 66, 1, 2.52, 2.52 );
setScaleKey( spep_5 -3 + 68, 1, 2.62, 2.62 );
setScaleKey( spep_5 -3 + 70, 1, 2.73, 2.73 );
setScaleKey( spep_5 -3 + 72, 1, 2.83, 2.83 );
setScaleKey( spep_5 -3 + 74, 1, 2.93, 2.93 );
setScaleKey( spep_5 -3 + 76, 1, 3.04, 3.04 );
setScaleKey( spep_5 -3 + 78, 1, 3.14, 3.14 );
setScaleKey( spep_5 -3 + 80, 1, 3.24, 3.24 );
setScaleKey( spep_5 -3 + 82, 1, 3.35, 3.35 );
setScaleKey( spep_5 -3 + 84, 1, 3.45, 3.45 );
setScaleKey( spep_5 -3 + 86, 1, 3.56, 3.56 );
setScaleKey( spep_5 -3 + 88, 1, 3.66, 3.66 );
setScaleKey( spep_5 -3 + 90, 1, 3.66, 3.66 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 33, 1, 0 );--
setRotateKey( spep_5 -3 + 34, 1, -8.3 );
setRotateKey( spep_5 -3 + 36, 1, -8.1 );
setRotateKey( spep_5 -3 + 38, 1, -7.7 );
setRotateKey( spep_5 -3 + 40, 1, -7.3 );
setRotateKey( spep_5 -3 + 42, 1, -6.9 );
setRotateKey( spep_5 -3 + 44, 1, -6.5 );
setRotateKey( spep_5 -3 + 46, 1, -6.1 );
setRotateKey( spep_5 -3 + 48, 1, -5.8 );
setRotateKey( spep_5 -3 + 50, 1, -5.4 );
setRotateKey( spep_5 -3 + 52, 1, -5 );
setRotateKey( spep_5 -3 + 54, 1, -4.6 );
setRotateKey( spep_5 -3 + 56, 1, -4.2 );
setRotateKey( spep_5 -3 + 58, 1, -3.8 );
setRotateKey( spep_5 -3 + 60, 1, -3.4 );
setRotateKey( spep_5 -3 + 62, 1, -3 );
setRotateKey( spep_5 -3 + 64, 1, -2.7 );
setRotateKey( spep_5 -3 + 66, 1, -2.3 );
setRotateKey( spep_5 -3 + 68, 1, -1.9 );
setRotateKey( spep_5 -3 + 70, 1, -1.5 );
setRotateKey( spep_5 -3 + 72, 1, -1.1 );
setRotateKey( spep_5 -3 + 74, 1, -0.7 );
setRotateKey( spep_5 -3 + 76, 1, -0.3 );
setRotateKey( spep_5 -3 + 78, 1, 0.1 );
setRotateKey( spep_5 -3 + 80, 1, 0.4 );
setRotateKey( spep_5 -3 + 82, 1, 0.8 );
setRotateKey( spep_5 -3 + 84, 1, 1.2 );
setRotateKey( spep_5 -3 + 86, 1, 1.6 );
setRotateKey( spep_5 -3 + 88, 1, 2 );
setRotateKey( spep_5 -3 + 90, 1, 2 );

-- ** 音 ** --
--敵気弾ヒット
SE019 = playSeVer2( spep_5 + 26, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 26, SE019, 91 );
SE020 = playSeVer2( spep_5 + 26, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE021 = playSeVer2( spep_5 + 102, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 102, SE021, 92 );
SE022 = playSeVer2( spep_5 + 102, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 102, SE022, 89 );
SE023 = playSeVer2( spep_5 + 102, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 102, SE023, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --フィニッシュ  ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 116, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 116, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構える(98F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 98, 0x80, -1, 0, 0, 0 );  --構える ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 98, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 98, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 98 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 98, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 125, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 125, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 125, 515.5 , 0 );
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
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE001 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 10, 1153, "",spep_0 + 46, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 87 );
SE004 = playSeVer2( spep_0 + 10, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE004, 86 );

--ズームイン
SE005 = playSeVer2( spep_0 + 84, 1072, "", 0, 14, 0, 0.6);
setStartTimeMs( SE005,  233 );
SE006 = playSeVer2( spep_0 + 86, 1116, "",spep_0 +98 + 30, 0, 20, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;


------------------------------------------------------
-- 口を開けて気弾を溜める(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 86, 0x80, -1, 0, 0, 0 );  --口を開けて気弾を溜める ef_002
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 86, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 86, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 86 -1, tame, 255 );
setEffAlphaKey( spep_1 + 86, tame, 0 );

-- ** 音 ** --
--口気弾溜め
SE007 = playSeVer2( spep_1 + 26, 1157, "",spep_1 +86 + 16, 0, 10, -1);
SE008 = playSeVer2( spep_1 + 26, 1296, "",spep_1 +86 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 26, SE008, 116 );
SE009 = playSeVer2( spep_1 + 26, 1144, "",spep_1 +86 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 26, SE009, 79 );
SE010 = playSeVer2( spep_1 + 26, 1356, "",spep_1 +86 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 26, SE010, 136 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
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
-- 気弾を放つ(36F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_3 + 0, SP_03, 36, 0x80, -1, 0, 0, 0 );  --気弾を放つ   ef_003
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 36, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_3 + 36, shot, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 36, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 36 -1, shot, 255 );
setEffAlphaKey( spep_3 + 36, shot, 0 );

-- ** 音 ** --
--正面気弾発射
SE012 = playSeVer2( spep_3 + 4, 1213, "",spep_3 +36 +136 + 52, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 4, SE012, 83 );
SE013 = playSeVer2( spep_3 + 4, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 4, 1193, "",spep_3 +36 +136 + 52, 0, 20, -1);

--気弾横発射
SE015 = playSeVer2( spep_3 + 30, 1146, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 30, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE016, 67 );
SE017 = playSeVer2( spep_3 + 30, 1177, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 36;


------------------------------------------------------
-- 敵に向かって気弾が迫る(136F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_4 + 0, SP_04r, 136, 0x80, -1, 0, 0, 0 );  --敵に向かって気弾が迫る（横画面）    ef_004
setEffMoveKey( spep_4 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, move, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move, -1.0, 1.0 );
setEffScaleKey( spep_4 + 136, move, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move, 0 );
setEffRotateKey( spep_4 + 136, move, 0 );
setEffAlphaKey( spep_4 + 0, move, 255 );
setEffAlphaKey( spep_4 + 136 -1, move, 255 );
setEffAlphaKey( spep_4 + 136, move, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
   
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

-- ** 音 ** --
--気弾飲み込まれる
SE018 = playSeVer2( spep_4 + 130, 1021, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_4 + 130, SE018, 157 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;


------------------------------------------------------
-- 気弾が敵を飲み込む(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_05r, 116, 0x100, -1, 0, 0, 0 );  --気弾が敵を飲み込む　手前    ef_005
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 116, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 116, hit_f, 0 );

hit_b = entryEffectLife( spep_5 + 0, SP_06, 116, 0x80, -1, 0, 0, 0 );  --気弾が敵を飲み込む　奥 ef_005_b
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 116, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_b, 255 );
setEffAlphaKey( spep_5 + 116, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 90, 1, 0 );
changeAnime( spep_5 + 0, 1, 118 );
changeAnime( spep_5 -3 + 34, 1, 107 );

setBlendColor( spep_5 + 20 -3, 1, 3, 0, 0, 0, 0.085 );
setBlendColor( spep_5 + 22 -3, 1, 3, 0, 0, 0, 0.17 );
setBlendColor( spep_5 + 24 -3, 1, 3, 0, 0, 0, 0.26 );
setBlendColor( spep_5 + 26 -3, 1, 3, 0, 0, 0, 0.34 );
setBlendColor( spep_5 + 28 -3, 1, 3, 0, 0, 0, 0.43 );
setBlendColor( spep_5 + 33 -3, 1, 3, 0, 0, 0, 0.51 );
setBlendColor( spep_5 + 34 -3, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_5 + 36 -3, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_5 + 38 -3, 1, 3, 0, 0, 0, 0.616 );
setBlendColor( spep_5 + 40 -3, 1, 3, 0, 0, 0, 0.632 );
setBlendColor( spep_5 + 42 -3, 1, 3, 0, 0, 0, 0.648 );
setBlendColor( spep_5 + 44 -3, 1, 3, 0, 0, 0, 0.664 );
setBlendColor( spep_5 + 46 -3, 1, 3, 0, 0, 0, 0.68 );
setBlendColor( spep_5 + 48 -3, 1, 3, 0, 0, 0, 0.696 );
setBlendColor( spep_5 + 50 -3, 1, 3, 0, 0, 0, 0.712 );
setBlendColor( spep_5 + 52 -3, 1, 3, 0, 0, 0, 0.728 );
setBlendColor( spep_5 + 54 -3, 1, 3, 0, 0, 0, 0.744 );
setBlendColor( spep_5 + 56 -3, 1, 3, 0, 0, 0, 0.76 );
setBlendColor( spep_5 + 57 -3, 1, 3, 0, 0, 0, 0.776 );
setBlendColor( spep_5 + 60 -3, 1, 3, 0, 0, 0, 0.792 );
setBlendColor( spep_5 + 62 -3, 1, 3, 0, 0, 0, 0.808 );
setBlendColor( spep_5 + 64 -3, 1, 3, 0, 0, 0, 0.824 );
setBlendColor( spep_5 + 66 -3, 1, 3, 0, 0, 0, 0.84 );
setBlendColor( spep_5 + 68 -3, 1, 3, 0, 0, 0, 0.856 );
setBlendColor( spep_5 + 70 -3, 1, 3, 0, 0, 0, 0.872 );
setBlendColor( spep_5 + 72 -3, 1, 3, 0, 0, 0, 0.888 );
setBlendColor( spep_5 + 74 -3, 1, 3, 0, 0, 0, 0.904 );
setBlendColor( spep_5 + 76 -3, 1, 3, 0, 0, 0, 0.92 );
setBlendColor( spep_5 + 78 -3, 1, 3, 0, 0, 0, 0.936 );
setBlendColor( spep_5 + 80 -3, 1, 3, 0, 0, 0, 0.952 );
setBlendColor( spep_5 + 82 -3, 1, 3, 0, 0, 0, 0.968 );
setBlendColor( spep_5 + 84 -3, 1, 3, 0, 0, 0, 0.984 );
setBlendColor( spep_5 + 86 -3, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 89 -3, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 90 -3, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_5 + 0, 1, 63.3, 35.6 , 0 );
setMoveKey( spep_5 + 1, 1, 63.7, 35.6 , 0 );
setMoveKey( spep_5 + 2, 1, 64.9, 37 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 66.1, 38.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 64.5, 36.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 63, 34.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 63, 36.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 63, 37.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 63.3, 34.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 63.6, 31.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 66.7, 36.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 69.9, 41.1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 63.1, 36.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 66.2, 35.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 67.6, 38 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 63.3, 35.1 , 0 );
setMoveKey( spep_5 -3 + 33, 1, 67.9, 36.1 , 0 );--
setMoveKey( spep_5 -3 + 34, 1, 130.2, 57.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 164.7, 64.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 157.3, 87.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 210.8, 80.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 205.5, 59.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 248.4, 46.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 270.8, 71.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 268.6, 67.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 273.7, 41.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 320.4, 35.6 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 357.4, 65.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 352.7, 71.2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 397.3, 23.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 387.3, 43 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 396.8, 42.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 450.6, 77.6 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 467.6, 53.7 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 460.1, 76.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 513.6, 69.8 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 508.3, 48.2 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 551.2, 35.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 573.7, 60.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 571.5, 56.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 576.6, 30.5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 623.2, 24.5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 660.2, 54.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 655.6, 60.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 700.2, 12.4 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 700.2, 12.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_5 -3 + 33, 1, 1.59, 1.59 );--
setScaleKey( spep_5 -3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 40, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 42, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 46, 1, 1.48, 1.48 );
setScaleKey( spep_5 -3 + 48, 1, 1.58, 1.58 );
setScaleKey( spep_5 -3 + 50, 1, 1.69, 1.69 );
setScaleKey( spep_5 -3 + 52, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 54, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 56, 1, 2, 2 );
setScaleKey( spep_5 -3 + 58, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 60, 1, 2.21, 2.21 );
setScaleKey( spep_5 -3 + 62, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 64, 1, 2.41, 2.41 );
setScaleKey( spep_5 -3 + 66, 1, 2.52, 2.52 );
setScaleKey( spep_5 -3 + 68, 1, 2.62, 2.62 );
setScaleKey( spep_5 -3 + 70, 1, 2.73, 2.73 );
setScaleKey( spep_5 -3 + 72, 1, 2.83, 2.83 );
setScaleKey( spep_5 -3 + 74, 1, 2.93, 2.93 );
setScaleKey( spep_5 -3 + 76, 1, 3.04, 3.04 );
setScaleKey( spep_5 -3 + 78, 1, 3.14, 3.14 );
setScaleKey( spep_5 -3 + 80, 1, 3.24, 3.24 );
setScaleKey( spep_5 -3 + 82, 1, 3.35, 3.35 );
setScaleKey( spep_5 -3 + 84, 1, 3.45, 3.45 );
setScaleKey( spep_5 -3 + 86, 1, 3.56, 3.56 );
setScaleKey( spep_5 -3 + 88, 1, 3.66, 3.66 );
setScaleKey( spep_5 -3 + 90, 1, 3.66, 3.66 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 33, 1, 0 );--
setRotateKey( spep_5 -3 + 34, 1, -8.3 );
setRotateKey( spep_5 -3 + 36, 1, -8.1 );
setRotateKey( spep_5 -3 + 38, 1, -7.7 );
setRotateKey( spep_5 -3 + 40, 1, -7.3 );
setRotateKey( spep_5 -3 + 42, 1, -6.9 );
setRotateKey( spep_5 -3 + 44, 1, -6.5 );
setRotateKey( spep_5 -3 + 46, 1, -6.1 );
setRotateKey( spep_5 -3 + 48, 1, -5.8 );
setRotateKey( spep_5 -3 + 50, 1, -5.4 );
setRotateKey( spep_5 -3 + 52, 1, -5 );
setRotateKey( spep_5 -3 + 54, 1, -4.6 );
setRotateKey( spep_5 -3 + 56, 1, -4.2 );
setRotateKey( spep_5 -3 + 58, 1, -3.8 );
setRotateKey( spep_5 -3 + 60, 1, -3.4 );
setRotateKey( spep_5 -3 + 62, 1, -3 );
setRotateKey( spep_5 -3 + 64, 1, -2.7 );
setRotateKey( spep_5 -3 + 66, 1, -2.3 );
setRotateKey( spep_5 -3 + 68, 1, -1.9 );
setRotateKey( spep_5 -3 + 70, 1, -1.5 );
setRotateKey( spep_5 -3 + 72, 1, -1.1 );
setRotateKey( spep_5 -3 + 74, 1, -0.7 );
setRotateKey( spep_5 -3 + 76, 1, -0.3 );
setRotateKey( spep_5 -3 + 78, 1, 0.1 );
setRotateKey( spep_5 -3 + 80, 1, 0.4 );
setRotateKey( spep_5 -3 + 82, 1, 0.8 );
setRotateKey( spep_5 -3 + 84, 1, 1.2 );
setRotateKey( spep_5 -3 + 86, 1, 1.6 );
setRotateKey( spep_5 -3 + 88, 1, 2 );
setRotateKey( spep_5 -3 + 90, 1, 2 );

-- ** 音 ** --
--敵気弾ヒット
SE019 = playSeVer2( spep_5 + 26, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 26, SE019, 91 );
SE020 = playSeVer2( spep_5 + 26, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE021 = playSeVer2( spep_5 + 102, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 102, SE021, 92 );
SE022 = playSeVer2( spep_5 + 102, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 102, SE022, 89 );
SE023 = playSeVer2( spep_5 + 102, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 102, SE023, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --フィニッシュ  ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 116, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 116, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 106 );

end