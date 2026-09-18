--1025220:SSRダーブラ(天使)_エンジェルインパルス_sp2443
--sp_effect_a1_00317

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
SP_01 = 160721;	--出現→手前にくる→気弾溜め	ef_001
SP_02 = 160722;	--出現→手前にくる→気弾溜め	ef_002
SP_03 = 160723;	--気弾発射　	ef_003
SP_04 = 160725;	--気弾発射　	ef_004
SP_05 = 160726;	--奥に向かって吹き飛ぶ敵	ef_005
SP_06 = 160727;	--奥に向かって吹き飛ぶ敵	ef_006
SP_07 = 160728;	--爆発→終了	ef_007

--敵側
SP_03r = 160724;	--気弾発射　	ef_003r


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 出現→手前にくる→気弾溜め(288F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 286, 0x100, -1, 0, 0, 0 );  --出現→手前にくる→気弾溜め	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 286, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 286 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 286, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 286, 0x80, -1, 0, 0, 0 );  --出現→手前にくる→気弾溜め	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 286, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 286 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 286, first_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 118 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 48, 1, 0 );

setMoveKey( spep_0 + 0, 1, 220.5, 24.1 , 0 );
setMoveKey( spep_0 + 1, 1, 220.5, 24.1 , 0 );
setMoveKey( spep_0 + 2, 1, 220.5, 24.1 , 0 );
setMoveKey( spep_0 + 3, 1, 220.5, 24.1 , 0 );
setMoveKey( spep_0 + 4, 1, 220.5, 24.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 220.5, 24.1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 220.5, 24.1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 222.1, 24.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 226.8, 24 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 234.7, 23.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 245.7, 23.8 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 259.9, 23.7 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 277.3, 23.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 297.8, 23.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 321.4, 23 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 348.2, 22.8 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 378.2, 22.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 411.3, 22.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 447.5, 21.7 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 487, 21.3 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 529.5, 20.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 575.3, 20.4 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 624.2, 19.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 676.2, 19.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 731.4, 18.7 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 789.7, 18.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 851.2, 17.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 1, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 2, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 3, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 4, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 5, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 6, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 12, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 14, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 16, 1, 2.22, 2.22 );
setScaleKey( spep_0 -3 + 18, 1, 2.23, 2.23 );
setScaleKey( spep_0 -3 + 20, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 22, 1, 2.26, 2.26 );
setScaleKey( spep_0 -3 + 24, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_0 -3 + 28, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 30, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 32, 1, 2.37, 2.37 );
setScaleKey( spep_0 -3 + 34, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 36, 1, 2.44, 2.44 );
setScaleKey( spep_0 -3 + 38, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 40, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 42, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 44, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 46, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 48, 1, 2.68, 2.68 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 48, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 -3 + 48, 1, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );

--回りながらくる
SE002 = playSeVer2( spep_0 + 20, 63, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 20, 1128, "",spep_0 + 122, 0, 30, 0.6);
setSeVolumeByWorkId( spep_0 + 20, SE003, 74 );
SE004 = playSeVer2( spep_0 + 20, 1116, "", 0, 0, 0, 0.6);
SE005 = playSeVer2( spep_0 + 30, 1019, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 94, 1019, "",spep_0 + 136, 0, 10, -1);

--両手前に出す
SE007 = playSeVer2( spep_0 + 122, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 122, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 288 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 180 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
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

spep_x = spep_0 + 196;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
--気弾溜め
SE009 = playSeVer2( spep_0 + 190, 1226, "",spep_0 + 298, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 190, SE009, 51 );

--顔カットイン
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE011 = playSeVer2( spep_0 + 216, 1282, "",spep_0 + 298, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 216, SE011, 85 );
SE012 = playSeVer2( spep_0 + 216, 1262, "",spep_0 + 298, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 216, SE012, 81 );

-- ** 白フェード ** --
entryFade( spep_0 + 268, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 286;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射(102F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_2 + 0, SP_03, 102, 0x100, -1, 0, 0, 0 );  --気弾発射　	ef_003
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 102, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 102, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 102 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 102, shot_f, 0 );

shot_b = entryEffectLife( spep_2 + 0, SP_04, 102, 0x80, -1, 0, 0, 0 );  --気弾発射　	ef_004
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 102, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 102, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 102 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 102, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 81, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 16, 1, 106 );

setBlendColor( spep_2 -3 + 18, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 -3 + 80, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 -3 + 81, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_2 + 0, 1, 66.1, 158.3 , 0 );
setMoveKey( spep_2 + 1, 1, 68.1, 160.8 , 0 );
setMoveKey( spep_2 + 2, 1, 70.1, 163.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 72, 165.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 74, 168.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 75.9, 170.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 77.9, 173.3 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 79.8, 175.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 153.9, 251.9 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 153.9, 251.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 157.6, 256.1 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 157.6, 256.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 172.3, 291.3 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 172.3, 291.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 119.4, 260.9 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 119.4, 260.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 99.1, 351.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 100.3, 354.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 102.3, 359.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 105, 366 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 108.5, 374.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 112.8, 385.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 117.9, 398.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 123.8, 413.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 130.5, 430.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 137.9, 449.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 146.2, 469.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 155.2, 492.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 164.6, 516.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 174.9, 542.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 185.9, 571 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 197.7, 601.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 210.3, 633.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 223.7, 667.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 237.9, 703.2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 252.8, 741.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 268.6, 781.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 285.1, 823.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 302.4, 867.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 320.5, 913 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 339.4, 960.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 359, 1010.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 379.5, 1062.6 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 400.7, 1116.4 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 2, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 6, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 8, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 10, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 12, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 15, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 16, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 17, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 19, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 20, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 21, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 23, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 24, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 25, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 28, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 30, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 32, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 34, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 36, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 38, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 40, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 42, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 44, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 46, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 50, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 54, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 58, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 60, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 64, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 66, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 68, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 70, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 72, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 74, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 78, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 81, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 0, 1, -7.8 );
setRotateKey( spep_2 -3 + 15, 1, -7.8 );
setRotateKey( spep_2 -3 + 16, 1, -24.5 );
setRotateKey( spep_2 -3 + 18, 1, -24.5 );
setRotateKey( spep_2 -3 + 19, 1, -24.5 );
setRotateKey( spep_2 -3 + 20, 1, -26.1 );
setRotateKey( spep_2 -3 + 21, 1, -26.1 );
setRotateKey( spep_2 -3 + 22, 1, -27.6 );
setRotateKey( spep_2 -3 + 23, 1, -27.6 );
setRotateKey( spep_2 -3 + 24, 1, -34.9 );
setRotateKey( spep_2 -3 + 72, 1, -34.9 );
setRotateKey( spep_2 -3 + 74, 1, -34.8 );
setRotateKey( spep_2 -3 + 81, 1, -34.8 );

setAlphaKey( spep_2 + 0, 1, 255 );
setAlphaKey( spep_2 -3 + 81, 1, 255 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 10, 1213, "",spep_2 + 156, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 10, SE014, 76 );
SE015 = playSeVer2( spep_2 + 10, 1284, "",spep_2 + 156, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 10, SE015, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 102 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 102;


------------------------------------------------------
-- 奥に向かって吹き飛ぶ敵(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
goaway_f = entryEffectLife( spep_3 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵	ef_007
setEffMoveKey( spep_3 + 0, goaway_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, goaway_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, goaway_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, goaway_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, goaway_f, 0 );
setEffRotateKey( spep_3 + 56, goaway_f, 0 );
setEffAlphaKey( spep_3 + 0, goaway_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, goaway_f, 255 );
setEffAlphaKey( spep_3 + 56, goaway_f, 0 );

goaway_b = entryEffectLife( spep_3 + 0, SP_06, 56, 0x80, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵	ef_008
setEffMoveKey( spep_3 + 0, goaway_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, goaway_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, goaway_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, goaway_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, goaway_b, 0 );
setEffRotateKey( spep_3 + 56, goaway_b, 0 );
setEffAlphaKey( spep_3 + 0, goaway_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, goaway_b, 255 );
setEffAlphaKey( spep_3 + 56, goaway_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 10, 1, 1 );
setDisp( spep_3 -3 + 59, 1, 0 );
changeAnime( spep_3 -3 + 10, 1, 105 );

setBlendColor( spep_3 -3 + 10, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_3 -3 + 58, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_3 -3 + 59, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -3 + 10, 1, 70.3, -55.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 55.9, -42.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 65.5, -53.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 59.1, -32.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 36.7, -43.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 38.3, -30.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 29.3, -21.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 44.2, -36.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 43.2, -20 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 26.1, -35.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 33.1, -26.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 24.1, -17.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 39, -32.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 37.9, -15.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 20.9, -31 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 27.8, -22.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 18.8, -13.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 33.7, -28.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 32.7, -11.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 15.6, -26.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 22.6, -17.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 13.5, -9.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 28.4, -24.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 27.4, -7.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 10.3, -22.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 10.3, -22.6 , 0 );

setScaleKey( spep_3 -3 + 10, 1, 4.77, 4.77 );
setScaleKey( spep_3 -3 + 12, 1, 4.33, 4.33 );
setScaleKey( spep_3 -3 + 14, 1, 3.9, 3.9 );
setScaleKey( spep_3 -3 + 16, 1, 3.47, 3.47 );
setScaleKey( spep_3 -3 + 18, 1, 3.03, 3.03 );
setScaleKey( spep_3 -3 + 20, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 22, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 24, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 26, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_3 -3 + 30, 1, 2.24, 2.24 );
setScaleKey( spep_3 -3 + 32, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 42, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 50, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 52, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 54, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 58, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 59, 1, 1.24, 1.24 );

setRotateKey( spep_3 -3 + 10, 1, 12.5 );
setRotateKey( spep_3 -3 + 59, 1, 12.5 );

setAlphaKey( spep_3 -3 + 10, 1, 42.5 );
setAlphaKey( spep_3 -3 + 12, 1, 85 );
setAlphaKey( spep_3 -3 + 14, 1, 127.5 );
setAlphaKey( spep_3 -3 + 16, 1, 170 );
setAlphaKey( spep_3 -3 + 18, 1, 212.5 );
setAlphaKey( spep_3 -3 + 20, 1, 255 );
setAlphaKey( spep_3 -3 + 59, 1, 255 );

-- ** 音 ** --
--ギャン
SE016 = playSeVer2( spep_3 + 6, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 爆発→終了(136F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発→終了	ef_009
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 136, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 136, finish, 255 );

-- ** 音 ** --
--爆発
SE017 = playSeVer2( spep_4 + 10, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 128 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 126 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 出現→手前にくる→気弾溜め(288F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 286, 0x100, -1, 0, 0, 0 );  --出現→手前にくる→気弾溜め   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 286, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 286, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 286 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 286, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 286, 0x80, -1, 0, 0, 0 );  --出現→手前にくる→気弾溜め    ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 286, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 286, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 286 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 286, first_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 18 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 48, 1, 0 );

setMoveKey( spep_0 + 0, 1, -220.5, 24.1 , 0 );
setMoveKey( spep_0 + 1, 1, -220.5, 24.1 , 0 );
setMoveKey( spep_0 + 2, 1, -220.5, 24.1 , 0 );
setMoveKey( spep_0 + 3, 1, -220.5, 24.1 , 0 );
setMoveKey( spep_0 + 4, 1, -220.5, 24.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, -220.5, 24.1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, -220.5, 24.1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, -222.1, 24.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, -226.8, 24 , 0 );
setMoveKey( spep_0 -3 + 14, 1, -234.7, 23.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, -245.7, 23.8 , 0 );
setMoveKey( spep_0 -3 + 18, 1, -259.9, 23.7 , 0 );
setMoveKey( spep_0 -3 + 20, 1, -277.3, 23.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, -297.8, 23.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, -321.4, 23 , 0 );
setMoveKey( spep_0 -3 + 26, 1, -348.2, 22.8 , 0 );
setMoveKey( spep_0 -3 + 28, 1, -378.2, 22.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, -411.3, 22.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, -447.5, 21.7 , 0 );
setMoveKey( spep_0 -3 + 34, 1, -487, 21.3 , 0 );
setMoveKey( spep_0 -3 + 36, 1, -529.5, 20.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, -575.3, 20.4 , 0 );
setMoveKey( spep_0 -3 + 40, 1, -624.2, 19.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, -676.2, 19.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, -731.4, 18.7 , 0 );
setMoveKey( spep_0 -3 + 46, 1, -789.7, 18.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, -851.2, 17.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 1, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 2, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 3, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 4, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 5, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 6, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 12, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 14, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 16, 1, 2.22, 2.22 );
setScaleKey( spep_0 -3 + 18, 1, 2.23, 2.23 );
setScaleKey( spep_0 -3 + 20, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 22, 1, 2.26, 2.26 );
setScaleKey( spep_0 -3 + 24, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_0 -3 + 28, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 30, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 32, 1, 2.37, 2.37 );
setScaleKey( spep_0 -3 + 34, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 36, 1, 2.44, 2.44 );
setScaleKey( spep_0 -3 + 38, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 40, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 42, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 44, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 46, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 48, 1, 2.68, 2.68 );

setRotateKey( spep_0 + 0, 1, -0 );
setRotateKey( spep_0 + 1, 1, -0 );
setRotateKey( spep_0 + 2, 1, -0 );
setRotateKey( spep_0 + 3, 1, -0 );
setRotateKey( spep_0 + 4, 1, -0 );
setRotateKey( spep_0 + 5, 1, -0 );
setRotateKey( spep_0 + 6, 1, -0 );
setRotateKey( spep_0 -3 + 48, 1, -0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 -3 + 48, 1, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );

--回りながらくる
SE002 = playSeVer2( spep_0 + 20, 63, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 20, 1128, "",spep_0 + 122, 0, 30, 0.6);
setSeVolumeByWorkId( spep_0 + 20, SE003, 74 );
SE004 = playSeVer2( spep_0 + 20, 1116, "", 0, 0, 0, 0.6);
SE005 = playSeVer2( spep_0 + 30, 1019, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 94, 1019, "",spep_0 + 136, 0, 10, -1);

--両手前に出す
SE007 = playSeVer2( spep_0 + 122, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 122, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 288 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 180 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
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

spep_x = spep_0 + 196;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
--気弾溜め
SE009 = playSeVer2( spep_0 + 190, 1226, "",spep_0 + 298, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 190, SE009, 51 );

--顔カットイン
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE011 = playSeVer2( spep_0 + 216, 1282, "",spep_0 + 298, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 216, SE011, 85 );
SE012 = playSeVer2( spep_0 + 216, 1262, "",spep_0 + 298, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 216, SE012, 81 );

-- ** 白フェード ** --
entryFade( spep_0 + 268, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 286;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射(102F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_2 + 0, SP_03r, 102, 0x100, -1, 0, 0, 0 );  --気弾発射　    ef_003
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 102, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 102, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 102 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 102, shot_f, 0 );

shot_b = entryEffectLife( spep_2 + 0, SP_04, 102, 0x80, -1, 0, 0, 0 );  --気弾発射　 ef_004
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 102, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 102, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 102 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 102, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 81, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 16, 1, 106 );

setBlendColor( spep_2 -3 + 18, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 -3 + 80, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 -3 + 81, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_2 + 0, 1, 66.1, 158.3 , 0 );
setMoveKey( spep_2 + 1, 1, 68.1, 160.8 , 0 );
setMoveKey( spep_2 + 2, 1, 70.1, 163.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 72, 165.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 74, 168.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 75.9, 170.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 77.9, 173.3 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 79.8, 175.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 153.9, 251.9 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 153.9, 251.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 157.6, 256.1 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 157.6, 256.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 172.3, 291.3 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 172.3, 291.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 119.4, 260.9 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 119.4, 260.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 99.1, 351.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 100.3, 354.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 102.3, 359.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 105, 366 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 108.5, 374.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 112.8, 385.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 117.9, 398.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 123.8, 413.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 130.5, 430.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 137.9, 449.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 146.2, 469.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 155.2, 492.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 164.6, 516.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 174.9, 542.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 185.9, 571 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 197.7, 601.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 210.3, 633.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 223.7, 667.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 237.9, 703.2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 252.8, 741.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 268.6, 781.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 285.1, 823.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 302.4, 867.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 320.5, 913 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 339.4, 960.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 359, 1010.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 379.5, 1062.6 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 400.7, 1116.4 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 2, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 6, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 8, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 10, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 12, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 15, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 16, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 17, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 19, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 20, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 21, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 23, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 24, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 25, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 28, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 30, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 32, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 34, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 36, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 38, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 40, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 42, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 44, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 46, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 50, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 54, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 58, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 60, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 64, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 66, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 68, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 70, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 72, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 74, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 78, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 81, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 0, 1, -7.8 );
setRotateKey( spep_2 -3 + 15, 1, -7.8 );
setRotateKey( spep_2 -3 + 16, 1, -24.5 );
setRotateKey( spep_2 -3 + 18, 1, -24.5 );
setRotateKey( spep_2 -3 + 19, 1, -24.5 );
setRotateKey( spep_2 -3 + 20, 1, -26.1 );
setRotateKey( spep_2 -3 + 21, 1, -26.1 );
setRotateKey( spep_2 -3 + 22, 1, -27.6 );
setRotateKey( spep_2 -3 + 23, 1, -27.6 );
setRotateKey( spep_2 -3 + 24, 1, -34.9 );
setRotateKey( spep_2 -3 + 72, 1, -34.9 );
setRotateKey( spep_2 -3 + 74, 1, -34.8 );
setRotateKey( spep_2 -3 + 81, 1, -34.8 );

setAlphaKey( spep_2 + 0, 1, 255 );
setAlphaKey( spep_2 -3 + 81, 1, 255 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 10, 1213, "",spep_2 + 156, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 10, SE014, 76 );
SE015 = playSeVer2( spep_2 + 10, 1284, "",spep_2 + 156, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 10, SE015, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 102 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 102;


------------------------------------------------------
-- 奥に向かって吹き飛ぶ敵(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
goaway_f = entryEffectLife( spep_3 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵 ef_007
setEffMoveKey( spep_3 + 0, goaway_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, goaway_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, goaway_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, goaway_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, goaway_f, 0 );
setEffRotateKey( spep_3 + 56, goaway_f, 0 );
setEffAlphaKey( spep_3 + 0, goaway_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, goaway_f, 255 );
setEffAlphaKey( spep_3 + 56, goaway_f, 0 );

goaway_b = entryEffectLife( spep_3 + 0, SP_06, 56, 0x80, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵  ef_008
setEffMoveKey( spep_3 + 0, goaway_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, goaway_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, goaway_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, goaway_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, goaway_b, 0 );
setEffRotateKey( spep_3 + 56, goaway_b, 0 );
setEffAlphaKey( spep_3 + 0, goaway_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, goaway_b, 255 );
setEffAlphaKey( spep_3 + 56, goaway_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 10, 1, 1 );
setDisp( spep_3 -3 + 59, 1, 0 );
changeAnime( spep_3 -3 + 10, 1, 5 );

setBlendColor( spep_3 -3 + 10, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_3 -3 + 58, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_3 -3 + 59, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -3 + 10, 1, -70.3, -55.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -55.9, -42.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -65.5, -53.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -59.1, -32.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -36.7, -43.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -38.3, -30.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -29.3, -21.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -44.2, -36.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -43.2, -20 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -26.1, -35.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -33.1, -26.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -24.1, -17.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -39, -32.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -37.9, -15.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -20.9, -31 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -27.8, -22.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -18.8, -13.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -33.7, -28.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -32.7, -11.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -15.6, -26.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -22.6, -17.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -13.5, -9.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -28.4, -24.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -27.4, -7.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -10.3, -22.6 , 0 );
setMoveKey( spep_3 -3 + 59, 1, -10.3, -22.6 , 0 );

setScaleKey( spep_3 -3 + 10, 1, 4.77, 4.77 );
setScaleKey( spep_3 -3 + 12, 1, 4.33, 4.33 );
setScaleKey( spep_3 -3 + 14, 1, 3.9, 3.9 );
setScaleKey( spep_3 -3 + 16, 1, 3.47, 3.47 );
setScaleKey( spep_3 -3 + 18, 1, 3.03, 3.03 );
setScaleKey( spep_3 -3 + 20, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 22, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 24, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 26, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_3 -3 + 30, 1, 2.24, 2.24 );
setScaleKey( spep_3 -3 + 32, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 42, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 50, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 52, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 54, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 58, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 59, 1, 1.24, 1.24 );

setRotateKey( spep_3 -3 + 10, 1, -12.5 );
setRotateKey( spep_3 -3 + 59, 1, -12.5 );

setAlphaKey( spep_3 -3 + 10, 1, 42.5 );
setAlphaKey( spep_3 -3 + 12, 1, 85 );
setAlphaKey( spep_3 -3 + 14, 1, 127.5 );
setAlphaKey( spep_3 -3 + 16, 1, 170 );
setAlphaKey( spep_3 -3 + 18, 1, 212.5 );
setAlphaKey( spep_3 -3 + 20, 1, 255 );
setAlphaKey( spep_3 -3 + 59, 1, 255 );

-- ** 音 ** --
--ギャン
SE016 = playSeVer2( spep_3 + 6, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 爆発→終了(136F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発→終了 ef_009
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_4 + 136, finish, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 136, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 136, finish, 255 );

-- ** 音 ** --
--爆発
SE017 = playSeVer2( spep_4 + 10, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 128 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 126 );


end