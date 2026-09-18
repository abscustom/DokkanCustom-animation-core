--1021230:破壊神イワン_破壊神の慈悲_sp2132
--sp_effect_a9_00070

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
SP_01 = 156691;  --構え  ef_001
SP_02 = 156692;  --気弾を撃つ   ef_002
SP_03 = 156693;  --気弾が敵に飛ぶ  ef_003
SP_04 = 156694;  --フィニッシュ_敵より手前    ef_004_front
SP_05 = 156695;  --フィニッシュ_敵より奥      ef_004_back

--敵側

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
-- 構え(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 85, 515.5 , 0 );
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
--お腹ひかる
SE001 = playSe( spep_0 + 4, 1264 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 84 );
stopSe( spep_0 +96 +106 + 8, SE001, 0 );

--お腹ひかる
SE002 = playSe( spep_0 + 4, 1221 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 126 );

--顔カットイン
SE000 = playSe( spep_0 + 12, 1018 );

--構える
SE003 = playSe( spep_0 + 28, 1233 );
setPitch( spep_0 + 28, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 気弾を撃つ(106F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 106, 0x100, -1, 0, 0, 0 );  --気弾を撃つ(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 106, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 106 -1, tame, 255 );
setEffAlphaKey( spep_1 + 106, tame, 0 );

-- ** 音 ** --
--お腹金色に光る
SE004 = playSe( spep_1 + 4, 1266 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 15 );
setSeVolumeByWorkId( spep_1 + 9, SE004, 30 );
setSeVolumeByWorkId( spep_1 + 14, SE004, 45 );
setSeVolumeByWorkId( spep_1 + 19, SE004, 60 );
setSeVolumeByWorkId( spep_1 + 24, SE004, 75 );
setSeVolumeByWorkId( spep_1 + 29, SE004, 90 );
setSeVolumeByWorkId( spep_1 + 34, SE004, 100 );
stopSe( spep_1 +106 + 8, SE004, 0 );
setStartTimeMs( SE004,  767 );

--お腹金色に光る
SE005 = playSe( spep_1 + 14, 1281 );
stopSe( spep_1 +106 + 8, SE005, 0 );
setPitch( spep_1 + 14, SE005, -800 );
setTimeStretch( SE005, 0.7, 10, 1 );

--手前アップに
SE006 = playSe( spep_1 + 50, 1072 );
stopSe( spep_1 +106 + 8, SE006, 0 );

--手前アップに
SE007 = playSe( spep_1 + 66, 8 );
setSeVolumeByWorkId( spep_1 + 66, SE007, 112 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 24, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;


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
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 気弾が敵に飛ぶ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot = entryEffectLife( spep_3 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 );  --気弾が敵に飛ぶ(ef_003)
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 56, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 56 -1, shot, 255 );
setEffAlphaKey( spep_3 + 56, shot, 0 );

-- ** 音 ** --
--気弾発射
SE009 = playSe( spep_3 + 10, 1027 );
setSeVolumeByWorkId( spep_3 + 10, SE009, 75 );

--気弾発射
SE010 = playSe( spep_3 + 10, 1145 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前(ef_004_front)
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 176, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 176, finish, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 176, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 176, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 104 );

a1=150;
setMoveKey( spep_4 + 0, 1, 300.9 -a1 +100, 36.8 , 0 );
setMoveKey( spep_4 + 1, 1, 301 -a1 +100, 36.7 , 0 );
setMoveKey( spep_4 + 2, 1, 301.1 -a1 +90, 36.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 301.3 -a1 +90, 36 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 301.6 -a1 +80, 35.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 302 -a1 +80, 34.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 302.5 -a1 +70, 33.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 303 -a1 +70, 32.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 303.7 -a1 +60, 31.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 304.4 -a1 +60, 29.6 , 0 );

s1=0.2;
setScaleKey( spep_4 + 0, 1, 0.55 +s1, 0.55 +s1 );
setScaleKey( spep_4 -3 + 4, 1, 0.55 +s1, 0.55 +s1 );
setScaleKey( spep_4 -3 + 6, 1, 0.605 +s1, 0.605 +s1 );
setScaleKey( spep_4 -3 + 8, 1, 0.605 +s1, 0.605 +s1 );
setScaleKey( spep_4 -3 + 10, 1, 0.66 +s1, 0.66 +s1 );
setScaleKey( spep_4 -3 + 12, 1, 0.66 +s1, 0.66 +s1 );
setScaleKey( spep_4 -3 + 14, 1, 0.715 +s1, 0.715 +s1 );
setScaleKey( spep_4 -3 + 16, 1, 0.77 +s1, 0.77 +s1 );
setScaleKey( spep_4 -3 + 18, 1, 0.825 +s1, 0.825 +s1 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 16 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 305.3 -a1 +50, 27.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 306.2 -a1 +40, 26 , 0 );
    setMoveKey( SP_dodge + 4, 1, 307.2 -a1 +30, 23.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 308.3 -a1 +20, 21.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 309.5 -a1 +10, 19.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 310.7 -a1, 16.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.88 +s1, 0.88 +s1 );
    setScaleKey( SP_dodge + 2, 1, 0.935 +s1, 0.935 +s1 );
    setScaleKey( SP_dodge + 4, 1, 0.99 +s1, 0.99 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.1 +s1, 1.1 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.155 +s1, 1.155 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.265 +s1, 1.265 +s1 );

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
setDisp( spep_4 -3 + 60, 1, 0 );
changeAnime( spep_4 -3 + 32, 1, 108 );


setMoveKey( spep_4 -3 + 20, 1, 305.3 -a1 +50, 27.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 306.2 -a1 +40, 26 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 307.2 -a1 +30, 23.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 308.3 -a1 +20, 21.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 309.5 -a1 +10, 19.3 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 310.7 -a1, 16.7 , 0 );

a2=170;
b1=20;
setMoveKey( spep_4 -3 + 32, 1, 299.5 -a2, -94.6 +100 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 322.2 -a2, 134.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 321 -a2, -61.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 316.8 -a2, -64.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 308.6 -a2, 32.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 328.5 -a2, 24 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 341.4 -a2, -23.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 344.8 -a2, -16.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 348.1 -a2, -9.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 331.8 -a1, -2.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 300.8 -110, 4.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 285.2 -80, 9.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 274.9 -70, 14.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 270.1 -60, 18.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 270.1 -60, 18.5 , 0 );

s2=0.4;
setScaleKey( spep_4 -3 + 20, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_4 -3 + 22, 1, 0.935 +s1, 0.935 +s1 );
setScaleKey( spep_4 -3 + 24, 1, 0.99 +s1, 0.99 +s1 );
setScaleKey( spep_4 -3 + 26, 1, 1.1 +s1, 1.1 +s1 );
setScaleKey( spep_4 -3 + 28, 1, 1.155 +s1, 1.155 +s1 );
setScaleKey( spep_4 -3 + 31, 1, 1.265 +s1, 1.265 +s1 );
setScaleKey( spep_4 -3 + 32, 1, 1.265 +s2, 1.265 +s2 );
setScaleKey( spep_4 -3 + 48, 1, 1.265 +s2, 1.265 +s2 );
setScaleKey( spep_4 -3 + 50, 1, 0.935 +s1, 0.935 +s1 );
setScaleKey( spep_4 -3 + 52, 1, 0.715 +s1, 0.715 +s1 );
setScaleKey( spep_4 -3 + 54, 1, 0.45 +s1, 0.45 +s1 );
setScaleKey( spep_4 -3 + 56, 1, 0.38 +s1, 0.38 +s1 );
setScaleKey( spep_4 -3 + 58, 1, 0.32 +s1, 0.32 +s1 );
setScaleKey( spep_4 -3 + 60, 1, 0.32 +s1, 0.32 +s1 );

setRotateKey( spep_4 -3 + 31, 1, 0 );
setRotateKey( spep_4 -3 + 32, 1, 23.7 );
setRotateKey( spep_4 -3 + 34, 1, -16 );
setRotateKey( spep_4 -3 + 36, 1, 0 );
setRotateKey( spep_4 -3 + 60, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE011 = playSe( spep_4 + 26, 1011 );

--爆発
SE012 = playSe( spep_4 + 62, 1023 );

--ラスト爆発
SE013 = playSe( spep_4 + 92, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 66 );
endPhase( spep_4 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 85, 515.5 , 0 );
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
--お腹ひかる
SE001 = playSe( spep_0 + 4, 1264 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 84 );
stopSe( spep_0 +96 +106 + 8, SE001, 0 );

--お腹ひかる
SE002 = playSe( spep_0 + 4, 1221 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 126 );

--顔カットイン
SE000 = playSe( spep_0 + 12, 1018 );

--構える
SE003 = playSe( spep_0 + 28, 1233 );
setPitch( spep_0 + 28, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 気弾を撃つ(106F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 106, 0x100, -1, 0, 0, 0 );  --気弾を撃つ(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 106, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 106, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 106 -1, tame, 255 );
setEffAlphaKey( spep_1 + 106, tame, 0 );

-- ** 音 ** --
--お腹金色に光る
SE004 = playSe( spep_1 + 4, 1266 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 15 );
setSeVolumeByWorkId( spep_1 + 9, SE004, 30 );
setSeVolumeByWorkId( spep_1 + 14, SE004, 45 );
setSeVolumeByWorkId( spep_1 + 19, SE004, 60 );
setSeVolumeByWorkId( spep_1 + 24, SE004, 75 );
setSeVolumeByWorkId( spep_1 + 29, SE004, 90 );
setSeVolumeByWorkId( spep_1 + 34, SE004, 100 );
stopSe( spep_1 +106 + 8, SE004, 0 );
setStartTimeMs( SE004,  767 );

--お腹金色に光る
SE005 = playSe( spep_1 + 14, 1281 );
stopSe( spep_1 +106 + 8, SE005, 0 );
setPitch( spep_1 + 14, SE005, -800 );
setTimeStretch( SE005, 0.7, 10, 1 );

--手前アップに
SE006 = playSe( spep_1 + 50, 1072 );
stopSe( spep_1 +106 + 8, SE006, 0 );

--手前アップに
SE007 = playSe( spep_1 + 66, 8 );
setSeVolumeByWorkId( spep_1 + 66, SE007, 112 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 24, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;


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
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 気弾が敵に飛ぶ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot = entryEffectLife( spep_3 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 );  --気弾が敵に飛ぶ(ef_003)
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 56, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 56 -1, shot, 255 );
setEffAlphaKey( spep_3 + 56, shot, 0 );

-- ** 音 ** --
--気弾発射
SE009 = playSe( spep_3 + 10, 1027 );
setSeVolumeByWorkId( spep_3 + 10, SE009, 75 );

--気弾発射
SE010 = playSe( spep_3 + 10, 1145 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前(ef_004_front)
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 176, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 176, finish, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 176, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 176, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 104 );

a1=150;
setMoveKey( spep_4 + 0, 1, 300.9 -a1 +100, 36.8 , 0 );
setMoveKey( spep_4 + 1, 1, 301 -a1 +100, 36.7 , 0 );
setMoveKey( spep_4 + 2, 1, 301.1 -a1 +90, 36.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 301.3 -a1 +90, 36 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 301.6 -a1 +80, 35.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 302 -a1 +80, 34.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 302.5 -a1 +70, 33.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 303 -a1 +70, 32.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 303.7 -a1 +60, 31.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 304.4 -a1 +60, 29.6 , 0 );

s1=0.2;
setScaleKey( spep_4 + 0, 1, 0.55 +s1, 0.55 +s1 );
setScaleKey( spep_4 -3 + 4, 1, 0.55 +s1, 0.55 +s1 );
setScaleKey( spep_4 -3 + 6, 1, 0.605 +s1, 0.605 +s1 );
setScaleKey( spep_4 -3 + 8, 1, 0.605 +s1, 0.605 +s1 );
setScaleKey( spep_4 -3 + 10, 1, 0.66 +s1, 0.66 +s1 );
setScaleKey( spep_4 -3 + 12, 1, 0.66 +s1, 0.66 +s1 );
setScaleKey( spep_4 -3 + 14, 1, 0.715 +s1, 0.715 +s1 );
setScaleKey( spep_4 -3 + 16, 1, 0.77 +s1, 0.77 +s1 );
setScaleKey( spep_4 -3 + 18, 1, 0.825 +s1, 0.825 +s1 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 16 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 305.3 -a1 +50, 27.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 306.2 -a1 +40, 26 , 0 );
    setMoveKey( SP_dodge + 4, 1, 307.2 -a1 +30, 23.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 308.3 -a1 +20, 21.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 309.5 -a1 +10, 19.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 310.7 -a1, 16.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.88 +s1, 0.88 +s1 );
    setScaleKey( SP_dodge + 2, 1, 0.935 +s1, 0.935 +s1 );
    setScaleKey( SP_dodge + 4, 1, 0.99 +s1, 0.99 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.1 +s1, 1.1 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.155 +s1, 1.155 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.265 +s1, 1.265 +s1 );

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
setDisp( spep_4 -3 + 60, 1, 0 );
changeAnime( spep_4 -3 + 32, 1, 108 );


setMoveKey( spep_4 -3 + 20, 1, 305.3 -a1 +50, 27.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 306.2 -a1 +40, 26 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 307.2 -a1 +30, 23.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 308.3 -a1 +20, 21.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 309.5 -a1 +10, 19.3 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 310.7 -a1, 16.7 , 0 );

a2=170;
b1=20;
setMoveKey( spep_4 -3 + 32, 1, 299.5 -a2, -94.6 +100 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 322.2 -a2, 134.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 321 -a2, -61.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 316.8 -a2, -64.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 308.6 -a2, 32.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 328.5 -a2, 24 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 341.4 -a2, -23.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 344.8 -a2, -16.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 348.1 -a2, -9.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 331.8 -a1, -2.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 300.8 -110, 4.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 285.2 -80, 9.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 274.9 -70, 14.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 270.1 -60, 18.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 270.1 -60, 18.5 , 0 );

s2=0.4;
setScaleKey( spep_4 -3 + 20, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_4 -3 + 22, 1, 0.935 +s1, 0.935 +s1 );
setScaleKey( spep_4 -3 + 24, 1, 0.99 +s1, 0.99 +s1 );
setScaleKey( spep_4 -3 + 26, 1, 1.1 +s1, 1.1 +s1 );
setScaleKey( spep_4 -3 + 28, 1, 1.155 +s1, 1.155 +s1 );
setScaleKey( spep_4 -3 + 31, 1, 1.265 +s1, 1.265 +s1 );
setScaleKey( spep_4 -3 + 32, 1, 1.265 +s2, 1.265 +s2 );
setScaleKey( spep_4 -3 + 48, 1, 1.265 +s2, 1.265 +s2 );
setScaleKey( spep_4 -3 + 50, 1, 0.935 +s1, 0.935 +s1 );
setScaleKey( spep_4 -3 + 52, 1, 0.715 +s1, 0.715 +s1 );
setScaleKey( spep_4 -3 + 54, 1, 0.45 +s1, 0.45 +s1 );
setScaleKey( spep_4 -3 + 56, 1, 0.38 +s1, 0.38 +s1 );
setScaleKey( spep_4 -3 + 58, 1, 0.32 +s1, 0.32 +s1 );
setScaleKey( spep_4 -3 + 60, 1, 0.32 +s1, 0.32 +s1 );

setRotateKey( spep_4 -3 + 31, 1, 0 );
setRotateKey( spep_4 -3 + 32, 1, 23.7 );
setRotateKey( spep_4 -3 + 34, 1, -16 );
setRotateKey( spep_4 -3 + 36, 1, 0 );
setRotateKey( spep_4 -3 + 60, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE011 = playSe( spep_4 + 26, 1011 );

--爆発
SE012 = playSe( spep_4 + 62, 1023 );

--ラスト爆発
SE013 = playSe( spep_4 + 92, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 66 );
endPhase( spep_4 + 166 );

end