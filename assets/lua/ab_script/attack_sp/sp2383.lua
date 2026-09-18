--1024560:孫悟飯(青年期)_魔閃光_2383
--sp_effect_a1_00358

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
SP_01 = 159959; --溜め    ef_001
SP_02 = 159961; --発射    ef_002
SP_03 = 159963; --迫る　前面 ef_003
SP_04 = 159964; --迫る　背面 ef_004
SP_05 = 159965; --ガッ　前面 ef_005
SP_06 = 159966; --ガッ　背面 ef_006

--敵側
SP_01r = 159960;    --溜め　敵側 ef_001e
SP_02r = 159962;    --発射　敵側 ef_002e

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
-- 溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 146, 0, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 145, tame, 255 );
setEffAlphaKey( spep_0 + 146, tame, 0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 146, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 16,  906, 130, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 16, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchusen1, 1.6, 2.6 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.6, 2.6 );

setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 52, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 52, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 40, 0x100, -1, 0, 22, 251.9 );
setEffMoveKey( spep_0 -3 + 22, ctzuzun, 22, 251.9 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzun, 32.7, 321.1 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzun, 56.1, 400 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzun, 43.3, 383.1 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzun, 48.4, 377.4 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzun, 36, 359.9 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 -3 + 26, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 28, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzun, 0 );
setEffRotateKey( spep_0 -3 + 62, ctzuzun, 0 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 50, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 52, ctzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 54, ctzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzun, 0 );

ctgogo = entryEffectLife( spep_0 + 68,  190006, 68, 0x100, -1, 0, -8.5 +80, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 68, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 68, ctgogo, -9.9 +80, 521.8 , 0 );
setEffMoveKey( spep_0 + 136, ctgogo, -9.9 +80, 515.5 , 0 );

setEffScaleKey( spep_0 + 68, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 128, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 130, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 132, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 134, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 136, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 68, ctgogo, 0 );
setEffRotateKey( spep_0 + 136, ctgogo, 0 );

setEffAlphaKey( spep_0 + 68, ctgogo, 255 );
setEffAlphaKey( spep_0 + 136, ctgogo, 255 );

-- ** 音 ** --
--雨
SE001 = playSeVer2( spep_0 + 0, 1165, "",spep_0 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
setBandpassFilter  ( spep_0 + 0, SE001, 1650, 24000 );

--気ダメ
SE002 = playSeVer2( spep_0 + 14, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 71 );
SE003 = playSeVer2( spep_0 + 14, 1035, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 63 );
SE007 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 63 );
SE010 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE010, 63 );
SE011 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE011, 63 );
SE012 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE012, 63 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 56, 1296, "",spep_0 + 162, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 115 );

--顔カットイン
SE006 = playSeVer2( spep_0 + 60, 1018, "", 0, 0, 0, -1);


--気弾溜め
SE008 = playSeVer2( spep_0 + 60, 1282, "",spep_0 + 166, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 56 );
SE009 = playSeVer2( spep_0 + 70, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE009, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
--entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 16, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 134, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
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
-- 発射(86F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
hanatsu = entryEffectLife( spep_2 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --発射    ef_002
setEffMoveKey( spep_2 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatsu, 0 );
setEffRotateKey( spep_2 + 86, hanatsu, 0 );
setEffAlphaKey( spep_2 + 0, hanatsu, 255 );
setEffAlphaKey( spep_2 + 85, hanatsu, 255 );
setEffAlphaKey( spep_2 + 86, hanatsu, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 18, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 18, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 20,  10012, 50, 0x100, -1, 0, 9.6, 282.4 );
setEffMoveKey( spep_2 -3 + 20, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo, 32.9, 331.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo, 71.3, 376.4 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo, 64.6, 401.1 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo, 109.1, 374.6 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo, 92.7, 409 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2 -3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 60, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 62, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 -3 + 64, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 -3 + 66, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 -3 + 68, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 -3 + 70, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 20, ctzuo, 9.7 );
setEffRotateKey( spep_2 -3 + 22, ctzuo, 18.4 );
setEffRotateKey( spep_2 -3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_2 -3 + 70, ctzuo, 27.2 );

setEffAlphaKey( spep_2 -3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_2 -3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_2 -3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_2 -3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_2 -3 + 70, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE014, 68 );
SE015 = playSeVer2( spep_2 + 10, 1146, "", 0, 0, 0, 0.6);
SE016 = playSeVer2( spep_2 + 10, 1022, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

------------------------------------------------------
-- 迫る(98F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
tyakudanf = entryEffectLife( spep_3 + 0, SP_03, 98, 0x100, -1, 0, 0, 0 );  --迫る　前面 ef_003
setEffMoveKey( spep_3 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanf, 0 );
setEffRotateKey( spep_3 + 98, tyakudanf, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 97, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 98, tyakudanf, 0 );

tyakudanb = entryEffectLife( spep_3 + 0, SP_04, 98, 0x80, -1, 0, 0, 0 );  --迫る　背面 ef_004
setEffMoveKey( spep_3 + 0, tyakudanb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, tyakudanb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tyakudanb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanb, 0 );
setEffRotateKey( spep_3 + 98, tyakudanb, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 97, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 98, tyakudanb, 0 );

-- ** 書き文字エントリー ** --
ctzuo01 = entryEffectLife( spep_3 -3 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313.1 );
setEffMoveKey( spep_3 -3 + 30, ctzuo01, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo01, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo01, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo01, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo01, -92.7, 407.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo01, -75.8, 406.1 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo01, -104, 407.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo01, -87.1, 406.5 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo01, -119, 421 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo01, -82.7, 426.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo01, -79.7, 432.9 , 0 );

setEffScaleKey( spep_3 -3 + 30, ctzuo01, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 32, ctzuo01, 1.54, 1.54 );
setEffScaleKey( spep_3 -3 + 34, ctzuo01, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 44, ctzuo01, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 46, ctzuo01, 4.09, 4.09 );
setEffScaleKey( spep_3 -3 + 48, ctzuo01, 5.46, 5.46 );
setEffScaleKey( spep_3 -3 + 50, ctzuo01, 6.82, 6.82 );

setEffRotateKey( spep_3 -3 + 30, ctzuo01, 6.9 );
setEffRotateKey( spep_3 -3 + 32, ctzuo01, -3.3 );
setEffRotateKey( spep_3 -3 + 34, ctzuo01, -13.5 );
setEffRotateKey( spep_3 -3 + 36, ctzuo01, -13.8 );
setEffRotateKey( spep_3 -3 + 38, ctzuo01, -14.1 );
setEffRotateKey( spep_3 -3 + 40, ctzuo01, -14.4 );
setEffRotateKey( spep_3 -3 + 42, ctzuo01, -14.7 );
setEffRotateKey( spep_3 -3 + 44, ctzuo01, -15 );
setEffRotateKey( spep_3 -3 + 46, ctzuo01, -11.7 );
setEffRotateKey( spep_3 -3 + 48, ctzuo01, -8.5 );
setEffRotateKey( spep_3 -3 + 50, ctzuo01, -5.2 );

setEffAlphaKey( spep_3 -3 + 30, ctzuo01, 255 );
setEffAlphaKey( spep_3 -3 + 44, ctzuo01, 255 );
setEffAlphaKey( spep_3 -3 + 46, ctzuo01, 170 );
setEffAlphaKey( spep_3 -3 + 48, ctzuo01, 85 );
setEffAlphaKey( spep_3 -3 + 50, ctzuo01, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, -24.9, -98.4 , 0 );
setMoveKey( spep_3 + 1, 1, -18.7, -89.1 , 0 );
setMoveKey( spep_3 + 2, 1, -12.5, -79.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -6.3, -70.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -0.2, -61.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 6, -51.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 12.2, -42.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 18.4, -33.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 24.6, -24.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 30.8, -14.9 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3 + 1, 1, 2.93, 2.93 );
setScaleKey( spep_3 + 2, 1, 2.86, 2.86 );
setScaleKey( spep_3 -3 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_3 -3 + 8, 1, 2.71, 2.71 );
setScaleKey( spep_3 -3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 12, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 14, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 16, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 18, 1, 2.36, 2.36 );

setRotateKey( spep_3 + 0, 1, 0 );

setAlphaKey( spep_3 + 0, 1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 30.8, -14.9 , 0 );
setMoveKey( SP_dodge + 2, 1, 37, -5.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 43.2, 3.7 , 0 );
setMoveKey( SP_dodge + 6, 1, 49.4, 12.9 , 0 );
setMoveKey( SP_dodge + 8, 1, 55.5, 22.2 , 0 );
setMoveKey( SP_dodge + 10, 1, 61.7, 31.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.36, 2.36 );
setScaleKey( SP_dodge + 2, 1, 2.29, 2.29 );
setScaleKey( SP_dodge + 4, 1, 2.21, 2.21 );
setScaleKey( SP_dodge + 6, 1, 2.14, 2.14 );
setScaleKey( SP_dodge + 8, 1, 2.07, 2.07 );
setScaleKey( SP_dodge + 10, 1, 2, 2 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

setAlphaKey( SP_dodge + 0, 1, 255 );
setAlphaKey( SP_dodge + 10, 1, 255 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 48, 1, 0 );
changeAnime( spep_3 -3 + 30, 1, 108 );

setMoveKey( spep_3 -3 + 20, 1, 37, -5.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 43.2, 3.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 49.4, 12.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 55.5, 22.2 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 61.7, 31.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 97.1, 107.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 110.3, 99.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 112.1, 114.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 111.9, 112.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 119.3, 123.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 120, 130.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 122.5, 139.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 125, 147.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 127.6, 156.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 130.1, 165.1 , 0 );

setScaleKey( spep_3 -3 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 22, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 24, 1, 2.14, 2.14 );
setScaleKey( spep_3 -3 + 26, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 29, 1, 2, 2 );
setScaleKey( spep_3 -3 + 30, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 32, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 36, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 38, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 44, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 46, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 48, 1, 0.2, 0.2 );

setRotateKey( spep_3 -3 + 48, 1, 0 );

setAlphaKey( spep_3 -3 + 39, 1, 255 );
setAlphaKey( spep_3 -3 + 40, 1, 204 );
setAlphaKey( spep_3 -3 + 42, 1, 153 );
setAlphaKey( spep_3 -3 + 44, 1, 102 );
setAlphaKey( spep_3 -3 + 46, 1, 51 );
setAlphaKey( spep_3 -3 + 48, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE017 = playSeVer2( spep_3 + 24, 1145, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE017, 63 );
setStartTimeMs( SE017,  283 );
setPitch( spep_3 + 24, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );
SE018 = playSeVer2( spep_3 + 22, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE018, 108 );

--爆発
SE019 = playSeVer2( spep_3 + 88, 1023, "", 0, 0, 0, -1);

-- ** ホワイトフェード ** --
entryFade( spep_3 + 26, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 86, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

------------------------------------------------------
-- ガッ(100F)
------------------------------------------------------

-- ** 背景 ** --
haikei = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ガッ　背面 ef_006
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, haikei, 1, 1 );
setEffScaleKey( spep_4 + 100, haikei, 1, 1 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 100, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 100, haikei, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  SP_05, 0x100, -1, 0, 0, 0 );  --ガッ　前面 ef_005
setEffMoveKey( spep_4 + 2, hibiware, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 0, 0, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 103, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4    + 0, 1, -36.2, 265.9 , 0 );
setMoveKey( spep_4    + 1, 1, -32.5, 228 , 0 );
setMoveKey( spep_4    + 2, 1, -27.7, 179.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -21.9, 119.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -15, 49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -7.1, -32 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 1.9, -124.1 , 0 );
setMoveKey( spep_4 -3 + 103, 1, 1.9, -124.1 , 0 );

setScaleKey( spep_4    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_4    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4    + 1, 1, -105 );
setRotateKey( spep_4    + 2, 1, -240 );
setRotateKey( spep_4 -3 + 6, 1, -405 );
setRotateKey( spep_4 -3 + 8, 1, -600 );
setRotateKey( spep_4 -3 + 10, 1, -825 );
setRotateKey( spep_4 -3 + 12, 1, -1080 );
setRotateKey( spep_4 -3 + 103, 1, -1080 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 103, 1, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
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

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE020 = playSeVer2( spep_4 + 8, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 8, 1054, "", 0, 0, 0, -1);

--雨
SE022 = playSeVer2( spep_4 + 10, 1165, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE022, 71 );
setBandpassFilter  ( spep_4 + 10, SE022, 1650, 24000 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01r, 146, 0, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 145, tame, 255 );
setEffAlphaKey( spep_0 + 146, tame, 0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 146, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 16,  906, 130, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 16, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchusen1, 1.6, 2.6 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.6, 2.6 );

setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_0 + 52, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 52, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 40, 0x100, -1, 0, 22, 251.9 );
setEffMoveKey( spep_0 -3 + 22, ctzuzun, 22, 251.9 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzun, 32.7, 321.1 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzun, 56.1, 400 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzun, 43.3, 383.1 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzun, 48.4, 377.4 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzun, 36, 359.9 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 -3 + 26, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 28, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzun, 0 );
setEffRotateKey( spep_0 -3 + 62, ctzuzun, 0 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 50, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 52, ctzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 54, ctzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzun, 0 );

ctgogo = entryEffectLife( spep_0 + 68,  190006, 68, 0x100, -1, 0, -8.5 +80, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 68, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 68, ctgogo, -9.9 +80, 521.8 , 0 );
setEffMoveKey( spep_0 + 136, ctgogo, -9.9 +80, 515.5 , 0 );

setEffScaleKey( spep_0 + 68, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 128, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 130, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 132, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 134, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 136, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 68, ctgogo, 0 );
setEffRotateKey( spep_0 + 136, ctgogo, 0 );

setEffAlphaKey( spep_0 + 68, ctgogo, 255 );
setEffAlphaKey( spep_0 + 136, ctgogo, 255 );

-- ** 音 ** --
--雨
SE001 = playSeVer2( spep_0 + 0, 1165, "",spep_0 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
setBandpassFilter  ( spep_0 + 0, SE001, 1650, 24000 );

--気ダメ
SE002 = playSeVer2( spep_0 + 14, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 71 );
SE003 = playSeVer2( spep_0 + 14, 1035, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 63 );
SE007 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 63 );
SE010 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE010, 63 );
SE011 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE011, 63 );
SE012 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE012, 63 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 56, 1296, "",spep_0 + 162, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 115 );

--顔カットイン
SE006 = playSeVer2( spep_0 + 60, 1018, "", 0, 0, 0, -1);


--気弾溜め
SE008 = playSeVer2( spep_0 + 60, 1282, "",spep_0 + 166, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 56 );
SE009 = playSeVer2( spep_0 + 70, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE009, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
--entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 16, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 134, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
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
-- 発射(86F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
hanatsu = entryEffectLife( spep_2 + 0, SP_02r, 86, 0x100, -1, 0, 0, 0 );  --発射    ef_002
setEffMoveKey( spep_2 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatsu, 0 );
setEffRotateKey( spep_2 + 86, hanatsu, 0 );
setEffAlphaKey( spep_2 + 0, hanatsu, 255 );
setEffAlphaKey( spep_2 + 85, hanatsu, 255 );
setEffAlphaKey( spep_2 + 86, hanatsu, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 18, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 18, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 20,  10012, 50, 0x100, -1, 0, 9.6, 282.4 );
setEffMoveKey( spep_2 -3 + 20, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzuo, 32.9, 331.8 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo, 71.3, 376.4 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo, 64.6, 401.1 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo, 109.1, 374.6 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo, 92.7, 409 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2 -3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 60, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 62, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 -3 + 64, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 -3 + 66, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 -3 + 68, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 -3 + 70, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 20, ctzuo, 9.7 );
setEffRotateKey( spep_2 -3 + 22, ctzuo, 18.4 );
setEffRotateKey( spep_2 -3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_2 -3 + 70, ctzuo, 27.2 );

setEffAlphaKey( spep_2 -3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_2 -3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_2 -3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_2 -3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_2 -3 + 70, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE014, 68 );
SE015 = playSeVer2( spep_2 + 10, 1146, "", 0, 0, 0, 0.6);
SE016 = playSeVer2( spep_2 + 10, 1022, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

------------------------------------------------------
-- 迫る(98F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
tyakudanf = entryEffectLife( spep_3 + 0, SP_03, 98, 0x100, -1, 0, 0, 0 );  --迫る　前面 ef_003
setEffMoveKey( spep_3 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanf, 0 );
setEffRotateKey( spep_3 + 98, tyakudanf, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 97, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 98, tyakudanf, 0 );

tyakudanb = entryEffectLife( spep_3 + 0, SP_04, 98, 0x80, -1, 0, 0, 0 );  --迫る　背面 ef_004
setEffMoveKey( spep_3 + 0, tyakudanb, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, tyakudanb, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tyakudanb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanb, 0 );
setEffRotateKey( spep_3 + 98, tyakudanb, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 97, tyakudanb, 255 );
setEffAlphaKey( spep_3 + 98, tyakudanb, 0 );

-- ** 書き文字エントリー ** --
ctzuo01 = entryEffectLife( spep_3 -3 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313.1 );
setEffMoveKey( spep_3 -3 + 30, ctzuo01, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo01, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo01, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo01, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo01, -92.7, 407.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo01, -75.8, 406.1 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo01, -104, 407.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo01, -87.1, 406.5 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo01, -119, 421 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo01, -82.7, 426.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo01, -79.7, 432.9 , 0 );

setEffScaleKey( spep_3 -3 + 30, ctzuo01, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 32, ctzuo01, 1.54, 1.54 );
setEffScaleKey( spep_3 -3 + 34, ctzuo01, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 44, ctzuo01, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 46, ctzuo01, 4.09, 4.09 );
setEffScaleKey( spep_3 -3 + 48, ctzuo01, 5.46, 5.46 );
setEffScaleKey( spep_3 -3 + 50, ctzuo01, 6.82, 6.82 );

setEffRotateKey( spep_3 -3 + 30, ctzuo01, 6.9 );
setEffRotateKey( spep_3 -3 + 32, ctzuo01, -3.3 );
setEffRotateKey( spep_3 -3 + 34, ctzuo01, -13.5 );
setEffRotateKey( spep_3 -3 + 36, ctzuo01, -13.8 );
setEffRotateKey( spep_3 -3 + 38, ctzuo01, -14.1 );
setEffRotateKey( spep_3 -3 + 40, ctzuo01, -14.4 );
setEffRotateKey( spep_3 -3 + 42, ctzuo01, -14.7 );
setEffRotateKey( spep_3 -3 + 44, ctzuo01, -15 );
setEffRotateKey( spep_3 -3 + 46, ctzuo01, -11.7 );
setEffRotateKey( spep_3 -3 + 48, ctzuo01, -8.5 );
setEffRotateKey( spep_3 -3 + 50, ctzuo01, -5.2 );

setEffAlphaKey( spep_3 -3 + 30, ctzuo01, 255 );
setEffAlphaKey( spep_3 -3 + 44, ctzuo01, 255 );
setEffAlphaKey( spep_3 -3 + 46, ctzuo01, 170 );
setEffAlphaKey( spep_3 -3 + 48, ctzuo01, 85 );
setEffAlphaKey( spep_3 -3 + 50, ctzuo01, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, -24.9, -98.4 , 0 );
setMoveKey( spep_3 + 1, 1, -18.7, -89.1 , 0 );
setMoveKey( spep_3 + 2, 1, -12.5, -79.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -6.3, -70.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -0.2, -61.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 6, -51.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 12.2, -42.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 18.4, -33.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 24.6, -24.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 30.8, -14.9 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3 + 1, 1, 2.93, 2.93 );
setScaleKey( spep_3 + 2, 1, 2.86, 2.86 );
setScaleKey( spep_3 -3 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_3 -3 + 8, 1, 2.71, 2.71 );
setScaleKey( spep_3 -3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 12, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 14, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 16, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 18, 1, 2.36, 2.36 );

setRotateKey( spep_3 + 0, 1, 0 );

setAlphaKey( spep_3 + 0, 1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 30.8, -14.9 , 0 );
setMoveKey( SP_dodge + 2, 1, 37, -5.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 43.2, 3.7 , 0 );
setMoveKey( SP_dodge + 6, 1, 49.4, 12.9 , 0 );
setMoveKey( SP_dodge + 8, 1, 55.5, 22.2 , 0 );
setMoveKey( SP_dodge + 10, 1, 61.7, 31.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.36, 2.36 );
setScaleKey( SP_dodge + 2, 1, 2.29, 2.29 );
setScaleKey( SP_dodge + 4, 1, 2.21, 2.21 );
setScaleKey( SP_dodge + 6, 1, 2.14, 2.14 );
setScaleKey( SP_dodge + 8, 1, 2.07, 2.07 );
setScaleKey( SP_dodge + 10, 1, 2, 2 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

setAlphaKey( SP_dodge + 0, 1, 255 );
setAlphaKey( SP_dodge + 10, 1, 255 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 48, 1, 0 );
changeAnime( spep_3 -3 + 30, 1, 108 );

setMoveKey( spep_3 -3 + 20, 1, 37, -5.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 43.2, 3.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 49.4, 12.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 55.5, 22.2 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 61.7, 31.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 97.1, 107.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 110.3, 99.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 112.1, 114.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 111.9, 112.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 119.3, 123.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 120, 130.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 122.5, 139.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 125, 147.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 127.6, 156.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 130.1, 165.1 , 0 );

setScaleKey( spep_3 -3 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 22, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 24, 1, 2.14, 2.14 );
setScaleKey( spep_3 -3 + 26, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 29, 1, 2, 2 );
setScaleKey( spep_3 -3 + 30, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 32, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 36, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 38, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 44, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 46, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 48, 1, 0.2, 0.2 );

setRotateKey( spep_3 -3 + 48, 1, 0 );

setAlphaKey( spep_3 -3 + 39, 1, 255 );
setAlphaKey( spep_3 -3 + 40, 1, 204 );
setAlphaKey( spep_3 -3 + 42, 1, 153 );
setAlphaKey( spep_3 -3 + 44, 1, 102 );
setAlphaKey( spep_3 -3 + 46, 1, 51 );
setAlphaKey( spep_3 -3 + 48, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE017 = playSeVer2( spep_3 + 24, 1145, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE017, 63 );
setStartTimeMs( SE017,  283 );
setPitch( spep_3 + 24, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );
SE018 = playSeVer2( spep_3 + 22, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE018, 108 );

--爆発
SE019 = playSeVer2( spep_3 + 88, 1023, "", 0, 0, 0, -1);

-- ** ホワイトフェード ** --
entryFade( spep_3 + 26, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 86, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

------------------------------------------------------
-- ガッ(100F)
------------------------------------------------------

-- ** 背景 ** --
haikei = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ガッ　背面 ef_006
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, haikei, 1, 1 );
setEffScaleKey( spep_4 + 100, haikei, 1, 1 );

setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 100, haikei, 0 );

setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 100, haikei, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  SP_05, 0x100, -1, 0, 0, 0 );  --ガッ　前面 ef_005
setEffMoveKey( spep_4 + 2, hibiware, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 0, 0, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 103, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4    + 0, 1, -36.2, 265.9 , 0 );
setMoveKey( spep_4    + 1, 1, -32.5, 228 , 0 );
setMoveKey( spep_4    + 2, 1, -27.7, 179.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -21.9, 119.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -15, 49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -7.1, -32 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 1.9, -124.1 , 0 );
setMoveKey( spep_4 -3 + 103, 1, 1.9, -124.1 , 0 );

setScaleKey( spep_4    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_4    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4    + 1, 1, -105 );
setRotateKey( spep_4    + 2, 1, -240 );
setRotateKey( spep_4 -3 + 6, 1, -405 );
setRotateKey( spep_4 -3 + 8, 1, -600 );
setRotateKey( spep_4 -3 + 10, 1, -825 );
setRotateKey( spep_4 -3 + 12, 1, -1080 );
setRotateKey( spep_4 -3 + 103, 1, -1080 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 103, 1, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
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

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE020 = playSeVer2( spep_4 + 8, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 8, 1054, "", 0, 0, 0, -1);

--雨
SE022 = playSeVer2( spep_4 + 10, 1165, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE022, 71 );
setBandpassFilter  ( spep_4 + 10, SE022, 1650, 24000 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

end