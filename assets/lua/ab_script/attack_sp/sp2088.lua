--1020750:ターレス軍団_カラミティブラスター
--sp_effect_b4_00160
--sp2088

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
SP_01=	156173 ;-- 冒頭〜叩き落としまで・手前
SP_02=	156174 ;-- 冒頭〜叩き落としまで・奥
SP_03=	156175 ;-- 発射〜ラストまで・手前
SP_04=	156176 ;-- 発射〜ラストまで・奥

--エフェクト(てき)
SP_01x=	156177 ;-- 冒頭〜叩き落としまで・手前	(敵)
SP_02x=	156178 ;-- 冒頭〜叩き落としまで・奥	(敵)
SP_03x=	156175 ;-- 発射〜ラストまで・手前	(敵)
SP_04x=	156180 ;-- 発射〜ラストまで・奥	(敵)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
--ENABLE_AUTO_TIME_STRETCH(0.9);

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

--[[
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
]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜叩き落としまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0, -100 );
setEffMoveKey( spep_0 + 0, fast_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, fast_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, fast_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_f, 0 );
setEffRotateKey( spep_0 + 540, fast_f, 0 );
setEffAlphaKey( spep_0 + 0, fast_f, 255 );
setEffAlphaKey( spep_0 + 93, fast_f, 255 );
setEffAlphaKey( spep_0 + 94, fast_f, 0 );
setEffAlphaKey( spep_0 + 540, fast_f, 0 );

fast_f2 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, fast_f2, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, fast_f2, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_f2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, fast_f2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_f2, 0 );
setEffRotateKey( spep_0 + 540, fast_f2, 0 );
setEffAlphaKey( spep_0 + 0, fast_f2, 0 );
setEffAlphaKey( spep_0 + 93, fast_f2, 0 );
setEffAlphaKey( spep_0 + 94, fast_f2, 255 );
setEffAlphaKey( spep_0 + 540, fast_f2, 255 );

-- ** エフェクト等 ** --
fast_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0, -200 );
setEffMoveKey( spep_0 + 0, fast_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, fast_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, fast_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_b, 0 );
setEffRotateKey( spep_0 + 540, fast_b, 0 );
setEffAlphaKey( spep_0 + 0, fast_b, 255 );
setEffAlphaKey( spep_0 + 540, fast_b, 255 );

--敵の動き
setDisp( spep_0, 1, 1);
setDisp( spep_0-1+94, 1, 0);

changeAnime( spep_0, 1, 118);

setMoveKey( spep_0 + 0, 1, 1390.2, 156.7 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 1384.1, 155.2 , 0 );
setMoveKey( spep_0-3 + 4, 1, 1378, 153.8 , 0 );
setMoveKey( spep_0-3 + 6, 1, 1371.9, 152.4 , 0 );
setMoveKey( spep_0-3 + 8, 1, 1365.9, 151 , 0 );
setMoveKey( spep_0-3 + 10, 1, 1359.9, 149.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, 1353.9, 148.3 , 0 );
setMoveKey( spep_0-3 + 14, 1, 1347.9, 146.9 , 0 );
setMoveKey( spep_0-3 + 16, 1, 1341.9, 145.5 , 0 );
setMoveKey( spep_0-3 + 18, 1, 1336, 144.1 , 0 );
setMoveKey( spep_0-3 + 20, 1, 1330.1, 142.7 , 0 );
setMoveKey( spep_0-3 + 22, 1, 1324.2, 141.4 , 0 );
setMoveKey( spep_0-3 + 24, 1, 1318.3, 140 , 0 );
setMoveKey( spep_0-3 + 26, 1, 1312.4, 138.7 , 0 );
setMoveKey( spep_0-3 + 28, 1, 1306.6, 137.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, 1300.7, 136 , 0 );
setMoveKey( spep_0-3 + 32, 1, 1294.9, 134.6 , 0 );
setMoveKey( spep_0-3 + 34, 1, 1289.1, 133.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 1283.4, 131.9 , 0 );
setMoveKey( spep_0-3 + 38, 1, 1277.6, 130.6 , 0 );
setMoveKey( spep_0-3 + 40, 1, 1116.7, 93.3 , 0 );
setMoveKey( spep_0-3 + 42, 1, 958, 56.6 , 0 );
setMoveKey( spep_0-3 + 44, 1, 801.5, 20.4 , 0 );
setMoveKey( spep_0-3 + 46, 1, 647.2, -15.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 495.1, -50.6 , 0 );
setMoveKey( spep_0-3 + 50, 1, 488, -52 , 0 );
setMoveKey( spep_0-3 + 52, 1, 480.8, -53.3 , 0 );
setMoveKey( spep_0-3 + 54, 1, 473.7, -54.7 , 0 );
setMoveKey( spep_0-3 + 56, 1, 466.6, -56.1 , 0 );
setMoveKey( spep_0-3 + 58, 1, 459.4, -57.4 , 0 );
setMoveKey( spep_0-3 + 60, 1, 452.3, -58.8 , 0 );
setMoveKey( spep_0-3 + 62, 1, 445.2, -60.2 , 0 );
setMoveKey( spep_0-3 + 64, 1, 438, -61.6 , 0 );
setMoveKey( spep_0-3 + 66, 1, 430.9, -62.9 , 0 );
setMoveKey( spep_0-3 + 68, 1, 423.7, -64.3 , 0 );
setMoveKey( spep_0-3 + 70, 1, 416.6, -65.7 , 0 );
setMoveKey( spep_0-3 + 72, 1, 409.5, -67 , 0 );
setMoveKey( spep_0-3 + 74, 1, 402.3, -68.4 , 0 );
setMoveKey( spep_0-3 + 76, 1, 395.2, -69.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, 388.1, -71.2 , 0 );
setMoveKey( spep_0-3 + 80, 1, 380.9, -72.5 , 0 );
setMoveKey( spep_0-3 + 82, 1, 373.8, -73.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, 366.6, -75.3 , 0 );
setMoveKey( spep_0-3 + 86, 1, 359.5, -76.7 , 0 );
setMoveKey( spep_0-3 + 88, 1, 352.4, -78 , 0 );
setMoveKey( spep_0-3 + 90, 1, 345.2, -79.4 , 0 );
setMoveKey( spep_0-3 + 92, 1, 338.1, -80.8 , 0 );
setMoveKey( spep_0-1 + 94, 1, 331, -82.2 , 0 );

setScaleKey( spep_0 + 0, 1, 9.29, 9.29 );
--setScaleKey( spep_0-3 + 2, 1, 9.27, 9.27 );
setScaleKey( spep_0-3 + 4, 1, 9.24, 9.24 );
setScaleKey( spep_0-3 + 6, 1, 9.21, 9.21 );
setScaleKey( spep_0-3 + 8, 1, 9.19, 9.19 );
setScaleKey( spep_0-3 + 10, 1, 9.16, 9.16 );
setScaleKey( spep_0-3 + 12, 1, 9.14, 9.14 );
setScaleKey( spep_0-3 + 14, 1, 9.11, 9.11 );
setScaleKey( spep_0-3 + 16, 1, 9.09, 9.09 );
setScaleKey( spep_0-3 + 18, 1, 9.06, 9.06 );
setScaleKey( spep_0-3 + 20, 1, 9.03, 9.03 );
setScaleKey( spep_0-3 + 22, 1, 9.01, 9.01 );
setScaleKey( spep_0-3 + 24, 1, 8.98, 8.98 );
setScaleKey( spep_0-3 + 26, 1, 8.96, 8.96 );
setScaleKey( spep_0-3 + 28, 1, 8.93, 8.93 );
setScaleKey( spep_0-3 + 30, 1, 8.91, 8.91 );
setScaleKey( spep_0-3 + 32, 1, 8.88, 8.88 );
setScaleKey( spep_0-3 + 34, 1, 8.86, 8.86 );
setScaleKey( spep_0-3 + 36, 1, 8.83, 8.83 );
setScaleKey( spep_0-3 + 38, 1, 8.81, 8.81 );
setScaleKey( spep_0-3 + 40, 1, 8.12, 8.12 );
setScaleKey( spep_0-3 + 42, 1, 7.44, 7.44 );
setScaleKey( spep_0-3 + 44, 1, 6.77, 6.77 );
setScaleKey( spep_0-3 + 46, 1, 6.11, 6.11 );
setScaleKey( spep_0-3 + 48, 1, 5.46, 5.46 );
setScaleKey( spep_0-3 + 50, 1, 5.42, 5.42 );
setScaleKey( spep_0-3 + 52, 1, 5.38, 5.38 );
setScaleKey( spep_0-3 + 54, 1, 5.34, 5.34 );
setScaleKey( spep_0-3 + 56, 1, 5.3, 5.3 );
setScaleKey( spep_0-3 + 58, 1, 5.26, 5.26 );
setScaleKey( spep_0-3 + 60, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 62, 1, 5.18, 5.18 );
setScaleKey( spep_0-3 + 64, 1, 5.14, 5.14 );
setScaleKey( spep_0-3 + 66, 1, 5.1, 5.1 );
setScaleKey( spep_0-3 + 68, 1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 70, 1, 5.02, 5.02 );
setScaleKey( spep_0-3 + 72, 1, 4.98, 4.98 );
setScaleKey( spep_0-3 + 74, 1, 4.94, 4.94 );
setScaleKey( spep_0-3 + 76, 1, 4.9, 4.9 );
setScaleKey( spep_0-3 + 78, 1, 4.86, 4.86 );
setScaleKey( spep_0-3 + 80, 1, 4.82, 4.82 );
setScaleKey( spep_0-3 + 82, 1, 4.78, 4.78 );
setScaleKey( spep_0-3 + 84, 1, 4.74, 4.74 );
setScaleKey( spep_0-3 + 86, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 88, 1, 4.66, 4.66 );
setScaleKey( spep_0-3 + 90, 1, 4.62, 4.62 );
setScaleKey( spep_0-3 + 92, 1, 4.58, 4.58 );
setScaleKey( spep_0-1 + 94, 1, 4.54, 4.54 );

setRotateKey( spep_0 + 0, 1, -0.4 );
setRotateKey( spep_0 + 1, 1, -0.4 );
setRotateKey( spep_0 + 2, 1, -0.4 );
setRotateKey( spep_0 + 3, 1, -0.4 );
setRotateKey( spep_0 + 4, 1, -0.4 );
setRotateKey( spep_0 + 5, 1, -0.4 );
setRotateKey( spep_0 + 6, 1, -0.4 );
setRotateKey( spep_0-3 + 22, 1, -0.4 );
setRotateKey( spep_0-3 + 24, 1, -0.3 );
setRotateKey( spep_0-3 + 40, 1, -0.3 );
setRotateKey( spep_0-3 + 42, 1, -0.4 );
setRotateKey( spep_0-1 + 94, 1, -0.4 );
--SE
--入り
SE001 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
setPitch( spep_0 + 0, SE001, 300 );
setTimeStretch( SE001, 1.2, 10, 1 );
setBandpassFilter( spep_0 + 0, SE001, 800, 24000 );
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 8 );
SE003 = playSe( spep_0 + 20, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 540, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 108; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+84  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+84  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +96, 190006, 72, 0x102, -1, 0, 0, 510, 9600);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +96,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +168,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +96, ctgogo, 0 );
setEffAlphaKey( spep_0 + 97, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 255 );
setEffAlphaKey( spep_0 + 162, ctgogo, 255 );
setEffAlphaKey( spep_0 + 164, ctgogo, 191 );
setEffAlphaKey( spep_0 + 166, ctgogo, 196 );
setEffAlphaKey( spep_0 + 168, ctgogo, 64 );

setEffRotateKey(  spep_0 +96,  ctgogo,  0);
setEffRotateKey(  spep_0 +168,  ctgogo,  0);

setEffScaleKey(  spep_0 +96,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +158,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +168,  ctgogo, 1.07, 1.07);

-- ** エフェクト等 ** --
ctdoga = entryEffect( spep_0 + 0, 156233, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, ctdoga, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, ctdoga, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ctdoga, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, ctdoga, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctdoga, 0 );
setEffRotateKey( spep_0 + 540, ctdoga, 0 );
setEffAlphaKey( spep_0 + 0, ctdoga, 255 );
setEffAlphaKey( spep_0 + 540, ctdoga, 255 );

--敵の動き
setDisp( spep_0-3 + 206, 1, 1);
setDisp( spep_0-1 + 228, 1, 0);

changeAnime( spep_0-3 + 206, 1, 101);
changeAnime( spep_0-3 + 218, 1, 106);

setMoveKey( spep_0-3 + 206, 1, 155.4, -123.6 , 0 );
setMoveKey( spep_0-3 + 217, 1, 155.4, -123.6 , 0 );

setMoveKey( spep_0-3 + 218, 1, 8.3, -188.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, 46.9, -160.4 , 0 );
setMoveKey( spep_0-3 + 222, 1, 53.5, -168.5 , 0 );
setMoveKey( spep_0-3 + 224, 1, 100.2, -160.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, 459.3, -144.8 , 0 );
setMoveKey( spep_0-1 + 228, 1, 850.5, -169 , 0 );

setScaleKey( spep_0-3 + 206, 1, 5.07, 5.07 );
setScaleKey( spep_0-3 + 217, 1, 5.07, 5.07 );

setScaleKey( spep_0-3 + 218, 1, 5.07, 5.07 );
setScaleKey( spep_0-3 + 220, 1, 5.02, 5.02 );
setScaleKey( spep_0-3 + 222, 1, 4.96, 4.96 );
setScaleKey( spep_0-3 + 224, 1, 4.91, 4.91 );
setScaleKey( spep_0-3 + 226, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 228, 1, 5.53, 5.53 );

setRotateKey( spep_0-3 + 206, 1, 0 );
setRotateKey( spep_0-3 + 217, 1, 0 );

setRotateKey( spep_0-3 + 218, 1, -38.7 );
setRotateKey( spep_0-3 + 220, 1, -36.4 );
setRotateKey( spep_0-3 + 222, 1, -34.1 );
setRotateKey( spep_0-3 + 224, 1, -31.9 );
setRotateKey( spep_0-3 + 226, 1, -5.5 );
setRotateKey( spep_0-3 + 228, 1, 20.9 );

--敵の動き
setDisp( spep_0-3 + 260, 1, 1);
setDisp( spep_0-1 + 462, 1, 0);

changeAnime( spep_0-3 + 260, 1, 105);
changeAnime( spep_0-3 + 294, 1, 108);
changeAnime( spep_0-3 + 298, 1, 106);
changeAnime( spep_0-3 + 360, 1, 108);
changeAnime( spep_0-3 + 452, 1, 106);

setMoveKey( spep_0-3 + 260, 1, -1.5, 4.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, -2.9, -1.2 , 0 );
setMoveKey( spep_0-3 + 264, 1, 0.4, -2.6 , 0 );
setMoveKey( spep_0-3 + 266, 1, 8.3, 0.3 , 0 );
setMoveKey( spep_0-3 + 268, 1, 7.2, 0.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, 6.2, 0.2 , 0 );
setMoveKey( spep_0-3 + 272, 1, 5.3, 0.2 , 0 );
setMoveKey( spep_0-3 + 274, 1, 4.5, 0.2 , 0 );
setMoveKey( spep_0-3 + 276, 1, 3.8, 0.2 , 0 );
setMoveKey( spep_0-3 + 278, 1, 3.2, 0.3 , 0 );
setMoveKey( spep_0-3 + 280, 1, 2.7, 0.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, 2.3, 0.3 , 0 );
setMoveKey( spep_0-3 + 284, 1, 2, 0.3 , 0 );
setMoveKey( spep_0-3 + 286, 1, 1.7, 0.4 , 0 );
setMoveKey( spep_0-3 + 288, 1, 1.5, 0.4 , 0 );
setMoveKey( spep_0-3 + 290, 1, 1.4, 0.4 , 0 );
setMoveKey( spep_0-3 + 292, 1, 1.4, 0.4 , 0 );
setMoveKey( spep_0-3 + 293, 1, 1.4, 0.4 , 0 );

setMoveKey( spep_0-3 + 294, 1, 0.6, 0.9 , 0 );
setMoveKey( spep_0-3 + 296, 1, 1.7, -1.1 , 0 );
setMoveKey( spep_0-3 + 297, 1, 1.7, -1.1 , 0 );

setMoveKey( spep_0-3 + 298, 1, -10.3, -2.2 , 0 );
setMoveKey( spep_0-3 + 300, 1, -6.3, 5 , 0 );
setMoveKey( spep_0-3 + 302, 1, -10.3, 8.3 , 0 );
setMoveKey( spep_0-3 + 304, 1, -6.3, 3.5 , 0 );
setMoveKey( spep_0-3 + 306, 1, -14.3, -0.8 , 0 );
setMoveKey( spep_0-3 + 308, 1, -6.3, 2.8 , 0 );
setMoveKey( spep_0-3 + 310, 1, -10.3, -1.5 , 0 );
setMoveKey( spep_0-3 + 312, 1, -6.3, 2.1 , 0 );
setMoveKey( spep_0-3 + 314, 1, -10.3, 9.8 , 0 );
setMoveKey( spep_0-3 + 316, 1, -6.3, 1.4 , 0 );
setMoveKey( spep_0-3 + 318, 1, -10.3, -2.9 , 0 );
setMoveKey( spep_0-3 + 320, 1, -6.2, 0.7 , 0 );
setMoveKey( spep_0-3 + 321, 1, -6.2, 0.7 , 0 );
setMoveKey( spep_0-3 + 322, 1, -46.1, -19 , 0 );
setMoveKey( spep_0-3 + 324, 1, -54, -21.7 , 0 );
setMoveKey( spep_0-3 + 326, 1, -62.9, -24.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, -72.5, -28 , 0 );
setMoveKey( spep_0-3 + 330, 1, -83, -31.7 , 0 );
setMoveKey( spep_0-3 + 332, 1, -94.4, -35.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, -106.5, -39.7 , 0 );
setMoveKey( spep_0-3 + 336, 1, -119.6, -44.2 , 0 );
setMoveKey( spep_0-3 + 338, 1, -133.4, -48.9 , 0 );
setMoveKey( spep_0-3 + 340, 1, -148.2, -54 , 0 );
setMoveKey( spep_0-3 + 342, 1, -163.7, -59.3 , 0 );
setMoveKey( spep_0-3 + 344, 1, -180.1, -64.9 , 0 );
setMoveKey( spep_0-3 + 346, 1, -197.4, -70.9 , 0 );
setMoveKey( spep_0-3 + 348, 1, -215.5, -77.1 , 0 );
setMoveKey( spep_0-3 + 350, 1, -234.4, -83.5 , 0 );
setMoveKey( spep_0-3 + 352, 1, -254.2, -90.3 , 0 );
setMoveKey( spep_0-3 + 354, 1, -274.8, -97.4 , 0 );
setMoveKey( spep_0-3 + 356, 1, -296.3, -104.7 , 0 );
setMoveKey( spep_0-3 + 358, 1, -318.7, -112.4 , 0 );
setMoveKey( spep_0-3 + 359, 1, -318.7, -112.4 , 0 );

setMoveKey( spep_0-3 + 360, 1, 28.3, -197.6 , 0 );
setMoveKey( spep_0-3 + 362, 1, 73.4, -157 , 0 );
setMoveKey( spep_0-3 + 364, 1, 98.5, -148.5 , 0 );
setMoveKey( spep_0-3 + 366, 1, 155.6, -132 , 0 );
setMoveKey( spep_0-3 + 368, 1, 153.6, -150.3 , 0 );
setMoveKey( spep_0-3 + 370, 1, 159.7, -128.7 , 0 );
setMoveKey( spep_0-3 + 372, 1, 145.7, -111 , 0 );
setMoveKey( spep_0-3 + 374, 1, 163.7, -125.4 , 0 );
setMoveKey( spep_0-3 + 376, 1, 161.7, -139.7 , 0 );
setMoveKey( spep_0-3 + 378, 1, 167.8, -122.1 , 0 );
setMoveKey( spep_0-3 + 380, 1, 153.8, -124.5 , 0 );
setMoveKey( spep_0-3 + 382, 1, 171.8, -118.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, 169.8, -141.2 , 0 );
setMoveKey( spep_0-3 + 386, 1, 175.9, -115.5 , 0 );
setMoveKey( spep_0-3 + 388, 1, 161.9, -121.9 , 0 );
setMoveKey( spep_0-3 + 390, 1, 179.9, -112.2 , 0 );
setMoveKey( spep_0-3 + 392, 1, 177.9, -114.6 , 0 );
setMoveKey( spep_0-3 + 394, 1, 184, -109 , 0 );
setMoveKey( spep_0-3 + 396, 1, 186, -107.3 , 0 );
setMoveKey( spep_0-3 + 398, 1, 188, -105.7 , 0 );
setMoveKey( spep_0-3 + 399, 1, 188, -105.7 , 0 );

b=30;

setMoveKey( spep_0-3 + 400, 1, 188.7, -505.1+b , 0 );
setMoveKey( spep_0-3 + 402, 1, 178.7, -509.7+b , 0 );
setMoveKey( spep_0-3 + 404, 1, 168.6, -514.3+b , 0 );
setMoveKey( spep_0-3 + 406, 1, 158.6, -518.9+b , 0 );
setMoveKey( spep_0-3 + 408, 1, 148.5, -523.5+b , 0 );
setMoveKey( spep_0-3 + 410, 1, 138.5, -528.1+b , 0 );
setMoveKey( spep_0-3 + 412, 1, 128.4, -532.7+b , 0 );
setMoveKey( spep_0-3 + 414, 1, 118.3, -537.4+b , 0 );
setMoveKey( spep_0-3 + 416, 1, 108.2, -542+b , 0 );
setMoveKey( spep_0-3 + 418, 1, 98.1, -546.6+b , 0 );
setMoveKey( spep_0-3 + 420, 1, 88, -551.3+b , 0 );
setMoveKey( spep_0-3 + 422, 1, 77.9, -555.9+b , 0 );
setMoveKey( spep_0-3 + 424, 1, 67.8, -560.6+b , 0 );
setMoveKey( spep_0-3 + 426, 1, 60.8, -559.3+b , 0 );
setMoveKey( spep_0-3 + 428, 1, 53.8, -558+b , 0 );
setMoveKey( spep_0-3 + 430, 1, 46.9, -556.8+b , 0 );
setMoveKey( spep_0-3 + 432, 1, 39.9, -555.6+b , 0 );
setMoveKey( spep_0-3 + 434, 1, 32.9, -554.5+b , 0 );
setMoveKey( spep_0-3 + 436, 1, 25.9, -553.4+b , 0 );
setMoveKey( spep_0-3 + 438, 1, 18.8, -552.3+b , 0 );
setMoveKey( spep_0-3 + 440, 1, 11.8, -551.2+b , 0 );
setMoveKey( spep_0-3 + 442, 1, 4.8, -550.2+b , 0 );
setMoveKey( spep_0-3 + 444, 1, -2.2, -549.2+b , 0 );
setMoveKey( spep_0-3 + 446, 1, -9.2, -548.2+b , 0 );
setMoveKey( spep_0-3 + 448, 1, -16.2, -547.3+b , 0 );
setMoveKey( spep_0-3 + 450, 1, -23.2, -546.4+b , 0 );
setMoveKey( spep_0-3 + 451, 1, -23.2, -546.4+b , 0 );

setMoveKey( spep_0-3 + 452, 1, 77.3, -590.1 , 0 );
setMoveKey( spep_0-3 + 454, 1, 58.4, -637.8 , 0 );
setMoveKey( spep_0-3 + 456, 1, 46.4, -793.4 , 0 );
setMoveKey( spep_0-3 + 458, 1, -17.5, -1035.6 , 0 );
setMoveKey( spep_0-3 + 460, 1, -77, -1105.7 , 0 );
setMoveKey( spep_0-1 + 462, 1, -128.5, -1143.8 , 0 );

setScaleKey( spep_0-3 + 260, 1, 31.34, 31.34 );
setScaleKey( spep_0-3 + 262, 1, 21.43, 21.43 );
setScaleKey( spep_0-3 + 264, 1, 11.51, 11.51 );
setScaleKey( spep_0-3 + 266, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 268, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 270, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 272, 1, 1.03, 1.03 );
setScaleKey( spep_0-3 + 274, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 276, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 278, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 280, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 282, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 284, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 286, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 288, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 290, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 292, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 293, 1, 0.22, 0.22 );

setScaleKey( spep_0-3 + 294, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 296, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 297, 1, 0.18, 0.18 );

setScaleKey( spep_0-3 + 298, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 300, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 302, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 304, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 318, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 320, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 321, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 322, 1, 4.63, 4.63 );
setScaleKey( spep_0-3 + 358, 1, 4.63, 4.63 );
setScaleKey( spep_0-3 + 359, 1, 4.63, 4.63 );

setScaleKey( spep_0-3 + 360, 1, 4.98, 4.98 );
setScaleKey( spep_0-3 + 399, 1, 4.98, 4.98 );

a=1;

setScaleKey( spep_0-3 + 400, 1, 7.88+a, 7.88+a );
setScaleKey( spep_0-3 + 402, 1, 7.91+a, 7.91+a );
setScaleKey( spep_0-3 + 404, 1, 7.94+a, 7.94+a );
setScaleKey( spep_0-3 + 406, 1, 7.97+a, 7.97+a );
setScaleKey( spep_0-3 + 408, 1, 8+a, 8+a );
setScaleKey( spep_0-3 + 410, 1, 8.03+a, 8.03+a );
setScaleKey( spep_0-3 + 412, 1, 8.06+a, 8.06+a );
setScaleKey( spep_0-3 + 414, 1, 8.09+a, 8.09+a );
setScaleKey( spep_0-3 + 416, 1, 8.12+a, 8.12+a );
setScaleKey( spep_0-3 + 418, 1, 8.15+a, 8.15+a );
setScaleKey( spep_0-3 + 420, 1, 8.18+a, 8.18+a );
setScaleKey( spep_0-3 + 422, 1, 8.21+a, 8.21+a );
setScaleKey( spep_0-3 + 424, 1, 8.24+a, 8.24+a );
setScaleKey( spep_0-3 + 426, 1, 8.21+a, 8.21+a );
setScaleKey( spep_0-3 + 428, 1, 8.19+a, 8.19+a );
setScaleKey( spep_0-3 + 430, 1, 8.16+a, 8.16+a );
setScaleKey( spep_0-3 + 432, 1, 8.14+a, 8.14+a );
setScaleKey( spep_0-3 + 434, 1, 8.12+a, 8.12+a );
setScaleKey( spep_0-3 + 436, 1, 8.09+a, 8.09+a );
setScaleKey( spep_0-3 + 438, 1, 8.07+a, 8.07+a );
setScaleKey( spep_0-3 + 440, 1, 8.05+a, 8.05+a );
setScaleKey( spep_0-3 + 442, 1, 8.02+a, 8.02+a );
setScaleKey( spep_0-3 + 444, 1, 8+a, 8+a );
setScaleKey( spep_0-3 + 446, 1, 7.97+a, 7.97+a );
setScaleKey( spep_0-3 + 448, 1, 7.95+a, 7.95+a );
setScaleKey( spep_0-3 + 450, 1, 7.93+a, 7.93+a );
setScaleKey( spep_0-3 + 451, 1, 7.93+a, 7.93+a );

setScaleKey( spep_0-3 + 452, 1, 8.55, 8.55 );
setScaleKey( spep_0-3 + 454, 1, 8.55, 8.55 );
setScaleKey( spep_0-3 + 456, 1, 8.62, 8.62 );
setScaleKey( spep_0-3 + 458, 1, 8.17, 8.17 );
setScaleKey( spep_0-3 + 460, 1, 7.71, 7.71 );
setScaleKey( spep_0-1 + 462, 1, 7.24, 7.24 );

setRotateKey( spep_0-3 + 260, 1, -1.8 );
setRotateKey( spep_0-3 + 262, 1, -2.2 );
setRotateKey( spep_0-3 + 264, 1, -2.6 );
setRotateKey( spep_0-3 + 266, 1, -2.9 );
setRotateKey( spep_0-3 + 268, 1, -0.6 );
setRotateKey( spep_0-3 + 270, 1, 1.5 );
setRotateKey( spep_0-3 + 272, 1, 3.5 );
setRotateKey( spep_0-3 + 274, 1, 5.2 );
setRotateKey( spep_0-3 + 276, 1, 6.8 );
setRotateKey( spep_0-3 + 278, 1, 8.2 );
setRotateKey( spep_0-3 + 280, 1, 9.4 );
setRotateKey( spep_0-3 + 282, 1, 10.4 );
setRotateKey( spep_0-3 + 284, 1, 11.2 );
setRotateKey( spep_0-3 + 286, 1, 11.9 );
setRotateKey( spep_0-3 + 288, 1, 12.4 );
setRotateKey( spep_0-3 + 290, 1, 12.6 );
setRotateKey( spep_0-3 + 292, 1, 12.7 );
setRotateKey( spep_0-3 + 293, 1, 12.7 );

setRotateKey( spep_0-3 + 294, 1, -2.3 );
setRotateKey( spep_0-3 + 296, 1, 8.3 );
setRotateKey( spep_0-3 + 297, 1, 8.3 );

setRotateKey( spep_0-3 + 298, 1, -48 );
setRotateKey( spep_0-3 + 300, 1, -47 );
setRotateKey( spep_0-3 + 302, 1, -45.9 );
setRotateKey( spep_0-3 + 304, 1, -44.9 );
setRotateKey( spep_0-3 + 306, 1, -44.8 );
setRotateKey( spep_0-3 + 308, 1, -44.6 );
setRotateKey( spep_0-3 + 310, 1, -44.5 );
setRotateKey( spep_0-3 + 312, 1, -44.3 );
setRotateKey( spep_0-3 + 314, 1, -44.2 );
setRotateKey( spep_0-3 + 316, 1, -44.1 );
setRotateKey( spep_0-3 + 318, 1, -43.9 );
setRotateKey( spep_0-3 + 320, 1, -43.8 );
setRotateKey( spep_0-3 + 322, 1, -41.3 );
setRotateKey( spep_0-3 + 324, 1, -42 );
setRotateKey( spep_0-3 + 326, 1, -42.8 );
setRotateKey( spep_0-3 + 328, 1, -43.7 );
setRotateKey( spep_0-3 + 330, 1, -44.6 );
setRotateKey( spep_0-3 + 332, 1, -45.6 );
setRotateKey( spep_0-3 + 334, 1, -46.7 );
setRotateKey( spep_0-3 + 336, 1, -47.8 );
setRotateKey( spep_0-3 + 338, 1, -49.1 );
setRotateKey( spep_0-3 + 340, 1, -50.4 );
setRotateKey( spep_0-3 + 342, 1, -51.8 );
setRotateKey( spep_0-3 + 344, 1, -53.2 );
setRotateKey( spep_0-3 + 346, 1, -54.7 );
setRotateKey( spep_0-3 + 348, 1, -56.4 );
setRotateKey( spep_0-3 + 350, 1, -58 );
setRotateKey( spep_0-3 + 352, 1, -59.8 );
setRotateKey( spep_0-3 + 354, 1, -61.6 );
setRotateKey( spep_0-3 + 356, 1, -63.5 );
setRotateKey( spep_0-3 + 358, 1, -65.5 );
setRotateKey( spep_0-3 + 298, 1, -48 );
setRotateKey( spep_0-3 + 300, 1, -47 );
setRotateKey( spep_0-3 + 302, 1, -45.9 );
setRotateKey( spep_0-3 + 304, 1, -44.9 );
setRotateKey( spep_0-3 + 306, 1, -44.8 );
setRotateKey( spep_0-3 + 308, 1, -44.6 );
setRotateKey( spep_0-3 + 310, 1, -44.5 );
setRotateKey( spep_0-3 + 312, 1, -44.3 );
setRotateKey( spep_0-3 + 314, 1, -44.2 );
setRotateKey( spep_0-3 + 316, 1, -44.1 );
setRotateKey( spep_0-3 + 318, 1, -43.9 );
setRotateKey( spep_0-3 + 320, 1, -43.8 );
setRotateKey( spep_0-3 + 322, 1, -41.3 );
setRotateKey( spep_0-3 + 324, 1, -42 );
setRotateKey( spep_0-3 + 326, 1, -42.8 );
setRotateKey( spep_0-3 + 328, 1, -43.7 );
setRotateKey( spep_0-3 + 330, 1, -44.6 );
setRotateKey( spep_0-3 + 332, 1, -45.6 );
setRotateKey( spep_0-3 + 334, 1, -46.7 );
setRotateKey( spep_0-3 + 336, 1, -47.8 );
setRotateKey( spep_0-3 + 338, 1, -49.1 );
setRotateKey( spep_0-3 + 340, 1, -50.4 );
setRotateKey( spep_0-3 + 342, 1, -51.8 );
setRotateKey( spep_0-3 + 344, 1, -53.2 );
setRotateKey( spep_0-3 + 346, 1, -54.7 );
setRotateKey( spep_0-3 + 348, 1, -56.4 );
setRotateKey( spep_0-3 + 350, 1, -58 );
setRotateKey( spep_0-3 + 352, 1, -59.8 );
setRotateKey( spep_0-3 + 354, 1, -61.6 );
setRotateKey( spep_0-3 + 356, 1, -63.5 );
setRotateKey( spep_0-3 + 358, 1, -65.5 );
setRotateKey( spep_0-3 + 359, 1, -65.5 );

setRotateKey( spep_0-3 + 360, 1, -3.3 );
setRotateKey( spep_0-3 + 362, 1, -2 );
setRotateKey( spep_0-3 + 364, 1, -0.6 );
setRotateKey( spep_0-3 + 366, 1, 0.8 );
setRotateKey( spep_0-3 + 368, 1, 0.8 );
setRotateKey( spep_0-3 + 370, 1, 0.9 );
setRotateKey( spep_0-3 + 372, 1, 0.9 );
setRotateKey( spep_0-3 + 374, 1, 1 );
setRotateKey( spep_0-3 + 376, 1, 1 );
setRotateKey( spep_0-3 + 378, 1, 1.1 );
setRotateKey( spep_0-3 + 380, 1, 1.2 );
setRotateKey( spep_0-3 + 382, 1, 1.2 );
setRotateKey( spep_0-3 + 384, 1, 1.3 );
setRotateKey( spep_0-3 + 386, 1, 1.3 );
setRotateKey( spep_0-3 + 388, 1, 1.4 );
setRotateKey( spep_0-3 + 390, 1, 1.4 );
setRotateKey( spep_0-3 + 392, 1, 1.5 );
setRotateKey( spep_0-3 + 394, 1, 1.6 );
setRotateKey( spep_0-3 + 396, 1, 1.6 );
setRotateKey( spep_0-3 + 398, 1, 1.7 );
setRotateKey( spep_0-3 + 399, 1, 1.7 );

setRotateKey( spep_0-3 + 400, 1, -21 );
setRotateKey( spep_0-3 + 402, 1, -21.7 );
setRotateKey( spep_0-3 + 404, 1, -22.3 );
setRotateKey( spep_0-3 + 406, 1, -23 );
setRotateKey( spep_0-3 + 408, 1, -23.6 );
setRotateKey( spep_0-3 + 410, 1, -24.3 );
setRotateKey( spep_0-3 + 412, 1, -24.9 );
setRotateKey( spep_0-3 + 414, 1, -25.6 );
setRotateKey( spep_0-3 + 416, 1, -26.2 );
setRotateKey( spep_0-3 + 418, 1, -26.9 );
setRotateKey( spep_0-3 + 420, 1, -27.5 );
setRotateKey( spep_0-3 + 422, 1, -28.2 );
setRotateKey( spep_0-3 + 424, 1, -28.8 );
setRotateKey( spep_0-3 + 426, 1, -29.9 );
setRotateKey( spep_0-3 + 428, 1, -31 );
setRotateKey( spep_0-3 + 430, 1, -32.1 );
setRotateKey( spep_0-3 + 432, 1, -33.1 );
setRotateKey( spep_0-3 + 434, 1, -34.2 );
setRotateKey( spep_0-3 + 436, 1, -35.3 );
setRotateKey( spep_0-3 + 438, 1, -36.4 );
setRotateKey( spep_0-3 + 440, 1, -37.5 );
setRotateKey( spep_0-3 + 442, 1, -38.5 );
setRotateKey( spep_0-3 + 444, 1, -39.6 );
setRotateKey( spep_0-3 + 446, 1, -40.7 );
setRotateKey( spep_0-3 + 448, 1, -41.8 );
setRotateKey( spep_0-3 + 450, 1, -42.9 );
setRotateKey( spep_0-3 + 451, 1, -42.9 );

setRotateKey( spep_0-3 + 452, 1, -121.5 );
setRotateKey( spep_0-3 + 454, 1, -121.3 );
setRotateKey( spep_0-3 + 456, 1, -121.4 );
setRotateKey( spep_0-3 + 458, 1, -121.3 );
setRotateKey( spep_0-3 + 460, 1, -121.4 );
setRotateKey( spep_0-1 + 462, 1, -121.5 );

--敵の動き
setDisp( spep_0-3 + 494, 1, 1);
setDisp( spep_0-1 + 538, 1, 0);

changeAnime( spep_0-3 + 494, 1, 105);

setMoveKey( spep_0-3 + 494, 1, -21, -54.6 , 0 );
setMoveKey( spep_0-3 + 496, 1, -30.3, -28.1 , 0 );
setMoveKey( spep_0-3 + 498, 1, -39.6, -1.7 , 0 );
setMoveKey( spep_0-3 + 500, 1, -48.9, 24.5 , 0 );
setMoveKey( spep_0-3 + 502, 1, -49.1, 24.6 , 0 );
setMoveKey( spep_0-3 + 504, 1, -49.2, 24.7 , 0 );
setMoveKey( spep_0-3 + 506, 1, -49.4, 24.7 , 0 );
setMoveKey( spep_0-3 + 508, 1, -49.6, 24.8 , 0 );
setMoveKey( spep_0-3 + 510, 1, -49.7, 24.9 , 0 );
setMoveKey( spep_0-3 + 512, 1, -49.9, 25 , 0 );
setMoveKey( spep_0-3 + 514, 1, -50.1, 25.1 , 0 );
setMoveKey( spep_0-3 + 516, 1, -50.2, 25.1 , 0 );
setMoveKey( spep_0-3 + 518, 1, -50.4, 25.2 , 0 );
setMoveKey( spep_0-3 + 520, 1, -50.6, 25.3 , 0 );
setMoveKey( spep_0-3 + 522, 1, -50.8, 25.4 , 0 );
setMoveKey( spep_0-3 + 524, 1, -51, 25.5 , 0 );
setMoveKey( spep_0-3 + 526, 1, -51.1, 25.6 , 0 );
setMoveKey( spep_0-3 + 528, 1, -51.3, 25.7 , 0 );
setMoveKey( spep_0-3 + 530, 1, -51.5, 25.7 , 0 );
setMoveKey( spep_0-3 + 532, 1, -51.7, 25.8 , 0 );
setMoveKey( spep_0-3 + 534, 1, -51.9, 25.9 , 0 );
setMoveKey( spep_0-3 + 536, 1, -52.1, 26 , 0 );
setMoveKey( spep_0-1 + 538, 1, -52.2, 26.1 , 0 );

setScaleKey( spep_0-3 + 494, 1, 8.78, 8.78 );
setScaleKey( spep_0-3 + 496, 1, 6.11, 6.11 );
setScaleKey( spep_0-3 + 498, 1, 3.44, 3.44 );
setScaleKey( spep_0-3 + 500, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 502, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 504, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 506, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 508, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 510, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 512, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 514, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 516, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 518, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 520, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 522, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 524, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 526, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 528, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 530, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 532, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 534, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 536, 1, 0.16, 0.16 );
setScaleKey( spep_0-1 + 538, 1, 0.13, 0.13 );

setRotateKey( spep_0-3 + 494, 1, 109.9 );
setRotateKey( spep_0-3 + 496, 1, 112.6 );
setRotateKey( spep_0-3 + 498, 1, 115.3 );
setRotateKey( spep_0-3 + 500, 1, 118.1 );
setRotateKey( spep_0-3 + 502, 1, 118.8 );
setRotateKey( spep_0-3 + 504, 1, 119.6 );
setRotateKey( spep_0-3 + 506, 1, 120.4 );
setRotateKey( spep_0-3 + 508, 1, 121.1 );
setRotateKey( spep_0-3 + 510, 1, 121.9 );
setRotateKey( spep_0-3 + 512, 1, 122.7 );
setRotateKey( spep_0-3 + 514, 1, 123.4 );
setRotateKey( spep_0-3 + 516, 1, 124.2 );
setRotateKey( spep_0-3 + 518, 1, 125 );
setRotateKey( spep_0-3 + 520, 1, 125.7 );
setRotateKey( spep_0-3 + 522, 1, 126.5 );
setRotateKey( spep_0-3 + 524, 1, 127.3 );
setRotateKey( spep_0-3 + 526, 1, 128.1 );
setRotateKey( spep_0-3 + 528, 1, 128.8 );
setRotateKey( spep_0-3 + 530, 1, 129.6 );
setRotateKey( spep_0-3 + 532, 1, 130.4 );
setRotateKey( spep_0-3 + 534, 1, 131.1 );
setRotateKey( spep_0-3 + 536, 1, 131.9 );
setRotateKey( spep_0-1 + 538, 1, 132.7 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 218,  10021, 34, 0x100, -1, 0, -99.4, 340 );--バゴォッ
setEffShake( spep_0-3 + 218, ctbago, 34, 10 );
setEffMoveKey( spep_0-3 + 218, ctbago, -99.4, 340 , 0 );
setEffMoveKey( spep_0-3 + 220, ctbago, -99.5, 339.1 , 0 );
setEffMoveKey( spep_0-3 + 222, ctbago, -127.9, 354.6 , 0 );
setEffMoveKey( spep_0-3 + 224, ctbago, -99.4, 340 , 0 );
setEffMoveKey( spep_0-3 + 226, ctbago, -123.5, 352.7 , 0 );
setEffMoveKey( spep_0-3 + 228, ctbago, -99.4, 340 , 0 );
setEffMoveKey( spep_0-3 + 230, ctbago, -122.9, 352.5 , 0 );
setEffMoveKey( spep_0-3 + 232, ctbago, -99.4, 340.1 , 0 );
setEffMoveKey( spep_0-3 + 234, ctbago, -122.4, 352.2 , 0 );
setEffMoveKey( spep_0-3 + 236, ctbago, -99.3, 340.1 , 0 );
setEffMoveKey( spep_0-3 + 238, ctbago, -121.8, 352 , 0 );
setEffMoveKey( spep_0-3 + 240, ctbago, -99.3, 340.2 , 0 );
setEffMoveKey( spep_0-3 + 242, ctbago, -121.3, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 244, ctbago, -99.3, 340.3 , 0 );
setEffMoveKey( spep_0-3 + 246, ctbago, -120.9, 351.6 , 0 );
setEffMoveKey( spep_0-3 + 248, ctbago, -99.4, 340.2 , 0 );
setEffMoveKey( spep_0-3 + 250, ctbago, -120.6, 351.4 , 0 );
setEffMoveKey( spep_0-3 + 252, ctbago, -120.5, 351.3 , 0 );

setEffScaleKey( spep_0-3 + 218, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 220, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 222, ctbago, 3.74, 3.74 );
setEffScaleKey( spep_0-3 + 224, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 226, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 228, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 230, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 232, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_0-3 + 234, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 236, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 238, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 240, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 242, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 244, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 246, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 248, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 250, ctbago, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 252, ctbago, 2.78, 2.78 );

setEffRotateKey( spep_0-3 + 218, ctbago, -26.7 );
setEffRotateKey( spep_0-3 + 252, ctbago, -26.7 );

setEffAlphaKey( spep_0-3 + 218, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 244, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 246, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 248, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 250, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 252, ctbago, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 362,  10016, 30, 0x100, -1, 0, -165.7, 377.1 );--ズンッ
setEffShake( spep_0-3 + 362, ctzun, 30, 10 );
setEffMoveKey( spep_0-3 + 362, ctzun, -165.7, 377.1 , 0 );
setEffMoveKey( spep_0-3 + 364, ctzun, -165.4, 377 , 0 );
setEffMoveKey( spep_0-3 + 366, ctzun, -176.7, 379.7 , 0 );
setEffMoveKey( spep_0-3 + 368, ctzun, -164.7, 376.8 , 0 );
setEffMoveKey( spep_0-3 + 370, ctzun, -174.7, 379.4 , 0 );
setEffMoveKey( spep_0-3 + 372, ctzun, -173.6, 379.3 , 0 );
setEffMoveKey( spep_0-3 + 374, ctzun, -164.4, 377 , 0 );
setEffMoveKey( spep_0-3 + 376, ctzun, -174, 379.2 , 0 );
setEffMoveKey( spep_0-3 + 378, ctzun, -164.6, 376.9 , 0 );
setEffMoveKey( spep_0-3 + 380, ctzun, -174.4, 379.1 , 0 );
setEffMoveKey( spep_0-3 + 382, ctzun, -164.9, 376.7 , 0 );
setEffMoveKey( spep_0-3 + 384, ctzun, -174.8, 379 , 0 );
setEffMoveKey( spep_0-3 + 386, ctzun, -165, 376.7 , 0 );
setEffMoveKey( spep_0-3 + 388, ctzun, -173.6, 378.7 , 0 );
setEffMoveKey( spep_0-3 + 390, ctzun, -165.1, 376.7 , 0 );
setEffMoveKey( spep_0-3 + 392, ctzun, -165.1, 376.7 , 0 );

setEffScaleKey( spep_0-3 + 362, ctzun, 1.43, 1.43 );
setEffScaleKey( spep_0-3 + 364, ctzun, 4.17, 4.17 );
setEffScaleKey( spep_0-3 + 366, ctzun, 4.01, 4.01 );
setEffScaleKey( spep_0-3 + 368, ctzun, 3.85, 3.85 );
setEffScaleKey( spep_0-3 + 370, ctzun, 3.54, 3.54 );
setEffScaleKey( spep_0-3 + 372, ctzun, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 374, ctzun, 3.25, 3.25 );
setEffScaleKey( spep_0-3 + 376, ctzun, 3.28, 3.28 );
setEffScaleKey( spep_0-3 + 378, ctzun, 3.3, 3.3 );
setEffScaleKey( spep_0-3 + 380, ctzun, 3.33, 3.33 );
setEffScaleKey( spep_0-3 + 382, ctzun, 3.36, 3.36 );
setEffScaleKey( spep_0-3 + 384, ctzun, 3.39, 3.39 );
setEffScaleKey( spep_0-3 + 386, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 388, ctzun, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 390, ctzun, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 392, ctzun, 2.53, 2.53 );

setEffRotateKey( spep_0-3 + 362, ctzun, -28.8 );
setEffRotateKey( spep_0-3 + 372, ctzun, -28.8 );
setEffRotateKey( spep_0-3 + 374, ctzun, -28.9 );
setEffRotateKey( spep_0-3 + 380, ctzun, -28.9 );
setEffRotateKey( spep_0-3 + 382, ctzun, -29 );
setEffRotateKey( spep_0-3 + 392, ctzun, -29 );

setEffAlphaKey( spep_0-3 + 362, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 384, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 386, ctzun, 191 );
setEffAlphaKey( spep_0-3 + 388, ctzun, 128 );
setEffAlphaKey( spep_0-3 + 390, ctzun, 64 );
setEffAlphaKey( spep_0-3 + 392, ctzun, 0 );

--SE
--入り
stopSe( spep_0 + 144, SE001, 68 );
stopSe( spep_0 + 144, SE002, 68 );
--顔カットイン
SE004 = playSe( spep_0 + 96, 1018 );

--そして木へ
SE005 = playSe( spep_0 + 304, 1168 );
setSeVolumeByWorkId( spep_0 + 304, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 305, SE005, 17 );
setSeVolumeByWorkId( spep_0 + 306, SE005, 34 );
setSeVolumeByWorkId( spep_0 + 307, SE005, 51 );
setSeVolumeByWorkId( spep_0 + 308, SE005, 68 );
setStartTimeMs( SE005,  2167 );
SE011 = playSe( spep_0 + 298, 1025 );
setSeVolumeByWorkId( spep_0 + 298, SE011, 56 );
SE012 = playSe( spep_0 + 298, 1023 );
setSeVolumeByWorkId( spep_0 + 298, SE012, 35 );

--瞬間移動
SE006 = playSe( spep_0 + 178, 1109 );

--パンチ
SE007 = playSe( spep_0 + 214, 1003 );
SE008 = playSe( spep_0 + 218, 1110 );
SE009 = playSe( spep_0 + 218, 1120 );

--敵飛んでいく
SE010 = playSe( spep_0 + 260, 1183 );
stopSe( spep_0 + 300, SE010, 8 );

--膝蹴り
SE013 = playSe( spep_0 + 354, 1004 );
SE014 = playSe( spep_0 + 358, 1110 );
setSeVolumeByWorkId( spep_0 + 358, SE014, 68 );
SE015 = playSe( spep_0 + 358, 1187 );
setSeVolumeByWorkId( spep_0 + 358, SE015, 77 );
stopSe( spep_0 + 366, SE015, 32 );
SE016 = playSe( spep_0 + 360, 1010 );
SE017 = playSe( spep_0 + 362, 1190 );
setSeVolumeByWorkId( spep_0 + 362, SE017, 112 );

--敵落ちていく
SE018 = playSe( spep_0 + 490, 1121 );
setSeVolumeByWorkId( spep_0 + 490, SE018, 0 );
setSeVolumeByWorkId( spep_0 + 491, SE018, 16.6 );
setSeVolumeByWorkId( spep_0 + 492, SE018, 33.2 );
setSeVolumeByWorkId( spep_0 + 493, SE018, 49.8 );
setSeVolumeByWorkId( spep_0 + 494, SE018, 66.4 );
setSeVolumeByWorkId( spep_0 + 495, SE018, 83 );
setSeVolumeByWorkId( spep_0 + 496, SE018, 100 );
setStartTimeMs( SE018,  2083 );

--敵叩き落とす
SE019 = playSe( spep_0 + 450, 1003 );
SE020 = playSe( spep_0 + 454, 1123 );
SE021 = playSe( spep_0 + 454, 1110 );
SE022 = playSe( spep_0 + 492, 1183 );

--白フェード
entryFade( spep_0 + 536, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+540;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 86, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1 + 0, SE_05);
speff2 = entryEffect( spep_1 + 0, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1 + 0, SE_05);
speff2 = entryEffect( spep_1 + 0, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1 + 0, SE_05);
speff2 = entryEffect( spep_1 + 0, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え
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

--敵叩き落とす
stopSe( spep_1 + 2, SE022, 0 );

--敵落ちていく
stopSe( spep_1 + 2, SE018, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 発射〜ラストまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

-- ** エフェクト等 ** --
ctvo = entryEffect( spep_2 + 0, 156234, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, ctvo, 0, 0, 0 );
setEffMoveKey( spep_2 + 540, ctvo, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ctvo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 540, ctvo, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ctvo, 0 );
setEffRotateKey( spep_2 + 540, ctvo, 0 );
setEffAlphaKey( spep_2 + 0, ctvo, 255 );
setEffAlphaKey( spep_2 + 540, ctvo, 255 );

--敵の動き
setDisp( spep_2-3 + 116, 1, 1);
setDisp( spep_2-1 + 538, 1, 0);

changeAnime( spep_2-3 + 116, 1, 6);
changeAnime( spep_2-3 + 150, 1, 8);

setMoveKey( spep_2-3 + 116, 1, 977, 1046.9 , 0 );
setMoveKey( spep_2-3 + 118, 1, 739.1, 796.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 501.1, 545.9 , 0 );
setMoveKey( spep_2-3 + 122, 1, 263.1, 295.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 25.2, 44.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 19, 38.4 , 0 );
setMoveKey( spep_2-3 + 128, 1, 12.8, 31.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 6.6, 25.4 , 0 );
setMoveKey( spep_2-3 + 132, 1, 0.5, 18.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, -5.7, 12.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, -11.9, 5.9 , 0 );
setMoveKey( spep_2-3 + 138, 1, -18.1, -0.6 , 0 );
setMoveKey( spep_2-3 + 140, 1, -24.3, -7.1 , 0 );
setMoveKey( spep_2-3 + 142, 1, -30.4, -13.6 , 0 );
setMoveKey( spep_2-3 + 144, 1, -36.6, -20.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, -42.8, -26.7 , 0 );
setMoveKey( spep_2-3 + 148, 1, -49, -33.2 , 0 );
setMoveKey( spep_2-3 + 149, 1, -49, -33.2 , 0 );

setMoveKey( spep_2-3 + 150, 1, -88.1, -52.2 , 0 );
setMoveKey( spep_2-3 + 152, 1, -215.2, -183.4 , 0 );
setMoveKey( spep_2-3 + 154, 1, -342.4, -314.7 , 0 );
setMoveKey( spep_2-3 + 156, 1, -469.6, -445.9 , 0 );
setMoveKey( spep_2-3 + 158, 1, -596.8, -577.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, -724, -708.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, -851.2, -839.5 , 0 );

setScaleKey( spep_2-3 + 116, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 162, 1, 1.66, 1.66 );

setRotateKey( spep_2-3 + 116, 1, -2.9 );
setRotateKey( spep_2-3 + 118, 1, -5.9 );
setRotateKey( spep_2-3 + 120, 1, -8.8 );
setRotateKey( spep_2-3 + 122, 1, -11.7 );
setRotateKey( spep_2-3 + 124, 1, -14.6 );
setRotateKey( spep_2-3 + 126, 1, -14.7 );
setRotateKey( spep_2-3 + 128, 1, -14.7 );
setRotateKey( spep_2-3 + 130, 1, -14.8 );
setRotateKey( spep_2-3 + 132, 1, -14.9 );
setRotateKey( spep_2-3 + 134, 1, -14.9 );
setRotateKey( spep_2-3 + 136, 1, -15 );
setRotateKey( spep_2-3 + 138, 1, -15.1 );
setRotateKey( spep_2-3 + 140, 1, -15.1 );
setRotateKey( spep_2-3 + 142, 1, -15.2 );
setRotateKey( spep_2-3 + 144, 1, -15.3 );
setRotateKey( spep_2-3 + 146, 1, -15.3 );
setRotateKey( spep_2-3 + 148, 1, -15.4 );
setRotateKey( spep_2-3 + 149, 1, -15.4 );

setRotateKey( spep_2-3 + 150, 1, -47.2 );
setRotateKey( spep_2-3 + 162, 1, -47.2 );

--SE
--腕振り上げ
SE024 = playSe( spep_2 + 8, 1004 );
setSeVolumeByWorkId( spep_2 + 8, SE024, 81 );
setPitch( spep_0 + 646, SE024, -400 );
setTimeStretch( SE024, 0.92, 10, 1 );

--気弾発射
SE025 = playSe( spep_2 + 58, 20 );
setSeVolumeByWorkId( spep_2 + 58, SE025, 60 );
SE026 = playSe( spep_2 + 58, 1109 );
setSeVolumeByWorkId( spep_2 + 58, SE026, 150 );
SE027 = playSe( spep_2 + 58, 1231 );
setSeVolumeByWorkId( spep_2 + 58, SE027, 123 );
SE028 = playSe( spep_2 + 58, 1022 );
setSeVolumeByWorkId( spep_2 + 58, SE028, 68 );
SE029 = playSe( spep_2 + 58, 1236 );
setSeVolumeByWorkId( spep_2 + 58, SE029, 71 );
SE030 = playSe( spep_2 + 58, 1177 );
setSeVolumeByWorkId( spep_2 + 58, SE030, 62 );

--気弾飛んでいく
SE031 = playSe( spep_2 + 174, 1193 );
setSeVolumeByWorkId( spep_2 + 174, SE031, 0 );
setSeVolumeByWorkId( spep_2 + 175, SE031, 7 );
setSeVolumeByWorkId( spep_2 + 176, SE031, 14 );
setSeVolumeByWorkId( spep_2 + 177, SE031, 21 );
setSeVolumeByWorkId( spep_2 + 178, SE031, 28 );
setSeVolumeByWorkId( spep_2 + 179, SE031, 35 );
setSeVolumeByWorkId( spep_2 + 180, SE031, 42 );
setSeVolumeByWorkId( spep_2 + 181, SE031, 49 );
setSeVolumeByWorkId( spep_2 + 182, SE031, 56 );
setStartTimeMs( SE031,  1550 );
stopSe( spep_2 + 232, SE031, 34 );

--敵覆いかぶさる
SE032 = playSe( spep_2 + 136, 1021 );

--気弾飛んでいく
SE033 = playSe( spep_2 + 178, 1179 );
setSeVolumeByWorkId( spep_2 + 178, SE033, 82 );
SE034 = playSe( spep_2 + 180, 1277 );
setSeVolumeByWorkId( spep_2 + 180, SE034, 79 );

--爆発
SE035 = playSe( spep_2+12 + 234, 1159 );
SE036 = playSe( spep_2+12 + 234, 1067 );
setSeVolumeByWorkId( spep_2+12 + 234, SE036, 72 );
SE037 = playSe( spep_2+12 + 252, 1188 );
setSeVolumeByWorkId( spep_2+12 + 252, SE037, 75 );
SE038 = playSe( spep_2+12 + 264, 1023 );
setSeVolumeByWorkId( spep_2+12 + 264, SE038, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 350, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +250 );
endPhase( spep_2 + 340 );
else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜叩き落としまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast_f = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0, -100 );
setEffMoveKey( spep_0 + 0, fast_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, fast_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, fast_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_f, 0 );
setEffRotateKey( spep_0 + 540, fast_f, 0 );
setEffAlphaKey( spep_0 + 0, fast_f, 255 );
setEffAlphaKey( spep_0 + 93, fast_f, 255 );
setEffAlphaKey( spep_0 + 94, fast_f, 0 );
setEffAlphaKey( spep_0 + 540, fast_f, 0 );

fast_f2 = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, fast_f2, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, fast_f2, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_f2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, fast_f2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_f2, 0 );
setEffRotateKey( spep_0 + 540, fast_f2, 0 );
setEffAlphaKey( spep_0 + 0, fast_f2, 0 );
setEffAlphaKey( spep_0 + 93, fast_f2, 0 );
setEffAlphaKey( spep_0 + 94, fast_f2, 255 );
setEffAlphaKey( spep_0 + 540, fast_f2, 255 );

-- ** エフェクト等 ** --
fast_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0, -200 );
setEffMoveKey( spep_0 + 0, fast_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, fast_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, fast_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_b, 0 );
setEffRotateKey( spep_0 + 540, fast_b, 0 );
setEffAlphaKey( spep_0 + 0, fast_b, 255 );
setEffAlphaKey( spep_0 + 540, fast_b, 255 );

--敵の動き
setDisp( spep_0, 1, 1);
setDisp( spep_0-1+94, 1, 0);

changeAnime( spep_0, 1, 118);

setMoveKey( spep_0 + 0, 1, 1390.2, 156.7 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 1384.1, 155.2 , 0 );
setMoveKey( spep_0-3 + 4, 1, 1378, 153.8 , 0 );
setMoveKey( spep_0-3 + 6, 1, 1371.9, 152.4 , 0 );
setMoveKey( spep_0-3 + 8, 1, 1365.9, 151 , 0 );
setMoveKey( spep_0-3 + 10, 1, 1359.9, 149.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, 1353.9, 148.3 , 0 );
setMoveKey( spep_0-3 + 14, 1, 1347.9, 146.9 , 0 );
setMoveKey( spep_0-3 + 16, 1, 1341.9, 145.5 , 0 );
setMoveKey( spep_0-3 + 18, 1, 1336, 144.1 , 0 );
setMoveKey( spep_0-3 + 20, 1, 1330.1, 142.7 , 0 );
setMoveKey( spep_0-3 + 22, 1, 1324.2, 141.4 , 0 );
setMoveKey( spep_0-3 + 24, 1, 1318.3, 140 , 0 );
setMoveKey( spep_0-3 + 26, 1, 1312.4, 138.7 , 0 );
setMoveKey( spep_0-3 + 28, 1, 1306.6, 137.3 , 0 );
setMoveKey( spep_0-3 + 30, 1, 1300.7, 136 , 0 );
setMoveKey( spep_0-3 + 32, 1, 1294.9, 134.6 , 0 );
setMoveKey( spep_0-3 + 34, 1, 1289.1, 133.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 1283.4, 131.9 , 0 );
setMoveKey( spep_0-3 + 38, 1, 1277.6, 130.6 , 0 );
setMoveKey( spep_0-3 + 40, 1, 1116.7, 93.3 , 0 );
setMoveKey( spep_0-3 + 42, 1, 958, 56.6 , 0 );
setMoveKey( spep_0-3 + 44, 1, 801.5, 20.4 , 0 );
setMoveKey( spep_0-3 + 46, 1, 647.2, -15.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 495.1, -50.6 , 0 );
setMoveKey( spep_0-3 + 50, 1, 488, -52 , 0 );
setMoveKey( spep_0-3 + 52, 1, 480.8, -53.3 , 0 );
setMoveKey( spep_0-3 + 54, 1, 473.7, -54.7 , 0 );
setMoveKey( spep_0-3 + 56, 1, 466.6, -56.1 , 0 );
setMoveKey( spep_0-3 + 58, 1, 459.4, -57.4 , 0 );
setMoveKey( spep_0-3 + 60, 1, 452.3, -58.8 , 0 );
setMoveKey( spep_0-3 + 62, 1, 445.2, -60.2 , 0 );
setMoveKey( spep_0-3 + 64, 1, 438, -61.6 , 0 );
setMoveKey( spep_0-3 + 66, 1, 430.9, -62.9 , 0 );
setMoveKey( spep_0-3 + 68, 1, 423.7, -64.3 , 0 );
setMoveKey( spep_0-3 + 70, 1, 416.6, -65.7 , 0 );
setMoveKey( spep_0-3 + 72, 1, 409.5, -67 , 0 );
setMoveKey( spep_0-3 + 74, 1, 402.3, -68.4 , 0 );
setMoveKey( spep_0-3 + 76, 1, 395.2, -69.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, 388.1, -71.2 , 0 );
setMoveKey( spep_0-3 + 80, 1, 380.9, -72.5 , 0 );
setMoveKey( spep_0-3 + 82, 1, 373.8, -73.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, 366.6, -75.3 , 0 );
setMoveKey( spep_0-3 + 86, 1, 359.5, -76.7 , 0 );
setMoveKey( spep_0-3 + 88, 1, 352.4, -78 , 0 );
setMoveKey( spep_0-3 + 90, 1, 345.2, -79.4 , 0 );
setMoveKey( spep_0-3 + 92, 1, 338.1, -80.8 , 0 );
setMoveKey( spep_0-1 + 94, 1, 331, -82.2 , 0 );

setScaleKey( spep_0 + 0, 1, 9.29, 9.29 );
--setScaleKey( spep_0-3 + 2, 1, 9.27, 9.27 );
setScaleKey( spep_0-3 + 4, 1, 9.24, 9.24 );
setScaleKey( spep_0-3 + 6, 1, 9.21, 9.21 );
setScaleKey( spep_0-3 + 8, 1, 9.19, 9.19 );
setScaleKey( spep_0-3 + 10, 1, 9.16, 9.16 );
setScaleKey( spep_0-3 + 12, 1, 9.14, 9.14 );
setScaleKey( spep_0-3 + 14, 1, 9.11, 9.11 );
setScaleKey( spep_0-3 + 16, 1, 9.09, 9.09 );
setScaleKey( spep_0-3 + 18, 1, 9.06, 9.06 );
setScaleKey( spep_0-3 + 20, 1, 9.03, 9.03 );
setScaleKey( spep_0-3 + 22, 1, 9.01, 9.01 );
setScaleKey( spep_0-3 + 24, 1, 8.98, 8.98 );
setScaleKey( spep_0-3 + 26, 1, 8.96, 8.96 );
setScaleKey( spep_0-3 + 28, 1, 8.93, 8.93 );
setScaleKey( spep_0-3 + 30, 1, 8.91, 8.91 );
setScaleKey( spep_0-3 + 32, 1, 8.88, 8.88 );
setScaleKey( spep_0-3 + 34, 1, 8.86, 8.86 );
setScaleKey( spep_0-3 + 36, 1, 8.83, 8.83 );
setScaleKey( spep_0-3 + 38, 1, 8.81, 8.81 );
setScaleKey( spep_0-3 + 40, 1, 8.12, 8.12 );
setScaleKey( spep_0-3 + 42, 1, 7.44, 7.44 );
setScaleKey( spep_0-3 + 44, 1, 6.77, 6.77 );
setScaleKey( spep_0-3 + 46, 1, 6.11, 6.11 );
setScaleKey( spep_0-3 + 48, 1, 5.46, 5.46 );
setScaleKey( spep_0-3 + 50, 1, 5.42, 5.42 );
setScaleKey( spep_0-3 + 52, 1, 5.38, 5.38 );
setScaleKey( spep_0-3 + 54, 1, 5.34, 5.34 );
setScaleKey( spep_0-3 + 56, 1, 5.3, 5.3 );
setScaleKey( spep_0-3 + 58, 1, 5.26, 5.26 );
setScaleKey( spep_0-3 + 60, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 62, 1, 5.18, 5.18 );
setScaleKey( spep_0-3 + 64, 1, 5.14, 5.14 );
setScaleKey( spep_0-3 + 66, 1, 5.1, 5.1 );
setScaleKey( spep_0-3 + 68, 1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 70, 1, 5.02, 5.02 );
setScaleKey( spep_0-3 + 72, 1, 4.98, 4.98 );
setScaleKey( spep_0-3 + 74, 1, 4.94, 4.94 );
setScaleKey( spep_0-3 + 76, 1, 4.9, 4.9 );
setScaleKey( spep_0-3 + 78, 1, 4.86, 4.86 );
setScaleKey( spep_0-3 + 80, 1, 4.82, 4.82 );
setScaleKey( spep_0-3 + 82, 1, 4.78, 4.78 );
setScaleKey( spep_0-3 + 84, 1, 4.74, 4.74 );
setScaleKey( spep_0-3 + 86, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 88, 1, 4.66, 4.66 );
setScaleKey( spep_0-3 + 90, 1, 4.62, 4.62 );
setScaleKey( spep_0-3 + 92, 1, 4.58, 4.58 );
setScaleKey( spep_0-1 + 94, 1, 4.54, 4.54 );

setRotateKey( spep_0 + 0, 1, -0.4 );
setRotateKey( spep_0 + 1, 1, -0.4 );
setRotateKey( spep_0 + 2, 1, -0.4 );
setRotateKey( spep_0 + 3, 1, -0.4 );
setRotateKey( spep_0 + 4, 1, -0.4 );
setRotateKey( spep_0 + 5, 1, -0.4 );
setRotateKey( spep_0 + 6, 1, -0.4 );
setRotateKey( spep_0-3 + 22, 1, -0.4 );
setRotateKey( spep_0-3 + 24, 1, -0.3 );
setRotateKey( spep_0-3 + 40, 1, -0.3 );
setRotateKey( spep_0-3 + 42, 1, -0.4 );
setRotateKey( spep_0-1 + 94, 1, -0.4 );
--SE
--入り
SE001 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
setPitch( spep_0 + 0, SE001, 300 );
setTimeStretch( SE001, 1.2, 10, 1 );
setBandpassFilter( spep_0 + 0, SE001, 800, 24000 );
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 8 );
SE003 = playSe( spep_0 + 20, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 540, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 108; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+84  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+84  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +96, 190006, 72, 0x102, -1, 0, 0, 510, 9600);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +96,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +168,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +96, ctgogo, 0 );
setEffAlphaKey( spep_0 + 97, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 255 );
setEffAlphaKey( spep_0 + 162, ctgogo, 255 );
setEffAlphaKey( spep_0 + 164, ctgogo, 191 );
setEffAlphaKey( spep_0 + 166, ctgogo, 196 );
setEffAlphaKey( spep_0 + 168, ctgogo, 64 );

setEffRotateKey(  spep_0 +96,  ctgogo,  0);
setEffRotateKey(  spep_0 +168,  ctgogo,  0);

setEffScaleKey(  spep_0 +96,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +158,  ctgogo, -0.7,  0.7);
setEffScaleKey(  spep_0 +168,  ctgogo, -1.07, 1.07);

-- ** エフェクト等 ** --
ctdoga = entryEffect( spep_0 + 0, 156235, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, ctdoga, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, ctdoga, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ctdoga, -1.0, 1.0 );
setEffScaleKey( spep_0 + 540, ctdoga, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ctdoga, 0 );
setEffRotateKey( spep_0 + 540, ctdoga, 0 );
setEffAlphaKey( spep_0 + 0, ctdoga, 255 );
setEffAlphaKey( spep_0 + 540, ctdoga, 255 );

--敵の動き
setDisp( spep_0-3 + 206, 1, 1);
setDisp( spep_0-1 + 228, 1, 0);

changeAnime( spep_0-3 + 206, 1, 101);
changeAnime( spep_0-3 + 218, 1, 106);

setMoveKey( spep_0-3 + 206, 1, 155.4, -123.6 , 0 );
setMoveKey( spep_0-3 + 217, 1, 155.4, -123.6 , 0 );

setMoveKey( spep_0-3 + 218, 1, 8.3, -188.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, 46.9, -160.4 , 0 );
setMoveKey( spep_0-3 + 222, 1, 53.5, -168.5 , 0 );
setMoveKey( spep_0-3 + 224, 1, 100.2, -160.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, 459.3, -144.8 , 0 );
setMoveKey( spep_0-1 + 228, 1, 850.5, -169 , 0 );

setScaleKey( spep_0-3 + 206, 1, 5.07, 5.07 );
setScaleKey( spep_0-3 + 217, 1, 5.07, 5.07 );

setScaleKey( spep_0-3 + 218, 1, 5.07, 5.07 );
setScaleKey( spep_0-3 + 220, 1, 5.02, 5.02 );
setScaleKey( spep_0-3 + 222, 1, 4.96, 4.96 );
setScaleKey( spep_0-3 + 224, 1, 4.91, 4.91 );
setScaleKey( spep_0-3 + 226, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 228, 1, 5.53, 5.53 );

setRotateKey( spep_0-3 + 206, 1, 0 );
setRotateKey( spep_0-3 + 217, 1, 0 );

setRotateKey( spep_0-3 + 218, 1, -38.7 );
setRotateKey( spep_0-3 + 220, 1, -36.4 );
setRotateKey( spep_0-3 + 222, 1, -34.1 );
setRotateKey( spep_0-3 + 224, 1, -31.9 );
setRotateKey( spep_0-3 + 226, 1, -5.5 );
setRotateKey( spep_0-3 + 228, 1, 20.9 );

--敵の動き
setDisp( spep_0-3 + 260, 1, 1);
setDisp( spep_0-1 + 462, 1, 0);

changeAnime( spep_0-3 + 260, 1, 105);
changeAnime( spep_0-3 + 294, 1, 108);
changeAnime( spep_0-3 + 298, 1, 106);
changeAnime( spep_0-3 + 360, 1, 108);
changeAnime( spep_0-3 + 452, 1, 106);

setMoveKey( spep_0-3 + 260, 1, -1.5, 4.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, -2.9, -1.2 , 0 );
setMoveKey( spep_0-3 + 264, 1, 0.4, -2.6 , 0 );
setMoveKey( spep_0-3 + 266, 1, 8.3, 0.3 , 0 );
setMoveKey( spep_0-3 + 268, 1, 7.2, 0.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, 6.2, 0.2 , 0 );
setMoveKey( spep_0-3 + 272, 1, 5.3, 0.2 , 0 );
setMoveKey( spep_0-3 + 274, 1, 4.5, 0.2 , 0 );
setMoveKey( spep_0-3 + 276, 1, 3.8, 0.2 , 0 );
setMoveKey( spep_0-3 + 278, 1, 3.2, 0.3 , 0 );
setMoveKey( spep_0-3 + 280, 1, 2.7, 0.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, 2.3, 0.3 , 0 );
setMoveKey( spep_0-3 + 284, 1, 2, 0.3 , 0 );
setMoveKey( spep_0-3 + 286, 1, 1.7, 0.4 , 0 );
setMoveKey( spep_0-3 + 288, 1, 1.5, 0.4 , 0 );
setMoveKey( spep_0-3 + 290, 1, 1.4, 0.4 , 0 );
setMoveKey( spep_0-3 + 292, 1, 1.4, 0.4 , 0 );
setMoveKey( spep_0-3 + 293, 1, 1.4, 0.4 , 0 );

setMoveKey( spep_0-3 + 294, 1, 0.6, 0.9 , 0 );
setMoveKey( spep_0-3 + 296, 1, 1.7, -1.1 , 0 );
setMoveKey( spep_0-3 + 297, 1, 1.7, -1.1 , 0 );

setMoveKey( spep_0-3 + 298, 1, -10.3, -2.2 , 0 );
setMoveKey( spep_0-3 + 300, 1, -6.3, 5 , 0 );
setMoveKey( spep_0-3 + 302, 1, -10.3, 8.3 , 0 );
setMoveKey( spep_0-3 + 304, 1, -6.3, 3.5 , 0 );
setMoveKey( spep_0-3 + 306, 1, -14.3, -0.8 , 0 );
setMoveKey( spep_0-3 + 308, 1, -6.3, 2.8 , 0 );
setMoveKey( spep_0-3 + 310, 1, -10.3, -1.5 , 0 );
setMoveKey( spep_0-3 + 312, 1, -6.3, 2.1 , 0 );
setMoveKey( spep_0-3 + 314, 1, -10.3, 9.8 , 0 );
setMoveKey( spep_0-3 + 316, 1, -6.3, 1.4 , 0 );
setMoveKey( spep_0-3 + 318, 1, -10.3, -2.9 , 0 );
setMoveKey( spep_0-3 + 320, 1, -6.2, 0.7 , 0 );
setMoveKey( spep_0-3 + 321, 1, -6.2, 0.7 , 0 );
setMoveKey( spep_0-3 + 322, 1, -46.1, -19 , 0 );
setMoveKey( spep_0-3 + 324, 1, -54, -21.7 , 0 );
setMoveKey( spep_0-3 + 326, 1, -62.9, -24.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, -72.5, -28 , 0 );
setMoveKey( spep_0-3 + 330, 1, -83, -31.7 , 0 );
setMoveKey( spep_0-3 + 332, 1, -94.4, -35.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, -106.5, -39.7 , 0 );
setMoveKey( spep_0-3 + 336, 1, -119.6, -44.2 , 0 );
setMoveKey( spep_0-3 + 338, 1, -133.4, -48.9 , 0 );
setMoveKey( spep_0-3 + 340, 1, -148.2, -54 , 0 );
setMoveKey( spep_0-3 + 342, 1, -163.7, -59.3 , 0 );
setMoveKey( spep_0-3 + 344, 1, -180.1, -64.9 , 0 );
setMoveKey( spep_0-3 + 346, 1, -197.4, -70.9 , 0 );
setMoveKey( spep_0-3 + 348, 1, -215.5, -77.1 , 0 );
setMoveKey( spep_0-3 + 350, 1, -234.4, -83.5 , 0 );
setMoveKey( spep_0-3 + 352, 1, -254.2, -90.3 , 0 );
setMoveKey( spep_0-3 + 354, 1, -274.8, -97.4 , 0 );
setMoveKey( spep_0-3 + 356, 1, -296.3, -104.7 , 0 );
setMoveKey( spep_0-3 + 358, 1, -318.7, -112.4 , 0 );
setMoveKey( spep_0-3 + 359, 1, -318.7, -112.4 , 0 );

setMoveKey( spep_0-3 + 360, 1, 28.3, -197.6 , 0 );
setMoveKey( spep_0-3 + 362, 1, 73.4, -157 , 0 );
setMoveKey( spep_0-3 + 364, 1, 98.5, -148.5 , 0 );
setMoveKey( spep_0-3 + 366, 1, 155.6, -132 , 0 );
setMoveKey( spep_0-3 + 368, 1, 153.6, -150.3 , 0 );
setMoveKey( spep_0-3 + 370, 1, 159.7, -128.7 , 0 );
setMoveKey( spep_0-3 + 372, 1, 145.7, -111 , 0 );
setMoveKey( spep_0-3 + 374, 1, 163.7, -125.4 , 0 );
setMoveKey( spep_0-3 + 376, 1, 161.7, -139.7 , 0 );
setMoveKey( spep_0-3 + 378, 1, 167.8, -122.1 , 0 );
setMoveKey( spep_0-3 + 380, 1, 153.8, -124.5 , 0 );
setMoveKey( spep_0-3 + 382, 1, 171.8, -118.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, 169.8, -141.2 , 0 );
setMoveKey( spep_0-3 + 386, 1, 175.9, -115.5 , 0 );
setMoveKey( spep_0-3 + 388, 1, 161.9, -121.9 , 0 );
setMoveKey( spep_0-3 + 390, 1, 179.9, -112.2 , 0 );
setMoveKey( spep_0-3 + 392, 1, 177.9, -114.6 , 0 );
setMoveKey( spep_0-3 + 394, 1, 184, -109 , 0 );
setMoveKey( spep_0-3 + 396, 1, 186, -107.3 , 0 );
setMoveKey( spep_0-3 + 398, 1, 188, -105.7 , 0 );
setMoveKey( spep_0-3 + 399, 1, 188, -105.7 , 0 );

b=30;

setMoveKey( spep_0-3 + 400, 1, 188.7, -505.1+b , 0 );
setMoveKey( spep_0-3 + 402, 1, 178.7, -509.7+b , 0 );
setMoveKey( spep_0-3 + 404, 1, 168.6, -514.3+b , 0 );
setMoveKey( spep_0-3 + 406, 1, 158.6, -518.9+b , 0 );
setMoveKey( spep_0-3 + 408, 1, 148.5, -523.5+b , 0 );
setMoveKey( spep_0-3 + 410, 1, 138.5, -528.1+b , 0 );
setMoveKey( spep_0-3 + 412, 1, 128.4, -532.7+b , 0 );
setMoveKey( spep_0-3 + 414, 1, 118.3, -537.4+b , 0 );
setMoveKey( spep_0-3 + 416, 1, 108.2, -542+b , 0 );
setMoveKey( spep_0-3 + 418, 1, 98.1, -546.6+b , 0 );
setMoveKey( spep_0-3 + 420, 1, 88, -551.3+b , 0 );
setMoveKey( spep_0-3 + 422, 1, 77.9, -555.9+b , 0 );
setMoveKey( spep_0-3 + 424, 1, 67.8, -560.6+b , 0 );
setMoveKey( spep_0-3 + 426, 1, 60.8, -559.3+b , 0 );
setMoveKey( spep_0-3 + 428, 1, 53.8, -558+b , 0 );
setMoveKey( spep_0-3 + 430, 1, 46.9, -556.8+b , 0 );
setMoveKey( spep_0-3 + 432, 1, 39.9, -555.6+b , 0 );
setMoveKey( spep_0-3 + 434, 1, 32.9, -554.5+b , 0 );
setMoveKey( spep_0-3 + 436, 1, 25.9, -553.4+b , 0 );
setMoveKey( spep_0-3 + 438, 1, 18.8, -552.3+b , 0 );
setMoveKey( spep_0-3 + 440, 1, 11.8, -551.2+b , 0 );
setMoveKey( spep_0-3 + 442, 1, 4.8, -550.2+b , 0 );
setMoveKey( spep_0-3 + 444, 1, -2.2, -549.2+b , 0 );
setMoveKey( spep_0-3 + 446, 1, -9.2, -548.2+b , 0 );
setMoveKey( spep_0-3 + 448, 1, -16.2, -547.3+b , 0 );
setMoveKey( spep_0-3 + 450, 1, -23.2, -546.4+b , 0 );
setMoveKey( spep_0-3 + 451, 1, -23.2, -546.4+b , 0 );

setMoveKey( spep_0-3 + 452, 1, 77.3, -590.1 , 0 );
setMoveKey( spep_0-3 + 454, 1, 58.4, -637.8 , 0 );
setMoveKey( spep_0-3 + 456, 1, 46.4, -793.4 , 0 );
setMoveKey( spep_0-3 + 458, 1, -17.5, -1035.6 , 0 );
setMoveKey( spep_0-3 + 460, 1, -77, -1105.7 , 0 );
setMoveKey( spep_0-1 + 462, 1, -128.5, -1143.8 , 0 );

setScaleKey( spep_0-3 + 260, 1, 31.34, 31.34 );
setScaleKey( spep_0-3 + 262, 1, 21.43, 21.43 );
setScaleKey( spep_0-3 + 264, 1, 11.51, 11.51 );
setScaleKey( spep_0-3 + 266, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 268, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 270, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 272, 1, 1.03, 1.03 );
setScaleKey( spep_0-3 + 274, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 276, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 278, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 280, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 282, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 284, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 286, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 288, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 290, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 292, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 293, 1, 0.22, 0.22 );

setScaleKey( spep_0-3 + 294, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 296, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 297, 1, 0.18, 0.18 );

setScaleKey( spep_0-3 + 298, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 300, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 302, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 304, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 318, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 320, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 321, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 322, 1, 4.63, 4.63 );
setScaleKey( spep_0-3 + 358, 1, 4.63, 4.63 );
setScaleKey( spep_0-3 + 359, 1, 4.63, 4.63 );

setScaleKey( spep_0-3 + 360, 1, 4.98, 4.98 );
setScaleKey( spep_0-3 + 399, 1, 4.98, 4.98 );

a=1;

setScaleKey( spep_0-3 + 400, 1, 7.88+a, 7.88+a );
setScaleKey( spep_0-3 + 402, 1, 7.91+a, 7.91+a );
setScaleKey( spep_0-3 + 404, 1, 7.94+a, 7.94+a );
setScaleKey( spep_0-3 + 406, 1, 7.97+a, 7.97+a );
setScaleKey( spep_0-3 + 408, 1, 8+a, 8+a );
setScaleKey( spep_0-3 + 410, 1, 8.03+a, 8.03+a );
setScaleKey( spep_0-3 + 412, 1, 8.06+a, 8.06+a );
setScaleKey( spep_0-3 + 414, 1, 8.09+a, 8.09+a );
setScaleKey( spep_0-3 + 416, 1, 8.12+a, 8.12+a );
setScaleKey( spep_0-3 + 418, 1, 8.15+a, 8.15+a );
setScaleKey( spep_0-3 + 420, 1, 8.18+a, 8.18+a );
setScaleKey( spep_0-3 + 422, 1, 8.21+a, 8.21+a );
setScaleKey( spep_0-3 + 424, 1, 8.24+a, 8.24+a );
setScaleKey( spep_0-3 + 426, 1, 8.21+a, 8.21+a );
setScaleKey( spep_0-3 + 428, 1, 8.19+a, 8.19+a );
setScaleKey( spep_0-3 + 430, 1, 8.16+a, 8.16+a );
setScaleKey( spep_0-3 + 432, 1, 8.14+a, 8.14+a );
setScaleKey( spep_0-3 + 434, 1, 8.12+a, 8.12+a );
setScaleKey( spep_0-3 + 436, 1, 8.09+a, 8.09+a );
setScaleKey( spep_0-3 + 438, 1, 8.07+a, 8.07+a );
setScaleKey( spep_0-3 + 440, 1, 8.05+a, 8.05+a );
setScaleKey( spep_0-3 + 442, 1, 8.02+a, 8.02+a );
setScaleKey( spep_0-3 + 444, 1, 8+a, 8+a );
setScaleKey( spep_0-3 + 446, 1, 7.97+a, 7.97+a );
setScaleKey( spep_0-3 + 448, 1, 7.95+a, 7.95+a );
setScaleKey( spep_0-3 + 450, 1, 7.93+a, 7.93+a );
setScaleKey( spep_0-3 + 451, 1, 7.93+a, 7.93+a );

setScaleKey( spep_0-3 + 452, 1, 8.55, 8.55 );
setScaleKey( spep_0-3 + 454, 1, 8.55, 8.55 );
setScaleKey( spep_0-3 + 456, 1, 8.62, 8.62 );
setScaleKey( spep_0-3 + 458, 1, 8.17, 8.17 );
setScaleKey( spep_0-3 + 460, 1, 7.71, 7.71 );
setScaleKey( spep_0-1 + 462, 1, 7.24, 7.24 );

setRotateKey( spep_0-3 + 260, 1, -1.8 );
setRotateKey( spep_0-3 + 262, 1, -2.2 );
setRotateKey( spep_0-3 + 264, 1, -2.6 );
setRotateKey( spep_0-3 + 266, 1, -2.9 );
setRotateKey( spep_0-3 + 268, 1, -0.6 );
setRotateKey( spep_0-3 + 270, 1, 1.5 );
setRotateKey( spep_0-3 + 272, 1, 3.5 );
setRotateKey( spep_0-3 + 274, 1, 5.2 );
setRotateKey( spep_0-3 + 276, 1, 6.8 );
setRotateKey( spep_0-3 + 278, 1, 8.2 );
setRotateKey( spep_0-3 + 280, 1, 9.4 );
setRotateKey( spep_0-3 + 282, 1, 10.4 );
setRotateKey( spep_0-3 + 284, 1, 11.2 );
setRotateKey( spep_0-3 + 286, 1, 11.9 );
setRotateKey( spep_0-3 + 288, 1, 12.4 );
setRotateKey( spep_0-3 + 290, 1, 12.6 );
setRotateKey( spep_0-3 + 292, 1, 12.7 );
setRotateKey( spep_0-3 + 293, 1, 12.7 );

setRotateKey( spep_0-3 + 294, 1, -2.3 );
setRotateKey( spep_0-3 + 296, 1, 8.3 );
setRotateKey( spep_0-3 + 297, 1, 8.3 );

setRotateKey( spep_0-3 + 298, 1, -48 );
setRotateKey( spep_0-3 + 300, 1, -47 );
setRotateKey( spep_0-3 + 302, 1, -45.9 );
setRotateKey( spep_0-3 + 304, 1, -44.9 );
setRotateKey( spep_0-3 + 306, 1, -44.8 );
setRotateKey( spep_0-3 + 308, 1, -44.6 );
setRotateKey( spep_0-3 + 310, 1, -44.5 );
setRotateKey( spep_0-3 + 312, 1, -44.3 );
setRotateKey( spep_0-3 + 314, 1, -44.2 );
setRotateKey( spep_0-3 + 316, 1, -44.1 );
setRotateKey( spep_0-3 + 318, 1, -43.9 );
setRotateKey( spep_0-3 + 320, 1, -43.8 );
setRotateKey( spep_0-3 + 322, 1, -41.3 );
setRotateKey( spep_0-3 + 324, 1, -42 );
setRotateKey( spep_0-3 + 326, 1, -42.8 );
setRotateKey( spep_0-3 + 328, 1, -43.7 );
setRotateKey( spep_0-3 + 330, 1, -44.6 );
setRotateKey( spep_0-3 + 332, 1, -45.6 );
setRotateKey( spep_0-3 + 334, 1, -46.7 );
setRotateKey( spep_0-3 + 336, 1, -47.8 );
setRotateKey( spep_0-3 + 338, 1, -49.1 );
setRotateKey( spep_0-3 + 340, 1, -50.4 );
setRotateKey( spep_0-3 + 342, 1, -51.8 );
setRotateKey( spep_0-3 + 344, 1, -53.2 );
setRotateKey( spep_0-3 + 346, 1, -54.7 );
setRotateKey( spep_0-3 + 348, 1, -56.4 );
setRotateKey( spep_0-3 + 350, 1, -58 );
setRotateKey( spep_0-3 + 352, 1, -59.8 );
setRotateKey( spep_0-3 + 354, 1, -61.6 );
setRotateKey( spep_0-3 + 356, 1, -63.5 );
setRotateKey( spep_0-3 + 358, 1, -65.5 );
setRotateKey( spep_0-3 + 298, 1, -48 );
setRotateKey( spep_0-3 + 300, 1, -47 );
setRotateKey( spep_0-3 + 302, 1, -45.9 );
setRotateKey( spep_0-3 + 304, 1, -44.9 );
setRotateKey( spep_0-3 + 306, 1, -44.8 );
setRotateKey( spep_0-3 + 308, 1, -44.6 );
setRotateKey( spep_0-3 + 310, 1, -44.5 );
setRotateKey( spep_0-3 + 312, 1, -44.3 );
setRotateKey( spep_0-3 + 314, 1, -44.2 );
setRotateKey( spep_0-3 + 316, 1, -44.1 );
setRotateKey( spep_0-3 + 318, 1, -43.9 );
setRotateKey( spep_0-3 + 320, 1, -43.8 );
setRotateKey( spep_0-3 + 322, 1, -41.3 );
setRotateKey( spep_0-3 + 324, 1, -42 );
setRotateKey( spep_0-3 + 326, 1, -42.8 );
setRotateKey( spep_0-3 + 328, 1, -43.7 );
setRotateKey( spep_0-3 + 330, 1, -44.6 );
setRotateKey( spep_0-3 + 332, 1, -45.6 );
setRotateKey( spep_0-3 + 334, 1, -46.7 );
setRotateKey( spep_0-3 + 336, 1, -47.8 );
setRotateKey( spep_0-3 + 338, 1, -49.1 );
setRotateKey( spep_0-3 + 340, 1, -50.4 );
setRotateKey( spep_0-3 + 342, 1, -51.8 );
setRotateKey( spep_0-3 + 344, 1, -53.2 );
setRotateKey( spep_0-3 + 346, 1, -54.7 );
setRotateKey( spep_0-3 + 348, 1, -56.4 );
setRotateKey( spep_0-3 + 350, 1, -58 );
setRotateKey( spep_0-3 + 352, 1, -59.8 );
setRotateKey( spep_0-3 + 354, 1, -61.6 );
setRotateKey( spep_0-3 + 356, 1, -63.5 );
setRotateKey( spep_0-3 + 358, 1, -65.5 );
setRotateKey( spep_0-3 + 359, 1, -65.5 );

setRotateKey( spep_0-3 + 360, 1, -3.3 );
setRotateKey( spep_0-3 + 362, 1, -2 );
setRotateKey( spep_0-3 + 364, 1, -0.6 );
setRotateKey( spep_0-3 + 366, 1, 0.8 );
setRotateKey( spep_0-3 + 368, 1, 0.8 );
setRotateKey( spep_0-3 + 370, 1, 0.9 );
setRotateKey( spep_0-3 + 372, 1, 0.9 );
setRotateKey( spep_0-3 + 374, 1, 1 );
setRotateKey( spep_0-3 + 376, 1, 1 );
setRotateKey( spep_0-3 + 378, 1, 1.1 );
setRotateKey( spep_0-3 + 380, 1, 1.2 );
setRotateKey( spep_0-3 + 382, 1, 1.2 );
setRotateKey( spep_0-3 + 384, 1, 1.3 );
setRotateKey( spep_0-3 + 386, 1, 1.3 );
setRotateKey( spep_0-3 + 388, 1, 1.4 );
setRotateKey( spep_0-3 + 390, 1, 1.4 );
setRotateKey( spep_0-3 + 392, 1, 1.5 );
setRotateKey( spep_0-3 + 394, 1, 1.6 );
setRotateKey( spep_0-3 + 396, 1, 1.6 );
setRotateKey( spep_0-3 + 398, 1, 1.7 );
setRotateKey( spep_0-3 + 399, 1, 1.7 );

setRotateKey( spep_0-3 + 400, 1, -21 );
setRotateKey( spep_0-3 + 402, 1, -21.7 );
setRotateKey( spep_0-3 + 404, 1, -22.3 );
setRotateKey( spep_0-3 + 406, 1, -23 );
setRotateKey( spep_0-3 + 408, 1, -23.6 );
setRotateKey( spep_0-3 + 410, 1, -24.3 );
setRotateKey( spep_0-3 + 412, 1, -24.9 );
setRotateKey( spep_0-3 + 414, 1, -25.6 );
setRotateKey( spep_0-3 + 416, 1, -26.2 );
setRotateKey( spep_0-3 + 418, 1, -26.9 );
setRotateKey( spep_0-3 + 420, 1, -27.5 );
setRotateKey( spep_0-3 + 422, 1, -28.2 );
setRotateKey( spep_0-3 + 424, 1, -28.8 );
setRotateKey( spep_0-3 + 426, 1, -29.9 );
setRotateKey( spep_0-3 + 428, 1, -31 );
setRotateKey( spep_0-3 + 430, 1, -32.1 );
setRotateKey( spep_0-3 + 432, 1, -33.1 );
setRotateKey( spep_0-3 + 434, 1, -34.2 );
setRotateKey( spep_0-3 + 436, 1, -35.3 );
setRotateKey( spep_0-3 + 438, 1, -36.4 );
setRotateKey( spep_0-3 + 440, 1, -37.5 );
setRotateKey( spep_0-3 + 442, 1, -38.5 );
setRotateKey( spep_0-3 + 444, 1, -39.6 );
setRotateKey( spep_0-3 + 446, 1, -40.7 );
setRotateKey( spep_0-3 + 448, 1, -41.8 );
setRotateKey( spep_0-3 + 450, 1, -42.9 );
setRotateKey( spep_0-3 + 451, 1, -42.9 );

setRotateKey( spep_0-3 + 452, 1, -121.5 );
setRotateKey( spep_0-3 + 454, 1, -121.3 );
setRotateKey( spep_0-3 + 456, 1, -121.4 );
setRotateKey( spep_0-3 + 458, 1, -121.3 );
setRotateKey( spep_0-3 + 460, 1, -121.4 );
setRotateKey( spep_0-1 + 462, 1, -121.5 );

--敵の動き
setDisp( spep_0-3 + 494, 1, 1);
setDisp( spep_0-1 + 538, 1, 0);

changeAnime( spep_0-3 + 494, 1, 105);

setMoveKey( spep_0-3 + 494, 1, -21, -54.6 , 0 );
setMoveKey( spep_0-3 + 496, 1, -30.3, -28.1 , 0 );
setMoveKey( spep_0-3 + 498, 1, -39.6, -1.7 , 0 );
setMoveKey( spep_0-3 + 500, 1, -48.9, 24.5 , 0 );
setMoveKey( spep_0-3 + 502, 1, -49.1, 24.6 , 0 );
setMoveKey( spep_0-3 + 504, 1, -49.2, 24.7 , 0 );
setMoveKey( spep_0-3 + 506, 1, -49.4, 24.7 , 0 );
setMoveKey( spep_0-3 + 508, 1, -49.6, 24.8 , 0 );
setMoveKey( spep_0-3 + 510, 1, -49.7, 24.9 , 0 );
setMoveKey( spep_0-3 + 512, 1, -49.9, 25 , 0 );
setMoveKey( spep_0-3 + 514, 1, -50.1, 25.1 , 0 );
setMoveKey( spep_0-3 + 516, 1, -50.2, 25.1 , 0 );
setMoveKey( spep_0-3 + 518, 1, -50.4, 25.2 , 0 );
setMoveKey( spep_0-3 + 520, 1, -50.6, 25.3 , 0 );
setMoveKey( spep_0-3 + 522, 1, -50.8, 25.4 , 0 );
setMoveKey( spep_0-3 + 524, 1, -51, 25.5 , 0 );
setMoveKey( spep_0-3 + 526, 1, -51.1, 25.6 , 0 );
setMoveKey( spep_0-3 + 528, 1, -51.3, 25.7 , 0 );
setMoveKey( spep_0-3 + 530, 1, -51.5, 25.7 , 0 );
setMoveKey( spep_0-3 + 532, 1, -51.7, 25.8 , 0 );
setMoveKey( spep_0-3 + 534, 1, -51.9, 25.9 , 0 );
setMoveKey( spep_0-3 + 536, 1, -52.1, 26 , 0 );
setMoveKey( spep_0-1 + 538, 1, -52.2, 26.1 , 0 );

setScaleKey( spep_0-3 + 494, 1, 8.78, 8.78 );
setScaleKey( spep_0-3 + 496, 1, 6.11, 6.11 );
setScaleKey( spep_0-3 + 498, 1, 3.44, 3.44 );
setScaleKey( spep_0-3 + 500, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 502, 1, 0.73, 0.73 );
setScaleKey( spep_0-3 + 504, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 506, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 508, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 510, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 512, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 514, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 516, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 518, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 520, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 522, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 524, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 526, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 528, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 530, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 532, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 534, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 536, 1, 0.16, 0.16 );
setScaleKey( spep_0-1 + 538, 1, 0.13, 0.13 );

setRotateKey( spep_0-3 + 494, 1, 109.9 );
setRotateKey( spep_0-3 + 496, 1, 112.6 );
setRotateKey( spep_0-3 + 498, 1, 115.3 );
setRotateKey( spep_0-3 + 500, 1, 118.1 );
setRotateKey( spep_0-3 + 502, 1, 118.8 );
setRotateKey( spep_0-3 + 504, 1, 119.6 );
setRotateKey( spep_0-3 + 506, 1, 120.4 );
setRotateKey( spep_0-3 + 508, 1, 121.1 );
setRotateKey( spep_0-3 + 510, 1, 121.9 );
setRotateKey( spep_0-3 + 512, 1, 122.7 );
setRotateKey( spep_0-3 + 514, 1, 123.4 );
setRotateKey( spep_0-3 + 516, 1, 124.2 );
setRotateKey( spep_0-3 + 518, 1, 125 );
setRotateKey( spep_0-3 + 520, 1, 125.7 );
setRotateKey( spep_0-3 + 522, 1, 126.5 );
setRotateKey( spep_0-3 + 524, 1, 127.3 );
setRotateKey( spep_0-3 + 526, 1, 128.1 );
setRotateKey( spep_0-3 + 528, 1, 128.8 );
setRotateKey( spep_0-3 + 530, 1, 129.6 );
setRotateKey( spep_0-3 + 532, 1, 130.4 );
setRotateKey( spep_0-3 + 534, 1, 131.1 );
setRotateKey( spep_0-3 + 536, 1, 131.9 );
setRotateKey( spep_0-1 + 538, 1, 132.7 );

--文字エントリー
ctbago = entryEffectLife( spep_0-3 + 218,  10021, 34, 0x100, -1, 0, -99.4, 340 );--バゴォッ
setEffShake( spep_0-3 + 218, ctbago, 34, 10 );
setEffMoveKey( spep_0-3 + 218, ctbago, -99.4, 340 , 0 );
setEffMoveKey( spep_0-3 + 220, ctbago, -99.5, 339.1 , 0 );
setEffMoveKey( spep_0-3 + 222, ctbago, -127.9, 354.6 , 0 );
setEffMoveKey( spep_0-3 + 224, ctbago, -99.4, 340 , 0 );
setEffMoveKey( spep_0-3 + 226, ctbago, -123.5, 352.7 , 0 );
setEffMoveKey( spep_0-3 + 228, ctbago, -99.4, 340 , 0 );
setEffMoveKey( spep_0-3 + 230, ctbago, -122.9, 352.5 , 0 );
setEffMoveKey( spep_0-3 + 232, ctbago, -99.4, 340.1 , 0 );
setEffMoveKey( spep_0-3 + 234, ctbago, -122.4, 352.2 , 0 );
setEffMoveKey( spep_0-3 + 236, ctbago, -99.3, 340.1 , 0 );
setEffMoveKey( spep_0-3 + 238, ctbago, -121.8, 352 , 0 );
setEffMoveKey( spep_0-3 + 240, ctbago, -99.3, 340.2 , 0 );
setEffMoveKey( spep_0-3 + 242, ctbago, -121.3, 351.8 , 0 );
setEffMoveKey( spep_0-3 + 244, ctbago, -99.3, 340.3 , 0 );
setEffMoveKey( spep_0-3 + 246, ctbago, -120.9, 351.6 , 0 );
setEffMoveKey( spep_0-3 + 248, ctbago, -99.4, 340.2 , 0 );
setEffMoveKey( spep_0-3 + 250, ctbago, -120.6, 351.4 , 0 );
setEffMoveKey( spep_0-3 + 252, ctbago, -120.5, 351.3 , 0 );

setEffScaleKey( spep_0-3 + 218, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_0-3 + 220, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_0-3 + 222, ctbago, 3.74, 3.74 );
setEffScaleKey( spep_0-3 + 224, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 226, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 228, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 230, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 232, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_0-3 + 234, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 236, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 238, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 240, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 242, ctbago, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 244, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 246, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 248, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 250, ctbago, 2.8, 2.8 );
setEffScaleKey( spep_0-3 + 252, ctbago, 2.78, 2.78 );

setEffRotateKey( spep_0-3 + 218, ctbago, -26.7 );
setEffRotateKey( spep_0-3 + 252, ctbago, -26.7 );

setEffAlphaKey( spep_0-3 + 218, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 244, ctbago, 255 );
setEffAlphaKey( spep_0-3 + 246, ctbago, 191 );
setEffAlphaKey( spep_0-3 + 248, ctbago, 128 );
setEffAlphaKey( spep_0-3 + 250, ctbago, 64 );
setEffAlphaKey( spep_0-3 + 252, ctbago, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 362,  10016, 30, 0x100, -1, 0, -165.7, 377.1 );--ズンッ
setEffShake( spep_0-3 + 362, ctzun, 30, 10 );
setEffMoveKey( spep_0-3 + 362, ctzun, -165.7, 377.1 , 0 );
setEffMoveKey( spep_0-3 + 364, ctzun, -165.4, 377 , 0 );
setEffMoveKey( spep_0-3 + 366, ctzun, -176.7, 379.7 , 0 );
setEffMoveKey( spep_0-3 + 368, ctzun, -164.7, 376.8 , 0 );
setEffMoveKey( spep_0-3 + 370, ctzun, -174.7, 379.4 , 0 );
setEffMoveKey( spep_0-3 + 372, ctzun, -173.6, 379.3 , 0 );
setEffMoveKey( spep_0-3 + 374, ctzun, -164.4, 377 , 0 );
setEffMoveKey( spep_0-3 + 376, ctzun, -174, 379.2 , 0 );
setEffMoveKey( spep_0-3 + 378, ctzun, -164.6, 376.9 , 0 );
setEffMoveKey( spep_0-3 + 380, ctzun, -174.4, 379.1 , 0 );
setEffMoveKey( spep_0-3 + 382, ctzun, -164.9, 376.7 , 0 );
setEffMoveKey( spep_0-3 + 384, ctzun, -174.8, 379 , 0 );
setEffMoveKey( spep_0-3 + 386, ctzun, -165, 376.7 , 0 );
setEffMoveKey( spep_0-3 + 388, ctzun, -173.6, 378.7 , 0 );
setEffMoveKey( spep_0-3 + 390, ctzun, -165.1, 376.7 , 0 );
setEffMoveKey( spep_0-3 + 392, ctzun, -165.1, 376.7 , 0 );

setEffScaleKey( spep_0-3 + 362, ctzun, 1.43, 1.43 );
setEffScaleKey( spep_0-3 + 364, ctzun, 4.17, 4.17 );
setEffScaleKey( spep_0-3 + 366, ctzun, 4.01, 4.01 );
setEffScaleKey( spep_0-3 + 368, ctzun, 3.85, 3.85 );
setEffScaleKey( spep_0-3 + 370, ctzun, 3.54, 3.54 );
setEffScaleKey( spep_0-3 + 372, ctzun, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 374, ctzun, 3.25, 3.25 );
setEffScaleKey( spep_0-3 + 376, ctzun, 3.28, 3.28 );
setEffScaleKey( spep_0-3 + 378, ctzun, 3.3, 3.3 );
setEffScaleKey( spep_0-3 + 380, ctzun, 3.33, 3.33 );
setEffScaleKey( spep_0-3 + 382, ctzun, 3.36, 3.36 );
setEffScaleKey( spep_0-3 + 384, ctzun, 3.39, 3.39 );
setEffScaleKey( spep_0-3 + 386, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 388, ctzun, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 390, ctzun, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 392, ctzun, 2.53, 2.53 );

setEffRotateKey( spep_0-3 + 362, ctzun, -28.8 );
setEffRotateKey( spep_0-3 + 372, ctzun, -28.8 );
setEffRotateKey( spep_0-3 + 374, ctzun, -28.9 );
setEffRotateKey( spep_0-3 + 380, ctzun, -28.9 );
setEffRotateKey( spep_0-3 + 382, ctzun, -29 );
setEffRotateKey( spep_0-3 + 392, ctzun, -29 );

setEffAlphaKey( spep_0-3 + 362, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 384, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 386, ctzun, 191 );
setEffAlphaKey( spep_0-3 + 388, ctzun, 128 );
setEffAlphaKey( spep_0-3 + 390, ctzun, 64 );
setEffAlphaKey( spep_0-3 + 392, ctzun, 0 );

--SE
--入り
stopSe( spep_0 + 144, SE001, 68 );
stopSe( spep_0 + 144, SE002, 68 );
--顔カットイン
SE004 = playSe( spep_0 + 96, 1018 );

--そして木へ
SE005 = playSe( spep_0 + 304, 1168 );
setSeVolumeByWorkId( spep_0 + 304, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 305, SE005, 17 );
setSeVolumeByWorkId( spep_0 + 306, SE005, 34 );
setSeVolumeByWorkId( spep_0 + 307, SE005, 51 );
setSeVolumeByWorkId( spep_0 + 308, SE005, 68 );
setStartTimeMs( SE005,  2167 );
SE011 = playSe( spep_0 + 298, 1025 );
setSeVolumeByWorkId( spep_0 + 298, SE011, 56 );
SE012 = playSe( spep_0 + 298, 1023 );
setSeVolumeByWorkId( spep_0 + 298, SE012, 35 );

--瞬間移動
SE006 = playSe( spep_0 + 178, 1109 );

--パンチ
SE007 = playSe( spep_0 + 214, 1003 );
SE008 = playSe( spep_0 + 218, 1110 );
SE009 = playSe( spep_0 + 218, 1120 );

--敵飛んでいく
SE010 = playSe( spep_0 + 260, 1183 );
stopSe( spep_0 + 300, SE010, 8 );

--膝蹴り
SE013 = playSe( spep_0 + 354, 1004 );
SE014 = playSe( spep_0 + 358, 1110 );
setSeVolumeByWorkId( spep_0 + 358, SE014, 68 );
SE015 = playSe( spep_0 + 358, 1187 );
setSeVolumeByWorkId( spep_0 + 358, SE015, 77 );
stopSe( spep_0 + 366, SE015, 32 );
SE016 = playSe( spep_0 + 360, 1010 );
SE017 = playSe( spep_0 + 362, 1190 );
setSeVolumeByWorkId( spep_0 + 362, SE017, 112 );

--敵落ちていく
SE018 = playSe( spep_0 + 490, 1121 );
setSeVolumeByWorkId( spep_0 + 490, SE018, 0 );
setSeVolumeByWorkId( spep_0 + 491, SE018, 16.6 );
setSeVolumeByWorkId( spep_0 + 492, SE018, 33.2 );
setSeVolumeByWorkId( spep_0 + 493, SE018, 49.8 );
setSeVolumeByWorkId( spep_0 + 494, SE018, 66.4 );
setSeVolumeByWorkId( spep_0 + 495, SE018, 83 );
setSeVolumeByWorkId( spep_0 + 496, SE018, 100 );
setStartTimeMs( SE018,  2083 );

--敵叩き落とす
SE019 = playSe( spep_0 + 450, 1003 );
SE020 = playSe( spep_0 + 454, 1123 );
SE021 = playSe( spep_0 + 454, 1110 );
SE022 = playSe( spep_0 + 492, 1183 );

entryFade( spep_0 + 536, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+540;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 86, 0x80, -1, 0, 0, 0 );   -- カード
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

--敵叩き落とす
stopSe( spep_1 + 2, SE022, 0 );

--敵落ちていく
stopSe( spep_1 + 2, SE018, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 発射〜ラストまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

-- ** エフェクト等 ** --
ctvo = entryEffect( spep_2 + 0, 156236, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, ctvo, 0, 0, 0 );
setEffMoveKey( spep_2 + 540, ctvo, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ctvo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 540, ctvo, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ctvo, 0 );
setEffRotateKey( spep_2 + 540, ctvo, 0 );
setEffAlphaKey( spep_2 + 0, ctvo, 255 );
setEffAlphaKey( spep_2 + 540, ctvo, 255 );

--敵の動き
setDisp( spep_2-3 + 116, 1, 1);
setDisp( spep_2-1 + 538, 1, 0);

changeAnime( spep_2-3 + 116, 1, 6);
changeAnime( spep_2-3 + 150, 1, 8);

setMoveKey( spep_2-3 + 116, 1, 977, 1046.9 , 0 );
setMoveKey( spep_2-3 + 118, 1, 739.1, 796.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 501.1, 545.9 , 0 );
setMoveKey( spep_2-3 + 122, 1, 263.1, 295.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 25.2, 44.9 , 0 );
setMoveKey( spep_2-3 + 126, 1, 19, 38.4 , 0 );
setMoveKey( spep_2-3 + 128, 1, 12.8, 31.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 6.6, 25.4 , 0 );
setMoveKey( spep_2-3 + 132, 1, 0.5, 18.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, -5.7, 12.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, -11.9, 5.9 , 0 );
setMoveKey( spep_2-3 + 138, 1, -18.1, -0.6 , 0 );
setMoveKey( spep_2-3 + 140, 1, -24.3, -7.1 , 0 );
setMoveKey( spep_2-3 + 142, 1, -30.4, -13.6 , 0 );
setMoveKey( spep_2-3 + 144, 1, -36.6, -20.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, -42.8, -26.7 , 0 );
setMoveKey( spep_2-3 + 148, 1, -49, -33.2 , 0 );
setMoveKey( spep_2-3 + 149, 1, -49, -33.2 , 0 );

setMoveKey( spep_2-3 + 150, 1, -88.1, -52.2 , 0 );
setMoveKey( spep_2-3 + 152, 1, -215.2, -183.4 , 0 );
setMoveKey( spep_2-3 + 154, 1, -342.4, -314.7 , 0 );
setMoveKey( spep_2-3 + 156, 1, -469.6, -445.9 , 0 );
setMoveKey( spep_2-3 + 158, 1, -596.8, -577.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, -724, -708.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, -851.2, -839.5 , 0 );

setScaleKey( spep_2-3 + 116, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 162, 1, 1.66, 1.66 );

setRotateKey( spep_2-3 + 116, 1, -2.9 );
setRotateKey( spep_2-3 + 118, 1, -5.9 );
setRotateKey( spep_2-3 + 120, 1, -8.8 );
setRotateKey( spep_2-3 + 122, 1, -11.7 );
setRotateKey( spep_2-3 + 124, 1, -14.6 );
setRotateKey( spep_2-3 + 126, 1, -14.7 );
setRotateKey( spep_2-3 + 128, 1, -14.7 );
setRotateKey( spep_2-3 + 130, 1, -14.8 );
setRotateKey( spep_2-3 + 132, 1, -14.9 );
setRotateKey( spep_2-3 + 134, 1, -14.9 );
setRotateKey( spep_2-3 + 136, 1, -15 );
setRotateKey( spep_2-3 + 138, 1, -15.1 );
setRotateKey( spep_2-3 + 140, 1, -15.1 );
setRotateKey( spep_2-3 + 142, 1, -15.2 );
setRotateKey( spep_2-3 + 144, 1, -15.3 );
setRotateKey( spep_2-3 + 146, 1, -15.3 );
setRotateKey( spep_2-3 + 148, 1, -15.4 );
setRotateKey( spep_2-3 + 149, 1, -15.4 );

setRotateKey( spep_2-3 + 150, 1, -47.2 );
setRotateKey( spep_2-3 + 162, 1, -47.2 );

--SE
--腕振り上げ
SE024 = playSe( spep_2 + 8, 1004 );
setSeVolumeByWorkId( spep_2 + 8, SE024, 81 );
setPitch( spep_0 + 646, SE024, -400 );
setTimeStretch( SE024, 0.92, 10, 1 );

--気弾発射
SE025 = playSe( spep_2 + 58, 20 );
setSeVolumeByWorkId( spep_2 + 58, SE025, 60 );
SE026 = playSe( spep_2 + 58, 1109 );
setSeVolumeByWorkId( spep_2 + 58, SE026, 150 );
SE027 = playSe( spep_2 + 58, 1231 );
setSeVolumeByWorkId( spep_2 + 58, SE027, 123 );
SE028 = playSe( spep_2 + 58, 1022 );
setSeVolumeByWorkId( spep_2 + 58, SE028, 68 );
SE029 = playSe( spep_2 + 58, 1236 );
setSeVolumeByWorkId( spep_2 + 58, SE029, 71 );
SE030 = playSe( spep_2 + 58, 1177 );
setSeVolumeByWorkId( spep_2 + 58, SE030, 62 );

--気弾飛んでいく
SE031 = playSe( spep_2 + 174, 1193 );
setSeVolumeByWorkId( spep_2 + 174, SE031, 0 );
setSeVolumeByWorkId( spep_2 + 175, SE031, 7 );
setSeVolumeByWorkId( spep_2 + 176, SE031, 14 );
setSeVolumeByWorkId( spep_2 + 177, SE031, 21 );
setSeVolumeByWorkId( spep_2 + 178, SE031, 28 );
setSeVolumeByWorkId( spep_2 + 179, SE031, 35 );
setSeVolumeByWorkId( spep_2 + 180, SE031, 42 );
setSeVolumeByWorkId( spep_2 + 181, SE031, 49 );
setSeVolumeByWorkId( spep_2 + 182, SE031, 56 );
setStartTimeMs( SE031,  1550 );
stopSe( spep_2 + 232, SE031, 34 );

--敵覆いかぶさる
SE032 = playSe( spep_2 + 136, 1021 );

--気弾飛んでいく
SE033 = playSe( spep_2 + 178, 1179 );
setSeVolumeByWorkId( spep_2 + 178, SE033, 82 );
SE034 = playSe( spep_2 + 180, 1277 );
setSeVolumeByWorkId( spep_2 + 180, SE034, 79 );

--爆発
SE035 = playSe( spep_2+12 + 234, 1159 );
SE036 = playSe( spep_2+12 + 234, 1067 );
setSeVolumeByWorkId( spep_2+12 + 234, SE036, 72 );
SE037 = playSe( spep_2+12 + 252, 1188 );
setSeVolumeByWorkId( spep_2+12 + 252, SE037, 75 );
SE038 = playSe( spep_2+12 + 264, 1023 );
setSeVolumeByWorkId( spep_2+12 + 264, SE038, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 350, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +250 );
endPhase( spep_2 + 340 );
end