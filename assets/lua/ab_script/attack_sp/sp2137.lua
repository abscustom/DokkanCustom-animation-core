--1021190:シャンパ_破壊神の制裁_sp2137
--sp_effect_a9_00075

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
SP_01 = 156842;	 --登場して、あくび後、気弾を溜める	ef_001
SP_02 = 156844;	 --起爆させる	ef_002
SP_03 = 156846;	 --放つ	ef_003
SP_04 = 156848;	 --敵に迫る_敵より手前	ef_004_front
SP_05 = 156849;	 --敵に迫る_敵より奥	ef_004_back
SP_06 = 156852;	 --被弾	ef_005
SP_07 = 156853;	 --爆破	ef_006

--敵側
SP_01r = 156843;	 --登場して、あくび後、気弾を溜める_反転	ef_001_r
SP_02r = 156845;	 --起爆させる_反転	ef_002_r
SP_03r = 156847;	 --放つ_反転	ef_003_r
SP_04r = 156850;	 --敵に迫る_敵より手前_反転	ef_004_front_r
SP_05r = 156851;	 --敵に迫る_敵より奥_反転	ef_004_back_r

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
-- 登場して、あくび後、気弾を溜める(188F)
------------------------------------------------------
spep_0 = 0;

first_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --登場して、あくび後、気弾を溜める	ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 188, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 188, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 188, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 188, first_b, 255 );

spep_x = spep_0 + 100;
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
--腕頭のうしろへ
SE001 = playSe( spep_0 + 26, 1003 );
setSeVolumeByWorkId( spep_0 + 26, SE001, 74 );

--首ひねる
SE002 = playSe( spep_0 + 48, 37 );
stopSe( spep_0 + 62, SE002, 6 );

--首ひねる
SE003 = playSe( spep_0 + 48, 4 );

--腕前へ
SE004 = playSe( spep_0 + 88, 1004 );
setSeVolumeByWorkId( spep_0 + 88, SE004, 89 );

--顔カットイン
SE000 = playSe( spep_0 + 112, 1018 );

--気弾溜めはじめ
SE005 = playSe( spep_0 + 126, 1191,"",0.6 );
setSeVolumeByWorkId( spep_0 + 126, SE005, 158 );
stopSe( spep_0 +184 + 2, SE005, 4 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 188 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 166, 24, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 188;


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

--気弾溜める
SE007 = playSe( spep_1 + 92, 1271,"",0.6 );
setSeVolumeByWorkId( spep_1 + 92, SE007, 126 );
stopSe( spep_1 +94 +56 + 52, SE007, 14 );

--気弾溜める
SE008 = playSe( spep_1 + 92, 1158,"",0.6 );
setSeVolumeByWorkId( spep_1 + 92, SE008, 100 );
setTimeStretch( SE008, 0.77, 30, 6 );
stopSe( spep_1 +94 +56 + 52, SE008, 14 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 起爆させる(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --起爆させる	ef_002
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 56, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 56, tame, 255 );

-- ** 音 ** --
--気弾溜める
SE009 = playSe( spep_2 + 2, 1002 );
setSeVolumeByWorkId( spep_2 + 2, SE009, 66 );

--気弾溜める
SE010 = playSe( spep_2 + 2, 1200 );
setSeVolumeByWorkId( spep_2 + 2, SE010, 200 );
stopSe( spep_2 +56 + 52, SE010, 12 );

--気弾膨らむ１
SE011 = playSe( spep_2 + 28, 1188 );
setSeVolumeByWorkId( spep_2 + 28, SE011, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 放つ	ef_003(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --放つ	ef_003
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 76, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 76, shot, 255 );

-- ** 音 ** --
--気弾膨らむ２
SE012 = playSe( spep_3 + 0, 1011 );

--気弾発射
SE013 = playSe( spep_3 + 44, 1027 );

--気弾発射
SE014 = playSe( spep_3 + 44, 1213 );
setSeVolumeByWorkId( spep_3 + 44, SE014, 73 );
stopSe( spep_3 +76 +56 + 0, SE014, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 敵に迫る(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
move_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --敵に迫る_敵より手前	ef_004_front
setEffMoveKey( spep_4 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, move_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, move_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move_f, 0 );
setEffRotateKey( spep_4 + 56, move_f, 0 );
setEffAlphaKey( spep_4 + 0, move_f, 255 );
setEffAlphaKey( spep_4 + 56, move_f, 255 );

move_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --敵に迫る_敵より奥	ef_004_back
setEffMoveKey( spep_4 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, move_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, move_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move_b, 0 );
setEffRotateKey( spep_4 + 56, move_b, 0 );
setEffAlphaKey( spep_4 + 0, move_b, 255 );
setEffAlphaKey( spep_4 + 56, move_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 118 );

a1=150;
setMoveKey( spep_4 + 0, 1, 421.1 -a1 -2, -307.8 , 0 );
setMoveKey( spep_4 + 1, 1, 421 -a1 -4, -305.4 , 0 );
setMoveKey( spep_4 + 2, 1, 420.9 -a1 -6, -302.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 420.8 -a1 -8, -300.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 420.7 -a1 -10, -297.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 420.5 -a1 -12, -295.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 420.4 -a1 -14, -293 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 420.3 -a1 -16, -290.5 , 0 );

setScaleKey( spep_4     + 0, 1, 1.32, 1.32 );
setScaleKey( spep_4     + 1, 1, 1.32, 1.32 );
setScaleKey( spep_4     + 2, 1, 1.328, 1.328 );
setScaleKey( spep_4 -3  + 6, 1, 1.344, 1.344 );
setScaleKey( spep_4 -3  + 8, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 10, 1, 1.376, 1.376 );
setScaleKey( spep_4 -3 + 12, 1, 1.392, 1.392 );
setScaleKey( spep_4 -3 + 14, 1, 1.408, 1.408 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 420.3 -a1 -16, -290.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 420.2 -a1 -18, -288 , 0 );
    setMoveKey( SP_dodge + 4, 1, 420.1 -a1 -20, -285.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 420 -a1 -22, -283.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 419.9 -a1 -24, -280.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 419.8 -a1 -26, -278.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.408, 1.408 );
    setScaleKey( SP_dodge + 2, 1, 1.424, 1.424 );
    setScaleKey( SP_dodge + 4, 1, 1.44, 1.44 );
    setScaleKey( SP_dodge + 6, 1, 1.456, 1.456 );
    setScaleKey( SP_dodge + 8, 1, 1.472, 1.472 );
    setScaleKey( SP_dodge + 10, 1, 1.488, 1.488 );

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
setDisp( spep_4 + 56, 1, 0 );

setMoveKey( spep_4 -3 + 16, 1, 420.2 -a1 -18, -288 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 420.1 -a1 -20, -285.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 420 -a1 -22, -283.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 419.9 -a1 -24, -280.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 419.8 -a1 -26, -278.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 419.6 -a1 -28, -275.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 419.5 -a1 -30, -273.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 419.4 -a1 -32, -270.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 419.2 -a1 -34, -268.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 419.2 -a1 -36, -265.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 419 -a1 -38, -263.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 418.9 -a1 -40, -260.8 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 418.8 -a1 -42, -258.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 418.7 -a1 -44, -255.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 418.6 -a1 -46, -253.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 418.5 -a1 -48, -250.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 418.3 -a1 -50, -248.4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 418.2 -a1 -52, -245.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 418.1 -a1 -54, -243.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 418 -a1 -56, -241 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 417.9 -a1 -58, -238.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 417.7 -a1 -60, -236 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 417.7 -a1 -62, -236 , 0 );

setScaleKey( spep_4 -3 + 16, 1, 1.424, 1.424 );
setScaleKey( spep_4 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 20, 1, 1.456, 1.456 );
setScaleKey( spep_4 -3 + 22, 1, 1.472, 1.472 );
setScaleKey( spep_4 -3 + 24, 1, 1.488, 1.488 );
setScaleKey( spep_4 -3 + 26, 1, 1.504, 1.504 );
setScaleKey( spep_4 -3 + 28, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 30, 1, 1.536, 1.536 );
setScaleKey( spep_4 -3 + 32, 1, 1.552, 1.552 );
setScaleKey( spep_4 -3 + 34, 1, 1.568, 1.568 );
setScaleKey( spep_4 -3 + 36, 1, 1.584, 1.584 );
setScaleKey( spep_4 -3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 40, 1, 1.616, 1.616 );
setScaleKey( spep_4 -3 + 42, 1, 1.632, 1.632 );
setScaleKey( spep_4 -3 + 44, 1, 1.648, 1.648 );
setScaleKey( spep_4 -3 + 46, 1, 1.664, 1.664 );
setScaleKey( spep_4 -3 + 48, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 50, 1, 1.696, 1.696 );
setScaleKey( spep_4 -3 + 52, 1, 1.712, 1.712 );
setScaleKey( spep_4 -3 + 54, 1, 1.728, 1.728 );
setScaleKey( spep_4 -3 + 56, 1, 1.744, 1.744 );
setScaleKey( spep_4 -3 + 58, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 59, 1, 1.76, 1.76 );

setRotateKey( spep_4 -3 + 59, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE015 = playSe( spep_4 + 54, 1023 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 被弾(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --被弾	ef_005
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 56, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 56, hit, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 爆破(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆破	ef_006
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 176, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 176, finish_f, 255 );

-- ** 音 ** --
--爆発
SE016 = playSe( spep_6 + 6, 1024 );

--爆発
SE017 = playSe( spep_6 + 6, 1159 );
setSeVolumeByWorkId( spep_6 + 6, SE017, 82 );

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
-- 登場して、あくび後、気弾を溜める(188F)
------------------------------------------------------
spep_0 = 0;

first_b = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 );  --登場して、あくび後、気弾を溜める  ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 188, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 188, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 188, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 188, first_b, 255 );

spep_x = spep_0 + 100;
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
--腕頭のうしろへ
SE001 = playSe( spep_0 + 26, 1003 );
setSeVolumeByWorkId( spep_0 + 26, SE001, 74 );

--首ひねる
SE002 = playSe( spep_0 + 48, 37 );
stopSe( spep_0 + 62, SE002, 6 );

--首ひねる
SE003 = playSe( spep_0 + 48, 4 );

--腕前へ
SE004 = playSe( spep_0 + 88, 1004 );
setSeVolumeByWorkId( spep_0 + 88, SE004, 89 );

--顔カットイン
SE000 = playSe( spep_0 + 112, 1018 );

--気弾溜めはじめ
SE005 = playSe( spep_0 + 126, 1191,"",0.6 );
setSeVolumeByWorkId( spep_0 + 126, SE005, 158 );
stopSe( spep_0 +184 + 2, SE005, 4 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 188 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 166, 24, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 188;


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

--気弾溜める
SE007 = playSe( spep_1 + 92, 1271,"",0.6 );
setSeVolumeByWorkId( spep_1 + 92, SE007, 126 );
stopSe( spep_1 +94 +56 + 52, SE007, 14 );

--気弾溜める
SE008 = playSe( spep_1 + 92, 1158,"",0.6 );
setSeVolumeByWorkId( spep_1 + 92, SE008, 100 );
setTimeStretch( SE008, 0.77, 30, 6 );
stopSe( spep_1 +94 +56 + 52, SE008, 14 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 起爆させる(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --起爆させる   ef_002
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 56, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 56, tame, 255 );

-- ** 音 ** --
--気弾溜める
SE009 = playSe( spep_2 + 2, 1002 );
setSeVolumeByWorkId( spep_2 + 2, SE009, 66 );

--気弾溜める
SE010 = playSe( spep_2 + 2, 1200 );
setSeVolumeByWorkId( spep_2 + 2, SE010, 200 );
stopSe( spep_2 +56 + 52, SE010, 12 );

--気弾膨らむ１
SE011 = playSe( spep_2 + 28, 1188 );
setSeVolumeByWorkId( spep_2 + 28, SE011, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 放つ   ef_003(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --放つ  ef_003
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 76, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 76, shot, 255 );

-- ** 音 ** --
--気弾膨らむ２
SE012 = playSe( spep_3 + 0, 1011 );

--気弾発射
SE013 = playSe( spep_3 + 44, 1027 );

--気弾発射
SE014 = playSe( spep_3 + 44, 1213 );
setSeVolumeByWorkId( spep_3 + 44, SE014, 73 );
stopSe( spep_3 +76 +56 + 0, SE014, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 敵に迫る(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
move_f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --敵に迫る_敵より手前    ef_004_front
setEffMoveKey( spep_4 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, move_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, move_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move_f, 0 );
setEffRotateKey( spep_4 + 56, move_f, 0 );
setEffAlphaKey( spep_4 + 0, move_f, 255 );
setEffAlphaKey( spep_4 + 56, move_f, 255 );

move_b = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --敵に迫る_敵より奥  ef_004_back
setEffMoveKey( spep_4 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, move_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, move_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move_b, 0 );
setEffRotateKey( spep_4 + 56, move_b, 0 );
setEffAlphaKey( spep_4 + 0, move_b, 255 );
setEffAlphaKey( spep_4 + 56, move_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 118 );

a1=150;
setMoveKey( spep_4 + 0, 1, 421.1 -a1 -2, -307.8 , 0 );
setMoveKey( spep_4 + 1, 1, 421 -a1 -4, -305.4 , 0 );
setMoveKey( spep_4 + 2, 1, 420.9 -a1 -6, -302.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 420.8 -a1 -8, -300.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 420.7 -a1 -10, -297.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 420.5 -a1 -12, -295.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 420.4 -a1 -14, -293 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 420.3 -a1 -16, -290.5 , 0 );

setScaleKey( spep_4     + 0, 1, 1.32, 1.32 );
setScaleKey( spep_4     + 1, 1, 1.32, 1.32 );
setScaleKey( spep_4     + 2, 1, 1.328, 1.328 );
setScaleKey( spep_4 -3  + 6, 1, 1.344, 1.344 );
setScaleKey( spep_4 -3  + 8, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 10, 1, 1.376, 1.376 );
setScaleKey( spep_4 -3 + 12, 1, 1.392, 1.392 );
setScaleKey( spep_4 -3 + 14, 1, 1.408, 1.408 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 420.3 -a1 -16, -290.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 420.2 -a1 -18, -288 , 0 );
    setMoveKey( SP_dodge + 4, 1, 420.1 -a1 -20, -285.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 420 -a1 -22, -283.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 419.9 -a1 -24, -280.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 419.8 -a1 -26, -278.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.408, 1.408 );
    setScaleKey( SP_dodge + 2, 1, 1.424, 1.424 );
    setScaleKey( SP_dodge + 4, 1, 1.44, 1.44 );
    setScaleKey( SP_dodge + 6, 1, 1.456, 1.456 );
    setScaleKey( SP_dodge + 8, 1, 1.472, 1.472 );
    setScaleKey( SP_dodge + 10, 1, 1.488, 1.488 );

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
setDisp( spep_4 + 56, 1, 0 );

setMoveKey( spep_4 -3 + 16, 1, 420.2 -a1 -18, -288 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 420.1 -a1 -20, -285.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 420 -a1 -22, -283.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 419.9 -a1 -24, -280.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 419.8 -a1 -26, -278.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 419.6 -a1 -28, -275.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 419.5 -a1 -30, -273.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 419.4 -a1 -32, -270.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 419.2 -a1 -34, -268.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 419.2 -a1 -36, -265.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 419 -a1 -38, -263.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 418.9 -a1 -40, -260.8 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 418.8 -a1 -42, -258.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 418.7 -a1 -44, -255.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 418.6 -a1 -46, -253.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 418.5 -a1 -48, -250.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 418.3 -a1 -50, -248.4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 418.2 -a1 -52, -245.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 418.1 -a1 -54, -243.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 418 -a1 -56, -241 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 417.9 -a1 -58, -238.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 417.7 -a1 -60, -236 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 417.7 -a1 -62, -236 , 0 );

setScaleKey( spep_4 -3 + 16, 1, 1.424, 1.424 );
setScaleKey( spep_4 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 20, 1, 1.456, 1.456 );
setScaleKey( spep_4 -3 + 22, 1, 1.472, 1.472 );
setScaleKey( spep_4 -3 + 24, 1, 1.488, 1.488 );
setScaleKey( spep_4 -3 + 26, 1, 1.504, 1.504 );
setScaleKey( spep_4 -3 + 28, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 30, 1, 1.536, 1.536 );
setScaleKey( spep_4 -3 + 32, 1, 1.552, 1.552 );
setScaleKey( spep_4 -3 + 34, 1, 1.568, 1.568 );
setScaleKey( spep_4 -3 + 36, 1, 1.584, 1.584 );
setScaleKey( spep_4 -3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 40, 1, 1.616, 1.616 );
setScaleKey( spep_4 -3 + 42, 1, 1.632, 1.632 );
setScaleKey( spep_4 -3 + 44, 1, 1.648, 1.648 );
setScaleKey( spep_4 -3 + 46, 1, 1.664, 1.664 );
setScaleKey( spep_4 -3 + 48, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 50, 1, 1.696, 1.696 );
setScaleKey( spep_4 -3 + 52, 1, 1.712, 1.712 );
setScaleKey( spep_4 -3 + 54, 1, 1.728, 1.728 );
setScaleKey( spep_4 -3 + 56, 1, 1.744, 1.744 );
setScaleKey( spep_4 -3 + 58, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 59, 1, 1.76, 1.76 );

setRotateKey( spep_4 -3 + 59, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE015 = playSe( spep_4 + 54, 1023 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 被弾(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --被弾   ef_005
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 56, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 56, hit, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 爆破(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆破  ef_006
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 176, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 176, finish_f, 255 );

-- ** 音 ** --
--爆発
SE016 = playSe( spep_6 + 6, 1024 );

--爆発
SE017 = playSe( spep_6 + 6, 1159 );
setSeVolumeByWorkId( spep_6 + 6, SE017, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 66 );
endPhase( spep_6 + 166 );

end