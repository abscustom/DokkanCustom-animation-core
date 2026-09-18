--1025830:SSR三星龍&四星龍_氷炎トルネード
--sp_effect_a2_00199

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
SP_01 = 161312; --開始カットイン   ef_001
SP_02 = 161313; --画面手前飛ぶ    ef_002
SP_03 = 161314; --横アングルの格闘→背後から奇襲する三星龍  ef_003
SP_04 = 161315; --横アングルの格闘→背後から奇襲する三星龍  ef_003_back
SP_05 = 161318; --フィニッシュ    ef_004
SP_06 = 161319; --フィニッシュ    ef_004_back

--味方側
SP_01r = 161312; --開始カットイン  ef_001
SP_02r = 161313; --画面手前飛ぶ   ef_002
SP_03r = 161316; --横アングルの格闘→背後から奇襲する三星龍 ef_003
SP_04r = 161317; --横アングルの格闘→背後から奇襲する三星龍 ef_003_back
SP_05r = 161318; --フィニッシュ   ef_004
SP_06r = 161319; --フィニッシュ   ef_004_back


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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開始カットイン (112F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 112, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 112, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 112 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 112 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 112, first_f, 0 );


spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 112;


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
-- 画面手前飛ぶ (66F)
------------------------------------------------------

a = 2;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_2 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66 - a, first_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66 - a, first_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, first_f, 0 );
setEffRotateKey( spep_2 + 66 - a, first_f, 0 );
setEffAlphaKey( spep_2 + 0, first_f, 255 );
setEffAlphaKey( spep_2 + 66 - a -2, first_f, 255 );
setEffAlphaKey( spep_2 + 66 - a -1, first_f, 255 );
setEffAlphaKey( spep_2 + 66 - a, first_f, 0 );

-- ** 音 ** --
--向かっていく
SE004 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 - a, 0, 0, 0, 0, 255 );  --黒　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 32 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);

    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);

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
--瞬間移動
SE006 = playSeVer2( spep_2 + 40, 43, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 40, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE007, 73 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 66 - a;



------------------------------------------------------
-- 横アングルの格闘→背後から奇襲する三星龍 (202F)
------------------------------------------------------
-- ** エフェクト等 ** --
kakuto = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --横アングルの格闘→背後から奇襲する三星龍 ef_002
setEffMoveKey( spep_3 + 0, kakuto, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, kakuto, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakuto, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, kakuto, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakuto, 0 );
setEffRotateKey( spep_3 + 202, kakuto, 0 );
setEffAlphaKey( spep_3 + 0, kakuto, 255 );
setEffAlphaKey( spep_3 + 202 -2, kakuto, 255 );
setEffAlphaKey( spep_3 + 202 -1, kakuto, 255 );
setEffAlphaKey( spep_3 + 202, kakuto, 0 );

kakuto_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --横アングルの格闘→背後から奇襲する三星龍 ef_002_back
setEffMoveKey( spep_3 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakuto_b, 0 );
setEffRotateKey( spep_3 + 202, kakuto_b, 0 );
setEffAlphaKey( spep_3 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_3 + 202 -2, kakuto_b, 255 );
setEffAlphaKey( spep_3 + 202 -1, kakuto_b, 255 );
setEffAlphaKey( spep_3 + 202, kakuto_b, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 87, 1, 0);
setDisp( spep_3 + 161, 1, 1 );
--setDisp( spep_3 + 202, 1, 0);

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 15, 1, 108 );
changeAnime( spep_3 + 25, 1, 106 );
changeAnime( spep_3 + 35, 1, 108 );
changeAnime( spep_3 + 55, 1, 106 );
changeAnime( spep_3 + 65, 1, 108 );
changeAnime( spep_3 + 75, 1, 106 );
changeAnime( spep_3 + 160, 1, 107 );

setMoveKey( spep_3 + 0, 1, 5, 1 , 0 );
setMoveKey( spep_3 + 2, 1, 6.7, 1 , 0 );
setMoveKey( spep_3 + 4, 1, 8.3, 1 , 0 );
setMoveKey( spep_3 + 6, 1, 9.9, 1 , 0 );
setMoveKey( spep_3 + 8, 1, 11.5, 1 , 0 );
setMoveKey( spep_3 + 10, 1, 13.1, 1.1 , 0 );
setMoveKey( spep_3 + 13, 1, 14.7, 1.1 , 0 );
setMoveKey( spep_3 + 14, 1, 14.7, 1.1 , 0 );
setMoveKey( spep_3 + 15, 1, -19.7, 37.2 , 0 );
setMoveKey( spep_3 + 16, 1, -19.7, 37.2 , 0 );
setMoveKey( spep_3 + 17, 1, 55.9, -36.8 , 0 );
setMoveKey( spep_3 + 18, 1, 55.9, -36.8 , 0 );
setMoveKey( spep_3 + 19, 1, 3.5, -28.8 , 0 );
setMoveKey( spep_3 + 20, 1, 3.5, -28.8 , 0 );
setMoveKey( spep_3 + 21, 1, 39.1, 25.2 , 0 );
setMoveKey( spep_3 + 22, 1, 39.1, 25.2 , 0 );
setMoveKey( spep_3 + 23, 1, 12.7, 9.2 , 0 );
setMoveKey( spep_3 + 24, 1, 12.7, 9.2 , 0 );
setMoveKey( spep_3 + 25, 1, 36.3, -16.8 , 0 );
setMoveKey( spep_3 + 26, 1, 36.3, -16.8 , 0 );
setMoveKey( spep_3 + 27, 1, 25.9, 1.2 , 0 );
setMoveKey( spep_3 + 28, 1, 25.9, 1.2 , 0 );
setMoveKey( spep_3 + 29, 1, 27.6, 1.3 , 0 );
setMoveKey( spep_3 + 30, 1, 27.6, 1.3 , 0 );
setMoveKey( spep_3 + 31, 1, 33.6, -3.8 , 0 );
setMoveKey( spep_3 + 32, 1, 33.6, -3.8 , 0 );
setMoveKey( spep_3 + 33, 1, 25.9, 4.5 , 0 );
setMoveKey( spep_3 + 34, 1, 25.9, 4.5 , 0 );
setMoveKey( spep_3 + 35, 1, 37, 5.7 , 0 );
setMoveKey( spep_3 + 36, 1, 37, 5.7 , 0 );
setMoveKey( spep_3 + 37, 1, 36, -0.9 , 0 );
setMoveKey( spep_3 + 38, 1, 36, -0.9 , 0 );
setMoveKey( spep_3 + 39, 1, 40.3, 4 , 0 );
setMoveKey( spep_3 + 40, 1, 40.3, 4 , 0 );
setMoveKey( spep_3 + 41, 1, 50.7, -2.5 , 0 );
setMoveKey( spep_3 + 42, 1, 50.7, -2.5 , 0 );
setMoveKey( spep_3 + 43, 1, 52.2, 4.2 , 0 );
setMoveKey( spep_3 + 44, 1, 52.2, 4.2 , 0 );
setMoveKey( spep_3 + 45, 1, 50.3, -2.1 , 0 );
setMoveKey( spep_3 + 46, 1, 50.3, -2.1 , 0 );
setMoveKey( spep_3 + 47, 1, 54.4, 5.2 , 0 );
setMoveKey( spep_3 + 48, 1, 54.4, 5.2 , 0 );
setMoveKey( spep_3 + 49, 1, 65.6, 6.5 , 0 );
setMoveKey( spep_3 + 50, 1, 65.6, 6.5 , 0 );
setMoveKey( spep_3 + 51, 1, 64.6, -0.2 , 0 );
setMoveKey( spep_3 + 52, 1, 64.6, -0.2 , 0 );
setMoveKey( spep_3 + 53, 1, 68.9, 4.7 , 0 );
setMoveKey( spep_3 + 54, 1, 68.9, 4.7 , 0 );
setMoveKey( spep_3 + 55, 1, 79.4, -1.8 , 0 );
setMoveKey( spep_3 + 56, 1, 79.4, -1.8 , 0 );
setMoveKey( spep_3 + 57, 1, 80.9, 4.8 , 0 );
setMoveKey( spep_3 + 58, 1, 80.9, 4.8 , 0 );
setMoveKey( spep_3 + 59, 1, 79, -1.4 , 0 );
setMoveKey( spep_3 + 60, 1, 79, -1.4 , 0 );
setMoveKey( spep_3 + 61, 1, 83.1, 5.9 , 0 );
setMoveKey( spep_3 + 62, 1, 83.1, 5.9 , 0 );
setMoveKey( spep_3 + 63, 1, 94.3, 7.2 , 0 );
setMoveKey( spep_3 + 64, 1, 94.3, 7.2 , 0 );
setMoveKey( spep_3 + 65, 1, 93.2, 0.5 , 0 );
setMoveKey( spep_3 + 66, 1, 93.2, 0.5 , 0 );
setMoveKey( spep_3 + 67, 1, 97.5, 5.3 , 0 );
setMoveKey( spep_3 + 68, 1, 97.5, 5.3 , 0 );
setMoveKey( spep_3 + 69, 1, 107.9, -1.1 , 0 );
setMoveKey( spep_3 + 70, 1, 107.9, -1.1 , 0 );
setMoveKey( spep_3 + 71, 1, 109.4, 5.5 , 0 );
setMoveKey( spep_3 + 72, 1, 109.4, 5.5 , 0 );
setMoveKey( spep_3 + 73, 1, 107.5, -0.7 , 0 );
setMoveKey( spep_3 + 74, 1, 107.5, -0.7 , 0 );
setMoveKey( spep_3 + 75, 1, 132.6, 25.6 , 0 );
setMoveKey( spep_3 + 76, 1, 132.6, 25.6 , 0 );
setMoveKey( spep_3 + 77, 1, 193.8, 20.8 , 0 );
setMoveKey( spep_3 + 78, 1, 193.8, 20.8 , 0 );
setMoveKey( spep_3 + 79, 1, 254.8, 4.6 , 0 );
setMoveKey( spep_3 + 80, 1, 254.8, 4.6 , 0 );
setMoveKey( spep_3 + 81, 1, 270.2, 36.3 , 0 );
setMoveKey( spep_3 + 82, 1, 270.2, 36.3 , 0 );
setMoveKey( spep_3 + 83, 1, 374.9, -41.7 , 0 );
setMoveKey( spep_3 + 84, 1, 374.9, -41.7 , 0 );
setMoveKey( spep_3 + 85, 1, 333.9, -34.9 , 0 );
setMoveKey( spep_3 + 86, 1, 333.9, -34.9 , 0 );
setMoveKey( spep_3 + 87, 1, 349.9, -4.9 , 0 );
setMoveKey( spep_3 + 161, 1, 780.4, -454.7 , 0 );
setMoveKey( spep_3 + 162, 1, 780.4, -454.7 , 0 );
setMoveKey( spep_3 + 163, 1, 457.3, -313.7 , 0 );
setMoveKey( spep_3 + 164, 1, 457.3, -313.7 , 0 );
setMoveKey( spep_3 + 165, 1, 226.5, -212.9 , 0 );
setMoveKey( spep_3 + 166, 1, 226.5, -212.9 , 0 );
setMoveKey( spep_3 + 167, 1, 88.1, -152.4 , 0 );
setMoveKey( spep_3 + 168, 1, 88.1, -152.4 , 0 );
setMoveKey( spep_3 + 169, 1, 21.6, -179 , 0 );
setMoveKey( spep_3 + 170, 1, 21.6, -179 , 0 );
setMoveKey( spep_3 + 171, 1, 90.7, -50.5 , 0 );
setMoveKey( spep_3 + 172, 1, 90.7, -50.5 , 0 );
setMoveKey( spep_3 + 173, 1, -1.8, -64.2 , 0 );
setMoveKey( spep_3 + 174, 1, -1.8, -64.2 , 0 );
setMoveKey( spep_3 + 175, 1, 80.7, -180.3 , 0 );
setMoveKey( spep_3 + 176, 1, 80.7, -180.3 , 0 );
setMoveKey( spep_3 + 177, 1, 25.3, -113.7 , 0 );
setMoveKey( spep_3 + 178, 1, 25.3, -113.7 , 0 );
setMoveKey( spep_3 + 179, 1, 33.8, -123.8 , 0 );
setMoveKey( spep_3 + 180, 1, 33.8, -123.8 , 0 );
setMoveKey( spep_3 + 181, 1, 28.9, -111.5 , 0 );
setMoveKey( spep_3 + 182, 1, 28.9, -111.5 , 0 );
setMoveKey( spep_3 + 183, 1, 18.7, -117.3 , 0 );
setMoveKey( spep_3 + 184, 1, 18.7, -117.3 , 0 );
setMoveKey( spep_3 + 185, 1, 25.8, -108.8 , 0 );
setMoveKey( spep_3 + 186, 1, 25.8, -108.8 , 0 );
setMoveKey( spep_3 + 187, 1, 17.2, -106.3 , 0 );
setMoveKey( spep_3 + 188, 1, 17.2, -106.3 , 0 );
setMoveKey( spep_3 + 189, 1, 27.3, -118.1 , 0 );
setMoveKey( spep_3 + 190, 1, 27.3, -118.1 , 0 );
setMoveKey( spep_3 + 191, 1, 24.1, -107.6 , 0 );
setMoveKey( spep_3 + 192, 1, 24.1, -107.6 , 0 );
setMoveKey( spep_3 + 193, 1, 26.3, -117.3 , 0 );
setMoveKey( spep_3 + 194, 1, 26.3, -117.3 , 0 );
setMoveKey( spep_3 + 195, 1, 15.2, -114.8 , 0 );
setMoveKey( spep_3 + 196, 1, 15.2, -114.8 , 0 );
setMoveKey( spep_3 + 197, 1, 20.7, -113.4 , 0 );
setMoveKey( spep_3 + 198, 1, 20.7, -113.4 , 0 );
setMoveKey( spep_3 + 199, 1, 20.3, -113 , 0 );
setMoveKey( spep_3 + 200, 1, 20.3, -113 , 0 );
setMoveKey( spep_3 + 201, 1, 19.5, -112.6 , 0 );
--setMoveKey( spep_3 + 202, 1, 19.5, -112.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 13, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 15, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 16, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 24, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 25, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 33, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 34, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 35, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 36, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 53, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 55, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 56, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 63, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 64, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 65, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 66, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 73, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 74, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 75, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 87, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 161, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 162, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 163, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 164, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 165, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 166, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 167, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 168, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 169, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 170, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 171, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 172, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 173, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 174, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 175, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 176, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 177, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 178, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 179, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 180, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 181, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 182, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 200, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 201, 1, 0.57, 0.57 );
--setScaleKey( spep_3 + 202 -1, 1, 0.57, 0.57 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 74, 1, 0 );
setRotateKey( spep_3 + 75, 1, -47 );
setRotateKey( spep_3 + 76, 1, -47 );
setRotateKey( spep_3 + 77, 1, -22 );
setRotateKey( spep_3 + 78, 1, -22 );
setRotateKey( spep_3 + 79, 1, -11.5 );
setRotateKey( spep_3 + 80, 1, -11.5 );
setRotateKey( spep_3 + 81, 1, -4 );
setRotateKey( spep_3 + 82, 1, -4 );
setRotateKey( spep_3 + 83, 1, 0.5 );
setRotateKey( spep_3 + 84, 1, 0.5 );
setRotateKey( spep_3 + 85, 1, 2 );
setRotateKey( spep_3 + 86, 1, 2 );
setRotateKey( spep_3 + 87, 1, 2 );
setRotateKey( spep_3 + 161, 1, 19.1 );
setRotateKey( spep_3 + 162, 1, 19.1 );
setRotateKey( spep_3 + 163, 1, 19.2 );
setRotateKey( spep_3 + 164, 1, 19.2 );
setRotateKey( spep_3 + 174, 1, 19.2 );
setRotateKey( spep_3 + 176, 1, 19.1 );
setRotateKey( spep_3 + 200, 1, 19.1 );
setRotateKey( spep_3 + 201, 1, 19.1 );
--setRotateKey( spep_3 + 202 -1, 1, 19.1 );


-- ** 音 ** --
--ラッシュ
SE008 = playSeVer2( spep_3 + 8, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_3 + 14, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_3 + 24, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 32, 1000, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 54, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 64, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 74, 1009, "", 0, 0, 0, -1);

--気弾溜め
SE016 = playSeVer2( spep_3 + 80, 1305, "",spep_3 + 244, 0, 66, 0.6);

SE019 = playSeVer2( spep_3 + 102, 1276, "", 0, 0, 0, 0.6);
setPitch( spep_3 + 102, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_3 + 102, 1295, "",spep_3 + 168, 0, 14, 0.6);

--瞬間移動
SE017 = playSeVer2( spep_3 + 86, 43, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 86, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE018, 73 );

SE021 = playSeVer2( spep_3 + 142, 1109, "", 0, 0, 0, -1);


--気弾発射
SE022 = playSeVer2( spep_3 + 156, 1145, "",spep_3 + 220, 0, 38, -1);
setSeVolumeByWorkId( spep_3 + 156, SE022, 80 );
SE023 = playSeVer2( spep_3 + 156, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 156, SE023, 68 );

--敵ヒット
SE024 = playSeVer2( spep_3 + 174, 1011, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 212, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 202;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 112, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 112, finish_f, 255 );

bakuhatsu = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );

--[[
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );


shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen_bl, 255 );


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );
]]


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 112, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_4 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_4 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_4 + 0, 1, -122.8 - 232 );
setRotateKey( spep_4 + 2, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 + 112, 1, 729.5 );


-- ** 音 ** --
--爆発
SE025 = playSeVer2( spep_4 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE026 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 110, 0, 0, 0, 0, 232 );  --黒　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 ); -- ダメージ表示フレーム
endPhase( spep_4 + 100 ); -- 終了フレーム




else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始カットイン (112F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 112, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 112, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 112 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 112 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 112, first_f, 0 );


spep_x = spep_0 + 16;

--[[-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 112;


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
-- 画面手前飛ぶ (66F)
------------------------------------------------------

a = 2;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_2 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66 - a, first_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 66 - a, first_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, first_f, 0 );
setEffRotateKey( spep_2 + 66 - a, first_f, 0 );
setEffAlphaKey( spep_2 + 0, first_f, 255 );
setEffAlphaKey( spep_2 + 66 - a -2, first_f, 255 );
setEffAlphaKey( spep_2 + 66 - a -1, first_f, 255 );
setEffAlphaKey( spep_2 + 66 - a, first_f, 0 );

-- ** 音 ** --
--向かっていく
SE004 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 - a, 0, 0, 0, 0, 255 );  --黒　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 32 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);

    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);

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
--瞬間移動
SE006 = playSeVer2( spep_2 + 40, 43, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 40, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE007, 73 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 66 - a;



------------------------------------------------------
-- 横アングルの格闘→背後から奇襲する三星龍 (202F)
------------------------------------------------------
-- ** エフェクト等 ** --
kakuto = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --横アングルの格闘→背後から奇襲する三星龍 ef_002
setEffMoveKey( spep_3 + 0, kakuto, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, kakuto, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakuto, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, kakuto, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakuto, 0 );
setEffRotateKey( spep_3 + 202, kakuto, 0 );
setEffAlphaKey( spep_3 + 0, kakuto, 255 );
setEffAlphaKey( spep_3 + 202 -2, kakuto, 255 );
setEffAlphaKey( spep_3 + 202 -1, kakuto, 255 );
setEffAlphaKey( spep_3 + 202, kakuto, 0 );

kakuto_b = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --横アングルの格闘→背後から奇襲する三星龍 ef_002_back
setEffMoveKey( spep_3 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakuto_b, 0 );
setEffRotateKey( spep_3 + 202, kakuto_b, 0 );
setEffAlphaKey( spep_3 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_3 + 202 -2, kakuto_b, 255 );
setEffAlphaKey( spep_3 + 202 -1, kakuto_b, 255 );
setEffAlphaKey( spep_3 + 202, kakuto_b, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 87, 1, 0);
setDisp( spep_3 + 161, 1, 1 );
--setDisp( spep_3 + 202, 1, 0);

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 15, 1, 108 );
changeAnime( spep_3 + 25, 1, 106 );
changeAnime( spep_3 + 35, 1, 108 );
changeAnime( spep_3 + 55, 1, 106 );
changeAnime( spep_3 + 65, 1, 108 );
changeAnime( spep_3 + 75, 1, 106 );
changeAnime( spep_3 + 160, 1, 107 );

setMoveKey( spep_3 + 0, 1, 5, 1 , 0 );
setMoveKey( spep_3 + 2, 1, 6.7, 1 , 0 );
setMoveKey( spep_3 + 4, 1, 8.3, 1 , 0 );
setMoveKey( spep_3 + 6, 1, 9.9, 1 , 0 );
setMoveKey( spep_3 + 8, 1, 11.5, 1 , 0 );
setMoveKey( spep_3 + 10, 1, 13.1, 1.1 , 0 );
setMoveKey( spep_3 + 13, 1, 14.7, 1.1 , 0 );
setMoveKey( spep_3 + 14, 1, 14.7, 1.1 , 0 );
setMoveKey( spep_3 + 15, 1, -19.7, 37.2 , 0 );
setMoveKey( spep_3 + 16, 1, -19.7, 37.2 , 0 );
setMoveKey( spep_3 + 17, 1, 55.9, -36.8 , 0 );
setMoveKey( spep_3 + 18, 1, 55.9, -36.8 , 0 );
setMoveKey( spep_3 + 19, 1, 3.5, -28.8 , 0 );
setMoveKey( spep_3 + 20, 1, 3.5, -28.8 , 0 );
setMoveKey( spep_3 + 21, 1, 39.1, 25.2 , 0 );
setMoveKey( spep_3 + 22, 1, 39.1, 25.2 , 0 );
setMoveKey( spep_3 + 23, 1, 12.7, 9.2 , 0 );
setMoveKey( spep_3 + 24, 1, 12.7, 9.2 , 0 );
setMoveKey( spep_3 + 25, 1, 36.3, -16.8 , 0 );
setMoveKey( spep_3 + 26, 1, 36.3, -16.8 , 0 );
setMoveKey( spep_3 + 27, 1, 25.9, 1.2 , 0 );
setMoveKey( spep_3 + 28, 1, 25.9, 1.2 , 0 );
setMoveKey( spep_3 + 29, 1, 27.6, 1.3 , 0 );
setMoveKey( spep_3 + 30, 1, 27.6, 1.3 , 0 );
setMoveKey( spep_3 + 31, 1, 33.6, -3.8 , 0 );
setMoveKey( spep_3 + 32, 1, 33.6, -3.8 , 0 );
setMoveKey( spep_3 + 33, 1, 25.9, 4.5 , 0 );
setMoveKey( spep_3 + 34, 1, 25.9, 4.5 , 0 );
setMoveKey( spep_3 + 35, 1, 37, 5.7 , 0 );
setMoveKey( spep_3 + 36, 1, 37, 5.7 , 0 );
setMoveKey( spep_3 + 37, 1, 36, -0.9 , 0 );
setMoveKey( spep_3 + 38, 1, 36, -0.9 , 0 );
setMoveKey( spep_3 + 39, 1, 40.3, 4 , 0 );
setMoveKey( spep_3 + 40, 1, 40.3, 4 , 0 );
setMoveKey( spep_3 + 41, 1, 50.7, -2.5 , 0 );
setMoveKey( spep_3 + 42, 1, 50.7, -2.5 , 0 );
setMoveKey( spep_3 + 43, 1, 52.2, 4.2 , 0 );
setMoveKey( spep_3 + 44, 1, 52.2, 4.2 , 0 );
setMoveKey( spep_3 + 45, 1, 50.3, -2.1 , 0 );
setMoveKey( spep_3 + 46, 1, 50.3, -2.1 , 0 );
setMoveKey( spep_3 + 47, 1, 54.4, 5.2 , 0 );
setMoveKey( spep_3 + 48, 1, 54.4, 5.2 , 0 );
setMoveKey( spep_3 + 49, 1, 65.6, 6.5 , 0 );
setMoveKey( spep_3 + 50, 1, 65.6, 6.5 , 0 );
setMoveKey( spep_3 + 51, 1, 64.6, -0.2 , 0 );
setMoveKey( spep_3 + 52, 1, 64.6, -0.2 , 0 );
setMoveKey( spep_3 + 53, 1, 68.9, 4.7 , 0 );
setMoveKey( spep_3 + 54, 1, 68.9, 4.7 , 0 );
setMoveKey( spep_3 + 55, 1, 79.4, -1.8 , 0 );
setMoveKey( spep_3 + 56, 1, 79.4, -1.8 , 0 );
setMoveKey( spep_3 + 57, 1, 80.9, 4.8 , 0 );
setMoveKey( spep_3 + 58, 1, 80.9, 4.8 , 0 );
setMoveKey( spep_3 + 59, 1, 79, -1.4 , 0 );
setMoveKey( spep_3 + 60, 1, 79, -1.4 , 0 );
setMoveKey( spep_3 + 61, 1, 83.1, 5.9 , 0 );
setMoveKey( spep_3 + 62, 1, 83.1, 5.9 , 0 );
setMoveKey( spep_3 + 63, 1, 94.3, 7.2 , 0 );
setMoveKey( spep_3 + 64, 1, 94.3, 7.2 , 0 );
setMoveKey( spep_3 + 65, 1, 93.2, 0.5 , 0 );
setMoveKey( spep_3 + 66, 1, 93.2, 0.5 , 0 );
setMoveKey( spep_3 + 67, 1, 97.5, 5.3 , 0 );
setMoveKey( spep_3 + 68, 1, 97.5, 5.3 , 0 );
setMoveKey( spep_3 + 69, 1, 107.9, -1.1 , 0 );
setMoveKey( spep_3 + 70, 1, 107.9, -1.1 , 0 );
setMoveKey( spep_3 + 71, 1, 109.4, 5.5 , 0 );
setMoveKey( spep_3 + 72, 1, 109.4, 5.5 , 0 );
setMoveKey( spep_3 + 73, 1, 107.5, -0.7 , 0 );
setMoveKey( spep_3 + 74, 1, 107.5, -0.7 , 0 );
setMoveKey( spep_3 + 75, 1, 132.6, 25.6 , 0 );
setMoveKey( spep_3 + 76, 1, 132.6, 25.6 , 0 );
setMoveKey( spep_3 + 77, 1, 193.8, 20.8 , 0 );
setMoveKey( spep_3 + 78, 1, 193.8, 20.8 , 0 );
setMoveKey( spep_3 + 79, 1, 254.8, 4.6 , 0 );
setMoveKey( spep_3 + 80, 1, 254.8, 4.6 , 0 );
setMoveKey( spep_3 + 81, 1, 270.2, 36.3 , 0 );
setMoveKey( spep_3 + 82, 1, 270.2, 36.3 , 0 );
setMoveKey( spep_3 + 83, 1, 374.9, -41.7 , 0 );
setMoveKey( spep_3 + 84, 1, 374.9, -41.7 , 0 );
setMoveKey( spep_3 + 85, 1, 333.9, -34.9 , 0 );
setMoveKey( spep_3 + 86, 1, 333.9, -34.9 , 0 );
setMoveKey( spep_3 + 87, 1, 349.9, -4.9 , 0 );
setMoveKey( spep_3 + 161, 1, 780.4, -454.7 , 0 );
setMoveKey( spep_3 + 162, 1, 780.4, -454.7 , 0 );
setMoveKey( spep_3 + 163, 1, 457.3, -313.7 , 0 );
setMoveKey( spep_3 + 164, 1, 457.3, -313.7 , 0 );
setMoveKey( spep_3 + 165, 1, 226.5, -212.9 , 0 );
setMoveKey( spep_3 + 166, 1, 226.5, -212.9 , 0 );
setMoveKey( spep_3 + 167, 1, 88.1, -152.4 , 0 );
setMoveKey( spep_3 + 168, 1, 88.1, -152.4 , 0 );
setMoveKey( spep_3 + 169, 1, 21.6, -179 , 0 );
setMoveKey( spep_3 + 170, 1, 21.6, -179 , 0 );
setMoveKey( spep_3 + 171, 1, 90.7, -50.5 , 0 );
setMoveKey( spep_3 + 172, 1, 90.7, -50.5 , 0 );
setMoveKey( spep_3 + 173, 1, -1.8, -64.2 , 0 );
setMoveKey( spep_3 + 174, 1, -1.8, -64.2 , 0 );
setMoveKey( spep_3 + 175, 1, 80.7, -180.3 , 0 );
setMoveKey( spep_3 + 176, 1, 80.7, -180.3 , 0 );
setMoveKey( spep_3 + 177, 1, 25.3, -113.7 , 0 );
setMoveKey( spep_3 + 178, 1, 25.3, -113.7 , 0 );
setMoveKey( spep_3 + 179, 1, 33.8, -123.8 , 0 );
setMoveKey( spep_3 + 180, 1, 33.8, -123.8 , 0 );
setMoveKey( spep_3 + 181, 1, 28.9, -111.5 , 0 );
setMoveKey( spep_3 + 182, 1, 28.9, -111.5 , 0 );
setMoveKey( spep_3 + 183, 1, 18.7, -117.3 , 0 );
setMoveKey( spep_3 + 184, 1, 18.7, -117.3 , 0 );
setMoveKey( spep_3 + 185, 1, 25.8, -108.8 , 0 );
setMoveKey( spep_3 + 186, 1, 25.8, -108.8 , 0 );
setMoveKey( spep_3 + 187, 1, 17.2, -106.3 , 0 );
setMoveKey( spep_3 + 188, 1, 17.2, -106.3 , 0 );
setMoveKey( spep_3 + 189, 1, 27.3, -118.1 , 0 );
setMoveKey( spep_3 + 190, 1, 27.3, -118.1 , 0 );
setMoveKey( spep_3 + 191, 1, 24.1, -107.6 , 0 );
setMoveKey( spep_3 + 192, 1, 24.1, -107.6 , 0 );
setMoveKey( spep_3 + 193, 1, 26.3, -117.3 , 0 );
setMoveKey( spep_3 + 194, 1, 26.3, -117.3 , 0 );
setMoveKey( spep_3 + 195, 1, 15.2, -114.8 , 0 );
setMoveKey( spep_3 + 196, 1, 15.2, -114.8 , 0 );
setMoveKey( spep_3 + 197, 1, 20.7, -113.4 , 0 );
setMoveKey( spep_3 + 198, 1, 20.7, -113.4 , 0 );
setMoveKey( spep_3 + 199, 1, 20.3, -113 , 0 );
setMoveKey( spep_3 + 200, 1, 20.3, -113 , 0 );
setMoveKey( spep_3 + 201, 1, 19.5, -112.6 , 0 );
--setMoveKey( spep_3 + 202, 1, 19.5, -112.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 13, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 15, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 16, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 24, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 25, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 33, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 34, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 35, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 36, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 53, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 55, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 56, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 63, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 64, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 65, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 66, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 73, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 74, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 75, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 87, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 161, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 162, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 163, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 164, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 165, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 166, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 167, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 168, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 169, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 170, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 171, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 172, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 173, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 174, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 175, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 176, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 177, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 178, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 179, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 180, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 181, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 182, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 200, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 201, 1, 0.57, 0.57 );
--setScaleKey( spep_3 + 202 -1, 1, 0.57, 0.57 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 74, 1, 0 );
setRotateKey( spep_3 + 75, 1, -47 );
setRotateKey( spep_3 + 76, 1, -47 );
setRotateKey( spep_3 + 77, 1, -22 );
setRotateKey( spep_3 + 78, 1, -22 );
setRotateKey( spep_3 + 79, 1, -11.5 );
setRotateKey( spep_3 + 80, 1, -11.5 );
setRotateKey( spep_3 + 81, 1, -4 );
setRotateKey( spep_3 + 82, 1, -4 );
setRotateKey( spep_3 + 83, 1, 0.5 );
setRotateKey( spep_3 + 84, 1, 0.5 );
setRotateKey( spep_3 + 85, 1, 2 );
setRotateKey( spep_3 + 86, 1, 2 );
setRotateKey( spep_3 + 87, 1, 2 );
setRotateKey( spep_3 + 161, 1, 19.1 );
setRotateKey( spep_3 + 162, 1, 19.1 );
setRotateKey( spep_3 + 163, 1, 19.2 );
setRotateKey( spep_3 + 164, 1, 19.2 );
setRotateKey( spep_3 + 174, 1, 19.2 );
setRotateKey( spep_3 + 176, 1, 19.1 );
setRotateKey( spep_3 + 200, 1, 19.1 );
setRotateKey( spep_3 + 201, 1, 19.1 );
--setRotateKey( spep_3 + 202 -1, 1, 19.1 );


-- ** 音 ** --
--ラッシュ
SE008 = playSeVer2( spep_3 + 8, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_3 + 14, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_3 + 24, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 32, 1000, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 54, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 64, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 74, 1009, "", 0, 0, 0, -1);

--気弾溜め
SE016 = playSeVer2( spep_3 + 80, 1305, "",spep_3 + 244, 0, 66, 0.6);

SE019 = playSeVer2( spep_3 + 102, 1276, "", 0, 0, 0, 0.6);
setPitch( spep_3 + 102, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_3 + 102, 1295, "",spep_3 + 168, 0, 14, 0.6);

--瞬間移動
SE017 = playSeVer2( spep_3 + 86, 43, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 86, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE018, 73 );

SE021 = playSeVer2( spep_3 + 142, 1109, "", 0, 0, 0, -1);


--気弾発射
SE022 = playSeVer2( spep_3 + 156, 1145, "",spep_3 + 220, 0, 38, -1);
setSeVolumeByWorkId( spep_3 + 156, SE022, 80 );
SE023 = playSeVer2( spep_3 + 156, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 156, SE023, 68 );

--敵ヒット
SE024 = playSeVer2( spep_3 + 174, 1011, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 212, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 202;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 112, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 112, finish_f, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, -1.0, 1.0 );
setEffScaleKey( spep_4 + 112, bakuhatsu, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );

--[[
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen_bl, 255 );


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );
]]

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 112, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_4 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_4 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_4 + 0, 1, -122.8 - 232 );
setRotateKey( spep_4 + 2, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE025 = playSeVer2( spep_4 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE026 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 110, 0, 0, 0, 0, 232 );  --黒　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 ); -- ダメージ表示フレーム
endPhase( spep_4 + 100 ); -- 終了フレーム




end