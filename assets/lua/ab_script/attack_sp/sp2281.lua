--4022430:超サイヤ人4ゴジータ_分身かめはめ波
--sp_effect_a1_00341
--sp2281

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
SP_01 = 158938; --振り向いて〜敵が地面に激突 ef_001_front
SP_02 = 158940; --振り向いて〜敵が地面に激突 ef_001_back
SP_03 = 158942; --かめはめ波溜める〜着弾爆発 ef_002

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
-- 振り向いて〜敵が地面に激突(692F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 692, 0x100, -1, 0, 0, 0 );  --振り向いて〜敵が地面に激突 ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 692, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 692, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 692, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 692 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 692, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 692, 0x80, -1, 0, 0, 0 );  --振り向いて〜敵が地面に激突 ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 692, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 692, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 692, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 692 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 692, first_b, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 14, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 +14, SE002, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 692 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 32 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);

    pauseAll( SP_dodge, 67); 

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

spep_x = spep_0 + 216;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 -3 + 88, 1, 1 );
setDisp( spep_0 -3 + 166, 1, 0 );
changeAnime( spep_0 -3 + 88, 1, 104 );
changeAnime( spep_0 -3 + 92, 1, 108 );
changeAnime( spep_0 -3 + 116, 1, 5 );

setMoveKey( spep_0 -3 + 88, 1, -12.6, -17.4 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -0.9, -3.1 , 0 );
setMoveKey( spep_0 -3 + 91, 1, -0.9, -3.1 , 0 );--
setMoveKey( spep_0 -3 + 92, 1, 67.4, 17.9 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 52.4, 0.1 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 77.4, 2.3 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 81.7, 10.3 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 76.7, 15.6 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 70.2, 6.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 71, -0.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 81.2, 0.7 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 77.9, 10.1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 70.4, 16.8 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 72.4, 6 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 74.4, 5.9 , 0 );
setMoveKey( spep_0 -3 + 115, 1, 74.4, 5.9 , 0 );--
setMoveKey( spep_0 -3 + 116, 1, 29.7, -56.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 18.6, -23.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 14.7, -11.7 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 12.3, -4.5 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 10.8, 0.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 9.9, 2.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 9.6, 3.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 25.2, -116.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 22.3, -95.4 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 20.7, -84 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 19.9, -78.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 19.7, -76.7 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 19.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 19.6, -76.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 19.6, -76.2 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 19.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 19.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 19.7, -76.3 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 19.7, -76.3 , 0 );--

setScaleKey( spep_0 -3 + 88, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 91, 1, 3.06, 3.06 );--
setScaleKey( spep_0 -3 + 92, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 94, 1, 3.01, 2.96 );
setScaleKey( spep_0 -3 + 96, 1, 2.96 +0.0, 2.86 -0.0 );
setScaleKey( spep_0 -3 + 98, 1, 2.92 +0.0, 2.75 -0.0 );
setScaleKey( spep_0 -3 + 100, 1, 2.87 -0.1, 2.65 +0.1 );
setScaleKey( spep_0 -3 + 102, 1, 2.82 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 -3 + 104, 1, 2.73 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 -3 + 106, 1, 2.65 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 -3 + 108, 1, 2.57 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 -3 + 110, 1, 2.55 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 -3 + 112, 1, 2.54 -0.05, 2.55 +0.05 );
setScaleKey( spep_0 -3 + 114, 1, 2.53 +0.0, 2.55 -0.0 );
setScaleKey( spep_0 -3 + 115, 1, 2.53 +0.0, 2.55 -0.0 );--
setScaleKey( spep_0 -3 + 116, 1, 2.17, 2.17 );
setScaleKey( spep_0 -3 + 118, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 120, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 122, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 124, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 126, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 128, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 130, 1, 6.11, 6.11 );
setScaleKey( spep_0 -3 + 132, 1, 4.29, 4.29 );
setScaleKey( spep_0 -3 + 134, 1, 3.29, 3.29 );
setScaleKey( spep_0 -3 + 136, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 138, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 140, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 142, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 144, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 146, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 148, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 150, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 152, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 154, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 156, 1, 2.44, 2.44 );
setScaleKey( spep_0 -3 + 158, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 160, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 162, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 164, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 166, 1, 2.36, 2.36 );--

setRotateKey( spep_0 -3 + 88, 1, 0 );
setRotateKey( spep_0 -3 + 91, 1, 0 );--
setRotateKey( spep_0 -3 + 92, 1, 0 );
setRotateKey( spep_0 -3 + 94, 1, 2 );
setRotateKey( spep_0 -3 + 96, 1, 5 );
setRotateKey( spep_0 -3 + 98, 1, 7 );
setRotateKey( spep_0 -3 + 100, 1, 8 );
setRotateKey( spep_0 -3 + 102, 1, 9 );
setRotateKey( spep_0 -3 + 104, 1, 9.2 );
setRotateKey( spep_0 -3 + 106, 1, 9.4 );
setRotateKey( spep_0 -3 + 108, 1, 9.4 );
setRotateKey( spep_0 -3 + 110, 1, 9 );
setRotateKey( spep_0 -3 + 112, 1, 9 );
setRotateKey( spep_0 -3 + 114, 1, 8 );
setRotateKey( spep_0 -3 + 115, 1, 8 );--
setRotateKey( spep_0 -3 + 116, 1, 20.7 );
setRotateKey( spep_0 -3 + 128, 1, 20.7 );
setRotateKey( spep_0 -3 + 130, 1, 20.6 );
setRotateKey( spep_0 -3 + 132, 1, 20.6 );
setRotateKey( spep_0 -3 + 134, 1, 20.5 );
setRotateKey( spep_0 -3 + 166, 1, 20.5 );--

--敵の動き2
setDisp( spep_0 -3 + 168, 1, 1 );
setDisp( spep_0 -3 + 222, 1, 0 );
changeAnime( spep_0 -3 + 168, 1, 8 );
changeAnime( spep_0 -3 + 178, 1, 6 );
changeAnime( spep_0 -3 + 188, 1, 105 );

setMoveKey( spep_0 -3 + 168, 1, 19.6, -76.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -178.3, 6.7 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -190.2, 3.3 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -192.2, 1.5 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -196.1, 21.7 , 0 );
setMoveKey( spep_0 -3 + 177, 1, -196.1, 21.7 , 0 );--
setMoveKey( spep_0 -3 + 178, 1, 63.1, 22.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 186.7, 70.3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 183.4, 64.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 219.9, 59.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 238, 61.5 , 0 );
setMoveKey( spep_0 -3 + 187, 1, 238, 61.5 , 0 );--
setMoveKey( spep_0 -3 + 188, 1, 6.8, -13.3 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 13.2, -7.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 9.9, 60.7 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -0.9, 89.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -22.4, 111.4 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -39.4, 109.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -51.3, 94.7 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -46.7, 94.9 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -34.9, 100.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -40.3, 103.1 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -35.8, 107.4 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -49.1, 114.8 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -78.1, 121.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -84.9, 125.7 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -95.4, 131.9 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -109.4, 139.8 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -127.1, 149.5 , 0 );
setMoveKey( spep_0 -3 + 222, 1, -127.1, 149.5 , 0 );

setScaleKey( spep_0 -3 + 168, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 177, 1, 2.6, 2.6 );--
setScaleKey( spep_0 -3 + 178, 1, 2.15, 2.15 );
setScaleKey( spep_0 -3 + 187, 1, 2.15, 2.15 );--
setScaleKey( spep_0 -3 + 188, 1, 2.26, 2.26 );
setScaleKey( spep_0 -3 + 190, 1, 2.26, 2.26 );
setScaleKey( spep_0 -3 + 192, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 194, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 196, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 198, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 200, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 202, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 204, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 206, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 208, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 210, 1, 0.48, 0.48 );
setScaleKey( spep_0 -3 + 212, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 214, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 216, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 218, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 220, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 222, 1, 0.15, 0.15 );

setRotateKey( spep_0 -3 + 168, 1, 20.5 );
setRotateKey( spep_0 -3 + 177, 1, 20.5 );--
setRotateKey( spep_0 -3 + 178, 1, 64.9 );
setRotateKey( spep_0 -3 + 182, 1, 64.9 );
setRotateKey( spep_0 -3 + 184, 1, 64.8 );
setRotateKey( spep_0 -3 + 187, 1, 64.8 );--
setRotateKey( spep_0 -3 + 188, 1, 5.6 );
setRotateKey( spep_0 -3 + 190, 1, 5.6 );
setRotateKey( spep_0 -3 + 192, 1, -34.2 );
setRotateKey( spep_0 -3 + 194, 1, -50.5 );
setRotateKey( spep_0 -3 + 196, 1, -59.1 );
setRotateKey( spep_0 -3 + 198, 1, -64.4 );
setRotateKey( spep_0 -3 + 200, 1, -68 );
setRotateKey( spep_0 -3 + 202, 1, -70.4 );
setRotateKey( spep_0 -3 + 204, 1, -70.7 );
setRotateKey( spep_0 -3 + 206, 1, -71.4 );
setRotateKey( spep_0 -3 + 208, 1, -72.5 );
setRotateKey( spep_0 -3 + 210, 1, -74.2 );
setRotateKey( spep_0 -3 + 212, 1, -76.3 );
setRotateKey( spep_0 -3 + 214, 1, -78.9 );
setRotateKey( spep_0 -3 + 216, 1, -81.9 );
setRotateKey( spep_0 -3 + 218, 1, -85.5 );
setRotateKey( spep_0 -3 + 220, 1, -89.4 );
setRotateKey( spep_0 -3 + 222, 1, -89.4 );

--敵の動き3
setDisp( spep_0 -3 + 352, 1, 1 );
setDisp( spep_0 -3 + 380, 1, 0 );
changeAnime( spep_0 -3 + 352, 1, 105 );

setMoveKey( spep_0 -3 + 352, 1, 484.9, -295.9 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 464.2, -280.5 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 443.6, -265.1 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 423, -249.7 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 402.3, -234.3 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 381.7, -219 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 361.1, -203.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 340.5, -188.2 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 319.8, -172.8 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 299.2, -157.5 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 278.6, -142.1 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 258, -126.7 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 237.3, -111.3 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 216.7, -95.9 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 216.7, -95.9 , 0 );

setScaleKey( spep_0 -3 + 352, 1, 4.81, 4.84 );
setScaleKey( spep_0 -3 + 354, 1, 4.75, 4.77 );
setScaleKey( spep_0 -3 + 356, 1, 4.69, 4.71 );
setScaleKey( spep_0 -3 + 358, 1, 4.63, 4.65 );
setScaleKey( spep_0 -3 + 360, 1, 4.57, 4.59 );
setScaleKey( spep_0 -3 + 362, 1, 4.51, 4.53 );
setScaleKey( spep_0 -3 + 364, 1, 4.45, 4.47 );
setScaleKey( spep_0 -3 + 366, 1, 4.39, 4.41 );
setScaleKey( spep_0 -3 + 368, 1, 4.33, 4.35 );
setScaleKey( spep_0 -3 + 370, 1, 4.27, 4.29 );
setScaleKey( spep_0 -3 + 372, 1, 4.21, 4.23 );
setScaleKey( spep_0 -3 + 374, 1, 4.15, 4.16 );
setScaleKey( spep_0 -3 + 376, 1, 4.09, 4.1 );
setScaleKey( spep_0 -3 + 380, 1, 4.02, 4.04 );

setRotateKey( spep_0 -3 + 352, 1, -61.7 );
setRotateKey( spep_0 -3 + 380, 1, -61.7 );

--敵の動き4
setDisp( spep_0 -3 + 418, 1, 1 );
setDisp( spep_0 -3 + 528, 1, 0 );
changeAnime( spep_0 -3 + 418, 1, 5 );
changeAnime( spep_0 -3 + 458, 1, 107 );
changeAnime( spep_0 -3 + 488, 1, 8 );

setMoveKey( spep_0 -3 + 418, 1, -31.3, 7.2 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -52.7, -14.2 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -30.8, -22.3 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -22.9, 1.6 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -37.5, 20.5 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -58.7, 2.7 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -60, -20 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -41.3, -2.8 , 0 );
setMoveKey( spep_0 -3 + 434, 1, 40.8, 73 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 72.3, 102.1 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 94.6, 122.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 111.9, 138.7 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 125.6, 151.4 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 136.7, 161.7 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 145.5, 169.9 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 152.5, 176.3 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 157.7, 181.1 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 161.4, 184.5 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 163.5, 186.5 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 164.3, 187.2 , 0 );
setMoveKey( spep_0 -3 + 457, 1, 164.3, 187.2 , 0 );--
setMoveKey( spep_0 -3 + 458, 1, -254, 52.5 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -254, 52.5 , 0 );
setMoveKey( spep_0 -3 + 464, 1, -253.9, 52.5 , 0 );
setMoveKey( spep_0 -3 + 466, 1, -253.8, 52.4 , 0 );
setMoveKey( spep_0 -3 + 468, 1, -253.4, 52.2 , 0 );
setMoveKey( spep_0 -3 + 470, 1, -252.5, 51.8 , 0 );
setMoveKey( spep_0 -3 + 472, 1, -250.7, 50.8 , 0 );
setMoveKey( spep_0 -3 + 474, 1, -247.6, 49.2 , 0 );
setMoveKey( spep_0 -3 + 476, 1, -242.4, 46.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, -234.4, 42.3 , 0 );
setMoveKey( spep_0 -3 + 480, 1, -222.4, 36 , 0 );
setMoveKey( spep_0 -3 + 482, 1, -205.3, 27 , 0 );
setMoveKey( spep_0 -3 + 484, 1, -181.3, 14.5 , 0 );
setMoveKey( spep_0 -3 + 486, 1, -128.7, 17.4 , 0 );
setMoveKey( spep_0 -3 + 487, 1, -128.7, 17.4 , 0 );--
setMoveKey( spep_0 -3 + 488, 1, -182.8, -50.2 , 0 );
setMoveKey( spep_0 -3 + 490, 1, -237.6, -4 , 0 );
setMoveKey( spep_0 -3 + 492, 1, -280.6, 25.2 , 0 );
setMoveKey( spep_0 -3 + 494, 1, -285.2, 67.5 , 0 );
setMoveKey( spep_0 -3 + 496, 1, -278.1, 92 , 0 );
setMoveKey( spep_0 -3 + 498, 1, -272.4, 101.6 , 0 );
setMoveKey( spep_0 -3 + 500, 1, -269.1, 99.3 , 0 );
setMoveKey( spep_0 -3 + 502, 1, -290, 100.5 , 0 );
setMoveKey( spep_0 -3 + 504, 1, -290.4, 120.4 , 0 );
setMoveKey( spep_0 -3 + 506, 1, -293.8, 127.7 , 0 );
setMoveKey( spep_0 -3 + 508, 1, -296.8, 134 , 0 );
setMoveKey( spep_0 -3 + 510, 1, -299.4, 139.5 , 0 );
setMoveKey( spep_0 -3 + 512, 1, -301.6, 144.2 , 0 );
setMoveKey( spep_0 -3 + 514, 1, -303.4, 148.2 , 0 );
setMoveKey( spep_0 -3 + 516, 1, -305, 151.5 , 0 );
setMoveKey( spep_0 -3 + 518, 1, -306.3, 154.2 , 0 );
setMoveKey( spep_0 -3 + 520, 1, -307.2, 156.3 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -307.9, 157.7 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -308.3, 158.6 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -308.5, 158.9 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -308.5, 158.9 , 0 );

setScaleKey( spep_0 -3 + 418, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 432, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 434, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 436, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 438, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 440, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 442, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 444, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 446, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 448, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 450, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 452, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 454, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 456, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 457, 1, 0.17, 0.17 );--
setScaleKey( spep_0 -3 + 458, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 468, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 470, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 472, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 474, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 476, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 478, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 480, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 482, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 484, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 486, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 487, 1, 0.76, 0.76 );--
setScaleKey( spep_0 -3 + 488, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 490, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 492, 1, 1.48, 1.48 );
setScaleKey( spep_0 -3 + 494, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 496, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 498, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 500, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 502, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 504, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 506, 1, 0.48, 0.48 );
setScaleKey( spep_0 -3 + 508, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 510, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 512, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 514, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 516, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 518, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 520, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 522, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 524, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 528, 1, 0.11, 0.11 );

setRotateKey( spep_0 -3 + 418, 1, 43.5 );
setRotateKey( spep_0 -3 + 432, 1, 43.5 );
setRotateKey( spep_0 -3 + 434, 1, 50 );
setRotateKey( spep_0 -3 + 436, 1, 52.5 );
setRotateKey( spep_0 -3 + 438, 1, 54.3 );
setRotateKey( spep_0 -3 + 440, 1, 55.7 );
setRotateKey( spep_0 -3 + 442, 1, 56.8 );
setRotateKey( spep_0 -3 + 444, 1, 57.6 );
setRotateKey( spep_0 -3 + 446, 1, 58.4 );
setRotateKey( spep_0 -3 + 448, 1, 58.9 );
setRotateKey( spep_0 -3 + 450, 1, 59.3 );
setRotateKey( spep_0 -3 + 452, 1, 59.6 );
setRotateKey( spep_0 -3 + 454, 1, 59.8 );
setRotateKey( spep_0 -3 + 457, 1, 59.8 );--
setRotateKey( spep_0 -3 + 458, 1, 36.9 );
setRotateKey( spep_0 -3 + 487, 1, 36.9 );--
setRotateKey( spep_0 -3 + 488, 1, 22.9 );
setRotateKey( spep_0 -3 + 490, 1, 25.4 );
setRotateKey( spep_0 -3 + 492, 1, 26.4 );
setRotateKey( spep_0 -3 + 494, 1, 27.1 );
setRotateKey( spep_0 -3 + 496, 1, 27.7 );
setRotateKey( spep_0 -3 + 498, 1, 28.2 );
setRotateKey( spep_0 -3 + 500, 1, 28.6 );
setRotateKey( spep_0 -3 + 502, 1, 28.9 );
setRotateKey( spep_0 -3 + 504, 1, 29.2 );
setRotateKey( spep_0 -3 + 506, 1, 29.5 );
setRotateKey( spep_0 -3 + 508, 1, 29.7 );
setRotateKey( spep_0 -3 + 510, 1, 29.9 );
setRotateKey( spep_0 -3 + 512, 1, 30.1 );
setRotateKey( spep_0 -3 + 514, 1, 30.3 );
setRotateKey( spep_0 -3 + 516, 1, 30.4 );
setRotateKey( spep_0 -3 + 518, 1, 30.5 );
setRotateKey( spep_0 -3 + 520, 1, 30.6 );
setRotateKey( spep_0 -3 + 524, 1, 30.6 );
setRotateKey( spep_0 -3 + 526, 1, 30.7 );
setRotateKey( spep_0 -3 + 526, 1, 30.7 );
setRotateKey( spep_0 -3 + 528, 1, 30.7 );

--敵の動き5
setDisp( spep_0 -3 + 592, 1, 1 );
setDisp( spep_0 -3 + 630, 1, 0 );
changeAnime( spep_0 -3 + 592, 1, 105 );
changeAnime( spep_0 -3 + 594, 1, 107 );
changeAnime( spep_0 -3 + 612, 1, 105 );

setMoveKey( spep_0 -3 + 592, 1, 515.4, -743.3 , 0 );
setMoveKey( spep_0 -3 + 593, 1, 515.4, -743.3 , 0 );--
setMoveKey( spep_0 -3 + 594, 1, 278.4, -207.1 , 0 );
setMoveKey( spep_0 -3 + 596, 1, 308.4, -247.1 , 0 );
setMoveKey( spep_0 -3 + 598, 1, 295.9, -204.6 , 0 );
setMoveKey( spep_0 -3 + 600, 1, 273.4, -175 , 0 );
setMoveKey( spep_0 -3 + 602, 1, 232.6, -168.7 , 0 );
setMoveKey( spep_0 -3 + 604, 1, 221.7, -202.4 , 0 );
setMoveKey( spep_0 -3 + 606, 1, 255.9, -243.5 , 0 );
setMoveKey( spep_0 -3 + 608, 1, 313.4, -221.4 , 0 );
setMoveKey( spep_0 -3 + 610, 1, 275.9, -254.2 , 0 );
setMoveKey( spep_0 -3 + 611, 1, 275.9, -254.2 , 0 );--
setMoveKey( spep_0 -3 + 612, 1, -155.9, 68.4 , 0 );
setMoveKey( spep_0 -3 + 614, 1, -58.9, 130.5 , 0 );
setMoveKey( spep_0 -3 + 616, 1, 4.4, 171 , 0 );
setMoveKey( spep_0 -3 + 618, 1, 42.8, 195.5 , 0 );
setMoveKey( spep_0 -3 + 620, 1, 63.9, 209 , 0 );
setMoveKey( spep_0 -3 + 622, 1, 74, 215.4 , 0 );
setMoveKey( spep_0 -3 + 624, 1, 77.7, 217.8 , 0 );
setMoveKey( spep_0 -3 + 626, 1, 78.5, 218.4 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 78.6, 218.4 , 0 );
setMoveKey( spep_0 -3 + 630, 1, 78.6, 218.4 , 0 );

setScaleKey( spep_0 -3 + 592, 1, 7.34, 7.34 );
setScaleKey( spep_0 -3 + 593, 1, 7.34, 7.34 );--
setScaleKey( spep_0 -3 + 594, 1, 2.29, 2.29 );
setScaleKey( spep_0 -3 + 611, 1, 2.29, 2.29 );--
setScaleKey( spep_0 -3 + 612, 1, 7.19, 7.19 );
setScaleKey( spep_0 -3 + 614, 1, 4.48, 4.48 );
setScaleKey( spep_0 -3 + 616, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 618, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 620, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 622, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 624, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 626, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 630, 1, 0.64, 0.64 );

setRotateKey( spep_0 -3 + 592, 1, -60.4 );
setRotateKey( spep_0 -3 + 593, 1, -60.4 );--
setRotateKey( spep_0 -3 + 594, 1, 68.2 );
setRotateKey( spep_0 -3 + 611, 1, 68.2 );--
setRotateKey( spep_0 -3 + 612, 1, 27.2 );
setRotateKey( spep_0 -3 + 614, 1, 27.2 );
setRotateKey( spep_0 -3 + 616, 1, 27.1 );
setRotateKey( spep_0 -3 + 630, 1, 27.1 );

-- ** 音 ** --
--目が光る
SE003 = playSeVer2( spep_0 + 62, 1283, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 62, 1240, "",spep_0 + 132, 0, 42, -1);
setPitch( spep_0 + 62, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );

--敵ヒット
SE005 = playSeVer2( spep_0 + 86, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 88 );
SE006 = playSeVer2( spep_0 + 86, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 84 );

--敵吹き飛ぶ
SE007 = playSeVer2( spep_0 + 102, 1258, "",spep_0 + 170, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 102, SE007, 61 );
SE008 = playSeVer2( spep_0 + 108, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE008, 80 );

--瞬間移動
SE009 = playSeVer2( spep_0 + 132, 1245, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 132, SE009, 55 );
SE010 = playSeVer2( spep_0 + 132, 1235, "",spep_0 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 132, SE010, 60 );
SE011 = playSeVer2( spep_0 + 134, 1109, "",spep_0 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 75 );
SE012 = playSeVer2( spep_0 + 156, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE012, 77 );
SE013 = playSeVer2( spep_0 + 156, 1187, "",spep_0 + 204, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 156, SE013, 77 );
SE014 = playSeVer2( spep_0 + 156, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE014, 58 );
SE015 = playSeVer2( spep_0 + 166, 1187, "",spep_0 + 218, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 166, SE015, 65 );
setPitch( spep_0 + 166, SE015, -300 );
setTimeStretch( SE015, 0.8, 30, 4 );
SE016 = playSeVer2( spep_0 + 166, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE016, 47 );
SE017 = playSeVer2( spep_0 + 186, 1187, "",spep_0 + 250, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 186, SE017, 68 );
SE018 = playSeVer2( spep_0 + 186, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE018, 56 );

--顔カットイン
SE019 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


--風が吹く
SE020 = playSeVer2( spep_0 + 216, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE020, 72 );
SE021 = playSeVer2( spep_0 + 250, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE021, 76 );
setPitch( spep_0 + 250, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );

--瞬間移動
SE022 = playSeVer2( spep_0 + 324, 1245, "",spep_0 + 368, 0, 28, 1.0);
setSeVolumeByWorkId( spep_0 + 324, SE022, 55 );
SE023 = playSeVer2( spep_0 + 324, 1235, "",spep_0 + 404, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 324, SE023, 65 );
SE024 = playSeVer2( spep_0 + 326, 1109, "",spep_0 + 378, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 326, SE024, 72 );

--構える
SE025 = playSeVer2( spep_0 + 366, 1233, "",spep_0 + 388, 0, 10, -1);
setPitch( spep_0 + 366, SE025, -500 );
setTimeStretch( SE025, 0.67, 30, 4 );

--振りかぶる
SE026 = playSeVer2( spep_0 + 388, 1116, "",spep_0 + 428, 0, 20, -1);
SE027 = playSeVer2( spep_0 + 388, 1004, "", 0, 0, 0, -1);

--パンチ
SE028 = playSeVer2( spep_0 + 408, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE028, 90 );
SE029 = playSeVer2( spep_0 + 408, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE029, 86 );

--瞬間移動
SE030 = playSeVer2( spep_0 + 434, 1245, "",spep_0 + 478, 0, 28, 1.0);
setSeVolumeByWorkId( spep_0 + 434, SE030, 54 );
SE031 = playSeVer2( spep_0 + 434, 1235, "",spep_0 + 508, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 434, SE031, 62 );
SE032 = playSeVer2( spep_0 + 436, 1109, "",spep_0 + 488, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 436, SE032, 77 );

--裏回転蹴り
SE033 = playSeVer2( spep_0 + 468, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 474, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE034, 82 );
SE035 = playSeVer2( spep_0 + 478, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE035, 86 );

--追いかける
SE036 = playSeVer2( spep_0 + 500, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE036, 127 );
SE037 = playSeVer2( spep_0 + 500, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE037, 138 );
SE038 = playSeVer2( spep_0 + 516, 1072, "", 0, 16, 0, -1);
setStartTimeMs( SE038,  267 );

--飛び蹴り
SE039 = playSeVer2( spep_0 + 558, 1314, "",spep_0 + 632, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 558, SE039, 140 );
SE040 = playSeVer2( spep_0 + 558, 1258, "",spep_0 + 664, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 558, SE040, 69 );
SE041 = playSeVer2( spep_0 + 558, 1182, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 574, 1067, "",spep_0 + 638, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 574, SE042, 75 );
SE043 = playSeVer2( spep_0 + 578, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE043, 120 );
SE044 = playSeVer2( spep_0 + 584, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE044, 81 );
SE045 = playSeVer2( spep_0 + 590, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 590, SE045, 76 );

--壁激突
SE047 = playSeVer2( spep_0 + 620, 1023, "",spep_0 + 702 + 2, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 620, SE047, 91 );
SE048 = playSeVer2( spep_0 + 620, 1159, "",spep_0 + 702 + 2, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 620, SE048, 79 );

--影増える
SE049 = playSeVer2( spep_0 + 638, 1112, "",spep_0 + 692, 0, 24, -1);
setPitch( spep_0 + 638, SE049, 500 );
setTimeStretch( SE049, 1.33, 30, 4 );
SE050 = playSeVer2( spep_0 + 658, 1112, "",spep_0 + 696, 0, 10, -1);
setPitch( spep_0 + 658, SE050, 500 );
setTimeStretch( SE050, 1.33, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 692;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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
-- playSe( spep_1 + 0, SE_05 );

--構える
SE052 = playSeVer2( spep_1 + 90, 1232, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_1 + 90, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE053, 72 );
setPitch( spep_1 + 90, SE053, -400 );
setTimeStretch( SE053, 0.73, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- かめはめ波溜める〜着弾爆発(418F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --かめはめ波溜める〜着弾爆発 ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 438, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 438, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 438, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 438, finish, 255 );

-- ** 音 ** --
--かめはめ波溜め
SE054 = playSeVer2( spep_2 + 24, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE054, 84 );
SE046 = playSeVer2( spep_2 + 26, 1210, "",spep_2 + 220, 66, 22, 0.6);
setSeVolumeByWorkId( spep_2 +26, SE046, 119 );
setStartTimeMs( SE046,  3517 );

--画面遷移
SE055 = playSeVer2( spep_2 + 40, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE055, 80 );
setPitch( spep_2 + 40, SE055, -200 );
setTimeStretch( SE055, 0.87, 30, 4 );

--かめはめ波光る
SE056 = playSeVer2( spep_2 + 90, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE056, 214 );

--画面遷移２
SE057 = playSeVer2( spep_2 + 90, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE057, 83 );
setPitch( spep_2 + 90, SE057, -200 );
setTimeStretch( SE057, 1.3, 30, 4 );
setBandpassFilter( spep_2 + 90, SE057, 24, 1021 );

--画面遷移３
SE058 = playSeVer2( spep_2 + 156, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE058, 78 );

--かめはめ波発射
SE059 = playSeVer2( spep_2 + 196, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE059, 83 );
SE060 = playSeVer2( spep_2 + 196, 1284, "",spep_2 + 344, 0, 94, -1);
setSeVolumeByWorkId( spep_2 + 196, SE060, 71 );
SE061 = playSeVer2( spep_2 + 196, 1285, "",spep_2 + 344, 0, 94, -1);
setSeVolumeByWorkId( spep_2 + 196, SE061, 80 );
SE062 = playSeVer2( spep_2 + 196, 1213, "",spep_2 + 318, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 196, SE062, 74 );
SE063 = playSeVer2( spep_2 + 196, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE063, 88 );

--爆発前光る
SE064 = playSeVer2( spep_2 + 296, 1302, "", 0, 0, 0, -1);

--爆発
SE065 = playSeVer2( spep_2 + 316, 1024, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 316, 1159, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 352, 1258, "", 0, 38, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE067, 58 );
SE068 = playSeVer2( spep_2 + 352, 1259, "", 0, 0, 0, -1);
setPitch( spep_2 + 352, SE068, -600 );
setTimeStretch( SE068, 0.6, 30, 4 );
setBandpassFilter( spep_2 + 352, SE068, 24, 600 );
SE069 = playSeVer2( spep_2 + 352, 1044, "", 0, 38, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE069, 162 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 438 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 318 );
endPhase( spep_2 + 428 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 振り向いて〜敵が地面に激突(692F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 692, 0x100, -1, 0, 0, 0 );  --振り向いて〜敵が地面に激突 ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 692, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 692, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 692, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 692 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 692, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 692, 0x80, -1, 0, 0, 0 );  --振り向いて〜敵が地面に激突 ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 692, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 692, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 692, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 692 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 692, first_b, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 14, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 +14, SE002, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 692 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 32 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);

    pauseAll( SP_dodge, 67); 

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

spep_x = spep_0 + 216;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 -3 + 88, 1, 1 );
setDisp( spep_0 -3 + 166, 1, 0 );
changeAnime( spep_0 -3 + 88, 1, 4 );
changeAnime( spep_0 -3 + 92, 1, 8 );
changeAnime( spep_0 -3 + 116, 1, 105 );

setMoveKey( spep_0 -3 + 88, 1, 12.6, -17.4 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 0.9, -3.1 , 0 );
setMoveKey( spep_0 -3 + 91, 1, 0.9, -3.1 , 0 );--
setMoveKey( spep_0 -3 + 92, 1, -67.4, 17.9 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -52.4, 0.1 , 0 );
setMoveKey( spep_0 -3 + 96, 1, -77.4, 2.3 , 0 );
setMoveKey( spep_0 -3 + 98, 1, -81.7, 10.3 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -76.7, 15.6 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -70.2, 6.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -71, -0.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -81.2, 0.7 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -77.9, 10.1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -70.4, 16.8 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -72.4, 6 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -74.4, 5.9 , 0 );
setMoveKey( spep_0 -3 + 115, 1, -74.4, 5.9 , 0 );--
setMoveKey( spep_0 -3 + 116, 1, -29.7, -56.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, -18.6, -23.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, -14.7, -11.7 , 0 );
setMoveKey( spep_0 -3 + 122, 1, -12.3, -4.5 , 0 );
setMoveKey( spep_0 -3 + 124, 1, -10.8, 0.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, -9.9, 2.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, -9.6, 3.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, -25.2, -116.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, -22.3, -95.4 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -20.7, -84 , 0 );
setMoveKey( spep_0 -3 + 136, 1, -19.9, -78.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, -19.7, -76.7 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -19.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 142, 1, -19.6, -76.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -19.6, -76.2 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -19.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -19.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -19.7, -76.3 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -19.7, -76.3 , 0 );--

setScaleKey( spep_0 -3 + 88, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 91, 1, 3.06, 3.06 );--
setScaleKey( spep_0 -3 + 92, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 94, 1, 3.01, 2.96 );
setScaleKey( spep_0 -3 + 96, 1, 2.96 +0.0, 2.86 -0.0 );
setScaleKey( spep_0 -3 + 98, 1, 2.92 +0.0, 2.75 -0.0 );
setScaleKey( spep_0 -3 + 100, 1, 2.87 -0.1, 2.65 +0.1 );
setScaleKey( spep_0 -3 + 102, 1, 2.82 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 -3 + 104, 1, 2.73 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 -3 + 106, 1, 2.65 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 -3 + 108, 1, 2.57 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 -3 + 110, 1, 2.55 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 -3 + 112, 1, 2.54 -0.05, 2.55 +0.05 );
setScaleKey( spep_0 -3 + 114, 1, 2.53 +0.0, 2.55 -0.0 );
setScaleKey( spep_0 -3 + 115, 1, 2.53 +0.0, 2.55 -0.0 );--
setScaleKey( spep_0 -3 + 116, 1, 2.17, 2.17 );
setScaleKey( spep_0 -3 + 118, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 120, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 122, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 124, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 126, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 128, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 130, 1, 6.11, 6.11 );
setScaleKey( spep_0 -3 + 132, 1, 4.29, 4.29 );
setScaleKey( spep_0 -3 + 134, 1, 3.29, 3.29 );
setScaleKey( spep_0 -3 + 136, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 138, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 140, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 142, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 144, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 146, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 148, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 150, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 152, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 154, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 156, 1, 2.44, 2.44 );
setScaleKey( spep_0 -3 + 158, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 160, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 162, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 164, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 166, 1, 2.36, 2.36 );--

setRotateKey( spep_0 -3 + 88, 1, -0 );
setRotateKey( spep_0 -3 + 91, 1, -0 );--
setRotateKey( spep_0 -3 + 92, 1, -0 );
setRotateKey( spep_0 -3 + 94, 1, -2 );
setRotateKey( spep_0 -3 + 96, 1, -5 );
setRotateKey( spep_0 -3 + 98, 1, -7 );
setRotateKey( spep_0 -3 + 100, 1, -8 );
setRotateKey( spep_0 -3 + 102, 1, -9 );
setRotateKey( spep_0 -3 + 104, 1, -9.2 );
setRotateKey( spep_0 -3 + 106, 1, -9.4 );
setRotateKey( spep_0 -3 + 108, 1, -9.4 );
setRotateKey( spep_0 -3 + 110, 1, -9 );
setRotateKey( spep_0 -3 + 112, 1, -9 );
setRotateKey( spep_0 -3 + 114, 1, -8 );
setRotateKey( spep_0 -3 + 115, 1, -8 );--
setRotateKey( spep_0 -3 + 116, 1, -20.7 );
setRotateKey( spep_0 -3 + 128, 1, -20.7 );
setRotateKey( spep_0 -3 + 130, 1, -20.6 );
setRotateKey( spep_0 -3 + 132, 1, -20.6 );
setRotateKey( spep_0 -3 + 134, 1, -20.5 );
setRotateKey( spep_0 -3 + 166, 1, -20.5 );--

--敵の動き2
setDisp( spep_0 -3 + 168, 1, 1 );
setDisp( spep_0 -3 + 222, 1, 0 );
changeAnime( spep_0 -3 + 168, 1, 108 );
changeAnime( spep_0 -3 + 178, 1, 106 );
changeAnime( spep_0 -3 + 188, 1, 5 );

setMoveKey( spep_0 -3 + 168, 1, -19.6, -76.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 178.3, 6.7 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 190.2, 3.3 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 192.2, 1.5 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 196.1, 21.7 , 0 );
setMoveKey( spep_0 -3 + 177, 1, 196.1, 21.7 , 0 );--
setMoveKey( spep_0 -3 + 178, 1, -63.1, 22.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -186.7, 70.3 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -183.4, 64.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -219.9, 59.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -238, 61.5 , 0 );
setMoveKey( spep_0 -3 + 187, 1, -238, 61.5 , 0 );--
setMoveKey( spep_0 -3 + 188, 1, -6.8, -13.3 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -13.2, -7.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -9.9, 60.7 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 0.9, 89.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 22.4, 111.4 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 39.4, 109.2 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 51.3, 94.7 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 46.7, 94.9 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 34.9, 100.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 40.3, 103.1 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 35.8, 107.4 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 49.1, 114.8 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 78.1, 121.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 84.9, 125.7 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 95.4, 131.9 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 109.4, 139.8 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 127.1, 149.5 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 127.1, 149.5 , 0 );

setScaleKey( spep_0 -3 + 168, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 177, 1, 2.6, 2.6 );--
setScaleKey( spep_0 -3 + 178, 1, 2.15, 2.15 );
setScaleKey( spep_0 -3 + 187, 1, 2.15, 2.15 );--
setScaleKey( spep_0 -3 + 188, 1, 2.26, 2.26 );
setScaleKey( spep_0 -3 + 190, 1, 2.26, 2.26 );
setScaleKey( spep_0 -3 + 192, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 194, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 196, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 198, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 200, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 202, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 204, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 206, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 208, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 210, 1, 0.48, 0.48 );
setScaleKey( spep_0 -3 + 212, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 214, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 216, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 218, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 220, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 222, 1, 0.15, 0.15 );

setRotateKey( spep_0 -3 + 168, 1, -20.5 );
setRotateKey( spep_0 -3 + 177, 1, -20.5 );--
setRotateKey( spep_0 -3 + 178, 1, -64.9 );
setRotateKey( spep_0 -3 + 182, 1, -64.9 );
setRotateKey( spep_0 -3 + 184, 1, -64.8 );
setRotateKey( spep_0 -3 + 187, 1, -64.8 );--
setRotateKey( spep_0 -3 + 188, 1, -5.6 );
setRotateKey( spep_0 -3 + 190, 1, -5.6 );
setRotateKey( spep_0 -3 + 192, 1, 34.2 );
setRotateKey( spep_0 -3 + 194, 1, 50.5 );
setRotateKey( spep_0 -3 + 196, 1, 59.1 );
setRotateKey( spep_0 -3 + 198, 1, 64.4 );
setRotateKey( spep_0 -3 + 200, 1, 68 );
setRotateKey( spep_0 -3 + 202, 1, 70.4 );
setRotateKey( spep_0 -3 + 204, 1, 70.7 );
setRotateKey( spep_0 -3 + 206, 1, 71.4 );
setRotateKey( spep_0 -3 + 208, 1, 72.5 );
setRotateKey( spep_0 -3 + 210, 1, 74.2 );
setRotateKey( spep_0 -3 + 212, 1, 76.3 );
setRotateKey( spep_0 -3 + 214, 1, 78.9 );
setRotateKey( spep_0 -3 + 216, 1, 81.9 );
setRotateKey( spep_0 -3 + 218, 1, 85.5 );
setRotateKey( spep_0 -3 + 220, 1, 89.4 );
setRotateKey( spep_0 -3 + 222, 1, 89.4 );

--敵の動き3
setDisp( spep_0 -3 + 352, 1, 1 );
setDisp( spep_0 -3 + 380, 1, 0 );
changeAnime( spep_0 -3 + 352, 1, 5 );

setMoveKey( spep_0 -3 + 352, 1, -484.9, -295.9 , 0 );
setMoveKey( spep_0 -3 + 354, 1, -464.2, -280.5 , 0 );
setMoveKey( spep_0 -3 + 356, 1, -443.6, -265.1 , 0 );
setMoveKey( spep_0 -3 + 358, 1, -423, -249.7 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -402.3, -234.3 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -381.7, -219 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -361.1, -203.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -340.5, -188.2 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -319.8, -172.8 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -299.2, -157.5 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -278.6, -142.1 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -258, -126.7 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -237.3, -111.3 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -216.7, -95.9 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -216.7, -95.9 , 0 );

setScaleKey( spep_0 -3 + 352, 1, 4.81, 4.84 );
setScaleKey( spep_0 -3 + 354, 1, 4.75, 4.77 );
setScaleKey( spep_0 -3 + 356, 1, 4.69, 4.71 );
setScaleKey( spep_0 -3 + 358, 1, 4.63, 4.65 );
setScaleKey( spep_0 -3 + 360, 1, 4.57, 4.59 );
setScaleKey( spep_0 -3 + 362, 1, 4.51, 4.53 );
setScaleKey( spep_0 -3 + 364, 1, 4.45, 4.47 );
setScaleKey( spep_0 -3 + 366, 1, 4.39, 4.41 );
setScaleKey( spep_0 -3 + 368, 1, 4.33, 4.35 );
setScaleKey( spep_0 -3 + 370, 1, 4.27, 4.29 );
setScaleKey( spep_0 -3 + 372, 1, 4.21, 4.23 );
setScaleKey( spep_0 -3 + 374, 1, 4.15, 4.16 );
setScaleKey( spep_0 -3 + 376, 1, 4.09, 4.1 );
setScaleKey( spep_0 -3 + 380, 1, 4.02, 4.04 );

setRotateKey( spep_0 -3 + 352, 1, 61.7 );
setRotateKey( spep_0 -3 + 380, 1, 61.7 );

--敵の動き4
setDisp( spep_0 -3 + 418, 1, 1 );
setDisp( spep_0 -3 + 528, 1, 0 );
changeAnime( spep_0 -3 + 418, 1, 105 );
changeAnime( spep_0 -3 + 458, 1, 7 );
changeAnime( spep_0 -3 + 488, 1, 108 );

setMoveKey( spep_0 -3 + 418, 1, 31.3, 7.2 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 52.7, -14.2 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 30.8, -22.3 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 22.9, 1.6 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 37.5, 20.5 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 58.7, 2.7 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 60, -20 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 41.3, -2.8 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -40.8, 73 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -72.3, 102.1 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -94.6, 122.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -111.9, 138.7 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -125.6, 151.4 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -136.7, 161.7 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -145.5, 169.9 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -152.5, 176.3 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -157.7, 181.1 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -161.4, 184.5 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -163.5, 186.5 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -164.3, 187.2 , 0 );
setMoveKey( spep_0 -3 + 457, 1, -164.3, 187.2 , 0 );--
setMoveKey( spep_0 -3 + 458, 1, 254, 52.5 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 254, 52.5 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 253.9, 52.5 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 253.8, 52.4 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 253.4, 52.2 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 252.5, 51.8 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 250.7, 50.8 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 247.6, 49.2 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 242.4, 46.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 234.4, 42.3 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 222.4, 36 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 205.3, 27 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 181.3, 14.5 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 128.7, 17.4 , 0 );
setMoveKey( spep_0 -3 + 487, 1, 128.7, 17.4 , 0 );--
setMoveKey( spep_0 -3 + 488, 1, 182.8, -50.2 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 237.6, -4 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 280.6, 25.2 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 285.2, 67.5 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 278.1, 92 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 272.4, 101.6 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 269.1, 99.3 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 290, 100.5 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 290.4, 120.4 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 293.8, 127.7 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 296.8, 134 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 299.4, 139.5 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 301.6, 144.2 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 303.4, 148.2 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 305, 151.5 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 306.3, 154.2 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 307.2, 156.3 , 0 );
setMoveKey( spep_0 -3 + 522, 1, 307.9, 157.7 , 0 );
setMoveKey( spep_0 -3 + 524, 1, 308.3, 158.6 , 0 );
setMoveKey( spep_0 -3 + 526, 1, 308.5, 158.9 , 0 );
setMoveKey( spep_0 -3 + 528, 1, 308.5, 158.9 , 0 );

setScaleKey( spep_0 -3 + 418, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 432, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 434, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 436, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 438, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 440, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 442, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 444, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 446, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 448, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 450, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 452, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 454, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 456, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 457, 1, 0.17, 0.17 );--
setScaleKey( spep_0 -3 + 458, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 468, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 470, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 472, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 474, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 476, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 478, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 480, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 482, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 484, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 486, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 487, 1, 0.76, 0.76 );--
setScaleKey( spep_0 -3 + 488, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 490, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 492, 1, 1.48, 1.48 );
setScaleKey( spep_0 -3 + 494, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 496, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 498, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 500, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 502, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 504, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 506, 1, 0.48, 0.48 );
setScaleKey( spep_0 -3 + 508, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 510, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 512, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 514, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 516, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 518, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 520, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 522, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 524, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 528, 1, 0.11, 0.11 );

setRotateKey( spep_0 -3 + 418, 1, -43.5 );
setRotateKey( spep_0 -3 + 432, 1, -43.5 );
setRotateKey( spep_0 -3 + 434, 1, -50 );
setRotateKey( spep_0 -3 + 436, 1, -52.5 );
setRotateKey( spep_0 -3 + 438, 1, -54.3 );
setRotateKey( spep_0 -3 + 440, 1, -55.7 );
setRotateKey( spep_0 -3 + 442, 1, -56.8 );
setRotateKey( spep_0 -3 + 444, 1, -57.6 );
setRotateKey( spep_0 -3 + 446, 1, -58.4 );
setRotateKey( spep_0 -3 + 448, 1, -58.9 );
setRotateKey( spep_0 -3 + 450, 1, -59.3 );
setRotateKey( spep_0 -3 + 452, 1, -59.6 );
setRotateKey( spep_0 -3 + 454, 1, -59.8 );
setRotateKey( spep_0 -3 + 457, 1, -59.8 );--
setRotateKey( spep_0 -3 + 458, 1, -36.9 );
setRotateKey( spep_0 -3 + 487, 1, -36.9 );--
setRotateKey( spep_0 -3 + 488, 1, -22.9 );
setRotateKey( spep_0 -3 + 490, 1, -25.4 );
setRotateKey( spep_0 -3 + 492, 1, -26.4 );
setRotateKey( spep_0 -3 + 494, 1, -27.1 );
setRotateKey( spep_0 -3 + 496, 1, -27.7 );
setRotateKey( spep_0 -3 + 498, 1, -28.2 );
setRotateKey( spep_0 -3 + 500, 1, -28.6 );
setRotateKey( spep_0 -3 + 502, 1, -28.9 );
setRotateKey( spep_0 -3 + 504, 1, -29.2 );
setRotateKey( spep_0 -3 + 506, 1, -29.5 );
setRotateKey( spep_0 -3 + 508, 1, -29.7 );
setRotateKey( spep_0 -3 + 510, 1, -29.9 );
setRotateKey( spep_0 -3 + 512, 1, -30.1 );
setRotateKey( spep_0 -3 + 514, 1, -30.3 );
setRotateKey( spep_0 -3 + 516, 1, -30.4 );
setRotateKey( spep_0 -3 + 518, 1, -30.5 );
setRotateKey( spep_0 -3 + 520, 1, -30.6 );
setRotateKey( spep_0 -3 + 524, 1, -30.6 );
setRotateKey( spep_0 -3 + 526, 1, -30.7 );
setRotateKey( spep_0 -3 + 526, 1, -30.7 );
setRotateKey( spep_0 -3 + 528, 1, -30.7 );

--敵の動き5
setDisp( spep_0 -3 + 592, 1, 1 );
setDisp( spep_0 -3 + 630, 1, 0 );
changeAnime( spep_0 -3 + 592, 1, 5 );
changeAnime( spep_0 -3 + 594, 1, 7 );
changeAnime( spep_0 -3 + 612, 1, 5 );

setMoveKey( spep_0 -3 + 592, 1, -515.4, -743.3 , 0 );
setMoveKey( spep_0 -3 + 593, 1, -515.4, -743.3 , 0 );--
setMoveKey( spep_0 -3 + 594, 1, -278.4, -207.1 , 0 );
setMoveKey( spep_0 -3 + 596, 1, -308.4, -247.1 , 0 );
setMoveKey( spep_0 -3 + 598, 1, -295.9, -204.6 , 0 );
setMoveKey( spep_0 -3 + 600, 1, -273.4, -175 , 0 );
setMoveKey( spep_0 -3 + 602, 1, -232.6, -168.7 , 0 );
setMoveKey( spep_0 -3 + 604, 1, -221.7, -202.4 , 0 );
setMoveKey( spep_0 -3 + 606, 1, -255.9, -243.5 , 0 );
setMoveKey( spep_0 -3 + 608, 1, -313.4, -221.4 , 0 );
setMoveKey( spep_0 -3 + 610, 1, -275.9, -254.2 , 0 );
setMoveKey( spep_0 -3 + 611, 1, -275.9, -254.2 , 0 );--
setMoveKey( spep_0 -3 + 612, 1, 155.9, 68.4 , 0 );
setMoveKey( spep_0 -3 + 614, 1, 58.9, 130.5 , 0 );
setMoveKey( spep_0 -3 + 616, 1, -4.4, 171 , 0 );
setMoveKey( spep_0 -3 + 618, 1, -42.8, 195.5 , 0 );
setMoveKey( spep_0 -3 + 620, 1, -63.9, 209 , 0 );
setMoveKey( spep_0 -3 + 622, 1, -74, 215.4 , 0 );
setMoveKey( spep_0 -3 + 624, 1, -77.7, 217.8 , 0 );
setMoveKey( spep_0 -3 + 626, 1, -78.5, 218.4 , 0 );
setMoveKey( spep_0 -3 + 628, 1, -78.6, 218.4 , 0 );
setMoveKey( spep_0 -3 + 630, 1, -78.6, 218.4 , 0 );

setScaleKey( spep_0 -3 + 592, 1, 7.34, 7.34 );
setScaleKey( spep_0 -3 + 593, 1, 7.34, 7.34 );--
setScaleKey( spep_0 -3 + 594, 1, 2.29, 2.29 );
setScaleKey( spep_0 -3 + 611, 1, 2.29, 2.29 );--
setScaleKey( spep_0 -3 + 612, 1, 7.19, 7.19 );
setScaleKey( spep_0 -3 + 614, 1, 4.48, 4.48 );
setScaleKey( spep_0 -3 + 616, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 618, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 620, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 622, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 624, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 626, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 630, 1, 0.64, 0.64 );

setRotateKey( spep_0 -3 + 592, 1, 60.4 );
setRotateKey( spep_0 -3 + 593, 1, 60.4 );--
setRotateKey( spep_0 -3 + 594, 1, -68.2 );
setRotateKey( spep_0 -3 + 611, 1, -68.2 );--
setRotateKey( spep_0 -3 + 612, 1, -27.2 );
setRotateKey( spep_0 -3 + 614, 1, -27.2 );
setRotateKey( spep_0 -3 + 616, 1, -27.1 );
setRotateKey( spep_0 -3 + 630, 1, -27.1 );

-- ** 音 ** --
--目が光る
SE003 = playSeVer2( spep_0 + 62, 1283, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 62, 1240, "",spep_0 + 132, 0, 42, -1);
setPitch( spep_0 + 62, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );

--敵ヒット
SE005 = playSeVer2( spep_0 + 86, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 88 );
SE006 = playSeVer2( spep_0 + 86, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 84 );

--敵吹き飛ぶ
SE007 = playSeVer2( spep_0 + 102, 1258, "",spep_0 + 170, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 102, SE007, 61 );
SE008 = playSeVer2( spep_0 + 108, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE008, 80 );

--瞬間移動
SE009 = playSeVer2( spep_0 + 132, 1245, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 132, SE009, 55 );
SE010 = playSeVer2( spep_0 + 132, 1235, "",spep_0 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 132, SE010, 60 );
SE011 = playSeVer2( spep_0 + 134, 1109, "",spep_0 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 75 );
SE012 = playSeVer2( spep_0 + 156, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE012, 77 );
SE013 = playSeVer2( spep_0 + 156, 1187, "",spep_0 + 204, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 156, SE013, 77 );
SE014 = playSeVer2( spep_0 + 156, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE014, 58 );
SE015 = playSeVer2( spep_0 + 166, 1187, "",spep_0 + 218, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 166, SE015, 65 );
setPitch( spep_0 + 166, SE015, -300 );
setTimeStretch( SE015, 0.8, 30, 4 );
SE016 = playSeVer2( spep_0 + 166, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE016, 47 );
SE017 = playSeVer2( spep_0 + 186, 1187, "",spep_0 + 250, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 186, SE017, 68 );
SE018 = playSeVer2( spep_0 + 186, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE018, 56 );

--顔カットイン
SE019 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


--風が吹く
SE020 = playSeVer2( spep_0 + 216, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE020, 72 );
SE021 = playSeVer2( spep_0 + 250, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE021, 76 );
setPitch( spep_0 + 250, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );

--瞬間移動
SE022 = playSeVer2( spep_0 + 324, 1245, "",spep_0 + 368, 0, 28, 1.0);
setSeVolumeByWorkId( spep_0 + 324, SE022, 55 );
SE023 = playSeVer2( spep_0 + 324, 1235, "",spep_0 + 404, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 324, SE023, 65 );
SE024 = playSeVer2( spep_0 + 326, 1109, "",spep_0 + 378, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 326, SE024, 72 );

--構える
SE025 = playSeVer2( spep_0 + 366, 1233, "",spep_0 + 388, 0, 10, -1);
setPitch( spep_0 + 366, SE025, -500 );
setTimeStretch( SE025, 0.67, 30, 4 );

--振りかぶる
SE026 = playSeVer2( spep_0 + 388, 1116, "",spep_0 + 428, 0, 20, -1);
SE027 = playSeVer2( spep_0 + 388, 1004, "", 0, 0, 0, -1);

--パンチ
SE028 = playSeVer2( spep_0 + 408, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE028, 90 );
SE029 = playSeVer2( spep_0 + 408, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE029, 86 );

--瞬間移動
SE030 = playSeVer2( spep_0 + 434, 1245, "",spep_0 + 478, 0, 28, 1.0);
setSeVolumeByWorkId( spep_0 + 434, SE030, 54 );
SE031 = playSeVer2( spep_0 + 434, 1235, "",spep_0 + 508, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 434, SE031, 62 );
SE032 = playSeVer2( spep_0 + 436, 1109, "",spep_0 + 488, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 436, SE032, 77 );

--裏回転蹴り
SE033 = playSeVer2( spep_0 + 468, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 474, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE034, 82 );
SE035 = playSeVer2( spep_0 + 478, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE035, 86 );

--追いかける
SE036 = playSeVer2( spep_0 + 500, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE036, 127 );
SE037 = playSeVer2( spep_0 + 500, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE037, 138 );
SE038 = playSeVer2( spep_0 + 516, 1072, "", 0, 16, 0, -1);
setStartTimeMs( SE038,  267 );

--飛び蹴り
SE039 = playSeVer2( spep_0 + 558, 1314, "",spep_0 + 632, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 558, SE039, 140 );
SE040 = playSeVer2( spep_0 + 558, 1258, "",spep_0 + 664, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 558, SE040, 69 );
SE041 = playSeVer2( spep_0 + 558, 1182, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 574, 1067, "",spep_0 + 638, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 574, SE042, 75 );
SE043 = playSeVer2( spep_0 + 578, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE043, 120 );
SE044 = playSeVer2( spep_0 + 584, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE044, 81 );
SE045 = playSeVer2( spep_0 + 590, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 590, SE045, 76 );

--壁激突
SE047 = playSeVer2( spep_0 + 620, 1023, "",spep_0 + 702 + 2, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 620, SE047, 91 );
SE048 = playSeVer2( spep_0 + 620, 1159, "",spep_0 + 702 + 2, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 620, SE048, 79 );

--影増える
SE049 = playSeVer2( spep_0 + 638, 1112, "",spep_0 + 692, 0, 24, -1);
setPitch( spep_0 + 638, SE049, 500 );
setTimeStretch( SE049, 1.33, 30, 4 );
SE050 = playSeVer2( spep_0 + 658, 1112, "",spep_0 + 696, 0, 10, -1);
setPitch( spep_0 + 658, SE050, 500 );
setTimeStretch( SE050, 1.33, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 692;


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

--構える
SE052 = playSeVer2( spep_1 + 90, 1232, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_1 + 90, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE053, 72 );
setPitch( spep_1 + 90, SE053, -400 );
setTimeStretch( SE053, 0.73, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- かめはめ波溜める〜着弾爆発(418F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --かめはめ波溜める〜着弾爆発 ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 438, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 438, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 438, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 438, finish, 255 );

-- ** 音 ** --
--かめはめ波溜め
SE054 = playSeVer2( spep_2 + 24, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE054, 84 );
SE046 = playSeVer2( spep_2 + 26, 1210, "",spep_2 + 220, 66, 22, 0.6);
setSeVolumeByWorkId( spep_2 +26, SE046, 119 );
setStartTimeMs( SE046,  3517 );

--画面遷移
SE055 = playSeVer2( spep_2 + 40, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE055, 80 );
setPitch( spep_2 + 40, SE055, -200 );
setTimeStretch( SE055, 0.87, 30, 4 );

--かめはめ波光る
SE056 = playSeVer2( spep_2 + 90, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE056, 214 );

--画面遷移２
SE057 = playSeVer2( spep_2 + 90, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE057, 83 );
setPitch( spep_2 + 90, SE057, -200 );
setTimeStretch( SE057, 1.3, 30, 4 );
setBandpassFilter( spep_2 + 90, SE057, 24, 1021 );

--画面遷移３
SE058 = playSeVer2( spep_2 + 156, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE058, 78 );

--かめはめ波発射
SE059 = playSeVer2( spep_2 + 196, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE059, 83 );
SE060 = playSeVer2( spep_2 + 196, 1284, "",spep_2 + 344, 0, 94, -1);
setSeVolumeByWorkId( spep_2 + 196, SE060, 71 );
SE061 = playSeVer2( spep_2 + 196, 1285, "",spep_2 + 344, 0, 94, -1);
setSeVolumeByWorkId( spep_2 + 196, SE061, 80 );
SE062 = playSeVer2( spep_2 + 196, 1213, "",spep_2 + 318, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 196, SE062, 74 );
SE063 = playSeVer2( spep_2 + 196, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE063, 88 );

--爆発前光る
SE064 = playSeVer2( spep_2 + 296, 1302, "", 0, 0, 0, -1);

--爆発
SE065 = playSeVer2( spep_2 + 316, 1024, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 316, 1159, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 352, 1258, "", 0, 38, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE067, 58 );
SE068 = playSeVer2( spep_2 + 352, 1259, "", 0, 0, 0, -1);
setPitch( spep_2 + 352, SE068, -600 );
setTimeStretch( SE068, 0.6, 30, 4 );
setBandpassFilter( spep_2 + 352, SE068, 24, 600 );
SE069 = playSeVer2( spep_2 + 352, 1044, "", 0, 38, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE069, 162 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 438 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 318 );
endPhase( spep_2 + 428 );

end