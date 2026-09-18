--1022191:LR_孫悟空(天使)&ベジータ(天使)_必殺技：ライバル同士の共闘
--sp_effect_b4_00190
--sp2210

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

--エフェクト(味方)
SP_01 = 157581; --冒頭 ef_001
SP_02 = 157582; --カットイン後〜ラスト：手前 ef_002
SP_03 = 157583; --カットイン後〜ラスト：奥 ef_003

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
-- 冒頭(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 124, 0x100, -1, 0, 0, 0 );  --冒頭 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 124, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 124, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 124, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 124 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 124, first_f, 0 );

spep_x = spep_0 + 4;
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
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.6 );

--顔カットイン
SE002 = playSe( spep_0 + 8, 1018 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036,"",0.6 );
SE004 = playSe( spep_0 + 48, 1036,"",0.6 );
SE005 = playSe( spep_0 + 72, 1036,"",0.6 );

--二人向かっていく
SE006 = playSe( spep_0 + 82, 1182 );
stopSe( spep_0 +124 + 0, SE006, 6 );
SE007 = playSe( spep_0 + 82, 9 );
stopSe( spep_0 +124 + 0, SE007, 6 );
SE008 = playSe( spep_0 + 84, 1117 );
stopSe( spep_0 +124 + 0, SE008, 6 );

--オーラ
SE009 = playSe( spep_0 + 96, 1036,"",0.6 );
SE999 = playSe( spep_0 + 120, 1036,"",0.6 );
stopSe( spep_0 +124 + 0, SE999, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 124;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE0X1 = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE0X1 = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE0X1 = playSe( spep_1, SE_05);
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

--二人向かってくる
SE011 = playSe( spep_1 + 86, 1182 );
SE012 = playSe( spep_1 + 86, 1314 );
stopSe( spep_1 +94 + 56, SE012, 6 );
SE013 = playSe( spep_1 + 86, 1117 );
stopSe( spep_1 +94 + 56, SE013, 6 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- カットイン後〜ラスト(894F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --カットイン後〜ラスト：手前 ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 894, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 894, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 894, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 894, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --カットイン後〜ラスト：奥 ef_003
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 894, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 894, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 894, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 894, finish_b, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 18, SE0X1, 0);
    stopSe( SP_dodge - 18, SE011, 0);
    stopSe( SP_dodge - 18, SE012, 0);
    stopSe( SP_dodge - 18, SE013, 0);

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
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 184, 1, 0 );
setDisp( spep_2 -3 + 258, 1, 1 );
setDisp( spep_2 -3 + 308, 1, 0 );
setDisp( spep_2 -3 + 360, 1, 1 );
setDisp( spep_2 -3 + 428, 1, 0 );
setDisp( spep_2 -3 + 556, 1, 1 );
setDisp( spep_2 -3 + 586, 1, 0 );
setDisp( spep_2 -3 + 638, 1, 1 );
setDisp( spep_2 -3 + 672, 1, 0 );
setDisp( spep_2 -3 + 694, 1, 1 );
setDisp( spep_2 -3 + 714, 1, 0 );
changeAnime( spep_2 -3 + 42, 1, 117 );
changeAnime( spep_2 -3 + 62, 1, 105 );
changeAnime( spep_2 -3 + 108, 1, 108 );
changeAnime( spep_2 -3 + 118, 1, 106 );
changeAnime( spep_2 -3 + 258, 1, 107 );
changeAnime( spep_2 -3 + 266, 1, 5 );
changeAnime( spep_2 -3 + 360, 1, 106 );
changeAnime( spep_2 -3 + 556, 1, 5 );
changeAnime( spep_2 -3 + 638, 1, 107 );
changeAnime( spep_2 -3 + 694, 1, 108 );

setBlendColor( spep_2 -3 + 694, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 -3 + 696, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 -3 + 698, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 -3 + 700, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 713, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 714, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_2 -3 + 42, 1, 11.1, 27.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 11.1, 19.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 11, 10.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 11, -1.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 10.9, -15 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 10.9, -30.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 10.8, -48.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 10.7, -68.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 10.5, -94.4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 12.3, -124.5 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 12.3, -124.5 , 0 );

a1 = 30;
b1 = 100;
setMoveKey( spep_2 -3 + 62, 1, 142.4 -a1, -35.9 -b1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 154.2 -a1, 7.3 -b1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 125.3 -a1, 38.3 -b1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 144.7 -a1, 46 -b1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 130 -a1, 46.5 -b1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 135.9 -a1, 81.2 -b1 , 0 );

setMoveKey( spep_2 -3 + 74, 1, 30.8, 142.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -11.5, 197.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -54.7, 223.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -51.2, 147.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -64.1, 63.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -67.7, -14.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -68.2, -28.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -68.7, -42.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -69.2, -57 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -69.7, -71.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -70.2, -85.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -70.7, -99.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -71.2, -113.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -71.7, -128.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -72.2, -142.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -72.7, -156.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -73.2, -170.7 , 0 );
setMoveKey( spep_2 -3 + 107, 1, -73.2, -170.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 322, 465.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 191.5, 291.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 93.5, 160.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 28.3, 73.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -4.4, 30.4 , 0 );
setMoveKey( spep_2 -3 + 117, 1, -4.4, 30.4 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 117.5, 73.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 133, 85.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 115.8, 97.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 135.3, 87.5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 122.9, 77 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 137.6, 89 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 124.4, 89 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 140, 90.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 130.7, 80.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 142.3, 92.2 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 125.8, 85.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 144.6, 93.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 145.7, 94.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 146.9, 95.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 148, 96.1 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 149.2, 96.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 150.3, 97.7 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 151.5, 98.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 152.6, 99.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 153.8, 100 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 155, 100.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 156.1, 101.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 159.2, 102.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 162.2, 103.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 165.3, 104.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 168.4, 105.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 171.4, 106.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 174.5, 107.9 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 177.6, 109 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 180.6, 110 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 183.7, 111.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 186.8, 112.1 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 189.8, 113.2 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 189.8, 113.2 , 0 );
--

a2 = 50;
setMoveKey( spep_2 -3 + 258, 1, -68.5 +a2, 11 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -65.8 +a2, 13 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -63.2 +a2, 15.1 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -60.5 +a2, 17.1 , 0 );
setMoveKey( spep_2 -3 + 265, 1, -60.5 +a2, 17.1 , 0 );

b2 = 150;
setMoveKey( spep_2 -3 + 266, 1, 0, -95.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 6.5, -64.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -20.9, -34 +b2 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -12, -43.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -33.1, -54.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -21.9, -32.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -38.5, -37.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -26.4, -27.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -38.9, -36.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -30.6, -23.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -50.2, -7.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 288, 1, -34.5, -18.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -43.6, -35.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -38.1, -14.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -54.3, -20.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -41.6, -11.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -50.4, -10.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -44.7, -7.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -46.2, -6 +b2 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -47.6, -4.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -49, -2.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -49, -2.7 +b2 , 0 );
--
setMoveKey( spep_2 -3 + 360, 1, -20.2, 46.5 , 0 );
setMoveKey( spep_2 -3 + 362, 1, -25, 45.5 , 0 );
setMoveKey( spep_2 -3 + 364, 1, -29.8, 44.5 , 0 );
setMoveKey( spep_2 -3 + 366, 1, -34.6, 43.5 , 0 );
setMoveKey( spep_2 -3 + 368, 1, -39.4, 42.6 , 0 );
setMoveKey( spep_2 -3 + 370, 1, -44.2, 41.6 , 0 );
setMoveKey( spep_2 -3 + 372, 1, -25.8, 45.1 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 3.7, 28.4 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 28.2, 28.3 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 23.1, 26 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 51.6, 4.4 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 50.5, -19.6 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 68.7, -13.1 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 55.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 71.3, -16.6 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 58.9, -25.4 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 73.7, -19.8 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 54.1, -9.3 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 76, -22.8 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 63.4, -26.6 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 78, -25.5 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 68.6, -37.2 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 79.9, -27.9 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 66.4, -29.9 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 81.6, -30.2 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 82.4, -31.2 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 83.2, -32.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 83.8, -33.2 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 84.5, -34.1 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 85.1, -34.8 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 85.6, -35.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 86.2, -36.3 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 86.7, -36.9 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 87.2, -37.5 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 87.2, -37.5 , 0 );
--
setMoveKey( spep_2 -3 + 556, 1, -100.9, 102.2 , 0 );
setMoveKey( spep_2 -3 + 558, 1, -102, 102.6 , 0 );
setMoveKey( spep_2 -3 + 560, 1, -103, 103.1 , 0 );
setMoveKey( spep_2 -3 + 562, 1, -104, 103.5 , 0 );
setMoveKey( spep_2 -3 + 564, 1, -105, 103.9 , 0 );
setMoveKey( spep_2 -3 + 566, 1, -106, 104.4 , 0 );
setMoveKey( spep_2 -3 + 568, 1, -107, 104.8 , 0 );
setMoveKey( spep_2 -3 + 570, 1, -108.1, 105.3 , 0 );
setMoveKey( spep_2 -3 + 572, 1, -109.1, 105.7 , 0 );
setMoveKey( spep_2 -3 + 574, 1, -110.1, 106.1 , 0 );
setMoveKey( spep_2 -3 + 576, 1, -111.1, 106.6 , 0 );
setMoveKey( spep_2 -3 + 578, 1, -112.1, 107 , 0 );
setMoveKey( spep_2 -3 + 580, 1, -113.1, 107.4 , 0 );
setMoveKey( spep_2 -3 + 582, 1, -114.2, 107.9 , 0 );
setMoveKey( spep_2 -3 + 584, 1, -115.2, 108.3 , 0 );
setMoveKey( spep_2 -3 + 586, 1, -115.2, 108.3 , 0 );
--
setMoveKey( spep_2 -3 + 638, 1, -32.7, 163.8 , 0 );
setMoveKey( spep_2 -3 + 640, 1, -32.2, 163.3 , 0 );
setMoveKey( spep_2 -3 + 642, 1, -31.7, 162.8 , 0 );
setMoveKey( spep_2 -3 + 644, 1, -31.2, 162.3 , 0 );
setMoveKey( spep_2 -3 + 646, 1, -30.7, 161.8 , 0 );
setMoveKey( spep_2 -3 + 648, 1, -30.2, 161.3 , 0 );
setMoveKey( spep_2 -3 + 650, 1, -29.7, 160.8 , 0 );
setMoveKey( spep_2 -3 + 652, 1, -29.2, 160.3 , 0 );
setMoveKey( spep_2 -3 + 654, 1, -28.7, 159.8 , 0 );
setMoveKey( spep_2 -3 + 656, 1, -28.2, 159.3 , 0 );
setMoveKey( spep_2 -3 + 658, 1, -27.7, 158.8 , 0 );
setMoveKey( spep_2 -3 + 660, 1, -27.2, 158.3 , 0 );
setMoveKey( spep_2 -3 + 662, 1, -26.7, 157.8 , 0 );
setMoveKey( spep_2 -3 + 664, 1, -26.2, 157.3 , 0 );
setMoveKey( spep_2 -3 + 666, 1, -25.7, 156.8 , 0 );
setMoveKey( spep_2 -3 + 668, 1, -25.2, 156.3 , 0 );
setMoveKey( spep_2 -3 + 670, 1, -24.7, 155.8 , 0 );
setMoveKey( spep_2 -3 + 672, 1, -24.7, 155.8 , 0 );
--
setMoveKey( spep_2 -3 + 694, 1, 186.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 700, 1, 186.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 702, 1, 187.4, -20.5 , 0 );
setMoveKey( spep_2 -3 + 704, 1, 188.2, -18.9 , 0 );
setMoveKey( spep_2 -3 + 706, 1, 189, -17.3 , 0 );
setMoveKey( spep_2 -3 + 708, 1, 189.8, -15.7 , 0 );
setMoveKey( spep_2 -3 + 710, 1, 190.6, -14.1 , 0 );
setMoveKey( spep_2 -3 + 712, 1, 191.4, -12.5 , 0 );
setMoveKey( spep_2 -3 + 714, 1, 191.4, -12.5 , 0 );


-- ** scsle ** --
s1 = 1.2;
setScaleKey( spep_2 -3 + 42, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 44, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_2 -3 + 46, 1, 1.8 +s1, 1.8 +s1 );
setScaleKey( spep_2 -3 + 48, 1, 2.16 +s1, 2.16 +s1 );
setScaleKey( spep_2 -3 + 50, 1, 2.59 +s1, 2.59 +s1 );
setScaleKey( spep_2 -3 + 52, 1, 3.09 +s1, 3.09 +s1 );
setScaleKey( spep_2 -3 + 54, 1, 3.65 +s1, 3.65 +s1 );
setScaleKey( spep_2 -3 + 56, 1, 4.27 +s1, 4.27 +s1 );
setScaleKey( spep_2 -3 + 58, 1, 5.08 +s1, 5.08 +s1 );
setScaleKey( spep_2 -3 + 60, 1, 5.98 +s1, 5.98 +s1 );
setScaleKey( spep_2 -3 + 61, 1, 5.98 +s1, 5.98 +s1 );

s2 = 1.0;
setScaleKey( spep_2 -3 + 62, 1, 5.64 +s2, 5.64 +s2 );
setScaleKey( spep_2 -3 + 64, 1, 5.38 +s2, 5.38 +s2 );
setScaleKey( spep_2 -3 + 66, 1, 5.13 +s2, 5.13 +s2 );
setScaleKey( spep_2 -3 + 68, 1, 4.89 +s2, 4.89 +s2 );
setScaleKey( spep_2 -3 + 70, 1, 4.66 +s2, 4.66 +s2 );
setScaleKey( spep_2 -3 + 72, 1, 4.44 +s2, 4.44 +s2 );
setScaleKey( spep_2 -3 + 74, 1, 2.84 +0.5, 2.84 +0.5 );
setScaleKey( spep_2 -3 + 76, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 80, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 82, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 86, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 88, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 90, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 92, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 94, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 96, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 98, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 100, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 102, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 104, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 106, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 107, 1, 0.33, 0.33 );

s3 = 0.5;
setScaleKey( spep_2 -3 + 108, 1, 1.86 +s3, 1.86 +s3 );
setScaleKey( spep_2 -3 + 117, 1, 1.86 +s3, 1.86 +s3 );

s4 = 0.8;
setScaleKey( spep_2 -3 + 118, 1, 1.83 +s4, 1.83 +s4 );
setScaleKey( spep_2 -3 + 184, 1, 1.83 +s4, 1.83 +s4 );

s5 = 0.1;
setScaleKey( spep_2 -3 + 258, 1, 1.48 +s5, 1.48 +s5 );
setScaleKey( spep_2 -3 + 260, 1, 1.49 +s5, 1.49 +s5 );
setScaleKey( spep_2 -3 + 262, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_2 -3 + 264, 1, 1.51 +s5, 1.51 +s5 );
setScaleKey( spep_2 -3 + 265, 1, 1.51 +s5, 1.51 +s5 );

s6 =1.4;
setScaleKey( spep_2 -3 + 266, 1, 3.78 +s6, 3.78 +s6 );
setScaleKey( spep_2 -3 + 268, 1, 3.69 +s6, 3.69 +s6 );
setScaleKey( spep_2 -3 + 270, 1, 3.6 +s6, 3.6 +s6 );
setScaleKey( spep_2 -3 + 272, 1, 3.53 +s6, 3.53 +s6 );
setScaleKey( spep_2 -3 + 274, 1, 3.46 +s6, 3.46 +s6 );
setScaleKey( spep_2 -3 + 276, 1, 3.43 +s6, 3.43 +s6 );
setScaleKey( spep_2 -3 + 278, 1, 3.41 +s6, 3.41 +s6 );
setScaleKey( spep_2 -3 + 280, 1, 3.38 +s6, 3.38 +s6 );
setScaleKey( spep_2 -3 + 282, 1, 3.35 +s6, 3.35 +s6 );
setScaleKey( spep_2 -3 + 284, 1, 3.33 +s6, 3.33 +s6 );
setScaleKey( spep_2 -3 + 286, 1, 3.3 +s6, 3.3 +s6 );
setScaleKey( spep_2 -3 + 288, 1, 3.28 +s6, 3.28 +s6 );
setScaleKey( spep_2 -3 + 290, 1, 3.26 +s6, 3.26 +s6 );
setScaleKey( spep_2 -3 + 292, 1, 3.23 +s6, 3.23 +s6 );
setScaleKey( spep_2 -3 + 294, 1, 3.21 +s6, 3.21 +s6 );
setScaleKey( spep_2 -3 + 296, 1, 3.19 +s6, 3.19 +s6 );
setScaleKey( spep_2 -3 + 298, 1, 3.17 +s6, 3.17 +s6 );
setScaleKey( spep_2 -3 + 300, 1, 3.15 +s6, 3.15 +s6 );
setScaleKey( spep_2 -3 + 302, 1, 3.13 +s6, 3.13 +s6 );
setScaleKey( spep_2 -3 + 304, 1, 3.12 +s6, 3.12 +s6 );
setScaleKey( spep_2 -3 + 306, 1, 3.1 +s6, 3.1 +s6 );
setScaleKey( spep_2 -3 + 308, 1, 3.1 +s6, 3.1 +s6 );

s7 = 0.3;
setScaleKey( spep_2 -3 + 360, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 380, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 382, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 408, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 410, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 412, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 414, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 416, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 426, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 428, 1, 1.83 +s7, 1.83 +s7 );

s8 = 0.2;
setScaleKey( spep_2 -3 + 556, 1, 1.76 +s8, 1.76 +s8 );
setScaleKey( spep_2 -3 + 558, 1, 1.75 +s8, 1.75 +s8 );
setScaleKey( spep_2 -3 + 560, 1, 1.73 +s8, 1.73 +s8 );
setScaleKey( spep_2 -3 + 562, 1, 1.72 +s8, 1.72 +s8 );
setScaleKey( spep_2 -3 + 564, 1, 1.71 +s8, 1.71 +s8 );
setScaleKey( spep_2 -3 + 566, 1, 1.7 +s8, 1.7 +s8 );
setScaleKey( spep_2 -3 + 568, 1, 1.69 +s8, 1.69 +s8 );
setScaleKey( spep_2 -3 + 570, 1, 1.68 +s8, 1.68 +s8 );
setScaleKey( spep_2 -3 + 572, 1, 1.66 +s8, 1.66 +s8 );
setScaleKey( spep_2 -3 + 574, 1, 1.65 +s8, 1.65 +s8 );
setScaleKey( spep_2 -3 + 576, 1, 1.64 +s8, 1.64 +s8 );
setScaleKey( spep_2 -3 + 578, 1, 1.63 +s8, 1.63 +s8 );
setScaleKey( spep_2 -3 + 580, 1, 1.62 +s8, 1.62 +s8 );
setScaleKey( spep_2 -3 + 582, 1, 1.61 +s8, 1.61 +s8 );
setScaleKey( spep_2 -3 + 584, 1, 1.59 +s8, 1.59 +s8 );
setScaleKey( spep_2 -3 + 586, 1, 1.59 +s8, 1.59 +s8 );

s9 = 0.2;
setScaleKey( spep_2 -3 + 638, 1, 0.96 +s9, 0.96 +s9 );
setScaleKey( spep_2 -3 + 640, 1, 0.96 +s9, 0.96 +s9 );
setScaleKey( spep_2 -3 + 642, 1, 0.97 +s9, 0.97 +s9 );
setScaleKey( spep_2 -3 + 650, 1, 0.97 +s9, 0.97 +s9 );
setScaleKey( spep_2 -3 + 652, 1, 0.98 +s9, 0.98 +s9 );
setScaleKey( spep_2 -3 + 660, 1, 0.98 +s9, 0.98 +s9 );
setScaleKey( spep_2 -3 + 662, 1, 0.99 +s9, 0.99 +s9 );
setScaleKey( spep_2 -3 + 670, 1, 0.99 +s9, 0.99 +s9 );
setScaleKey( spep_2 -3 + 672, 1, 0.99 +s9, 0.99 +s9 );

s10 = 0.4;
setScaleKey( spep_2 -3 + 694, 1, 1.8 +s10, 1.8 +s10 );
setScaleKey( spep_2 -3 + 714, 1, 1.8 +s10, 1.8 +s10 );


-- ** rotate ** --
setRotateKey( spep_2 -3 + 42, 1, 0 );
setRotateKey( spep_2 -3 + 61, 1, 0 );
setRotateKey( spep_2 -3 + 62, 1, -33.9 );
setRotateKey( spep_2 -3 + 64, 1, -35 );
setRotateKey( spep_2 -3 + 66, 1, -36.1 );
setRotateKey( spep_2 -3 + 68, 1, -37.1 );
setRotateKey( spep_2 -3 + 70, 1, -38.1 );
setRotateKey( spep_2 -3 + 72, 1, -39 );
setRotateKey( spep_2 -3 + 74, 1, -64.2 );
setRotateKey( spep_2 -3 + 76, 1, -81.4 );
setRotateKey( spep_2 -3 + 78, 1, -90.7 );
setRotateKey( spep_2 -3 + 80, 1, -109.2 );
setRotateKey( spep_2 -3 + 82, 1, -128.7 );
setRotateKey( spep_2 -3 + 84, 1, -149 );
setRotateKey( spep_2 -3 + 86, 1, -152 );
setRotateKey( spep_2 -3 + 88, 1, -155.1 );
setRotateKey( spep_2 -3 + 90, 1, -158.1 );
setRotateKey( spep_2 -3 + 92, 1, -161.2 );
setRotateKey( spep_2 -3 + 94, 1, -164.3 );
setRotateKey( spep_2 -3 + 96, 1, -167.3 );
setRotateKey( spep_2 -3 + 98, 1, -170.4 );
setRotateKey( spep_2 -3 + 100, 1, -173.5 );
setRotateKey( spep_2 -3 + 102, 1, -176.5 );
setRotateKey( spep_2 -3 + 104, 1, -179.6 );
setRotateKey( spep_2 -3 + 106, 1, -182.7 );
setRotateKey( spep_2 -3 + 107, 1, -182.7 );
setRotateKey( spep_2 -3 + 108, 1, 160.3 );
setRotateKey( spep_2 -3 + 110, 1, 159.1 );
setRotateKey( spep_2 -3 + 112, 1, 158.2 );
setRotateKey( spep_2 -3 + 114, 1, 157.6 );
setRotateKey( spep_2 -3 + 116, 1, 157.3 );
setRotateKey( spep_2 -3 + 117, 1, 157.3 );
setRotateKey( spep_2 -3 + 118, 1, 104.3 );
setRotateKey( spep_2 -3 + 120, 1, 104.5 );
setRotateKey( spep_2 -3 + 122, 1, 104.8 );
setRotateKey( spep_2 -3 + 124, 1, 105.1 );
setRotateKey( spep_2 -3 + 126, 1, 105.3 );
setRotateKey( spep_2 -3 + 128, 1, 105.6 );
setRotateKey( spep_2 -3 + 130, 1, 105.9 );
setRotateKey( spep_2 -3 + 132, 1, 106.1 );
setRotateKey( spep_2 -3 + 134, 1, 106.4 );
setRotateKey( spep_2 -3 + 136, 1, 106.6 );
setRotateKey( spep_2 -3 + 138, 1, 106.9 );
setRotateKey( spep_2 -3 + 140, 1, 107.2 );
setRotateKey( spep_2 -3 + 142, 1, 107.4 );
setRotateKey( spep_2 -3 + 144, 1, 107.7 );
setRotateKey( spep_2 -3 + 146, 1, 108 );
setRotateKey( spep_2 -3 + 148, 1, 108.2 );
setRotateKey( spep_2 -3 + 150, 1, 108.5 );
setRotateKey( spep_2 -3 + 152, 1, 108.7 );
setRotateKey( spep_2 -3 + 154, 1, 109 );
setRotateKey( spep_2 -3 + 156, 1, 109.3 );
setRotateKey( spep_2 -3 + 158, 1, 109.5 );
setRotateKey( spep_2 -3 + 160, 1, 109.8 );
setRotateKey( spep_2 -3 + 162, 1, 110 );
setRotateKey( spep_2 -3 + 164, 1, 110.3 );
setRotateKey( spep_2 -3 + 166, 1, 110.6 );
setRotateKey( spep_2 -3 + 168, 1, 110.8 );
setRotateKey( spep_2 -3 + 170, 1, 111.1 );
setRotateKey( spep_2 -3 + 172, 1, 111.4 );
setRotateKey( spep_2 -3 + 174, 1, 111.6 );
setRotateKey( spep_2 -3 + 176, 1, 111.9 );
setRotateKey( spep_2 -3 + 178, 1, 112.1 );
setRotateKey( spep_2 -3 + 180, 1, 112.4 );
setRotateKey( spep_2 -3 + 182, 1, 112.7 );
setRotateKey( spep_2 -3 + 184, 1, 112.7 );
--
setRotateKey( spep_2 -3 + 258, 1, 49.5 );
setRotateKey( spep_2 -3 + 260, 1, 49.1 );
setRotateKey( spep_2 -3 + 262, 1, 48.7 );
setRotateKey( spep_2 -3 + 264, 1, 48.3 );
setRotateKey( spep_2 -3 + 265, 1, 48.3 );
setRotateKey( spep_2 -3 + 266, 1, -158.1 );
setRotateKey( spep_2 -3 + 268, 1, -158.8 );
setRotateKey( spep_2 -3 + 270, 1, -159.5 );
setRotateKey( spep_2 -3 + 272, 1, -160.1 );
setRotateKey( spep_2 -3 + 274, 1, -160.6 );
setRotateKey( spep_2 -3 + 276, 1, -160.9 );
setRotateKey( spep_2 -3 + 278, 1, -161.2 );
setRotateKey( spep_2 -3 + 280, 1, -161.5 );
setRotateKey( spep_2 -3 + 282, 1, -161.8 );
setRotateKey( spep_2 -3 + 284, 1, -162 );
setRotateKey( spep_2 -3 + 286, 1, -162.3 );
setRotateKey( spep_2 -3 + 288, 1, -162.6 );
setRotateKey( spep_2 -3 + 290, 1, -162.8 );
setRotateKey( spep_2 -3 + 292, 1, -163.1 );
setRotateKey( spep_2 -3 + 294, 1, -163.3 );
setRotateKey( spep_2 -3 + 296, 1, -163.5 );
setRotateKey( spep_2 -3 + 298, 1, -163.7 );
setRotateKey( spep_2 -3 + 300, 1, -163.9 );
setRotateKey( spep_2 -3 + 302, 1, -164.1 );
setRotateKey( spep_2 -3 + 304, 1, -164.3 );
setRotateKey( spep_2 -3 + 306, 1, -164.5 );
setRotateKey( spep_2 -3 + 308, 1, -164.5 );
--
setRotateKey( spep_2 -3 + 360, 1, -108 );
setRotateKey( spep_2 -3 + 362, 1, -108.7 );
setRotateKey( spep_2 -3 + 364, 1, -109.5 );
setRotateKey( spep_2 -3 + 366, 1, -110.3 );
setRotateKey( spep_2 -3 + 368, 1, -111.1 );
setRotateKey( spep_2 -3 + 370, 1, -111.9 );
setRotateKey( spep_2 -3 + 372, 1, -47.4 );
setRotateKey( spep_2 -3 + 374, 1, -6 );
setRotateKey( spep_2 -3 + 376, 1, 2.4 );
setRotateKey( spep_2 -3 + 378, 1, 9.8 );
setRotateKey( spep_2 -3 + 380, 1, 16.3 );
setRotateKey( spep_2 -3 + 382, 1, 21.9 );
setRotateKey( spep_2 -3 + 384, 1, 26.5 );
setRotateKey( spep_2 -3 + 386, 1, 27.2 );
setRotateKey( spep_2 -3 + 388, 1, 27.7 );
setRotateKey( spep_2 -3 + 390, 1, 28.3 );
setRotateKey( spep_2 -3 + 392, 1, 28.9 );
setRotateKey( spep_2 -3 + 394, 1, 29.4 );
setRotateKey( spep_2 -3 + 396, 1, 29.9 );
setRotateKey( spep_2 -3 + 398, 1, 30.4 );
setRotateKey( spep_2 -3 + 400, 1, 30.9 );
setRotateKey( spep_2 -3 + 402, 1, 31.3 );
setRotateKey( spep_2 -3 + 404, 1, 31.7 );
setRotateKey( spep_2 -3 + 406, 1, 32.1 );
setRotateKey( spep_2 -3 + 408, 1, 32.5 );
setRotateKey( spep_2 -3 + 410, 1, 32.9 );
setRotateKey( spep_2 -3 + 412, 1, 33.2 );
setRotateKey( spep_2 -3 + 414, 1, 33.5 );
setRotateKey( spep_2 -3 + 416, 1, 33.8 );
setRotateKey( spep_2 -3 + 418, 1, 34.1 );
setRotateKey( spep_2 -3 + 420, 1, 34.4 );
setRotateKey( spep_2 -3 + 422, 1, 34.6 );
setRotateKey( spep_2 -3 + 424, 1, 34.8 );
setRotateKey( spep_2 -3 + 426, 1, 35 );
setRotateKey( spep_2 -3 + 428, 1, 35 );
--
setRotateKey( spep_2 -3 + 556, 1, -11.1 );
setRotateKey( spep_2 -3 + 586, 1, -11.1 );
--
setRotateKey( spep_2 -3 + 638, 1, 16.6 );
setRotateKey( spep_2 -3 + 672, 1, 16.6 );
--
setRotateKey( spep_2 -3 + 694, 1, -11.4 );
setRotateKey( spep_2 -3 + 714, 1, -11.4 );

-- ** 音 ** --
--二人向かってくる
SE014 = playSe( spep_2 + 12, 44 );

--二人パンチ
SE015 = playSe( spep_2 + 48, 1189 );
SE016 = playSe( spep_2 + 52, 1187 );
SE017 = playSe( spep_2 + 52, 1110 );
SE018 = playSe( spep_2 + 52, 1068 );
setSeVolumeByWorkId( spep_2 + 52, SE018, 89 );

--悟空瞬間移動
SE019 = playSe( spep_2 + 96, 1109 );

--悟空膝蹴り
SE020 = playSe( spep_2 + 114, 1187 );
setSeVolumeByWorkId( spep_2 + 114, SE020, 85 );
stopSe( spep_2 + 128, SE020, 12 );
SE021 = playSe( spep_2 + 114, 1190 );
setSeVolumeByWorkId( spep_2 + 114, SE021, 87 );
SE022 = playSe( spep_2 + 114, 1153 );
setSeVolumeByWorkId( spep_2 + 114, SE022, 82 );

--悟空宙返り
SE023 = playSe( spep_2 + 176, 63 );
setSeVolumeByWorkId( spep_2 + 176, SE023, 48 );
setSeVolumeByWorkId( spep_2 + 177, SE023, 96 );
setSeVolumeByWorkId( spep_2 + 178, SE023, 143 );
stopSe( spep_2 + 196, SE023, 14 );
setStartTimeMs( SE023,  667 );

--悟空瞬間移動
SE024 = playSe( spep_2 + 148, 1109 );

--悟空宙返り
SE025 = playSe( spep_2 + 176, 1003 );
setSeVolumeByWorkId( spep_2 + 176, SE025, 93 );

--悟空振りかぶり
SE026 = playSe( spep_2 + 202, 1004 );
setSeVolumeByWorkId( spep_2 + 202, SE026, 120 );
setPitch( spep_2 + 202, SE026, 300 );
setTimeStretch( SE026, 1.2, 40, 5 );
SE027 = playSe( spep_2 + 212, 1116 );
stopSe( spep_2 + 246, SE027, 10 );
SE028 = playSe( spep_2 + 212, 1072 );

--キック
SE029 = playSe( spep_2 + 248, 1189 );
SE030 = playSe( spep_2 + 254, 1120 );
setSeVolumeByWorkId( spep_2 + 254, SE030, 120 );

--ベジータ飛んでくる
SE031 = playSe( spep_2 + 304, 1207 );
setSeVolumeByWorkId( spep_2 + 304, SE031, 12 );
setSeVolumeByWorkId( spep_2 + 306, SE031, 25 );
setSeVolumeByWorkId( spep_2 + 308, SE031, 38 );
setSeVolumeByWorkId( spep_2 + 310, SE031, 50 );
setSeVolumeByWorkId( spep_2 + 312, SE031, 62 );
setSeVolumeByWorkId( spep_2 + 314, SE031, 75 );
setSeVolumeByWorkId( spep_2 + 316, SE031, 88 );
setSeVolumeByWorkId( spep_2 + 318, SE031, 100 );
setStartTimeMs( SE031,  150 );
SE032 = playSe( spep_2 + 302, 1182 );
setSeVolumeByWorkId( spep_2 + 302, SE032, 77 );
SE033 = playSe( spep_2 + 302, 1117 );
SE034 = playSe( spep_2 + 312, 1026 );
setPitch( spep_2 + 312, SE034, -200 );
setTimeStretch( SE034, 0.87, 10, 1 );

--ベジータキック
SE035 = playSe( spep_2 + 358, 1189 );
SE036 = playSe( spep_2 + 364, 1001 );
setSeVolumeByWorkId( spep_2 + 372, SE036, 85 );
SE037 = playSe( spep_2 + 366, 1010 );
SE038 = playSe( spep_2 + 366, 1153 );
setSeVolumeByWorkId( spep_2 + 366, SE038, 75 );
SE039 = playSe( spep_2 + 370, 1192 );
setSeVolumeByWorkId( spep_2 + 370, SE039, 335 );
setTimeStretch( SE039, 1.24, 10, 1 );
SE040 = playSe( spep_2 + 370, 1110 );
setSeVolumeByWorkId( spep_2 + 370, SE040, 92 );

--悟空踏ん張る
SE041 = playSe( spep_2 + 430, 1108 );
setSeVolumeByWorkId( spep_2 + 430, SE041, 180 );
SE042 = playSe( spep_2 + 430, 1192 );
setSeVolumeByWorkId( spep_2 + 430, SE042, 138 );
setTimeStretch( SE042, 0.67, 10, 1 );
SE043 = playSe( spep_2 + 430, 1006 );
setSeVolumeByWorkId( spep_2 + 430, SE043, 81 );

--悟空瞬間移動
SE044 = playSe( spep_2 + 450, 1109 );

--悟空気弾溜め
SE045 = playSe( spep_2 + 468, 1191 );
setSeVolumeByWorkId( spep_2 + 468, SE045, 93 );
stopSe( spep_2 + 500, SE045, 12 );
SE046 = playSe( spep_2 + 468, 1262 );
setSeVolumeByWorkId( spep_2 + 468, SE046, 120 );
stopSe( spep_2 + 500, SE046, 12 );
setPitch( spep_2 + 468, SE046, 200 );
setTimeStretch( SE046, 1.13, 10, 1 );
SE047 = playSe( spep_2 + 588, 1204,"",0.5 );
setSeVolumeByWorkId( spep_2 + 588, SE047, 12 );
setSeVolumeByWorkId( spep_2 + 590, SE047, 25 );
setSeVolumeByWorkId( spep_2 + 592, SE047, 38 );
setSeVolumeByWorkId( spep_2 + 594, SE047, 50 );
setSeVolumeByWorkId( spep_2 + 596, SE047, 62 );
setSeVolumeByWorkId( spep_2 + 598, SE047, 85 );
setSeVolumeByWorkId( spep_2 + 600, SE047, 100 );
setSeVolumeByWorkId( spep_2 + 602, SE047, 140 );
setStartTimeMs( SE047,  1917 );

--ベジータ気弾溜め
SE048 = playSe( spep_2 + 504, 1276,"",0.5 );
setSeVolumeByWorkId( spep_2 + 504, SE048, 20 );
setSeVolumeByWorkId( spep_2 + 505, SE048, 40 );
setSeVolumeByWorkId( spep_2 + 506, SE048, 80 );
setSeVolumeByWorkId( spep_2 + 507, SE048, 100 );
setSeVolumeByWorkId( spep_2 + 508, SE048, 120 );
stopSe( spep_2 + 538, SE048, 10 );
setStartTimeMs( SE048,  217 );
setPitch( spep_2 + 504, SE048, -200 );
setTimeStretch( SE048, 0.87, 10, 1 );
SE049 = playSe( spep_2 + 502, 1116 );
stopSe( spep_2 + 526, SE049, 12 );
SE050 = playSe( spep_2 + 502, 44 );
setSeVolumeByWorkId( spep_2 + 502, SE050, 120 );
setPitch( spep_2 + 502, SE050, -400 );
setTimeStretch( SE050, 0.73, 40, 5 );

--ベジータ気弾投げ
SE051 = playSe( spep_2 + 532, 1145,"",0.6 );
setSeVolumeByWorkId( spep_2 + 532, SE051, 45 );
setSeVolumeByWorkId( spep_2 + 533, SE051, 90 );
setSeVolumeByWorkId( spep_2 + 534, SE051, 135 );
setSeVolumeByWorkId( spep_2 + 538, SE051, 145 );
setStartTimeMs( SE051,  350 );
setPitch( spep_2 + 532, SE051, 300 );
setTimeStretch( SE051, 1.2, 40, 5 );
SE052 = playSe( spep_2 + 530, 1155,"",0.9 );
setSeVolumeByWorkId( spep_2 + 534, SE052, 145 );
setPitch( spep_2 + 530, SE052, 200 );
setTimeStretch( SE052, 1.13, 40, 5 );

--悟空気弾溜め
SE053 = playSe( spep_2 + 574, 1262 );
setPitch( spep_2 + 574, SE053, 200 );
setTimeStretch( SE053, 1.13, 40, 5 );
SE054 = playSe( spep_2 + 574, 1191 );
setSeVolumeByWorkId( spep_2 + 574, SE054, 110 );
stopSe( spep_2 + 618, SE054, 18 );

--悟空気弾振りかぶり
SE055 = playSe( spep_2 + 606, 1116 );
stopSe( spep_2 + 632, SE055, 32 );
SE056 = playSe( spep_2 + 616, 1004 );
SE057 = playSe( spep_2 + 616, 1278 );
stopSe( spep_2 + 664, SE057, 38 );
setPitch( spep_2 + 616, SE057, -400 );
setTimeStretch( SE057, 0.73, 10, 1 );

--悟空気弾投げ
SE058 = playSe( spep_2 + 686, 1021,"",0.5 );
setSeVolumeByWorkId( spep_2 + 686, SE058, 28 );
setSeVolumeByWorkId( spep_2 + 687, SE058, 56 );
setSeVolumeByWorkId( spep_2 + 688, SE058, 84 );
setSeVolumeByWorkId( spep_2 + 689, SE058, 112 );
setSeVolumeByWorkId( spep_2 + 690, SE058, 163 );
setStartTimeMs( SE058,  367 );
SE059 = playSe( spep_2 + 686, 1145,"",0.5 );
setSeVolumeByWorkId( spep_2 + 686, SE059, 18 );
setSeVolumeByWorkId( spep_2 + 687, SE059, 36 );
setSeVolumeByWorkId( spep_2 + 688, SE059, 54 );
setSeVolumeByWorkId( spep_2 + 689, SE059, 74 );
setSeVolumeByWorkId( spep_2 + 690, SE059, 112 );
setStartTimeMs( SE059,  367 );
setPitch( spep_2 + 686, SE059, 200 );
setTimeStretch( SE059, 1.13, 40, 5 );
SE060 = playSe( spep_2 + 688, 1110 );
setSeVolumeByWorkId( spep_2 + 688, SE060, 79 );
SE061 = playSe( spep_2 + 688, 1146 );
setSeVolumeByWorkId( spep_2 + 688, SE061, 97 );
stopSe( spep_2 + 716, SE061, 28 );

--爆発
SE062 = playSe( spep_2 + 702, 1023 );
SE063 = playSe( spep_2 + 702, 1024 );
setSeVolumeByWorkId( spep_2 + 702, SE063, 78 );

--悟空飛び上がる
SE064 = playSe( spep_2 + 740, 1117 );
setSeVolumeByWorkId( spep_2 + 740, SE064, 120 );
stopSe( spep_2 + 764, SE064, 18 );
SE065 = playSe( spep_2 + 740, 44 );
setSeVolumeByWorkId( spep_2 + 740, SE065, 95 );

--ラスト爆発
SE066 = playSe( spep_2 + 786, 1067 );
setSeVolumeByWorkId( spep_2 + 786, SE066, 80 );
SE067 = playSe( spep_2 + 786, 1159 );
setSeVolumeByWorkId( spep_2 + 786, SE067, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 894 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 786 );
endPhase( spep_2 + 884 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 124, 0x100, -1, 0, 0, 0 );  --冒頭 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 124, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 124, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 124, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 124 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 124, first_f, 0 );

spep_x = spep_0 + 4;
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
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.6 );

--顔カットイン
SE002 = playSe( spep_0 + 8, 1018 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036,"",0.6 );
SE004 = playSe( spep_0 + 48, 1036,"",0.6 );
SE005 = playSe( spep_0 + 72, 1036,"",0.6 );

--二人向かっていく
SE006 = playSe( spep_0 + 82, 1182 );
stopSe( spep_0 +124 + 0, SE006, 6 );
SE007 = playSe( spep_0 + 82, 9 );
stopSe( spep_0 +124 + 0, SE007, 6 );
SE008 = playSe( spep_0 + 84, 1117 );
stopSe( spep_0 +124 + 0, SE008, 6 );

--オーラ
SE009 = playSe( spep_0 + 96, 1036,"",0.6 );
SE999 = playSe( spep_0 + 120, 1036,"",0.6 );
stopSe( spep_0 +124 + 0, SE999, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 124;


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
SE0X1 = playSe( spep_1 + 0, SE_05 );

--二人向かってくる
SE011 = playSe( spep_1 + 86, 1182 );
SE012 = playSe( spep_1 + 86, 1314 );
stopSe( spep_1 +94 + 56, SE012, 6 );
SE013 = playSe( spep_1 + 86, 1117 );
stopSe( spep_1 +94 + 56, SE013, 6 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- カットイン後〜ラスト(894F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --カットイン後〜ラスト：手前 ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 894, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 894, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 894, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 894, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --カットイン後〜ラスト：奥 ef_003
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 894, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 894, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 894, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 894, finish_b, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 18, SE0X1, 0);
    stopSe( SP_dodge - 18, SE011, 0);
    stopSe( SP_dodge - 18, SE012, 0);
    stopSe( SP_dodge - 18, SE013, 0);

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
setDisp( spep_2 -3 + 42, 1, 1 );
setDisp( spep_2 -3 + 184, 1, 0 );
setDisp( spep_2 -3 + 258, 1, 1 );
setDisp( spep_2 -3 + 308, 1, 0 );
setDisp( spep_2 -3 + 360, 1, 1 );
setDisp( spep_2 -3 + 428, 1, 0 );
setDisp( spep_2 -3 + 556, 1, 1 );
setDisp( spep_2 -3 + 586, 1, 0 );
setDisp( spep_2 -3 + 638, 1, 1 );
setDisp( spep_2 -3 + 672, 1, 0 );
setDisp( spep_2 -3 + 694, 1, 1 );
setDisp( spep_2 -3 + 714, 1, 0 );
changeAnime( spep_2 -3 + 42, 1, 17 );
changeAnime( spep_2 -3 + 62, 1, 5 );
changeAnime( spep_2 -3 + 108, 1, 8 );
changeAnime( spep_2 -3 + 118, 1, 6 );
changeAnime( spep_2 -3 + 258, 1, 7 );
changeAnime( spep_2 -3 + 266, 1, 105 );
changeAnime( spep_2 -3 + 360, 1, 6 );
changeAnime( spep_2 -3 + 556, 1, 105 );
changeAnime( spep_2 -3 + 638, 1, 7 );
changeAnime( spep_2 -3 + 694, 1, 8 );

setBlendColor( spep_2 -3 + 694, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 -3 + 696, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 -3 + 698, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 -3 + 700, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 713, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 714, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_2 -3 + 42, 1, -11.1, 27.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -11.1, 19.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -11, 10.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -11, -1.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -10.9, -15 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -10.9, -30.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -10.8, -48.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -10.7, -68.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -10.5, -94.4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -12.3, -124.5 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -12.3, -124.5 , 0 );

a1 = 30;
b1 = 100;
setMoveKey( spep_2 -3 + 62, 1, -142.4 +a1, -35.9 -b1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -154.2 +a1, 7.3 -b1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -125.3 +a1, 38.3 -b1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -144.7 +a1, 46 -b1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -130 +a1, 46.5 -b1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -135.9 +a1, 81.2 -b1 , 0 );

setMoveKey( spep_2 -3 + 74, 1, -30.8, 142.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 11.5, 197.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 54.7, 223.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 51.2, 147.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 64.1, 63.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 67.7, -14.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 68.2, -28.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 68.7, -42.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 69.2, -57 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 69.7, -71.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 70.2, -85.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 70.7, -99.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 71.2, -113.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 71.7, -128.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 72.2, -142.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 72.7, -156.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 73.2, -170.7 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 73.2, -170.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -322, 465.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -191.5, 291.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -93.5, 160.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -28.3, 73.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 4.4, 30.4 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 4.4, 30.4 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -117.5, 73.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -133, 85.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -115.8, 97.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -135.3, 87.5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -122.9, 77 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -137.6, 89 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -124.4, 89 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -140, 90.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -130.7, 80.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -142.3, 92.2 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -125.8, 85.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -144.6, 93.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -145.7, 94.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -146.9, 95.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -148, 96.1 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -149.2, 96.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -150.3, 97.7 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -151.5, 98.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -152.6, 99.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -153.8, 100 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -155, 100.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -156.1, 101.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -159.2, 102.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -162.2, 103.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -165.3, 104.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -168.4, 105.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -171.4, 106.9 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -174.5, 107.9 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -177.6, 109 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -180.6, 110 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -183.7, 111.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -186.8, 112.1 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -189.8, 113.2 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -189.8, 113.2 , 0 );
--

a2 = 50;
setMoveKey( spep_2 -3 + 258, 1, 68.5 -a2, 11 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 65.8 -a2, 13 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 63.2 -a2, 15.1 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 60.5 -a2, 17.1 , 0 );
setMoveKey( spep_2 -3 + 265, 1, 60.5 -a2, 17.1 , 0 );

b2 = 150;
setMoveKey( spep_2 -3 + 266, 1, -0, -95.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 268, 1, -6.5, -64.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 20.9, -34 +b2 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 12, -43.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 33.1, -54.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 21.9, -32.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 38.5, -37.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 26.4, -27.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 38.9, -36.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 30.6, -23.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 50.2, -7.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 34.5, -18.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 43.6, -35.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 38.1, -14.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 54.3, -20.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 41.6, -11.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 50.4, -10.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 44.7, -7.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 46.2, -6 +b2 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 47.6, -4.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 49, -2.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 49, -2.7 +b2 , 0 );
--
setMoveKey( spep_2 -3 + 360, 1, 20.2, 46.5 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 25, 45.5 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 29.8, 44.5 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 34.6, 43.5 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 39.4, 42.6 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 44.2, 41.6 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 25.8, 45.1 , 0 );
setMoveKey( spep_2 -3 + 374, 1, -3.7, 28.4 , 0 );
setMoveKey( spep_2 -3 + 376, 1, -28.2, 28.3 , 0 );
setMoveKey( spep_2 -3 + 378, 1, -23.1, 26 , 0 );
setMoveKey( spep_2 -3 + 380, 1, -51.6, 4.4 , 0 );
setMoveKey( spep_2 -3 + 382, 1, -50.5, -19.6 , 0 );
setMoveKey( spep_2 -3 + 384, 1, -68.7, -13.1 , 0 );
setMoveKey( spep_2 -3 + 386, 1, -55.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 388, 1, -71.3, -16.6 , 0 );
setMoveKey( spep_2 -3 + 390, 1, -58.9, -25.4 , 0 );
setMoveKey( spep_2 -3 + 392, 1, -73.7, -19.8 , 0 );
setMoveKey( spep_2 -3 + 394, 1, -54.1, -9.3 , 0 );
setMoveKey( spep_2 -3 + 396, 1, -76, -22.8 , 0 );
setMoveKey( spep_2 -3 + 398, 1, -63.4, -26.6 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -78, -25.5 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -68.6, -37.2 , 0 );
setMoveKey( spep_2 -3 + 404, 1, -79.9, -27.9 , 0 );
setMoveKey( spep_2 -3 + 406, 1, -66.4, -29.9 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -81.6, -30.2 , 0 );
setMoveKey( spep_2 -3 + 410, 1, -82.4, -31.2 , 0 );
setMoveKey( spep_2 -3 + 412, 1, -83.2, -32.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, -83.8, -33.2 , 0 );
setMoveKey( spep_2 -3 + 416, 1, -84.5, -34.1 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -85.1, -34.8 , 0 );
setMoveKey( spep_2 -3 + 420, 1, -85.6, -35.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, -86.2, -36.3 , 0 );
setMoveKey( spep_2 -3 + 424, 1, -86.7, -36.9 , 0 );
setMoveKey( spep_2 -3 + 426, 1, -87.2, -37.5 , 0 );
setMoveKey( spep_2 -3 + 428, 1, -87.2, -37.5 , 0 );
--
setMoveKey( spep_2 -3 + 556, 1, 100.9, 102.2 , 0 );
setMoveKey( spep_2 -3 + 558, 1, 102, 102.6 , 0 );
setMoveKey( spep_2 -3 + 560, 1, 103, 103.1 , 0 );
setMoveKey( spep_2 -3 + 562, 1, 104, 103.5 , 0 );
setMoveKey( spep_2 -3 + 564, 1, 105, 103.9 , 0 );
setMoveKey( spep_2 -3 + 566, 1, 106, 104.4 , 0 );
setMoveKey( spep_2 -3 + 568, 1, 107, 104.8 , 0 );
setMoveKey( spep_2 -3 + 570, 1, 108.1, 105.3 , 0 );
setMoveKey( spep_2 -3 + 572, 1, 109.1, 105.7 , 0 );
setMoveKey( spep_2 -3 + 574, 1, 110.1, 106.1 , 0 );
setMoveKey( spep_2 -3 + 576, 1, 111.1, 106.6 , 0 );
setMoveKey( spep_2 -3 + 578, 1, 112.1, 107 , 0 );
setMoveKey( spep_2 -3 + 580, 1, 113.1, 107.4 , 0 );
setMoveKey( spep_2 -3 + 582, 1, 114.2, 107.9 , 0 );
setMoveKey( spep_2 -3 + 584, 1, 115.2, 108.3 , 0 );
setMoveKey( spep_2 -3 + 586, 1, 115.2, 108.3 , 0 );
--
setMoveKey( spep_2 -3 + 638, 1, 32.7, 163.8 , 0 );
setMoveKey( spep_2 -3 + 640, 1, 32.2, 163.3 , 0 );
setMoveKey( spep_2 -3 + 642, 1, 31.7, 162.8 , 0 );
setMoveKey( spep_2 -3 + 644, 1, 31.2, 162.3 , 0 );
setMoveKey( spep_2 -3 + 646, 1, 30.7, 161.8 , 0 );
setMoveKey( spep_2 -3 + 648, 1, 30.2, 161.3 , 0 );
setMoveKey( spep_2 -3 + 650, 1, 29.7, 160.8 , 0 );
setMoveKey( spep_2 -3 + 652, 1, 29.2, 160.3 , 0 );
setMoveKey( spep_2 -3 + 654, 1, 28.7, 159.8 , 0 );
setMoveKey( spep_2 -3 + 656, 1, 28.2, 159.3 , 0 );
setMoveKey( spep_2 -3 + 658, 1, 27.7, 158.8 , 0 );
setMoveKey( spep_2 -3 + 660, 1, 27.2, 158.3 , 0 );
setMoveKey( spep_2 -3 + 662, 1, 26.7, 157.8 , 0 );
setMoveKey( spep_2 -3 + 664, 1, 26.2, 157.3 , 0 );
setMoveKey( spep_2 -3 + 666, 1, 25.7, 156.8 , 0 );
setMoveKey( spep_2 -3 + 668, 1, 25.2, 156.3 , 0 );
setMoveKey( spep_2 -3 + 670, 1, 24.7, 155.8 , 0 );
setMoveKey( spep_2 -3 + 672, 1, 24.7, 155.8 , 0 );
--
setMoveKey( spep_2 -3 + 694, 1, -186.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 700, 1, -186.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 702, 1, -187.4, -20.5 , 0 );
setMoveKey( spep_2 -3 + 704, 1, -188.2, -18.9 , 0 );
setMoveKey( spep_2 -3 + 706, 1, -189, -17.3 , 0 );
setMoveKey( spep_2 -3 + 708, 1, -189.8, -15.7 , 0 );
setMoveKey( spep_2 -3 + 710, 1, -190.6, -14.1 , 0 );
setMoveKey( spep_2 -3 + 712, 1, -191.4, -12.5 , 0 );
setMoveKey( spep_2 -3 + 714, 1, -191.4, -12.5 , 0 );


-- ** scsle ** --
s1 = 1.2;
setScaleKey( spep_2 -3 + 42, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 44, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_2 -3 + 46, 1, 1.8 +s1, 1.8 +s1 );
setScaleKey( spep_2 -3 + 48, 1, 2.16 +s1, 2.16 +s1 );
setScaleKey( spep_2 -3 + 50, 1, 2.59 +s1, 2.59 +s1 );
setScaleKey( spep_2 -3 + 52, 1, 3.09 +s1, 3.09 +s1 );
setScaleKey( spep_2 -3 + 54, 1, 3.65 +s1, 3.65 +s1 );
setScaleKey( spep_2 -3 + 56, 1, 4.27 +s1, 4.27 +s1 );
setScaleKey( spep_2 -3 + 58, 1, 5.08 +s1, 5.08 +s1 );
setScaleKey( spep_2 -3 + 60, 1, 5.98 +s1, 5.98 +s1 );
setScaleKey( spep_2 -3 + 61, 1, 5.98 +s1, 5.98 +s1 );

s2 = 1.0;
setScaleKey( spep_2 -3 + 62, 1, 5.64 +s2, 5.64 +s2 );
setScaleKey( spep_2 -3 + 64, 1, 5.38 +s2, 5.38 +s2 );
setScaleKey( spep_2 -3 + 66, 1, 5.13 +s2, 5.13 +s2 );
setScaleKey( spep_2 -3 + 68, 1, 4.89 +s2, 4.89 +s2 );
setScaleKey( spep_2 -3 + 70, 1, 4.66 +s2, 4.66 +s2 );
setScaleKey( spep_2 -3 + 72, 1, 4.44 +s2, 4.44 +s2 );
setScaleKey( spep_2 -3 + 74, 1, 2.84 +0.5, 2.84 +0.5 );
setScaleKey( spep_2 -3 + 76, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 80, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 82, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 86, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 88, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 90, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 92, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 94, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 96, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 98, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 100, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 102, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 104, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 106, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 107, 1, 0.33, 0.33 );

s3 = 0.5;
setScaleKey( spep_2 -3 + 108, 1, 1.86 +s3, 1.86 +s3 );
setScaleKey( spep_2 -3 + 117, 1, 1.86 +s3, 1.86 +s3 );

s4 = 0.8;
setScaleKey( spep_2 -3 + 118, 1, 1.83 +s4, 1.83 +s4 );
setScaleKey( spep_2 -3 + 184, 1, 1.83 +s4, 1.83 +s4 );

s5 = 0.1;
setScaleKey( spep_2 -3 + 258, 1, 1.48 +s5, 1.48 +s5 );
setScaleKey( spep_2 -3 + 260, 1, 1.49 +s5, 1.49 +s5 );
setScaleKey( spep_2 -3 + 262, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_2 -3 + 264, 1, 1.51 +s5, 1.51 +s5 );
setScaleKey( spep_2 -3 + 265, 1, 1.51 +s5, 1.51 +s5 );

s6 =1.4;
setScaleKey( spep_2 -3 + 266, 1, 3.78 +s6, 3.78 +s6 );
setScaleKey( spep_2 -3 + 268, 1, 3.69 +s6, 3.69 +s6 );
setScaleKey( spep_2 -3 + 270, 1, 3.6 +s6, 3.6 +s6 );
setScaleKey( spep_2 -3 + 272, 1, 3.53 +s6, 3.53 +s6 );
setScaleKey( spep_2 -3 + 274, 1, 3.46 +s6, 3.46 +s6 );
setScaleKey( spep_2 -3 + 276, 1, 3.43 +s6, 3.43 +s6 );
setScaleKey( spep_2 -3 + 278, 1, 3.41 +s6, 3.41 +s6 );
setScaleKey( spep_2 -3 + 280, 1, 3.38 +s6, 3.38 +s6 );
setScaleKey( spep_2 -3 + 282, 1, 3.35 +s6, 3.35 +s6 );
setScaleKey( spep_2 -3 + 284, 1, 3.33 +s6, 3.33 +s6 );
setScaleKey( spep_2 -3 + 286, 1, 3.3 +s6, 3.3 +s6 );
setScaleKey( spep_2 -3 + 288, 1, 3.28 +s6, 3.28 +s6 );
setScaleKey( spep_2 -3 + 290, 1, 3.26 +s6, 3.26 +s6 );
setScaleKey( spep_2 -3 + 292, 1, 3.23 +s6, 3.23 +s6 );
setScaleKey( spep_2 -3 + 294, 1, 3.21 +s6, 3.21 +s6 );
setScaleKey( spep_2 -3 + 296, 1, 3.19 +s6, 3.19 +s6 );
setScaleKey( spep_2 -3 + 298, 1, 3.17 +s6, 3.17 +s6 );
setScaleKey( spep_2 -3 + 300, 1, 3.15 +s6, 3.15 +s6 );
setScaleKey( spep_2 -3 + 302, 1, 3.13 +s6, 3.13 +s6 );
setScaleKey( spep_2 -3 + 304, 1, 3.12 +s6, 3.12 +s6 );
setScaleKey( spep_2 -3 + 306, 1, 3.1 +s6, 3.1 +s6 );
setScaleKey( spep_2 -3 + 308, 1, 3.1 +s6, 3.1 +s6 );

s7 = 0.3;
setScaleKey( spep_2 -3 + 360, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 380, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 382, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 408, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 410, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 412, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 414, 1, 1.82 +s7, 1.82 +s7 );
setScaleKey( spep_2 -3 + 416, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 426, 1, 1.83 +s7, 1.83 +s7 );
setScaleKey( spep_2 -3 + 428, 1, 1.83 +s7, 1.83 +s7 );

s8 = 0.2;
setScaleKey( spep_2 -3 + 556, 1, 1.76 +s8, 1.76 +s8 );
setScaleKey( spep_2 -3 + 558, 1, 1.75 +s8, 1.75 +s8 );
setScaleKey( spep_2 -3 + 560, 1, 1.73 +s8, 1.73 +s8 );
setScaleKey( spep_2 -3 + 562, 1, 1.72 +s8, 1.72 +s8 );
setScaleKey( spep_2 -3 + 564, 1, 1.71 +s8, 1.71 +s8 );
setScaleKey( spep_2 -3 + 566, 1, 1.7 +s8, 1.7 +s8 );
setScaleKey( spep_2 -3 + 568, 1, 1.69 +s8, 1.69 +s8 );
setScaleKey( spep_2 -3 + 570, 1, 1.68 +s8, 1.68 +s8 );
setScaleKey( spep_2 -3 + 572, 1, 1.66 +s8, 1.66 +s8 );
setScaleKey( spep_2 -3 + 574, 1, 1.65 +s8, 1.65 +s8 );
setScaleKey( spep_2 -3 + 576, 1, 1.64 +s8, 1.64 +s8 );
setScaleKey( spep_2 -3 + 578, 1, 1.63 +s8, 1.63 +s8 );
setScaleKey( spep_2 -3 + 580, 1, 1.62 +s8, 1.62 +s8 );
setScaleKey( spep_2 -3 + 582, 1, 1.61 +s8, 1.61 +s8 );
setScaleKey( spep_2 -3 + 584, 1, 1.59 +s8, 1.59 +s8 );
setScaleKey( spep_2 -3 + 586, 1, 1.59 +s8, 1.59 +s8 );

s9 = 0.2;
setScaleKey( spep_2 -3 + 638, 1, 0.96 +s9, 0.96 +s9 );
setScaleKey( spep_2 -3 + 640, 1, 0.96 +s9, 0.96 +s9 );
setScaleKey( spep_2 -3 + 642, 1, 0.97 +s9, 0.97 +s9 );
setScaleKey( spep_2 -3 + 650, 1, 0.97 +s9, 0.97 +s9 );
setScaleKey( spep_2 -3 + 652, 1, 0.98 +s9, 0.98 +s9 );
setScaleKey( spep_2 -3 + 660, 1, 0.98 +s9, 0.98 +s9 );
setScaleKey( spep_2 -3 + 662, 1, 0.99 +s9, 0.99 +s9 );
setScaleKey( spep_2 -3 + 670, 1, 0.99 +s9, 0.99 +s9 );
setScaleKey( spep_2 -3 + 672, 1, 0.99 +s9, 0.99 +s9 );

s10 = 0.4;
setScaleKey( spep_2 -3 + 694, 1, 1.8 +s10, 1.8 +s10 );
setScaleKey( spep_2 -3 + 714, 1, 1.8 +s10, 1.8 +s10 );


-- ** rotate ** --
setRotateKey( spep_2 -3 + 42, 1, -0 );
setRotateKey( spep_2 -3 + 61, 1, -0 );
setRotateKey( spep_2 -3 + 62, 1, 33.9 );
setRotateKey( spep_2 -3 + 64, 1, 35 );
setRotateKey( spep_2 -3 + 66, 1, 36.1 );
setRotateKey( spep_2 -3 + 68, 1, 37.1 );
setRotateKey( spep_2 -3 + 70, 1, 38.1 );
setRotateKey( spep_2 -3 + 72, 1, 39 );
setRotateKey( spep_2 -3 + 74, 1, 64.2 );
setRotateKey( spep_2 -3 + 76, 1, 81.4 );
setRotateKey( spep_2 -3 + 78, 1, 90.7 );
setRotateKey( spep_2 -3 + 80, 1, 109.2 );
setRotateKey( spep_2 -3 + 82, 1, 128.7 );
setRotateKey( spep_2 -3 + 84, 1, 149 );
setRotateKey( spep_2 -3 + 86, 1, 152 );
setRotateKey( spep_2 -3 + 88, 1, 155.1 );
setRotateKey( spep_2 -3 + 90, 1, 158.1 );
setRotateKey( spep_2 -3 + 92, 1, 161.2 );
setRotateKey( spep_2 -3 + 94, 1, 164.3 );
setRotateKey( spep_2 -3 + 96, 1, 167.3 );
setRotateKey( spep_2 -3 + 98, 1, 170.4 );
setRotateKey( spep_2 -3 + 100, 1, 173.5 );
setRotateKey( spep_2 -3 + 102, 1, 176.5 );
setRotateKey( spep_2 -3 + 104, 1, 179.6 );
setRotateKey( spep_2 -3 + 106, 1, 182.7 );
setRotateKey( spep_2 -3 + 107, 1, 182.7 );
setRotateKey( spep_2 -3 + 108, 1, -160.3 );
setRotateKey( spep_2 -3 + 110, 1, -159.1 );
setRotateKey( spep_2 -3 + 112, 1, -158.2 );
setRotateKey( spep_2 -3 + 114, 1, -157.6 );
setRotateKey( spep_2 -3 + 116, 1, -157.3 );
setRotateKey( spep_2 -3 + 117, 1, -157.3 );
setRotateKey( spep_2 -3 + 118, 1, -104.3 );
setRotateKey( spep_2 -3 + 120, 1, -104.5 );
setRotateKey( spep_2 -3 + 122, 1, -104.8 );
setRotateKey( spep_2 -3 + 124, 1, -105.1 );
setRotateKey( spep_2 -3 + 126, 1, -105.3 );
setRotateKey( spep_2 -3 + 128, 1, -105.6 );
setRotateKey( spep_2 -3 + 130, 1, -105.9 );
setRotateKey( spep_2 -3 + 132, 1, -106.1 );
setRotateKey( spep_2 -3 + 134, 1, -106.4 );
setRotateKey( spep_2 -3 + 136, 1, -106.6 );
setRotateKey( spep_2 -3 + 138, 1, -106.9 );
setRotateKey( spep_2 -3 + 140, 1, -107.2 );
setRotateKey( spep_2 -3 + 142, 1, -107.4 );
setRotateKey( spep_2 -3 + 144, 1, -107.7 );
setRotateKey( spep_2 -3 + 146, 1, -108 );
setRotateKey( spep_2 -3 + 148, 1, -108.2 );
setRotateKey( spep_2 -3 + 150, 1, -108.5 );
setRotateKey( spep_2 -3 + 152, 1, -108.7 );
setRotateKey( spep_2 -3 + 154, 1, -109 );
setRotateKey( spep_2 -3 + 156, 1, -109.3 );
setRotateKey( spep_2 -3 + 158, 1, -109.5 );
setRotateKey( spep_2 -3 + 160, 1, -109.8 );
setRotateKey( spep_2 -3 + 162, 1, -110 );
setRotateKey( spep_2 -3 + 164, 1, -110.3 );
setRotateKey( spep_2 -3 + 166, 1, -110.6 );
setRotateKey( spep_2 -3 + 168, 1, -110.8 );
setRotateKey( spep_2 -3 + 170, 1, -111.1 );
setRotateKey( spep_2 -3 + 172, 1, -111.4 );
setRotateKey( spep_2 -3 + 174, 1, -111.6 );
setRotateKey( spep_2 -3 + 176, 1, -111.9 );
setRotateKey( spep_2 -3 + 178, 1, -112.1 );
setRotateKey( spep_2 -3 + 180, 1, -112.4 );
setRotateKey( spep_2 -3 + 182, 1, -112.7 );
setRotateKey( spep_2 -3 + 184, 1, -112.7 );
--
setRotateKey( spep_2 -3 + 258, 1, -49.5 );
setRotateKey( spep_2 -3 + 260, 1, -49.1 );
setRotateKey( spep_2 -3 + 262, 1, -48.7 );
setRotateKey( spep_2 -3 + 264, 1, -48.3 );
setRotateKey( spep_2 -3 + 265, 1, -48.3 );
setRotateKey( spep_2 -3 + 266, 1, 158.1 );
setRotateKey( spep_2 -3 + 268, 1, 158.8 );
setRotateKey( spep_2 -3 + 270, 1, 159.5 );
setRotateKey( spep_2 -3 + 272, 1, 160.1 );
setRotateKey( spep_2 -3 + 274, 1, 160.6 );
setRotateKey( spep_2 -3 + 276, 1, 160.9 );
setRotateKey( spep_2 -3 + 278, 1, 161.2 );
setRotateKey( spep_2 -3 + 280, 1, 161.5 );
setRotateKey( spep_2 -3 + 282, 1, 161.8 );
setRotateKey( spep_2 -3 + 284, 1, 162 );
setRotateKey( spep_2 -3 + 286, 1, 162.3 );
setRotateKey( spep_2 -3 + 288, 1, 162.6 );
setRotateKey( spep_2 -3 + 290, 1, 162.8 );
setRotateKey( spep_2 -3 + 292, 1, 163.1 );
setRotateKey( spep_2 -3 + 294, 1, 163.3 );
setRotateKey( spep_2 -3 + 296, 1, 163.5 );
setRotateKey( spep_2 -3 + 298, 1, 163.7 );
setRotateKey( spep_2 -3 + 300, 1, 163.9 );
setRotateKey( spep_2 -3 + 302, 1, 164.1 );
setRotateKey( spep_2 -3 + 304, 1, 164.3 );
setRotateKey( spep_2 -3 + 306, 1, 164.5 );
setRotateKey( spep_2 -3 + 308, 1, 164.5 );
--
setRotateKey( spep_2 -3 + 360, 1, 108 );
setRotateKey( spep_2 -3 + 362, 1, 108.7 );
setRotateKey( spep_2 -3 + 364, 1, 109.5 );
setRotateKey( spep_2 -3 + 366, 1, 110.3 );
setRotateKey( spep_2 -3 + 368, 1, 111.1 );
setRotateKey( spep_2 -3 + 370, 1, 111.9 );
setRotateKey( spep_2 -3 + 372, 1, 47.4 );
setRotateKey( spep_2 -3 + 374, 1, 6 );
setRotateKey( spep_2 -3 + 376, 1, -2.4 );
setRotateKey( spep_2 -3 + 378, 1, -9.8 );
setRotateKey( spep_2 -3 + 380, 1, -16.3 );
setRotateKey( spep_2 -3 + 382, 1, -21.9 );
setRotateKey( spep_2 -3 + 384, 1, -26.5 );
setRotateKey( spep_2 -3 + 386, 1, -27.2 );
setRotateKey( spep_2 -3 + 388, 1, -27.7 );
setRotateKey( spep_2 -3 + 390, 1, -28.3 );
setRotateKey( spep_2 -3 + 392, 1, -28.9 );
setRotateKey( spep_2 -3 + 394, 1, -29.4 );
setRotateKey( spep_2 -3 + 396, 1, -29.9 );
setRotateKey( spep_2 -3 + 398, 1, -30.4 );
setRotateKey( spep_2 -3 + 400, 1, -30.9 );
setRotateKey( spep_2 -3 + 402, 1, -31.3 );
setRotateKey( spep_2 -3 + 404, 1, -31.7 );
setRotateKey( spep_2 -3 + 406, 1, -32.1 );
setRotateKey( spep_2 -3 + 408, 1, -32.5 );
setRotateKey( spep_2 -3 + 410, 1, -32.9 );
setRotateKey( spep_2 -3 + 412, 1, -33.2 );
setRotateKey( spep_2 -3 + 414, 1, -33.5 );
setRotateKey( spep_2 -3 + 416, 1, -33.8 );
setRotateKey( spep_2 -3 + 418, 1, -34.1 );
setRotateKey( spep_2 -3 + 420, 1, -34.4 );
setRotateKey( spep_2 -3 + 422, 1, -34.6 );
setRotateKey( spep_2 -3 + 424, 1, -34.8 );
setRotateKey( spep_2 -3 + 426, 1, -35 );
setRotateKey( spep_2 -3 + 428, 1, -35 );
--
setRotateKey( spep_2 -3 + 556, 1, 11.1 );
setRotateKey( spep_2 -3 + 586, 1, 11.1 );
--
setRotateKey( spep_2 -3 + 638, 1, -16.6 );
setRotateKey( spep_2 -3 + 672, 1, -16.6 );
--
setRotateKey( spep_2 -3 + 694, 1, 11.4 );
setRotateKey( spep_2 -3 + 714, 1, 11.4 );

-- ** 音 ** --
--二人向かってくる
SE014 = playSe( spep_2 + 12, 44 );

--二人パンチ
SE015 = playSe( spep_2 + 48, 1189 );
SE016 = playSe( spep_2 + 52, 1187 );
SE017 = playSe( spep_2 + 52, 1110 );
SE018 = playSe( spep_2 + 52, 1068 );
setSeVolumeByWorkId( spep_2 + 52, SE018, 89 );

--悟空瞬間移動
SE019 = playSe( spep_2 + 96, 1109 );

--悟空膝蹴り
SE020 = playSe( spep_2 + 114, 1187 );
setSeVolumeByWorkId( spep_2 + 114, SE020, 85 );
stopSe( spep_2 + 128, SE020, 12 );
SE021 = playSe( spep_2 + 114, 1190 );
setSeVolumeByWorkId( spep_2 + 114, SE021, 87 );
SE022 = playSe( spep_2 + 114, 1153 );
setSeVolumeByWorkId( spep_2 + 114, SE022, 82 );

--悟空宙返り
SE023 = playSe( spep_2 + 176, 63 );
setSeVolumeByWorkId( spep_2 + 176, SE023, 48 );
setSeVolumeByWorkId( spep_2 + 177, SE023, 96 );
setSeVolumeByWorkId( spep_2 + 178, SE023, 143 );
stopSe( spep_2 + 196, SE023, 14 );
setStartTimeMs( SE023,  667 );

--悟空瞬間移動
SE024 = playSe( spep_2 + 148, 1109 );

--悟空宙返り
SE025 = playSe( spep_2 + 176, 1003 );
setSeVolumeByWorkId( spep_2 + 176, SE025, 93 );

--悟空振りかぶり
SE026 = playSe( spep_2 + 202, 1004 );
setSeVolumeByWorkId( spep_2 + 202, SE026, 120 );
setPitch( spep_2 + 202, SE026, 300 );
setTimeStretch( SE026, 1.2, 40, 5 );
SE027 = playSe( spep_2 + 212, 1116 );
stopSe( spep_2 + 246, SE027, 10 );
SE028 = playSe( spep_2 + 212, 1072 );

--キック
SE029 = playSe( spep_2 + 248, 1189 );
SE030 = playSe( spep_2 + 254, 1120 );
setSeVolumeByWorkId( spep_2 + 254, SE030, 120 );

--ベジータ飛んでくる
SE031 = playSe( spep_2 + 304, 1207 );
setSeVolumeByWorkId( spep_2 + 304, SE031, 12 );
setSeVolumeByWorkId( spep_2 + 306, SE031, 25 );
setSeVolumeByWorkId( spep_2 + 308, SE031, 38 );
setSeVolumeByWorkId( spep_2 + 310, SE031, 50 );
setSeVolumeByWorkId( spep_2 + 312, SE031, 62 );
setSeVolumeByWorkId( spep_2 + 314, SE031, 75 );
setSeVolumeByWorkId( spep_2 + 316, SE031, 88 );
setSeVolumeByWorkId( spep_2 + 318, SE031, 100 );
setStartTimeMs( SE031,  150 );
SE032 = playSe( spep_2 + 302, 1182 );
setSeVolumeByWorkId( spep_2 + 302, SE032, 77 );
SE033 = playSe( spep_2 + 302, 1117 );
SE034 = playSe( spep_2 + 312, 1026 );
setPitch( spep_2 + 312, SE034, -200 );
setTimeStretch( SE034, 0.87, 10, 1 );

--ベジータキック
SE035 = playSe( spep_2 + 358, 1189 );
SE036 = playSe( spep_2 + 364, 1001 );
setSeVolumeByWorkId( spep_2 + 372, SE036, 85 );
SE037 = playSe( spep_2 + 366, 1010 );
SE038 = playSe( spep_2 + 366, 1153 );
setSeVolumeByWorkId( spep_2 + 366, SE038, 75 );
SE039 = playSe( spep_2 + 370, 1192 );
setSeVolumeByWorkId( spep_2 + 370, SE039, 335 );
setTimeStretch( SE039, 1.24, 10, 1 );
SE040 = playSe( spep_2 + 370, 1110 );
setSeVolumeByWorkId( spep_2 + 370, SE040, 92 );

--悟空踏ん張る
SE041 = playSe( spep_2 + 430, 1108 );
setSeVolumeByWorkId( spep_2 + 430, SE041, 180 );
SE042 = playSe( spep_2 + 430, 1192 );
setSeVolumeByWorkId( spep_2 + 430, SE042, 138 );
setTimeStretch( SE042, 0.67, 10, 1 );
SE043 = playSe( spep_2 + 430, 1006 );
setSeVolumeByWorkId( spep_2 + 430, SE043, 81 );

--悟空瞬間移動
SE044 = playSe( spep_2 + 450, 1109 );

--悟空気弾溜め
SE045 = playSe( spep_2 + 468, 1191 );
setSeVolumeByWorkId( spep_2 + 468, SE045, 93 );
stopSe( spep_2 + 500, SE045, 12 );
SE046 = playSe( spep_2 + 468, 1262 );
setSeVolumeByWorkId( spep_2 + 468, SE046, 120 );
stopSe( spep_2 + 500, SE046, 12 );
setPitch( spep_2 + 468, SE046, 200 );
setTimeStretch( SE046, 1.13, 10, 1 );
SE047 = playSe( spep_2 + 588, 1204,"",0.5 );
setSeVolumeByWorkId( spep_2 + 588, SE047, 12 );
setSeVolumeByWorkId( spep_2 + 590, SE047, 25 );
setSeVolumeByWorkId( spep_2 + 592, SE047, 38 );
setSeVolumeByWorkId( spep_2 + 594, SE047, 50 );
setSeVolumeByWorkId( spep_2 + 596, SE047, 62 );
setSeVolumeByWorkId( spep_2 + 598, SE047, 85 );
setSeVolumeByWorkId( spep_2 + 600, SE047, 100 );
setSeVolumeByWorkId( spep_2 + 602, SE047, 140 );
setStartTimeMs( SE047,  1917 );

--ベジータ気弾溜め
SE048 = playSe( spep_2 + 504, 1276,"",0.5 );
setSeVolumeByWorkId( spep_2 + 504, SE048, 20 );
setSeVolumeByWorkId( spep_2 + 505, SE048, 40 );
setSeVolumeByWorkId( spep_2 + 506, SE048, 80 );
setSeVolumeByWorkId( spep_2 + 507, SE048, 100 );
setSeVolumeByWorkId( spep_2 + 508, SE048, 120 );
stopSe( spep_2 + 538, SE048, 10 );
setStartTimeMs( SE048,  217 );
setPitch( spep_2 + 504, SE048, -200 );
setTimeStretch( SE048, 0.87, 10, 1 );
SE049 = playSe( spep_2 + 502, 1116 );
stopSe( spep_2 + 526, SE049, 12 );
SE050 = playSe( spep_2 + 502, 44 );
setSeVolumeByWorkId( spep_2 + 502, SE050, 120 );
setPitch( spep_2 + 502, SE050, -400 );
setTimeStretch( SE050, 0.73, 40, 5 );

--ベジータ気弾投げ
SE051 = playSe( spep_2 + 532, 1145,"",0.6 );
setSeVolumeByWorkId( spep_2 + 532, SE051, 45 );
setSeVolumeByWorkId( spep_2 + 533, SE051, 90 );
setSeVolumeByWorkId( spep_2 + 534, SE051, 135 );
setSeVolumeByWorkId( spep_2 + 538, SE051, 145 );
setStartTimeMs( SE051,  350 );
setPitch( spep_2 + 532, SE051, 300 );
setTimeStretch( SE051, 1.2, 40, 5 );
SE052 = playSe( spep_2 + 530, 1155,"",0.9 );
setSeVolumeByWorkId( spep_2 + 534, SE052, 145 );
setPitch( spep_2 + 530, SE052, 200 );
setTimeStretch( SE052, 1.13, 40, 5 );

--悟空気弾溜め
SE053 = playSe( spep_2 + 574, 1262 );
setPitch( spep_2 + 574, SE053, 200 );
setTimeStretch( SE053, 1.13, 40, 5 );
SE054 = playSe( spep_2 + 574, 1191 );
setSeVolumeByWorkId( spep_2 + 574, SE054, 110 );
stopSe( spep_2 + 618, SE054, 18 );

--悟空気弾振りかぶり
SE055 = playSe( spep_2 + 606, 1116 );
stopSe( spep_2 + 632, SE055, 32 );
SE056 = playSe( spep_2 + 616, 1004 );
SE057 = playSe( spep_2 + 616, 1278 );
stopSe( spep_2 + 664, SE057, 38 );
setPitch( spep_2 + 616, SE057, -400 );
setTimeStretch( SE057, 0.73, 10, 1 );

--悟空気弾投げ
SE058 = playSe( spep_2 + 686, 1021,"",0.5 );
setSeVolumeByWorkId( spep_2 + 686, SE058, 28 );
setSeVolumeByWorkId( spep_2 + 687, SE058, 56 );
setSeVolumeByWorkId( spep_2 + 688, SE058, 84 );
setSeVolumeByWorkId( spep_2 + 689, SE058, 112 );
setSeVolumeByWorkId( spep_2 + 690, SE058, 163 );
setStartTimeMs( SE058,  367 );
SE059 = playSe( spep_2 + 686, 1145,"",0.5 );
setSeVolumeByWorkId( spep_2 + 686, SE059, 18 );
setSeVolumeByWorkId( spep_2 + 687, SE059, 36 );
setSeVolumeByWorkId( spep_2 + 688, SE059, 54 );
setSeVolumeByWorkId( spep_2 + 689, SE059, 74 );
setSeVolumeByWorkId( spep_2 + 690, SE059, 112 );
setStartTimeMs( SE059,  367 );
setPitch( spep_2 + 686, SE059, 200 );
setTimeStretch( SE059, 1.13, 40, 5 );
SE060 = playSe( spep_2 + 688, 1110 );
setSeVolumeByWorkId( spep_2 + 688, SE060, 79 );
SE061 = playSe( spep_2 + 688, 1146 );
setSeVolumeByWorkId( spep_2 + 688, SE061, 97 );
stopSe( spep_2 + 716, SE061, 28 );

--爆発
SE062 = playSe( spep_2 + 702, 1023 );
SE063 = playSe( spep_2 + 702, 1024 );
setSeVolumeByWorkId( spep_2 + 702, SE063, 78 );

--悟空飛び上がる
SE064 = playSe( spep_2 + 740, 1117 );
setSeVolumeByWorkId( spep_2 + 740, SE064, 120 );
stopSe( spep_2 + 764, SE064, 18 );
SE065 = playSe( spep_2 + 740, 44 );
setSeVolumeByWorkId( spep_2 + 740, SE065, 95 );

--ラスト爆発
SE066 = playSe( spep_2 + 786, 1067 );
setSeVolumeByWorkId( spep_2 + 786, SE066, 80 );
SE067 = playSe( spep_2 + 786, 1159 );
setSeVolumeByWorkId( spep_2 + 786, SE067, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 894 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 786 );
endPhase( spep_2 + 884 );

end