--4022201:LR_超ゴジータ_必殺技：超絶かめはめ波
--sp_effect_a1_00300
--sp2212

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
SP_01  = 157569; --ゴジータ構え〜かめはめ波発射 ef_001
SP_02  = 157570; --ゴジータ構え〜かめはめ波発射 ef_002
SP_03  = 157571; --かめはめ波敵に迫る〜フィニッシュ ef_003
SP_04  = 157572; --かめはめ波敵に迫る〜フィニッシュ ef_004
SP_05  = 157573; --KO ef_005

--エフェクト(敵)
SP_01x = 157574; --ゴジータ構え〜かめはめ波発射(敵) ef_001r
SP_02x = 157575; --ゴジータ構え〜かめはめ波発射(敵) ef_002r
SP_03x = 157571; --かめはめ波敵に迫る〜フィニッシュ ef_003
SP_04x = 157572; --かめはめ波敵に迫る〜フィニッシュ ef_004
SP_05x = 157573; --KO ef_005

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


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
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 930;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 40);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 40, SP_01, spep_2 + 40 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        SE059 = playSe( spep_2 + 40 + 3, 1211 );
        SE054 = playSe( spep_2 + 40 + 3, 1223 );
        setSeVolumeByWorkId( spep_2 + 40 + 3, SE054, 80 );
        SE055 = playSe( spep_2 + 40 + 3, 1213 );
        setSeVolumeByWorkId( spep_2 + 40 + 3, SE055, 97 );
        SE056 = playSe( spep_2 + 40 + 3, 1284 );
        setSeVolumeByWorkId( spep_2 + 40 + 3, SE056, 84 );
    else

        setupMovie(0 , SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ゴジータ構え〜かめはめ波発射
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 930, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 930, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 930, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 930, tame_f, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 60, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  60,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  60,  515);

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

--文字エントリー
ctsyun = entryEffectLife( spep_0-3 + 90,  10011, 18, 0x100, -1, 0, -45.1, 185.8 );--シュンッ
setEffShake( spep_0-3 + 90, ctsyun, 18, 10 );
setEffMoveKey( spep_0-3 + 90, ctsyun, -45.1, 185.8 , 0 );
setEffMoveKey( spep_0-3 + 108, ctsyun, -45.1, 185.8 , 0 );

setEffScaleKey( spep_0-3 + 90, ctsyun, 1.71, 1.7 );
setEffScaleKey( spep_0-3 + 94, ctsyun, 1.71, 1.7 );
setEffScaleKey( spep_0-3 + 96, ctsyun, 2.13, 2.11 );
setEffScaleKey( spep_0-3 + 98, ctsyun, 2.3, 2.29 );
setEffScaleKey( spep_0-3 + 100, ctsyun, 2.44, 2.43 );
setEffScaleKey( spep_0-3 + 102, ctsyun, 2.55, 2.54 );
setEffScaleKey( spep_0-3 + 104, ctsyun, 2.63, 2.62 );
setEffScaleKey( spep_0-3 + 106, ctsyun, 2.68, 2.66 );
setEffScaleKey( spep_0-3 + 108, ctsyun, 2.7, 2.68 );

setEffRotateKey( spep_0-3 + 90, ctsyun, 0 );
setEffRotateKey( spep_0-3 + 108, ctsyun, 0 );

setEffAlphaKey( spep_0-3 + 90, ctsyun, 128 );
setEffAlphaKey( spep_0-3 + 108, ctsyun, 128 );

--敵の動き
setDisp( spep_0-3 + 80, 1, 1);
setDisp( spep_0-3 + 118, 1, 0);

changeAnime( spep_0-3 + 80, 1, 100);

setMoveKey( spep_0-3 + 80, 1, 166, -30 , 0 );
setMoveKey( spep_0-3 + 118, 1, 166, -30 , 0 );

setScaleKey( spep_0-3 + 80, 1, 2.7, 2.7 );
setScaleKey( spep_0-3 + 118, 1, 2.7, 2.7 );

setRotateKey( spep_0-3 + 80, 1, 0 );
setRotateKey( spep_0-3 + 118, 1, 0 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_x +12, 1018 );

--構える
SE002 = playSe( spep_0 + 24, 1333 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 25, SE002, 70 );
setSeVolumeByWorkId( spep_0 + 26, SE002, 130 );
setStartTimeMs( SE002,  167 );
stopSe( spep_0 + 40, SE002, 16 );
SE003 = playSe( spep_0 + 34, 1033 );
setSeVolumeByWorkId( spep_0 + 34, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 35, SE003, 16.7 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 33.4 );
setSeVolumeByWorkId( spep_0 + 37, SE003, 50.1 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 67 );
setStartTimeMs( SE003,  333 );
SE004 = playSe( spep_0 + 30, 1233 );
setSeVolumeByWorkId( spep_0 + 30, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 31, SE004, 38.8 );
setSeVolumeByWorkId( spep_0 + 32, SE004, 78 );
setStartTimeMs( SE004,  133 );
setPitch( spep_0 + 30, SE004, -600 );
setTimeStretch( SE004, 0.6, 10, 1 );
SE005 = playSe( spep_0 + 30, 1189 );
SE006 = playSe( spep_0 + 32, 1006 );
setPitch( spep_0 + 32, SE006, -200 );
setTimeStretch( SE006, 0.87, 10, 1 );

--瞬間移動
SE007 = playSe( spep_0 + 66, 1109 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 930, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 132; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042 );

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
--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 156,  10020, 52, 0x100, -1, 0, 100.5, 105 );--バキッ
setEffShake( spep_0-3 + 156, ctbaki, 52, 10 );
setEffMoveKey( spep_0-3 + 156, ctbaki, 100.5, 105 , 0 );
setEffMoveKey( spep_0-3 + 158, ctbaki, 102.5, 104.7 , 0 );
setEffMoveKey( spep_0-3 + 160, ctbaki, 101.1, 89.5 , 0 );
setEffMoveKey( spep_0-3 + 162, ctbaki, 91.2, 73.5 , 0 );
setEffMoveKey( spep_0-3 + 164, ctbaki, 88.5, 25.8 , 0 );
setEffMoveKey( spep_0-3 + 166, ctbaki, 66.9, -135.3 , 0 );
setEffMoveKey( spep_0-3 + 168, ctbaki, 55, -224.8 , 0 );
setEffMoveKey( spep_0-3 + 170, ctbaki, 38.8, -252 , 0 );
setEffMoveKey( spep_0-3 + 172, ctbaki, 44.3, -264.7 , 0 );
setEffMoveKey( spep_0-3 + 174, ctbaki, 47.7, -264.3 , 0 );
setEffMoveKey( spep_0-3 + 176, ctbaki, 43.4, -270.4 , 0 );
setEffMoveKey( spep_0-3 + 178, ctbaki, 49.4, -252.5 , 0 );
setEffMoveKey( spep_0-3 + 180, ctbaki, 49.4, -262.1 , 0 );
setEffMoveKey( spep_0-3 + 182, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 184, ctbaki, 45.4, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 186, ctbaki, 49.4, -252.5 , 0 );
setEffMoveKey( spep_0-3 + 188, ctbaki, 49.4, -262.1 , 0 );
setEffMoveKey( spep_0-3 + 190, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 192, ctbaki, 45.4, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 194, ctbaki, 49.4, -252.5 , 0 );
setEffMoveKey( spep_0-3 + 196, ctbaki, 49.4, -262.1 , 0 );
setEffMoveKey( spep_0-3 + 198, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 200, ctbaki, 45.4, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 202, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 204, ctbaki, 44.1, -258.6 , 0 );
setEffMoveKey( spep_0-3 + 206, ctbaki, 44.1, -257.8 , 0 );
setEffMoveKey( spep_0-3 + 208, ctbaki, 37.4, -264.5 , 0 );

setEffScaleKey( spep_0-3 + 156, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_0-3 + 158, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_0-3 + 160, ctbaki, 1.64, 1.64 );
setEffScaleKey( spep_0-3 + 162, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_0-3 + 164, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_0-3 + 166, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 168, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_0-3 + 170, ctbaki, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 172, ctbaki, 2.78, 2.78 );
setEffScaleKey( spep_0-3 + 174, ctbaki, 2.79, 2.79 );
setEffScaleKey( spep_0-3 + 176, ctbaki, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 178, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 208, ctbaki, 2.65, 2.65 );

setEffRotateKey( spep_0-3 + 156, ctbaki, 0 );
setEffRotateKey( spep_0-3 + 208, ctbaki, 0 );

setEffAlphaKey( spep_0-3 + 156, ctbaki, 26 );
setEffAlphaKey( spep_0-3 + 158, ctbaki, 28 );
setEffAlphaKey( spep_0-3 + 160, ctbaki, 34 );
setEffAlphaKey( spep_0-3 + 162, ctbaki, 45 );
setEffAlphaKey( spep_0-3 + 164, ctbaki, 74 );
setEffAlphaKey( spep_0-3 + 166, ctbaki, 175 );
setEffAlphaKey( spep_0-3 + 168, ctbaki, 224 );
setEffAlphaKey( spep_0-3 + 170, ctbaki, 244 );
setEffAlphaKey( spep_0-3 + 172, ctbaki, 252 );
setEffAlphaKey( spep_0-3 + 174, ctbaki, 254 );
setEffAlphaKey( spep_0-3 + 176, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 202, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 204, ctbaki, 227 );
setEffAlphaKey( spep_0-3 + 206, ctbaki, 142 );
setEffAlphaKey( spep_0-3 + 208, ctbaki, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 308,  10021, 32, 0x100, -1, 0, -130, 102 );--バゴォッ
setEffShake( spep_0-3 + 308, ctbago, 32, 10 );
setEffMoveKey( spep_0-3 + 308, ctbago, -130, 102 , 0 );
setEffMoveKey( spep_0-3 + 310, ctbago, 69.7, 297.1 , 0 );
setEffMoveKey( spep_0-3 + 312, ctbago, 69.7, 297.1 , 0 );
setEffMoveKey( spep_0-3 + 314, ctbago, -13.7, 234.4 , 0 );
setEffMoveKey( spep_0-3 + 316, ctbago, -12.2, 235.6 , 0 );
setEffMoveKey( spep_0-3 + 318, ctbago, -16.6, 232.7 , 0 );
setEffMoveKey( spep_0-3 + 320, ctbago, -1.3, 244.6 , 0 );
setEffMoveKey( spep_0-3 + 322, ctbago, 8.6, 252.8 , 0 );
setEffMoveKey( spep_0-3 + 324, ctbago, 11, 255.5 , 0 );
setEffMoveKey( spep_0-3 + 326, ctbago, 28, 268.8 , 0 );
setEffMoveKey( spep_0-3 + 328, ctbago, 34.9, 274.5 , 0 );
setEffMoveKey( spep_0-3 + 330, ctbago, 30.8, 272 , 0 );
setEffMoveKey( spep_0-3 + 332, ctbago, 45.5, 283.3 , 0 );
setEffMoveKey( spep_0-3 + 334, ctbago, 49.1, 286.3 , 0 );
setEffMoveKey( spep_0-3 + 336, ctbago, 41.3, 280.6 , 0 );
setEffMoveKey( spep_0-3 + 338, ctbago, 53.2, 289.7 , 0 );
setEffMoveKey( spep_0-3 + 340, ctbago, 53.9, 290.3 , 0 );

setEffScaleKey( spep_0-3 + 308, ctbago, 1, 1 );
setEffScaleKey( spep_0-3 + 310, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 312, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 314, ctbago, 2.18, 2.18 );
setEffScaleKey( spep_0-3 + 316, ctbago, 2.19, 2.19 );
setEffScaleKey( spep_0-3 + 318, ctbago, 2.12, 2.12 );
setEffScaleKey( spep_0-3 + 320, ctbago, 2.29, 2.29 );
setEffScaleKey( spep_0-3 + 322, ctbago, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 324, ctbago, 2.36, 2.36 );
setEffScaleKey( spep_0-3 + 326, ctbago, 2.55, 2.55 );
setEffScaleKey( spep_0-3 + 328, ctbago, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 330, ctbago, 2.54, 2.54 );
setEffScaleKey( spep_0-3 + 332, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0-3 + 334, ctbago, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 336, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 338, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_0-3 + 340, ctbago, 2.78, 2.78 );

setEffRotateKey( spep_0-3 + 308, ctbago, 0 );
setEffRotateKey( spep_0-3 + 340, ctbago, 0 );

setEffAlphaKey( spep_0-3 + 308, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 324, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 326, ctbago, 197 );
setEffAlphaKey( spep_0-3 + 328, ctbago, 144 );
setEffAlphaKey( spep_0-3 + 330, ctbago, 100 );
setEffAlphaKey( spep_0-3 + 332, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 334, ctbago, 37 );
setEffAlphaKey( spep_0-3 + 336, ctbago, 18 );
setEffAlphaKey( spep_0-3 + 338, ctbago, 6 );
setEffAlphaKey( spep_0-3 + 340, ctbago, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 522,  10016, 48, 0x100, -1, 0, -143.3, 84.2 );--ズンッ
setEffShake( spep_0-3 + 522, ctzun, 48, 10 );
setEffMoveKey( spep_0-3 + 522, ctzun, -143.3, 84.2 , 0 );
setEffMoveKey( spep_0-3 + 524, ctzun, -142.8, 77.7 , 0 );
setEffMoveKey( spep_0-3 + 526, ctzun, -143, 94.9 , 0 );
setEffMoveKey( spep_0-3 + 528, ctzun, -141.3, 99.7 , 0 );
setEffMoveKey( spep_0-3 + 530, ctzun, -131.8, 122.8 , 0 );
setEffMoveKey( spep_0-3 + 532, ctzun, -124.5, 137.2 , 0 );
setEffMoveKey( spep_0-3 + 534, ctzun, -115, 193.8 , 0 );
setEffMoveKey( spep_0-3 + 536, ctzun, -93.3, 265.8 , 0 );
setEffMoveKey( spep_0-3 + 538, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 540, ctzun, -86.7, 257.4 , 0 );
setEffMoveKey( spep_0-3 + 542, ctzun, -90.7, 277 , 0 );
setEffMoveKey( spep_0-3 + 544, ctzun, -93.3, 265.8 , 0 );
setEffMoveKey( spep_0-3 + 546, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 548, ctzun, -86.7, 257.4 , 0 );
setEffMoveKey( spep_0-3 + 550, ctzun, -90.7, 277 , 0 );
setEffMoveKey( spep_0-3 + 552, ctzun, -93.3, 265.8 , 0 );
setEffMoveKey( spep_0-3 + 554, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 556, ctzun, -86.7, 257.4 , 0 );
setEffMoveKey( spep_0-3 + 558, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 560, ctzun, -86, 259.4 , 0 );
setEffMoveKey( spep_0-3 + 562, ctzun, -88, 285.2 , 0 );
setEffMoveKey( spep_0-3 + 564, ctzun, -87.3, 283.8 , 0 );
setEffMoveKey( spep_0-3 + 566, ctzun, -74.7, 308.2 , 0 );
setEffMoveKey( spep_0-3 + 568, ctzun, -69.4, 306.4 , 0 );
setEffMoveKey( spep_0-3 + 570, ctzun, -61.7, 327.9 , 0 );

setEffScaleKey( spep_0-3 + 522, ctzun, 1.63, 1.63 );
setEffScaleKey( spep_0-3 + 524, ctzun, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 526, ctzun, 1.71, 1.71 );
setEffScaleKey( spep_0-3 + 528, ctzun, 1.65, 1.65 );
setEffScaleKey( spep_0-3 + 530, ctzun, 1.93, 1.93 );
setEffScaleKey( spep_0-3 + 532, ctzun, 1.97, 1.97 );
setEffScaleKey( spep_0-3 + 534, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_0-3 + 536, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 538, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 540, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 542, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 544, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 546, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 548, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 550, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 552, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 554, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 556, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 558, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 560, ctzun, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 562, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 564, ctzun, 2.98, 2.98 );
setEffScaleKey( spep_0-3 + 566, ctzun, 3.34, 3.34 );
setEffScaleKey( spep_0-3 + 568, ctzun, 3.18, 3.18 );
setEffScaleKey( spep_0-3 + 570, ctzun, 3.32, 3.32 );

setEffRotateKey( spep_0-3 + 522, ctzun, 10 );
setEffRotateKey( spep_0-3 + 570, ctzun, 10 );

setEffAlphaKey( spep_0-3 + 522, ctzun, 1 );
setEffAlphaKey( spep_0-3 + 524, ctzun, 6 );
setEffAlphaKey( spep_0-3 + 526, ctzun, 14 );
setEffAlphaKey( spep_0-3 + 528, ctzun, 29 );
setEffAlphaKey( spep_0-3 + 530, ctzun, 52 );
setEffAlphaKey( spep_0-3 + 532, ctzun, 88 );
setEffAlphaKey( spep_0-3 + 534, ctzun, 145 );
setEffAlphaKey( spep_0-3 + 536, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 558, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 560, ctzun, 248 );
setEffAlphaKey( spep_0-3 + 562, ctzun, 227 );
setEffAlphaKey( spep_0-3 + 564, ctzun, 191 );
setEffAlphaKey( spep_0-3 + 566, ctzun, 142 );
setEffAlphaKey( spep_0-3 + 568, ctzun, 78 );
setEffAlphaKey( spep_0-3 + 570, ctzun, 0 );

--敵の動き1
setDisp( spep_0-3 + 150, 1, 1);
setDisp( spep_0-1 + 254, 1, 0);

changeAnime( spep_0-3 + 150, 1, 108);
changeAnime( spep_0-3 + 210, 1, 7);
changeAnime( spep_0-3 + 214, 1, 6);
changeAnime( spep_0-3 + 242, 1, 106);

setMoveKey( spep_0-3 + 150, 1, -79.2, 27.9 , 0 );
setMoveKey( spep_0-3 + 152, 1, -147, 193.9 , 0 );
setMoveKey( spep_0-3 + 154, 1, 29, 29.9 , 0 );
setMoveKey( spep_0-3 + 156, 1, 51.1, 155.8 , 0 );
setMoveKey( spep_0-3 + 158, 1, -81, 219.8 , 0 );
setMoveKey( spep_0-3 + 160, 1, 111.1, 271.8 , 0 );
setMoveKey( spep_0-3 + 162, 1, -215.2, 305.9 , 0 );
setMoveKey( spep_0-3 + 164, 1, -125.2, -24.1 , 0 );
setMoveKey( spep_0-3 + 166, 1, -131, 235.4 , 0 );
setMoveKey( spep_0-3 + 168, 1, 59.2, 188.9 , 0 );
setMoveKey( spep_0-3 + 170, 1, 49.3, 168.4 , 0 );
setMoveKey( spep_0-3 + 172, 1, 253.5, 265.9 , 0 );
setMoveKey( spep_0-3 + 174, 1, 231.7, 351.4 , 0 );
setMoveKey( spep_0-3 + 176, 1, 189.7, 320.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, 209.7, 320.8 , 0 );
setMoveKey( spep_0-3 + 180, 1, 179.7, 280.8 , 0 );
setMoveKey( spep_0-3 + 182, 1, 219.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 184, 1, 169.7, 310.8 , 0 );
setMoveKey( spep_0-3 + 186, 1, 221.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 188, 1, 221.7, 280.8 , 0 );
setMoveKey( spep_0-3 + 190, 1, 205.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, 191.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 194, 1, 211.7, 284.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, 191.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, 191.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, 197.7, 294.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, 197.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 204, 1, 191.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 206, 1, 191.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, 197.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 209, 1, 197.7, 300.8 , 0 );

setMoveKey( spep_0-3 + 210, 1, 170.1, -483.9 , 0 );
setMoveKey( spep_0-3 + 212, 1, 150.1, -483.9 , 0 );
setMoveKey( spep_0-3 + 213, 1, 150.1, -483.9 , 0 );

setMoveKey( spep_0-3 + 214, 1, 104.1, -194.1 , 0 );
setMoveKey( spep_0-3 + 216, 1, 103.4, -195.3 , 0 );
setMoveKey( spep_0-3 + 218, 1, 69.3, -118.6 , 0 );
setMoveKey( spep_0-3 + 220, 1, 62, -118.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, 15, -7.3 , 0 );
setMoveKey( spep_0-3 + 224, 1, -47.9, 69.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, -69.7, 109.4 , 0 );
setMoveKey( spep_0-3 + 228, 1, -83.4, 124.9 , 0 );
setMoveKey( spep_0-3 + 230, 1, -95.5, 142.7 , 0 );
setMoveKey( spep_0-3 + 232, 1, -105.3, 157.1 , 0 );
setMoveKey( spep_0-3 + 234, 1, -113.3, 168.9 , 0 );
setMoveKey( spep_0-3 + 236, 1, -120.1, 178.9 , 0 );
setMoveKey( spep_0-3 + 238, 1, -125.8, 187.2 , 0 );
setMoveKey( spep_0-3 + 240, 1, -130.6, 194.4 , 0 );
setMoveKey( spep_0-3 + 241, 1, -130.6, 194.4 , 0 );

setMoveKey( spep_0-3 + 242, 1, -134.7, 200.4 , 0 );
setMoveKey( spep_0-3 + 244, 1, -138.1, 205.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, -140.9, 209.7 , 0 );
setMoveKey( spep_0-3 + 248, 1, -143.1, 213.1 , 0 );
setMoveKey( spep_0-3 + 250, 1, -144.8, 215.7 , 0 );
setMoveKey( spep_0-3 + 252, 1, -146, 217.6 , 0 );
setMoveKey( spep_0-1 + 254, 1, -146.9, 217.9 , 0 );

setScaleKey( spep_0-3 + 150, 1, 14.81,14.81);
setScaleKey( spep_0-3 + 164, 1, 14.81,14.81);
setScaleKey( spep_0-3 + 166, 1, 13.3,13.3);
setScaleKey( spep_0-3 + 168, 1, 11.78,11.78);
setScaleKey( spep_0-3 + 170, 1, 10.26,10.26);
setScaleKey( spep_0-3 + 172, 1, 8.73,8.73);
setScaleKey( spep_0-3 + 174, 1, 7.21,7.21);
setScaleKey( spep_0-3 + 176, 1, 5.7,5.7);
setScaleKey( spep_0-3 + 208, 1, 5.7,5.7);
setScaleKey( spep_0-3 + 209, 1, 5.7,5.7);

setScaleKey( spep_0-3 + 210, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 213, 1, 1.94, 1.94 );

setScaleKey( spep_0-3 + 214, 1, 2.69, 2.69 );
setScaleKey( spep_0-3 + 216, 1, 2.69, 2.69 );
setScaleKey( spep_0-3 + 218, 1, 2.17, 2.09 );
setScaleKey( spep_0-3 + 220, 1, 2.17, 2.09 );
setScaleKey( spep_0-3 + 222, 1, 1.8, 1.73 );
setScaleKey( spep_0-3 + 224, 1, 1.31, 1.27 );
setScaleKey( spep_0-3 + 226, 1, 1.12, 1.08 );
setScaleKey( spep_0-3 + 228, 1, 0.98, 0.95 );
setScaleKey( spep_0-3 + 230, 1, 0.88, 0.85 );
setScaleKey( spep_0-3 + 232, 1, 0.79, 0.77 );
setScaleKey( spep_0-3 + 234, 1, 0.73, 0.7 );
setScaleKey( spep_0-3 + 236, 1, 0.67, 0.65 );
setScaleKey( spep_0-3 + 238, 1, 0.62, 0.6 );
setScaleKey( spep_0-3 + 241, 1, 0.58, 0.56 );

setScaleKey( spep_0-3 + 242, 1, 0.55, 0.53 );
setScaleKey( spep_0-3 + 244, 1, 0.52, 0.5 );
setScaleKey( spep_0-3 + 246, 1, 0.49, 0.48 );
setScaleKey( spep_0-3 + 248, 1, 0.48, 0.46 );
setScaleKey( spep_0-3 + 250, 1, 0.46, 0.45 );
setScaleKey( spep_0-3 + 252, 1, 0.45, 0.44 );
setScaleKey( spep_0-1 + 254, 1, 0.45, 0.43 );

setRotateKey( spep_0-3 + 150, 1, -35 );
setRotateKey( spep_0-3 + 208, 1, -35 );
setRotateKey( spep_0-3 + 209, 1, -35 );

setRotateKey( spep_0-3 + 210, 1, 160 );
setRotateKey( spep_0-3 + 213, 1, 160 );

setRotateKey( spep_0-3 + 214, 1, 99.9 );
setRotateKey( spep_0-3 + 216, 1, 99.9 );
setRotateKey( spep_0-3 + 218, 1, 80 );
setRotateKey( spep_0-3 + 220, 1, 80 );
setRotateKey( spep_0-3 + 222, 1, 71.4 );
setRotateKey( spep_0-3 + 224, 1, 51.2 );
setRotateKey( spep_0-3 + 226, 1, 43 );
setRotateKey( spep_0-3 + 228, 1, 37.3 );
setRotateKey( spep_0-3 + 230, 1, 33 );
setRotateKey( spep_0-3 + 232, 1, 29.5 );
setRotateKey( spep_0-3 + 234, 1, 32.8 );
setRotateKey( spep_0-3 + 236, 1, 30.4 );
setRotateKey( spep_0-3 + 238, 1, 47.2 );
setRotateKey( spep_0-3 + 240, 1, 45.5 );
setRotateKey( spep_0-3 + 241, 1, 45.5 );

setRotateKey( spep_0-3 + 242, 1, -75.9 );
setRotateKey( spep_0-3 + 244, 1, -77.1 );
setRotateKey( spep_0-3 + 246, 1, -98.1 );
setRotateKey( spep_0-3 + 248, 1, -98.9 );
setRotateKey( spep_0-3 + 250, 1, -104.4 );
setRotateKey( spep_0-3 + 252, 1, -104.8 );
setRotateKey( spep_0-1 + 254, 1, -105 );

--敵の動き2
setDisp( spep_0-3 + 288, 1, 1);
setDisp( spep_0-3 + 296, 1, 0);
setDisp( spep_0-3 + 302, 1, 1);
setDisp( spep_0-1 + 352, 1, 0);

changeAnime( spep_0-3 + 288, 1, 8);

setMoveKey( spep_0-3 + 288, 1, -175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 302, 1, -175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 304, 1, -103.5, -100.7 , 0 );
setMoveKey( spep_0-3 + 306, 1, -175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 308, 1, -180.9, -25.3 , 0 );
setMoveKey( spep_0-3 + 310, 1, -175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 312, 1, -175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 314, 1, -181.8, -40.8 , 0 );
setMoveKey( spep_0-3 + 316, 1, -187.2, -45.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, -185.5, -40.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, -189.8, -44.4 , 0 );
setMoveKey( spep_0-3 + 322, 1, -193.7, -47.7 , 0 );
setMoveKey( spep_0-3 + 324, 1, -190.5, -44 , 0 );
setMoveKey( spep_0-3 + 326, 1, -199.9, -53 , 0 );
setMoveKey( spep_0-3 + 328, 1, -195.7, -48.4 , 0 );
setMoveKey( spep_0-3 + 330, 1, -197.5, -50 , 0 );
setMoveKey( spep_0-3 + 332, 1, -205.3, -57.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, -203.8, -51.6 , 0 );
setMoveKey( spep_0-3 + 336, 1, -206.3, -58.4 , 0 );
setMoveKey( spep_0-3 + 338, 1, -206.3, -58.4 , 0 );
setMoveKey( spep_0-3 + 340, 1, -195.4, -52 , 0 );
setMoveKey( spep_0-3 + 342, 1, -197.8, -58.7 , 0 );
setMoveKey( spep_0-3 + 344, 1, -195.8, -52.2 , 0 );
setMoveKey( spep_0-3 + 351, 1, -195.8, -52.2 , 0 );
setMoveKey( spep_0-1 + 352, 1, -335.8, -92.2 , 0 );

setScaleKey( spep_0-3 + 288, 1,2.09,2.09);
setScaleKey( spep_0-3 + 302, 1,2.09,2.09);
setScaleKey( spep_0-3 + 303, 1,2.09,2.09);
setScaleKey( spep_0-3 + 304, 1,4.16,4.16);
setScaleKey( spep_0-3 + 305, 1,4.16,4.16);
setScaleKey( spep_0-3 + 306, 1,2.09,2.09);
setScaleKey( spep_0-3 + 307, 1,2.09,2.09);
setScaleKey( spep_0-3 + 308, 1,2.92,2.92);
setScaleKey( spep_0-3 + 309, 1,2.92,2.92);
setScaleKey( spep_0-3 + 310, 1,2.09,2.09);
setScaleKey( spep_0-1 + 352, 1,2.09,2.09);

setRotateKey( spep_0-3 + 288, 1, -33.1 );
setRotateKey( spep_0-3 + 351, 1, -33.1 );
setRotateKey( spep_0-3 + 352, 1, -45 );
setRotateKey( spep_0-1 + 352, 1, -45 );

--敵の動き3
setDisp( spep_0-3 + 364, 1, 1);
setDisp( spep_0 + 405, 1, 0);

changeAnime( spep_0-3 + 364, 1, 7);
changeAnime( spep_0-3 + 368, 1, 8);
changeAnime( spep_0-3 + 372, 1, 105);

setMoveKey( spep_0-3 + 364, 1, 1103.1, -1198.6 , 0 );
setMoveKey( spep_0-3 + 367, 1, 1103.1, -1198.6 , 0 );

setMoveKey( spep_0-3 + 368, 1, 100.8, -10.4 , 0 );
setMoveKey( spep_0-3 + 371, 1, 100.8, -10.4 , 0 );

setMoveKey( spep_0-3 + 372, 1, 121.5, 127 , 0 );
setMoveKey( spep_0-3 + 374, 1, 10.4, 141.2 , 0 );
setMoveKey( spep_0-3 + 376, 1, 10.4, 141.2 , 0 );
setMoveKey( spep_0-3 + 378, 1, -57.9, 153.3 , 0 );
setMoveKey( spep_0-3 + 380, 1, -68, 153.5 , 0 );
setMoveKey( spep_0-3 + 382, 1, -97.2, 154.1 , 0 );
setMoveKey( spep_0-3 + 384, 1, -126.5, 154.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, -143.5, 155.1 , 0 );
setMoveKey( spep_0-3 + 388, 1, -153.8, 155.3 , 0 );
setMoveKey( spep_0-3 + 390, 1, -160.2, 155.4 , 0 );
setMoveKey( spep_0-3 + 392, 1, -164.3, 155.5 , 0 );
setMoveKey( spep_0-3 + 394, 1, -167, 155.5 , 0 );
setMoveKey( spep_0-3 + 396, 1, -168.8, 155.6 , 0 );
setMoveKey( spep_0-3 + 398, 1, -170.1, 155.6 , 0 );
setMoveKey( spep_0-3 + 400, 1, -170.9, 155.6 , 0 );
setMoveKey( spep_0-3 + 402, 1, -171.3, 155.6 , 0 );
setMoveKey( spep_0-3 + 404, 1, -171.6, 155.6 , 0 );
setMoveKey( spep_0 + 405, 1, -171.6, 155.3 , 0 );

setScaleKey( spep_0-3 + 364, 1, 9, 9 );
setScaleKey( spep_0-3 + 367, 1, 9, 9 );

setScaleKey( spep_0-3 + 368, 1, 4.99, 4.99 );
setScaleKey( spep_0-3 + 371, 1, 4.99, 4.99 );

setScaleKey( spep_0-3 + 372, 1, 3, 3 );
setScaleKey( spep_0-3 + 374, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 376, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 378, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 380, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 382, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 384, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 386, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 388, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 390, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 392, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 394, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 396, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 398, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 400, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 405, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 364, 1, 90 );
setRotateKey( spep_0-3 + 367, 1, 90 );

setRotateKey( spep_0-3 + 368, 1, 15 );
setRotateKey( spep_0-3 + 371, 1, 15 );

setRotateKey( spep_0-3 + 372, 1, -50 );
setRotateKey( spep_0-3 + 376, 1, -50 );
setRotateKey( spep_0-3 + 378, 1, -55 );
setRotateKey( spep_0-3 + 380, 1, -55.9 );
setRotateKey( spep_0-3 + 382, 1, -58.3 );
setRotateKey( spep_0-3 + 384, 1, -60.8 );
setRotateKey( spep_0-3 + 386, 1, -62.3 );
setRotateKey( spep_0-3 + 388, 1, -63.2 );
setRotateKey( spep_0-3 + 390, 1, -63.7 );
setRotateKey( spep_0-3 + 392, 1, -64.1 );
setRotateKey( spep_0-3 + 394, 1, -64.3 );
setRotateKey( spep_0-3 + 396, 1, -64.4 );
setRotateKey( spep_0-3 + 398, 1, -64.6 );
setRotateKey( spep_0-3 + 400, 1, -64.6 );
setRotateKey( spep_0-3 + 402, 1, -64.7 );
setRotateKey( spep_0 + 405, 1, -64.7 );

--敵の動き4
setDisp( spep_0-3 + 512, 1, 1);
setDisp( spep_0-1 + 606, 1, 0);

changeAnime( spep_0-3 + 512, 1, 8);

setMoveKey( spep_0-3 + 512, 1, -92.4, -193 , 0 );
setMoveKey( spep_0-3 + 514, 1, -112.4, -233 , 0 );
setMoveKey( spep_0-3 + 516, 1, -12.4, -153 , 0 );
setMoveKey( spep_0-3 + 518, 1, -92.4, -233 , 0 );
setMoveKey( spep_0-3 + 520, 1, -142.4, -63 , 0 );
setMoveKey( spep_0-3 + 522, 1, -162.4, -73 , 0 );
setMoveKey( spep_0-3 + 524, 1, -202.4, -293 , 0 );
setMoveKey( spep_0-3 + 526, 1, -202.4, -253 , 0 );
setMoveKey( spep_0-3 + 528, 1, -262.4, -313 , 0 );
setMoveKey( spep_0-3 + 530, 1, 78.1, 47.3 , 0 );
setMoveKey( spep_0-3 + 532, 1, -212, -180.6 , 0 );
setMoveKey( spep_0-3 + 534, 1, -259.8, -3.1 , 0 );
setMoveKey( spep_0-3 + 536, 1, -249.4, -41.5 , 0 );
setMoveKey( spep_0-3 + 538, 1, -275.4, -33.5 , 0 );
setMoveKey( spep_0-3 + 540, 1, -237.4, -95.5 , 0 );
setMoveKey( spep_0-3 + 542, 1, -199.4, -145.5 , 0 );
setMoveKey( spep_0-3 + 544, 1, -245.4, -89.5 , 0 );
setMoveKey( spep_0-3 + 546, 1, -163.4, -121.5 , 0 );
setMoveKey( spep_0-3 + 548, 1, -211.4, -127.5 , 0 );
setMoveKey( spep_0-3 + 550, 1, -171.4, -127.5 , 0 );
setMoveKey( spep_0-3 + 552, 1, -231.4, -119.5 , 0 );
setMoveKey( spep_0-3 + 554, 1, -211.4, -111.5 , 0 );
setMoveKey( spep_0-3 + 556, 1, -221.4, -81.5 , 0 );
setMoveKey( spep_0-3 + 558, 1, -227.4, -101.5 , 0 );
setMoveKey( spep_0-3 + 560, 1, -221.4, -95.5 , 0 );
setMoveKey( spep_0-3 + 562, 1, -229.4, -97.5 , 0 );
setMoveKey( spep_0-3 + 564, 1, -229.4, -99.5 , 0 );
setMoveKey( spep_0-3 + 566, 1, -237.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 568, 1, -237.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 570, 1, -241.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 572, 1, -245.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 580, 1, -245.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 582, 1, -301.4, -131.6 , 0 );
setMoveKey( spep_0-3 + 584, 1, -319.1, -145.8 , 0 );
setMoveKey( spep_0-3 + 586, 1, -393.5, -198.2 , 0 );
setMoveKey( spep_0-3 + 588, 1, -377.2, -185.2 , 0 );
setMoveKey( spep_0-3 + 590, 1, -469.7, -220.4 , 0 );
setMoveKey( spep_0-3 + 594, 1, -469.7, -220.4 , 0 );
setMoveKey( spep_0-3 + 596, 1, -487.5, -238.2 , 0 );
setMoveKey( spep_0-3 + 598, 1, -493, -241.8 , 0 );
setMoveKey( spep_0-3 + 600, 1, -475.3, -224.1 , 0 );
setMoveKey( spep_0-3 + 602, 1, -493, -241.8 , 0 );
setMoveKey( spep_0-3 + 604, 1, -498.6, -245.6 , 0 );
setMoveKey( spep_0-1 + 606, 1, -480.8, -227.8 , 0 );

setScaleKey( spep_0-3 + 512, 1, 12.48,12.48);
setScaleKey( spep_0-3 + 530, 1, 12.48,12.48);
setScaleKey( spep_0-3 + 532, 1, 5.04,5.04);
setScaleKey( spep_0-3 + 534, 1, 3.44,3.44);
setScaleKey( spep_0-3 + 536, 1, 3.12,3.12);
setScaleKey( spep_0-1 + 606, 1, 3.12,3.12);

setRotateKey( spep_0-3 + 512, 1, -10 );
setRotateKey( spep_0-1 + 606, 1, -10 );

--敵の動き5
setDisp( spep_0-3 + 610, 1, 1);
setDisp( spep_0+1 + 672, 1, 0);

changeAnime( spep_0-3 + 610, 1, 105);

setMoveKey( spep_0-3 + 610, 1, 169.7, 198.5 , 0 );
setMoveKey( spep_0-3 + 612, 1, 169.6, 198.4 , 0 );
setMoveKey( spep_0-3 + 614, 1, 169.5, 198.3 , 0 );
setMoveKey( spep_0-3 + 616, 1, 169.4, 198.1 , 0 );
setMoveKey( spep_0-3 + 618, 1, 169.4, 198 , 0 );
setMoveKey( spep_0-3 + 620, 1, 169.3, 197.9 , 0 );
setMoveKey( spep_0-3 + 622, 1, 169.2, 197.8 , 0 );
setMoveKey( spep_0-3 + 624, 1, 169.1, 197.7 , 0 );
setMoveKey( spep_0-3 + 626, 1, 169.1, 197.6 , 0 );
setMoveKey( spep_0-3 + 628, 1, 169, 197.6 , 0 );
setMoveKey( spep_0-3 + 630, 1, 169, 197.5 , 0 );
setMoveKey( spep_0-3 + 632, 1, 168.9, 197.4 , 0 );
setMoveKey( spep_0-3 + 634, 1, 168.9, 197.3 , 0 );
setMoveKey( spep_0-3 + 636, 1, 168.8, 197.3 , 0 );
setMoveKey( spep_0-3 + 638, 1, 168.8, 197.2 , 0 );
setMoveKey( spep_0-3 + 640, 1, 168.7, 197.1 , 0 );
setMoveKey( spep_0-3 + 642, 1, 168.7, 197.1 , 0 );
setMoveKey( spep_0-3 + 644, 1, 168.6, 197 , 0 );
setMoveKey( spep_0-3 + 646, 1, 168.6, 197 , 0 );
setMoveKey( spep_0-3 + 648, 1, 168.6, 196.9 , 0 );
setMoveKey( spep_0-3 + 650, 1, 168.5, 196.9 , 0 );
setMoveKey( spep_0-3 + 652, 1, 168.5, 196.8 , 0 );
setMoveKey( spep_0-3 + 656, 1, 168.5, 196.8 , 0 );
setMoveKey( spep_0-3 + 658, 1, 168.5, 196.7 , 0 );
setMoveKey( spep_0-3 + 660, 1, 168.4, 196.7 , 0 );
setMoveKey( spep_0-3 + 670, 1, 168.4, 196.7 , 0 );
setMoveKey( spep_0+1 + 672, 1, 168.4, 196.6 , 0 );

setScaleKey( spep_0-3 + 610, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 618, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 620, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 640, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 642, 1, 0.11, 0.11 );
setScaleKey( spep_0+1 + 672, 1, 0.11, 0.11 );

setRotateKey( spep_0-3 + 610, 1, 14.8 );
setRotateKey( spep_0-3 + 612, 1, 14.5 );
setRotateKey( spep_0-3 + 614, 1, 14.3 );
setRotateKey( spep_0-3 + 616, 1, 14 );
setRotateKey( spep_0-3 + 618, 1, 13.8 );
setRotateKey( spep_0-3 + 620, 1, 13.6 );
setRotateKey( spep_0-3 + 622, 1, 13.4 );
setRotateKey( spep_0-3 + 624, 1, 13.2 );
setRotateKey( spep_0-3 + 626, 1, 13 );
setRotateKey( spep_0-3 + 628, 1, 12.8 );
setRotateKey( spep_0-3 + 630, 1, 12.6 );
setRotateKey( spep_0-3 + 632, 1, 12.4 );
setRotateKey( spep_0-3 + 634, 1, 12.3 );
setRotateKey( spep_0-3 + 636, 1, 12.1 );
setRotateKey( spep_0-3 + 638, 1, 12 );
setRotateKey( spep_0-3 + 640, 1, 11.8 );
setRotateKey( spep_0-3 + 642, 1, 11.7 );
setRotateKey( spep_0-3 + 644, 1, 11.6 );
setRotateKey( spep_0-3 + 646, 1, 11.5 );
setRotateKey( spep_0-3 + 648, 1, 11.4 );
setRotateKey( spep_0-3 + 650, 1, 11.3 );
setRotateKey( spep_0-3 + 652, 1, 11.2 );
setRotateKey( spep_0-3 + 654, 1, 11.1 );
setRotateKey( spep_0-3 + 656, 1, 11 );
setRotateKey( spep_0-3 + 658, 1, 11 );
setRotateKey( spep_0-3 + 660, 1, 10.9 );
setRotateKey( spep_0-3 + 662, 1, 10.9 );
setRotateKey( spep_0-3 + 664, 1, 10.8 );
setRotateKey( spep_0+1 + 672, 1, 10.8 );

-- ** 音 ** --
--振りかぶる
SE008 = playSe( spep_0 + 116, 1116 );
stopSe( spep_0 + 140, SE008, 10 );
SE009 = playSe( spep_0 + 116, 1278 );
stopSe( spep_0 + 142, SE009, 50 );
SE010 = playSe( spep_0 + 116, 1004 );
SE011 = playSe( spep_0 + 144, 1003 );

--アッパー
SE012 = playSe( spep_0 + 148, 1123 );

--敵飛んでいく
SE013 = playSe( spep_0 + 208, 1027 );
setSeVolumeByWorkId( spep_0 + 208, SE013, 64 );
SE014 = playSe( spep_0 + 208, 1183 );
setSeVolumeByWorkId( spep_0 + 208, SE014, 65 );
stopSe( spep_0 + 252, SE014, 16 );

--ゴジータ向かっていく
SE015 = playSe( spep_0 + 254, 1182 );
SE016 = playSe( spep_0 + 254, 9 );
setSeVolumeByWorkId( spep_0 + 254, SE016, 80 );
stopSe( spep_0 + 302, SE016, 36 );

--体当たりパンチ
SE017 = playSe( spep_0 + 296, 1189 );
SE018 = playSe( spep_0 + 300, 1120 );

--敵画面外に
SE019 = playSe( spep_0 + 346, 1021 );
stopSe( spep_0 + 370, SE019, 36 );
SE020 = playSe( spep_0 + 348, 1277 );

--敵地面に飛んでいく
SE021 = playSe( spep_0 + 362, 1027 );
setSeVolumeByWorkId( spep_0 + 362, SE021, 53 );
SE022 = playSe( spep_0 + 362, 1121 );
setSeVolumeByWorkId( spep_0 + 362, SE022, 74 );
stopSe( spep_0 + 414, SE022, 34 );
SE023 = playSe( spep_0 + 362, 1183 );

--ゴジータ手前へ
SE024 = playSe( spep_0 + 406, 1314 );
setSeVolumeByWorkId( spep_0 + 406, SE024, 79 );
stopSe( spep_0 + 502, SE024, 16 );

--ゴジータ奥へ
SE025 = playSe( spep_0 + 434, 1117 );
setSeVolumeByWorkId( spep_0 + 434, SE025, 127 );
stopSe( spep_0 + 462, SE025, 22 );
setPitch( spep_0 + 434, SE025, -400 );
setTimeStretch( SE025, 0.73, 10, 1 );

--ゴジータ手前へ
SE026 = playSe( spep_0 + 434, 1072 );
setSeVolumeByWorkId( spep_0 + 434, SE026, 141 );
SE027 = playSe( spep_0 + 454, 1117 );
stopSe( spep_0 + 480, SE027, 14 );
setPitch( spep_0 + 454, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );
SE028 = playSe( spep_0 + 454, 1004 );
setPitch( spep_0 + 454, SE028, -600 );
setTimeStretch( SE028, 0.6, 10, 1 );

--蹴り振りかぶり
SE029 = playSe( spep_0 + 500, 1004 );

--蹴り
SE030 = playSe( spep_0 + 510, 1187 );
setSeVolumeByWorkId( spep_0 + 510, SE030, 110 );
SE031 = playSe( spep_0 + 514, 1110 );
setSeVolumeByWorkId( spep_0 + 514, SE031, 120 );
SE032 = playSe( spep_0 + 518, 1182 );
setSeVolumeByWorkId( spep_0 + 518, SE032, 120 );

--連続爆発
SE033 = playSe( spep_0 + 530, 1033 );
stopSe( spep_0 + 530 + 70, SE033, 20 );
SE034 = playSe( spep_0 + 530, 1017 );
stopSe( spep_0 + 530 + 70, SE035, 20 );
SE035 = playSe( spep_0 + 552, 1052 );
stopSe( spep_0 + 530 + 70, SE036, 20 );

--岩突っ込む
SE036 = playSe( spep_0 + 578, 1011 );
SE037 = playSe( spep_0 + 580, 1159 );
setSeVolumeByWorkId( spep_0 + 580, SE037, 76 );

--ゴジータ飛んでくる
SE038 = playSe( spep_0 + 608, 1168 );
stopSe( spep_0 + 640, SE038, 36 );

--地面着地
SE039 = playSe( spep_0 + 634, 1044 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 634, SE039, 141 );
stopSe( spep_0 + 660, SE039, 18 );
SE040 = playSe( spep_0 + 634, 1197 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 634, SE040, 77 );
stopSe( spep_0 + 640, SE040, 2 );
setPitch( spep_0 + 634, SE040, -200 );
setTimeStretch( SE040, 0.87, 10, 1 );
SE041 = playSe( spep_0 + 638, 1197 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 638, SE041, 88 );
stopSe( spep_0 + 644, SE041, 4 );
setPitch( spep_0 + 638, SE041, -200 );
setTimeStretch( SE041, 0.87, 10, 1 );
SE042 = playSe( spep_0 + 642, 1192 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 642, SE042, 216 );
SE043 = playSe( spep_0 + 644, 1197 ,"",0.5);
stopSe( spep_0 + 648, SE043, 4 );
setPitch( spep_0 + 644, SE043, -200 );
setTimeStretch( SE043, 0.87, 10, 1 );
SE044 = playSe( spep_0 + 648, 1197 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 648, SE044, 132 );
stopSe( spep_0 + 654, SE044, 4 );
setPitch( spep_0 + 648, SE044, -200 );
setTimeStretch( SE044, 0.87, 10, 1 );

--腕合わせる
SE045 = playSe( spep_0 + 690, 1233 );
setSeVolumeByWorkId( spep_0 + 690, SE045, 0 );
setSeVolumeByWorkId( spep_0 + 691, SE045, 14.5 );
setSeVolumeByWorkId( spep_0 + 692, SE045, 29 );
setSeVolumeByWorkId( spep_0 + 693, SE045, 43.5 );
setSeVolumeByWorkId( spep_0 + 694, SE045, 58 );
setSeVolumeByWorkId( spep_0 + 695, SE045, 72.5 );
setSeVolumeByWorkId( spep_0 + 696, SE045, 87 );
setStartTimeMs( SE045,  50 );
setPitch( spep_0 + 690, SE045, -400 );
setTimeStretch( SE045, 0.73, 10, 1 );
SE046 = playSe( spep_0 + 694, 1006 );
setSeVolumeByWorkId( spep_0 + 694, SE046, 88 );
setPitch( spep_0 + 694, SE046, -600 );
setTimeStretch( SE046, 0.6, 10, 1 );

--かめはめ波溜め
SE047 = playSe( spep_0 + 732, 1209 );
SE048 = playSe( spep_0 + 732, 1210 );
stopSe( spep_0 + 894, SE048, 18 );

--カットイン前かめはめ波発射
SE049 = playSe( spep_0 + 900, 1014 );
SE050 = playSe( spep_0 + 900, 1027 );
setSeVolumeByWorkId( spep_0 + 900, SE050, 72 );
SE051 = playSe( spep_0 + 900, 1213 );
SE052 = playSe( spep_0 + 900, 1133 );


--白フェード
entryFade( spep_0 + 922, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+928;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
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
--playSe( spep_1 + 0, SE_05 );

--カットイン前かめはめ波発射
stopSe( spep_1 + 8, SE049, 10 );
stopSe( spep_1 + 8, SE050, 10 );
stopSe( spep_1 + 8, SE051, 10 );
stopSe( spep_1 + 8, SE052, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波敵に迫る〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 144, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 144, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 144, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 144, finish_f, 255 );

-- ** エフェクト等 ** --
KO = entryEffectLife( spep_2 + 136, SP_05,72, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_2 + 136, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 209, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 136, KO, 1.0 , 1.0 );
setEffScaleKey( spep_2 + 209, KO, 1.0 , 1.0 );
setEffRotateKey( spep_2 + 136, KO, 0 );
setEffRotateKey( spep_2 + 209, KO, 0 );
setEffAlphaKey( spep_2 + 136, KO, 255 );
setEffAlphaKey( spep_2 + 209, KO, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 16,  10012, 18, 0x100, -1, 0, -208, 17.3 );--ズオッ
setEffShake( spep_2-3 + 16, ctzuo, 48, 10 );
setEffMoveKey( spep_2-3 + 16, ctzuo, -208, 17.3 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzuo, -200.1, 26.4 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzuo, -183.1, 46.4 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzuo, -150.3, 84.8 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzuo, -81.7, 164.7 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzuo, -44.5, 200 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzuo, -15.6, 227.5 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, 4.9, 246.9 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, 17, 258.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, 21.1, 262.3 , 0 );

setEffScaleKey( spep_2-3 + 16, ctzuo, 0.51, 0.51 );
setEffScaleKey( spep_2-3 + 18, ctzuo, 0.64, 0.64 );
setEffScaleKey( spep_2-3 + 20, ctzuo, 0.94, 0.94 );
setEffScaleKey( spep_2-3 + 22, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2-3 + 24, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_2-3 + 26, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_2-3 + 28, ctzuo, 3.6, 3.6 );
setEffScaleKey( spep_2-3 + 30, ctzuo, 3.88, 3.88 );
setEffScaleKey( spep_2-3 + 32, ctzuo, 4.06, 4.06 );
setEffScaleKey( spep_2-3 + 34, ctzuo, 4.11, 4.11 );

setEffRotateKey( spep_2-3 + 16, ctzuo, 0 );
setEffRotateKey( spep_2-3 + 34, ctzuo, 0 );

setEffAlphaKey( spep_2-3 + 16, ctzuo, 4 );
setEffAlphaKey( spep_2-3 + 18, ctzuo, 20 );
setEffAlphaKey( spep_2-3 + 20, ctzuo, 53 );
setEffAlphaKey( spep_2-3 + 22, ctzuo, 119 );
setEffAlphaKey( spep_2-3 + 24, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 32, ctzuo, 64 );
setEffAlphaKey( spep_2-3 + 34, ctzuo, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 40, 1, 0);

changeAnime( spep_2 + 0, 1, 105);

setMoveKey( spep_2 + 0, 1, 110, 20.1 , 0 );
setMoveKey( spep_2 + 2, 1, 109.8, 20.3 , 0 );
setMoveKey( spep_2 + 4, 1, 109.2, 20.8 , 0 );
setMoveKey( spep_2 + 6, 1, 108.2, 21.7 , 0 );
setMoveKey( spep_2 + 8, 1, 106.8, 22.9 , 0 );
setMoveKey( spep_2 + 10, 1, 104.9, 24.5 , 0 );
setMoveKey( spep_2 + 12, 1, 102.7, 26.4 , 0 );
setMoveKey( spep_2 + 14, 1, 100, 28.6 , 0 );
setMoveKey( spep_2 + 16, 1, 96.8, 31.2 , 0 );
setMoveKey( spep_2 + 18, 1, 93.3, 34 , 0 );
setMoveKey( spep_2 + 20, 1, 89.2, 37.1 , 0 );
setMoveKey( spep_2 + 22, 1, 85.2, 40.1 , 0 );
setMoveKey( spep_2 + 24, 1, 81.5, 42.7 , 0 );
setMoveKey( spep_2 + 26, 1, 78.2, 45 , 0 );
setMoveKey( spep_2 + 28, 1, 75.4, 47 , 0 );
setMoveKey( spep_2 + 30, 1, 73, 48.6 , 0 );
setMoveKey( spep_2 + 32, 1, 71, 49.9 , 0 );
setMoveKey( spep_2 + 34, 1, 69.5, 50.9 , 0 );
setMoveKey( spep_2 + 36, 1, 68.4, 51.6 , 0 );
setMoveKey( spep_2 + 38, 1, 67.7, 52 , 0 );
setMoveKey( spep_2 + 40, 1, 67.5, 52.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 4, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 6, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 8, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 10, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 12, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 14, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 1, 1 );
setScaleKey( spep_2 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 24, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 26, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 28, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 40, 1, 0.9, 0.9 );

setRotateKey( spep_2 + 0, 1, -5 );
setRotateKey( spep_2 + 2, 1, -5 );
setRotateKey( spep_2 + 4, 1, -5.1 );
setRotateKey( spep_2 + 6, 1, -5.2 );
setRotateKey( spep_2 + 8, 1, -5.4 );
setRotateKey( spep_2 + 10, 1, -5.6 );
setRotateKey( spep_2 + 12, 1, -5.9 );
setRotateKey( spep_2 + 14, 1, -6.2 );
setRotateKey( spep_2 + 16, 1, -6.5 );
setRotateKey( spep_2 + 18, 1, -7 );
setRotateKey( spep_2 + 20, 1, -7.4 );
setRotateKey( spep_2 + 22, 1, -7.9 );
setRotateKey( spep_2 + 24, 1, -8.3 );
setRotateKey( spep_2 + 26, 1, -8.6 );
setRotateKey( spep_2 + 28, 1, -9 );
setRotateKey( spep_2 + 30, 1, -9.2 );
setRotateKey( spep_2 + 32, 1, -9.4 );
setRotateKey( spep_2 + 34, 1, -9.6 );
setRotateKey( spep_2 + 36, 1, -9.7 );
setRotateKey( spep_2 + 40, 1, -9.8 );

-- ** 音 ** --
--かめはめ波発射
SE054 = playSe( spep_2 + 0, 1223 );
setSeVolumeByWorkId( spep_2 + 0, SE054, 80 );
SE055 = playSe( spep_2 + 0, 1213 );
setSeVolumeByWorkId( spep_2 + 0, SE055, 97 );
SE056 = playSe( spep_2 + 0, 1284 );
setSeVolumeByWorkId( spep_2 + 0, SE056, 84 );
SE057 = playSe( spep_2 + 0, 1258 );
setSeVolumeByWorkId( spep_2 + 0, SE057, 79 );
setSeVolumeByWorkId( spep_2 + 28, SE057, 79 );
setSeVolumeByWorkId( spep_2 + 29, SE057, 75.65 );
setSeVolumeByWorkId( spep_2 + 30, SE057, 72.3 );
setSeVolumeByWorkId( spep_2 + 31, SE057, 68.95 );
setSeVolumeByWorkId( spep_2 + 32, SE057, 65.6 );
setSeVolumeByWorkId( spep_2 + 33, SE057, 62.25 );
setSeVolumeByWorkId( spep_2 + 34, SE057, 58.9 );
setSeVolumeByWorkId( spep_2 + 35, SE057, 55.55 );
setSeVolumeByWorkId( spep_2 + 36, SE057, 52.2 );
setSeVolumeByWorkId( spep_2 + 37, SE057, 48.85 );
setSeVolumeByWorkId( spep_2 + 38, SE057, 45.5 );
setSeVolumeByWorkId( spep_2 + 39, SE057, 42.15 );
setSeVolumeByWorkId( spep_2 + 40, SE057, 38.8 );
setSeVolumeByWorkId( spep_2 + 41, SE057, 35.45 );
setSeVolumeByWorkId( spep_2 + 42, SE057, 32.1 );

--敵飲み込む
SE058 = playSe( spep_2 + 28, 1021 );
setSeVolumeByWorkId( spep_2 + 28, SE058, 151 );

--かめはめ波突き抜ける
SE059 = playSe( spep_2 + 30, 1211 );
SE060 = playSe( spep_2 + 72, 1145 );
setSeVolumeByWorkId( spep_2 + 72, SE060, 106 );
SE061 = playSe( spep_2 + 72, 1146 );
setSeVolumeByWorkId( spep_2 + 72, SE061, 110 );
SE062 = playSe( spep_2 + 72, 1044 );
setSeVolumeByWorkId( spep_2 + 72, SE062, 95 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
hideKoScreen();
dealDamage( spep_2 +40 );
endPhase( spep_2 + 140 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ゴジータ構え〜かめはめ波発射
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 930, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 930, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 930, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 930, tame_f, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 60, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  60,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  60,  515);

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

--文字エントリー
ctsyun = entryEffectLife( spep_0-3 + 90,  10011, 18, 0x100, -1, 0, -45.1, 185.8 );--シュンッ
setEffShake( spep_0-3 + 90, ctsyun, 18, 10 );
setEffMoveKey( spep_0-3 + 90, ctsyun, -45.1, 185.8 , 0 );
setEffMoveKey( spep_0-3 + 108, ctsyun, -45.1, 185.8 , 0 );

setEffScaleKey( spep_0-3 + 90, ctsyun, 1.71, 1.7 );
setEffScaleKey( spep_0-3 + 94, ctsyun, 1.71, 1.7 );
setEffScaleKey( spep_0-3 + 96, ctsyun, 2.13, 2.11 );
setEffScaleKey( spep_0-3 + 98, ctsyun, 2.3, 2.29 );
setEffScaleKey( spep_0-3 + 100, ctsyun, 2.44, 2.43 );
setEffScaleKey( spep_0-3 + 102, ctsyun, 2.55, 2.54 );
setEffScaleKey( spep_0-3 + 104, ctsyun, 2.63, 2.62 );
setEffScaleKey( spep_0-3 + 106, ctsyun, 2.68, 2.66 );
setEffScaleKey( spep_0-3 + 108, ctsyun, 2.7, 2.68 );

setEffRotateKey( spep_0-3 + 90, ctsyun, 0 );
setEffRotateKey( spep_0-3 + 108, ctsyun, 0 );

setEffAlphaKey( spep_0-3 + 90, ctsyun, 128 );
setEffAlphaKey( spep_0-3 + 108, ctsyun, 128 );

--敵の動き
setDisp( spep_0-3 + 80, 1, 1);
setDisp( spep_0-3 + 118, 1, 0);

changeAnime( spep_0-3 + 80, 1, 0 );

setMoveKey( spep_0-3 + 80, 1, -166, -30 , 0 );
setMoveKey( spep_0-3 + 118, 1, -166, -30 , 0 );

setScaleKey( spep_0-3 + 80, 1, 2.7, 2.7 );
setScaleKey( spep_0-3 + 118, 1, 2.7, 2.7 );

setRotateKey( spep_0-3 + 80, 1, 0 );
setRotateKey( spep_0-3 + 118, 1, 0 );


-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_x +12, 1018 );

--構える
SE002 = playSe( spep_0 + 24, 1333 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 25, SE002, 70 );
setSeVolumeByWorkId( spep_0 + 26, SE002, 130 );
setStartTimeMs( SE002,  167 );
stopSe( spep_0 + 40, SE002, 16 );
SE003 = playSe( spep_0 + 34, 1033 );
setSeVolumeByWorkId( spep_0 + 34, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 35, SE003, 16.7 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 33.4 );
setSeVolumeByWorkId( spep_0 + 37, SE003, 50.1 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 67 );
setStartTimeMs( SE003,  333 );
SE004 = playSe( spep_0 + 30, 1233 );
setSeVolumeByWorkId( spep_0 + 30, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 31, SE004, 38.8 );
setSeVolumeByWorkId( spep_0 + 32, SE004, 78 );
setStartTimeMs( SE004,  133 );
setPitch( spep_0 + 30, SE004, -600 );
setTimeStretch( SE004, 0.6, 10, 1 );
SE005 = playSe( spep_0 + 30, 1189 );
SE006 = playSe( spep_0 + 32, 1006 );
setPitch( spep_0 + 32, SE006, -200 );
setTimeStretch( SE006, 0.87, 10, 1 );

--瞬間移動
SE007 = playSe( spep_0 + 66, 1109 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 930, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 132; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
    playSe( SP_dodge - 12, 1042 );

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
--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 156,  10020, 52, 0x100, -1, 0, 100.5, 105 );--バキッ
setEffShake( spep_0-3 + 156, ctbaki, 52, 10 );
setEffMoveKey( spep_0-3 + 156, ctbaki, 100.5, 105 , 0 );
setEffMoveKey( spep_0-3 + 158, ctbaki, 102.5, 104.7 , 0 );
setEffMoveKey( spep_0-3 + 160, ctbaki, 101.1, 89.5 , 0 );
setEffMoveKey( spep_0-3 + 162, ctbaki, 91.2, 73.5 , 0 );
setEffMoveKey( spep_0-3 + 164, ctbaki, 88.5, 25.8 , 0 );
setEffMoveKey( spep_0-3 + 166, ctbaki, 66.9, -135.3 , 0 );
setEffMoveKey( spep_0-3 + 168, ctbaki, 55, -224.8 , 0 );
setEffMoveKey( spep_0-3 + 170, ctbaki, 38.8, -252 , 0 );
setEffMoveKey( spep_0-3 + 172, ctbaki, 44.3, -264.7 , 0 );
setEffMoveKey( spep_0-3 + 174, ctbaki, 47.7, -264.3 , 0 );
setEffMoveKey( spep_0-3 + 176, ctbaki, 43.4, -270.4 , 0 );
setEffMoveKey( spep_0-3 + 178, ctbaki, 49.4, -252.5 , 0 );
setEffMoveKey( spep_0-3 + 180, ctbaki, 49.4, -262.1 , 0 );
setEffMoveKey( spep_0-3 + 182, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 184, ctbaki, 45.4, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 186, ctbaki, 49.4, -252.5 , 0 );
setEffMoveKey( spep_0-3 + 188, ctbaki, 49.4, -262.1 , 0 );
setEffMoveKey( spep_0-3 + 190, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 192, ctbaki, 45.4, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 194, ctbaki, 49.4, -252.5 , 0 );
setEffMoveKey( spep_0-3 + 196, ctbaki, 49.4, -262.1 , 0 );
setEffMoveKey( spep_0-3 + 198, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 200, ctbaki, 45.4, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 202, ctbaki, 38.3, -257.3 , 0 );
setEffMoveKey( spep_0-3 + 204, ctbaki, 44.1, -258.6 , 0 );
setEffMoveKey( spep_0-3 + 206, ctbaki, 44.1, -257.8 , 0 );
setEffMoveKey( spep_0-3 + 208, ctbaki, 37.4, -264.5 , 0 );

setEffScaleKey( spep_0-3 + 156, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_0-3 + 158, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_0-3 + 160, ctbaki, 1.64, 1.64 );
setEffScaleKey( spep_0-3 + 162, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_0-3 + 164, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_0-3 + 166, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 168, ctbaki, 2.64, 2.64 );
setEffScaleKey( spep_0-3 + 170, ctbaki, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 172, ctbaki, 2.78, 2.78 );
setEffScaleKey( spep_0-3 + 174, ctbaki, 2.79, 2.79 );
setEffScaleKey( spep_0-3 + 176, ctbaki, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 178, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_0-3 + 208, ctbaki, 2.65, 2.65 );

setEffRotateKey( spep_0-3 + 156, ctbaki, 0 );
setEffRotateKey( spep_0-3 + 208, ctbaki, 0 );

setEffAlphaKey( spep_0-3 + 156, ctbaki, 26 );
setEffAlphaKey( spep_0-3 + 158, ctbaki, 28 );
setEffAlphaKey( spep_0-3 + 160, ctbaki, 34 );
setEffAlphaKey( spep_0-3 + 162, ctbaki, 45 );
setEffAlphaKey( spep_0-3 + 164, ctbaki, 74 );
setEffAlphaKey( spep_0-3 + 166, ctbaki, 175 );
setEffAlphaKey( spep_0-3 + 168, ctbaki, 224 );
setEffAlphaKey( spep_0-3 + 170, ctbaki, 244 );
setEffAlphaKey( spep_0-3 + 172, ctbaki, 252 );
setEffAlphaKey( spep_0-3 + 174, ctbaki, 254 );
setEffAlphaKey( spep_0-3 + 176, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 202, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 204, ctbaki, 227 );
setEffAlphaKey( spep_0-3 + 206, ctbaki, 142 );
setEffAlphaKey( spep_0-3 + 208, ctbaki, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 308,  10021, 32, 0x100, -1, 0, -130, 102 );--バゴォッ
setEffShake( spep_0-3 + 308, ctbago, 32, 10 );
setEffMoveKey( spep_0-3 + 308, ctbago, -130, 102 , 0 );
setEffMoveKey( spep_0-3 + 310, ctbago, 69.7, 297.1 , 0 );
setEffMoveKey( spep_0-3 + 312, ctbago, 69.7, 297.1 , 0 );
setEffMoveKey( spep_0-3 + 314, ctbago, -13.7, 234.4 , 0 );
setEffMoveKey( spep_0-3 + 316, ctbago, -12.2, 235.6 , 0 );
setEffMoveKey( spep_0-3 + 318, ctbago, -16.6, 232.7 , 0 );
setEffMoveKey( spep_0-3 + 320, ctbago, -1.3, 244.6 , 0 );
setEffMoveKey( spep_0-3 + 322, ctbago, 8.6, 252.8 , 0 );
setEffMoveKey( spep_0-3 + 324, ctbago, 11, 255.5 , 0 );
setEffMoveKey( spep_0-3 + 326, ctbago, 28, 268.8 , 0 );
setEffMoveKey( spep_0-3 + 328, ctbago, 34.9, 274.5 , 0 );
setEffMoveKey( spep_0-3 + 330, ctbago, 30.8, 272 , 0 );
setEffMoveKey( spep_0-3 + 332, ctbago, 45.5, 283.3 , 0 );
setEffMoveKey( spep_0-3 + 334, ctbago, 49.1, 286.3 , 0 );
setEffMoveKey( spep_0-3 + 336, ctbago, 41.3, 280.6 , 0 );
setEffMoveKey( spep_0-3 + 338, ctbago, 53.2, 289.7 , 0 );
setEffMoveKey( spep_0-3 + 340, ctbago, 53.9, 290.3 , 0 );

setEffScaleKey( spep_0-3 + 308, ctbago, 1, 1 );
setEffScaleKey( spep_0-3 + 310, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 312, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 314, ctbago, 2.18, 2.18 );
setEffScaleKey( spep_0-3 + 316, ctbago, 2.19, 2.19 );
setEffScaleKey( spep_0-3 + 318, ctbago, 2.12, 2.12 );
setEffScaleKey( spep_0-3 + 320, ctbago, 2.29, 2.29 );
setEffScaleKey( spep_0-3 + 322, ctbago, 2.38, 2.38 );
setEffScaleKey( spep_0-3 + 324, ctbago, 2.36, 2.36 );
setEffScaleKey( spep_0-3 + 326, ctbago, 2.55, 2.55 );
setEffScaleKey( spep_0-3 + 328, ctbago, 2.61, 2.61 );
setEffScaleKey( spep_0-3 + 330, ctbago, 2.54, 2.54 );
setEffScaleKey( spep_0-3 + 332, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0-3 + 334, ctbago, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 336, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_0-3 + 338, ctbago, 2.77, 2.77 );
setEffScaleKey( spep_0-3 + 340, ctbago, 2.78, 2.78 );

setEffRotateKey( spep_0-3 + 308, ctbago, 0 );
setEffRotateKey( spep_0-3 + 340, ctbago, 0 );

setEffAlphaKey( spep_0-3 + 308, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 324, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 326, ctbago, 197 );
setEffAlphaKey( spep_0-3 + 328, ctbago, 144 );
setEffAlphaKey( spep_0-3 + 330, ctbago, 100 );
setEffAlphaKey( spep_0-3 + 332, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 334, ctbago, 37 );
setEffAlphaKey( spep_0-3 + 336, ctbago, 18 );
setEffAlphaKey( spep_0-3 + 338, ctbago, 6 );
setEffAlphaKey( spep_0-3 + 340, ctbago, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 522,  10016, 48, 0x100, -1, 0, -143.3, 84.2 );--ズンッ
setEffShake( spep_0-3 + 522, ctzun, 48, 10 );
setEffMoveKey( spep_0-3 + 522, ctzun, -143.3, 84.2 , 0 );
setEffMoveKey( spep_0-3 + 524, ctzun, -142.8, 77.7 , 0 );
setEffMoveKey( spep_0-3 + 526, ctzun, -143, 94.9 , 0 );
setEffMoveKey( spep_0-3 + 528, ctzun, -141.3, 99.7 , 0 );
setEffMoveKey( spep_0-3 + 530, ctzun, -131.8, 122.8 , 0 );
setEffMoveKey( spep_0-3 + 532, ctzun, -124.5, 137.2 , 0 );
setEffMoveKey( spep_0-3 + 534, ctzun, -115, 193.8 , 0 );
setEffMoveKey( spep_0-3 + 536, ctzun, -93.3, 265.8 , 0 );
setEffMoveKey( spep_0-3 + 538, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 540, ctzun, -86.7, 257.4 , 0 );
setEffMoveKey( spep_0-3 + 542, ctzun, -90.7, 277 , 0 );
setEffMoveKey( spep_0-3 + 544, ctzun, -93.3, 265.8 , 0 );
setEffMoveKey( spep_0-3 + 546, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 548, ctzun, -86.7, 257.4 , 0 );
setEffMoveKey( spep_0-3 + 550, ctzun, -90.7, 277 , 0 );
setEffMoveKey( spep_0-3 + 552, ctzun, -93.3, 265.8 , 0 );
setEffMoveKey( spep_0-3 + 554, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 556, ctzun, -86.7, 257.4 , 0 );
setEffMoveKey( spep_0-3 + 558, ctzun, -85.9, 275.6 , 0 );
setEffMoveKey( spep_0-3 + 560, ctzun, -86, 259.4 , 0 );
setEffMoveKey( spep_0-3 + 562, ctzun, -88, 285.2 , 0 );
setEffMoveKey( spep_0-3 + 564, ctzun, -87.3, 283.8 , 0 );
setEffMoveKey( spep_0-3 + 566, ctzun, -74.7, 308.2 , 0 );
setEffMoveKey( spep_0-3 + 568, ctzun, -69.4, 306.4 , 0 );
setEffMoveKey( spep_0-3 + 570, ctzun, -61.7, 327.9 , 0 );

setEffScaleKey( spep_0-3 + 522, ctzun, 1.63, 1.63 );
setEffScaleKey( spep_0-3 + 524, ctzun, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 526, ctzun, 1.71, 1.71 );
setEffScaleKey( spep_0-3 + 528, ctzun, 1.65, 1.65 );
setEffScaleKey( spep_0-3 + 530, ctzun, 1.93, 1.93 );
setEffScaleKey( spep_0-3 + 532, ctzun, 1.97, 1.97 );
setEffScaleKey( spep_0-3 + 534, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_0-3 + 536, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 538, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 540, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 542, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 544, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 546, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 548, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 550, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 552, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 554, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 556, ctzun, 2.87, 2.87 );
setEffScaleKey( spep_0-3 + 558, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 560, ctzun, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 562, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 564, ctzun, 2.98, 2.98 );
setEffScaleKey( spep_0-3 + 566, ctzun, 3.34, 3.34 );
setEffScaleKey( spep_0-3 + 568, ctzun, 3.18, 3.18 );
setEffScaleKey( spep_0-3 + 570, ctzun, 3.32, 3.32 );

setEffRotateKey( spep_0-3 + 522, ctzun, 10 );
setEffRotateKey( spep_0-3 + 570, ctzun, 10 );

setEffAlphaKey( spep_0-3 + 522, ctzun, 1 );
setEffAlphaKey( spep_0-3 + 524, ctzun, 6 );
setEffAlphaKey( spep_0-3 + 526, ctzun, 14 );
setEffAlphaKey( spep_0-3 + 528, ctzun, 29 );
setEffAlphaKey( spep_0-3 + 530, ctzun, 52 );
setEffAlphaKey( spep_0-3 + 532, ctzun, 88 );
setEffAlphaKey( spep_0-3 + 534, ctzun, 145 );
setEffAlphaKey( spep_0-3 + 536, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 558, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 560, ctzun, 248 );
setEffAlphaKey( spep_0-3 + 562, ctzun, 227 );
setEffAlphaKey( spep_0-3 + 564, ctzun, 191 );
setEffAlphaKey( spep_0-3 + 566, ctzun, 142 );
setEffAlphaKey( spep_0-3 + 568, ctzun, 78 );
setEffAlphaKey( spep_0-3 + 570, ctzun, 0 );

--敵の動き1
setDisp( spep_0-3 + 150, 1, 1);
setDisp( spep_0-1 + 254, 1, 0);

changeAnime( spep_0-3 + 150, 1, 8 );
changeAnime( spep_0-3 + 210, 1, 107 );
changeAnime( spep_0-3 + 214, 1, 106 );
changeAnime( spep_0-3 + 242, 1, 6 );

setMoveKey( spep_0-3 + 150, 1, 79.2, 27.9 , 0 );
setMoveKey( spep_0-3 + 152, 1, 147, 193.9 , 0 );
setMoveKey( spep_0-3 + 154, 1, -29, 29.9 , 0 );
setMoveKey( spep_0-3 + 156, 1, -51.1, 155.8 , 0 );
setMoveKey( spep_0-3 + 158, 1, 81, 219.8 , 0 );
setMoveKey( spep_0-3 + 160, 1, -111.1, 271.8 , 0 );
setMoveKey( spep_0-3 + 162, 1, 215.2, 305.9 , 0 );
setMoveKey( spep_0-3 + 164, 1, 125.2, -24.1 , 0 );
setMoveKey( spep_0-3 + 166, 1, 131, 235.4 , 0 );
setMoveKey( spep_0-3 + 168, 1, -59.2, 188.9 , 0 );
setMoveKey( spep_0-3 + 170, 1, -49.3, 168.4 , 0 );
setMoveKey( spep_0-3 + 172, 1, -253.5, 265.9 , 0 );
setMoveKey( spep_0-3 + 174, 1, -231.7, 351.4 , 0 );
setMoveKey( spep_0-3 + 176, 1, -189.7, 320.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, -209.7, 320.8 , 0 );
setMoveKey( spep_0-3 + 180, 1, -179.7, 280.8 , 0 );
setMoveKey( spep_0-3 + 182, 1, -219.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 184, 1, -169.7, 310.8 , 0 );
setMoveKey( spep_0-3 + 186, 1, -221.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 188, 1, -221.7, 280.8 , 0 );
setMoveKey( spep_0-3 + 190, 1, -205.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, -191.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 194, 1, -211.7, 284.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, -191.7, 290.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, -191.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, -197.7, 294.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, -197.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 204, 1, -191.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 206, 1, -191.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, -197.7, 300.8 , 0 );
setMoveKey( spep_0-3 + 209, 1, -197.7, 300.8 , 0 );

setMoveKey( spep_0-3 + 210, 1, -170.1, -483.9 , 0 );
setMoveKey( spep_0-3 + 212, 1, -150.1, -483.9 , 0 );
setMoveKey( spep_0-3 + 213, 1, -150.1, -483.9 , 0 );

setMoveKey( spep_0-3 + 214, 1, -104.1, -194.1 , 0 );
setMoveKey( spep_0-3 + 216, 1, -103.4, -195.3 , 0 );
setMoveKey( spep_0-3 + 218, 1, -69.3, -118.6 , 0 );
setMoveKey( spep_0-3 + 220, 1, -62, -118.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, -15, -7.3 , 0 );
setMoveKey( spep_0-3 + 224, 1, 47.9, 69.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, 69.7, 109.4 , 0 );
setMoveKey( spep_0-3 + 228, 1, 83.4, 124.9 , 0 );
setMoveKey( spep_0-3 + 230, 1, 95.5, 142.7 , 0 );
setMoveKey( spep_0-3 + 232, 1, 105.3, 157.1 , 0 );
setMoveKey( spep_0-3 + 234, 1, 113.3, 168.9 , 0 );
setMoveKey( spep_0-3 + 236, 1, 120.1, 178.9 , 0 );
setMoveKey( spep_0-3 + 238, 1, 125.8, 187.2 , 0 );
setMoveKey( spep_0-3 + 240, 1, 130.6, 194.4 , 0 );
setMoveKey( spep_0-3 + 241, 1, 130.6, 194.4 , 0 );

setMoveKey( spep_0-3 + 242, 1, 134.7, 200.4 , 0 );
setMoveKey( spep_0-3 + 244, 1, 138.1, 205.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, 140.9, 209.7 , 0 );
setMoveKey( spep_0-3 + 248, 1, 143.1, 213.1 , 0 );
setMoveKey( spep_0-3 + 250, 1, 144.8, 215.7 , 0 );
setMoveKey( spep_0-3 + 252, 1, 146, 217.6 , 0 );
setMoveKey( spep_0-1 + 254, 1, 146.9, 217.9 , 0 );

setScaleKey( spep_0-3 + 150, 1, 14.81,14.81);
setScaleKey( spep_0-3 + 164, 1, 14.81,14.81);
setScaleKey( spep_0-3 + 166, 1, 13.3,13.3);
setScaleKey( spep_0-3 + 168, 1, 11.78,11.78);
setScaleKey( spep_0-3 + 170, 1, 10.26,10.26);
setScaleKey( spep_0-3 + 172, 1, 8.73,8.73);
setScaleKey( spep_0-3 + 174, 1, 7.21,7.21);
setScaleKey( spep_0-3 + 176, 1, 5.7,5.7);
setScaleKey( spep_0-3 + 208, 1, 5.7,5.7);
setScaleKey( spep_0-3 + 209, 1, 5.7,5.7);

setScaleKey( spep_0-3 + 210, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 213, 1, 1.94, 1.94 );

setScaleKey( spep_0-3 + 214, 1, 2.69, 2.69 );
setScaleKey( spep_0-3 + 216, 1, 2.69, 2.69 );
setScaleKey( spep_0-3 + 218, 1, 2.17, 2.09 );
setScaleKey( spep_0-3 + 220, 1, 2.17, 2.09 );
setScaleKey( spep_0-3 + 222, 1, 1.8, 1.73 );
setScaleKey( spep_0-3 + 224, 1, 1.31, 1.27 );
setScaleKey( spep_0-3 + 226, 1, 1.12, 1.08 );
setScaleKey( spep_0-3 + 228, 1, 0.98, 0.95 );
setScaleKey( spep_0-3 + 230, 1, 0.88, 0.85 );
setScaleKey( spep_0-3 + 232, 1, 0.79, 0.77 );
setScaleKey( spep_0-3 + 234, 1, 0.73, 0.7 );
setScaleKey( spep_0-3 + 236, 1, 0.67, 0.65 );
setScaleKey( spep_0-3 + 238, 1, 0.62, 0.6 );
setScaleKey( spep_0-3 + 241, 1, 0.58, 0.56 );

setScaleKey( spep_0-3 + 242, 1, 0.55, 0.53 );
setScaleKey( spep_0-3 + 244, 1, 0.52, 0.5 );
setScaleKey( spep_0-3 + 246, 1, 0.49, 0.48 );
setScaleKey( spep_0-3 + 248, 1, 0.48, 0.46 );
setScaleKey( spep_0-3 + 250, 1, 0.46, 0.45 );
setScaleKey( spep_0-3 + 252, 1, 0.45, 0.44 );
setScaleKey( spep_0-1 + 254, 1, 0.45, 0.43 );

setRotateKey( spep_0-3 + 150, 1, 35 );
setRotateKey( spep_0-3 + 208, 1, 35 );
setRotateKey( spep_0-3 + 209, 1, 35 );

setRotateKey( spep_0-3 + 210, 1, -160 );
setRotateKey( spep_0-3 + 213, 1, -160 );

setRotateKey( spep_0-3 + 214, 1, -99.9 );
setRotateKey( spep_0-3 + 216, 1, -99.9 );
setRotateKey( spep_0-3 + 218, 1, -80 );
setRotateKey( spep_0-3 + 220, 1, -80 );
setRotateKey( spep_0-3 + 222, 1, -71.4 );
setRotateKey( spep_0-3 + 224, 1, -51.2 );
setRotateKey( spep_0-3 + 226, 1, -43 );
setRotateKey( spep_0-3 + 228, 1, -37.3 );
setRotateKey( spep_0-3 + 230, 1, -33 );
setRotateKey( spep_0-3 + 232, 1, -29.5 );
setRotateKey( spep_0-3 + 234, 1, -32.8 );
setRotateKey( spep_0-3 + 236, 1, -30.4 );
setRotateKey( spep_0-3 + 238, 1, -47.2 );
setRotateKey( spep_0-3 + 240, 1, -45.5 );
setRotateKey( spep_0-3 + 241, 1, -45.5 );

setRotateKey( spep_0-3 + 242, 1, 75.9 );
setRotateKey( spep_0-3 + 244, 1, 77.1 );
setRotateKey( spep_0-3 + 246, 1, 98.1 );
setRotateKey( spep_0-3 + 248, 1, 98.9 );
setRotateKey( spep_0-3 + 250, 1, 104.4 );
setRotateKey( spep_0-3 + 252, 1, 104.8 );
setRotateKey( spep_0-1 + 254, 1, 105 );

--敵の動き2
setDisp( spep_0-3 + 288, 1, 1);
setDisp( spep_0-1 + 296, 1, 0);
setDisp( spep_0-3 + 302, 1, 1);
setDisp( spep_0-1 + 352, 1, 0);

changeAnime( spep_0-3 + 288, 1, 108 );

setMoveKey( spep_0-3 + 288, 1, 175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 302, 1, 175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 304, 1, 103.5, -100.7 , 0 );
setMoveKey( spep_0-3 + 306, 1, 175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 308, 1, 180.9, -25.3 , 0 );
setMoveKey( spep_0-3 + 310, 1, 175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 312, 1, 175.9, -35.7 , 0 );
setMoveKey( spep_0-3 + 314, 1, 181.8, -40.8 , 0 );
setMoveKey( spep_0-3 + 316, 1, 187.2, -45.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, 185.5, -40.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, 189.8, -44.4 , 0 );
setMoveKey( spep_0-3 + 322, 1, 193.7, -47.7 , 0 );
setMoveKey( spep_0-3 + 324, 1, 190.5, -44 , 0 );
setMoveKey( spep_0-3 + 326, 1, 199.9, -53 , 0 );
setMoveKey( spep_0-3 + 328, 1, 195.7, -48.4 , 0 );
setMoveKey( spep_0-3 + 330, 1, 197.5, -50 , 0 );
setMoveKey( spep_0-3 + 332, 1, 205.3, -57.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, 203.8, -51.6 , 0 );
setMoveKey( spep_0-3 + 336, 1, 206.3, -58.4 , 0 );
setMoveKey( spep_0-3 + 338, 1, 206.3, -58.4 , 0 );
setMoveKey( spep_0-3 + 340, 1, 195.4, -52 , 0 );
setMoveKey( spep_0-3 + 342, 1, 197.8, -58.7 , 0 );
setMoveKey( spep_0-3 + 344, 1, 195.8, -52.2 , 0 );
setMoveKey( spep_0-3 + 351, 1, 195.8, -52.2 , 0 );
setMoveKey( spep_0-1 + 352, 1, 335.8, -92.2 , 0 );

setScaleKey( spep_0-3 + 288, 1,2.09,2.09);
setScaleKey( spep_0-3 + 302, 1,2.09,2.09);
setScaleKey( spep_0-3 + 303, 1,2.09,2.09);
setScaleKey( spep_0-3 + 304, 1,4.16,4.16);
setScaleKey( spep_0-3 + 305, 1,4.16,4.16);
setScaleKey( spep_0-3 + 306, 1,2.09,2.09);
setScaleKey( spep_0-3 + 307, 1,2.09,2.09);
setScaleKey( spep_0-3 + 308, 1,2.92,2.92);
setScaleKey( spep_0-3 + 309, 1,2.92,2.92);
setScaleKey( spep_0-3 + 310, 1,2.09,2.09);
setScaleKey( spep_0-1 + 352, 1,2.09,2.09);

setRotateKey( spep_0-3 + 288, 1, 33.1 );
setRotateKey( spep_0-3 + 351, 1, 33.1 );
setRotateKey( spep_0-3 + 352, 1, 45 );
setRotateKey( spep_0-1 + 352, 1, 45 );

--敵の動き3
setDisp( spep_0-3 + 364, 1, 1);
setDisp( spep_0 + 404, 1, 0);

changeAnime( spep_0-3 + 364, 1, 107 );
changeAnime( spep_0-3 + 368, 1, 108 );
changeAnime( spep_0-3 + 372, 1, 5 );

setMoveKey( spep_0-3 + 364, 1, -1103.1, -1198.6 , 0 );
setMoveKey( spep_0-3 + 367, 1, -1103.1, -1198.6 , 0 );

setMoveKey( spep_0-3 + 368, 1, -100.8, -10.4 , 0 );
setMoveKey( spep_0-3 + 371, 1, -100.8, -10.4 , 0 );

setMoveKey( spep_0-3 + 372, 1, -121.5, 127 , 0 );
setMoveKey( spep_0-3 + 374, 1, -10.4, 141.2 , 0 );
setMoveKey( spep_0-3 + 376, 1, -10.4, 141.2 , 0 );
setMoveKey( spep_0-3 + 378, 1, 57.9, 153.3 , 0 );
setMoveKey( spep_0-3 + 380, 1, 68, 153.5 , 0 );
setMoveKey( spep_0-3 + 382, 1, 97.2, 154.1 , 0 );
setMoveKey( spep_0-3 + 384, 1, 126.5, 154.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 143.5, 155.1 , 0 );
setMoveKey( spep_0-3 + 388, 1, 153.8, 155.3 , 0 );
setMoveKey( spep_0-3 + 390, 1, 160.2, 155.4 , 0 );
setMoveKey( spep_0-3 + 392, 1, 164.3, 155.5 , 0 );
setMoveKey( spep_0-3 + 394, 1, 167, 155.5 , 0 );
setMoveKey( spep_0-3 + 396, 1, 168.8, 155.6 , 0 );
setMoveKey( spep_0-3 + 398, 1, 170.1, 155.6 , 0 );
setMoveKey( spep_0-3 + 400, 1, 170.9, 155.6 , 0 );
setMoveKey( spep_0-3 + 402, 1, 171.3, 155.6 , 0 );
setMoveKey( spep_0-3 + 404, 1, 171.6, 155.6 , 0 );
setMoveKey( spep_0 + 404, 1, 171.6, 155.3 , 0 );

setScaleKey( spep_0-3 + 364, 1, 9, 9 );
setScaleKey( spep_0-3 + 367, 1, 9, 9 );

setScaleKey( spep_0-3 + 368, 1, 4.99, 4.99 );
setScaleKey( spep_0-3 + 371, 1, 4.99, 4.99 );

setScaleKey( spep_0-3 + 372, 1, 3, 3 );
setScaleKey( spep_0-3 + 374, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 376, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 378, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 380, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 382, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 384, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 386, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 388, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 390, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 392, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 394, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 396, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 398, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 400, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 404, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 364, 1, -90 );
setRotateKey( spep_0-3 + 367, 1, -90 );

setRotateKey( spep_0-3 + 368, 1, -15 );
setRotateKey( spep_0-3 + 371, 1, -15 );

setRotateKey( spep_0-3 + 372, 1, 50 );
setRotateKey( spep_0-3 + 376, 1, 50 );
setRotateKey( spep_0-3 + 378, 1, 55 );
setRotateKey( spep_0-3 + 380, 1, 55.9 );
setRotateKey( spep_0-3 + 382, 1, 58.3 );
setRotateKey( spep_0-3 + 384, 1, 60.8 );
setRotateKey( spep_0-3 + 386, 1, 62.3 );
setRotateKey( spep_0-3 + 388, 1, 63.2 );
setRotateKey( spep_0-3 + 390, 1, 63.7 );
setRotateKey( spep_0-3 + 392, 1, 64.1 );
setRotateKey( spep_0-3 + 394, 1, 64.3 );
setRotateKey( spep_0-3 + 396, 1, 64.4 );
setRotateKey( spep_0-3 + 398, 1, 64.6 );
setRotateKey( spep_0-3 + 400, 1, 64.6 );
setRotateKey( spep_0-3 + 402, 1, 64.7 );
setRotateKey( spep_0 + 404, 1, 64.7 );

--敵の動き4
setDisp( spep_0-3 + 512, 1, 1);
setDisp( spep_0-1 + 606, 1, 0);

changeAnime( spep_0-3 + 512, 1, 108 );

setMoveKey( spep_0-3 + 512, 1, 92.4, -193 , 0 );
setMoveKey( spep_0-3 + 514, 1, 112.4, -233 , 0 );
setMoveKey( spep_0-3 + 516, 1, 12.4, -153 , 0 );
setMoveKey( spep_0-3 + 518, 1, 92.4, -233 , 0 );
setMoveKey( spep_0-3 + 520, 1, 142.4, -63 , 0 );
setMoveKey( spep_0-3 + 522, 1, 162.4, -73 , 0 );
setMoveKey( spep_0-3 + 524, 1, 202.4, -293 , 0 );
setMoveKey( spep_0-3 + 526, 1, 202.4, -253 , 0 );
setMoveKey( spep_0-3 + 528, 1, 262.4, -313 , 0 );
setMoveKey( spep_0-3 + 530, 1, -78.1, 47.3 , 0 );
setMoveKey( spep_0-3 + 532, 1, 212, -180.6 , 0 );
setMoveKey( spep_0-3 + 534, 1, 259.8, -3.1 , 0 );
setMoveKey( spep_0-3 + 536, 1, 249.4, -41.5 , 0 );
setMoveKey( spep_0-3 + 538, 1, 275.4, -33.5 , 0 );
setMoveKey( spep_0-3 + 540, 1, 237.4, -95.5 , 0 );
setMoveKey( spep_0-3 + 542, 1, 199.4, -145.5 , 0 );
setMoveKey( spep_0-3 + 544, 1, 245.4, -89.5 , 0 );
setMoveKey( spep_0-3 + 546, 1, 163.4, -121.5 , 0 );
setMoveKey( spep_0-3 + 548, 1, 211.4, -127.5 , 0 );
setMoveKey( spep_0-3 + 550, 1, 171.4, -127.5 , 0 );
setMoveKey( spep_0-3 + 552, 1, 231.4, -119.5 , 0 );
setMoveKey( spep_0-3 + 554, 1, 211.4, -111.5 , 0 );
setMoveKey( spep_0-3 + 556, 1, 221.4, -81.5 , 0 );
setMoveKey( spep_0-3 + 558, 1, 227.4, -101.5 , 0 );
setMoveKey( spep_0-3 + 560, 1, 221.4, -95.5 , 0 );
setMoveKey( spep_0-3 + 562, 1, 229.4, -97.5 , 0 );
setMoveKey( spep_0-3 + 564, 1, 229.4, -99.5 , 0 );
setMoveKey( spep_0-3 + 566, 1, 237.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 568, 1, 237.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 570, 1, 241.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 572, 1, 245.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 580, 1, 245.9, -103.8 , 0 );
setMoveKey( spep_0-3 + 582, 1, 301.4, -131.6 , 0 );
setMoveKey( spep_0-3 + 584, 1, 319.1, -145.8 , 0 );
setMoveKey( spep_0-3 + 586, 1, 393.5, -198.2 , 0 );
setMoveKey( spep_0-3 + 588, 1, 377.2, -185.2 , 0 );
setMoveKey( spep_0-3 + 590, 1, 469.7, -220.4 , 0 );
setMoveKey( spep_0-3 + 594, 1, 469.7, -220.4 , 0 );
setMoveKey( spep_0-3 + 596, 1, 487.5, -238.2 , 0 );
setMoveKey( spep_0-3 + 598, 1, 493, -241.8 , 0 );
setMoveKey( spep_0-3 + 600, 1, 475.3, -224.1 , 0 );
setMoveKey( spep_0-3 + 602, 1, 493, -241.8 , 0 );
setMoveKey( spep_0-3 + 604, 1, 498.6, -245.6 , 0 );
setMoveKey( spep_0-1 + 606, 1, 480.8, -227.8 , 0 );

setScaleKey( spep_0-3 + 512, 1, 12.48,12.48);
setScaleKey( spep_0-3 + 530, 1, 12.48,12.48);
setScaleKey( spep_0-3 + 532, 1, 5.04,5.04);
setScaleKey( spep_0-3 + 534, 1, 3.44,3.44);
setScaleKey( spep_0-3 + 536, 1, 3.12,3.12);
setScaleKey( spep_0-1 + 606, 1, 3.12,3.12);

setRotateKey( spep_0-3 + 512, 1, 10 );
setRotateKey( spep_0-1 + 606, 1, 10 );

--敵の動き5
setDisp( spep_0-3 + 610, 1, 1);
setDisp( spep_0+1 + 672, 1, 0);

changeAnime( spep_0-3 + 610, 1, 5 );

setMoveKey( spep_0-3 + 610, 1, -169.7, 198.5 , 0 );
setMoveKey( spep_0-3 + 612, 1, -169.6, 198.4 , 0 );
setMoveKey( spep_0-3 + 614, 1, -169.5, 198.3 , 0 );
setMoveKey( spep_0-3 + 616, 1, -169.4, 198.1 , 0 );
setMoveKey( spep_0-3 + 618, 1, -169.4, 198 , 0 );
setMoveKey( spep_0-3 + 620, 1, -169.3, 197.9 , 0 );
setMoveKey( spep_0-3 + 622, 1, -169.2, 197.8 , 0 );
setMoveKey( spep_0-3 + 624, 1, -169.1, 197.7 , 0 );
setMoveKey( spep_0-3 + 626, 1, -169.1, 197.6 , 0 );
setMoveKey( spep_0-3 + 628, 1, -169, 197.6 , 0 );
setMoveKey( spep_0-3 + 630, 1, -169, 197.5 , 0 );
setMoveKey( spep_0-3 + 632, 1, -168.9, 197.4 , 0 );
setMoveKey( spep_0-3 + 634, 1, -168.9, 197.3 , 0 );
setMoveKey( spep_0-3 + 636, 1, -168.8, 197.3 , 0 );
setMoveKey( spep_0-3 + 638, 1, -168.8, 197.2 , 0 );
setMoveKey( spep_0-3 + 640, 1, -168.7, 197.1 , 0 );
setMoveKey( spep_0-3 + 642, 1, -168.7, 197.1 , 0 );
setMoveKey( spep_0-3 + 644, 1, -168.6, 197 , 0 );
setMoveKey( spep_0-3 + 646, 1, -168.6, 197 , 0 );
setMoveKey( spep_0-3 + 648, 1, -168.6, 196.9 , 0 );
setMoveKey( spep_0-3 + 650, 1, -168.5, 196.9 , 0 );
setMoveKey( spep_0-3 + 652, 1, -168.5, 196.8 , 0 );
setMoveKey( spep_0-3 + 656, 1, -168.5, 196.8 , 0 );
setMoveKey( spep_0-3 + 658, 1, -168.5, 196.7 , 0 );
setMoveKey( spep_0-3 + 660, 1, -168.4, 196.7 , 0 );
setMoveKey( spep_0-3 + 670, 1, -168.4, 196.7 , 0 );
setMoveKey( spep_0 + 672, 1, -168.4, 196.6 , 0 );

setScaleKey( spep_0-3 + 610, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 618, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 620, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 640, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 642, 1, 0.11, 0.11 );
setScaleKey( spep_0+1 + 672, 1, 0.11, 0.11 );

setRotateKey( spep_0-3 + 610, 1, -14.8 );
setRotateKey( spep_0-3 + 612, 1, -14.5 );
setRotateKey( spep_0-3 + 614, 1, -14.3 );
setRotateKey( spep_0-3 + 616, 1, -14 );
setRotateKey( spep_0-3 + 618, 1, -13.8 );
setRotateKey( spep_0-3 + 620, 1, -13.6 );
setRotateKey( spep_0-3 + 622, 1, -13.4 );
setRotateKey( spep_0-3 + 624, 1, -13.2 );
setRotateKey( spep_0-3 + 626, 1, -13 );
setRotateKey( spep_0-3 + 628, 1, -12.8 );
setRotateKey( spep_0-3 + 630, 1, -12.6 );
setRotateKey( spep_0-3 + 632, 1, -12.4 );
setRotateKey( spep_0-3 + 634, 1, -12.3 );
setRotateKey( spep_0-3 + 636, 1, -12.1 );
setRotateKey( spep_0-3 + 638, 1, -12 );
setRotateKey( spep_0-3 + 640, 1, -11.8 );
setRotateKey( spep_0-3 + 642, 1, -11.7 );
setRotateKey( spep_0-3 + 644, 1, -11.6 );
setRotateKey( spep_0-3 + 646, 1, -11.5 );
setRotateKey( spep_0-3 + 648, 1, -11.4 );
setRotateKey( spep_0-3 + 650, 1, -11.3 );
setRotateKey( spep_0-3 + 652, 1, -11.2 );
setRotateKey( spep_0-3 + 654, 1, -11.1 );
setRotateKey( spep_0-3 + 656, 1, -11 );
setRotateKey( spep_0-3 + 658, 1, -11 );
setRotateKey( spep_0-3 + 660, 1, -10.9 );
setRotateKey( spep_0-3 + 662, 1, -10.9 );
setRotateKey( spep_0-3 + 664, 1, -10.8 );
setRotateKey( spep_0+1 + 672, 1, -10.8 );

-- ** 音 ** --
--振りかぶる
SE008 = playSe( spep_0 + 116, 1116 );
stopSe( spep_0 + 140, SE008, 10 );
SE009 = playSe( spep_0 + 116, 1278 );
stopSe( spep_0 + 142, SE009, 50 );
SE010 = playSe( spep_0 + 116, 1004 );
SE011 = playSe( spep_0 + 144, 1003 );

--アッパー
SE012 = playSe( spep_0 + 148, 1123 );

--敵飛んでいく
SE013 = playSe( spep_0 + 208, 1027 );
setSeVolumeByWorkId( spep_0 + 208, SE013, 64 );
SE014 = playSe( spep_0 + 208, 1183 );
setSeVolumeByWorkId( spep_0 + 208, SE014, 65 );
stopSe( spep_0 + 252, SE014, 16 );

--ゴジータ向かっていく
SE015 = playSe( spep_0 + 254, 1182 );
SE016 = playSe( spep_0 + 254, 9 );
setSeVolumeByWorkId( spep_0 + 254, SE016, 80 );
stopSe( spep_0 + 302, SE016, 36 );

--体当たりパンチ
SE017 = playSe( spep_0 + 296, 1189 );
SE018 = playSe( spep_0 + 300, 1120 );

--敵画面外に
SE019 = playSe( spep_0 + 346, 1021 );
stopSe( spep_0 + 370, SE019, 36 );
SE020 = playSe( spep_0 + 348, 1277 );

--敵地面に飛んでいく
SE021 = playSe( spep_0 + 362, 1027 );
setSeVolumeByWorkId( spep_0 + 362, SE021, 53 );
SE022 = playSe( spep_0 + 362, 1121 );
setSeVolumeByWorkId( spep_0 + 362, SE022, 74 );
stopSe( spep_0 + 414, SE022, 34 );
SE023 = playSe( spep_0 + 362, 1183 );

--ゴジータ手前へ
SE024 = playSe( spep_0 + 406, 1314 );
setSeVolumeByWorkId( spep_0 + 406, SE024, 79 );
stopSe( spep_0 + 502, SE024, 16 );

--ゴジータ奥へ
SE025 = playSe( spep_0 + 434, 1117 );
setSeVolumeByWorkId( spep_0 + 434, SE025, 127 );
stopSe( spep_0 + 462, SE025, 22 );
setPitch( spep_0 + 434, SE025, -400 );
setTimeStretch( SE025, 0.73, 10, 1 );

--ゴジータ手前へ
SE026 = playSe( spep_0 + 434, 1072 );
setSeVolumeByWorkId( spep_0 + 434, SE026, 141 );
SE027 = playSe( spep_0 + 454, 1117 );
stopSe( spep_0 + 480, SE027, 14 );
setPitch( spep_0 + 454, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );
SE028 = playSe( spep_0 + 454, 1004 );
setPitch( spep_0 + 454, SE028, -600 );
setTimeStretch( SE028, 0.6, 10, 1 );

--蹴り振りかぶり
SE029 = playSe( spep_0 + 500, 1004 );

--蹴り
SE030 = playSe( spep_0 + 510, 1187 );
setSeVolumeByWorkId( spep_0 + 510, SE030, 110 );
SE031 = playSe( spep_0 + 514, 1110 );
setSeVolumeByWorkId( spep_0 + 514, SE031, 120 );
SE032 = playSe( spep_0 + 518, 1182 );
setSeVolumeByWorkId( spep_0 + 518, SE032, 120 );

--連続爆発
SE033 = playSe( spep_0 + 530, 1033 );
stopSe( spep_0 + 530 + 70, SE033, 20 );
SE034 = playSe( spep_0 + 530, 1017 );
stopSe( spep_0 + 530 + 70, SE035, 20 );
SE035 = playSe( spep_0 + 552, 1052 );
stopSe( spep_0 + 530 + 70, SE036, 20 );

--岩突っ込む
SE036 = playSe( spep_0 + 578, 1011 );
SE037 = playSe( spep_0 + 580, 1159 );
setSeVolumeByWorkId( spep_0 + 580, SE037, 76 );

--ゴジータ飛んでくる
SE038 = playSe( spep_0 + 608, 1168 );
stopSe( spep_0 + 640, SE038, 36 );

--地面着地
SE039 = playSe( spep_0 + 634, 1044 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 634, SE039, 141 );
stopSe( spep_0 + 660, SE039, 18 );
SE040 = playSe( spep_0 + 634, 1197 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 634, SE040, 77 );
stopSe( spep_0 + 640, SE040, 2 );
setPitch( spep_0 + 634, SE040, -200 );
setTimeStretch( SE040, 0.87, 10, 1 );
SE041 = playSe( spep_0 + 638, 1197 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 638, SE041, 88 );
stopSe( spep_0 + 644, SE041, 4 );
setPitch( spep_0 + 638, SE041, -200 );
setTimeStretch( SE041, 0.87, 10, 1 );
SE042 = playSe( spep_0 + 642, 1192 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 642, SE042, 216 );
SE043 = playSe( spep_0 + 644, 1197 ,"",0.5);
stopSe( spep_0 + 648, SE043, 4 );
setPitch( spep_0 + 644, SE043, -200 );
setTimeStretch( SE043, 0.87, 10, 1 );
SE044 = playSe( spep_0 + 648, 1197 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 648, SE044, 132 );
stopSe( spep_0 + 654, SE044, 4 );
setPitch( spep_0 + 648, SE044, -200 );
setTimeStretch( SE044, 0.87, 10, 1 );

--腕合わせる
SE045 = playSe( spep_0 + 690, 1233 );
setSeVolumeByWorkId( spep_0 + 690, SE045, 0 );
setSeVolumeByWorkId( spep_0 + 691, SE045, 14.5 );
setSeVolumeByWorkId( spep_0 + 692, SE045, 29 );
setSeVolumeByWorkId( spep_0 + 693, SE045, 43.5 );
setSeVolumeByWorkId( spep_0 + 694, SE045, 58 );
setSeVolumeByWorkId( spep_0 + 695, SE045, 72.5 );
setSeVolumeByWorkId( spep_0 + 696, SE045, 87 );
setStartTimeMs( SE045,  50 );
setPitch( spep_0 + 690, SE045, -400 );
setTimeStretch( SE045, 0.73, 10, 1 );
SE046 = playSe( spep_0 + 694, 1006 );
setSeVolumeByWorkId( spep_0 + 694, SE046, 88 );
setPitch( spep_0 + 694, SE046, -600 );
setTimeStretch( SE046, 0.6, 10, 1 );

--かめはめ波溜め
SE047 = playSe( spep_0 + 732, 1209 );
SE048 = playSe( spep_0 + 732, 1210 );
stopSe( spep_0 + 894, SE048, 18 );

--カットイン前かめはめ波発射
SE049 = playSe( spep_0 + 900, 1014 );
SE050 = playSe( spep_0 + 900, 1027 );
setSeVolumeByWorkId( spep_0 + 900, SE050, 72 );
SE051 = playSe( spep_0 + 900, 1213 );
SE052 = playSe( spep_0 + 900, 1133 );


--白フェード
entryFade( spep_0 + 922, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+928;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

--カットイン前かめはめ波発射
stopSe( spep_1 + 8, SE049, 10 );
stopSe( spep_1 + 8, SE050, 10 );
stopSe( spep_1 + 8, SE051, 10 );
stopSe( spep_1 + 8, SE052, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波敵に迫る〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 144, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 144, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 144, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 144, finish_f, 255 );


-- ** エフェクト等 ** --
KO = entryEffectLife( spep_2 + 136, SP_05x,72, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_2 + 136, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 209, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 136, KO, 1.0 , 1.0 );
setEffScaleKey( spep_2 + 209, KO, 1.0 , 1.0 );
setEffRotateKey( spep_2 + 136, KO, 0 );
setEffRotateKey( spep_2 + 209, KO, 0 );
setEffAlphaKey( spep_2 + 136, KO, 255 );
setEffAlphaKey( spep_2 + 209, KO, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 16,  10012, 18, 0x100, -1, 0, -208, 17.3 );--ズオッ
setEffShake( spep_2-3 + 16, ctzuo, 48, 10 );
setEffMoveKey( spep_2-3 + 16, ctzuo, -208, 17.3 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzuo, -200.1, 26.4 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzuo, -183.1, 46.4 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzuo, -150.3, 84.8 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzuo, -81.7, 164.7 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzuo, -44.5, 200 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzuo, -15.6, 227.5 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, 4.9, 246.9 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, 17, 258.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, 21.1, 262.3 , 0 );

setEffScaleKey( spep_2-3 + 16, ctzuo, 0.51, 0.51 );
setEffScaleKey( spep_2-3 + 18, ctzuo, 0.64, 0.64 );
setEffScaleKey( spep_2-3 + 20, ctzuo, 0.94, 0.94 );
setEffScaleKey( spep_2-3 + 22, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2-3 + 24, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_2-3 + 26, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_2-3 + 28, ctzuo, 3.6, 3.6 );
setEffScaleKey( spep_2-3 + 30, ctzuo, 3.88, 3.88 );
setEffScaleKey( spep_2-3 + 32, ctzuo, 4.06, 4.06 );
setEffScaleKey( spep_2-3 + 34, ctzuo, 4.11, 4.11 );

setEffRotateKey( spep_2-3 + 16, ctzuo, 0 );
setEffRotateKey( spep_2-3 + 34, ctzuo, 0 );

setEffAlphaKey( spep_2-3 + 16, ctzuo, 4 );
setEffAlphaKey( spep_2-3 + 18, ctzuo, 20 );
setEffAlphaKey( spep_2-3 + 20, ctzuo, 53 );
setEffAlphaKey( spep_2-3 + 22, ctzuo, 119 );
setEffAlphaKey( spep_2-3 + 24, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 32, ctzuo, 64 );
setEffAlphaKey( spep_2-3 + 34, ctzuo, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 40, 1, 0);

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -110, 20.1 , 0 );
setMoveKey( spep_2 + 2, 1, -109.8, 20.3 , 0 );
setMoveKey( spep_2 + 4, 1, -109.2, 20.8 , 0 );
setMoveKey( spep_2 + 6, 1, -108.2, 21.7 , 0 );
setMoveKey( spep_2 + 8, 1, -106.8, 22.9 , 0 );
setMoveKey( spep_2 + 10, 1, -104.9, 24.5 , 0 );
setMoveKey( spep_2 + 12, 1, -102.7, 26.4 , 0 );
setMoveKey( spep_2 + 14, 1, -100, 28.6 , 0 );
setMoveKey( spep_2 + 16, 1, -96.8, 31.2 , 0 );
setMoveKey( spep_2 + 18, 1, -93.3, 34 , 0 );
setMoveKey( spep_2 + 20, 1, -89.2, 37.1 , 0 );
setMoveKey( spep_2 + 22, 1, -85.2, 40.1 , 0 );
setMoveKey( spep_2 + 24, 1, -81.5, 42.7 , 0 );
setMoveKey( spep_2 + 26, 1, -78.2, 45 , 0 );
setMoveKey( spep_2 + 28, 1, -75.4, 47 , 0 );
setMoveKey( spep_2 + 30, 1, -73, 48.6 , 0 );
setMoveKey( spep_2 + 32, 1, -71, 49.9 , 0 );
setMoveKey( spep_2 + 34, 1, -69.5, 50.9 , 0 );
setMoveKey( spep_2 + 36, 1, -68.4, 51.6 , 0 );
setMoveKey( spep_2 + 38, 1, -67.7, 52 , 0 );
setMoveKey( spep_2 + 40, 1, -67.5, 52.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 4, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 6, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 8, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 10, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 12, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 14, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 1, 1 );
setScaleKey( spep_2 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 24, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 26, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 28, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 40, 1, 0.9, 0.9 );

setRotateKey( spep_2 + 0, 1, 5 );
setRotateKey( spep_2 + 2, 1, 5 );
setRotateKey( spep_2 + 4, 1, 5.1 );
setRotateKey( spep_2 + 6, 1, 5.2 );
setRotateKey( spep_2 + 8, 1, 5.4 );
setRotateKey( spep_2 + 10, 1, 5.6 );
setRotateKey( spep_2 + 12, 1, 5.9 );
setRotateKey( spep_2 + 14, 1, 6.2 );
setRotateKey( spep_2 + 16, 1, 6.5 );
setRotateKey( spep_2 + 18, 1, 7 );
setRotateKey( spep_2 + 20, 1, 7.4 );
setRotateKey( spep_2 + 22, 1, 7.9 );
setRotateKey( spep_2 + 24, 1, 8.3 );
setRotateKey( spep_2 + 26, 1, 8.6 );
setRotateKey( spep_2 + 28, 1, 9 );
setRotateKey( spep_2 + 30, 1, 9.2 );
setRotateKey( spep_2 + 32, 1, 9.4 );
setRotateKey( spep_2 + 34, 1, 9.6 );
setRotateKey( spep_2 + 36, 1, 9.7 );
setRotateKey( spep_2 + 40, 1, 9.8 );

-- ** 音 ** --
--かめはめ波発射
SE054 = playSe( spep_2 + 0, 1223 );
setSeVolumeByWorkId( spep_2 + 0, SE054, 80 );
SE055 = playSe( spep_2 + 0, 1213 );
setSeVolumeByWorkId( spep_2 + 0, SE055, 97 );
SE056 = playSe( spep_2 + 0, 1284 );
setSeVolumeByWorkId( spep_2 + 0, SE056, 84 );
SE057 = playSe( spep_2 + 0, 1258 );
setSeVolumeByWorkId( spep_2 + 0, SE057, 79 );
setSeVolumeByWorkId( spep_2 + 28, SE057, 79 );
setSeVolumeByWorkId( spep_2 + 29, SE057, 75.65 );
setSeVolumeByWorkId( spep_2 + 30, SE057, 72.3 );
setSeVolumeByWorkId( spep_2 + 31, SE057, 68.95 );
setSeVolumeByWorkId( spep_2 + 32, SE057, 65.6 );
setSeVolumeByWorkId( spep_2 + 33, SE057, 62.25 );
setSeVolumeByWorkId( spep_2 + 34, SE057, 58.9 );
setSeVolumeByWorkId( spep_2 + 35, SE057, 55.55 );
setSeVolumeByWorkId( spep_2 + 36, SE057, 52.2 );
setSeVolumeByWorkId( spep_2 + 37, SE057, 48.85 );
setSeVolumeByWorkId( spep_2 + 38, SE057, 45.5 );
setSeVolumeByWorkId( spep_2 + 39, SE057, 42.15 );
setSeVolumeByWorkId( spep_2 + 40, SE057, 38.8 );
setSeVolumeByWorkId( spep_2 + 41, SE057, 35.45 );
setSeVolumeByWorkId( spep_2 + 42, SE057, 32.1 );

--敵飲み込む
SE058 = playSe( spep_2 + 28, 1021 );
setSeVolumeByWorkId( spep_2 + 28, SE058, 151 );

--かめはめ波突き抜ける
SE059 = playSe( spep_2 + 30, 1211 );
SE060 = playSe( spep_2 + 72, 1145 );
setSeVolumeByWorkId( spep_2 + 72, SE060, 106 );
SE061 = playSe( spep_2 + 72, 1146 );
setSeVolumeByWorkId( spep_2 + 72, SE061, 110 );
SE062 = playSe( spep_2 + 72, 1044 );
setSeVolumeByWorkId( spep_2 + 72, SE062, 95 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
hideKoScreen();
dealDamage( spep_2 +40 );
endPhase( spep_2 + 140 );

end