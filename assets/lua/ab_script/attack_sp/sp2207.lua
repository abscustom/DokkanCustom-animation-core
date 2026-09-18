--1022210:孫悟飯(幼年期)_爆裂乱魔
--sp_effect_b1_00150

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
SP_01=	157389	;--	悟飯突撃
SP_02=	157390	;--	悟飯頭突き〜アッパー
SP_03=	157391	;--	悟飯頭突き〜アッパー


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.8);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 悟飯突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 92, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 90, rush, 255 );
setEffAlphaKey( spep_0 + 91, rush, 255 );
setEffAlphaKey( spep_0 + 92, rush, 0 );

--SE
--冒頭ダッシュ
SE001 = playSe( spep_0 + 0, 1278 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 3.3 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 6.6 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 9.9 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 13.2 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 16.5 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 19.8 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 23.1 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 26.4 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 29.7 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 33 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 36.3 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 39.6 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 42.9 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 46.2 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 49.5 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 52.8 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 56.1 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 59.4 );
setSeVolumeByWorkId( spep_0 + 19, SE001, 62.7 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 66 );
setSeVolumeByWorkId( spep_0 + 21, SE001, 69.3 );
setSeVolumeByWorkId( spep_0 + 22, SE001, 72.6 );
setSeVolumeByWorkId( spep_0 + 23, SE001, 75.9 );
setSeVolumeByWorkId( spep_0 + 24, SE001, 79.2 );
setSeVolumeByWorkId( spep_0 + 25, SE001, 82.5 );
setSeVolumeByWorkId( spep_0 + 26, SE001, 85.8 );
setSeVolumeByWorkId( spep_0 + 27, SE001, 89.1 );
setSeVolumeByWorkId( spep_0 + 28, SE001, 92.4 );
setSeVolumeByWorkId( spep_0 + 29, SE001, 95.7 );
setSeVolumeByWorkId( spep_0 + 30, SE001, 99 );
setStartTimeMs( SE001,  1067 );
setPitch( spep_0 + 0, SE001, 600 );
setTimeStretch( SE001, 1.4, 10, 1 );
setBandpassFilter( spep_0 + 0, SE001, 530, 24000 );
SE002 = playSe( spep_0 + 0, 9 );
SE003 = playSe( spep_0 + 0, 1182 );
SE004 = playSe( spep_0 + 0, 1019 );
SE005 = playSe( spep_0 + 0, 1314 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 44; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );


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
--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--冒頭ダッシュ
SE007 = playSe( spep_0 + 64, 1019 );

--顔カットイン
SE006 = playSe( spep_0 + 12, 1018 );

--白フェード
entryFade( spep_0 + 84, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+92;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--冒頭ダッシュ
stopSe( spep_1 + 2, SE001, 10 );
stopSe( spep_1 + 0, SE002, 6 );
stopSe( spep_1 + 2, SE005, 4 );
stopSe( spep_1 + 4, SE007, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- 悟飯頭突き〜アッパー
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 310, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 310, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 310, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 310, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 310, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 310, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 310, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 310, finish_b, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 6,  10021, 36, 0x100, -1, 0, 49.8, 39.2 );--バゴォッ
setEffShake(spep_2-3 + 6, ctbago, 36, 10 );
setEffMoveKey( spep_2-3 + 6, ctbago, 49.8, 39.2 , 0 );
setEffMoveKey( spep_2-3 + 8, ctbago, 8.5, 90.5 , 0 );
setEffMoveKey( spep_2-3 + 10, ctbago, -28.2, 135.7 , 0 );
setEffMoveKey( spep_2-3 + 12, ctbago, -39.9, 158 , 0 );
setEffMoveKey( spep_2-3 + 14, ctbago, -42.8, 159.6 , 0 );
setEffMoveKey( spep_2-3 + 16, ctbago, -50.7, 188.8 , 0 );
setEffMoveKey( spep_2-3 + 18, ctbago, -47.7, 189.7 , 0 );
setEffMoveKey( spep_2-3 + 20, ctbago, -62.8, 206.7 , 0 );
setEffMoveKey( spep_2-3 + 22, ctbago, -58.4, 196.6 , 0 );
setEffMoveKey( spep_2-3 + 24, ctbago, -58.5, 219.8 , 0 );
setEffMoveKey( spep_2-3 + 26, ctbago, -62.9, 211 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbago, -67.3, 216.8 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbago, -64.3, 203.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbago, -71.4, 228.2 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbago, -72.1, 229.9 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbago, -94.9, 252.5 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbago, -91.5, 240.1 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbago, -91.6, 265.7 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbago, -91.8, 266.1 , 0 );

setEffScaleKey( spep_2-3 + 6, ctbago, 0.78, 0.76 );
setEffScaleKey( spep_2-3 + 8, ctbago, 1.45, 1.41 );
setEffScaleKey( spep_2-3 + 10, ctbago, 2.11, 2.06 );
setEffScaleKey( spep_2-3 + 12, ctbago, 2.25, 2.19 );
setEffScaleKey( spep_2-3 + 14, ctbago, 2.37, 2.3 );
setEffScaleKey( spep_2-3 + 16, ctbago, 2.48, 2.4 );
setEffScaleKey( spep_2-3 + 18, ctbago, 2.56, 2.48 );
setEffScaleKey( spep_2-3 + 20, ctbago, 2.63, 2.54 );
setEffScaleKey( spep_2-3 + 22, ctbago, 2.67, 2.58 );
setEffScaleKey( spep_2-3 + 24, ctbago, 2.7, 2.61 );
setEffScaleKey( spep_2-3 + 26, ctbago, 2.71, 2.61 );
setEffScaleKey( spep_2-3 + 28, ctbago, 2.71, 2.62 );
setEffScaleKey( spep_2-3 + 30, ctbago, 2.74, 2.64 );
setEffScaleKey( spep_2-3 + 32, ctbago, 2.82, 2.71 );
setEffScaleKey( spep_2-3 + 34, ctbago, 2.96, 2.84 );
setEffScaleKey( spep_2-3 + 36, ctbago, 3.11, 2.98 );
setEffScaleKey( spep_2-3 + 38, ctbago, 3.18, 3.05 );
setEffScaleKey( spep_2-3 + 42, ctbago, 3.21, 3.07 );

setEffRotateKey( spep_2-3 + 6, ctbago, 0 );
setEffRotateKey( spep_2-3 + 42, ctbago, 0 );

setEffAlphaKey( spep_2-3 + 6, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 26, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 28, ctbago, 253 );
setEffAlphaKey( spep_2-3 + 30, ctbago, 239 );
setEffAlphaKey( spep_2-3 + 32, ctbago, 201 );
setEffAlphaKey( spep_2-3 + 34, ctbago, 128 );
setEffAlphaKey( spep_2-3 + 36, ctbago, 54 );
setEffAlphaKey( spep_2-3 + 38, ctbago, 16 );
setEffAlphaKey( spep_2-3 + 40, ctbago, 2 );
setEffAlphaKey( spep_2-3 + 42, ctbago, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_2-3 + 88,  10017, 86, 0x100, -1, 0, -12, -220.1 );--ドガガガッ
setEffShake(spep_2-3 + 88, ctdogagaga, 86, 10 );
setEffMoveKey( spep_2-3 + 88, ctdogagaga, -12, -220.1 , 0 );
setEffMoveKey( spep_2-3 + 90, ctdogagaga, -12.7, -222 , 0 );
setEffMoveKey( spep_2-3 + 92, ctdogagaga, -5.8, -219 , 0 );
setEffMoveKey( spep_2-3 + 94, ctdogagaga, -10.1, -225.6 , 0 );
setEffMoveKey( spep_2-3 + 96, ctdogagaga, 0, -223.6 , 0 );
setEffMoveKey( spep_2-3 + 98, ctdogagaga, -6.5, -224.9 , 0 );
setEffMoveKey( spep_2-3 + 100, ctdogagaga, 3.5, -226.5 , 0 );
setEffMoveKey( spep_2-3 + 102, ctdogagaga, -1.6, -225.8 , 0 );
setEffMoveKey( spep_2-3 + 104, ctdogagaga, 5.9, -231.2 , 0 );
setEffMoveKey( spep_2-3 + 106, ctdogagaga, -0.4, -228.7 , 0 );
setEffMoveKey( spep_2-3 + 108, ctdogagaga, 8.9, -232.3 , 0 );
setEffMoveKey( spep_2-3 + 110, ctdogagaga, 4.4, -229.3 , 0 );
setEffMoveKey( spep_2-3 + 112, ctdogagaga, 8.4, -236.3 , 0 );
setEffMoveKey( spep_2-3 + 114, ctdogagaga, 7.4, -230.4 , 0 );
setEffMoveKey( spep_2-3 + 116, ctdogagaga, 11.1, -237 , 0 );
setEffMoveKey( spep_2-3 + 118, ctdogagaga, 13.5, -231.3 , 0 );
setEffMoveKey( spep_2-3 + 120, ctdogagaga, 11.1, -239.1 , 0 );
setEffMoveKey( spep_2-3 + 122, ctdogagaga, 18.5, -233.9 , 0 );
setEffMoveKey( spep_2-3 + 124, ctdogagaga, 14, -238.4 , 0 );
setEffMoveKey( spep_2-3 + 126, ctdogagaga, 21.1, -238.7 , 0 );
setEffMoveKey( spep_2-3 + 128, ctdogagaga, 14.1, -236.4 , 0 );
setEffMoveKey( spep_2-3 + 130, ctdogagaga, 21.2, -241.8 , 0 );
setEffMoveKey( spep_2-3 + 132, ctdogagaga, 18.4, -237.6 , 0 );
setEffMoveKey( spep_2-3 + 134, ctdogagaga, 26.2, -239 , 0 );
setEffMoveKey( spep_2-3 + 136, ctdogagaga, 18.4, -239.8 , 0 );
setEffMoveKey( spep_2-3 + 138, ctdogagaga, 25, -243.7 , 0 );
setEffMoveKey( spep_2-3 + 140, ctdogagaga, 19.8, -242 , 0 );
setEffMoveKey( spep_2-3 + 142, ctdogagaga, 27.7, -242.2 , 0 );
setEffMoveKey( spep_2-3 + 144, ctdogagaga, 21.5, -244.3 , 0 );
setEffMoveKey( spep_2-3 + 146, ctdogagaga, 29.6, -244.7 , 0 );
setEffMoveKey( spep_2-3 + 148, ctdogagaga, 25.6, -238.7 , 0 );
setEffMoveKey( spep_2-3 + 150, ctdogagaga, 28.2, -245.1 , 0 );
setEffMoveKey( spep_2-3 + 152, ctdogagaga, 25.3, -238.9 , 0 );
setEffMoveKey( spep_2-3 + 154, ctdogagaga, 28.2, -246.2 , 0 );
setEffMoveKey( spep_2-3 + 156, ctdogagaga, 26.5, -239.6 , 0 );
setEffMoveKey( spep_2-3 + 158, ctdogagaga, 27.8, -247.2 , 0 );
setEffMoveKey( spep_2-3 + 160, ctdogagaga, 25.9, -240.7 , 0 );
setEffMoveKey( spep_2-3 + 162, ctdogagaga, 28.9, -247.7 , 0 );
setEffMoveKey( spep_2-3 + 164, ctdogagaga, 26.4, -241.7 , 0 );
setEffMoveKey( spep_2-3 + 166, ctdogagaga, 28, -248.3 , 0 );
setEffMoveKey( spep_2-3 + 168, ctdogagaga, 31.8, -241.4 , 0 );
setEffMoveKey( spep_2-3 + 170, ctdogagaga, 31, -255.6 , 0 );
setEffMoveKey( spep_2-3 + 172, ctdogagaga, 27.1, -252.8 , 0 );
setEffMoveKey( spep_2-3 + 174, ctdogagaga, 28.4, -261.5 , 0 );

setEffScaleKey( spep_2-3 + 88, ctdogagaga, 3, 3 );
setEffScaleKey( spep_2-3 + 166, ctdogagaga, 3, 3 );
setEffScaleKey( spep_2-3 + 168, ctdogagaga, 3.23, 3.23 );
setEffScaleKey( spep_2-3 + 170, ctdogagaga, 3.9, 3.9 );
setEffScaleKey( spep_2-3 + 172, ctdogagaga, 5.03, 5.03 );
setEffScaleKey( spep_2-3 + 174, ctdogagaga, 6.61, 6.61 );

setEffRotateKey( spep_2-3 + 88, ctdogagaga, 20 );
setEffRotateKey( spep_2-3 + 174, ctdogagaga, 20 );

setEffAlphaKey( spep_2-3 + 88, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 166, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 168, ctdogagaga, 239 );
setEffAlphaKey( spep_2-3 + 170, ctdogagaga, 191 );
setEffAlphaKey( spep_2-3 + 172, ctdogagaga, 112 );
setEffAlphaKey( spep_2-3 + 174, ctdogagaga, 0 );

--敵の動き
setDisp( spep_2-3 + 0, 1, 1 );

changeAnime( spep_2-3 + 0, 1, 108 );
changeAnime( spep_2-3 + 56, 1, 5 );
changeAnime( spep_2-3 + 88, 1, 108 );
changeAnime( spep_2-3 + 180, 1, 107 );

setMoveKey( spep_2-3 + 0, 1, 99.5, 19 , 0 );
setMoveKey( spep_2-3 + 2, 1, 99.5, 19 , 0 );
setMoveKey( spep_2-3 + 4, 1, 111.5, 20.2 , 0 );
setMoveKey( spep_2-3 + 6, 1, 85, 11.4 , 0 );
setMoveKey( spep_2-3 + 8, 1, 95, 13.8 , 0 );
setMoveKey( spep_2-3 + 10, 1, 111.3, 19 , 0 );
setMoveKey( spep_2-3 + 12, 1, 109.2, 19.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 108.7, 17.9 , 0 );
setMoveKey( spep_2-3 + 16, 1, 106.2, 18.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 111.3, 18.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 114.6, 19.8 , 0 );
setMoveKey( spep_2-3 + 22, 1, 121.9, 22.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 108.1, 20.3 , 0 );
setMoveKey( spep_2-3 + 26, 1, 116.6, 20.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, 109.7, 19.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 104.9, 20.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 98.2, 15.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, 121.3, 26.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, 120.8, 19.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, 123.1, 27.8 , 0 );
setMoveKey( spep_2-3 + 40, 1, 126.1, 20.2 , 0 );
setMoveKey( spep_2-3 + 42, 1, 119.5, 26.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, 125.2, 18.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 120.6, 26.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 121.4, 18.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 120, 30.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 121.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 55, 1, 121.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 125, 47 , 0 );
setMoveKey( spep_2-3 + 58, 1, 124.9, 46.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 127.5, 42.7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 129.9, 38.8 , 0 );
setMoveKey( spep_2-3 + 64, 1, 132.1, 35.2 , 0 );
setMoveKey( spep_2-3 + 66, 1, 134.1, 32 , 0 );
setMoveKey( spep_2-3 + 68, 1, 135.9, 29 , 0 );
setMoveKey( spep_2-3 + 70, 1, 137.5, 26.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 138.9, 24 , 0 );
setMoveKey( spep_2-3 + 74, 1, 140.2, 22 , 0 );
setMoveKey( spep_2-3 + 76, 1, 141.2, 20.3 , 0 );
setMoveKey( spep_2-3 + 78, 1, 142.1, 18.9 , 0 );
setMoveKey( spep_2-3 + 80, 1, 142.7, 17.8 , 0 );
setMoveKey( spep_2-3 + 82, 1, 143.2, 17 , 0 );
setMoveKey( spep_2-3 + 84, 1, 143.5, 16.5 , 0 );
setMoveKey( spep_2-3 + 87, 1, 143.6, 16.4 , 0 );
setMoveKey( spep_2-3 + 88, 1, 227.3, -78.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 274.2, -84.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 310.3, -83.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, 316.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 96, 1, 337.9, -79.4 , 0 );
setMoveKey( spep_2-3 + 98, 1, 378.2, -88.7 , 0 );
setMoveKey( spep_2-3 + 100, 1, 356.5, -81.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, 358.1, -91.5 , 0 );
setMoveKey( spep_2-3 + 104, 1, 367.2, -85.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 375.9, -83.9 , 0 );
setMoveKey( spep_2-3 + 108, 1, 373.3, -89.6 , 0 );
setMoveKey( spep_2-3 + 110, 1, 410.6, -89.4 , 0 );
setMoveKey( spep_2-3 + 112, 1, 379.6, -92.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, 389.9, -91.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, 382.8, -85.3 , 0 );
setMoveKey( spep_2-3 + 118, 1, 426.3, -96.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 418, -91.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, 398.7, -89.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 389.9, -92.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 399.6, -85 , 0 );
setMoveKey( spep_2-3 + 128, 1, 440.1, -100.1 , 0 );
setMoveKey( spep_2-3 + 130, 1, 436.6, -88.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 393.8, -93.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 402.8, -87.1 , 0 );
setMoveKey( spep_2-3 + 136, 1, 400.3, -95.8 , 0 );
setMoveKey( spep_2-3 + 138, 1, 439.3, -85.6 , 0 );
setMoveKey( spep_2-3 + 140, 1, 401.7, -96.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 404.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 144, 1, 400.1, -94.4 , 0 );
setMoveKey( spep_2-3 + 146, 1, 440.7, -86.8 , 0 );
setMoveKey( spep_2-3 + 148, 1, 441.3, -95 , 0 );
setMoveKey( spep_2-3 + 150, 1, 398.8, -88.6 , 0 );
setMoveKey( spep_2-3 + 152, 1, 409.1, -89.9 , 0 );
setMoveKey( spep_2-3 + 154, 1, 397.6, -93.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 426.6, -88.3 , 0 );
setMoveKey( spep_2-3 + 158, 1, 430.6, -92.4 , 0 );
setMoveKey( spep_2-3 + 160, 1, 410.5, -91.4 , 0 );
setMoveKey( spep_2-3 + 162, 1, 399.5, -86.5 , 0 );
setMoveKey( spep_2-3 + 164, 1, 409.5, -94.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, 424.3, -88.1 , 0 );
setMoveKey( spep_2-3 + 168, 1, 434.3, -90.2 , 0 );
setMoveKey( spep_2-3 + 170, 1, 425.2, -85.3 , 0 );
setMoveKey( spep_2-3 + 172, 1, 482, -63.4 , 0 );
setMoveKey( spep_2-3 + 174, 1, 551.7, -37 , 0 );
setMoveKey( spep_2-3 + 176, 1, 691.8, 33.5 , 0 );
setMoveKey( spep_2-3 + 179, 1, 1042.4, 363.9 , 0 );
setMoveKey( spep_2-3 + 180, 1, -11.4, 66.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, -10.7, 66.8 , 0 );
setMoveKey( spep_2-3 + 184, 1, -8.7, 68.7 , 0 );
setMoveKey( spep_2-3 + 186, 1, -6.6, 65.9 , 0 );
setMoveKey( spep_2-3 + 188, 1, -2.6, 82.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, 7.1, 72.5 , 0 );
setMoveKey( spep_2-3 + 192, 1, 11, 88.1 , 0 );
setMoveKey( spep_2-3 + 194, 1, 21.7, 61 , 0 );
setMoveKey( spep_2-3 + 196, 1, 20.9, 63.4 , 0 );
setMoveKey( spep_2-3 + 198, 1, 45.3, 103 , 0 );
setMoveKey( spep_2-3 + 200, 1, 113.6, 248.7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 181.5, 375.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 228.7, 471.8 , 0 );
setMoveKey( spep_2-3 + 206, 1, 271, 546.4 , 0 );
setMoveKey( spep_2-3 + 208, 1, 299.9, 605 , 0 );
setMoveKey( spep_2-3 + 210, 1, 328.5, 653.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 350.3, 693.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 368.7, 726.3 , 0 );
setMoveKey( spep_2-3 + 216, 1, 384.5, 754.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, 398.3, 778.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 410.4, 799.9 , 0 );
setMoveKey( spep_2-3 + 222, 1, 421, 818.3 , 0 );
setMoveKey( spep_2-3 + 224, 1, 430.4, 834.4 , 0 );
setMoveKey( spep_2-3 + 226, 1, 438.8, 848.8 , 0 );
setMoveKey( spep_2-3 + 228, 1, 446.3, 861.6 , 0 );
setMoveKey( spep_2-3 + 230, 1, 453.1, 873 , 0 );
setMoveKey( spep_2-3 + 232, 1, 459.3, 883.3 , 0 );
setMoveKey( spep_2-3 + 234, 1, 464.8, 892.5 , 0 );
setMoveKey( spep_2-3 + 236, 1, 469.9, 900.9 , 0 );
setMoveKey( spep_2-3 + 238, 1, 474.5, 908.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, 478.7, 915.3 , 0 );
setMoveKey( spep_2-3 + 242, 1, 482.6, 921.6 , 0 );
setMoveKey( spep_2-3 + 244, 1, 486.1, 927.3 , 0 );
setMoveKey( spep_2-3 + 246, 1, 489.4, 932.5 , 0 );
setMoveKey( spep_2-3 + 248, 1, 492.3, 937.3 , 0 );
setMoveKey( spep_2-3 + 250, 1, 495.1, 941.7 , 0 );
setMoveKey( spep_2-3 + 252, 1, 497.7, 945.7 , 0 );
setMoveKey( spep_2-3 + 254, 1, 500, 949.4 , 0 );
setMoveKey( spep_2-3 + 256, 1, 502.1, 952.8 , 0 );
setMoveKey( spep_2-3 + 258, 1, 504.1, 955.9 , 0 );
setMoveKey( spep_2-3 + 260, 1, 506, 958.8 , 0 );
setMoveKey( spep_2-3 + 262, 1, 507.7, 961.4 , 0 );
setMoveKey( spep_2-3 + 264, 1, 509.3, 963.8 , 0 );
setMoveKey( spep_2-3 + 266, 1, 510.7, 966.1 , 0 );
setMoveKey( spep_2-3 + 268, 1, 512, 968.1 , 0 );
setMoveKey( spep_2-3 + 270, 1, 513.3, 970 , 0 );
setMoveKey( spep_2-3 + 272, 1, 514.4, 971.7 , 0 );
setMoveKey( spep_2-3 + 274, 1, 515.4, 973.4 , 0 );
setMoveKey( spep_2-3 + 276, 1, 516.4, 974.8 , 0 );
setMoveKey( spep_2-3 + 278, 1, 517.2, 976.1 , 0 );
setMoveKey( spep_2-3 + 280, 1, 518.1, 977.3 , 0 );
setMoveKey( spep_2-3 + 282, 1, 518.7, 978.4 , 0 );
setMoveKey( spep_2-3 + 284, 1, 519.4, 979.4 , 0 );
setMoveKey( spep_2-3 + 286, 1, 520, 980.4 , 0 );
setMoveKey( spep_2-3 + 288, 1, 520.5, 981.1 , 0 );
setMoveKey( spep_2-3 + 290, 1, 521, 981.8 , 0 );
setMoveKey( spep_2-3 + 292, 1, 521.4, 982.5 , 0 );
setMoveKey( spep_2-3 + 294, 1, 521.8, 983 , 0 );
setMoveKey( spep_2-3 + 296, 1, 522.1, 983.6 , 0 );
setMoveKey( spep_2-3 + 298, 1, 522.4, 983.9 , 0 );
setMoveKey( spep_2-3 + 300, 1, 522.6, 984.3 , 0 );
setMoveKey( spep_2-3 + 302, 1, 522.7, 984.6 , 0 );
setMoveKey( spep_2-3 + 304, 1, 522.9, 984.8 , 0 );
setMoveKey( spep_2-3 + 306, 1, 522.5, 984.5 , 0 );

setScaleKey( spep_2-3 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 55, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 56, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 60, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 62, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 64, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 66, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 68, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 70, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 74, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 76, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 78, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 80, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 87, 1, 1.28, 1.28 );

setScaleKey( spep_2-3 + 88, 1,7.18,7.18);
setScaleKey( spep_2-3 + 166, 1,7.18,7.18);
setScaleKey( spep_2-3 + 168, 1,7.27,7.27);
setScaleKey( spep_2-3 + 170, 1,7.54,7.54);
setScaleKey( spep_2-3 + 172, 1,8.08,8.08);
setScaleKey( spep_2-3 + 174, 1,9.02,9.02);
setScaleKey( spep_2-3 + 176, 1,10.72,10.72);
setScaleKey( spep_2-3 + 179, 1,15.81,15.81);

setScaleKey( spep_2-3 + 180, 1,1.1,1.1);
setScaleKey( spep_2-3 + 186, 1,1.1,1.1);
setScaleKey( spep_2-3 + 188, 1,1.08,1.08);
setScaleKey( spep_2-3 + 190, 1,1.07,1.07);
setScaleKey( spep_2-3 + 192, 1,1.05,1.05);
setScaleKey( spep_2-3 + 194, 1,0.99,0.99);
setScaleKey( spep_2-3 + 196, 1,0.96,0.96);
setScaleKey( spep_2-3 + 198, 1,0.99,0.99);
setScaleKey( spep_2-3 + 200, 1,1.07,1.07);
setScaleKey( spep_2-3 + 202, 1,1.16,1.16);
setScaleKey( spep_2-3 + 204, 1,1.22,1.22);
setScaleKey( spep_2-3 + 206, 1,1.27,1.27);
setScaleKey( spep_2-3 + 208, 1,1.3,1.3);
setScaleKey( spep_2-3 + 210, 1,1.34,1.34);
setScaleKey( spep_2-3 + 212, 1,1.36,1.36);
setScaleKey( spep_2-3 + 214, 1,1.38,1.38);
setScaleKey( spep_2-3 + 216, 1,1.39,1.39);
setScaleKey( spep_2-3 + 218, 1,1.41,1.41);
setScaleKey( spep_2-3 + 220, 1,1.43,1.43);
setScaleKey( spep_2-3 + 222, 1,1.44,1.44);
setScaleKey( spep_2-3 + 224, 1,1.45,1.45);
setScaleKey( spep_2-3 + 226, 1,1.45,1.45);
setScaleKey( spep_2-3 + 228, 1,1.46,1.46);
setScaleKey( spep_2-3 + 230, 1,1.47,1.47);
setScaleKey( spep_2-3 + 232, 1,1.47,1.47);
setScaleKey( spep_2-3 + 234, 1,1.48,1.48);
setScaleKey( spep_2-3 + 238, 1,1.48,1.48);
setScaleKey( spep_2-3 + 240, 1,1.49,1.49);
setScaleKey( spep_2-3 + 246, 1,1.49,1.49);
setScaleKey( spep_2-3 + 248, 1,1.5,1.5);
setScaleKey( spep_2-3 + 256, 1,1.5,1.5);
setScaleKey( spep_2-3 + 258, 1,1.51,1.51);
setScaleKey( spep_2-3 + 278, 1,1.51,1.51);
setScaleKey( spep_2-3 + 280, 1,1.52,1.52);
setScaleKey( spep_2-3 + 306, 1,1.52,1.52);

setRotateKey( spep_2-3 + 0, 1, -20 );
setRotateKey( spep_2-3 + 55, 1, -20 );
setRotateKey( spep_2-3 + 56, 1, 30 );
setRotateKey( spep_2-3 + 58, 1, 30 );
setRotateKey( spep_2-3 + 60, 1, 30.7 );
setRotateKey( spep_2-3 + 62, 1, 31.3 );
setRotateKey( spep_2-3 + 64, 1, 31.8 );
setRotateKey( spep_2-3 + 66, 1, 32.4 );
setRotateKey( spep_2-3 + 68, 1, 32.8 );
setRotateKey( spep_2-3 + 70, 1, 33.2 );
setRotateKey( spep_2-3 + 72, 1, 33.6 );
setRotateKey( spep_2-3 + 74, 1, 33.9 );
setRotateKey( spep_2-3 + 76, 1, 34.2 );
setRotateKey( spep_2-3 + 78, 1, 34.4 );
setRotateKey( spep_2-3 + 80, 1, 34.6 );
setRotateKey( spep_2-3 + 82, 1, 34.7 );
setRotateKey( spep_2-3 + 84, 1, 34.8 );
setRotateKey( spep_2-3 + 87, 1, 34.8 );
setRotateKey( spep_2-3 + 88, 1, 15 );
setRotateKey( spep_2-3 + 166, 1, 15 );
setRotateKey( spep_2-3 + 168, 1, 14.7 );
setRotateKey( spep_2-3 + 170, 1, 13.8 );
setRotateKey( spep_2-3 + 172, 1, 11.9 );
setRotateKey( spep_2-3 + 174, 1, 8.6 );
setRotateKey( spep_2-3 + 176, 1, 2.7 );
setRotateKey( spep_2-3 + 179, 1, -15 );
setRotateKey( spep_2-3 + 180, 1, -90 );
setRotateKey( spep_2-3 + 194, 1, -90 );
setRotateKey( spep_2-3 + 196, 1, -89.9 );
setRotateKey( spep_2-3 + 198, 1, -89.7 );
setRotateKey( spep_2-3 + 200, 1, -89.3 );
setRotateKey( spep_2-3 + 202, 1, -88.8 );
setRotateKey( spep_2-3 + 204, 1, -88.4 );
setRotateKey( spep_2-3 + 206, 1, -88.2 );
setRotateKey( spep_2-3 + 208, 1, -87.9 );
setRotateKey( spep_2-3 + 210, 1, -87.7 );
setRotateKey( spep_2-3 + 212, 1, -87.5 );
setRotateKey( spep_2-3 + 214, 1, -87.4 );
setRotateKey( spep_2-3 + 216, 1, -87.2 );
setRotateKey( spep_2-3 + 218, 1, -87.1 );
setRotateKey( spep_2-3 + 220, 1, -87 );
setRotateKey( spep_2-3 + 222, 1, -86.9 );
setRotateKey( spep_2-3 + 224, 1, -86.8 );
setRotateKey( spep_2-3 + 226, 1, -86.7 );
setRotateKey( spep_2-3 + 228, 1, -86.7 );
setRotateKey( spep_2-3 + 230, 1, -86.6 );
setRotateKey( spep_2-3 + 232, 1, -86.5 );
setRotateKey( spep_2-3 + 234, 1, -86.5 );
setRotateKey( spep_2-3 + 236, 1, -86.4 );
setRotateKey( spep_2-3 + 238, 1, -86.4 );
setRotateKey( spep_2-3 + 240, 1, -86.3 );
setRotateKey( spep_2-3 + 242, 1, -86.3 );
setRotateKey( spep_2-3 + 244, 1, -86.2 );
setRotateKey( spep_2-3 + 248, 1, -86.2 );
setRotateKey( spep_2-3 + 250, 1, -86.1 );
setRotateKey( spep_2-3 + 254, 1, -86.1 );
setRotateKey( spep_2-3 + 256, 1, -86 );
setRotateKey( spep_2-3 + 264, 1, -86 );
setRotateKey( spep_2-3 + 266, 1, -85.9 );
setRotateKey( spep_2-3 + 276, 1, -85.9 );
setRotateKey( spep_2-3 + 278, 1, -85.8 );
setRotateKey( spep_2-3 + 306, 1, -85.8 );

--SE
--頭突き
SE009 = playSe( spep_2 + 0, 1190 );
setSeVolumeByWorkId( spep_2 + 0, SE009, 92 );
SE010 = playSe( spep_2 + 0, 1009 );
SE011 = playSe( spep_2 + 0, 1137 );
setSeVolumeByWorkId( spep_2 + 0, SE011, 58 );
SE012 = playSe( spep_2 + 0, 1017 );
setSeVolumeByWorkId( spep_2 + 0, SE012, 70 );
SE013 = playSe( spep_2 + 4, 1010 );
setSeVolumeByWorkId( spep_2 + 4, SE013, 88 );
SE014 = playSe( spep_2 + 8, 1110 );
setSeVolumeByWorkId( spep_2 + 8, SE014, 93 );

--敵吹っ飛ぶ
SE015 = playSe( spep_2 + 56, 1027 );
setSeVolumeByWorkId( spep_2 + 56, SE015, 82 );

--ラッシュ
SE016 = playSe( spep_2 + 86, 1009 );
setSeVolumeByWorkId( spep_2 + 86, SE016, 81 );
SE017 = playSe( spep_2 + 88, 1110 );
setSeVolumeByWorkId( spep_2 + 88, SE017, 88 );
SE018 = playSe( spep_2 + 96, 1010 );
SE019 = playSe( spep_2 + 96, 1000 );
SE020 = playSe( spep_2 + 106, 1009 );
setSeVolumeByWorkId( spep_2 + 106, SE020, 79 );
SE021 = playSe( spep_2 + 108, 1110 );
setSeVolumeByWorkId( spep_2 + 108, SE021, 72 );
SE022 = playSe( spep_2 + 114, 1001 );
setSeVolumeByWorkId( spep_2 + 114, SE022, 54 );
SE023 = playSe( spep_2 + 116, 1010 );
setSeVolumeByWorkId( spep_2 + 116, SE023, 72 );
SE024 = playSe( spep_2 + 124, 1010 );
setSeVolumeByWorkId( spep_2 + 124, SE024, 69 );
SE025 = playSe( spep_2 + 124, 1000 );
setSeVolumeByWorkId( spep_2 + 124, SE025, 80 );
SE027 = playSe( spep_2 + 134, 1009 );
setSeVolumeByWorkId( spep_2 + 134, SE027, 80 );
SE028 = playSe( spep_2 + 136, 1110 );
setSeVolumeByWorkId( spep_2 + 136, SE028, 78 );
SE029 = playSe( spep_2 + 146, 1010 );
setSeVolumeByWorkId( spep_2 + 146, SE029, 79 );
SE030 = playSe( spep_2 + 146, 1000 );
setSeVolumeByWorkId( spep_2 + 146, SE030, 83 );
SE031 = playSe( spep_2 + 156, 1009 );
setSeVolumeByWorkId( spep_2 + 156, SE031, 79 );
SE032 = playSe( spep_2 + 158, 1110 );
setSeVolumeByWorkId( spep_2 + 158, SE032, 75 );

--アッパー
SE033 = playSe( spep_2 + 186, 1009 );
SE034 = playSe( spep_2 + 188, 1187 );
setSeVolumeByWorkId( spep_2 + 188, SE034, 89 );
SE035 = playSe( spep_2 + 190, 1002 );
setSeVolumeByWorkId( spep_2 + 190, SE035, 79 );
SE026 = playSe( spep_2 + 190, 1177,"",0.6  );
setSeVolumeByWorkId( spep_2 + 190, SE026, 0 );
setSeVolumeByWorkId( spep_2 + 191, SE026, 9.1 );
setSeVolumeByWorkId( spep_2 + 192, SE026, 18.2 );
setSeVolumeByWorkId( spep_2 + 193, SE026, 27.3 );
setSeVolumeByWorkId( spep_2 + 194, SE026, 36.4 );
setSeVolumeByWorkId( spep_2 + 195, SE026, 45.5 );
setSeVolumeByWorkId( spep_2 + 196, SE026, 54 );
stopSe( spep_2 + 246, SE026, 40 );
setStartTimeMs( SE026,  1017 );
SE036 = playSe( spep_2 + 192, 1110 );
setSeVolumeByWorkId( spep_2 + 192, SE036, 79 );

--敵飛んでいく
SE037 = playSe( spep_2 + 210, 1183,"",0.6  );
setSeVolumeByWorkId( spep_2 + 210, SE037, 68 );
stopSe( spep_2 + 272, SE037, 14 )

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 300, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--終わり
dealDamage( spep_2 + 200 );
endPhase( spep_2 + 300 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 悟飯突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 92, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 92, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 90, rush, 255 );
setEffAlphaKey( spep_0 + 91, rush, 255 );
setEffAlphaKey( spep_0 + 92, rush, 0 );

--SE
--冒頭ダッシュ
SE001 = playSe( spep_0 + 0, 1278 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 3.3 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 6.6 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 9.9 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 13.2 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 16.5 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 19.8 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 23.1 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 26.4 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 29.7 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 33 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 36.3 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 39.6 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 42.9 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 46.2 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 49.5 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 52.8 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 56.1 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 59.4 );
setSeVolumeByWorkId( spep_0 + 19, SE001, 62.7 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 66 );
setSeVolumeByWorkId( spep_0 + 21, SE001, 69.3 );
setSeVolumeByWorkId( spep_0 + 22, SE001, 72.6 );
setSeVolumeByWorkId( spep_0 + 23, SE001, 75.9 );
setSeVolumeByWorkId( spep_0 + 24, SE001, 79.2 );
setSeVolumeByWorkId( spep_0 + 25, SE001, 82.5 );
setSeVolumeByWorkId( spep_0 + 26, SE001, 85.8 );
setSeVolumeByWorkId( spep_0 + 27, SE001, 89.1 );
setSeVolumeByWorkId( spep_0 + 28, SE001, 92.4 );
setSeVolumeByWorkId( spep_0 + 29, SE001, 95.7 );
setSeVolumeByWorkId( spep_0 + 30, SE001, 99 );
setStartTimeMs( SE001,  1067 );
setPitch( spep_0 + 0, SE001, 600 );
setTimeStretch( SE001, 1.4, 10, 1 );
setBandpassFilter( spep_0 + 0, SE001, 530, 24000 );
SE002 = playSe( spep_0 + 0, 9 );
SE003 = playSe( spep_0 + 0, 1182 );
SE004 = playSe( spep_0 + 0, 1019 );
SE005 = playSe( spep_0 + 0, 1314 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 44; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );


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
--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--冒頭ダッシュ
SE007 = playSe( spep_0 + 64, 1019 );

--顔カットイン
SE006 = playSe( spep_0 + 12, 1018 );

--白フェード
entryFade( spep_0 + 84, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+92;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--冒頭ダッシュ
stopSe( spep_1 + 2, SE001, 10 );
stopSe( spep_1 + 0, SE002, 6 );
stopSe( spep_1 + 2, SE005, 4 );
stopSe( spep_1 + 4, SE007, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- 悟飯頭突き〜アッパー
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 310, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 310, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 310, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 310, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 310, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 310, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 310, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 310, finish_b, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 6,  10021, 36, 0x100, -1, 0, 49.8, 39.2 );--バゴォッ
setEffShake(spep_2-3 + 6, ctbago, 36, 10 );
setEffMoveKey( spep_2-3 + 6, ctbago, 49.8, 39.2 , 0 );
setEffMoveKey( spep_2-3 + 8, ctbago, 8.5, 90.5 , 0 );
setEffMoveKey( spep_2-3 + 10, ctbago, -28.2, 135.7 , 0 );
setEffMoveKey( spep_2-3 + 12, ctbago, -39.9, 158 , 0 );
setEffMoveKey( spep_2-3 + 14, ctbago, -42.8, 159.6 , 0 );
setEffMoveKey( spep_2-3 + 16, ctbago, -50.7, 188.8 , 0 );
setEffMoveKey( spep_2-3 + 18, ctbago, -47.7, 189.7 , 0 );
setEffMoveKey( spep_2-3 + 20, ctbago, -62.8, 206.7 , 0 );
setEffMoveKey( spep_2-3 + 22, ctbago, -58.4, 196.6 , 0 );
setEffMoveKey( spep_2-3 + 24, ctbago, -58.5, 219.8 , 0 );
setEffMoveKey( spep_2-3 + 26, ctbago, -62.9, 211 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbago, -67.3, 216.8 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbago, -64.3, 203.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbago, -71.4, 228.2 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbago, -72.1, 229.9 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbago, -94.9, 252.5 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbago, -91.5, 240.1 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbago, -91.6, 265.7 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbago, -91.8, 266.1 , 0 );

setEffScaleKey( spep_2-3 + 6, ctbago, 0.78, 0.76 );
setEffScaleKey( spep_2-3 + 8, ctbago, 1.45, 1.41 );
setEffScaleKey( spep_2-3 + 10, ctbago, 2.11, 2.06 );
setEffScaleKey( spep_2-3 + 12, ctbago, 2.25, 2.19 );
setEffScaleKey( spep_2-3 + 14, ctbago, 2.37, 2.3 );
setEffScaleKey( spep_2-3 + 16, ctbago, 2.48, 2.4 );
setEffScaleKey( spep_2-3 + 18, ctbago, 2.56, 2.48 );
setEffScaleKey( spep_2-3 + 20, ctbago, 2.63, 2.54 );
setEffScaleKey( spep_2-3 + 22, ctbago, 2.67, 2.58 );
setEffScaleKey( spep_2-3 + 24, ctbago, 2.7, 2.61 );
setEffScaleKey( spep_2-3 + 26, ctbago, 2.71, 2.61 );
setEffScaleKey( spep_2-3 + 28, ctbago, 2.71, 2.62 );
setEffScaleKey( spep_2-3 + 30, ctbago, 2.74, 2.64 );
setEffScaleKey( spep_2-3 + 32, ctbago, 2.82, 2.71 );
setEffScaleKey( spep_2-3 + 34, ctbago, 2.96, 2.84 );
setEffScaleKey( spep_2-3 + 36, ctbago, 3.11, 2.98 );
setEffScaleKey( spep_2-3 + 38, ctbago, 3.18, 3.05 );
setEffScaleKey( spep_2-3 + 42, ctbago, 3.21, 3.07 );

setEffRotateKey( spep_2-3 + 6, ctbago, 0 );
setEffRotateKey( spep_2-3 + 42, ctbago, 0 );

setEffAlphaKey( spep_2-3 + 6, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 26, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 28, ctbago, 253 );
setEffAlphaKey( spep_2-3 + 30, ctbago, 239 );
setEffAlphaKey( spep_2-3 + 32, ctbago, 201 );
setEffAlphaKey( spep_2-3 + 34, ctbago, 128 );
setEffAlphaKey( spep_2-3 + 36, ctbago, 54 );
setEffAlphaKey( spep_2-3 + 38, ctbago, 16 );
setEffAlphaKey( spep_2-3 + 40, ctbago, 2 );
setEffAlphaKey( spep_2-3 + 42, ctbago, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_2-3 + 88,  10017, 86, 0x100, -1, 0, -12, -220.1 );--ドガガガッ
setEffShake(spep_2-3 + 88, ctdogagaga, 86, 10 );
setEffMoveKey( spep_2-3 + 88, ctdogagaga, -12, -220.1 , 0 );
setEffMoveKey( spep_2-3 + 90, ctdogagaga, -12.7, -222 , 0 );
setEffMoveKey( spep_2-3 + 92, ctdogagaga, -5.8, -219 , 0 );
setEffMoveKey( spep_2-3 + 94, ctdogagaga, -10.1, -225.6 , 0 );
setEffMoveKey( spep_2-3 + 96, ctdogagaga, 0, -223.6 , 0 );
setEffMoveKey( spep_2-3 + 98, ctdogagaga, -6.5, -224.9 , 0 );
setEffMoveKey( spep_2-3 + 100, ctdogagaga, 3.5, -226.5 , 0 );
setEffMoveKey( spep_2-3 + 102, ctdogagaga, -1.6, -225.8 , 0 );
setEffMoveKey( spep_2-3 + 104, ctdogagaga, 5.9, -231.2 , 0 );
setEffMoveKey( spep_2-3 + 106, ctdogagaga, -0.4, -228.7 , 0 );
setEffMoveKey( spep_2-3 + 108, ctdogagaga, 8.9, -232.3 , 0 );
setEffMoveKey( spep_2-3 + 110, ctdogagaga, 4.4, -229.3 , 0 );
setEffMoveKey( spep_2-3 + 112, ctdogagaga, 8.4, -236.3 , 0 );
setEffMoveKey( spep_2-3 + 114, ctdogagaga, 7.4, -230.4 , 0 );
setEffMoveKey( spep_2-3 + 116, ctdogagaga, 11.1, -237 , 0 );
setEffMoveKey( spep_2-3 + 118, ctdogagaga, 13.5, -231.3 , 0 );
setEffMoveKey( spep_2-3 + 120, ctdogagaga, 11.1, -239.1 , 0 );
setEffMoveKey( spep_2-3 + 122, ctdogagaga, 18.5, -233.9 , 0 );
setEffMoveKey( spep_2-3 + 124, ctdogagaga, 14, -238.4 , 0 );
setEffMoveKey( spep_2-3 + 126, ctdogagaga, 21.1, -238.7 , 0 );
setEffMoveKey( spep_2-3 + 128, ctdogagaga, 14.1, -236.4 , 0 );
setEffMoveKey( spep_2-3 + 130, ctdogagaga, 21.2, -241.8 , 0 );
setEffMoveKey( spep_2-3 + 132, ctdogagaga, 18.4, -237.6 , 0 );
setEffMoveKey( spep_2-3 + 134, ctdogagaga, 26.2, -239 , 0 );
setEffMoveKey( spep_2-3 + 136, ctdogagaga, 18.4, -239.8 , 0 );
setEffMoveKey( spep_2-3 + 138, ctdogagaga, 25, -243.7 , 0 );
setEffMoveKey( spep_2-3 + 140, ctdogagaga, 19.8, -242 , 0 );
setEffMoveKey( spep_2-3 + 142, ctdogagaga, 27.7, -242.2 , 0 );
setEffMoveKey( spep_2-3 + 144, ctdogagaga, 21.5, -244.3 , 0 );
setEffMoveKey( spep_2-3 + 146, ctdogagaga, 29.6, -244.7 , 0 );
setEffMoveKey( spep_2-3 + 148, ctdogagaga, 25.6, -238.7 , 0 );
setEffMoveKey( spep_2-3 + 150, ctdogagaga, 28.2, -245.1 , 0 );
setEffMoveKey( spep_2-3 + 152, ctdogagaga, 25.3, -238.9 , 0 );
setEffMoveKey( spep_2-3 + 154, ctdogagaga, 28.2, -246.2 , 0 );
setEffMoveKey( spep_2-3 + 156, ctdogagaga, 26.5, -239.6 , 0 );
setEffMoveKey( spep_2-3 + 158, ctdogagaga, 27.8, -247.2 , 0 );
setEffMoveKey( spep_2-3 + 160, ctdogagaga, 25.9, -240.7 , 0 );
setEffMoveKey( spep_2-3 + 162, ctdogagaga, 28.9, -247.7 , 0 );
setEffMoveKey( spep_2-3 + 164, ctdogagaga, 26.4, -241.7 , 0 );
setEffMoveKey( spep_2-3 + 166, ctdogagaga, 28, -248.3 , 0 );
setEffMoveKey( spep_2-3 + 168, ctdogagaga, 31.8, -241.4 , 0 );
setEffMoveKey( spep_2-3 + 170, ctdogagaga, 31, -255.6 , 0 );
setEffMoveKey( spep_2-3 + 172, ctdogagaga, 27.1, -252.8 , 0 );
setEffMoveKey( spep_2-3 + 174, ctdogagaga, 28.4, -261.5 , 0 );

setEffScaleKey( spep_2-3 + 88, ctdogagaga, 3, 3 );
setEffScaleKey( spep_2-3 + 166, ctdogagaga, 3, 3 );
setEffScaleKey( spep_2-3 + 168, ctdogagaga, 3.23, 3.23 );
setEffScaleKey( spep_2-3 + 170, ctdogagaga, 3.9, 3.9 );
setEffScaleKey( spep_2-3 + 172, ctdogagaga, 5.03, 5.03 );
setEffScaleKey( spep_2-3 + 174, ctdogagaga, 6.61, 6.61 );

setEffRotateKey( spep_2-3 + 88, ctdogagaga, 20 );
setEffRotateKey( spep_2-3 + 174, ctdogagaga, 20 );

setEffAlphaKey( spep_2-3 + 88, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 166, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 168, ctdogagaga, 239 );
setEffAlphaKey( spep_2-3 + 170, ctdogagaga, 191 );
setEffAlphaKey( spep_2-3 + 172, ctdogagaga, 112 );
setEffAlphaKey( spep_2-3 + 174, ctdogagaga, 0 );

--敵の動き
setDisp( spep_2-3 + 0, 1, 1 );

changeAnime( spep_2-3 + 0, 1, 108 );
changeAnime( spep_2-3 + 56, 1, 5 );
changeAnime( spep_2-3 + 88, 1, 108 );
changeAnime( spep_2-3 + 180, 1, 107 );

setMoveKey( spep_2-3 + 0, 1, 99.5, 19 , 0 );
setMoveKey( spep_2-3 + 2, 1, 99.5, 19 , 0 );
setMoveKey( spep_2-3 + 4, 1, 111.5, 20.2 , 0 );
setMoveKey( spep_2-3 + 6, 1, 85, 11.4 , 0 );
setMoveKey( spep_2-3 + 8, 1, 95, 13.8 , 0 );
setMoveKey( spep_2-3 + 10, 1, 111.3, 19 , 0 );
setMoveKey( spep_2-3 + 12, 1, 109.2, 19.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 108.7, 17.9 , 0 );
setMoveKey( spep_2-3 + 16, 1, 106.2, 18.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 111.3, 18.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 114.6, 19.8 , 0 );
setMoveKey( spep_2-3 + 22, 1, 121.9, 22.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 108.1, 20.3 , 0 );
setMoveKey( spep_2-3 + 26, 1, 116.6, 20.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, 109.7, 19.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 104.9, 20.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 98.2, 15.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, 121.3, 26.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, 120.8, 19.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, 123.1, 27.8 , 0 );
setMoveKey( spep_2-3 + 40, 1, 126.1, 20.2 , 0 );
setMoveKey( spep_2-3 + 42, 1, 119.5, 26.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, 125.2, 18.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 120.6, 26.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 121.4, 18.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 120, 30.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 121.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 55, 1, 121.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 125, 47 , 0 );
setMoveKey( spep_2-3 + 58, 1, 124.9, 46.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 127.5, 42.7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 129.9, 38.8 , 0 );
setMoveKey( spep_2-3 + 64, 1, 132.1, 35.2 , 0 );
setMoveKey( spep_2-3 + 66, 1, 134.1, 32 , 0 );
setMoveKey( spep_2-3 + 68, 1, 135.9, 29 , 0 );
setMoveKey( spep_2-3 + 70, 1, 137.5, 26.4 , 0 );
setMoveKey( spep_2-3 + 72, 1, 138.9, 24 , 0 );
setMoveKey( spep_2-3 + 74, 1, 140.2, 22 , 0 );
setMoveKey( spep_2-3 + 76, 1, 141.2, 20.3 , 0 );
setMoveKey( spep_2-3 + 78, 1, 142.1, 18.9 , 0 );
setMoveKey( spep_2-3 + 80, 1, 142.7, 17.8 , 0 );
setMoveKey( spep_2-3 + 82, 1, 143.2, 17 , 0 );
setMoveKey( spep_2-3 + 84, 1, 143.5, 16.5 , 0 );
setMoveKey( spep_2-3 + 87, 1, 143.6, 16.4 , 0 );
setMoveKey( spep_2-3 + 88, 1, 227.3, -78.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 274.2, -84.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 310.3, -83.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, 316.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 96, 1, 337.9, -79.4 , 0 );
setMoveKey( spep_2-3 + 98, 1, 378.2, -88.7 , 0 );
setMoveKey( spep_2-3 + 100, 1, 356.5, -81.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, 358.1, -91.5 , 0 );
setMoveKey( spep_2-3 + 104, 1, 367.2, -85.5 , 0 );
setMoveKey( spep_2-3 + 106, 1, 375.9, -83.9 , 0 );
setMoveKey( spep_2-3 + 108, 1, 373.3, -89.6 , 0 );
setMoveKey( spep_2-3 + 110, 1, 410.6, -89.4 , 0 );
setMoveKey( spep_2-3 + 112, 1, 379.6, -92.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, 389.9, -91.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, 382.8, -85.3 , 0 );
setMoveKey( spep_2-3 + 118, 1, 426.3, -96.5 , 0 );
setMoveKey( spep_2-3 + 120, 1, 418, -91.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, 398.7, -89.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 389.9, -92.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 399.6, -85 , 0 );
setMoveKey( spep_2-3 + 128, 1, 440.1, -100.1 , 0 );
setMoveKey( spep_2-3 + 130, 1, 436.6, -88.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 393.8, -93.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 402.8, -87.1 , 0 );
setMoveKey( spep_2-3 + 136, 1, 400.3, -95.8 , 0 );
setMoveKey( spep_2-3 + 138, 1, 439.3, -85.6 , 0 );
setMoveKey( spep_2-3 + 140, 1, 401.7, -96.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 404.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 144, 1, 400.1, -94.4 , 0 );
setMoveKey( spep_2-3 + 146, 1, 440.7, -86.8 , 0 );
setMoveKey( spep_2-3 + 148, 1, 441.3, -95 , 0 );
setMoveKey( spep_2-3 + 150, 1, 398.8, -88.6 , 0 );
setMoveKey( spep_2-3 + 152, 1, 409.1, -89.9 , 0 );
setMoveKey( spep_2-3 + 154, 1, 397.6, -93.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 426.6, -88.3 , 0 );
setMoveKey( spep_2-3 + 158, 1, 430.6, -92.4 , 0 );
setMoveKey( spep_2-3 + 160, 1, 410.5, -91.4 , 0 );
setMoveKey( spep_2-3 + 162, 1, 399.5, -86.5 , 0 );
setMoveKey( spep_2-3 + 164, 1, 409.5, -94.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, 424.3, -88.1 , 0 );
setMoveKey( spep_2-3 + 168, 1, 434.3, -90.2 , 0 );
setMoveKey( spep_2-3 + 170, 1, 425.2, -85.3 , 0 );
setMoveKey( spep_2-3 + 172, 1, 482, -63.4 , 0 );
setMoveKey( spep_2-3 + 174, 1, 551.7, -37 , 0 );
setMoveKey( spep_2-3 + 176, 1, 691.8, 33.5 , 0 );
setMoveKey( spep_2-3 + 179, 1, 1042.4, 363.9 , 0 );
setMoveKey( spep_2-3 + 180, 1, -11.4, 66.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, -10.7, 66.8 , 0 );
setMoveKey( spep_2-3 + 184, 1, -8.7, 68.7 , 0 );
setMoveKey( spep_2-3 + 186, 1, -6.6, 65.9 , 0 );
setMoveKey( spep_2-3 + 188, 1, -2.6, 82.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, 7.1, 72.5 , 0 );
setMoveKey( spep_2-3 + 192, 1, 11, 88.1 , 0 );
setMoveKey( spep_2-3 + 194, 1, 21.7, 61 , 0 );
setMoveKey( spep_2-3 + 196, 1, 20.9, 63.4 , 0 );
setMoveKey( spep_2-3 + 198, 1, 45.3, 103 , 0 );
setMoveKey( spep_2-3 + 200, 1, 113.6, 248.7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 181.5, 375.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 228.7, 471.8 , 0 );
setMoveKey( spep_2-3 + 206, 1, 271, 546.4 , 0 );
setMoveKey( spep_2-3 + 208, 1, 299.9, 605 , 0 );
setMoveKey( spep_2-3 + 210, 1, 328.5, 653.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 350.3, 693.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 368.7, 726.3 , 0 );
setMoveKey( spep_2-3 + 216, 1, 384.5, 754.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, 398.3, 778.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 410.4, 799.9 , 0 );
setMoveKey( spep_2-3 + 222, 1, 421, 818.3 , 0 );
setMoveKey( spep_2-3 + 224, 1, 430.4, 834.4 , 0 );
setMoveKey( spep_2-3 + 226, 1, 438.8, 848.8 , 0 );
setMoveKey( spep_2-3 + 228, 1, 446.3, 861.6 , 0 );
setMoveKey( spep_2-3 + 230, 1, 453.1, 873 , 0 );
setMoveKey( spep_2-3 + 232, 1, 459.3, 883.3 , 0 );
setMoveKey( spep_2-3 + 234, 1, 464.8, 892.5 , 0 );
setMoveKey( spep_2-3 + 236, 1, 469.9, 900.9 , 0 );
setMoveKey( spep_2-3 + 238, 1, 474.5, 908.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, 478.7, 915.3 , 0 );
setMoveKey( spep_2-3 + 242, 1, 482.6, 921.6 , 0 );
setMoveKey( spep_2-3 + 244, 1, 486.1, 927.3 , 0 );
setMoveKey( spep_2-3 + 246, 1, 489.4, 932.5 , 0 );
setMoveKey( spep_2-3 + 248, 1, 492.3, 937.3 , 0 );
setMoveKey( spep_2-3 + 250, 1, 495.1, 941.7 , 0 );
setMoveKey( spep_2-3 + 252, 1, 497.7, 945.7 , 0 );
setMoveKey( spep_2-3 + 254, 1, 500, 949.4 , 0 );
setMoveKey( spep_2-3 + 256, 1, 502.1, 952.8 , 0 );
setMoveKey( spep_2-3 + 258, 1, 504.1, 955.9 , 0 );
setMoveKey( spep_2-3 + 260, 1, 506, 958.8 , 0 );
setMoveKey( spep_2-3 + 262, 1, 507.7, 961.4 , 0 );
setMoveKey( spep_2-3 + 264, 1, 509.3, 963.8 , 0 );
setMoveKey( spep_2-3 + 266, 1, 510.7, 966.1 , 0 );
setMoveKey( spep_2-3 + 268, 1, 512, 968.1 , 0 );
setMoveKey( spep_2-3 + 270, 1, 513.3, 970 , 0 );
setMoveKey( spep_2-3 + 272, 1, 514.4, 971.7 , 0 );
setMoveKey( spep_2-3 + 274, 1, 515.4, 973.4 , 0 );
setMoveKey( spep_2-3 + 276, 1, 516.4, 974.8 , 0 );
setMoveKey( spep_2-3 + 278, 1, 517.2, 976.1 , 0 );
setMoveKey( spep_2-3 + 280, 1, 518.1, 977.3 , 0 );
setMoveKey( spep_2-3 + 282, 1, 518.7, 978.4 , 0 );
setMoveKey( spep_2-3 + 284, 1, 519.4, 979.4 , 0 );
setMoveKey( spep_2-3 + 286, 1, 520, 980.4 , 0 );
setMoveKey( spep_2-3 + 288, 1, 520.5, 981.1 , 0 );
setMoveKey( spep_2-3 + 290, 1, 521, 981.8 , 0 );
setMoveKey( spep_2-3 + 292, 1, 521.4, 982.5 , 0 );
setMoveKey( spep_2-3 + 294, 1, 521.8, 983 , 0 );
setMoveKey( spep_2-3 + 296, 1, 522.1, 983.6 , 0 );
setMoveKey( spep_2-3 + 298, 1, 522.4, 983.9 , 0 );
setMoveKey( spep_2-3 + 300, 1, 522.6, 984.3 , 0 );
setMoveKey( spep_2-3 + 302, 1, 522.7, 984.6 , 0 );
setMoveKey( spep_2-3 + 304, 1, 522.9, 984.8 , 0 );
setMoveKey( spep_2-3 + 306, 1, 522.5, 984.5 , 0 );

setScaleKey( spep_2-3 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 55, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 56, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 60, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 62, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 64, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 66, 1, 1.61, 1.61 );
setScaleKey( spep_2-3 + 68, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 70, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 74, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 76, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 78, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 80, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 84, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 87, 1, 1.28, 1.28 );

setScaleKey( spep_2-3 + 88, 1,7.18,7.18);
setScaleKey( spep_2-3 + 166, 1,7.18,7.18);
setScaleKey( spep_2-3 + 168, 1,7.27,7.27);
setScaleKey( spep_2-3 + 170, 1,7.54,7.54);
setScaleKey( spep_2-3 + 172, 1,8.08,8.08);
setScaleKey( spep_2-3 + 174, 1,9.02,9.02);
setScaleKey( spep_2-3 + 176, 1,10.72,10.72);
setScaleKey( spep_2-3 + 179, 1,15.81,15.81);

setScaleKey( spep_2-3 + 180, 1,1.1,1.1);
setScaleKey( spep_2-3 + 186, 1,1.1,1.1);
setScaleKey( spep_2-3 + 188, 1,1.08,1.08);
setScaleKey( spep_2-3 + 190, 1,1.07,1.07);
setScaleKey( spep_2-3 + 192, 1,1.05,1.05);
setScaleKey( spep_2-3 + 194, 1,0.99,0.99);
setScaleKey( spep_2-3 + 196, 1,0.96,0.96);
setScaleKey( spep_2-3 + 198, 1,0.99,0.99);
setScaleKey( spep_2-3 + 200, 1,1.07,1.07);
setScaleKey( spep_2-3 + 202, 1,1.16,1.16);
setScaleKey( spep_2-3 + 204, 1,1.22,1.22);
setScaleKey( spep_2-3 + 206, 1,1.27,1.27);
setScaleKey( spep_2-3 + 208, 1,1.3,1.3);
setScaleKey( spep_2-3 + 210, 1,1.34,1.34);
setScaleKey( spep_2-3 + 212, 1,1.36,1.36);
setScaleKey( spep_2-3 + 214, 1,1.38,1.38);
setScaleKey( spep_2-3 + 216, 1,1.39,1.39);
setScaleKey( spep_2-3 + 218, 1,1.41,1.41);
setScaleKey( spep_2-3 + 220, 1,1.43,1.43);
setScaleKey( spep_2-3 + 222, 1,1.44,1.44);
setScaleKey( spep_2-3 + 224, 1,1.45,1.45);
setScaleKey( spep_2-3 + 226, 1,1.45,1.45);
setScaleKey( spep_2-3 + 228, 1,1.46,1.46);
setScaleKey( spep_2-3 + 230, 1,1.47,1.47);
setScaleKey( spep_2-3 + 232, 1,1.47,1.47);
setScaleKey( spep_2-3 + 234, 1,1.48,1.48);
setScaleKey( spep_2-3 + 238, 1,1.48,1.48);
setScaleKey( spep_2-3 + 240, 1,1.49,1.49);
setScaleKey( spep_2-3 + 246, 1,1.49,1.49);
setScaleKey( spep_2-3 + 248, 1,1.5,1.5);
setScaleKey( spep_2-3 + 256, 1,1.5,1.5);
setScaleKey( spep_2-3 + 258, 1,1.51,1.51);
setScaleKey( spep_2-3 + 278, 1,1.51,1.51);
setScaleKey( spep_2-3 + 280, 1,1.52,1.52);
setScaleKey( spep_2-3 + 306, 1,1.52,1.52);

setRotateKey( spep_2-3 + 0, 1, -20 );
setRotateKey( spep_2-3 + 55, 1, -20 );
setRotateKey( spep_2-3 + 56, 1, 30 );
setRotateKey( spep_2-3 + 58, 1, 30 );
setRotateKey( spep_2-3 + 60, 1, 30.7 );
setRotateKey( spep_2-3 + 62, 1, 31.3 );
setRotateKey( spep_2-3 + 64, 1, 31.8 );
setRotateKey( spep_2-3 + 66, 1, 32.4 );
setRotateKey( spep_2-3 + 68, 1, 32.8 );
setRotateKey( spep_2-3 + 70, 1, 33.2 );
setRotateKey( spep_2-3 + 72, 1, 33.6 );
setRotateKey( spep_2-3 + 74, 1, 33.9 );
setRotateKey( spep_2-3 + 76, 1, 34.2 );
setRotateKey( spep_2-3 + 78, 1, 34.4 );
setRotateKey( spep_2-3 + 80, 1, 34.6 );
setRotateKey( spep_2-3 + 82, 1, 34.7 );
setRotateKey( spep_2-3 + 84, 1, 34.8 );
setRotateKey( spep_2-3 + 87, 1, 34.8 );
setRotateKey( spep_2-3 + 88, 1, 15 );
setRotateKey( spep_2-3 + 166, 1, 15 );
setRotateKey( spep_2-3 + 168, 1, 14.7 );
setRotateKey( spep_2-3 + 170, 1, 13.8 );
setRotateKey( spep_2-3 + 172, 1, 11.9 );
setRotateKey( spep_2-3 + 174, 1, 8.6 );
setRotateKey( spep_2-3 + 176, 1, 2.7 );
setRotateKey( spep_2-3 + 179, 1, -15 );
setRotateKey( spep_2-3 + 180, 1, -90 );
setRotateKey( spep_2-3 + 194, 1, -90 );
setRotateKey( spep_2-3 + 196, 1, -89.9 );
setRotateKey( spep_2-3 + 198, 1, -89.7 );
setRotateKey( spep_2-3 + 200, 1, -89.3 );
setRotateKey( spep_2-3 + 202, 1, -88.8 );
setRotateKey( spep_2-3 + 204, 1, -88.4 );
setRotateKey( spep_2-3 + 206, 1, -88.2 );
setRotateKey( spep_2-3 + 208, 1, -87.9 );
setRotateKey( spep_2-3 + 210, 1, -87.7 );
setRotateKey( spep_2-3 + 212, 1, -87.5 );
setRotateKey( spep_2-3 + 214, 1, -87.4 );
setRotateKey( spep_2-3 + 216, 1, -87.2 );
setRotateKey( spep_2-3 + 218, 1, -87.1 );
setRotateKey( spep_2-3 + 220, 1, -87 );
setRotateKey( spep_2-3 + 222, 1, -86.9 );
setRotateKey( spep_2-3 + 224, 1, -86.8 );
setRotateKey( spep_2-3 + 226, 1, -86.7 );
setRotateKey( spep_2-3 + 228, 1, -86.7 );
setRotateKey( spep_2-3 + 230, 1, -86.6 );
setRotateKey( spep_2-3 + 232, 1, -86.5 );
setRotateKey( spep_2-3 + 234, 1, -86.5 );
setRotateKey( spep_2-3 + 236, 1, -86.4 );
setRotateKey( spep_2-3 + 238, 1, -86.4 );
setRotateKey( spep_2-3 + 240, 1, -86.3 );
setRotateKey( spep_2-3 + 242, 1, -86.3 );
setRotateKey( spep_2-3 + 244, 1, -86.2 );
setRotateKey( spep_2-3 + 248, 1, -86.2 );
setRotateKey( spep_2-3 + 250, 1, -86.1 );
setRotateKey( spep_2-3 + 254, 1, -86.1 );
setRotateKey( spep_2-3 + 256, 1, -86 );
setRotateKey( spep_2-3 + 264, 1, -86 );
setRotateKey( spep_2-3 + 266, 1, -85.9 );
setRotateKey( spep_2-3 + 276, 1, -85.9 );
setRotateKey( spep_2-3 + 278, 1, -85.8 );
setRotateKey( spep_2-3 + 306, 1, -85.8 );

--SE
--頭突き
SE009 = playSe( spep_2 + 0, 1190 );
setSeVolumeByWorkId( spep_2 + 0, SE009, 92 );
SE010 = playSe( spep_2 + 0, 1009 );
SE011 = playSe( spep_2 + 0, 1137 );
setSeVolumeByWorkId( spep_2 + 0, SE011, 58 );
SE012 = playSe( spep_2 + 0, 1017 );
setSeVolumeByWorkId( spep_2 + 0, SE012, 70 );
SE013 = playSe( spep_2 + 4, 1010 );
setSeVolumeByWorkId( spep_2 + 4, SE013, 88 );
SE014 = playSe( spep_2 + 8, 1110 );
setSeVolumeByWorkId( spep_2 + 8, SE014, 93 );

--敵吹っ飛ぶ
SE015 = playSe( spep_2 + 56, 1027 );
setSeVolumeByWorkId( spep_2 + 56, SE015, 82 );

--ラッシュ
SE016 = playSe( spep_2 + 86, 1009 );
setSeVolumeByWorkId( spep_2 + 86, SE016, 81 );
SE017 = playSe( spep_2 + 88, 1110 );
setSeVolumeByWorkId( spep_2 + 88, SE017, 88 );
SE018 = playSe( spep_2 + 96, 1010 );
SE019 = playSe( spep_2 + 96, 1000 );
SE020 = playSe( spep_2 + 106, 1009 );
setSeVolumeByWorkId( spep_2 + 106, SE020, 79 );
SE021 = playSe( spep_2 + 108, 1110 );
setSeVolumeByWorkId( spep_2 + 108, SE021, 72 );
SE022 = playSe( spep_2 + 114, 1001 );
setSeVolumeByWorkId( spep_2 + 114, SE022, 54 );
SE023 = playSe( spep_2 + 116, 1010 );
setSeVolumeByWorkId( spep_2 + 116, SE023, 72 );
SE024 = playSe( spep_2 + 124, 1010 );
setSeVolumeByWorkId( spep_2 + 124, SE024, 69 );
SE025 = playSe( spep_2 + 124, 1000 );
setSeVolumeByWorkId( spep_2 + 124, SE025, 80 );
SE027 = playSe( spep_2 + 134, 1009 );
setSeVolumeByWorkId( spep_2 + 134, SE027, 80 );
SE028 = playSe( spep_2 + 136, 1110 );
setSeVolumeByWorkId( spep_2 + 136, SE028, 78 );
SE029 = playSe( spep_2 + 146, 1010 );
setSeVolumeByWorkId( spep_2 + 146, SE029, 79 );
SE030 = playSe( spep_2 + 146, 1000 );
setSeVolumeByWorkId( spep_2 + 146, SE030, 83 );
SE031 = playSe( spep_2 + 156, 1009 );
setSeVolumeByWorkId( spep_2 + 156, SE031, 79 );
SE032 = playSe( spep_2 + 158, 1110 );
setSeVolumeByWorkId( spep_2 + 158, SE032, 75 );

--アッパー
SE033 = playSe( spep_2 + 186, 1009 );
SE034 = playSe( spep_2 + 188, 1187 );
setSeVolumeByWorkId( spep_2 + 188, SE034, 89 );
SE035 = playSe( spep_2 + 190, 1002 );
setSeVolumeByWorkId( spep_2 + 190, SE035, 79 );
SE026 = playSe( spep_2 + 190, 1177,"",0.6  );
setSeVolumeByWorkId( spep_2 + 190, SE026, 0 );
setSeVolumeByWorkId( spep_2 + 191, SE026, 9.1 );
setSeVolumeByWorkId( spep_2 + 192, SE026, 18.2 );
setSeVolumeByWorkId( spep_2 + 193, SE026, 27.3 );
setSeVolumeByWorkId( spep_2 + 194, SE026, 36.4 );
setSeVolumeByWorkId( spep_2 + 195, SE026, 45.5 );
setSeVolumeByWorkId( spep_2 + 196, SE026, 54 );
stopSe( spep_2 + 246, SE026, 40 );
setStartTimeMs( SE026,  1017 );
SE036 = playSe( spep_2 + 192, 1110 );
setSeVolumeByWorkId( spep_2 + 192, SE036, 79 );

--敵飛んでいく
SE037 = playSe( spep_2 + 210, 1183,"",0.6  );
setSeVolumeByWorkId( spep_2 + 210, SE037, 68 );
stopSe( spep_2 + 272, SE037, 14 )

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 300, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--終わり
dealDamage( spep_2 + 200 );
endPhase( spep_2 + 300 );
end