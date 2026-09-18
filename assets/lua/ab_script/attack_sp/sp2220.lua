--1022300:ピッコロ_爆力魔波_sp2220
--sp_effect_a1_00301

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
SP_01 = 157456;	--瞬間移動ef_001
SP_02 = 157457;	--ピッコロ蹴り_敵より手前	ef_002_front
SP_03 = 157458;	--ピッコロ蹴り_敵より奥	ef_002_back
SP_04 = 157459;	--フィニッシュ気溜め	ef_003
SP_05 = 157460;	--フィニッシュ_敵より手前	ef_004_front
SP_06 = 157461;	--フィニッシュ_敵より奥	ef_004_back

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
-- 瞬間移動(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --瞬間移動	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 8;
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
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 = playSe( spep_0 + 18, 1018 );

--瞬間移動
SE003 = playSe( spep_0 + 78, 1109 );

--飛びかかる
SE004 = playSe( spep_0 + 114, 1117 );
stopSe( spep_0 +116 + 22, SE004, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_0 + 98, 18, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- ピッコロ蹴り(70F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
pcick_f = entryEffectLife( spep_1 + 0, SP_02, 68, 0x100, -1, 0, 0, 0 );  --ピッコロ蹴り_敵より手前	ef_002_front
setEffMoveKey( spep_1 + 0, pcick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, pcick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, pcick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, pcick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pcick_f, 0 );
setEffRotateKey( spep_1 + 68, pcick_f, 0 );
setEffAlphaKey( spep_1 + 0, pcick_f, 255 );
setEffAlphaKey( spep_1 + 68 -1, pcick_f, 255 );
setEffAlphaKey( spep_1 + 68, pcick_f, 0 );

pcikc_b = entryEffectLife( spep_1 + 0, SP_03, 68, 0x80, -1, 0, 0, 0 );  --ピッコロ蹴り_敵より奥	ef_002_back
setEffMoveKey( spep_1 + 0, pcikc_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, pcikc_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, pcikc_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, pcikc_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pcikc_b, 0 );
setEffRotateKey( spep_1 + 68, pcikc_b, 0 );
setEffAlphaKey( spep_1 + 0, pcikc_b, 255 );
setEffAlphaKey( spep_1 + 68 -1, pcikc_b, 255 );
setEffAlphaKey( spep_1 + 68, pcikc_b, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 104 );

b1 = 20;
setMoveKey( spep_1 + 0, 1, 699.1, 0 +b1 , 0 );
setMoveKey( spep_1 + 1, 1, 695.6, 0 +b1 , 0 );
setMoveKey( spep_1 + 2, 1, 685.2, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 668, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 643.8, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 612.7, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 574.7, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 529.8, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 478, 0 +b1 , 0 );

s1 = 0.3;
setScaleKey( spep_1 -3 + 0, 1, 1.6 +s1, 1.6 +s1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 68 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 478, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 419.3, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 353.6, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 281.1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 201.7, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 115.3, 0 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.6 +s1, 1.6 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.6 +s1, 1.6 +s1 );

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
setDisp( spep_1 -3 + 50, 1, 0 );
changeAnime( spep_1 -3 + 30, 1, 106 );

b2 =80
setMoveKey( spep_1 -3 + 18, 1, 419.3, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 353.6, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 281.1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 201.7, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 115.3, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 22.1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 226.4, -5.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 457.9, -14.9 +b2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 481, -24.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 544.7, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 632.5, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 696.3, -4.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 768.1, -18.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 764.1, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 772.1, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 768.1, -10.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 768.1, -14.4 +b2 , 0 );

s2 = 0.4;
setScaleKey( spep_1 -3 + 29, 1, 1.6 +s1, 1.6 +s1 );
setScaleKey( spep_1 -3 + 30, 1, 1.86 +s2, 1.86 +s2 );
setScaleKey( spep_1 -3 + 32, 1, 1.68 +s2, 1.68 +s2 );
setScaleKey( spep_1 -3 + 34, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_1 -3 + 50, 1, 1.5 +s2, 1.5 +s2 );

setRotateKey( spep_1 -3 + 50, 1, 0 );


-- ** 音 ** --
--飛びかかる
SE005 = playSe( spep_1 + 4, 1003 );

--キック
SE006 = playSe( spep_1 + 20, 1001 );
setSeVolumeByWorkId( spep_1 + 20, SE006, 65 );

--キック
SE007 = playSe( spep_1 + 22, 1010 );

--キック
SE008 = playSe( spep_1 + 24, 1110 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 68;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

--気弾溜め
SE010 = playSe( spep_2 + 90, 1122,"",0.6 );
setSeVolumeByWorkId( spep_2 + 90, SE010, 34 );
setSeVolumeByWorkId( spep_2 + 92, SE010, 67 );
setSeVolumeByWorkId( spep_2 + 94, SE010, 100 );
setStartTimeMs( SE010,  167 );

--気弾溜め
SE011 = playSe( spep_2 + 92, 1262,"",0.6 );
stopSe( spep_2 +94 + 44, SE011, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- フィニッシュ気溜め(146F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_3 + 0, SP_04, 145, 0x100, -1, 0, 0, 0 );  --フィニッシュ気溜め	ef_003
setEffMoveKey( spep_3 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 145, kidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 145, kidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan, 0 );
setEffRotateKey( spep_3 + 145, kidan, 0 );
setEffAlphaKey( spep_3 + 0, kidan, 255 );
setEffAlphaKey( spep_3 + 145 -1, kidan, 255 );
setEffAlphaKey( spep_3 + 145, kidan, 0 );

-- ** 音 ** --
--気弾発射
SE012 = playSe( spep_3 + 44, 1146 );

--気弾発射
SE013 = playSe( spep_3 + 44, 1027 );
setSeVolumeByWorkId( spep_3 + 44, SE013, 55 );

--気弾飛んでいく
SE014 = playSe( spep_3 + 136, 1202,"",0.6 );
setSeVolumeByWorkId( spep_3 + 136, SE014, 141 );
setTimeStretch( SE014, 0.91, 10, 1 );

--気弾飛んでいく
SE015 = playSe( spep_3 + 136, 1021,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 145 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 145;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前    ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 148, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 148, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥  ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 148, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 148, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 30, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

a4 = 15;
setMoveKey( spep_4 + 0, 1, 14.2 +a4, 25.7 , 0 );
setMoveKey( spep_4 + 1, 1, 12.4 +a4, 23.3 , 0 );
setMoveKey( spep_4 + 2, 1, 10.7 +a4, 20.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 8.9 +a4, 18.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 7.1 +a4, 15.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 5.4 +a4, 12.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 3.6 +a4, 9.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 1.9 +a4, 7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 0.1 +a4, 4.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -1.6 +a4, 1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -3.4 +a4, -2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -5.1 +a4, -5.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -6.9 +a4, -8.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -8.7 +a4, -11.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -10.4 +a4, -14.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -10.4 +a4, -14.7 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 2, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 4, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 6, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 8, 1, 1.515, 1.515 );
setScaleKey( spep_4 -3 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 12, 1, 1.365, 1.365 );
setScaleKey( spep_4 -3 + 14, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_4 -3 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 22, 1, 0.915, 0.915 );
setScaleKey( spep_4 -3 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 26, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 28, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 30, 1, 0.57, 0.57 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 1, 1, 0.1 );
setRotateKey( spep_4 + 2, 1, 0.2 );
setRotateKey( spep_4 -3 + 6, 1, 0.5 );
setRotateKey( spep_4 -3 + 8, 1, 0.9 );
setRotateKey( spep_4 -3 + 10, 1, 1.4 );
setRotateKey( spep_4 -3 + 12, 1, 2 );
setRotateKey( spep_4 -3 + 14, 1, 2.7 );
setRotateKey( spep_4 -3 + 16, 1, 3.6 );
setRotateKey( spep_4 -3 + 18, 1, 4.5 );
setRotateKey( spep_4 -3 + 20, 1, 5.6 );
setRotateKey( spep_4 -3 + 22, 1, 6.8 );
setRotateKey( spep_4 -3 + 24, 1, 8.1 );
setRotateKey( spep_4 -3 + 26, 1, 9.5 );
setRotateKey( spep_4 -3 + 28, 1, 11 );
setRotateKey( spep_4 -3 + 30, 1, 11 );

-- ** 音 ** --
--爆発
SE016 = playSe( spep_4 + 22, 1023 );
setSeVolumeByWorkId( spep_4 + 22, SE016, 83 );

--爆発
SE017 = playSe( spep_4 + 22, 1159 );
setSeVolumeByWorkId( spep_4 + 22, SE017, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 28 );
endPhase( spep_4 + 138 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 瞬間移動(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --瞬間移動    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 8;
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
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 = playSe( spep_0 + 18, 1018 );

--瞬間移動
SE003 = playSe( spep_0 + 78, 1109 );

--飛びかかる
SE004 = playSe( spep_0 + 114, 1117 );
stopSe( spep_0 +116 + 22, SE004, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_0 + 98, 18, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- ピッコロ蹴り(70F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
pcick_f = entryEffectLife( spep_1 + 0, SP_02, 68, 0x100, -1, 0, 0, 0 );  --ピッコロ蹴り_敵より手前 ef_002_front
setEffMoveKey( spep_1 + 0, pcick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, pcick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, pcick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, pcick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pcick_f, 0 );
setEffRotateKey( spep_1 + 68, pcick_f, 0 );
setEffAlphaKey( spep_1 + 0, pcick_f, 255 );
setEffAlphaKey( spep_1 + 68 -1, pcick_f, 255 );
setEffAlphaKey( spep_1 + 68, pcick_f, 0 );

pcikc_b = entryEffectLife( spep_1 + 0, SP_03, 68, 0x80, -1, 0, 0, 0 );  --ピッコロ蹴り_敵より奥   ef_002_back
setEffMoveKey( spep_1 + 0, pcikc_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, pcikc_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, pcikc_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, pcikc_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pcikc_b, 0 );
setEffRotateKey( spep_1 + 68, pcikc_b, 0 );
setEffAlphaKey( spep_1 + 0, pcikc_b, 255 );
setEffAlphaKey( spep_1 + 68 -1, pcikc_b, 255 );
setEffAlphaKey( spep_1 + 68, pcikc_b, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 104 );

b1 = 20;
setMoveKey( spep_1 + 0, 1, 699.1, 0 +b1 , 0 );
setMoveKey( spep_1 + 1, 1, 695.6, 0 +b1 , 0 );
setMoveKey( spep_1 + 2, 1, 685.2, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 668, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 643.8, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 612.7, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 574.7, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 529.8, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 478, 0 +b1 , 0 );

s1 = 0.3;
setScaleKey( spep_1 -3 + 0, 1, 1.6 +s1, 1.6 +s1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 68 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 478, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 419.3, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 353.6, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 281.1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 201.7, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 115.3, 0 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.6 +s1, 1.6 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.6 +s1, 1.6 +s1 );

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
setDisp( spep_1 -3 + 50, 1, 0 );
changeAnime( spep_1 -3 + 30, 1, 106 );

b2 =80
setMoveKey( spep_1 -3 + 18, 1, 419.3, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 353.6, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 281.1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 201.7, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 115.3, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 22.1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 226.4, -5.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 457.9, -14.9 +b2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 481, -24.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 544.7, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 632.5, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 696.3, -4.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 768.1, -18.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 764.1, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 772.1, -12.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 768.1, -10.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 768.1, -14.4 +b2 , 0 );

s2 = 0.4;
setScaleKey( spep_1 -3 + 29, 1, 1.6 +s1, 1.6 +s1 );
setScaleKey( spep_1 -3 + 30, 1, 1.86 +s2, 1.86 +s2 );
setScaleKey( spep_1 -3 + 32, 1, 1.68 +s2, 1.68 +s2 );
setScaleKey( spep_1 -3 + 34, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_1 -3 + 50, 1, 1.5 +s2, 1.5 +s2 );

setRotateKey( spep_1 -3 + 50, 1, 0 );


-- ** 音 ** --
--飛びかかる
SE005 = playSe( spep_1 + 4, 1003 );

--キック
SE006 = playSe( spep_1 + 20, 1001 );
setSeVolumeByWorkId( spep_1 + 20, SE006, 65 );

--キック
SE007 = playSe( spep_1 + 22, 1010 );

--キック
SE008 = playSe( spep_1 + 24, 1110 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 68;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

--気弾溜め
SE010 = playSe( spep_2 + 90, 1122,"",0.6 );
setSeVolumeByWorkId( spep_2 + 90, SE010, 34 );
setSeVolumeByWorkId( spep_2 + 92, SE010, 67 );
setSeVolumeByWorkId( spep_2 + 94, SE010, 100 );
setStartTimeMs( SE010,  167 );

--気弾溜め
SE011 = playSe( spep_2 + 92, 1262,"",0.6 );
stopSe( spep_2 +94 + 44, SE011, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- フィニッシュ気溜め(146F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_3 + 0, SP_04, 145, 0x100, -1, 0, 0, 0 );  --フィニッシュ気溜め ef_003
setEffMoveKey( spep_3 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 145, kidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 145, kidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan, 0 );
setEffRotateKey( spep_3 + 145, kidan, 0 );
setEffAlphaKey( spep_3 + 0, kidan, 255 );
setEffAlphaKey( spep_3 + 145 -1, kidan, 255 );
setEffAlphaKey( spep_3 + 145, kidan, 0 );

-- ** 音 ** --
--気弾発射
SE012 = playSe( spep_3 + 44, 1146 );

--気弾発射
SE013 = playSe( spep_3 + 44, 1027 );
setSeVolumeByWorkId( spep_3 + 44, SE013, 55 );

--気弾飛んでいく
SE014 = playSe( spep_3 + 136, 1202,"",0.6 );
setSeVolumeByWorkId( spep_3 + 136, SE014, 141 );
setTimeStretch( SE014, 0.91, 10, 1 );

--気弾飛んでいく
SE015 = playSe( spep_3 + 136, 1021,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 145 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 145;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前    ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 148, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 148, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥  ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 148, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 148, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 30, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

a4 = 15;
setMoveKey( spep_4 + 0, 1, 14.2 +a4, 25.7 , 0 );
setMoveKey( spep_4 + 1, 1, 12.4 +a4, 23.3 , 0 );
setMoveKey( spep_4 + 2, 1, 10.7 +a4, 20.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 8.9 +a4, 18.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 7.1 +a4, 15.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 5.4 +a4, 12.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 3.6 +a4, 9.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 1.9 +a4, 7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 0.1 +a4, 4.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -1.6 +a4, 1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -3.4 +a4, -2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -5.1 +a4, -5.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -6.9 +a4, -8.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -8.7 +a4, -11.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -10.4 +a4, -14.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -10.4 +a4, -14.7 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 2, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 4, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 6, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 8, 1, 1.515, 1.515 );
setScaleKey( spep_4 -3 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 12, 1, 1.365, 1.365 );
setScaleKey( spep_4 -3 + 14, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_4 -3 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 22, 1, 0.915, 0.915 );
setScaleKey( spep_4 -3 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 26, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 28, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 30, 1, 0.57, 0.57 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 1, 1, 0.1 );
setRotateKey( spep_4 + 2, 1, 0.2 );
setRotateKey( spep_4 -3 + 6, 1, 0.5 );
setRotateKey( spep_4 -3 + 8, 1, 0.9 );
setRotateKey( spep_4 -3 + 10, 1, 1.4 );
setRotateKey( spep_4 -3 + 12, 1, 2 );
setRotateKey( spep_4 -3 + 14, 1, 2.7 );
setRotateKey( spep_4 -3 + 16, 1, 3.6 );
setRotateKey( spep_4 -3 + 18, 1, 4.5 );
setRotateKey( spep_4 -3 + 20, 1, 5.6 );
setRotateKey( spep_4 -3 + 22, 1, 6.8 );
setRotateKey( spep_4 -3 + 24, 1, 8.1 );
setRotateKey( spep_4 -3 + 26, 1, 9.5 );
setRotateKey( spep_4 -3 + 28, 1, 11 );
setRotateKey( spep_4 -3 + 30, 1, 11 );

-- ** 音 ** --
--爆発
SE016 = playSe( spep_4 + 22, 1023 );
setSeVolumeByWorkId( spep_4 + 22, SE016, 83 );

--爆発
SE017 = playSe( spep_4 + 22, 1159 );
setSeVolumeByWorkId( spep_4 + 22, SE017, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 28 );
endPhase( spep_4 + 138 );

end