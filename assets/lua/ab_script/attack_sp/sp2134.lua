--1021250:破壊神モスコ_破壊神の怒号_sp2134
--sp_effect_a9_00072

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
SP_01 = 156734;  --登場  ef_001
SP_02 = 156735;  --気弾のエネルギーを溜める    ef_002
SP_03 = 156736;  --気弾が空に上がって爆破 ef_003
SP_04 = 156737;  --敵に降り注ぐ気弾_敵より手前  ef_004_front
SP_05 = 156738;  --敵に降り注ぐ気弾_敵より奥   ef_004_back
SP_06 = 156739;  --敵に降り注ぐ気弾_敵より手前_最後白フェードアウト   ef_004_white_front
SP_07 = 156740;  --敵に降り注ぐ気弾_敵より奥__最後白フェードアウト   ef_004_white_back

--敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
setDisp( 0, 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 登場(116F)
------------------------------------------------------
spep_0 = 0;

changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

-- ** 音 ** --
--目光る
SE001 = playSe( spep_0 + 2, 1225 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 77 );
stopSe( spep_0 + 18, SE001, 4 );
setPitch( spep_0 + 2, SE001, 500 );
setTimeStretch( SE001, 1.33, 10, 1 );

--目光る
SE002 = playSe( spep_0 + 8, 1273 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 53 );
setPitch( spep_0 + 8, SE002, 500 );
setTimeStretch( SE002, 1.33, 10, 1 );

--目光る
SE003 = playSe( spep_0 + 26, 1225 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 94 );
stopSe( spep_0 + 40, SE003, 10 );
setPitch( spep_0 + 26, SE003, 500 );
setTimeStretch( SE003, 1.33, 10, 1 );

--目光る
SE004 = playSe( spep_0 + 32, 1273 );
setSeVolumeByWorkId( spep_0 + 32, SE004, 52 );
setPitch( spep_0 + 32, SE004, 500 );
setTimeStretch( SE004, 1.33, 10, 1 );

--後ろさがる
SE005 = playSe( spep_0 + 34, 1232 );
setSeVolumeByWorkId( spep_0 + 34, SE005, 85 );

--目光る
SE006 = playSe( spep_0 + 46, 1225 );
setSeVolumeByWorkId( spep_0 + 46, SE006, 80 );
stopSe( spep_0 + 60, SE006, 8 );
setPitch( spep_0 + 46, SE006, 500 );
setTimeStretch( SE006, 1.33, 10, 1 );

--目光る
SE007 = playSe( spep_0 + 52, 1273 );
setSeVolumeByWorkId( spep_0 + 52, SE007, 56 );
setPitch( spep_0 + 52, SE007, 500 );
setTimeStretch( SE007, 1.33, 10, 1 );

--目光る
SE008 = playSe( spep_0 + 62, 1225 );
setSeVolumeByWorkId( spep_0 + 62, SE008, 77 );
stopSe( spep_0 + 78, SE008, 8 );
setPitch( spep_0 + 62, SE008, 500 );
setTimeStretch( SE008, 1.33, 10, 1 );

--目光る
SE009 = playSe( spep_0 + 70, 1273 );
setSeVolumeByWorkId( spep_0 + 70, SE009, 51 );
setPitch( spep_0 + 70, SE009, 500 );
setTimeStretch( SE009, 1.33, 10, 1 );

--目光る
SE010 = playSe( spep_0 + 80, 1225 );
setSeVolumeByWorkId( spep_0 + 80, SE010, 80 );
stopSe( spep_0 + 94, SE010, 24 );
setPitch( spep_0 + 80, SE010, 500 );
setTimeStretch( SE010, 1.33, 10, 1 );

--目光る
SE011 = playSe( spep_0 + 86, 1273 );
setSeVolumeByWorkId( spep_0 + 86, SE011, 47 );
setPitch( spep_0 + 86, SE011, 500 );
setTimeStretch( SE011, 1.33, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


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
-- ** 白背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾のエネルギーを溜める(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_02, 176, 0x100, -1, 0, 0, 0 );  --気弾のエネルギーを溜める(ef_002)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 176, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 176 -1, tame, 255 );
setEffAlphaKey( spep_2 + 176, tame, 0 );

spep_x = spep_2 + 12;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
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
--構える
SE013 = playSe( spep_2 + 12, 1003 );
setSeVolumeByWorkId( spep_2 + 12, SE013, 56 );

--手回す
SE014 = playSe( spep_2 + 22, 1239 );
stopSe( spep_2 + 108, SE014, 20 );
--
--手回す
SE015 = playSe( spep_2 + 22, 1203 ,"",0.6 );
stopSe( spep_2 + 110, SE015, 14 );
setTimeStretch( SE015, 0.77, 40, 5 );

--手回す
SE016 = playSe( spep_2 + 26, 1186 );
stopSe( spep_2 + 108, SE016, 20 );

--花火打ち上げる
SE017 = playSe( spep_2 + 112, 1027 );
setSeVolumeByWorkId( spep_2 + 112, SE017, 69 );

--花火打ち上げる
SE018 = playSe( spep_2 + 112, 1119 );
stopSe( spep_2 + 158, SE018, 24 );

--打ちあがっていく
SE019 = playSe( spep_2 + 162, 1121 );
stopSe( spep_2 +176 + 110, SE019, 36 );
setPitch( spep_2 + 162, SE019, 200 );
setTimeStretch( SE019, 1.13, 10, 1 );

--顔カットイン
SE000 = playSe( spep_2 + 24, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 24, 0, 152 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;


------------------------------------------------------
-- 気弾が空に上がって爆破(198F)
------------------------------------------------------
-- ** エフェクト等 ** --
bakuhatu = entryEffectLife( spep_3 + 0, SP_03, 198, 0x100, -1, 0, 0, 0 );  --気弾が空に上がって爆破(ef_003)
setEffMoveKey( spep_3 + 0, bakuhatu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, bakuhatu, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bakuhatu, 1.0, 1.0 );
setEffScaleKey( spep_3 + 198, bakuhatu, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bakuhatu, 0 );
setEffRotateKey( spep_3 + 198, bakuhatu, 0 );
setEffAlphaKey( spep_3 + 0, bakuhatu, 255 );
setEffAlphaKey( spep_3 + 198 -1, bakuhatu, 255 );
setEffAlphaKey( spep_3 + 198, bakuhatu, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 198 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE019, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
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
--爆発
SE020 = playSe( spep_3 + 112, 1023 );

--爆発
SE021 = playSe( spep_3 + 112, 1067 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 198;


------------------------------------------------------
-- 敵に降り注ぐ気弾(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --敵に降り注ぐ気弾_敵より手前  ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 116, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 116, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --敵に降り注ぐ気弾_敵より奥   ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 116, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 116, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 119, 1, 0 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 -3 + 8, 1, 106 );
changeAnime( spep_4 -3 + 12, 1, 108 );
changeAnime( spep_4 -3 + 18, 1, 106 );
changeAnime( spep_4 -3 + 24, 1, 108 );
changeAnime( spep_4 -3 + 28, 1, 106 );
changeAnime( spep_4 -3 + 32, 1, 108 );
changeAnime( spep_4 -3 + 38, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 108 );
changeAnime( spep_4 -3 + 48, 1, 106 );
changeAnime( spep_4 -3 + 52, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );
changeAnime( spep_4 -3 + 64, 1, 108 );
changeAnime( spep_4 -3 + 68, 1, 106 );
changeAnime( spep_4 -3 + 72, 1, 108 );
changeAnime( spep_4 -3 + 78, 1, 106 );
changeAnime( spep_4 -3 + 84, 1, 108 );
changeAnime( spep_4 -3 + 88, 1, 106 );
changeAnime( spep_4 -3 + 92, 1, 108 );
changeAnime( spep_4 -3 + 98, 1, 106 );
changeAnime( spep_4 -3 + 104, 1, 108 );
changeAnime( spep_4 -3 + 108, 1, 106 );
changeAnime( spep_4 -3 + 112, 1, 108 );
changeAnime( spep_4 -3 + 118, 1, 106 );

a1=10;
b1=48;
setMoveKey( spep_4 + 0, 1, 124.2 -a1, -176.5 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 109.2 -a1, -138.9 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 94.1 -a1, -101.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 79 -a1, -63.7 +b1 , 0 );

a2=16;
b2=20;
setMoveKey( spep_4 -3 + 8, 1, 78.7 +a2, -48.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 78.7 +a2, -216.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -13.4 +a2 +60, -79.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 57.5 +a2 +60, -157.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 50.5 +a2 +60, -79.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 42.9 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 20, 1, 106.9 +a2 +10, -136.5 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 23, 1, 61.3 +a2 +10, -101.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 24, 1, 21.7 +a2 +60, -133.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 46.6 +a2 +60, -95.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 50.5 +a2 +10, -139.8 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 31, 1, 97 +a2 +10, -140.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 32, 1, 21.7 +a2 +60, -83.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 36.6 +a2 +60, -129.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 43.3 +a2 +60, -100.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 52.2 +a2 +10, -122.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 40, 1, 76.2 +a2 +10, -108.3 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 43, 1, 72.9 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 44, 1, 43.3 +a2 +60, -114.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 10.1 +a2 +60, -103.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 87.9 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 51, 1, 70.4 +a2 +10, -143.1 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 52, 1, 49.9 +a2 +60, -106.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 12.6 +a2 +60, -103.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 30 +a2 +60, -94.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 89.5 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 60, 1, 56.3 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 63, 1, 111.9 +a2 +10, -119.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 64, 1, 16.7 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 28.3 +a2 +60, -100.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 77.9 +a2 +10, -132.3 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 71, 1, 88.6 +a2 +10, -111.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 72, 1, 18.4 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 20.1 +a2 +60, -98 +b2 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 34.2 +a2 +60, -120.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 78.7 +a2 +10, -109.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 80, 1, 77.1 +a2 +10, -135.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 83, 1, 72.1 +a2 +10, -110.8 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 84, 1, 35.8 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 28.3 +a2 +60, -98.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 66.3 +a2 +10, -125.7 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 91, 1, 79.5 +a2 +10, -116.5 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 92, 1, 32.5 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 21.7 +a2 +60, -99.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 97, 1, 27.5 +a2 +60, -119.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 86.1 +a2 +10, -107.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 100, 1, 71.3 +a2 +10, -139 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 103, 1, 62.1 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 104, 1, 47.5 +a2 +60, -113.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 107, 1, 19.2 +a2 +60, -104.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 78.7 +a2 +10, -133.2 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 111, 1, 78.7 +a2 +10, -124 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 112, 1, 29.2 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_4 -3 + 117, 1, 29.2 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 78.7 +a2 +60, -124 +b2 , 0 );
setMoveKey( spep_4 -3 + 119, 1, 78.7 +a2 +60, -124 +b2 , 0 );

s1=0.2;
setScaleKey( spep_4 + 0, 1, 1.77, 1.77 );--1.5
setScaleKey( spep_4 + 1, 1, 1.695, 1.695 );
setScaleKey( spep_4 + 2, 1, 1.635, 1.635 );
setScaleKey( spep_4 -3 + 7, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 11, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 12, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 17, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 23, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 24, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 27, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 31, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 32, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 37, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 43, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 44, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 47, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 48, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 51, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 52, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 57, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 63, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 64, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 67, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 71, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 72, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 77, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 83, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 84, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 87, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 91, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 92, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 97, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 98, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 103, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 104, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 107, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 108, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 111, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 112, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 117, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 118, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 119, 1, 1.5, 1.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 119, 1, 0 );


-- ** 音 ** --
--全体攻撃ヒット
SE022 = playSe( spep_4 + 0, 1024 );
setSeVolumeByWorkId( spep_4 + 0, SE022, 89 );

--全体攻撃ヒット
SE023 = playSe( spep_4 + 0, 1009 );
setSeVolumeByWorkId( spep_4 + 0, SE023, 59 );

--全体攻撃ヒット
SE024 = playSe( spep_4 + 8, 1032 );
setSeVolumeByWorkId( spep_4 + 8, SE024, 75 );

--全体攻撃ヒット
SE025 = playSe( spep_4 + 16, 1010 );
setSeVolumeByWorkId( spep_4 + 16, SE025, 68 );

--全体攻撃ヒット
SE026 = playSe( spep_4 + 24, 1032 );
setSeVolumeByWorkId( spep_4 + 24, SE026, 84 );

--全体攻撃ヒット
SE027 = playSe( spep_4 + 36, 1009 );
setSeVolumeByWorkId( spep_4 + 36, SE027, 71 );

--全体攻撃ヒット
SE028 = playSe( spep_4 + 44, 1032 );
setSeVolumeByWorkId( spep_4 + 44, SE028, 56 );

--全体攻撃ヒット
SE029 = playSe( spep_4 + 56, 1010 );
setSeVolumeByWorkId( spep_4 + 56, SE029, 69 );

--全体攻撃ヒット
SE030 = playSe( spep_4 + 64, 1032 );
setSeVolumeByWorkId( spep_4 + 64, SE030, 60 );

--全体攻撃ヒット
SE031 = playSe( spep_4 + 78, 1009 );
setSeVolumeByWorkId( spep_4 + 78, SE031, 71 );

--全体攻撃ヒット
SE032 = playSe( spep_4 + 86, 1032 );
setSeVolumeByWorkId( spep_4 + 86, SE032, 56 );

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(116F)
------------------------------------------------------
spep_0 = 0;

changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

-- ** 音 ** --
--目光る
SE001 = playSe( spep_0 + 2, 1225 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 77 );
stopSe( spep_0 + 18, SE001, 4 );
setPitch( spep_0 + 2, SE001, 500 );
setTimeStretch( SE001, 1.33, 10, 1 );

--目光る
SE002 = playSe( spep_0 + 8, 1273 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 53 );
setPitch( spep_0 + 8, SE002, 500 );
setTimeStretch( SE002, 1.33, 10, 1 );

--目光る
SE003 = playSe( spep_0 + 26, 1225 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 94 );
stopSe( spep_0 + 40, SE003, 10 );
setPitch( spep_0 + 26, SE003, 500 );
setTimeStretch( SE003, 1.33, 10, 1 );

--目光る
SE004 = playSe( spep_0 + 32, 1273 );
setSeVolumeByWorkId( spep_0 + 32, SE004, 52 );
setPitch( spep_0 + 32, SE004, 500 );
setTimeStretch( SE004, 1.33, 10, 1 );

--後ろさがる
SE005 = playSe( spep_0 + 34, 1232 );
setSeVolumeByWorkId( spep_0 + 34, SE005, 85 );

--目光る
SE006 = playSe( spep_0 + 46, 1225 );
setSeVolumeByWorkId( spep_0 + 46, SE006, 80 );
stopSe( spep_0 + 60, SE006, 8 );
setPitch( spep_0 + 46, SE006, 500 );
setTimeStretch( SE006, 1.33, 10, 1 );

--目光る
SE007 = playSe( spep_0 + 52, 1273 );
setSeVolumeByWorkId( spep_0 + 52, SE007, 56 );
setPitch( spep_0 + 52, SE007, 500 );
setTimeStretch( SE007, 1.33, 10, 1 );

--目光る
SE008 = playSe( spep_0 + 62, 1225 );
setSeVolumeByWorkId( spep_0 + 62, SE008, 77 );
stopSe( spep_0 + 78, SE008, 8 );
setPitch( spep_0 + 62, SE008, 500 );
setTimeStretch( SE008, 1.33, 10, 1 );

--目光る
SE009 = playSe( spep_0 + 70, 1273 );
setSeVolumeByWorkId( spep_0 + 70, SE009, 51 );
setPitch( spep_0 + 70, SE009, 500 );
setTimeStretch( SE009, 1.33, 10, 1 );

--目光る
SE010 = playSe( spep_0 + 80, 1225 );
setSeVolumeByWorkId( spep_0 + 80, SE010, 80 );
stopSe( spep_0 + 94, SE010, 24 );
setPitch( spep_0 + 80, SE010, 500 );
setTimeStretch( SE010, 1.33, 10, 1 );

--目光る
SE011 = playSe( spep_0 + 86, 1273 );
setSeVolumeByWorkId( spep_0 + 86, SE011, 47 );
setPitch( spep_0 + 86, SE011, 500 );
setTimeStretch( SE011, 1.33, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


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
-- ** 白背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾のエネルギーを溜める(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_02, 176, 0x100, -1, 0, 0, 0 );  --気弾のエネルギーを溜める(ef_002)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 176, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 176 -1, tame, 255 );
setEffAlphaKey( spep_2 + 176, tame, 0 );

spep_x = spep_2 + 12;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
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
--構える
SE013 = playSe( spep_2 + 12, 1003 );
setSeVolumeByWorkId( spep_2 + 12, SE013, 56 );

--手回す
SE014 = playSe( spep_2 + 22, 1239 );
stopSe( spep_2 + 108, SE014, 20 );
--
--手回す
SE015 = playSe( spep_2 + 22, 1203 ,"",0.6 );
stopSe( spep_2 + 110, SE015, 14 );
setTimeStretch( SE015, 0.77, 40, 5 );

--手回す
SE016 = playSe( spep_2 + 26, 1186 );
stopSe( spep_2 + 108, SE016, 20 );

--花火打ち上げる
SE017 = playSe( spep_2 + 112, 1027 );
setSeVolumeByWorkId( spep_2 + 112, SE017, 69 );

--花火打ち上げる
SE018 = playSe( spep_2 + 112, 1119 );
stopSe( spep_2 + 158, SE018, 24 );

--打ちあがっていく
SE019 = playSe( spep_2 + 162, 1121 );
stopSe( spep_2 +176 + 110, SE019, 36 );
setPitch( spep_2 + 162, SE019, 200 );
setTimeStretch( SE019, 1.13, 10, 1 );

--顔カットイン
SE000 = playSe( spep_2 + 24, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 24, 0, 152 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;


------------------------------------------------------
-- 気弾が空に上がって爆破(198F)
------------------------------------------------------
-- ** エフェクト等 ** --
bakuhatu = entryEffectLife( spep_3 + 0, SP_03, 198, 0x100, -1, 0, 0, 0 );  --気弾が空に上がって爆破(ef_003)
setEffMoveKey( spep_3 + 0, bakuhatu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, bakuhatu, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, bakuhatu, 1.0, 1.0 );
setEffScaleKey( spep_3 + 198, bakuhatu, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bakuhatu, 0 );
setEffRotateKey( spep_3 + 198, bakuhatu, 0 );
setEffAlphaKey( spep_3 + 0, bakuhatu, 255 );
setEffAlphaKey( spep_3 + 198 -1, bakuhatu, 255 );
setEffAlphaKey( spep_3 + 198, bakuhatu, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 198 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE019, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
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
--爆発
SE020 = playSe( spep_3 + 112, 1023 );

--爆発
SE021 = playSe( spep_3 + 112, 1067 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 198;


------------------------------------------------------
-- 敵に降り注ぐ気弾(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --敵に降り注ぐ気弾_敵より手前  ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 116, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 116, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --敵に降り注ぐ気弾_敵より奥   ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 116, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 116, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 119, 1, 0 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 -3 + 8, 1, 106 );
changeAnime( spep_4 -3 + 12, 1, 108 );
changeAnime( spep_4 -3 + 18, 1, 106 );
changeAnime( spep_4 -3 + 24, 1, 108 );
changeAnime( spep_4 -3 + 28, 1, 106 );
changeAnime( spep_4 -3 + 32, 1, 108 );
changeAnime( spep_4 -3 + 38, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 108 );
changeAnime( spep_4 -3 + 48, 1, 106 );
changeAnime( spep_4 -3 + 52, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );
changeAnime( spep_4 -3 + 64, 1, 108 );
changeAnime( spep_4 -3 + 68, 1, 106 );
changeAnime( spep_4 -3 + 72, 1, 108 );
changeAnime( spep_4 -3 + 78, 1, 106 );
changeAnime( spep_4 -3 + 84, 1, 108 );
changeAnime( spep_4 -3 + 88, 1, 106 );
changeAnime( spep_4 -3 + 92, 1, 108 );
changeAnime( spep_4 -3 + 98, 1, 106 );
changeAnime( spep_4 -3 + 104, 1, 108 );
changeAnime( spep_4 -3 + 108, 1, 106 );
changeAnime( spep_4 -3 + 112, 1, 108 );
changeAnime( spep_4 -3 + 118, 1, 106 );

a1=10;
b1=48;
setMoveKey( spep_4 + 0, 1, 124.2 -a1, -176.5 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 109.2 -a1, -138.9 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 94.1 -a1, -101.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 79 -a1, -63.7 +b1 , 0 );

a2=16;
b2=20;
setMoveKey( spep_4 -3 + 8, 1, 78.7 +a2, -48.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 78.7 +a2, -216.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -13.4 +a2 +60, -79.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 57.5 +a2 +60, -157.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 50.5 +a2 +60, -79.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 42.9 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 20, 1, 106.9 +a2 +10, -136.5 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 23, 1, 61.3 +a2 +10, -101.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 24, 1, 21.7 +a2 +60, -133.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 46.6 +a2 +60, -95.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 50.5 +a2 +10, -139.8 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 31, 1, 97 +a2 +10, -140.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 32, 1, 21.7 +a2 +60, -83.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 36.6 +a2 +60, -129.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 43.3 +a2 +60, -100.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 52.2 +a2 +10, -122.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 40, 1, 76.2 +a2 +10, -108.3 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 43, 1, 72.9 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 44, 1, 43.3 +a2 +60, -114.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 10.1 +a2 +60, -103.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 87.9 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 51, 1, 70.4 +a2 +10, -143.1 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 52, 1, 49.9 +a2 +60, -106.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 12.6 +a2 +60, -103.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 30 +a2 +60, -94.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 89.5 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 60, 1, 56.3 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 63, 1, 111.9 +a2 +10, -119.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 64, 1, 16.7 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 28.3 +a2 +60, -100.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 77.9 +a2 +10, -132.3 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 71, 1, 88.6 +a2 +10, -111.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 72, 1, 18.4 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 20.1 +a2 +60, -98 +b2 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 34.2 +a2 +60, -120.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 78.7 +a2 +10, -109.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 80, 1, 77.1 +a2 +10, -135.6 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 83, 1, 72.1 +a2 +10, -110.8 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 84, 1, 35.8 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 28.3 +a2 +60, -98.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 66.3 +a2 +10, -125.7 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 91, 1, 79.5 +a2 +10, -116.5 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 92, 1, 32.5 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 21.7 +a2 +60, -99.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 97, 1, 27.5 +a2 +60, -119.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 86.1 +a2 +10, -107.4 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 100, 1, 71.3 +a2 +10, -139 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 103, 1, 62.1 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 104, 1, 47.5 +a2 +60, -113.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 107, 1, 19.2 +a2 +60, -104.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 78.7 +a2 +10, -133.2 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 111, 1, 78.7 +a2 +10, -124 +b2 +56 , 0 );--
setMoveKey( spep_4 -3 + 112, 1, 29.2 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_4 -3 + 117, 1, 29.2 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 78.7 +a2 +60, -124 +b2 , 0 );
setMoveKey( spep_4 -3 + 119, 1, 78.7 +a2 +60, -124 +b2 , 0 );

s1=0.2;
setScaleKey( spep_4 + 0, 1, 1.77, 1.77 );--1.5
setScaleKey( spep_4 + 1, 1, 1.695, 1.695 );
setScaleKey( spep_4 + 2, 1, 1.635, 1.635 );
setScaleKey( spep_4 -3 + 7, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 11, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 12, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 17, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 23, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 24, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 27, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 31, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 32, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 37, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 43, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 44, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 47, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 48, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 51, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 52, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 57, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 63, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 64, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 67, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 71, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 72, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 77, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 83, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 84, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 87, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 91, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 92, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 97, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 98, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 103, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 104, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 107, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 108, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 111, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 112, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 117, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 118, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 119, 1, 1.5, 1.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 119, 1, 0 );


-- ** 音 ** --
--全体攻撃ヒット
SE022 = playSe( spep_4 + 0, 1024 );
setSeVolumeByWorkId( spep_4 + 0, SE022, 89 );

--全体攻撃ヒット
SE023 = playSe( spep_4 + 0, 1009 );
setSeVolumeByWorkId( spep_4 + 0, SE023, 59 );

--全体攻撃ヒット
SE024 = playSe( spep_4 + 8, 1032 );
setSeVolumeByWorkId( spep_4 + 8, SE024, 75 );

--全体攻撃ヒット
SE025 = playSe( spep_4 + 16, 1010 );
setSeVolumeByWorkId( spep_4 + 16, SE025, 68 );

--全体攻撃ヒット
SE026 = playSe( spep_4 + 24, 1032 );
setSeVolumeByWorkId( spep_4 + 24, SE026, 84 );

--全体攻撃ヒット
SE027 = playSe( spep_4 + 36, 1009 );
setSeVolumeByWorkId( spep_4 + 36, SE027, 71 );

--全体攻撃ヒット
SE028 = playSe( spep_4 + 44, 1032 );
setSeVolumeByWorkId( spep_4 + 44, SE028, 56 );

--全体攻撃ヒット
SE029 = playSe( spep_4 + 56, 1010 );
setSeVolumeByWorkId( spep_4 + 56, SE029, 69 );

--全体攻撃ヒット
SE030 = playSe( spep_4 + 64, 1032 );
setSeVolumeByWorkId( spep_4 + 64, SE030, 60 );

--全体攻撃ヒット
SE031 = playSe( spep_4 + 78, 1009 );
setSeVolumeByWorkId( spep_4 + 78, SE031, 71 );

--全体攻撃ヒット
SE032 = playSe( spep_4 + 86, 1032 );
setSeVolumeByWorkId( spep_4 + 86, SE032, 56 );

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

end

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
        if (_IS_PLAYER_SIDE_ == 1) then

            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

        else

            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

        end

    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_z + 0, SP_04, 0x100, -1, 0, 0, 0 );  --敵に降り注ぐ気弾_敵より手前  ef_004_front
setEffMoveKey( spep_z + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 116, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 116, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hit_f, 0 );
setEffRotateKey( spep_z + 116, hit_f, 0 );
setEffAlphaKey( spep_z + 0, hit_f, 255 );
setEffAlphaKey( spep_z + 116, hit_f, 255 );

hit_b = entryEffect( spep_z + 0, SP_05, 0x80, -1, 0, 0, 0 );  --敵に降り注ぐ気弾_敵より奥   ef_004_back
setEffMoveKey( spep_z + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 116, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 116, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hit_b, 0 );
setEffRotateKey( spep_z + 116, hit_b, 0 );
setEffAlphaKey( spep_z + 0, hit_b, 255 );
setEffAlphaKey( spep_z + 116, hit_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z -3 + 119, 1, 0 );
changeAnime( spep_z + 0, 1, 101 );
changeAnime( spep_z -3 + 8, 1, 106 );
changeAnime( spep_z -3 + 12, 1, 108 );
changeAnime( spep_z -3 + 18, 1, 106 );
changeAnime( spep_z -3 + 24, 1, 108 );
changeAnime( spep_z -3 + 28, 1, 106 );
changeAnime( spep_z -3 + 32, 1, 108 );
changeAnime( spep_z -3 + 38, 1, 106 );
changeAnime( spep_z -3 + 44, 1, 108 );
changeAnime( spep_z -3 + 48, 1, 106 );
changeAnime( spep_z -3 + 52, 1, 108 );
changeAnime( spep_z -3 + 58, 1, 106 );
changeAnime( spep_z -3 + 64, 1, 108 );
changeAnime( spep_z -3 + 68, 1, 106 );
changeAnime( spep_z -3 + 72, 1, 108 );
changeAnime( spep_z -3 + 78, 1, 106 );
changeAnime( spep_z -3 + 84, 1, 108 );
changeAnime( spep_z -3 + 88, 1, 106 );
changeAnime( spep_z -3 + 92, 1, 108 );
changeAnime( spep_z -3 + 98, 1, 106 );
changeAnime( spep_z -3 + 104, 1, 108 );
changeAnime( spep_z -3 + 108, 1, 106 );
changeAnime( spep_z -3 + 112, 1, 108 );
changeAnime( spep_z -3 + 118, 1, 106 );

a1=10;
b1=48;
setMoveKey( spep_z + 0, 1, 124.2 -a1, -176.5 +b1 , 0 );
setMoveKey( spep_z + 1, 1, 109.2 -a1, -138.9 +b1 , 0 );
setMoveKey( spep_z + 2, 1, 94.1 -a1, -101.3 +b1 , 0 );
setMoveKey( spep_z -3 + 7, 1, 79 -a1, -63.7 +b1 , 0 );

a2=16;
b2=20;
setMoveKey( spep_z -3 + 8, 1, 78.7 +a2, -48.9 +b1 , 0 );
setMoveKey( spep_z -3 + 11, 1, 78.7 +a2, -216.3 +b2 , 0 );
setMoveKey( spep_z -3 + 12, 1, -13.4 +a2 +60, -79.7 +b2 , 0 );
setMoveKey( spep_z -3 + 14, 1, 57.5 +a2 +60, -157.7 +b2 , 0 );
setMoveKey( spep_z -3 + 17, 1, 50.5 +a2 +60, -79.7 +b2 , 0 );
setMoveKey( spep_z -3 + 18, 1, 42.9 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 20, 1, 106.9 +a2 +10, -136.5 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 23, 1, 61.3 +a2 +10, -101.6 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 24, 1, 21.7 +a2 +60, -133.7 +b2 , 0 );
setMoveKey( spep_z -3 + 27, 1, 46.6 +a2 +60, -95.6 +b2 , 0 );
setMoveKey( spep_z -3 + 28, 1, 50.5 +a2 +10, -139.8 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 31, 1, 97 +a2 +10, -140.6 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 32, 1, 21.7 +a2 +60, -83.9 +b2 , 0 );
setMoveKey( spep_z -3 + 34, 1, 36.6 +a2 +60, -129.6 +b2 , 0 );
setMoveKey( spep_z -3 + 37, 1, 43.3 +a2 +60, -100.5 +b2 , 0 );
setMoveKey( spep_z -3 + 38, 1, 52.2 +a2 +10, -122.4 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 40, 1, 76.2 +a2 +10, -108.3 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 43, 1, 72.9 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 44, 1, 43.3 +a2 +60, -114.7 +b2 , 0 );
setMoveKey( spep_z -3 + 47, 1, 10.1 +a2 +60, -103.9 +b2 , 0 );
setMoveKey( spep_z -3 + 48, 1, 87.9 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 51, 1, 70.4 +a2 +10, -143.1 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 52, 1, 49.9 +a2 +60, -106.4 +b2 , 0 );
setMoveKey( spep_z -3 + 54, 1, 12.6 +a2 +60, -103.9 +b2 , 0 );
setMoveKey( spep_z -3 + 57, 1, 30 +a2 +60, -94.7 +b2 , 0 );
setMoveKey( spep_z -3 + 58, 1, 89.5 +a2 +10, -146.4 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 60, 1, 56.3 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 63, 1, 111.9 +a2 +10, -119.9 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 64, 1, 16.7 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_z -3 + 67, 1, 28.3 +a2 +60, -100.5 +b2 , 0 );
setMoveKey( spep_z -3 + 68, 1, 77.9 +a2 +10, -132.3 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 71, 1, 88.6 +a2 +10, -111.6 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 72, 1, 18.4 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_z -3 + 74, 1, 20.1 +a2 +60, -98 +b2 , 0 );
setMoveKey( spep_z -3 + 77, 1, 34.2 +a2 +60, -120.5 +b2 , 0 );
setMoveKey( spep_z -3 + 78, 1, 78.7 +a2 +10, -109.9 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 80, 1, 77.1 +a2 +10, -135.6 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 83, 1, 72.1 +a2 +10, -110.8 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 84, 1, 35.8 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_z -3 + 87, 1, 28.3 +a2 +60, -98.9 +b2 , 0 );
setMoveKey( spep_z -3 + 88, 1, 66.3 +a2 +10, -125.7 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 91, 1, 79.5 +a2 +10, -116.5 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 92, 1, 32.5 +a2 +60, -121.3 +b2 , 0 );
setMoveKey( spep_z -3 + 94, 1, 21.7 +a2 +60, -99.7 +b2 , 0 );
setMoveKey( spep_z -3 + 97, 1, 27.5 +a2 +60, -119.6 +b2 , 0 );
setMoveKey( spep_z -3 + 98, 1, 86.1 +a2 +10, -107.4 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 100, 1, 71.3 +a2 +10, -139 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 103, 1, 62.1 +a2 +10, -114.9 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 104, 1, 47.5 +a2 +60, -113.8 +b2 , 0 );
setMoveKey( spep_z -3 + 107, 1, 19.2 +a2 +60, -104.7 +b2 , 0 );
setMoveKey( spep_z -3 + 108, 1, 78.7 +a2 +10, -133.2 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 111, 1, 78.7 +a2 +10, -124 +b2 +56 , 0 );--
setMoveKey( spep_z -3 + 112, 1, 29.2 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_z -3 + 117, 1, 29.2 +a2 +60, -108 +b2 , 0 );
setMoveKey( spep_z -3 + 118, 1, 78.7 +a2 +60, -124 +b2 , 0 );
setMoveKey( spep_z -3 + 119, 1, 78.7 +a2 +60, -124 +b2 , 0 );

s1=0.2;
setScaleKey( spep_z + 0, 1, 1.77, 1.77 );--1.5
setScaleKey( spep_z + 1, 1, 1.695, 1.695 );
setScaleKey( spep_z + 2, 1, 1.635, 1.635 );
setScaleKey( spep_z -3 + 7, 1, 1.56, 1.56 );
setScaleKey( spep_z -3 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 11, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 12, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 17, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 23, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 24, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 27, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 31, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 32, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 37, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 43, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 44, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 47, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 48, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 51, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 52, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 57, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 63, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 64, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 67, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 71, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 72, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 77, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 83, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 84, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 87, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 91, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 92, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 97, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 98, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 103, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 104, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 107, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 108, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 111, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 112, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 117, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_z -3 + 118, 1, 1.5, 1.5 );
setScaleKey( spep_z -3 + 119, 1, 1.5, 1.5 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z -3 + 119, 1, 0 );


-- ** 音 ** --
--全体攻撃ヒット
SE022 = playSe( spep_z + 0, 1024 );
setSeVolumeByWorkId( spep_z + 0, SE022, 89 );

--全体攻撃ヒット
SE023 = playSe( spep_z + 0, 1009 );
setSeVolumeByWorkId( spep_z + 0, SE023, 59 );

--全体攻撃ヒット
SE024 = playSe( spep_z + 8, 1032 );
setSeVolumeByWorkId( spep_z + 8, SE024, 75 );

--全体攻撃ヒット
SE025 = playSe( spep_z + 16, 1010 );
setSeVolumeByWorkId( spep_z + 16, SE025, 68 );

--全体攻撃ヒット
SE026 = playSe( spep_z + 24, 1032 );
setSeVolumeByWorkId( spep_z + 24, SE026, 84 );

--全体攻撃ヒット
SE027 = playSe( spep_z + 36, 1009 );
setSeVolumeByWorkId( spep_z + 36, SE027, 71 );

--全体攻撃ヒット
SE028 = playSe( spep_z + 44, 1032 );
setSeVolumeByWorkId( spep_z + 44, SE028, 56 );

--全体攻撃ヒット
SE029 = playSe( spep_z + 56, 1010 );
setSeVolumeByWorkId( spep_z + 56, SE029, 69 );

--全体攻撃ヒット
SE030 = playSe( spep_z + 64, 1032 );
setSeVolumeByWorkId( spep_z + 64, SE030, 60 );

--全体攻撃ヒット
SE031 = playSe( spep_z + 78, 1009 );
setSeVolumeByWorkId( spep_z + 78, SE031, 71 );

--全体攻撃ヒット
SE032 = playSe( spep_z + 86, 1032 );
setSeVolumeByWorkId( spep_z + 86, SE032, 56 );

-- ** 黒背景 ** --
--entryFadeBg( spep_z + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_z + 6 );
entryFade( spep_z +106, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_z + 116 );

end