--1025900:超サイヤ人トランクス(幼年期)_フィニッシュバスター
--sp_effect_a2_00194

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
SP_01 = 161074;	--冒頭セリフカットイン	ef_001
SP_02 = 161075;	--気弾連続なげ	ef_002
SP_03 = 161076;	--気弾敵ヒット：敵より前	ef_003
SP_04 = 161077;	--気弾敵ヒット：敵より後ろ	ef_004
SP_05 = 161078;	--気弾発射	ef_005
SP_06 = 161079;	--気弾敵ヒット：敵より前	ef_006
SP_07 = 161080;	--気弾敵ヒット：敵より後ろ	ef_007
SP_08 = 161081;	--ラスト爆発シーン	ef_008

--敵側
SP_03r = 161082;	--気弾敵ヒット：敵より前：反転	ef_003_r
SP_05r = 161083;	--気弾発射：反転	ef_005_r
SP_06r = 161084;	--気弾敵ヒット：敵より前:反転	ef_006_r

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
-- 冒頭セリフカットイン	(170F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭セリフカットイン	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 168, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 168, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 168 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 168 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 168, first_f, 0 );

spep_x = spep_0 + 72;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--悟天合流
SE002 = playSeVer2( spep_0 + 32, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE002, 69 );
SE003 = playSeVer2( spep_0 + 36, 1189, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 160, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;


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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾連続なげ(100F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
renzoku = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --気弾連続なげ	ef_002
setEffMoveKey( spep_2 + 0, renzoku, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, renzoku, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, renzoku, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, renzoku, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, renzoku, 0 );
setEffRotateKey( spep_2 + 100, renzoku, 0 );
setEffAlphaKey( spep_2 + 0, renzoku, 255 );
setEffAlphaKey( spep_2 + 100 -2, renzoku, 255 );
setEffAlphaKey( spep_2 + 100 -1, renzoku, 255 );
setEffAlphaKey( spep_2 + 100, renzoku, 0 );

-- ** 音 ** --
--連続気弾
SE006 = playSeVer2( spep_2 + 0, 1016, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 2, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 2, SE007, 500 );
setTimeStretch( SE007, 1.33, 30, 4 );
SE008 = playSeVer2( spep_2 + 4, 1353, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 22, 1016, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 24, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 24, SE010, 500 );
setTimeStretch( SE010, 1.33, 30, 4 );
SE011 = playSeVer2( spep_2 + 42, 1016, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 48, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 48, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );
SE013 = playSeVer2( spep_2 + 60, 1016, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 62, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 62, SE014, 500 );
setTimeStretch( SE014, 1.33, 30, 4 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 84 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
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
--連続気弾
SE015 = playSeVer2( spep_2 + 74, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 78, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 78, SE016, 500 );
setTimeStretch( SE016, 1.33, 30, 4 );

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 92, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;


------------------------------------------------------
-- 気弾敵ヒット(80F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾敵ヒット：敵より前	ef_003
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80 -2, hit_f, 255 );
setEffAlphaKey( spep_3 + 80 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 0 );

hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾敵ヒット：敵より後ろ	ef_004
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80 -2, hit_b, 255 );
setEffAlphaKey( spep_3 + 80 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 83, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );

a1 = 430;
b1 = 570;
setMoveKey( spep_3 + 0, 1, 624.6 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 4, 1, 624.6 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 14, 1, 624.6 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 16, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 18, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 20, 1, 607.1 -a1, -707.2 +b1, 0 );
setMoveKey( spep_3 -3 + 22, 1, 599.6 -a1, -687.2 +b1, 0 );
setMoveKey( spep_3 -3 + 24, 1, 634.6 -a1, -717.2 +b1, 0 );
setMoveKey( spep_3 -3 + 26, 1, 614.6 -a1, -699.7 +b1, 0 );
setMoveKey( spep_3 -3 + 28, 1, 599.6 -a1, -722.2 +b1, 0 );
setMoveKey( spep_3 -3 + 30, 1, 637.1 -a1, -727.2 +b1, 0 );
setMoveKey( spep_3 -3 + 32, 1, 589.6 -a1, -709.7 +b1, 0 );
setMoveKey( spep_3 -3 + 34, 1, 614.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 36, 1, 637.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 38, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 42, 1, 607.1 -a1, -707.2 +b1, 0 );
setMoveKey( spep_3 -3 + 44, 1, 599.6 -a1, -687.2 +b1, 0 );
setMoveKey( spep_3 -3 + 46, 1, 634.6 -a1, -717.2 +b1, 0 );
setMoveKey( spep_3 -3 + 48, 1, 614.6 -a1, -699.7 +b1, 0 );
setMoveKey( spep_3 -3 + 50, 1, 599.6 -a1, -722.2 +b1, 0 );
setMoveKey( spep_3 -3 + 52, 1, 637.1 -a1, -727.2 +b1, 0 );
setMoveKey( spep_3 -3 + 54, 1, 589.6 -a1, -709.7 +b1, 0 );
setMoveKey( spep_3 -3 + 56, 1, 614.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 637.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 60, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 62, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 64, 1, 607.1 -a1, -707.2 +b1, 0 );
setMoveKey( spep_3 -3 + 66, 1, 599.6 -a1, -687.2 +b1, 0 );
setMoveKey( spep_3 -3 + 68, 1, 634.6 -a1, -717.2 +b1, 0 );
setMoveKey( spep_3 -3 + 70, 1, 614.6 -a1, -699.7 +b1, 0 );
setMoveKey( spep_3 -3 + 72, 1, 599.6 -a1, -722.2 +b1, 0 );
setMoveKey( spep_3 -3 + 74, 1, 637.1 -a1, -727.2 +b1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 589.6 -a1, -709.7 +b1, 0 );
setMoveKey( spep_3 -3 + 78, 1, 614.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 80, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 82, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 83, 1, 632.1 -a1, -689.7 +b1, 0 );

setScaleKey( spep_3 + 0, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 83, 1, 0.99, 0.99 );

setRotateKey( spep_3 + 0, 1, 8 );
setRotateKey( spep_3 -3 + 83, 1, 8 );

-- ** 音 ** --
--気弾爆発
SE018 = playSeVer2( spep_3 + 10, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 28, 1011, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 42, 1014, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 68, 1296, "",spep_3 + 146, 0, 12, -1);
SE022 = playSeVer2( spep_3 + 68, 1295, "",spep_3 + 146, 0, 12, -1);

--オーラ
SE023 = playSeVer2( spep_3 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE023, 71 );

-- ** 白フェード ** --
entryFade( spep_3 + 56, 14, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;


------------------------------------------------------
-- 気弾発射(200F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気弾発射	ef_005
setEffMoveKey( spep_4 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 108, shot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 108, shot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot, 0 );
setEffRotateKey( spep_4 + 108, shot, 0 );
setEffAlphaKey( spep_4 + 0, shot, 255 );
setEffAlphaKey( spep_4 + 108 -2, shot, 255 );
setEffAlphaKey( spep_4 + 108 -1, shot, 255 );
setEffAlphaKey( spep_4 + 108, shot, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 50, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 50, 20 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 50, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen4, 2.0, 2.0 );
setEffScaleKey( spep_4 + 50, shuchusen4, 2.0, 2.0 );
setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 50, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 50, shuchusen4, 255 );

-- ** 音 ** --
--オーラ
SE024 = playSeVer2( spep_4 + 10, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE024, 71 );
SE025 = playSeVer2( spep_4 + 34, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 34, SE025, 71 );

--気弾発射
SE026 = playSeVer2( spep_4 + 46, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE026, 83 );
SE027 = playSeVer2( spep_4 + 46, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE027, 80 );

--気弾飛んでいく
SE028 = playSeVer2( spep_4 + 104, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 108;


------------------------------------------------------
-- 気弾敵ヒット(70F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --気弾敵ヒット：敵より前	ef_006
setEffMoveKey( spep_5 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, attack_f, 0 );
setEffRotateKey( spep_5 + 70, attack_f, 0 );
setEffAlphaKey( spep_5 + 0, attack_f, 255 );
setEffAlphaKey( spep_5 + 70 -2, attack_f, 255 );
setEffAlphaKey( spep_5 + 70 -1, attack_f, 255 );
setEffAlphaKey( spep_5 + 70, attack_f, 0 );

attack_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾敵ヒット：敵より後ろ	ef_007
setEffMoveKey( spep_5 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, attack_b, 0 );
setEffRotateKey( spep_5 + 70, attack_b, 0 );
setEffAlphaKey( spep_5 + 0, attack_b, 255 );
setEffAlphaKey( spep_5 + 70 -2, attack_b, 255 );
setEffAlphaKey( spep_5 + 70 -1, attack_b, 255 );
setEffAlphaKey( spep_5 + 70, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 30, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

a2 = 430;
b2 = 580;
setMoveKey( spep_5 + 0, 1, 621 -a2, -691.6 +b2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 621 -a2, -691.6 +b2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 621.2 -a2, -688.3 +b2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 613.4 -a2, -685.2 +b2 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 613.6 -a2, -681.8 +b2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 605.8 -a2, -678.7 +b2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 606 -a2, -675.4 +b2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 598.2 -a2, -672.3 +b2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 598.4 -a2, -669 +b2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 590.7 -a2, -665.9 +b2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 590.9 -a2, -662.6 +b2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 583.1 -a2, -659.4 +b2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 583.3 -a2, -656.1 +b2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 575.6 -a2, -653 +b2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 576.6 -a2, -662.1 +b2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_5 -3 + 8, 1, 1.08, 1.07 );
setScaleKey( spep_5 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 14, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 16, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_5 -3 + 20, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 24, 1, 2.18, 2.18 );
setScaleKey( spep_5 -3 + 26, 1, 2.32, 2.32 );
setScaleKey( spep_5 -3 + 28, 1, 2.46, 2.46 );
setScaleKey( spep_5 -3 + 30, 1, 2.6, 2.6 );

setRotateKey( spep_5 + 0, 1, 38.6 );
setRotateKey( spep_5 -3 + 30, 1, 38.6 );

-- ** 音 ** --
--気弾ヒット
SE029 = playSeVer2( spep_5 + 16, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16, SE029, 89 );

--爆発
SE030 = playSeVer2( spep_5 + 54, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_5 + 54, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE031, 71 );

-- ** 白フェード ** --
entryFade( spep_5 + 60, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;


------------------------------------------------------
-- ラスト爆発シーン(150F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ラスト爆発シーン	ef_008
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 150, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 150, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 150, finish, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0, 906, 150, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen6, 150, 20 );
setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 150, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen6, 1.8, 1.8 );
setEffScaleKey( spep_6 + 150, shuchusen6, 1.8, 1.8 );
setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 150, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 150, shuchusen6, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 14, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 140 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭セリフカットイン   (170F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭セリフカットイン   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 168, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 168, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 168 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 168 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 168, first_f, 0 );

spep_x = spep_0 + 72;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--悟天合流
SE002 = playSeVer2( spep_0 + 32, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE002, 69 );
SE003 = playSeVer2( spep_0 + 36, 1189, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 160, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;


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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾連続なげ(100F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
renzoku = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --気弾連続なげ   ef_002
setEffMoveKey( spep_2 + 0, renzoku, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, renzoku, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, renzoku, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, renzoku, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, renzoku, 0 );
setEffRotateKey( spep_2 + 100, renzoku, 0 );
setEffAlphaKey( spep_2 + 0, renzoku, 255 );
setEffAlphaKey( spep_2 + 100 -2, renzoku, 255 );
setEffAlphaKey( spep_2 + 100 -1, renzoku, 255 );
setEffAlphaKey( spep_2 + 100, renzoku, 0 );

-- ** 音 ** --
--連続気弾
SE006 = playSeVer2( spep_2 + 0, 1016, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 2, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 2, SE007, 500 );
setTimeStretch( SE007, 1.33, 30, 4 );
SE008 = playSeVer2( spep_2 + 4, 1353, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 22, 1016, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 24, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 24, SE010, 500 );
setTimeStretch( SE010, 1.33, 30, 4 );
SE011 = playSeVer2( spep_2 + 42, 1016, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 48, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 48, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );
SE013 = playSeVer2( spep_2 + 60, 1016, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 62, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 62, SE014, 500 );
setTimeStretch( SE014, 1.33, 30, 4 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 84 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
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
--連続気弾
SE015 = playSeVer2( spep_2 + 74, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 78, 1155, "", 0, 0, 0, -1);
setPitch( spep_2 + 78, SE016, 500 );
setTimeStretch( SE016, 1.33, 30, 4 );

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 92, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;


------------------------------------------------------
-- 気弾敵ヒット(80F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --気弾敵ヒット：敵より前    ef_003
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 80 -2, hit_f, 255 );
setEffAlphaKey( spep_3 + 80 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 0 );

hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾敵ヒット：敵より後ろ    ef_004
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 80 -2, hit_b, 255 );
setEffAlphaKey( spep_3 + 80 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 83, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );

a1 = 430;
b1 = 570;
setMoveKey( spep_3 + 0, 1, 624.6 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 4, 1, 624.6 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 14, 1, 624.6 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 16, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 18, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 20, 1, 607.1 -a1, -707.2 +b1, 0 );
setMoveKey( spep_3 -3 + 22, 1, 599.6 -a1, -687.2 +b1, 0 );
setMoveKey( spep_3 -3 + 24, 1, 634.6 -a1, -717.2 +b1, 0 );
setMoveKey( spep_3 -3 + 26, 1, 614.6 -a1, -699.7 +b1, 0 );
setMoveKey( spep_3 -3 + 28, 1, 599.6 -a1, -722.2 +b1, 0 );
setMoveKey( spep_3 -3 + 30, 1, 637.1 -a1, -727.2 +b1, 0 );
setMoveKey( spep_3 -3 + 32, 1, 589.6 -a1, -709.7 +b1, 0 );
setMoveKey( spep_3 -3 + 34, 1, 614.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 36, 1, 637.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 38, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 42, 1, 607.1 -a1, -707.2 +b1, 0 );
setMoveKey( spep_3 -3 + 44, 1, 599.6 -a1, -687.2 +b1, 0 );
setMoveKey( spep_3 -3 + 46, 1, 634.6 -a1, -717.2 +b1, 0 );
setMoveKey( spep_3 -3 + 48, 1, 614.6 -a1, -699.7 +b1, 0 );
setMoveKey( spep_3 -3 + 50, 1, 599.6 -a1, -722.2 +b1, 0 );
setMoveKey( spep_3 -3 + 52, 1, 637.1 -a1, -727.2 +b1, 0 );
setMoveKey( spep_3 -3 + 54, 1, 589.6 -a1, -709.7 +b1, 0 );
setMoveKey( spep_3 -3 + 56, 1, 614.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 637.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 60, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 62, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 64, 1, 607.1 -a1, -707.2 +b1, 0 );
setMoveKey( spep_3 -3 + 66, 1, 599.6 -a1, -687.2 +b1, 0 );
setMoveKey( spep_3 -3 + 68, 1, 634.6 -a1, -717.2 +b1, 0 );
setMoveKey( spep_3 -3 + 70, 1, 614.6 -a1, -699.7 +b1, 0 );
setMoveKey( spep_3 -3 + 72, 1, 599.6 -a1, -722.2 +b1, 0 );
setMoveKey( spep_3 -3 + 74, 1, 637.1 -a1, -727.2 +b1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 589.6 -a1, -709.7 +b1, 0 );
setMoveKey( spep_3 -3 + 78, 1, 614.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 80, 1, 624.6 -a1, -702.2 +b1, 0 );
setMoveKey( spep_3 -3 + 82, 1, 632.1 -a1, -689.7 +b1, 0 );
setMoveKey( spep_3 -3 + 83, 1, 632.1 -a1, -689.7 +b1, 0 );

setScaleKey( spep_3 + 0, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 83, 1, 0.99, 0.99 );

setRotateKey( spep_3 + 0, 1, 8 );
setRotateKey( spep_3 -3 + 83, 1, 8 );

-- ** 音 ** --
--気弾爆発
SE018 = playSeVer2( spep_3 + 10, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 28, 1011, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 42, 1014, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 68, 1296, "",spep_3 + 146, 0, 12, -1);
SE022 = playSeVer2( spep_3 + 68, 1295, "",spep_3 + 146, 0, 12, -1);

--オーラ
SE023 = playSeVer2( spep_3 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE023, 71 );

-- ** 白フェード ** --
entryFade( spep_3 + 56, 14, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;


------------------------------------------------------
-- 気弾発射(200F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --気弾発射    ef_005
setEffMoveKey( spep_4 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 108, shot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 108, shot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot, 0 );
setEffRotateKey( spep_4 + 108, shot, 0 );
setEffAlphaKey( spep_4 + 0, shot, 255 );
setEffAlphaKey( spep_4 + 108 -2, shot, 255 );
setEffAlphaKey( spep_4 + 108 -1, shot, 255 );
setEffAlphaKey( spep_4 + 108, shot, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 50, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 50, 20 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 50, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen4, 2.0, 2.0 );
setEffScaleKey( spep_4 + 50, shuchusen4, 2.0, 2.0 );
setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 50, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 50, shuchusen4, 255 );

-- ** 音 ** --
--オーラ
SE024 = playSeVer2( spep_4 + 10, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE024, 71 );
SE025 = playSeVer2( spep_4 + 34, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 34, SE025, 71 );

--気弾発射
SE026 = playSeVer2( spep_4 + 46, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE026, 83 );
SE027 = playSeVer2( spep_4 + 46, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 46, SE027, 80 );

--気弾飛んでいく
SE028 = playSeVer2( spep_4 + 104, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 108;


------------------------------------------------------
-- 気弾敵ヒット(70F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_5 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --気弾敵ヒット：敵より前 ef_006
setEffMoveKey( spep_5 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, attack_f, 0 );
setEffRotateKey( spep_5 + 70, attack_f, 0 );
setEffAlphaKey( spep_5 + 0, attack_f, 255 );
setEffAlphaKey( spep_5 + 70 -2, attack_f, 255 );
setEffAlphaKey( spep_5 + 70 -1, attack_f, 255 );
setEffAlphaKey( spep_5 + 70, attack_f, 0 );

attack_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾敵ヒット：敵より後ろ ef_007
setEffMoveKey( spep_5 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, attack_b, 0 );
setEffRotateKey( spep_5 + 70, attack_b, 0 );
setEffAlphaKey( spep_5 + 0, attack_b, 255 );
setEffAlphaKey( spep_5 + 70 -2, attack_b, 255 );
setEffAlphaKey( spep_5 + 70 -1, attack_b, 255 );
setEffAlphaKey( spep_5 + 70, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 30, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

a2 = 430;
b2 = 580;
setMoveKey( spep_5 + 0, 1, 621 -a2, -691.6 +b2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 621 -a2, -691.6 +b2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 621.2 -a2, -688.3 +b2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 613.4 -a2, -685.2 +b2 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 613.6 -a2, -681.8 +b2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 605.8 -a2, -678.7 +b2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 606 -a2, -675.4 +b2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 598.2 -a2, -672.3 +b2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 598.4 -a2, -669 +b2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 590.7 -a2, -665.9 +b2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 590.9 -a2, -662.6 +b2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 583.1 -a2, -659.4 +b2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 583.3 -a2, -656.1 +b2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 575.6 -a2, -653 +b2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 576.6 -a2, -662.1 +b2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_5 -3 + 8, 1, 1.08, 1.07 );
setScaleKey( spep_5 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 14, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 16, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_5 -3 + 20, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 24, 1, 2.18, 2.18 );
setScaleKey( spep_5 -3 + 26, 1, 2.32, 2.32 );
setScaleKey( spep_5 -3 + 28, 1, 2.46, 2.46 );
setScaleKey( spep_5 -3 + 30, 1, 2.6, 2.6 );

setRotateKey( spep_5 + 0, 1, 38.6 );
setRotateKey( spep_5 -3 + 30, 1, 38.6 );

-- ** 音 ** --
--気弾ヒット
SE029 = playSeVer2( spep_5 + 16, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16, SE029, 89 );

--爆発
SE030 = playSeVer2( spep_5 + 54, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_5 + 54, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE031, 71 );

-- ** 白フェード ** --
entryFade( spep_5 + 60, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;


------------------------------------------------------
-- ラスト爆発シーン(150F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ラスト爆発シーン  ef_008
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 150, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 150, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 150, finish, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0, 906, 150, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen6, 150, 20 );
setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 150, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen6, 1.8, 1.8 );
setEffScaleKey( spep_6 + 150, shuchusen6, 1.8, 1.8 );
setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 150, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 150, shuchusen6, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 14, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 140 );

end