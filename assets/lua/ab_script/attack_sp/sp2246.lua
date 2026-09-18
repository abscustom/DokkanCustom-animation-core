--1022810:孫悟飯(幼年期)_秘めたる力
--sp_effect_a1_00310
--sp2246

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
SP_01 = 157764;	--怒りを溜める	ef_001
SP_02 = 157765;	--叫ぶ１	ef_002
SP_03 = 157767;	--叫ぶ２	ef_003
SP_04 = 157769;	--気を放つ	ef_004
SP_05 = 157771;	--叫ぶ３	ef_005
SP_06 = 157772;	--気で敵を押し出す　手前	ef_006_front
SP_07 = 157773;	--気で敵を押し出す	ef_006_back
SP_08 = 157774;	--ジャンプ	ef_007
SP_09 = 157775;	--空を飛ぶ	ef_008
SP_10 = 157777;	--泣き顔→キリッ	ef_009
SP_11 = 157778;	--気を溜める	ef_010
SP_12 = 157780;	--放つ	ef_011_front
SP_13 = 157781;	--放つ	ef_011_back
SP_14 = 157783;	--フィニッシュ絵	ef_012

--敵側
SP_02r = 157766;	--叫ぶ１	ef_002r
SP_03r = 157768;	--叫ぶ２	ef_003r
SP_04r = 157770;	--気を放つ	ef_004r
SP_09r = 157776;	--空を飛ぶ	ef_008r
SP_11r = 157779;	--気を溜める	ef_010r
SP_12r = 157782;	--放つ	ef_011_front_r

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
-- 怒りを溜める(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --怒りを溜める	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

-- ** 音 ** --
--岩浮き上がる
SE001 = playSe( spep_0 + 8, 1168,"",0.6 );
setSeVolumeByWorkId( spep_0 + 8, SE003, 25 );
setSeVolumeByWorkId( spep_0 + 10, SE003, 50 );
setSeVolumeByWorkId( spep_0 + 12, SE003, 75 );
setSeVolumeByWorkId( spep_0 + 14, SE003, 100 );
setStartTimeMs( SE001,  933 );

--岩浮き上がる
SE002 = playSe( spep_0 + 0, 1232 );

--岩浮き上がる
SE003 = playSe( spep_0 + 0, 1226 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 45 );
stopSe( spep_0 +76 +116 +56 +86 +86 +106 + 12, SE003, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 叫ぶ１(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
shout = entryEffectLife( spep_1 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --叫ぶ１	ef_002
setEffMoveKey( spep_1 + 0, shout, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, shout, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shout, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, shout, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shout, 0 );
setEffRotateKey( spep_1 + 116, shout, 0 );
setEffAlphaKey( spep_1 + 0, shout, 255 );
setEffAlphaKey( spep_1 + 116 -1, shout, 255 );
setEffAlphaKey( spep_1 + 116, shout, 0 );

-- ** 音 ** --
--叫ぶ
SE004 = playSe( spep_1 + 50, 1125 );
stopSe( spep_1 +152 +56 + 4, SE004, 64 );

--叫ぶ
SE005 = playSe( spep_1 + 50, 1068 );

--叫ぶ
SE006 = playSe( spep_1 + 50, 1033 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


------------------------------------------------------
-- 叫ぶ２(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shout2 = entryEffectLife( spep_2 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 );  --叫ぶ２	ef_003
setEffMoveKey( spep_2 + 0, shout2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, shout2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shout2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, shout2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shout2, 0 );
setEffRotateKey( spep_2 + 56, shout2, 0 );
setEffAlphaKey( spep_2 + 0, shout2, 255 );
setEffAlphaKey( spep_2 + 56 -1, shout2, 255 );
setEffAlphaKey( spep_2 + 56, shout2, 0 );

-- ** 音 ** --
--上向いて叫ぶ
SE007 = playSe( spep_2 + 10, 1024 );
setSeVolumeByWorkId( spep_2 + 10, SE007, 89 );

--上向いて叫ぶ
SE008 = playSe( spep_2 + 10, 1325 );
setSeVolumeByWorkId( spep_2 + 10, SE008, 69 );
stopSe( spep_2 +56 +86 +86 +106 + 4, SE008, 8 );

--上向いて叫ぶ
SE009 = playSe( spep_2 + 10, 1168 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- 気を放つ(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
wave = entryEffectLife( spep_3 + 0, SP_04, 86, 0x100, -1, 0, 0, 0 );  --気を放つ	ef_004
setEffMoveKey( spep_3 + 0, wave, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, wave, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, wave, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, wave, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wave, 0 );
setEffRotateKey( spep_3 + 86, wave, 0 );
setEffAlphaKey( spep_3 + 0, wave, 255 );
setEffAlphaKey( spep_3 + 86 -1, wave, 255 );
setEffAlphaKey( spep_3 + 86, wave, 0 );

-- ** 音 ** --
--上に気弾打つ
SE010 = playSe( spep_3 + 0, 1146 );
setSeVolumeByWorkId( spep_3 + 0, SE010, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- 叫ぶ３(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shout3 = entryEffectLife( spep_4 + 0, SP_05, 86, 0x100, -1, 0, 0, 0 );  --叫ぶ３	ef_005
setEffMoveKey( spep_4 + 0, shout3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shout3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shout3, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, shout3, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shout3, 0 );
setEffRotateKey( spep_4 + 86, shout3, 0 );
setEffAlphaKey( spep_4 + 0, shout3, 255 );
setEffAlphaKey( spep_4 + 86 -1, shout3, 255 );
setEffAlphaKey( spep_4 + 86, shout3, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
SE011 = playSe( spep_4 + 6, 1018 );

--気弾膨れる
SE012 = playSe( spep_4 + 64, 1044 );
setSeVolumeByWorkId( spep_4 + 64, SE012, 20 );
setSeVolumeByWorkId( spep_4 + 72, SE012, 40 );
setSeVolumeByWorkId( spep_4 + 80, SE012, 60 );
setSeVolumeByWorkId( spep_4 + 88, SE012, 80 );
setSeVolumeByWorkId( spep_4 + 96, SE012, 100 );
setSeVolumeByWorkId( spep_4 + 104, SE012, 120 );
setSeVolumeByWorkId( spep_4 + 112, SE012, 140 );
setSeVolumeByWorkId( spep_4 + 122, SE012, 158 );
stopSe( spep_4 +86 +106 + 0, SE012, 10 );

--気弾膨れる
SE013 = playSe( spep_4 + 74, 1158,"",0.6 );
stopSe( spep_4 +86 + 100, SE013, 14 );

--気弾膨れる
SE014 = playSe( spep_4 + 82, 1191,"",0.6 );
setSeVolumeByWorkId( spep_4 + 82, SE014, 214 );
stopSe( spep_4 +86 + 82, SE014, 34 );
setPitch( spep_4 + 82, SE014, -1200 );
setTimeStretch( SE014, 0.2, 10, 1 );

--気弾膨れる
SE015 = playSe( spep_4 + 84, 1311,"",0.6 );
setSeVolumeByWorkId( spep_4 + 84, SE015, 172 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 気で敵を押し出す(106F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kiai_f = entryEffectLife( spep_5 + 0, SP_06, 106, 0x100, -1, 0, 0, 0 );  --気で敵を押し出す　手前	ef_006_front
setEffMoveKey( spep_5 + 0, kiai_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 106, kiai_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiai_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 106, kiai_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiai_f, 0 );
setEffRotateKey( spep_5 + 106, kiai_f, 0 );
setEffAlphaKey( spep_5 + 0, kiai_f, 255 );
setEffAlphaKey( spep_5 + 106 -1, kiai_f, 255 );
setEffAlphaKey( spep_5 + 106, kiai_f, 0 );

kiai_b = entryEffectLife( spep_5 + 0, SP_07, 106, 0x80, -1, 0, 0, 0 );  --気で敵を押し出す	ef_006_back
setEffMoveKey( spep_5 + 0, kiai_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 106, kiai_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiai_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 106, kiai_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiai_b, 0 );
setEffRotateKey( spep_5 + 106, kiai_b, 0 );
setEffAlphaKey( spep_5 + 0, kiai_b, 255 );
setEffAlphaKey( spep_5 + 106 -1, kiai_b, 255 );
setEffAlphaKey( spep_5 + 106, kiai_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 98, 1, 0 );
changeAnime( spep_5 + 0, 1, 118 );
changeAnime( spep_5 -3 + 80, 1, 107 );

setMoveKey( spep_5 + 0, 1, 126.1, -256.1 , 0 );
setMoveKey( spep_5 + 1, 1, 111.3, -243.5 , 0 );
setMoveKey( spep_5 + 2, 1, 106.2, -237 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 102.5, -235.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 99.6, -234.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 93.2, -234.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 87.3, -233.6 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 86, -232 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 84.7, -230.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 1, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 2, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 6, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 8, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 12, 1, 1.47, 1.47 );

setRotateKey( spep_5 + 0, 1, 0 );

setAlphaKey( spep_5 + 0, 1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 84.7, -230.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 86.8, -228.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 88.8, -226.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 90.1, -228.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 91.5, -231.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 87, -227.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.47, 1.47 );
    setScaleKey( SP_dodge + 10, 1, 1.47, 1.47 );

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


setMoveKey( spep_5 -3 + 18, 1, 86.8, -228.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 88.8, -226.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 90.1, -228.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 91.5, -231.1 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 87, -227.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 82.5, -224.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 89.7, -232.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 81.3, -225.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 87.1, -219.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 94.9, -227.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 91, -233.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 81.3, -223.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 91, -223.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 98.8, -231.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 97.3, -227.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 115.2, -213.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 122.4, -225.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 108.4, -209.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 109, -223.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 116.5, -229.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 120, -222.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 127, -213.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 132.2, -216.2 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 133.5, -208.8 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 124.6, -225.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 134, -235.4 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 133.9, -229.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 132.5, -219.6 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 144.4, -223.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 138.3, -218.5 , 0 );
setMoveKey( spep_5 -3 + 79, 1, 148.2, -215.6 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 181.5, -250.8 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 208.1, -200.7 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 234.6, -138.9 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 272.9, -77.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 301.4, -15.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 345.5, 27 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 383.7, 88.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 421.9, 138.9 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 448.5, 189 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 475, 250.8 , 0 );
--setMoveKey( spep_5 -3 + 100, 1, 483.8, 247.9 , 0 );
--setMoveKey( spep_5 -3 + 102, 1, 480.9, 256.7 , 0 );
--setMoveKey( spep_5 -3 + 104, 1, 475, 262.5 , 0 );
--setMoveKey( spep_5 -3 + 106, 1, 469.2, 256.7 , 0 );
--setMoveKey( spep_5 -3 + 108, 1, 475, 250.8 , 0 );

setScaleKey( spep_5 -3 + 44, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 48, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 50, 1, 1.57, 1.57 );
setScaleKey( spep_5 -3 + 52, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 54, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 56, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 58, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 60, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 62, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 64, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 66, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 68, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 70, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 72, 1, 1.95, 1.95 );
setScaleKey( spep_5 -3 + 74, 1, 1.98, 1.98 );
setScaleKey( spep_5 -3 + 76, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 79, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 80, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_5 -3 + 84, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 86, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 88, 1, 1.83, 1.83 );
setScaleKey( spep_5 -3 + 90, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 92, 1, 2.22, 2.22 );
setScaleKey( spep_5 -3 + 94, 1, 2.42, 2.42 );
setScaleKey( spep_5 -3 + 96, 1, 2.61, 2.61 );
setScaleKey( spep_5 -3 + 98, 1, 2.81, 2.81 );

setRotateKey( spep_5 -3 + 44, 1, 0 );
setRotateKey( spep_5 -3 + 46, 1, -0.5 );
setRotateKey( spep_5 -3 + 48, 1, -0.9 );
setRotateKey( spep_5 -3 + 50, 1, -1.4 );
setRotateKey( spep_5 -3 + 52, 1, -1.9 );
setRotateKey( spep_5 -3 + 54, 1, -2.4 );
setRotateKey( spep_5 -3 + 56, 1, -2.8 );
setRotateKey( spep_5 -3 + 58, 1, -3.3 );
setRotateKey( spep_5 -3 + 60, 1, -3.8 );
setRotateKey( spep_5 -3 + 62, 1, -4.2 );
setRotateKey( spep_5 -3 + 64, 1, -4.7 );
setRotateKey( spep_5 -3 + 66, 1, -5.2 );
setRotateKey( spep_5 -3 + 68, 1, -5.6 );
setRotateKey( spep_5 -3 + 70, 1, -6.1 );
setRotateKey( spep_5 -3 + 72, 1, -6.6 );
setRotateKey( spep_5 -3 + 74, 1, -7.1 );
setRotateKey( spep_5 -3 + 76, 1, -7.5 );
setRotateKey( spep_5 -3 + 79, 1, -8 );
setRotateKey( spep_5 -3 + 80, 1, -80.7 );
setRotateKey( spep_5 -3 + 82, 1, -78.8 );
setRotateKey( spep_5 -3 + 84, 1, -77 );
setRotateKey( spep_5 -3 + 86, 1, -75.1 );
setRotateKey( spep_5 -3 + 88, 1, -73.3 );
setRotateKey( spep_5 -3 + 90, 1, -71.4 );
setRotateKey( spep_5 -3 + 92, 1, -69.6 );
setRotateKey( spep_5 -3 + 94, 1, -67.7 );
setRotateKey( spep_5 -3 + 96, 1, -65.9 );
setRotateKey( spep_5 -3 + 98, 1, -64 );

setAlphaKey( spep_5 -3 + 80, 1, 255 );
setAlphaKey( spep_5 -3 + 82, 1, 227 );
setAlphaKey( spep_5 -3 + 84, 1, 198 );
setAlphaKey( spep_5 -3 + 86, 1, 170 );
setAlphaKey( spep_5 -3 + 88, 1, 142 );
setAlphaKey( spep_5 -3 + 90, 1, 113 );
setAlphaKey( spep_5 -3 + 92, 1, 85 );
setAlphaKey( spep_5 -3 + 94, 1, 57 );
setAlphaKey( spep_5 -3 + 96, 1, 28 );
setAlphaKey( spep_5 -3 + 98, 1, 0 );

-- ** 音 ** --
--敵飛んでく
SE016 = playSe( spep_5 + 76, 1027 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 106;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_6

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--走ってくる
SE018 = playSe( spep_c + 90, 1108 );
setSeVolumeByWorkId( spep_c + 90, SE018, 158 );
stopSe( spep_c+ 98, SE018, 0 );
SE019 = playSe( spep_c + 90, 1106 );
stopSe( spep_c+ 98, SE019, 0 );
SE020 = playSe( spep_c + 90, 44 );

-- ** 次の準備 ** --
spep_7 = spep_c + 94;

------------------------------------------------------
-- ジャンプ(86F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_7 + 0, SP_08, 86, 0x100, -1, 0, 0, 0 );  --ジャンプ	ef_007
setEffMoveKey( spep_7 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, jump, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, jump, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, jump, 0 );
setEffRotateKey( spep_7 + 86, jump, 0 );
setEffAlphaKey( spep_7 + 0, jump, 255 );
setEffAlphaKey( spep_7 + 86 -1, jump, 255 );
setEffAlphaKey( spep_7 + 86, jump, 0 );

-- ** 音 ** --
--走ってくる
SE021 = playSe( spep_7 + 4, 1108 );
setSeVolumeByWorkId( spep_7 + 4, SE021, 158 );
stopSe( spep_7 + 12, SE021, 0 );

--走ってくる
SE022 = playSe( spep_7 + 4, 1106 );
stopSe( spep_7 + 12, SE022, 0 );

--走ってくる
SE023 = playSe( spep_7 + 10, 1108 );
setSeVolumeByWorkId( spep_7 + 10, SE023, 158 );
stopSe( spep_7 + 18, SE023, 0 );

--走ってくる
SE024 = playSe( spep_7 + 10, 1106 );
stopSe( spep_7 + 18, SE024, 0 );

--走ってくる
SE025 = playSe( spep_7 + 18, 1108 );
setSeVolumeByWorkId( spep_7 + 18, SE025, 158 );
stopSe( spep_7 + 26, SE025, 0 );

--走ってくる
SE026 = playSe( spep_7 + 18, 1106 );
stopSe( spep_7 + 26, SE026, 0 );

--走ってくる
SE027 = playSe( spep_7 + 26, 1108 );
setSeVolumeByWorkId( spep_7 + 26, SE027, 158 );
stopSe( spep_7 + 34, SE027, 0 );

--走ってくる
SE028 = playSe( spep_7 + 26, 1106 );
stopSe( spep_7 + 34, SE028, 0 );

--走ってくる
SE029 = playSe( spep_7 + 34, 1108 );
setSeVolumeByWorkId( spep_7 + 34, SE029, 158 );
stopSe( spep_7 + 42, SE029, 0 );

--走ってくる
SE030 = playSe( spep_7 + 34, 1106 );
stopSe( spep_7 + 42, SE030, 0 );

--走ってくる
SE031 = playSe( spep_7 + 42, 1108 );
setSeVolumeByWorkId( spep_7 + 42, SE031, 158 );
stopSe( spep_7 + 50, SE031, 0 );

--走ってくる
SE032 = playSe( spep_7 + 42, 1106 );
stopSe( spep_7 + 50, SE032, 0 );

--走ってくる
SE033 = playSe( spep_7 + 50, 1108 );
setSeVolumeByWorkId( spep_7 + 50, SE033, 158 );
stopSe( spep_7 + 58, SE033, 0 );

--走ってくる
SE034 = playSe( spep_7 + 50, 1106 );
stopSe( spep_7 + 58, SE034, 0 );

--走ってくる
SE035 = playSe( spep_7 + 60, 1108 );
setSeVolumeByWorkId( spep_7 + 60, SE035, 158 );
stopSe( spep_7 + 68, SE035, 0 );

--走ってくる
SE036 = playSe( spep_7 + 60, 1106 );
stopSe( spep_7 + 68, SE036, 0 );

--飛び上がる
SE037 = playSe( spep_7 + 64, 1003 );

--飛び上がる
SE038 = playSe( spep_7 + 64, 1117 );

--飛び上がる
SE039 = playSe( spep_7 + 64, 1278,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 86;


------------------------------------------------------
-- 空を飛ぶ(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
fly = entryEffectLife( spep_8 + 0, SP_09, 56, 0x100, -1, 0, 0, 0 );  --空を飛ぶ	ef_008
setEffMoveKey( spep_8 + 0, fly, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, fly, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, fly, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly, 0 );
setEffRotateKey( spep_8 + 56, fly, 0 );
setEffAlphaKey( spep_8 + 0, fly, 255 );
setEffAlphaKey( spep_8 + 56 -1, fly, 255 );
setEffAlphaKey( spep_8 + 56, fly, 0 );

-- ** 音 ** --
--飛んでくる
SE040 = playSe( spep_8 + 54, 1019 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- 泣き顔→キッ(76F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
face = entryEffectLife( spep_9 + 0, SP_10, 76, 0x100, -1, 0, 0, 0 );  --泣き顔→キッ	ef_009
setEffMoveKey( spep_9 + 0, face, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, face, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, face, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, face, 0 );
setEffRotateKey( spep_9 + 76, face, 0 );
setEffAlphaKey( spep_9 + 0, face, 255 );
setEffAlphaKey( spep_9 + 76 -1, face, 255 );
setEffAlphaKey( spep_9 + 76, face, 0 );

-- ** 音 ** --
--飛んでくる
SE041 = playSe( spep_9 + 62, 1019 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 76;


------------------------------------------------------
-- 気を溜める(76F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_10 + 0, SP_11, 76, 0x100, -1, 0, 0, 0 );  --気を溜める	ef_010
setEffMoveKey( spep_10 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, tame, 0 );
setEffRotateKey( spep_10 + 76, tame, 0 );
setEffAlphaKey( spep_10 + 0, tame, 255 );
setEffAlphaKey( spep_10 + 76 -1, tame, 255 );
setEffAlphaKey( spep_10 + 76, tame, 0 );

-- ** 音 ** --
--気を溜める
SE042 = playSe( spep_10 + 26, 1311 );
setSeVolumeByWorkId( spep_10 + 26, SE042, 195 );

--気を溜める
SE043 = playSe( spep_10 + 26, 1295 ,"",0.6);
setSeVolumeByWorkId( spep_10 + 26, SE043, 453 );
stopSe( spep_10 +76 + 30, SE043, 10 );
setPitch( spep_10 + 26, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );

--飛んでくる
SE044 = playSe( spep_10 + 50, 1019 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;


------------------------------------------------------
-- 放つ(196F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
charge_f = entryEffectLife( spep_11 + 0, SP_12, 196, 0x100, -1, 0, 0, 0 );  --放つ	ef_011_front
setEffMoveKey( spep_11 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 196, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, charge_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 196, charge_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, charge_f, 0 );
setEffRotateKey( spep_11 + 196, charge_f, 0 );
setEffAlphaKey( spep_11 + 0, charge_f, 255 );
setEffAlphaKey( spep_11 + 196 -1, charge_f, 255 );
setEffAlphaKey( spep_11 + 196, charge_f, 0 );

charge_b = entryEffectLife( spep_11 + 0, SP_13, 196, 0x80, -1, 0, 0, 0 );  --放つ	ef_011_back
setEffMoveKey( spep_11 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 196, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 196, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, charge_b, 0 );
setEffRotateKey( spep_11 + 196, charge_b, 0 );
setEffAlphaKey( spep_11 + 0, charge_b, 255 );
setEffAlphaKey( spep_11 + 196 -1, charge_b, 255 );
setEffAlphaKey( spep_11 + 196, charge_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 104, 1, 1 );
changeAnime( spep_11 + 0, 1, 5 );

setMoveKey( spep_11 + 0, 1, 203.7, -238 , 0 );
setMoveKey( spep_11 + 1, 1, 204.6, -239.6 , 0 );
setMoveKey( spep_11 + 2, 1, 205.5, -241.1 , 0 );
setMoveKey( spep_11 -3 + 6, 1, 206.4, -242.6 , 0 );
setMoveKey( spep_11 -3 + 8, 1, 207.3, -244.1 , 0 );
setMoveKey( spep_11 -3 + 10, 1, 208.2, -245.6 , 0 );
setMoveKey( spep_11 -3 + 12, 1, 209.1, -247.1 , 0 );
setMoveKey( spep_11 -3 + 14, 1, 210, -248.6 , 0 );
setMoveKey( spep_11 -3 + 16, 1, 210.9, -250.1 , 0 );
setMoveKey( spep_11 -3 + 18, 1, 211.8, -251.6 , 0 );
setMoveKey( spep_11 -3 + 20, 1, 212.7, -253.1 , 0 );
setMoveKey( spep_11 -3 + 22, 1, 226.1, -242.1 , 0 );
setMoveKey( spep_11 -3 + 24, 1, 208.9, -261.7 , 0 );
setMoveKey( spep_11 -3 + 26, 1, 226.7, -276.4 , 0 );
setMoveKey( spep_11 -3 + 28, 1, 204.5, -248.5 , 0 );
setMoveKey( spep_11 -3 + 30, 1, 192.9, -230.3 , 0 );
setMoveKey( spep_11 -3 + 32, 1, 173.5, -201.6 , 0 );
setMoveKey( spep_11 -3 + 34, 1, 154.4, -173.6 , 0 );
setMoveKey( spep_11 -3 + 36, 1, 138.3, -153.9 , 0 );
setMoveKey( spep_11 -3 + 38, 1, 112.6, -129.8 , 0 );
setMoveKey( spep_11 -3 + 40, 1, 92.3, -101.4 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 74.9, -76.3 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 55.3, -51.9 , 0 );
setMoveKey( spep_11 -3 + 46, 1, 38.8, -33.1 , 0 );
setMoveKey( spep_11 -3 + 48, 1, 40.1, -37.3 , 0 );
setMoveKey( spep_11 -3 + 50, 1, 42.7, -34.8 , 0 );
setMoveKey( spep_11 -3 + 52, 1, 47.8, -39.9 , 0 );
setMoveKey( spep_11 -3 + 54, 1, 37.9, -42.3 , 0 );
setMoveKey( spep_11 -3 + 56, 1, 30.6, -49.8 , 0 );
setMoveKey( spep_11 -3 + 58, 1, 25.7, -44.9 , 0 );
setMoveKey( spep_11 -3 + 60, 1, 23.3, -44.9 , 0 );
setMoveKey( spep_11 -3 + 62, 1, 25.9, -47.4 , 0 );
setMoveKey( spep_11 -3 + 64, 1, 25.9, -44.9 , 0 );
setMoveKey( spep_11 -3 + 66, 1, 26.1, -47.5 , 0 );
setMoveKey( spep_11 -3 + 68, 1, 21.2, -47.5 , 0 );
setMoveKey( spep_11 -3 + 70, 1, 23.8, -45 , 0 );
setMoveKey( spep_11 -3 + 72, 1, 23.9, -45 , 0 );
setMoveKey( spep_11 -3 + 74, 1, 22.7, -43.8 , 0 );
setMoveKey( spep_11 -3 + 76, 1, 26.6, -47.5 , 0 );
setMoveKey( spep_11 -3 + 78, 1, 31.7, -42.6 , 0 );
setMoveKey( spep_11 -3 + 80, 1, 49.3, -35 , 0 );
setMoveKey( spep_11 -3 + 82, 1, 14.4, -60.1 , 0 );
setMoveKey( spep_11 -3 + 84, 1, 44.6, -57.6 , 0 );
setMoveKey( spep_11 -3 + 86, 1, 19.7, -32.7 , 0 );
setMoveKey( spep_11 -3 + 88, 1, 49.8, -40.2 , 0 );
setMoveKey( spep_11 -3 + 90, 1, 39.9, -52.7 , 0 );
setMoveKey( spep_11 -3 + 92, 1, 32.4, -45.2 , 0 );
setMoveKey( spep_11 -3 + 94, 1, 42.6, -40.2 , 0 );
setMoveKey( spep_11 -3 + 96, 1, 47.7, -50.2 , 0 );
setMoveKey( spep_11 -3 + 98, 1, 38.4, -48.3 , 0 );
setMoveKey( spep_11 -3 + 100, 1, 30, -55.6 , 0 );
setMoveKey( spep_11 -3 + 102, 1, 27.7, -41.7 , 0 );
setMoveKey( spep_11 -3 + 104, 1, 35.4, -47.7 , 0 );

setScaleKey( spep_11 + 0, 1, 0.61, 0.61 );
setScaleKey( spep_11 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_11 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_11 -3 + 6, 1, 0.58, 0.58 );
setScaleKey( spep_11 -3 + 8, 1, 0.57, 0.57 );
setScaleKey( spep_11 -3 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_11 -3 + 12, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 14, 1, 0.54, 0.54 );
setScaleKey( spep_11 -3 + 16, 1, 0.53, 0.53 );
setScaleKey( spep_11 -3 + 18, 1, 0.52, 0.52 );
setScaleKey( spep_11 -3 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 22, 1, 0.5, 0.5 );
setScaleKey( spep_11 -3 + 24, 1, 0.49, 0.49 );
setScaleKey( spep_11 -3 + 26, 1, 0.48, 0.48 );
setScaleKey( spep_11 -3 + 28, 1, 0.47, 0.47 );
setScaleKey( spep_11 -3 + 30, 1, 0.5, 0.51 );
setScaleKey( spep_11 -3 + 32, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 34, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 36, 1, 0.5, 0.51 );
setScaleKey( spep_11 -3 + 38, 1, 0.48, 0.49 );
setScaleKey( spep_11 -3 + 40, 1, 0.46, 0.47 );
setScaleKey( spep_11 -3 + 42, 1, 0.43, 0.44 );
setScaleKey( spep_11 -3 + 44, 1, 0.4, 0.4 );
setScaleKey( spep_11 -3 + 46, 1, 0.35, 0.36 );
setScaleKey( spep_11 -3 + 48, 1, 0.29, 0.3 );
setScaleKey( spep_11 -3 + 56, 1, 0.29, 0.3 );
setScaleKey( spep_11 -3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_11 -3 + 62, 1, 0.3, 0.3 );
setScaleKey( spep_11 -3 + 64, 1, 0.3, 0.31 );
setScaleKey( spep_11 -3 + 74, 1, 0.3, 0.31 );
setScaleKey( spep_11 -3 + 76, 1, 0.31, 0.31 );
setScaleKey( spep_11 -3 + 78, 1, 0.31, 0.31 );
setScaleKey( spep_11 -3 + 80, 1, 0.31, 0.32 );
setScaleKey( spep_11 -3 + 90, 1, 0.31, 0.32 );
setScaleKey( spep_11 -3 + 92, 1, 0.32, 0.32 );
setScaleKey( spep_11 -3 + 96, 1, 0.32, 0.32 );
setScaleKey( spep_11 -3 + 98, 1, 0.32, 0.33 );
setScaleKey( spep_11 -3 + 104, 1, 0.32, 0.33 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 -3 + 104, 1, 0 );

setAlphaKey( spep_11 + 0, 1, 255 );
setAlphaKey( spep_11 -3 + 104, 1, 255 );

-- ** 音 ** --
--気弾撃つ
SE045 = playSe( spep_11 + 18, 1022 );

--気弾撃つ
SE046 = playSe( spep_11 + 18, 1027 );

--気弾ヒット
SE047 = playSe( spep_11 + 44, 1021 );

--爆発
SE048 = playSe( spep_11 + 94, 1168,"",0.6 );
setStartTimeMs( SE048,  367 );

--爆発
SE049 = playSe( spep_11 + 74, 1023 );

--爆発
SE050 = playSe( spep_11 + 74, 1159 );

--画面切り替え
SE051 = playSe( spep_11 + 180, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 196;


------------------------------------------------------
-- フィニッシュ絵(136F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_12 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵	ef_012
setEffMoveKey( spep_12 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_12 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_12 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish, 0 );
setEffRotateKey( spep_12 + 136, finish, 0 );
setEffAlphaKey( spep_12 + 0, finish, 255 );
setEffAlphaKey( spep_12 + 136, finish, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 16 );
endPhase( spep_12 + 126 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 怒りを溜める(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --怒りを溜める	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

-- ** 音 ** --
--岩浮き上がる
SE001 = playSe( spep_0 + 8, 1168,"",0.6 );
setSeVolumeByWorkId( spep_0 + 8, SE003, 25 );
setSeVolumeByWorkId( spep_0 + 10, SE003, 50 );
setSeVolumeByWorkId( spep_0 + 12, SE003, 75 );
setSeVolumeByWorkId( spep_0 + 14, SE003, 100 );
setStartTimeMs( SE001,  933 );

--岩浮き上がる
SE002 = playSe( spep_0 + 0, 1232 );

--岩浮き上がる
SE003 = playSe( spep_0 + 0, 1226 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 45 );
stopSe( spep_0 +76 +116 +56 +86 +86 +106 + 12, SE003, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 叫ぶ１(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
shout = entryEffectLife( spep_1 + 0, SP_02r, 116, 0x100, -1, 0, 0, 0 );  --叫ぶ１	ef_002
setEffMoveKey( spep_1 + 0, shout, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, shout, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shout, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, shout, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shout, 0 );
setEffRotateKey( spep_1 + 116, shout, 0 );
setEffAlphaKey( spep_1 + 0, shout, 255 );
setEffAlphaKey( spep_1 + 116 -1, shout, 255 );
setEffAlphaKey( spep_1 + 116, shout, 0 );

-- ** 音 ** --
--叫ぶ
SE004 = playSe( spep_1 + 50, 1125 );
stopSe( spep_1 +152 +56 + 4, SE004, 64 );

--叫ぶ
SE005 = playSe( spep_1 + 50, 1068 );

--叫ぶ
SE006 = playSe( spep_1 + 50, 1033 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


------------------------------------------------------
-- 叫ぶ２(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shout2 = entryEffectLife( spep_2 + 0, SP_03r, 56, 0x100, -1, 0, 0, 0 );  --叫ぶ２	ef_003
setEffMoveKey( spep_2 + 0, shout2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, shout2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shout2, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, shout2, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shout2, 0 );
setEffRotateKey( spep_2 + 56, shout2, 0 );
setEffAlphaKey( spep_2 + 0, shout2, 255 );
setEffAlphaKey( spep_2 + 56 -1, shout2, 255 );
setEffAlphaKey( spep_2 + 56, shout2, 0 );

-- ** 音 ** --
--上向いて叫ぶ
SE007 = playSe( spep_2 + 10, 1024 );
setSeVolumeByWorkId( spep_2 + 10, SE007, 89 );

--上向いて叫ぶ
SE008 = playSe( spep_2 + 10, 1325 );
setSeVolumeByWorkId( spep_2 + 10, SE008, 69 );
stopSe( spep_2 +56 +86 +86 +106 + 4, SE008, 8 );

--上向いて叫ぶ
SE009 = playSe( spep_2 + 10, 1168 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- 気を放つ(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
wave = entryEffectLife( spep_3 + 0, SP_04r, 86, 0x100, -1, 0, 0, 0 );  --気を放つ	ef_004
setEffMoveKey( spep_3 + 0, wave, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, wave, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, wave, -1.0, 1.0 );
setEffScaleKey( spep_3 + 86, wave, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wave, 0 );
setEffRotateKey( spep_3 + 86, wave, 0 );
setEffAlphaKey( spep_3 + 0, wave, 255 );
setEffAlphaKey( spep_3 + 86 -1, wave, 255 );
setEffAlphaKey( spep_3 + 86, wave, 0 );

-- ** 音 ** --
--上に気弾打つ
SE010 = playSe( spep_3 + 0, 1146 );
setSeVolumeByWorkId( spep_3 + 0, SE010, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- 叫ぶ３(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shout3 = entryEffectLife( spep_4 + 0, SP_05, 86, 0x100, -1, 0, 0, 0 );  --叫ぶ３	ef_005
setEffMoveKey( spep_4 + 0, shout3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shout3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shout3, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, shout3, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shout3, 0 );
setEffRotateKey( spep_4 + 86, shout3, 0 );
setEffAlphaKey( spep_4 + 0, shout3, 255 );
setEffAlphaKey( spep_4 + 86 -1, shout3, 255 );
setEffAlphaKey( spep_4 + 86, shout3, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
SE011 = playSe( spep_4 + 6, 1018 );

--気弾膨れる
SE012 = playSe( spep_4 + 64, 1044 );
setSeVolumeByWorkId( spep_4 + 64, SE012, 20 );
setSeVolumeByWorkId( spep_4 + 72, SE012, 40 );
setSeVolumeByWorkId( spep_4 + 80, SE012, 60 );
setSeVolumeByWorkId( spep_4 + 88, SE012, 80 );
setSeVolumeByWorkId( spep_4 + 96, SE012, 100 );
setSeVolumeByWorkId( spep_4 + 104, SE012, 120 );
setSeVolumeByWorkId( spep_4 + 112, SE012, 140 );
setSeVolumeByWorkId( spep_4 + 122, SE012, 158 );
stopSe( spep_4 +86 +106 + 0, SE012, 10 );

--気弾膨れる
SE013 = playSe( spep_4 + 74, 1158,"",0.6 );
stopSe( spep_4 +86 + 100, SE013, 14 );

--気弾膨れる
SE014 = playSe( spep_4 + 82, 1191,"",0.6 );
setSeVolumeByWorkId( spep_4 + 82, SE014, 214 );
stopSe( spep_4 +86 + 82, SE014, 34 );
setPitch( spep_4 + 82, SE014, -1200 );
setTimeStretch( SE014, 0.2, 10, 1 );

--気弾膨れる
SE015 = playSe( spep_4 + 84, 1311,"",0.6 );
setSeVolumeByWorkId( spep_4 + 84, SE015, 172 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 気で敵を押し出す(106F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kiai_f = entryEffectLife( spep_5 + 0, SP_06, 106, 0x100, -1, 0, 0, 0 );  --気で敵を押し出す　手前	ef_006_front
setEffMoveKey( spep_5 + 0, kiai_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 106, kiai_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiai_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 106, kiai_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiai_f, 0 );
setEffRotateKey( spep_5 + 106, kiai_f, 0 );
setEffAlphaKey( spep_5 + 0, kiai_f, 255 );
setEffAlphaKey( spep_5 + 106 -1, kiai_f, 255 );
setEffAlphaKey( spep_5 + 106, kiai_f, 0 );

kiai_b = entryEffectLife( spep_5 + 0, SP_07, 106, 0x80, -1, 0, 0, 0 );  --気で敵を押し出す	ef_006_back
setEffMoveKey( spep_5 + 0, kiai_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 106, kiai_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kiai_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 106, kiai_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kiai_b, 0 );
setEffRotateKey( spep_5 + 106, kiai_b, 0 );
setEffAlphaKey( spep_5 + 0, kiai_b, 255 );
setEffAlphaKey( spep_5 + 106 -1, kiai_b, 255 );
setEffAlphaKey( spep_5 + 106, kiai_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 98, 1, 0 );
changeAnime( spep_5 + 0, 1, 118 );
changeAnime( spep_5 -3 + 80, 1, 107 );

setMoveKey( spep_5 + 0, 1, 126.1, -256.1 , 0 );
setMoveKey( spep_5 + 1, 1, 111.3, -243.5 , 0 );
setMoveKey( spep_5 + 2, 1, 106.2, -237 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 102.5, -235.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 99.6, -234.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 93.2, -234.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 87.3, -233.6 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 86, -232 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 84.7, -230.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 1, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 2, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 6, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 8, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 12, 1, 1.47, 1.47 );

setRotateKey( spep_5 + 0, 1, 0 );

setAlphaKey( spep_5 + 0, 1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 84.7, -230.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 86.8, -228.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 88.8, -226.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 90.1, -228.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 91.5, -231.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 87, -227.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.47, 1.47 );
    setScaleKey( SP_dodge + 10, 1, 1.47, 1.47 );

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


setMoveKey( spep_5 -3 + 18, 1, 86.8, -228.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 88.8, -226.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 90.1, -228.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 91.5, -231.1 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 87, -227.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 82.5, -224.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 89.7, -232.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 81.3, -225.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 87.1, -219.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 94.9, -227.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 91, -233.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 81.3, -223.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 91, -223.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 98.8, -231.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 97.3, -227.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 115.2, -213.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 122.4, -225.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 108.4, -209.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 109, -223.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 116.5, -229.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 120, -222.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 127, -213.6 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 132.2, -216.2 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 133.5, -208.8 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 124.6, -225.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 134, -235.4 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 133.9, -229.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 132.5, -219.6 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 144.4, -223.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 138.3, -218.5 , 0 );
setMoveKey( spep_5 -3 + 79, 1, 148.2, -215.6 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 181.5, -250.8 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 208.1, -200.7 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 234.6, -138.9 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 272.9, -77.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 301.4, -15.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 345.5, 27 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 383.7, 88.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 421.9, 138.9 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 448.5, 189 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 475, 250.8 , 0 );
--setMoveKey( spep_5 -3 + 100, 1, 483.8, 247.9 , 0 );
--setMoveKey( spep_5 -3 + 102, 1, 480.9, 256.7 , 0 );
--setMoveKey( spep_5 -3 + 104, 1, 475, 262.5 , 0 );
--setMoveKey( spep_5 -3 + 106, 1, 469.2, 256.7 , 0 );
--setMoveKey( spep_5 -3 + 108, 1, 475, 250.8 , 0 );

setScaleKey( spep_5 -3 + 44, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 48, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 50, 1, 1.57, 1.57 );
setScaleKey( spep_5 -3 + 52, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 54, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 56, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 58, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 60, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 62, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 64, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 66, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 68, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 70, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 72, 1, 1.95, 1.95 );
setScaleKey( spep_5 -3 + 74, 1, 1.98, 1.98 );
setScaleKey( spep_5 -3 + 76, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 79, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 80, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_5 -3 + 84, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 86, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 88, 1, 1.83, 1.83 );
setScaleKey( spep_5 -3 + 90, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 92, 1, 2.22, 2.22 );
setScaleKey( spep_5 -3 + 94, 1, 2.42, 2.42 );
setScaleKey( spep_5 -3 + 96, 1, 2.61, 2.61 );
setScaleKey( spep_5 -3 + 98, 1, 2.81, 2.81 );

setRotateKey( spep_5 -3 + 44, 1, 0 );
setRotateKey( spep_5 -3 + 46, 1, -0.5 );
setRotateKey( spep_5 -3 + 48, 1, -0.9 );
setRotateKey( spep_5 -3 + 50, 1, -1.4 );
setRotateKey( spep_5 -3 + 52, 1, -1.9 );
setRotateKey( spep_5 -3 + 54, 1, -2.4 );
setRotateKey( spep_5 -3 + 56, 1, -2.8 );
setRotateKey( spep_5 -3 + 58, 1, -3.3 );
setRotateKey( spep_5 -3 + 60, 1, -3.8 );
setRotateKey( spep_5 -3 + 62, 1, -4.2 );
setRotateKey( spep_5 -3 + 64, 1, -4.7 );
setRotateKey( spep_5 -3 + 66, 1, -5.2 );
setRotateKey( spep_5 -3 + 68, 1, -5.6 );
setRotateKey( spep_5 -3 + 70, 1, -6.1 );
setRotateKey( spep_5 -3 + 72, 1, -6.6 );
setRotateKey( spep_5 -3 + 74, 1, -7.1 );
setRotateKey( spep_5 -3 + 76, 1, -7.5 );
setRotateKey( spep_5 -3 + 79, 1, -8 );
setRotateKey( spep_5 -3 + 80, 1, -80.7 );
setRotateKey( spep_5 -3 + 82, 1, -78.8 );
setRotateKey( spep_5 -3 + 84, 1, -77 );
setRotateKey( spep_5 -3 + 86, 1, -75.1 );
setRotateKey( spep_5 -3 + 88, 1, -73.3 );
setRotateKey( spep_5 -3 + 90, 1, -71.4 );
setRotateKey( spep_5 -3 + 92, 1, -69.6 );
setRotateKey( spep_5 -3 + 94, 1, -67.7 );
setRotateKey( spep_5 -3 + 96, 1, -65.9 );
setRotateKey( spep_5 -3 + 98, 1, -64 );

setAlphaKey( spep_5 -3 + 80, 1, 255 );
setAlphaKey( spep_5 -3 + 82, 1, 227 );
setAlphaKey( spep_5 -3 + 84, 1, 198 );
setAlphaKey( spep_5 -3 + 86, 1, 170 );
setAlphaKey( spep_5 -3 + 88, 1, 142 );
setAlphaKey( spep_5 -3 + 90, 1, 113 );
setAlphaKey( spep_5 -3 + 92, 1, 85 );
setAlphaKey( spep_5 -3 + 94, 1, 57 );
setAlphaKey( spep_5 -3 + 96, 1, 28 );
setAlphaKey( spep_5 -3 + 98, 1, 0 );

-- ** 音 ** --
--敵飛んでく
SE016 = playSe( spep_5 + 76, 1027 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 106;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_6 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--走ってくる
SE018 = playSe( spep_6 + 90, 1108 );
setSeVolumeByWorkId( spep_6 + 90, SE018, 158 );
stopSe( spep_6+ 98, SE018, 0 );

--走ってくる
SE019 = playSe( spep_6 + 90, 1106 );
stopSe( spep_6+ 98, SE019, 0 );

--走ってくる
SE020 = playSe( spep_6 + 90, 44 );--

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;


------------------------------------------------------
-- ジャンプ(86F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_7 + 0, SP_08, 86, 0x100, -1, 0, 0, 0 );  --ジャンプ	ef_007
setEffMoveKey( spep_7 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, jump, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, jump, -1.0, 1.0 );
setEffScaleKey( spep_7 + 86, jump, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, jump, 0 );
setEffRotateKey( spep_7 + 86, jump, 0 );
setEffAlphaKey( spep_7 + 0, jump, 255 );
setEffAlphaKey( spep_7 + 86 -1, jump, 255 );
setEffAlphaKey( spep_7 + 86, jump, 0 );

-- ** 音 ** --
--走ってくる
SE021 = playSe( spep_7 + 4, 1108 );
setSeVolumeByWorkId( spep_7 + 4, SE021, 158 );
stopSe( spep_7 + 12, SE021, 0 );

--走ってくる
SE022 = playSe( spep_7 + 4, 1106 );
stopSe( spep_7 + 12, SE022, 0 );

--走ってくる
SE023 = playSe( spep_7 + 10, 1108 );
setSeVolumeByWorkId( spep_7 + 10, SE023, 158 );
stopSe( spep_7 + 18, SE023, 0 );

--走ってくる
SE024 = playSe( spep_7 + 10, 1106 );
stopSe( spep_7 + 18, SE024, 0 );

--走ってくる
SE025 = playSe( spep_7 + 18, 1108 );
setSeVolumeByWorkId( spep_7 + 18, SE025, 158 );
stopSe( spep_7 + 26, SE025, 0 );

--走ってくる
SE026 = playSe( spep_7 + 18, 1106 );
stopSe( spep_7 + 26, SE026, 0 );

--走ってくる
SE027 = playSe( spep_7 + 26, 1108 );
setSeVolumeByWorkId( spep_7 + 26, SE027, 158 );
stopSe( spep_7 + 34, SE027, 0 );

--走ってくる
SE028 = playSe( spep_7 + 26, 1106 );
stopSe( spep_7 + 34, SE028, 0 );

--走ってくる
SE029 = playSe( spep_7 + 34, 1108 );
setSeVolumeByWorkId( spep_7 + 34, SE029, 158 );
stopSe( spep_7 + 42, SE029, 0 );

--走ってくる
SE030 = playSe( spep_7 + 34, 1106 );
stopSe( spep_7 + 42, SE030, 0 );

--走ってくる
SE031 = playSe( spep_7 + 42, 1108 );
setSeVolumeByWorkId( spep_7 + 42, SE031, 158 );
stopSe( spep_7 + 50, SE031, 0 );

--走ってくる
SE032 = playSe( spep_7 + 42, 1106 );
stopSe( spep_7 + 50, SE032, 0 );

--走ってくる
SE033 = playSe( spep_7 + 50, 1108 );
setSeVolumeByWorkId( spep_7 + 50, SE033, 158 );
stopSe( spep_7 + 58, SE033, 0 );

--走ってくる
SE034 = playSe( spep_7 + 50, 1106 );
stopSe( spep_7 + 58, SE034, 0 );

--走ってくる
SE035 = playSe( spep_7 + 60, 1108 );
setSeVolumeByWorkId( spep_7 + 60, SE035, 158 );
stopSe( spep_7 + 68, SE035, 0 );

--走ってくる
SE036 = playSe( spep_7 + 60, 1106 );
stopSe( spep_7 + 68, SE036, 0 );

--飛び上がる
SE037 = playSe( spep_7 + 64, 1003 );

--飛び上がる
SE038 = playSe( spep_7 + 64, 1117 );

--飛び上がる
SE039 = playSe( spep_7 + 64, 1278,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 86;


------------------------------------------------------
-- 空を飛ぶ(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
fly = entryEffectLife( spep_8 + 0, SP_09r, 56, 0x100, -1, 0, 0, 0 );  --空を飛ぶ	ef_008
setEffMoveKey( spep_8 + 0, fly, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, fly, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, fly, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, fly, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly, 0 );
setEffRotateKey( spep_8 + 56, fly, 0 );
setEffAlphaKey( spep_8 + 0, fly, 255 );
setEffAlphaKey( spep_8 + 56 -1, fly, 255 );
setEffAlphaKey( spep_8 + 56, fly, 0 );

-- ** 音 ** --
--飛んでくる
SE040 = playSe( spep_8 + 54, 1019 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- 泣き顔→キッ(76F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
face = entryEffectLife( spep_9 + 0, SP_10, 76, 0x100, -1, 0, 0, 0 );  --泣き顔→キッ	ef_009
setEffMoveKey( spep_9 + 0, face, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, face, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, face, -1.0, 1.0 );
setEffScaleKey( spep_9 + 76, face, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, face, 0 );
setEffRotateKey( spep_9 + 76, face, 0 );
setEffAlphaKey( spep_9 + 0, face, 255 );
setEffAlphaKey( spep_9 + 76 -1, face, 255 );
setEffAlphaKey( spep_9 + 76, face, 0 );

-- ** 音 ** --
--飛んでくる
SE041 = playSe( spep_9 + 62, 1019 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 76;


------------------------------------------------------
-- 気を溜める(76F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_10 + 0, SP_11r, 76, 0x100, -1, 0, 0, 0 );  --気を溜める	ef_010
setEffMoveKey( spep_10 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_10 + 76, tame, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, tame, 0 );
setEffRotateKey( spep_10 + 76, tame, 0 );
setEffAlphaKey( spep_10 + 0, tame, 255 );
setEffAlphaKey( spep_10 + 76 -1, tame, 255 );
setEffAlphaKey( spep_10 + 76, tame, 0 );

-- ** 音 ** --
--気を溜める
SE042 = playSe( spep_10 + 26, 1311 );
setSeVolumeByWorkId( spep_10 + 26, SE042, 195 );

--気を溜める
SE043 = playSe( spep_10 + 26, 1295 ,"",0.6);
setSeVolumeByWorkId( spep_10 + 26, SE043, 453 );
stopSe( spep_10 +76 + 30, SE043, 10 );
setPitch( spep_10 + 26, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );

--飛んでくる
SE044 = playSe( spep_10 + 50, 1019 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;


------------------------------------------------------
-- 放つ(196F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
charge_f = entryEffectLife( spep_11 + 0, SP_12r, 196, 0x100, -1, 0, 0, 0 );  --放つ	ef_011_front
setEffMoveKey( spep_11 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 196, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, charge_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 196, charge_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, charge_f, 0 );
setEffRotateKey( spep_11 + 196, charge_f, 0 );
setEffAlphaKey( spep_11 + 0, charge_f, 255 );
setEffAlphaKey( spep_11 + 196 -1, charge_f, 255 );
setEffAlphaKey( spep_11 + 196, charge_f, 0 );

charge_b = entryEffectLife( spep_11 + 0, SP_13, 196, 0x80, -1, 0, 0, 0 );  --放つ	ef_011_back
setEffMoveKey( spep_11 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 196, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 196, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, charge_b, 0 );
setEffRotateKey( spep_11 + 196, charge_b, 0 );
setEffAlphaKey( spep_11 + 0, charge_b, 255 );
setEffAlphaKey( spep_11 + 196 -1, charge_b, 255 );
setEffAlphaKey( spep_11 + 196, charge_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 104, 1, 1 );
changeAnime( spep_11 + 0, 1, 5 );

setMoveKey( spep_11 + 0, 1, 203.7, -238 , 0 );
setMoveKey( spep_11 + 1, 1, 204.6, -239.6 , 0 );
setMoveKey( spep_11 + 2, 1, 205.5, -241.1 , 0 );
setMoveKey( spep_11 -3 + 6, 1, 206.4, -242.6 , 0 );
setMoveKey( spep_11 -3 + 8, 1, 207.3, -244.1 , 0 );
setMoveKey( spep_11 -3 + 10, 1, 208.2, -245.6 , 0 );
setMoveKey( spep_11 -3 + 12, 1, 209.1, -247.1 , 0 );
setMoveKey( spep_11 -3 + 14, 1, 210, -248.6 , 0 );
setMoveKey( spep_11 -3 + 16, 1, 210.9, -250.1 , 0 );
setMoveKey( spep_11 -3 + 18, 1, 211.8, -251.6 , 0 );
setMoveKey( spep_11 -3 + 20, 1, 212.7, -253.1 , 0 );
setMoveKey( spep_11 -3 + 22, 1, 226.1, -242.1 , 0 );
setMoveKey( spep_11 -3 + 24, 1, 208.9, -261.7 , 0 );
setMoveKey( spep_11 -3 + 26, 1, 226.7, -276.4 , 0 );
setMoveKey( spep_11 -3 + 28, 1, 204.5, -248.5 , 0 );
setMoveKey( spep_11 -3 + 30, 1, 192.9, -230.3 , 0 );
setMoveKey( spep_11 -3 + 32, 1, 173.5, -201.6 , 0 );
setMoveKey( spep_11 -3 + 34, 1, 154.4, -173.6 , 0 );
setMoveKey( spep_11 -3 + 36, 1, 138.3, -153.9 , 0 );
setMoveKey( spep_11 -3 + 38, 1, 112.6, -129.8 , 0 );
setMoveKey( spep_11 -3 + 40, 1, 92.3, -101.4 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 74.9, -76.3 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 55.3, -51.9 , 0 );
setMoveKey( spep_11 -3 + 46, 1, 38.8, -33.1 , 0 );
setMoveKey( spep_11 -3 + 48, 1, 40.1, -37.3 , 0 );
setMoveKey( spep_11 -3 + 50, 1, 42.7, -34.8 , 0 );
setMoveKey( spep_11 -3 + 52, 1, 47.8, -39.9 , 0 );
setMoveKey( spep_11 -3 + 54, 1, 37.9, -42.3 , 0 );
setMoveKey( spep_11 -3 + 56, 1, 30.6, -49.8 , 0 );
setMoveKey( spep_11 -3 + 58, 1, 25.7, -44.9 , 0 );
setMoveKey( spep_11 -3 + 60, 1, 23.3, -44.9 , 0 );
setMoveKey( spep_11 -3 + 62, 1, 25.9, -47.4 , 0 );
setMoveKey( spep_11 -3 + 64, 1, 25.9, -44.9 , 0 );
setMoveKey( spep_11 -3 + 66, 1, 26.1, -47.5 , 0 );
setMoveKey( spep_11 -3 + 68, 1, 21.2, -47.5 , 0 );
setMoveKey( spep_11 -3 + 70, 1, 23.8, -45 , 0 );
setMoveKey( spep_11 -3 + 72, 1, 23.9, -45 , 0 );
setMoveKey( spep_11 -3 + 74, 1, 22.7, -43.8 , 0 );
setMoveKey( spep_11 -3 + 76, 1, 26.6, -47.5 , 0 );
setMoveKey( spep_11 -3 + 78, 1, 31.7, -42.6 , 0 );
setMoveKey( spep_11 -3 + 80, 1, 49.3, -35 , 0 );
setMoveKey( spep_11 -3 + 82, 1, 14.4, -60.1 , 0 );
setMoveKey( spep_11 -3 + 84, 1, 44.6, -57.6 , 0 );
setMoveKey( spep_11 -3 + 86, 1, 19.7, -32.7 , 0 );
setMoveKey( spep_11 -3 + 88, 1, 49.8, -40.2 , 0 );
setMoveKey( spep_11 -3 + 90, 1, 39.9, -52.7 , 0 );
setMoveKey( spep_11 -3 + 92, 1, 32.4, -45.2 , 0 );
setMoveKey( spep_11 -3 + 94, 1, 42.6, -40.2 , 0 );
setMoveKey( spep_11 -3 + 96, 1, 47.7, -50.2 , 0 );
setMoveKey( spep_11 -3 + 98, 1, 38.4, -48.3 , 0 );
setMoveKey( spep_11 -3 + 100, 1, 30, -55.6 , 0 );
setMoveKey( spep_11 -3 + 102, 1, 27.7, -41.7 , 0 );
setMoveKey( spep_11 -3 + 104, 1, 35.4, -47.7 , 0 );

setScaleKey( spep_11 + 0, 1, 0.61, 0.61 );
setScaleKey( spep_11 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_11 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_11 -3 + 6, 1, 0.58, 0.58 );
setScaleKey( spep_11 -3 + 8, 1, 0.57, 0.57 );
setScaleKey( spep_11 -3 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_11 -3 + 12, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 14, 1, 0.54, 0.54 );
setScaleKey( spep_11 -3 + 16, 1, 0.53, 0.53 );
setScaleKey( spep_11 -3 + 18, 1, 0.52, 0.52 );
setScaleKey( spep_11 -3 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 22, 1, 0.5, 0.5 );
setScaleKey( spep_11 -3 + 24, 1, 0.49, 0.49 );
setScaleKey( spep_11 -3 + 26, 1, 0.48, 0.48 );
setScaleKey( spep_11 -3 + 28, 1, 0.47, 0.47 );
setScaleKey( spep_11 -3 + 30, 1, 0.5, 0.51 );
setScaleKey( spep_11 -3 + 32, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 34, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 36, 1, 0.5, 0.51 );
setScaleKey( spep_11 -3 + 38, 1, 0.48, 0.49 );
setScaleKey( spep_11 -3 + 40, 1, 0.46, 0.47 );
setScaleKey( spep_11 -3 + 42, 1, 0.43, 0.44 );
setScaleKey( spep_11 -3 + 44, 1, 0.4, 0.4 );
setScaleKey( spep_11 -3 + 46, 1, 0.35, 0.36 );
setScaleKey( spep_11 -3 + 48, 1, 0.29, 0.3 );
setScaleKey( spep_11 -3 + 56, 1, 0.29, 0.3 );
setScaleKey( spep_11 -3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_11 -3 + 62, 1, 0.3, 0.3 );
setScaleKey( spep_11 -3 + 64, 1, 0.3, 0.31 );
setScaleKey( spep_11 -3 + 74, 1, 0.3, 0.31 );
setScaleKey( spep_11 -3 + 76, 1, 0.31, 0.31 );
setScaleKey( spep_11 -3 + 78, 1, 0.31, 0.31 );
setScaleKey( spep_11 -3 + 80, 1, 0.31, 0.32 );
setScaleKey( spep_11 -3 + 90, 1, 0.31, 0.32 );
setScaleKey( spep_11 -3 + 92, 1, 0.32, 0.32 );
setScaleKey( spep_11 -3 + 96, 1, 0.32, 0.32 );
setScaleKey( spep_11 -3 + 98, 1, 0.32, 0.33 );
setScaleKey( spep_11 -3 + 104, 1, 0.32, 0.33 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 -3 + 104, 1, 0 );

setAlphaKey( spep_11 + 0, 1, 255 );
setAlphaKey( spep_11 -3 + 104, 1, 255 );

-- ** 音 ** --
--気弾撃つ
SE045 = playSe( spep_11 + 18, 1022 );

--気弾撃つ
SE046 = playSe( spep_11 + 18, 1027 );

--気弾ヒット
SE047 = playSe( spep_11 + 44, 1021 );

--爆発
SE048 = playSe( spep_11 + 94, 1168,"",0.6 );
setStartTimeMs( SE048,  367 );

--爆発
SE049 = playSe( spep_11 + 74, 1023 );

--爆発
SE050 = playSe( spep_11 + 74, 1159 );

--画面切り替え
SE051 = playSe( spep_11 + 180, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 196;


------------------------------------------------------
-- フィニッシュ絵(136F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_12 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵	ef_012
setEffMoveKey( spep_12 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_12 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_12 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish, 0 );
setEffRotateKey( spep_12 + 136, finish, 0 );
setEffAlphaKey( spep_12 + 0, finish, 255 );
setEffAlphaKey( spep_12 + 136, finish, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 16 );
endPhase( spep_12 + 126 );

end