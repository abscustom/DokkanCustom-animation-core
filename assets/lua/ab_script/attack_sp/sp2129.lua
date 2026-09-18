--1021590/9021590 :ダーコリ_札術_sp2129
--sp_effect_a1_00269

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

--味方側　※敵側のみの演出で現時点では未使用
SP_01 = 156728;  --導入、待機 ef_001　
SP_02 = 156730;  --札→火の玉攻撃 ef_002
SP_03 = 156732;  --着弾→爆発 ef_003

--敵側
SP_01r = 156729;  --導入、待機 ef_001r
SP_02r = 156731;  --札→火の玉攻撃 ef_002r
SP_03r = 156733;  --着弾→爆発 ef_003r

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
-- 導入、待機(108F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入、待機(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 108, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 108, first, 255 );

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff1, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 108, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1.28 );
setEffScaleKey( spep_0 + 2, shuchusen1, 1.02, 1.31 );
setEffScaleKey( spep_0 + 4, shuchusen1, 1.04, 1.33 );
setEffScaleKey( spep_0 + 6, shuchusen1, 1.07, 1.36 );
setEffScaleKey( spep_0 + 8, shuchusen1, 1.09, 1.39 );
setEffScaleKey( spep_0 + 10, shuchusen1, 1.11, 1.42 );
setEffScaleKey( spep_0 + 12, shuchusen1, 1.13, 1.45 );
setEffScaleKey( spep_0 + 14, shuchusen1, 1.16, 1.48 );
setEffScaleKey( spep_0 + 16, shuchusen1, 1.18, 1.51 );
setEffScaleKey( spep_0 + 18, shuchusen1, 1.2, 1.53 );
setEffScaleKey( spep_0 + 108, shuchusen1, 1.2, 1.53 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 2, shuchusen1, 28 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 57 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 85 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 113 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 142 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 170 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 198 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 227 );
setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 108, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 0,  190006, 68, 0x100, -1, 0, 0.4, 477.2, 3000 ); --ゴゴゴ
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
--入り1
SE001 = playSe( spep_0 + 2, 1072 );
setStartTimeMs( SE001,  250 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 6.3 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 12.6 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 18.9 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 25.2 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 31.5 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 37.8 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 44.1 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 50.4 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 56.7 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 63 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 69.3 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 75.6 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 81.9 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 88.2 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 94.5 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 100 );
--入り2
SE002 = playSe( spep_0 + 16, 1052 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 74 );
--入り3
SE003 = playSe( spep_0 + 16, 1042 );
setSeVolumeByWorkId( spep_0 + 16, SE003, 79 );
--顔カットイン
SE004 = playSe( spep_0 + 18, 1018 );
--キャラZOOM
SE005 = playSe( spep_0 + 86, 8 );
setSeVolumeByWorkId( spep_0 + 86, SE005, 74 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 16, 10, 82, 0, 0, 0, 0, 140);-- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 92, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 108;
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
--カードカットイン
SE006 = playSe( spep_1 + 0, 1035 );
--キャラZOOM
stopSe( spep_1 + 10, SE005, 0 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
--札→火の玉攻撃 (88F)
------------------------------------------------------
-- ** エフェクト等 ** --
huda = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --札→火の玉攻撃(ef_002)
setEffMoveKey( spep_2 + 0, huda, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, huda, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, huda, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, huda, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, huda, 0 );
setEffRotateKey( spep_2 + 88, huda, 0 );
setEffAlphaKey( spep_2 + 0, huda, 255 );
setEffAlphaKey( spep_2 + 88, huda, 255 );

-- ** 集中線 ** --
ryusen2 = entryEffectLife( spep_2 + 18,  921, 70, 0x80, -1, 0, 0, 0 );--流線　斜め　奥行きあり(横）
setEffMoveKey( spep_2 + 18, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 18, ryusen2, -1.01, 1.01 );
setEffScaleKey( spep_2 + 88, ryusen2, -1.01, 1.01 );

setEffRotateKey( spep_2 + 18, ryusen2, 0 );
setEffRotateKey( spep_2 + 88, ryusen2, 0 );

setEffAlphaKey( spep_2 + 18, ryusen2, 13 );
setEffAlphaKey( spep_2 + 20, ryusen2, 94 );
setEffAlphaKey( spep_2 + 22, ryusen2, 174 );
setEffAlphaKey( spep_2 + 24, ryusen2, 255 );
setEffAlphaKey( spep_2 + 88, ryusen2, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    --stopSe( SP_dodge - 12, SE011, 0 );
    --stopSe( SP_dodge - 12, SE012, 0 );
    --stopSe( SP_dodge - 12, SE013, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
a1=6;
-- ** 音 ** --

--クリスタル投げる1
SE007 = playSe( spep_2 + 34 -a1, 1282 );
setSeVolumeByWorkId( spep_2 + 34 -a1, SE007, 51 );
setStartTimeMs( SE007,  367 );
setPitch( spep_2 + 34-a1, SE007, 100 );
setTimeStretch( SE007, 1.07, 10, 1 );
--クリスタル投げる2
SE008 = playSe( spep_2 + 24 -a1, 1117 );
setSeVolumeByWorkId( spep_2 + 24 -a1, SE008, 92 );
--クリスタル投げる3
SE009 = playSe( spep_2 + 24 -a1, 1027 );
setSeVolumeByWorkId( spep_2 + 24 -a1, SE009, 64 );
--クリスタル投げる4
SE010 = playSe( spep_2 + 26 -a1, 1256 );
setSeVolumeByWorkId( spep_2 + 26 -a1, SE010, 0 );
setSeVolumeByWorkId( spep_2 + 27 -a1, SE010, 44.6 );
setSeVolumeByWorkId( spep_2 + 28 -a1, SE010, 89 );
setStartTimeMs( SE010,  33 );
setPitch( spep_2 + 26 -a1, SE010, 400 );
setTimeStretch( SE010, 1.27, 10, 1 );

--炎に変わる1
SE011 = playSe( spep_2 + 52 -a1, 1021 );
setSeVolumeByWorkId( spep_2 + 52 -a1, SE011, 126 );
--炎に変わる2
SE012 = playSe( spep_2 + 52 -a1, 1258 );
setSeVolumeByWorkId( spep_2 + 52 -a1, SE012, 61 );
--炎に変わる3
SE013 = playSe( spep_2 + 56 -a1, 1268 );
setSeVolumeByWorkId( spep_2 + 56 -a1, SE013, 158 );
--炎に変わる4
SE014 = playSe( spep_2 + 56 -a1, 1264 );
setSeVolumeByWorkId( spep_2 + 56 -a1, SE014, 62 );
setPitch( spep_2 + 56 -a1, SE014, 200 );
setTimeStretch( SE014, 1.13, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 140);-- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 78, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;

--------------------------------------
--着弾→爆発(88F)
--------------------------------------
-- ** エフェクト等 ** --
tyakudan = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --着弾→爆発(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, tyakudan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan, 0 );
setEffRotateKey( spep_3 + 88, tyakudan, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan, 255 );
setEffAlphaKey( spep_3 + 88, tyakudan, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 42, 1, 108 );
changeAnime( spep_3 + 45, 1, 106 );
changeAnime( spep_3 + 47, 1, 105 );

setMoveKey( spep_3 + 0, 1, 214.2, -16.9 , 0 );
--setMoveKey( spep_3 + 1, 1, 214.2, -16.9 , 0 );
setMoveKey( spep_3 + 2, 1, 214.2, -16.9 , 0 );
--setMoveKey( spep_3 + 3, 1, 214.2, -16.9 , 0 );
setMoveKey( spep_3 + 4, 1, 214.2, -16.9 , 0 );
--setMoveKey( spep_3 + 5, 1, 214.2, -16.9 , 0 );
setMoveKey( spep_3 + 6, 1, 214.2, -16.8 , 0 );
setMoveKey( spep_3 + 8, 1, 214.2, -16.8 , 0 );
setMoveKey( spep_3 + 10, 1, 214.1, -16.8 , 0 );
setMoveKey( spep_3 + 12, 1, 214, -16.8 , 0 );
setMoveKey( spep_3 + 14, 1, 213.6, -16.7 , 0 );
setMoveKey( spep_3 + 16, 1, 213, -16.6 , 0 );
setMoveKey( spep_3 + 18, 1, 212.1, -16.5 , 0 );
setMoveKey( spep_3 + 20, 1, 210.6, -16.2 , 0 );
setMoveKey( spep_3 + 22, 1, 208.3, -15.8 , 0 );
setMoveKey( spep_3 + 24, 1, 205.1, -15.3 , 0 );
setMoveKey( spep_3 + 26, 1, 200.6, -14.5 , 0 );
setMoveKey( spep_3 + 28, 1, 194.5, -13.5 , 0 );
setMoveKey( spep_3 + 30, 1, 186.3, -12.1 , 0 );
setMoveKey( spep_3 + 32, 1, 175.7, -10.3 , 0 );
setMoveKey( spep_3 + 34, 1, 162, -8 , 0 );
setMoveKey( spep_3 + 36, 1, 144.7, -5.1 , 0 );
setMoveKey( spep_3 + 38, 1, 123.1, -1.5 , 0 );
setMoveKey( spep_3 + 40, 1, 96.5, 3 , 0 );
setMoveKey( spep_3 + 43, 1, 64, 8.5 , 0 );
setMoveKey( spep_3 + 46, 1, 64, 8.5 , 0 );
setMoveKey( spep_3 + 47, 1, 245.7, 145.7 , 0 );
setMoveKey( spep_3 + 50, 1, 245.7, 145.7 , 0 );
setMoveKey( spep_3 + 52, 1, 301.2, 236.2 , 0 );
setMoveKey( spep_3 + 54, 1, 352, 296.1 , 0 );
setMoveKey( spep_3 + 56, 1, 380.6, 348.1 , 0 );
setMoveKey( spep_3 + 58, 1, 426, 396.1 , 0 );
setMoveKey( spep_3 + 60, 1, 453.7, 441.5 , 0 );
setMoveKey( spep_3 + 62, 1, 479.9, 467.8 , 0 );
setMoveKey( spep_3 + 64, 1, 491.6, 494.8 , 0 );
setMoveKey( spep_3 + 66, 1, 522.6, 523.7 , 0 );
setMoveKey( spep_3 + 68, 1, 540.4, 554.4 , 0 );
setMoveKey( spep_3 + 70, 1, 559.6, 571.7 , 0 );
setMoveKey( spep_3 + 72, 1, 568.2, 592.7 , 0 );
setMoveKey( spep_3 + 74, 1, 596.7, 619.5 , 0 );
setMoveKey( spep_3 + 76, 1, 616.6, 652.4 , 0 );
setMoveKey( spep_3 + 78, 1, 642.4, 679.7 , 0 );
setMoveKey( spep_3 + 87, 1, 642.4, 679.7 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
--setScaleKey( spep_3 + 1, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 2, 1, 0.8, 0.8 );
--setScaleKey( spep_3 + 3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 4, 1, 0.8, 0.8 );
--setScaleKey( spep_3 + 5, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 6, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 17, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 18, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 24, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 34, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 36, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 40, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 46, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 47, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 49, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 50, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 52, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 60, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 62, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 64, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 68, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 72, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 74, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 76, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 78, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 87, 1, 0.98, 0.98 );

setRotateKey( spep_3 + 0, 1, -8.5 );
--setRotateKey( spep_3 + 1, 1, -8.5 );
setRotateKey( spep_3 + 2, 1, -8.5 );
--setRotateKey( spep_3 + 3, 1, -8.5 );
setRotateKey( spep_3 + 4, 1, -8.5 );
--setRotateKey( spep_3 + 5, 1, -8.5 );
setRotateKey( spep_3 + 6, 1, -8.5 );
setRotateKey( spep_3 + 43, 1, -8.5 );
setRotateKey( spep_3 + 44, 1, -8.5 );
setRotateKey( spep_3 + 45, 1, -40 );
setRotateKey( spep_3 + 46, 1, -40 );
setRotateKey( spep_3 + 47, 1, 19.8 );
setRotateKey( spep_3 + 50, 1, 19.8 );
setRotateKey( spep_3 + 78, 1, 19.8 );
setRotateKey( spep_3 + 87, 1, 19.8 );

-- ** 集中線 ** --
d=1;
shuchusen3 = entryEffectLife( spep_3 + 0, 921, 42 -d, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 42 -d, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.01, 1.01 );
setEffScaleKey( spep_3 + 42 -d, shuchusen3, 1.01, 1.01 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 42 -d, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 42 -d, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
c=3;
ctdon = entryEffectLife( spep_3 + 46 -c, 10019, 24, 0x100, -1, 0, -24.4, 268.8 );
setEffMoveKey( spep_3 + 46 -c, ctdon, -24.4, 268.8 , 0 );
setEffMoveKey( spep_3 + 48 -c, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3 + 50 -c, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_3 + 52 -c, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3 + 54 -c, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3 + 56 -c, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3 + 58 -c, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_3 + 60 -c, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3 + 62 -c, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3 + 64 -c, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3 + 68 -c, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3 + 70 -c, ctdon, -6.5, 302.9 , 0 );

setEffScaleKey( spep_3 + 46 -c, ctdon, 2, 2 );
setEffScaleKey( spep_3 + 48 -c, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_3 + 50 -c, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_3 + 52 -c, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3 + 54 -c, ctdon, 2.9, 2.9 );
setEffScaleKey( spep_3 + 56 -c, ctdon, 3, 3 );
setEffScaleKey( spep_3 + 58 -c, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_3 + 60 -c, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3 + 62 -c, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3 + 64 -c, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_3 + 66 -c, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_3 + 68 -c, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_3 + 70 -c, ctdon, 2, 2 );

setEffRotateKey( spep_3 + 46 -c, ctdon, 10.5 );
setEffRotateKey( spep_3 + 70 -c, ctdon, 10.5 );

setEffAlphaKey( spep_3 + 46 -c, ctdon, 255 );
setEffAlphaKey( spep_3 + 60 -c, ctdon, 255 );
setEffAlphaKey( spep_3 + 62 -c, ctdon, 253 );
setEffAlphaKey( spep_3 + 64 -c, ctdon, 240 );
setEffAlphaKey( spep_3 + 66 -c, ctdon, 203 );
setEffAlphaKey( spep_3 + 68 -c, ctdon, 131 );
setEffAlphaKey( spep_3 + 70 -c, ctdon, 13 );

-- ** 音 ** --
a2=4;
--炎に変わる2
stopSe( spep_3 + 20 -a1, SE012, 60 );
--炎に変わる3
stopSe( spep_3 + 46 -a1, SE013, 54 );
--炎に変わる4
stopSe( spep_3 + 40 -a1, SE014, 20 );
--敵ヒット
SE015 = playSe( spep_3 + 44 -a2, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 140);-- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
-- ** 次の準備 ** --
spep_4 = spep_3 + 88;
--------------------------------------
--敵吹っ飛び(112F)
--------------------------------------
a=110;
-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
--setMoveKey( spep_4 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9-a , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1-a , 0 );
setMoveKey( spep_4 + 122, 1, -1.9, -124.1-a , 0 );

setScaleKey( spep_4 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 2, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 4, 1, 0.4, 0.4 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 10, 1, 0.95, 0.95 );
setScaleKey( spep_4 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 16, 1, 1.30, 1.30 );
setScaleKey( spep_4 + 18, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 22, 1, 1.26, 1.26);
setScaleKey( spep_4 + 24, 1, 1.18, 1.18);
setScaleKey( spep_4 + 26, 1, 1.26 , 1.26 );
setScaleKey( spep_4 + 122, 1, 1.26 , 1.26 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 122, 1, 1080 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14, 1657, 98+10, 0x80, -1, 0, 0, 0 );--細い黒集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 122, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 122, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 122, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 122, shuchusen4, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, -3, 1 );--白い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, -3, 1 , 0 );
setEffMoveKey( spep_4 + 26, shuchusen5, -3, 1 , 0 );
setEffMoveKey( spep_4 + 28, shuchusen5, -4, 1 , 0 );
--setEffMoveKey( spep_4 + 122, shuchusen5, -4, 1 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen5, -4, 1 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
--setEffScaleKey( spep_4 + 122, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
--setEffRotateKey( spep_4 + 122, shuchusen5, 0 );
setEffRotateKey( spep_4 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen5, 0 );
--setEffAlphaKey( spep_4 + 122, shuchusen5, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14, 10005, 98+10, 0x100, -1, 0, 3.9, 316.1 );--ガッ

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 122, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 122, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_4 + 122, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 122, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 122, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 122, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 122, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 122, hibiware, 255 );

-- ** 音 ** --
--ガッ
SE016 = playSe( spep_4 + 10 +12, 1054 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 122, 0, 0, 0, 0, 140);-- ベース暗め　背景
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 12 );
endPhase( spep_4 + 112 );
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、待機(108F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --導入、待機(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 108, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 108, first, 255 );

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff1, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 108, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1.28 );
setEffScaleKey( spep_0 + 2, shuchusen1, 1.02, 1.31 );
setEffScaleKey( spep_0 + 4, shuchusen1, 1.04, 1.33 );
setEffScaleKey( spep_0 + 6, shuchusen1, 1.07, 1.36 );
setEffScaleKey( spep_0 + 8, shuchusen1, 1.09, 1.39 );
setEffScaleKey( spep_0 + 10, shuchusen1, 1.11, 1.42 );
setEffScaleKey( spep_0 + 12, shuchusen1, 1.13, 1.45 );
setEffScaleKey( spep_0 + 14, shuchusen1, 1.16, 1.48 );
setEffScaleKey( spep_0 + 16, shuchusen1, 1.18, 1.51 );
setEffScaleKey( spep_0 + 18, shuchusen1, 1.2, 1.53 );
setEffScaleKey( spep_0 + 108, shuchusen1, 1.2, 1.53 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 2, shuchusen1, 28 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 57 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 85 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 113 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 142 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 170 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 198 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 227 );
setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 108, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 0,  190006, 68, 0x100, -1, 0, 0.4, 477.2, 3000 ); --ゴゴゴ
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
--入り1
SE001 = playSe( spep_0 + 2, 1072 );
setStartTimeMs( SE001,  250 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 6.3 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 12.6 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 18.9 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 25.2 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 31.5 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 37.8 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 44.1 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 50.4 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 56.7 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 63 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 69.3 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 75.6 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 81.9 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 88.2 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 94.5 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 100 );
--入り2
SE002 = playSe( spep_0 + 16, 1052 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 74 );
--入り3
SE003 = playSe( spep_0 + 16, 1042 );
setSeVolumeByWorkId( spep_0 + 16, SE003, 79 );
--顔カットイン
SE004 = playSe( spep_0 + 18, 1018 );
--キャラZOOM
SE005 = playSe( spep_0 + 86, 8 );
setSeVolumeByWorkId( spep_0 + 86, SE005, 74 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 16, 10, 82, 0, 0, 0, 0, 140);-- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 92, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 108;
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
--カードカットイン
SE006 = playSe( spep_1 + 0, 1035 );
--キャラZOOM
stopSe( spep_1 + 10, SE005, 0 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
--札→火の玉攻撃 (88F)
------------------------------------------------------
-- ** エフェクト等 ** --
huda = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --札→火の玉攻撃(ef_002)
setEffMoveKey( spep_2 + 0, huda, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, huda, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, huda, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, huda, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, huda, 0 );
setEffRotateKey( spep_2 + 88, huda, 0 );
setEffAlphaKey( spep_2 + 0, huda, 255 );
setEffAlphaKey( spep_2 + 88, huda, 255 );

-- ** 集中線 ** --
ryusen2 = entryEffectLife( spep_2 + 18,  921, 70, 0x80, -1, 0, 0, 0 );--流線　斜め　奥行きあり(横）
setEffMoveKey( spep_2 + 18, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 18, ryusen2, -1.01, 1.01 );
setEffScaleKey( spep_2 + 88, ryusen2, -1.01, 1.01 );

setEffRotateKey( spep_2 + 18, ryusen2, 0 );
setEffRotateKey( spep_2 + 88, ryusen2, 0 );

setEffAlphaKey( spep_2 + 18, ryusen2, 13 );
setEffAlphaKey( spep_2 + 20, ryusen2, 94 );
setEffAlphaKey( spep_2 + 22, ryusen2, 174 );
setEffAlphaKey( spep_2 + 24, ryusen2, 255 );
setEffAlphaKey( spep_2 + 88, ryusen2, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    --stopSe( SP_dodge - 12, SE011, 0 );
    --stopSe( SP_dodge - 12, SE012, 0 );
    --stopSe( SP_dodge - 12, SE013, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
a1=6;
-- ** 音 ** --

--クリスタル投げる1
SE007 = playSe( spep_2 + 34 -a1, 1282 );
setSeVolumeByWorkId( spep_2 + 34 -a1, SE007, 51 );
setStartTimeMs( SE007,  367 );
setPitch( spep_2 + 34-a1, SE007, 100 );
setTimeStretch( SE007, 1.07, 10, 1 );
--クリスタル投げる2
SE008 = playSe( spep_2 + 24 -a1, 1117 );
setSeVolumeByWorkId( spep_2 + 24 -a1, SE008, 92 );
--クリスタル投げる3
SE009 = playSe( spep_2 + 24 -a1, 1027 );
setSeVolumeByWorkId( spep_2 + 24 -a1, SE009, 64 );
--クリスタル投げる4
SE010 = playSe( spep_2 + 26 -a1, 1256 );
setSeVolumeByWorkId( spep_2 + 26 -a1, SE010, 0 );
setSeVolumeByWorkId( spep_2 + 27 -a1, SE010, 44.6 );
setSeVolumeByWorkId( spep_2 + 28 -a1, SE010, 89 );
setStartTimeMs( SE010,  33 );
setPitch( spep_2 + 26 -a1, SE010, 400 );
setTimeStretch( SE010, 1.27, 10, 1 );

--炎に変わる1
SE011 = playSe( spep_2 + 52 -a1, 1021 );
setSeVolumeByWorkId( spep_2 + 52 -a1, SE011, 126 );
--炎に変わる2
SE012 = playSe( spep_2 + 52 -a1, 1258 );
setSeVolumeByWorkId( spep_2 + 52 -a1, SE012, 61 );
--炎に変わる3
SE013 = playSe( spep_2 + 56 -a1, 1268 );
setSeVolumeByWorkId( spep_2 + 56 -a1, SE013, 158 );
--炎に変わる4
SE014 = playSe( spep_2 + 56 -a1, 1264 );
setSeVolumeByWorkId( spep_2 + 56 -a1, SE014, 62 );
setPitch( spep_2 + 56 -a1, SE014, 200 );
setTimeStretch( SE014, 1.13, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 140);-- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 78, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;

--------------------------------------
--着弾→爆発(88F)
--------------------------------------
-- ** エフェクト等 ** --
tyakudan = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --着弾→爆発(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, tyakudan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan, 0 );
setEffRotateKey( spep_3 + 88, tyakudan, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan, 255 );
setEffAlphaKey( spep_3 + 88, tyakudan, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 42, 1, 108 );
changeAnime( spep_3 + 45, 1, 106 );
changeAnime( spep_3 + 47, 1, 105 );

setMoveKey( spep_3 + 0, 1, 214.2, -16.9 , 0 );
--setMoveKey( spep_3 + 1, 1, 214.2, -16.9 , 0 );
setMoveKey( spep_3 + 2, 1, 214.2, -16.9 , 0 );
--setMoveKey( spep_3 + 3, 1, 214.2, -16.9 , 0 );
setMoveKey( spep_3 + 4, 1, 214.2, -16.9 , 0 );
--setMoveKey( spep_3 + 5, 1, 214.2, -16.9 , 0 );
setMoveKey( spep_3 + 6, 1, 214.2, -16.8 , 0 );
setMoveKey( spep_3 + 8, 1, 214.2, -16.8 , 0 );
setMoveKey( spep_3 + 10, 1, 214.1, -16.8 , 0 );
setMoveKey( spep_3 + 12, 1, 214, -16.8 , 0 );
setMoveKey( spep_3 + 14, 1, 213.6, -16.7 , 0 );
setMoveKey( spep_3 + 16, 1, 213, -16.6 , 0 );
setMoveKey( spep_3 + 18, 1, 212.1, -16.5 , 0 );
setMoveKey( spep_3 + 20, 1, 210.6, -16.2 , 0 );
setMoveKey( spep_3 + 22, 1, 208.3, -15.8 , 0 );
setMoveKey( spep_3 + 24, 1, 205.1, -15.3 , 0 );
setMoveKey( spep_3 + 26, 1, 200.6, -14.5 , 0 );
setMoveKey( spep_3 + 28, 1, 194.5, -13.5 , 0 );
setMoveKey( spep_3 + 30, 1, 186.3, -12.1 , 0 );
setMoveKey( spep_3 + 32, 1, 175.7, -10.3 , 0 );
setMoveKey( spep_3 + 34, 1, 162, -8 , 0 );
setMoveKey( spep_3 + 36, 1, 144.7, -5.1 , 0 );
setMoveKey( spep_3 + 38, 1, 123.1, -1.5 , 0 );
setMoveKey( spep_3 + 40, 1, 96.5, 3 , 0 );
setMoveKey( spep_3 + 43, 1, 64, 8.5 , 0 );
setMoveKey( spep_3 + 46, 1, 64, 8.5 , 0 );
setMoveKey( spep_3 + 47, 1, 245.7, 145.7 , 0 );
setMoveKey( spep_3 + 50, 1, 245.7, 145.7 , 0 );
setMoveKey( spep_3 + 52, 1, 301.2, 236.2 , 0 );
setMoveKey( spep_3 + 54, 1, 352, 296.1 , 0 );
setMoveKey( spep_3 + 56, 1, 380.6, 348.1 , 0 );
setMoveKey( spep_3 + 58, 1, 426, 396.1 , 0 );
setMoveKey( spep_3 + 60, 1, 453.7, 441.5 , 0 );
setMoveKey( spep_3 + 62, 1, 479.9, 467.8 , 0 );
setMoveKey( spep_3 + 64, 1, 491.6, 494.8 , 0 );
setMoveKey( spep_3 + 66, 1, 522.6, 523.7 , 0 );
setMoveKey( spep_3 + 68, 1, 540.4, 554.4 , 0 );
setMoveKey( spep_3 + 70, 1, 559.6, 571.7 , 0 );
setMoveKey( spep_3 + 72, 1, 568.2, 592.7 , 0 );
setMoveKey( spep_3 + 74, 1, 596.7, 619.5 , 0 );
setMoveKey( spep_3 + 76, 1, 616.6, 652.4 , 0 );
setMoveKey( spep_3 + 78, 1, 642.4, 679.7 , 0 );
setMoveKey( spep_3 + 87, 1, 642.4, 679.7 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
--setScaleKey( spep_3 + 1, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 2, 1, 0.8, 0.8 );
--setScaleKey( spep_3 + 3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 4, 1, 0.8, 0.8 );
--setScaleKey( spep_3 + 5, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 6, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 17, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 18, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 24, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 34, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 36, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 40, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 46, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 47, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 49, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 50, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 52, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 60, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 62, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 64, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 68, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 72, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 74, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 76, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 78, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 87, 1, 0.98, 0.98 );

setRotateKey( spep_3 + 0, 1, -8.5 );
--setRotateKey( spep_3 + 1, 1, -8.5 );
setRotateKey( spep_3 + 2, 1, -8.5 );
--setRotateKey( spep_3 + 3, 1, -8.5 );
setRotateKey( spep_3 + 4, 1, -8.5 );
--setRotateKey( spep_3 + 5, 1, -8.5 );
setRotateKey( spep_3 + 6, 1, -8.5 );
setRotateKey( spep_3 + 43, 1, -8.5 );
setRotateKey( spep_3 + 44, 1, -8.5 );
setRotateKey( spep_3 + 45, 1, -40 );
setRotateKey( spep_3 + 46, 1, -40 );
setRotateKey( spep_3 + 47, 1, 19.8 );
setRotateKey( spep_3 + 50, 1, 19.8 );
setRotateKey( spep_3 + 78, 1, 19.8 );
setRotateKey( spep_3 + 87, 1, 19.8 );

-- ** 集中線 ** --
d=1;
shuchusen3 = entryEffectLife( spep_3 + 0, 921, 42 -d, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 42 -d, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.01, 1.01 );
setEffScaleKey( spep_3 + 42 -d, shuchusen3, 1.01, 1.01 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 42 -d, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 42 -d, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
c=3;
ctdon = entryEffectLife( spep_3 + 46 -c, 10019, 24, 0x100, -1, 0, -24.4, 268.8 );
setEffMoveKey( spep_3 + 46 -c, ctdon, -24.4, 268.8 , 0 );
setEffMoveKey( spep_3 + 48 -c, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3 + 50 -c, ctdon, -6.5, 303 , 0 );
setEffMoveKey( spep_3 + 52 -c, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3 + 54 -c, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3 + 56 -c, ctdon, -6.4, 302.9 , 0 );
setEffMoveKey( spep_3 + 58 -c, ctdon, -6.5, 302.9 , 0 );
setEffMoveKey( spep_3 + 60 -c, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3 + 62 -c, ctdon, -6.6, 303 , 0 );
setEffMoveKey( spep_3 + 64 -c, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3 + 68 -c, ctdon, -6.6, 302.9 , 0 );
setEffMoveKey( spep_3 + 70 -c, ctdon, -6.5, 302.9 , 0 );

setEffScaleKey( spep_3 + 46 -c, ctdon, 2, 2 );
setEffScaleKey( spep_3 + 48 -c, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_3 + 50 -c, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_3 + 52 -c, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3 + 54 -c, ctdon, 2.9, 2.9 );
setEffScaleKey( spep_3 + 56 -c, ctdon, 3, 3 );
setEffScaleKey( spep_3 + 58 -c, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_3 + 60 -c, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3 + 62 -c, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_3 + 64 -c, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_3 + 66 -c, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_3 + 68 -c, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_3 + 70 -c, ctdon, 2, 2 );

setEffRotateKey( spep_3 + 46 -c, ctdon, 10.5 );
setEffRotateKey( spep_3 + 70 -c, ctdon, 10.5 );

setEffAlphaKey( spep_3 + 46 -c, ctdon, 255 );
setEffAlphaKey( spep_3 + 60 -c, ctdon, 255 );
setEffAlphaKey( spep_3 + 62 -c, ctdon, 253 );
setEffAlphaKey( spep_3 + 64 -c, ctdon, 240 );
setEffAlphaKey( spep_3 + 66 -c, ctdon, 203 );
setEffAlphaKey( spep_3 + 68 -c, ctdon, 131 );
setEffAlphaKey( spep_3 + 70 -c, ctdon, 13 );

-- ** 音 ** --
a2=4;
--炎に変わる2
stopSe( spep_3 + 20 -a1, SE012, 60 );
--炎に変わる3
stopSe( spep_3 + 46 -a1, SE013, 54 );
--炎に変わる4
stopSe( spep_3 + 40 -a1, SE014, 20 );
--敵ヒット
SE015 = playSe( spep_3 + 44 -a2, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 140);-- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
-- ** 次の準備 ** --
spep_4 = spep_3 + 88;
--------------------------------------
--敵吹っ飛び(112F)
--------------------------------------
a=110;
-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
--setMoveKey( spep_4 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9-a , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1-a , 0 );
setMoveKey( spep_4 + 122, 1, -1.9, -124.1-a , 0 );

setScaleKey( spep_4 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 2, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 4, 1, 0.4, 0.4 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 10, 1, 0.95, 0.95 );
setScaleKey( spep_4 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 16, 1, 1.30, 1.30 );
setScaleKey( spep_4 + 18, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 22, 1, 1.26, 1.26);
setScaleKey( spep_4 + 24, 1, 1.18, 1.18);
setScaleKey( spep_4 + 26, 1, 1.26 , 1.26 );
setScaleKey( spep_4 + 122, 1, 1.26 , 1.26 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 122, 1, 1080 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14, 1657, 98+10, 0x80, -1, 0, 0, 0 );--細い黒集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 122, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 122, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 122, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 122, shuchusen4, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, -3, 1 );--白い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, -3, 1 , 0 );
setEffMoveKey( spep_4 + 26, shuchusen5, -3, 1 , 0 );
setEffMoveKey( spep_4 + 28, shuchusen5, -4, 1 , 0 );
--setEffMoveKey( spep_4 + 122, shuchusen5, -4, 1 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen5, -4, 1 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
--setEffScaleKey( spep_4 + 122, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
--setEffRotateKey( spep_4 + 122, shuchusen5, 0 );
setEffRotateKey( spep_4 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen5, 0 );
--setEffAlphaKey( spep_4 + 122, shuchusen5, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14, 10005, 98+10, 0x100, -1, 0, 3.9, 316.1 );--ガッ

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 122, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 122, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_4 + 122, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 122, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 122, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 122, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 122, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 122, hibiware, 255 );

-- ** 音 ** --
--ガッ
SE016 = playSe( spep_4 + 10 +12, 1054 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 122, 0, 0, 0, 0, 140);-- ベース暗め　背景
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 12 );
endPhase( spep_4 + 112 );
end