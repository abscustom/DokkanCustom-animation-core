--1021890:フリーザ(最終形態)_デスビーム_sp2204
--sp_effect_a3_00079

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
SP_01 = 157165;  --気ダメ  ef_001
SP_02 = 157166;  --発射〜着弾：手前 ef_002
SP_03 = 157167;  --発射〜着弾：奥  ef_003

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
-- 気ダメ(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --気ダメ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 26;
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
SE001 = playSe( spep_0 + 0, 1036 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--入り
SE002 = playSe( spep_0 + 0, 1002 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 83 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036 );
setPitch( spep_0 + 24, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--顔カットイン
SE004 = playSe( spep_0 + 30, 1018 );

--オーラ
SE005 = playSe( spep_0 + 48, 1036 );
setPitch( spep_0 + 48, SE005, -300 );
setTimeStretch( SE005, 0.8, 10, 1 );

--オーラ
SE006 = playSe( spep_0 + 72, 1036 );
setPitch( spep_0 + 72, SE006, -300 );
setTimeStretch( SE006, 0.8, 10, 1 );

--オーラ
SE007 = playSe( spep_0 + 96, 1036 );
setPitch( spep_0 + 96, SE007, -300 );
setTimeStretch( SE007, 0.8, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 +2, 0, 10, 10, 10, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


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
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射〜着弾(136F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --発射〜着弾：手前  ef_002
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 136, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 136, shot_f, 255 );

shot_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --発射〜着弾：奥    ef_003
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 136, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 136, shot_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 32,  10012, 37, 0x100, -1, 0, 26.9, 340.9 );   --ズォッ
setEffMoveKey( spep_2 -3 + 32, ctzuo, 26.9, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, 10.9, 351.6 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 69, ctzuo, 26.8, 340.9 , 0 );

setEffScaleKey( spep_2 -3 + 32, ctzuo, 0.81, 0.81 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 4.15, 4.15 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 3.6, 3.6 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 69, ctzuo, 3.06, 3.06 );

setEffRotateKey( spep_2 -3 + 32, ctzuo, -15.4 );
setEffRotateKey( spep_2 -3 + 69, ctzuo, -15.4 );

setEffAlphaKey( spep_2 -3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 69, ctzuo, 255 );

ctzudodo = entryEffectLife( spep_2 -3 + 104,  10014, 34, 0x100, -1, 0, 23.3, 367.8 );   --ズドドドッ
setEffMoveKey( spep_2 -3 + 104, ctzudodo, 23.3, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctzudodo, 26.4, 377.8 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctzudodo, 22.8, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctzudodo, 26.1, 376.6 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctzudodo, 25.9, 376 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctzudodo, 26.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctzudodo, 32.3, 376 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctzudodo, 32.5, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctzudodo, 38.7, 376 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctzudodo, 38.9, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctzudodo, 45.1, 376 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctzudodo, 45.3, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctzudodo, 51.5, 376 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctzudodo, 51.7, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctzudodo, 57.9, 376 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctzudodo, 58.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctzudodo, 64.3, 376 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctzudodo, 64.5, 367.8 , 0 );

setEffScaleKey( spep_2 -3 + 104, ctzudodo, 1.41, 1.41 );
setEffScaleKey( spep_2 -3 + 106, ctzudodo, 3.35, 3.35 );
setEffScaleKey( spep_2 -3 + 108, ctzudodo, 3.14, 3.14 );
setEffScaleKey( spep_2 -3 + 110, ctzudodo, 2.92, 2.92 );
setEffScaleKey( spep_2 -3 + 112, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 138, ctzudodo, 2.71, 2.71 );

setEffRotateKey( spep_2 -3 + 104, ctzudodo, 59 );
setEffRotateKey( spep_2 -3 + 138, ctzudodo, 59 );

setEffAlphaKey( spep_2 -3 + 104, ctzudodo, 255 );
setEffAlphaKey( spep_2 -3 + 138, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 70, 1, 1 );
changeAnime( spep_2 -3 +70 , 1, 104 );

setMoveKey( spep_2 -3 + 70, 1, -840.3, -11 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -724.9, -9.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -615.5, -8.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -512.1, -7.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -414.8, -6.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -323.4, -6.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -238, -6.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -158.6, -6.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -134.4, -7.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -111.1, -7.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -88.7, -8.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -67.2, -8.9 , 0 );

setScaleKey( spep_2 -3 + 70, 1, 6.71, 6.71 );
setScaleKey( spep_2 -3 + 72, 1, 6.02, 6.02 );
setScaleKey( spep_2 -3 + 74, 1, 5.36, 5.36 );
setScaleKey( spep_2 -3 + 76, 1, 4.72, 4.72 );
setScaleKey( spep_2 -3 + 78, 1, 4.12, 4.12 );
setScaleKey( spep_2 -3 + 80, 1, 3.55, 3.55 );
setScaleKey( spep_2 -3 + 82, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 84, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 86, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 88, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 90, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 92, 1, 2.08, 2.08 );

-- ** 音 ** --
--発車前オーラ
SE009 = playSe( spep_2 + 4, 1036 );
setSeVolumeByWorkId( spep_2 + 4, SE009, 68 );
setPitch( spep_2 + 4, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

--ビーム発射
SE010 = playSe( spep_2 + 26, 1256 );

--ビーム発射
SE011 = playSe( spep_2 + 26, 1114 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 +2, 0, 10, 10, 10, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 27, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -67.2, -8.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, -46.5, -9.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, -26.8, -10 , 0 );
    setMoveKey( SP_dodge + 6, 1, -8.1, -10.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 9.8, -11.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 26.8, -11.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.08, 2.08 );
    setScaleKey( SP_dodge + 2, 1, 1.98, 1.98 );
    setScaleKey( SP_dodge + 4, 1, 1.88, 1.88 );
    setScaleKey( SP_dodge + 6, 1, 1.79, 1.79 );
    setScaleKey( SP_dodge + 8, 1, 1.7, 1.7 );
    setScaleKey( SP_dodge + 10, 1, 1.61, 1.61 );

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
changeAnime( spep_2 -3 + 108, 1, 108 );

setMoveKey( spep_2 -3 + 94, 1, -46.5, -9.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -26.8, -10 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -8.1, -10.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 9.8, -11.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 26.8, -11.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 42.9, -12.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 59.3, -12.3 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 59.3, -12.3 , 0 );--
setMoveKey( spep_2 -3 + 108, 1, 103.9, 9.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 136.2, 12.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 165.7, 9.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 206.5, 9.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 242.4, 14.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 289.6, 7 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 335.9, 5.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 385.3, 3.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 407.5, 2.8 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 429.8, 1.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 452.1, 0.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 474.3, -0.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 496.6, -1.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 518.9, -2.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 541.2, -3.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 563.5, -4.9 , 0 );

setScaleKey( spep_2 -3 + 94, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 96, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 98, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 100, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 102, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 104, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 107, 1, 1.47, 1.47 );--
setScaleKey( spep_2 -3 + 108, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 110, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 114, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 116, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 118, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 120, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 122, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 124, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 126, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 128, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 130, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 132, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 134, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 136, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 138, 1, 0.12, 0.12 );

setRotateKey( spep_2 -3 + 70, 1, 0 );
setRotateKey( spep_2 -3 + 107, 1, 0 );--
setRotateKey( spep_2 -3 + 108, 1, 5 );
setRotateKey( spep_2 -3 + 110, 1, 4.5 );
setRotateKey( spep_2 -3 + 112, 1, 3.9 );
setRotateKey( spep_2 -3 + 114, 1, 3.2 );
setRotateKey( spep_2 -3 + 116, 1, 2.5 );
setRotateKey( spep_2 -3 + 118, 1, 1.7 );
setRotateKey( spep_2 -3 + 120, 1, 0.9 );
setRotateKey( spep_2 -3 + 122, 1, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0 );

-- ** 音 ** --
--ヒット
SE012 = playSe( spep_2 + 92, 1177 );
setSeVolumeByWorkId( spep_2 + 92, SE012, 89 );
stopSe( spep_2 +136 + 0, SE012, 16 );

--ヒット
SE013 = playSe( spep_2 + 92, 1306 );
setSeVolumeByWorkId( spep_2 + 92, SE013, 72 );
stopSe( spep_2 +136 + 0, SE013, 16 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

--finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
--setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
--setEffMoveKey( spep_3 + 100, finish_b, 0, 0 , 0 );
--setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
--setEffScaleKey( spep_3 + 100, finish_b, 1.0, 1.0 );
--setEffRotateKey( spep_3 + 0, finish_b, 0 );
--setEffRotateKey( spep_3 + 100, finish_b, 0 );
--setEffAlphaKey( spep_3 + 0, finish_b, 255 );
--setEffAlphaKey( spep_3 + 100, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, -0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, -0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, -0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, -0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, -0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, -0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, -0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 音 ** --

--爆発
SE014 = playSe( spep_3 + 0, 1025 );
--ガッ
SE015 = playSe( spep_3 + 12, 1054 );

-- ** 背景 ** --
--entryFadeBg( spep_3 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気ダメ(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --気ダメ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 26;
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
SE001 = playSe( spep_0 + 0, 1036 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--入り
SE002 = playSe( spep_0 + 0, 1002 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 83 );

--オーラ
SE003 = playSe( spep_0 + 24, 1036 );
setPitch( spep_0 + 24, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--顔カットイン
SE004 = playSe( spep_0 + 30, 1018 );

--オーラ
SE005 = playSe( spep_0 + 48, 1036 );
setPitch( spep_0 + 48, SE005, -300 );
setTimeStretch( SE005, 0.8, 10, 1 );

--オーラ
SE006 = playSe( spep_0 + 72, 1036 );
setPitch( spep_0 + 72, SE006, -300 );
setTimeStretch( SE006, 0.8, 10, 1 );

--オーラ
SE007 = playSe( spep_0 + 96, 1036 );
setPitch( spep_0 + 96, SE007, -300 );
setTimeStretch( SE007, 0.8, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 +2, 0, 10, 10, 10, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


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
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射〜着弾(136F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --発射〜着弾：手前  ef_002
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 136, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 136, shot_f, 255 );

shot_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --発射〜着弾：奥    ef_003
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 136, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 136, shot_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 32,  10012, 37, 0x100, -1, 0, 26.9, 340.9 );   --ズォッ
setEffMoveKey( spep_2 -3 + 32, ctzuo, 26.9, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, 10.9, 351.6 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo, 15, 348.8 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo, 26.8, 340.9 , 0 );
setEffMoveKey( spep_2 -3 + 69, ctzuo, 26.8, 340.9 , 0 );

setEffScaleKey( spep_2 -3 + 32, ctzuo, 0.81, 0.81 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 4.15, 4.15 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 3.6, 3.6 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 69, ctzuo, 3.06, 3.06 );

setEffRotateKey( spep_2 -3 + 32, ctzuo, -15.4 );
setEffRotateKey( spep_2 -3 + 69, ctzuo, -15.4 );

setEffAlphaKey( spep_2 -3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 69, ctzuo, 255 );

ctzudodo = entryEffectLife( spep_2 -3 + 104,  10014, 34, 0x100, -1, 0, 23.3, 367.8 );   --ズドドドッ
setEffMoveKey( spep_2 -3 + 104, ctzudodo, 23.3, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctzudodo, 26.4, 377.8 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctzudodo, 22.8, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctzudodo, 26.1, 376.6 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctzudodo, 25.9, 376 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctzudodo, 26.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctzudodo, 32.3, 376 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctzudodo, 32.5, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctzudodo, 38.7, 376 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctzudodo, 38.9, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctzudodo, 45.1, 376 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctzudodo, 45.3, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctzudodo, 51.5, 376 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctzudodo, 51.7, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctzudodo, 57.9, 376 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctzudodo, 58.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctzudodo, 64.3, 376 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctzudodo, 64.5, 367.8 , 0 );

setEffScaleKey( spep_2 -3 + 104, ctzudodo, 1.41, 1.41 );
setEffScaleKey( spep_2 -3 + 106, ctzudodo, 3.35, 3.35 );
setEffScaleKey( spep_2 -3 + 108, ctzudodo, 3.14, 3.14 );
setEffScaleKey( spep_2 -3 + 110, ctzudodo, 2.92, 2.92 );
setEffScaleKey( spep_2 -3 + 112, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 138, ctzudodo, 2.71, 2.71 );

setEffRotateKey( spep_2 -3 + 104, ctzudodo, -59 );
setEffRotateKey( spep_2 -3 + 138, ctzudodo, -59 );

setEffAlphaKey( spep_2 -3 + 104, ctzudodo, 255 );
setEffAlphaKey( spep_2 -3 + 138, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 70, 1, 1 );
changeAnime( spep_2 -3 +70 , 1, 104 );

setMoveKey( spep_2 -3 + 70, 1, -840.3, -11 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -724.9, -9.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -615.5, -8.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -512.1, -7.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -414.8, -6.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -323.4, -6.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -238, -6.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -158.6, -6.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -134.4, -7.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -111.1, -7.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -88.7, -8.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -67.2, -8.9 , 0 );

setScaleKey( spep_2 -3 + 70, 1, 6.71, 6.71 );
setScaleKey( spep_2 -3 + 72, 1, 6.02, 6.02 );
setScaleKey( spep_2 -3 + 74, 1, 5.36, 5.36 );
setScaleKey( spep_2 -3 + 76, 1, 4.72, 4.72 );
setScaleKey( spep_2 -3 + 78, 1, 4.12, 4.12 );
setScaleKey( spep_2 -3 + 80, 1, 3.55, 3.55 );
setScaleKey( spep_2 -3 + 82, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 84, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 86, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 88, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 90, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 92, 1, 2.08, 2.08 );

-- ** 音 ** --
--発車前オーラ
SE009 = playSe( spep_2 + 4, 1036 );
setSeVolumeByWorkId( spep_2 + 4, SE009, 68 );
setPitch( spep_2 + 4, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

--ビーム発射
SE010 = playSe( spep_2 + 26, 1256 );

--ビーム発射
SE011 = playSe( spep_2 + 26, 1114 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 +2, 0, 10, 10, 10, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 27, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -67.2, -8.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, -46.5, -9.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, -26.8, -10 , 0 );
    setMoveKey( SP_dodge + 6, 1, -8.1, -10.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 9.8, -11.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 26.8, -11.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.08, 2.08 );
    setScaleKey( SP_dodge + 2, 1, 1.98, 1.98 );
    setScaleKey( SP_dodge + 4, 1, 1.88, 1.88 );
    setScaleKey( SP_dodge + 6, 1, 1.79, 1.79 );
    setScaleKey( SP_dodge + 8, 1, 1.7, 1.7 );
    setScaleKey( SP_dodge + 10, 1, 1.61, 1.61 );

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
changeAnime( spep_2 -3 + 108, 1, 108 );

setMoveKey( spep_2 -3 + 94, 1, -46.5, -9.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -26.8, -10 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -8.1, -10.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 9.8, -11.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 26.8, -11.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 42.9, -12.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 59.3, -12.3 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 59.3, -12.3 , 0 );--
setMoveKey( spep_2 -3 + 108, 1, 103.9, 9.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 136.2, 12.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 165.7, 9.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 206.5, 9.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 242.4, 14.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 289.6, 7 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 335.9, 5.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 385.3, 3.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 407.5, 2.8 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 429.8, 1.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 452.1, 0.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 474.3, -0.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 496.6, -1.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 518.9, -2.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 541.2, -3.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 563.5, -4.9 , 0 );

setScaleKey( spep_2 -3 + 94, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 96, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 98, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 100, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 102, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 104, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 106, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 107, 1, 1.47, 1.47 );--
setScaleKey( spep_2 -3 + 108, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 110, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 114, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 116, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 118, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 120, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 122, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 124, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 126, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 128, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 130, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 132, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 134, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 136, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 138, 1, 0.12, 0.12 );

setRotateKey( spep_2 -3 + 70, 1, 0 );
setRotateKey( spep_2 -3 + 107, 1, 0 );--
setRotateKey( spep_2 -3 + 108, 1, 5 );
setRotateKey( spep_2 -3 + 110, 1, 4.5 );
setRotateKey( spep_2 -3 + 112, 1, 3.9 );
setRotateKey( spep_2 -3 + 114, 1, 3.2 );
setRotateKey( spep_2 -3 + 116, 1, 2.5 );
setRotateKey( spep_2 -3 + 118, 1, 1.7 );
setRotateKey( spep_2 -3 + 120, 1, 0.9 );
setRotateKey( spep_2 -3 + 122, 1, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0 );

-- ** 音 ** --
--ヒット
SE012 = playSe( spep_2 + 92, 1177 );
setSeVolumeByWorkId( spep_2 + 92, SE012, 89 );
stopSe( spep_2 +136 + 0, SE012, 16 );

--ヒット
SE013 = playSe( spep_2 + 92, 1306 );
setSeVolumeByWorkId( spep_2 + 92, SE013, 72 );
stopSe( spep_2 +136 + 0, SE013, 16 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

--finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
--setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
--setEffMoveKey( spep_3 + 100, finish_b, 0, 0 , 0 );
--setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
--setEffScaleKey( spep_3 + 100, finish_b, 1.0, 1.0 );
--setEffRotateKey( spep_3 + 0, finish_b, 0 );
--setEffRotateKey( spep_3 + 100, finish_b, 0 );
--setEffAlphaKey( spep_3 + 0, finish_b, 255 );
--setEffAlphaKey( spep_3 + 100, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, -0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, -0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, -0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, -0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, -0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, -0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, -0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 音 ** --

--爆発
SE014 = playSe( spep_3 + 0, 1025 );
--ガッ
SE015 = playSe( spep_3 + 12, 1054 );

-- ** 背景 ** --
--entryFadeBg( spep_3 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 98 );

end