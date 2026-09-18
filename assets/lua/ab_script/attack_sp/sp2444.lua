--1025230:URダーブラ(天使)_エンジェルインパルス
--sp_effect_a1_00374
--sp2444

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
SP_01 = 160729;	--突進	ef_001
SP_02 = 160730;	--ショルダータックル→瞬間移動	ef_002
SP_03 = 160732;	--ショルダータックル→瞬間移動	ef_003
SP_04 = 160734;	--瞬間移動→気弾溜め	ef_004
SP_05 = 160736;	--気弾発射　	ef_005
SP_06 = 160738;	--気弾発射	ef_006
SP_07 = 160739;	--奥に向かって吹き飛ぶ敵	ef_007
SP_08 = 160740;	--奥に向かって吹き飛ぶ敵	ef_008
SP_09 = 160741;	--爆発→終了	ef_009

--敵側
SP_02r = 160731;	--ショルダータックル→瞬間移動	ef_002r
SP_03r = 160733;	--ショルダータックル→瞬間移動	ef_003r
SP_04r = 160735;	--瞬間移動→気弾溜め	ef_004r
SP_05r = 160737;	--気弾発射　	ef_005r

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --突進	ef_001
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
--突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE002, 1.25, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--画面遷移
SE003 = playSeVer2( spep_0 + 50, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- ショルダータックル(78F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
sattack_f = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --ショルダータックル→瞬間移動	ef_002
setEffMoveKey( spep_1 + 0, sattack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, sattack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, sattack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, sattack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, sattack_f, 0 );
setEffRotateKey( spep_1 + 76, sattack_f, 0 );
setEffAlphaKey( spep_1 + 0, sattack_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, sattack_f, 255 );
setEffAlphaKey( spep_1 + 76, sattack_f, 0 );

sattack_b = entryEffectLife( spep_1 + 0, SP_03, 76, 0x80, -1, 0, 0, 0 );  --ショルダータックル→瞬間移動	ef_003
setEffMoveKey( spep_1 + 0, sattack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, sattack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, sattack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, sattack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, sattack_b, 0 );
setEffRotateKey( spep_1 + 76, sattack_b, 0 );
setEffAlphaKey( spep_1 + 0, sattack_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, sattack_b, 255 );
setEffAlphaKey( spep_1 + 76, sattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 79, 1, 0 );
changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 -3 + 30, 1, 107 );

setMoveKey( spep_1 + 0, 1, 160.5, 24.1 , 0 );
setMoveKey( spep_1 + 1, 1, 141.7, 22.7 , 0 );
setMoveKey( spep_1 + 2, 1, 134, 22.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 128.6, 21.6 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 124.3, 21.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 120.8, 21 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 117.7, 20.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 115.1, 20.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 112.8, 20.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 110.7, 20.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 108.9, 20.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 107.2, 20 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 105.6, 19.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 104.2, 19.8 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 102.8, 19.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 110, 38 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 150, 56 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 85.9, 17.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 185.6, 78.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 153.3, 16.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 120.9, 40.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 103.1, 30.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 450.1, 85.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 559.8, 101.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 664.3, 112.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 713.2, 117.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 773.3, 128.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 813.9, 134.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 855.5, 139.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 883.4, 140.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 914.5, 147.7 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 933.4, 146.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 956.7, 153.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 968.7, 151.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 985.8, 157.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 992.1, 154.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 999.9, 155.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 1009.3, 160.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 1008.4, 156.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 1013.4, 160.9 , 0 );
setMoveKey( spep_1 -3 + 79, 1, 1013.4, 160.9 , 0 );

setScaleKey( spep_1 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_1 + 1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 2, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 6, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 8, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 16, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 18, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 20, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 22, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 26, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 29, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 36, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 44, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 46, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 48, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 52, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 56, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 58, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 60, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 62, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 64, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 70, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 72, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 79, 1, 1.8, 1.8 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 79, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 -3 + 79, 1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--タックル
SE004 = playSeVer2( spep_1 + 16, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 28, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE005, 72 );
SE006 = playSeVer2( spep_1 + 28, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE006, 81 );
SE007 = playSeVer2( spep_1 + 28, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE007, 89 );

--瞬間移動
SE008 = playSeVer2( spep_1 + 62, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- 瞬間移動→気弾溜め(148F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_04, 148, 0x100, -1, 0, 0, 0 );  --瞬間移動→気弾溜め	ef_004
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 148, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 148, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 148, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 148 -1, tame, 255 );
setEffAlphaKey( spep_2 + 148, tame, 0 );

spep_x = spep_2 + 58;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
--瞬間移動
SE009 = playSeVer2( spep_2 + 6, 1109, "", 0, 0, 0, -1);

--気弾溜め
SE010 = playSeVer2( spep_2 + 32, 1226, "",spep_2 + 158, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 32, SE010, 51 );

--顔カットイン
SE011 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE012 = playSeVer2( spep_2 + 64, 1282, "",spep_2 + 158, 0, 6, 0.6);
SE013 = playSeVer2( spep_2 + 64, 1262, "",spep_2 + 158, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 132, 12, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 148;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_3

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
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_c + 94;


------------------------------------------------------
-- 気弾発射(102F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_05, 100, 0x100, -1, 0, 0, 0 );  --気弾発射　	ef_005
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 100, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 100 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 100, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --気弾発射	ef_006
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 100, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 100 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 100, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 83 -2, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setBlendColor( spep_4 -3 + 18, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_4 -3 + 82 -2, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_4 -3 + 83 -2, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_4 + 0, 1, 13.9, 145.6 , 0 );
setMoveKey( spep_4 + 1, 1, 16.8, 148.1 , 0 );
setMoveKey( spep_4 + 2, 1, 19.8, 150.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 22.9, 153.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 26.2, 155.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 29.7, 158.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 33.3, 161.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 37, 164 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 37, 164 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 87.2, 173.5 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 87.2, 173.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 95.2, 222.1 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 95.2, 222.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 127.7, 295.8 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 127.7, 295.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 106.2, 297.7 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 106.2, 297.7 , 0 );
setMoveKey( spep_4 -3 + 26 -2, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_4 -3 + 27 -2, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_4 -3 + 28 -2, 1, 99.1, 351.1 , 0 );
setMoveKey( spep_4 -3 + 30 -2, 1, 100.3, 354.1 , 0 );
setMoveKey( spep_4 -3 + 32 -2, 1, 102.3, 359.1 , 0 );
setMoveKey( spep_4 -3 + 34 -2, 1, 105, 366 , 0 );
setMoveKey( spep_4 -3 + 36 -2, 1, 108.5, 374.9 , 0 );
setMoveKey( spep_4 -3 + 38 -2, 1, 112.8, 385.8 , 0 );
setMoveKey( spep_4 -3 + 40 -2, 1, 117.9, 398.6 , 0 );
setMoveKey( spep_4 -3 + 42 -2, 1, 123.8, 413.5 , 0 );
setMoveKey( spep_4 -3 + 44 -2, 1, 130.5, 430.3 , 0 );
setMoveKey( spep_4 -3 + 46 -2, 1, 137.9, 449.1 , 0 );
setMoveKey( spep_4 -3 + 48 -2, 1, 146.2, 469.9 , 0 );
setMoveKey( spep_4 -3 + 50 -2, 1, 155.2, 492.6 , 0 );
setMoveKey( spep_4 -3 + 52 -2, 1, 164.6, 516.8 , 0 );
setMoveKey( spep_4 -3 + 54 -2, 1, 174.9, 542.9 , 0 );
setMoveKey( spep_4 -3 + 56 -2, 1, 185.9, 571 , 0 );
setMoveKey( spep_4 -3 + 58 -2, 1, 197.7, 601.1 , 0 );
setMoveKey( spep_4 -3 + 60 -2, 1, 210.3, 633.1 , 0 );
setMoveKey( spep_4 -3 + 62 -2, 1, 223.7, 667.2 , 0 );
setMoveKey( spep_4 -3 + 64 -2, 1, 237.9, 703.2 , 0 );
setMoveKey( spep_4 -3 + 66 -2, 1, 252.8, 741.2 , 0 );
setMoveKey( spep_4 -3 + 68 -2, 1, 268.6, 781.2 , 0 );
setMoveKey( spep_4 -3 + 70 -2, 1, 285.1, 823.1 , 0 );
setMoveKey( spep_4 -3 + 72 -2, 1, 302.4, 867.1 , 0 );
setMoveKey( spep_4 -3 + 74 -2, 1, 320.5, 913 , 0 );
setMoveKey( spep_4 -3 + 76 -2, 1, 339.4, 960.9 , 0 );
setMoveKey( spep_4 -3 + 78 -2, 1, 359, 1010.7 , 0 );
setMoveKey( spep_4 -3 + 80 -2, 1, 379.5, 1062.6 , 0 );
setMoveKey( spep_4 -3 + 83 -2, 1, 400.7, 1116.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 1, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 6, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 8, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 12, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 14, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 15, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 16, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 17, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 19, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 20, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 21, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 22, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 23, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 26 -2, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 27 -2, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 28 -2, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 30 -2, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 32 -2, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 34 -2, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 36 -2, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 38 -2, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 40 -2, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 42 -2, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 44 -2, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 46 -2, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 48 -2, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 50 -2, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 52 -2, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 54 -2, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 56 -2, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 58 -2, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 60 -2, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 62 -2, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 64 -2, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 66 -2, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 68 -2, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 70 -2, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 72 -2, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 74 -2, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 76 -2, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 78 -2, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 80 -2, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 83 -2, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -7.8 );
setRotateKey( spep_4 -3 + 14, 1, -7.8 );
setRotateKey( spep_4 -3 + 15, 1, -7.8 );
setRotateKey( spep_4 -3 + 16, 1, -24.5 );
setRotateKey( spep_4 -3 + 17, 1, -24.5 );
setRotateKey( spep_4 -3 + 18, 1, -27.7 );
setRotateKey( spep_4 -3 + 19, 1, -27.7 );
setRotateKey( spep_4 -3 + 20, 1, -30.6 );
setRotateKey( spep_4 -3 + 21, 1, -30.6 );
setRotateKey( spep_4 -3 + 22, 1, -33.1 );
setRotateKey( spep_4 -3 + 23, 1, -33.1 );
setRotateKey( spep_4 -3 + 26 -2, 1, -34.9 );
setRotateKey( spep_4 -3 + 74 -2, 1, -34.9 );
setRotateKey( spep_4 -3 + 76 -2, 1, -34.8 );
setRotateKey( spep_4 -3 + 83 -2, 1, -34.8 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 83 -2, 1, 255 );

-- ** 音 ** --
--気弾発射
SE015 = playSeVer2( spep_4 + 10, 1213, "",spep_4 + 154, 0, 42, -1);
setSeVolumeByWorkId( spep_4 + 10, SE015, 76 );
SE016 = playSeVer2( spep_4 + 10, 1284, "",spep_4 + 154, 0, 42, -1);
setSeVolumeByWorkId( spep_4 + 10, SE016, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;


------------------------------------------------------
-- 奥に向かって吹き飛ぶ敵(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
goaway_f = entryEffectLife( spep_5 + 0, SP_07, 56, 0x100, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵	ef_007
setEffMoveKey( spep_5 + 0, goaway_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, goaway_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, goaway_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_f, 0 );
setEffRotateKey( spep_5 + 56, goaway_f, 0 );
setEffAlphaKey( spep_5 + 0, goaway_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, goaway_f, 255 );
setEffAlphaKey( spep_5 + 56, goaway_f, 0 );

goaway_b = entryEffectLife( spep_5 + 0, SP_08, 56, 0x80, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵	ef_008
setEffMoveKey( spep_5 + 0, goaway_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, goaway_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, goaway_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_b, 0 );
setEffRotateKey( spep_5 + 56, goaway_b, 0 );
setEffAlphaKey( spep_5 + 0, goaway_b, 255 );
setEffAlphaKey( spep_5 + 56 -1, goaway_b, 255 );
setEffAlphaKey( spep_5 + 56, goaway_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 10, 1, 1 );
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 -3 + 10, 1, 105 );

setBlendColor( spep_5 -3 + 10, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_5 -3 + 58, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_5 -3 + 59, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_5 -3 + 10, 1, 70.3, -55.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 55.9, -42.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 65.5, -53.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 59.1, -32.6 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 36.7, -43.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 38.3, -30.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 29.3, -21.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 44.2, -36.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 43.2, -20 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 26.1, -35.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 33.1, -26.3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 24.1, -17.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 39, -32.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 37.9, -15.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 20.9, -31 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 27.8, -22.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 18.8, -13.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 33.7, -28.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 32.7, -11.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 15.6, -26.8 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 22.6, -17.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 13.5, -9.1 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 28.4, -24.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 27.4, -7.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 10.3, -22.6 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 10.3, -22.6 , 0 );

setScaleKey( spep_5 -3 + 10, 1, 4.77, 4.77 );
setScaleKey( spep_5 -3 + 12, 1, 4.33, 4.33 );
setScaleKey( spep_5 -3 + 14, 1, 3.9, 3.9 );
setScaleKey( spep_5 -3 + 16, 1, 3.47, 3.47 );
setScaleKey( spep_5 -3 + 18, 1, 3.03, 3.03 );
setScaleKey( spep_5 -3 + 20, 1, 2.6, 2.6 );
setScaleKey( spep_5 -3 + 22, 1, 2.53, 2.53 );
setScaleKey( spep_5 -3 + 24, 1, 2.46, 2.46 );
setScaleKey( spep_5 -3 + 26, 1, 2.39, 2.39 );
setScaleKey( spep_5 -3 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 30, 1, 2.24, 2.24 );
setScaleKey( spep_5 -3 + 32, 1, 2.17, 2.17 );
setScaleKey( spep_5 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 42, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 50, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 52, 1, 1.46, 1.46 );
setScaleKey( spep_5 -3 + 54, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_5 -3 + 58, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 59, 1, 1.24, 1.24 );

setRotateKey( spep_5 -3 + 10, 1, 12.5 );
setRotateKey( spep_5 -3 + 59, 1, 12.5 );

setAlphaKey( spep_5 -3 + 10, 1, 42.5 );
setAlphaKey( spep_5 -3 + 12, 1, 85 );
setAlphaKey( spep_5 -3 + 14, 1, 127.5 );
setAlphaKey( spep_5 -3 + 16, 1, 170 );
setAlphaKey( spep_5 -3 + 18, 1, 212.5 );
setAlphaKey( spep_5 -3 + 20, 1, 255 );
setAlphaKey( spep_5 -3 + 59, 1, 255 );

-- ** 音 ** --
--ギャン
SE017 = playSeVer2( spep_5 + 6, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 爆発→終了(136F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --爆発→終了	ef_009
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 136, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 136, finish, 255 );

-- ** 音 ** --
--爆発
SE018 = playSeVer2( spep_6 + 10, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 128 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 126 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --突進   ef_001
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
--突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE002, 1.25, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--画面遷移
SE003 = playSeVer2( spep_0 + 50, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- ショルダータックル(78F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
sattack_f = entryEffectLife( spep_1 + 0, SP_02r, 76, 0x100, -1, 0, 0, 0 );  --ショルダータックル→瞬間移動 ef_002
setEffMoveKey( spep_1 + 0, sattack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, sattack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, sattack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, sattack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, sattack_f, 0 );
setEffRotateKey( spep_1 + 76, sattack_f, 0 );
setEffAlphaKey( spep_1 + 0, sattack_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, sattack_f, 255 );
setEffAlphaKey( spep_1 + 76, sattack_f, 0 );

sattack_b = entryEffectLife( spep_1 + 0, SP_03r, 76, 0x80, -1, 0, 0, 0 );  --ショルダータックル→瞬間移動  ef_003
setEffMoveKey( spep_1 + 0, sattack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, sattack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, sattack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, sattack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, sattack_b, 0 );
setEffRotateKey( spep_1 + 76, sattack_b, 0 );
setEffAlphaKey( spep_1 + 0, sattack_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, sattack_b, 255 );
setEffAlphaKey( spep_1 + 76, sattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 79, 1, 0 );
changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 -3 + 30, 1, 107 );

setMoveKey( spep_1 + 0, 1, 160.5, 24.1 , 0 );
setMoveKey( spep_1 + 1, 1, 141.7, 22.7 , 0 );
setMoveKey( spep_1 + 2, 1, 134, 22.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 128.6, 21.6 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 124.3, 21.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 120.8, 21 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 117.7, 20.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 115.1, 20.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 112.8, 20.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 110.7, 20.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 108.9, 20.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 107.2, 20 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 105.6, 19.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 104.2, 19.8 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 102.8, 19.5 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 110, 38 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 150, 56 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 85.9, 17.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 185.6, 78.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 153.3, 16.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 120.9, 40.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 103.1, 30.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 450.1, 85.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 559.8, 101.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 664.3, 112.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 713.2, 117.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 773.3, 128.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 813.9, 134.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 855.5, 139.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 883.4, 140.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 914.5, 147.7 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 933.4, 146.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 956.7, 153.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 968.7, 151.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 985.8, 157.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 992.1, 154.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 999.9, 155.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 1009.3, 160.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 1008.4, 156.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 1013.4, 160.9 , 0 );
setMoveKey( spep_1 -3 + 79, 1, 1013.4, 160.9 , 0 );

setScaleKey( spep_1 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_1 + 1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 2, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 6, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 8, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 16, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 18, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 20, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 22, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 26, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 29, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 36, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 44, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 46, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 48, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 52, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 56, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 58, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 60, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 62, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 64, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 70, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 72, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 79, 1, 1.8, 1.8 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 79, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 -3 + 79, 1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--タックル
SE004 = playSeVer2( spep_1 + 16, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 28, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE005, 72 );
SE006 = playSeVer2( spep_1 + 28, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE006, 81 );
SE007 = playSeVer2( spep_1 + 28, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE007, 89 );

--瞬間移動
SE008 = playSeVer2( spep_1 + 62, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- 瞬間移動→気弾溜め(148F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_04r, 148, 0x100, -1, 0, 0, 0 );  --瞬間移動→気弾溜め  ef_004
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 148, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 148, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 148, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 148 -1, tame, 255 );
setEffAlphaKey( spep_2 + 148, tame, 0 );

spep_x = spep_2 + 58;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
--瞬間移動
SE009 = playSeVer2( spep_2 + 6, 1109, "", 0, 0, 0, -1);

--気弾溜め
SE010 = playSeVer2( spep_2 + 32, 1226, "",spep_2 + 158, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 32, SE010, 51 );

--顔カットイン
SE011 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE012 = playSeVer2( spep_2 + 64, 1282, "",spep_2 + 158, 0, 6, 0.6);
SE013 = playSeVer2( spep_2 + 64, 1262, "",spep_2 + 158, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 132, 12, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 148;


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
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 気弾発射(102F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_05r, 100, 0x100, -1, 0, 0, 0 );  --気弾発射　    ef_005
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 100, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 100 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 100, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --気弾発射  ef_006
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 100, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 100 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 100, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 83 -2, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setBlendColor( spep_4 -3 + 18, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_4 -3 + 82 -2, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_4 -3 + 83 -2, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_4 + 0, 1, 13.9, 145.6 , 0 );
setMoveKey( spep_4 + 1, 1, 16.8, 148.1 , 0 );
setMoveKey( spep_4 + 2, 1, 19.8, 150.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 22.9, 153.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 26.2, 155.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 29.7, 158.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 33.3, 161.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 37, 164 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 37, 164 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 87.2, 173.5 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 87.2, 173.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 95.2, 222.1 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 95.2, 222.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 127.7, 295.8 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 127.7, 295.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 106.2, 297.7 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 106.2, 297.7 , 0 );
setMoveKey( spep_4 -3 + 26 -2, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_4 -3 + 27 -2, 1, 111.9, 375.6 , 0 );
setMoveKey( spep_4 -3 + 28 -2, 1, 99.1, 351.1 , 0 );
setMoveKey( spep_4 -3 + 30 -2, 1, 100.3, 354.1 , 0 );
setMoveKey( spep_4 -3 + 32 -2, 1, 102.3, 359.1 , 0 );
setMoveKey( spep_4 -3 + 34 -2, 1, 105, 366 , 0 );
setMoveKey( spep_4 -3 + 36 -2, 1, 108.5, 374.9 , 0 );
setMoveKey( spep_4 -3 + 38 -2, 1, 112.8, 385.8 , 0 );
setMoveKey( spep_4 -3 + 40 -2, 1, 117.9, 398.6 , 0 );
setMoveKey( spep_4 -3 + 42 -2, 1, 123.8, 413.5 , 0 );
setMoveKey( spep_4 -3 + 44 -2, 1, 130.5, 430.3 , 0 );
setMoveKey( spep_4 -3 + 46 -2, 1, 137.9, 449.1 , 0 );
setMoveKey( spep_4 -3 + 48 -2, 1, 146.2, 469.9 , 0 );
setMoveKey( spep_4 -3 + 50 -2, 1, 155.2, 492.6 , 0 );
setMoveKey( spep_4 -3 + 52 -2, 1, 164.6, 516.8 , 0 );
setMoveKey( spep_4 -3 + 54 -2, 1, 174.9, 542.9 , 0 );
setMoveKey( spep_4 -3 + 56 -2, 1, 185.9, 571 , 0 );
setMoveKey( spep_4 -3 + 58 -2, 1, 197.7, 601.1 , 0 );
setMoveKey( spep_4 -3 + 60 -2, 1, 210.3, 633.1 , 0 );
setMoveKey( spep_4 -3 + 62 -2, 1, 223.7, 667.2 , 0 );
setMoveKey( spep_4 -3 + 64 -2, 1, 237.9, 703.2 , 0 );
setMoveKey( spep_4 -3 + 66 -2, 1, 252.8, 741.2 , 0 );
setMoveKey( spep_4 -3 + 68 -2, 1, 268.6, 781.2 , 0 );
setMoveKey( spep_4 -3 + 70 -2, 1, 285.1, 823.1 , 0 );
setMoveKey( spep_4 -3 + 72 -2, 1, 302.4, 867.1 , 0 );
setMoveKey( spep_4 -3 + 74 -2, 1, 320.5, 913 , 0 );
setMoveKey( spep_4 -3 + 76 -2, 1, 339.4, 960.9 , 0 );
setMoveKey( spep_4 -3 + 78 -2, 1, 359, 1010.7 , 0 );
setMoveKey( spep_4 -3 + 80 -2, 1, 379.5, 1062.6 , 0 );
setMoveKey( spep_4 -3 + 83 -2, 1, 400.7, 1116.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 1, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 6, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 8, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 12, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 14, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 15, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 16, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 17, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 19, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 20, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 21, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 22, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 23, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 26 -2, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 27 -2, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 28 -2, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 30 -2, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 32 -2, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 34 -2, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 36 -2, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 38 -2, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 40 -2, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 42 -2, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 44 -2, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 46 -2, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 48 -2, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 50 -2, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 52 -2, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 54 -2, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 56 -2, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 58 -2, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 60 -2, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 62 -2, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 64 -2, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 66 -2, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 68 -2, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 70 -2, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 72 -2, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 74 -2, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 76 -2, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 78 -2, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 80 -2, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 83 -2, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -7.8 );
setRotateKey( spep_4 -3 + 14, 1, -7.8 );
setRotateKey( spep_4 -3 + 15, 1, -7.8 );
setRotateKey( spep_4 -3 + 16, 1, -24.5 );
setRotateKey( spep_4 -3 + 17, 1, -24.5 );
setRotateKey( spep_4 -3 + 18, 1, -27.7 );
setRotateKey( spep_4 -3 + 19, 1, -27.7 );
setRotateKey( spep_4 -3 + 20, 1, -30.6 );
setRotateKey( spep_4 -3 + 21, 1, -30.6 );
setRotateKey( spep_4 -3 + 22, 1, -33.1 );
setRotateKey( spep_4 -3 + 23, 1, -33.1 );
setRotateKey( spep_4 -3 + 26 -2, 1, -34.9 );
setRotateKey( spep_4 -3 + 74 -2, 1, -34.9 );
setRotateKey( spep_4 -3 + 76 -2, 1, -34.8 );
setRotateKey( spep_4 -3 + 83 -2, 1, -34.8 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 83 -2, 1, 255 );

-- ** 音 ** --
--気弾発射
SE015 = playSeVer2( spep_4 + 10, 1213, "",spep_4 + 154, 0, 42, -1);
setSeVolumeByWorkId( spep_4 + 10, SE015, 76 );
SE016 = playSeVer2( spep_4 + 10, 1284, "",spep_4 + 154, 0, 42, -1);
setSeVolumeByWorkId( spep_4 + 10, SE016, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;


------------------------------------------------------
-- 奥に向かって吹き飛ぶ敵(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
goaway_f = entryEffectLife( spep_5 + 0, SP_07, 56, 0x100, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵 ef_007
setEffMoveKey( spep_5 + 0, goaway_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, goaway_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, goaway_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_f, 0 );
setEffRotateKey( spep_5 + 56, goaway_f, 0 );
setEffAlphaKey( spep_5 + 0, goaway_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, goaway_f, 255 );
setEffAlphaKey( spep_5 + 56, goaway_f, 0 );

goaway_b = entryEffectLife( spep_5 + 0, SP_08, 56, 0x80, -1, 0, 0, 0 );  --奥に向かって吹き飛ぶ敵  ef_008
setEffMoveKey( spep_5 + 0, goaway_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, goaway_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, goaway_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_b, 0 );
setEffRotateKey( spep_5 + 56, goaway_b, 0 );
setEffAlphaKey( spep_5 + 0, goaway_b, 255 );
setEffAlphaKey( spep_5 + 56 -1, goaway_b, 255 );
setEffAlphaKey( spep_5 + 56, goaway_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 10, 1, 1 );
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 -3 + 10, 1, 5 );

setBlendColor( spep_5 -3 + 10, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_5 -3 + 58, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_5 -3 + 59, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_5 -3 + 10, 1, -70.3, -55.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -55.9, -42.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -65.5, -53.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -59.1, -32.6 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -36.7, -43.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -38.3, -30.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -29.3, -21.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -44.2, -36.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -43.2, -20 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -26.1, -35.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -33.1, -26.3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -24.1, -17.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -39, -32.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -37.9, -15.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -20.9, -31 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -27.8, -22.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -18.8, -13.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -33.7, -28.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -32.7, -11.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -15.6, -26.8 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -22.6, -17.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -13.5, -9.1 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -28.4, -24.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -27.4, -7.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -10.3, -22.6 , 0 );
setMoveKey( spep_5 -3 + 59, 1, -10.3, -22.6 , 0 );

setScaleKey( spep_5 -3 + 10, 1, 4.77, 4.77 );
setScaleKey( spep_5 -3 + 12, 1, 4.33, 4.33 );
setScaleKey( spep_5 -3 + 14, 1, 3.9, 3.9 );
setScaleKey( spep_5 -3 + 16, 1, 3.47, 3.47 );
setScaleKey( spep_5 -3 + 18, 1, 3.03, 3.03 );
setScaleKey( spep_5 -3 + 20, 1, 2.6, 2.6 );
setScaleKey( spep_5 -3 + 22, 1, 2.53, 2.53 );
setScaleKey( spep_5 -3 + 24, 1, 2.46, 2.46 );
setScaleKey( spep_5 -3 + 26, 1, 2.39, 2.39 );
setScaleKey( spep_5 -3 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 30, 1, 2.24, 2.24 );
setScaleKey( spep_5 -3 + 32, 1, 2.17, 2.17 );
setScaleKey( spep_5 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 42, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 50, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 52, 1, 1.46, 1.46 );
setScaleKey( spep_5 -3 + 54, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_5 -3 + 58, 1, 1.24, 1.24 );
setScaleKey( spep_5 -3 + 59, 1, 1.24, 1.24 );

setRotateKey( spep_5 -3 + 10, 1, -12.5 );
setRotateKey( spep_5 -3 + 59, 1, -12.5 );

setAlphaKey( spep_5 -3 + 10, 1, 42.5 );
setAlphaKey( spep_5 -3 + 12, 1, 85 );
setAlphaKey( spep_5 -3 + 14, 1, 127.5 );
setAlphaKey( spep_5 -3 + 16, 1, 170 );
setAlphaKey( spep_5 -3 + 18, 1, 212.5 );
setAlphaKey( spep_5 -3 + 20, 1, 255 );
setAlphaKey( spep_5 -3 + 59, 1, 255 );

-- ** 音 ** --
--ギャン
SE017 = playSeVer2( spep_5 + 6, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 爆発→終了(136F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --爆発→終了 ef_009
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 136, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 136, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 136, finish, 255 );

-- ** 音 ** --
--爆発
SE018 = playSeVer2( spep_6 + 10, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 128 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 126 );


end