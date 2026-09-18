--1024250:UR人造人間16号&18号_必殺技：デュアルデストロイド
--sp_effect_b4_00230
--sp2365

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
SP_01 = 159754; --開幕〜飛び出す16号 ef_001
SP_02 = 159755; --18号敵に迫る〜16号カメラに近づく ef_002
SP_03 = 159757; --18号敵に迫る〜16号カメラに近づく ef_003
SP_04 = 159759; --殴る16号〜カードカットインまで ef_004
SP_05 = 159761; --殴る16号〜カードカットインまで ef_005
SP_06 = 159763; --ビーム発射〜フィニッシュまで ef_006
SP_07 = 159764; --同上 ef_007

--敵側
SP_02r = 159756; --同上 敵側 ef_002r
SP_03r = 159758; --同上 敵側 ef_003r
SP_04r = 159760; --同上 敵側 ef_004r
SP_05r = 159762; --同上 敵側 ef_005r

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
-- 開幕〜飛び出す16号(178F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 178, 0x100, -1, 0, 0, 0 );  --開幕〜飛び出す16号 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 178, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 178, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 178 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 178, first_f, 0 );

spep_x = spep_0 + 6;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 65, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 60 );

--18号飛び込む
SE004 = playSeVer2( spep_0 + 108, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 110, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 110, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 124 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

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

-- ** 音 ** --
SE007 = playSeVer2( spep_0 + 136, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 136, 1314, "",spep_0 + 230, 0, 20, -1);

--18号向かっていく
SE009 = playSeVer2( spep_0 + 176, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 176, SE009, 39 );
setPitch( spep_0 + 176, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;


------------------------------------------------------
-- 18号敵に迫る〜16号カメラに近づく(312F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_1 + 0, SP_02, 312, 0x100, -1, 0, 0, 0 );  --18号敵に迫る〜16号カメラに近づく ef_002
setEffMoveKey( spep_1 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, move_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, move_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_f, 0 );
setEffRotateKey( spep_1 + 312, move_f, 0 );
setEffAlphaKey( spep_1 + 0, move_f, 255 );
setEffAlphaKey( spep_1 + 312 -1, move_f, 255 );
setEffAlphaKey( spep_1 + 312, move_f, 0 );

move_b = entryEffectLife( spep_1 + 0, SP_03, 312, 0x80, -1, 0, 0, 0 );  --18号敵に迫る〜16号カメラに近づく ef_003
setEffMoveKey( spep_1 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, move_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, move_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_b, 0 );
setEffRotateKey( spep_1 + 312, move_b, 0 );
setEffAlphaKey( spep_1 + 0, move_b, 255 );
setEffAlphaKey( spep_1 + 312 -1, move_b, 255 );
setEffAlphaKey( spep_1 + 312, move_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 112, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 -3 + 48, 1, 106 );
changeAnime( spep_1 -3 + 78, 1, 108 );

setMoveKey( spep_1+ 0, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_1+ 21, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 8.8, -40.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 8.4, -41.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 7.8, -42.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 7, -43.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 5.9, -45.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 4.5, -47.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 2.9, -50.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 1, -53.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -1.1, -56.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -3.5, -60.7 , 0 );
setMoveKey( spep_1 -3 + 47, 1, -4.5, -65.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 91, 46.2 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 91, 46.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 67.5, 26.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 73.1, 30 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 64, 21.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 76.2, 20.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 64.2, 34.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 69.5, 29 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 73.3, 25.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 70.2, 25.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 72.1, 26.5 , 0 );
setMoveKey( spep_1 -3 + 77, 1, 72.8, 27 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_1 -3 + 79, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 184.6, 142 , 0 );
setMoveKey( spep_1 -3 + 83, 1, 184.6, 142 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_1 -3 + 85, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 140.4, 109.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 128.7, 100.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 138.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 124.4, 111.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 134.2, 107.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 123.1, 98.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 133.4, 96.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 119.9, 109.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 123.9, 104.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 126.7, 100 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 122.8, 100 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 124.2, 100.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 124.2, 100.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.768, 0.768 );
setScaleKey( spep_1 -3 + 24, 1, 0.768, 0.768 );
setScaleKey( spep_1 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 28, 1, 0.804, 0.804 );
setScaleKey( spep_1 -3 + 30, 1, 0.852, 0.852 );
setScaleKey( spep_1 -3 + 32, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 34, 1, 0.972, 0.972 );
setScaleKey( spep_1 -3 + 36, 1, 1.068, 1.068 );
setScaleKey( spep_1 -3 + 38, 1, 1.176, 1.176 );
setScaleKey( spep_1 -3 + 40, 1, 1.296, 1.296 );
setScaleKey( spep_1 -3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 44, 1, 1.596, 1.596 );
setScaleKey( spep_1 -3 + 47, 1, 1.764, 1.764 );
setScaleKey( spep_1 -3 + 48, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 49, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 50, 1, 3.504, 3.504 );
setScaleKey( spep_1 -3 + 51, 1, 3.504, 3.504 );
setScaleKey( spep_1 -3 + 52, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 53, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 54, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 55, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 56, 1, 3, 3 );
setScaleKey( spep_1 -3 + 57, 1, 3, 3 );
setScaleKey( spep_1 -3 + 58, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 77, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 78, 1, 3.025, 3.025 );
setScaleKey( spep_1 -3 + 79, 1, 3.025, 3.025 );
setScaleKey( spep_1 -3 + 80, 1, 3.608, 3.608 );
setScaleKey( spep_1 -3 + 81, 1, 3.608, 3.608 );
setScaleKey( spep_1 -3 + 82, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 83, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 84, 1, 2.236, 2.236 );--
setScaleKey( spep_1 -3 + 85, 1, 2.236, 2.236 );--
setScaleKey( spep_1 -3 + 86, 1, 2.794, 2.794 );
setScaleKey( spep_1 -3 + 87, 1, 2.794, 2.794 );
setScaleKey( spep_1 -3 + 88, 1, 2.171, 2.171 );
setScaleKey( spep_1 -3 + 90, 1, 2.119, 2.119 );
setScaleKey( spep_1 -3 + 92, 1, 2.054, 2.054 );
setScaleKey( spep_1 -3 + 94, 1, 2.015, 2.015 );
setScaleKey( spep_1 -3 + 96, 1, 1.963, 1.963 );
setScaleKey( spep_1 -3 + 98, 1, 1.924, 1.924 );
setScaleKey( spep_1 -3 + 100, 1, 1.898, 1.898 );
setScaleKey( spep_1 -3 + 102, 1, 1.872, 1.872 );
setScaleKey( spep_1 -3 + 104, 1, 1.846, 1.846 );
setScaleKey( spep_1 -3 + 106, 1, 1.833, 1.833 );
setScaleKey( spep_1 -3 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 111, 1, 1.807, 1.807 );
setScaleKey( spep_1 -3 + 112, 1, 1.807, 1.807 );

setRotateKey( spep_1 + 0, 1, -4.1 );
setRotateKey( spep_1 -3 + 42, 1, -4.1 );
setRotateKey( spep_1 -3 + 44, 1, -4 );
setRotateKey( spep_1 -3 + 47, 1, -4 );
setRotateKey( spep_1 -3 + 48, 1, -52 );
setRotateKey( spep_1 -3 + 49, 1, -52 );
setRotateKey( spep_1 -3 + 50, 1, -50.7 );
setRotateKey( spep_1 -3 + 51, 1, -50.7 );
setRotateKey( spep_1 -3 + 52, 1, -50 );
setRotateKey( spep_1 -3 + 53, 1, -50 );
setRotateKey( spep_1 -3 + 54, 1, -49.7 );
setRotateKey( spep_1 -3 + 55, 1, -49.7 );
setRotateKey( spep_1 -3 + 56, 1, -49.4 );
setRotateKey( spep_1 -3 + 57, 1, -49.4 );
setRotateKey( spep_1 -3 + 58, 1, -49.1 );
setRotateKey( spep_1 -3 + 60, 1, -48.9 );
setRotateKey( spep_1 -3 + 62, 1, -48.7 );
setRotateKey( spep_1 -3 + 64, 1, -48.5 );
setRotateKey( spep_1 -3 + 66, 1, -48.4 );
setRotateKey( spep_1 -3 + 68, 1, -48.2 );
setRotateKey( spep_1 -3 + 70, 1, -48.1 );
setRotateKey( spep_1 -3 + 72, 1, -48.1 );
setRotateKey( spep_1 -3 + 74, 1, -48 );
setRotateKey( spep_1 -3 + 77, 1, -48 );
setRotateKey( spep_1 -3 + 78, 1, -2.5 );
setRotateKey( spep_1 -3 + 79, 1, -2.5 );
setRotateKey( spep_1 -3 + 80, 1, -2.6 );
setRotateKey( spep_1 -3 + 81, 1, -2.6 );
setRotateKey( spep_1 -3 + 82, 1, -2.7 );
setRotateKey( spep_1 -3 + 90, 1, -2.7 );
setRotateKey( spep_1 -3 + 92, 1, -2.6 );
setRotateKey( spep_1 -3 + 111, 1, -2.6 );
setRotateKey( spep_1 -3 + 112, 1, -2.6 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_1 -3 + 124, 1, 1 );
setDisp( spep_1 -3 + 180, 1, 0 );
changeAnime( spep_1 -3 + 124, 1, 108 );
changeAnime( spep_1 -3 + 146, 1, 107 );

setMoveKey( spep_1 -3 + 124, 1, 2035.9, -385.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 1943.5, -375.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 1759.3, -362.5 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 1492.2, -347 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 1153.2, -328.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 755.2, -308.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 313.4, -286.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 284.3, -269.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 255.6, -252.4 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 244.5, -252.2 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 317, -346.9 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 317, -346.9 , 0 );--
setMoveKey( spep_1 -3 + 146, 1, 344.5, -187.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 289.3, -158.2 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 223.9, -122.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 344.8, -192.8 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 251.5, -139.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 177.7, -104.1 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 124.4, -100 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 143.8, -84.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 145.2, -99.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 123.5, -84.1 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 122.7, -100.6 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 436.6, -169.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 686.7, -255.6 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 878.6, -308.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 1038.1, -354.5 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 1140.1, -380.5 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 1203, -403.8 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 1227, -402.2 , 0 );


setScaleKey( spep_1 -3 + 124, 1, 7.28, 7.28 );
setScaleKey( spep_1 -3 + 126, 1, 7.05, 7.05 );
setScaleKey( spep_1 -3 + 128, 1, 6.66, 6.66 );
setScaleKey( spep_1 -3 + 130, 1, 6.14, 6.14 );
setScaleKey( spep_1 -3 + 132, 1, 5.5, 5.5 );
setScaleKey( spep_1 -3 + 134, 1, 4.75, 4.75 );
setScaleKey( spep_1 -3 + 136, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 138, 1, 3.69, 3.69 );
setScaleKey( spep_1 -3 + 140, 1, 3.44, 3.44 );
setScaleKey( spep_1 -3 + 142, 1, 3.42, 3.42 );
setScaleKey( spep_1 -3 + 144, 1, 4.68, 4.68 );
setScaleKey( spep_1 -3 + 145, 1, 4.68, 4.68 );--
setScaleKey( spep_1 -3 + 146, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 148, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 150, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 152, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 154, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 156, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 158, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 162, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 166, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 168, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 170, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 172, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 174, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 176, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 180, 1, 1.81, 1.81 );

setRotateKey( spep_1 -3 + 124, 1, 17.7 );
setRotateKey( spep_1 -3 + 145, 1, 17.7 );--
setRotateKey( spep_1 -3 + 146, 1, 0 );
setRotateKey( spep_1 -3 + 180, 1, 0 );

-- ** 音 ** --
--18号パンチ
SE010 = playSeVer2( spep_1 + 36, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 44, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 44, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 44, 1187, "",spep_1 + 82, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 44, SE013, 60 );

--18号パンチ2
SE014 = playSeVer2( spep_1 + 78, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 78, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 78, 1190, "",spep_1 + 114, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 78, SE016, 68 );

--画面遷移
SE017 = playSeVer2( spep_1 + 84, 1072, "", 0, 0, 0, -1);

--18号キック
SE018 = playSeVer2( spep_1 + 134, 1123, "", 0, 0, 0, -1);

--16号ダッシュ
SE019 = playSeVer2( spep_1 + 180, 9, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 180, 1278, "",spep_1 + 354, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 180, SE020, 82 );

--土煙
SE021 = playSeVer2( spep_1 + 216, 1168, "",spep_1 + 354, 0, 74, -1);
setSeVolumeByWorkId( spep_1 + 216, SE021, 89 );

--16号向かってくる
SE022 = playSeVer2( spep_1 + 258, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 258, SE022, 55 );
setPitch( spep_1 + 258, SE022, -400 );
setTimeStretch( SE022, 1.05, 30, 4 );

--18号ジャンプ
SE023 = playSeVer2( spep_1 + 282, 1207, "",spep_1 + 354, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 282, SE023, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 312 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 312;


------------------------------------------------------
-- 殴る16号〜カードカットイン(324F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_2 + 0, SP_04, 324, 0x100, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで ef_004
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 324, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 324, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 324, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 324 -1, tame_f, 255 );
setEffAlphaKey( spep_2 + 324, tame_f, 0 );

tame_b = entryEffectLife( spep_2 + 0, SP_05, 324, 0x80, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで ef_005
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 324, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 324, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 324, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 324 -1, tame_b, 255 );
setEffAlphaKey( spep_2 + 324, tame_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 52, 1, 1 );
setDisp( spep_2 -3 + 104, 1, 0 );
changeAnime( spep_2 -3 + 52, 1, 5 );

setMoveKey( spep_2 -3 + 52, 1, 43.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 53, 1, 43.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 44.4, -124.7 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 44.4, -124.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 48.2, -134.5 , 0 );
setMoveKey( spep_2 -3 + 57, 1, 48.2, -134.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 54.5, -152.1 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 54.5, -152.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 71.3, -203.6 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 71.3, -203.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 68.6, -255.6 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 68.6, -255.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 71.3, -189.8 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 71.3, -189.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 60.7, -146.1 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 60.7, -146.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 76.8, -235.7 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 76.8, -235.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 60.5, -168.9 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 60.5, -168.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 47, -122.7 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 47, -122.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 67.5, -157.4 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 67.5, -157.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 44.4, -163.8 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 44.4, -163.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 55.6, -135.6 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 55.6, -135.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 36.3, -96.5 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 36.3, -96.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 32.1, -50.1 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 32.1, -50.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 15.5, -1.4 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 15.5, -1.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 8.9, 20.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 5, 19 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 9.4, 23 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 7, 17.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 10.7, 20.3 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 4.6, 25 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 4.6, 25.1 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 4.6, 25.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 4.5, 25.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 4.5, 25.2 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 2.898, 2.898 );
setScaleKey( spep_2 -3 + 53, 1, 2.898, 2.898 );
setScaleKey( spep_2 -3 + 54, 1, 2.907, 2.907 );
setScaleKey( spep_2 -3 + 55, 1, 2.907, 2.907 );
setScaleKey( spep_2 -3 + 56, 1, 3.096, 3.096 );
setScaleKey( spep_2 -3 + 57, 1, 3.096, 3.096 );
setScaleKey( spep_2 -3 + 58, 1, 3.465, 3.465 );
setScaleKey( spep_2 -3 + 59, 1, 3.465, 3.465 );
setScaleKey( spep_2 -3 + 60, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 61, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 62, 1, 5.823, 5.823 );
setScaleKey( spep_2 -3 + 63, 1, 5.823, 5.823 );
setScaleKey( spep_2 -3 + 64, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 65, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 66, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 67, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 68, 1, 4.995, 4.995 );
setScaleKey( spep_2 -3 + 69, 1, 4.995, 4.995 );
setScaleKey( spep_2 -3 + 70, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 71, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 72, 1, 3.285, 3.285 );
setScaleKey( spep_2 -3 + 73, 1, 3.285, 3.285 );
setScaleKey( spep_2 -3 + 74, 1, 3.249, 3.249 );
setScaleKey( spep_2 -3 + 75, 1, 3.249, 3.249 );
setScaleKey( spep_2 -3 + 76, 1, 3.213, 3.213 );
setScaleKey( spep_2 -3 + 77, 1, 3.213, 3.213 );
setScaleKey( spep_2 -3 + 78, 1, 3.186, 3.186 );
setScaleKey( spep_2 -3 + 79, 1, 3.186, 3.186 );
setScaleKey( spep_2 -3 + 80, 1, 2.484, 2.484 );
setScaleKey( spep_2 -3 + 81, 1, 2.484, 2.484 );
setScaleKey( spep_2 -3 + 82, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 83, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 84, 1, 1.125, 1.125 );
setScaleKey( spep_2 -3 + 85, 1, 1.125, 1.125 );
setScaleKey( spep_2 -3 + 86, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 88, 1, 0.513, 0.513 );
setScaleKey( spep_2 -3 + 90, 1, 0.486, 0.486 );
setScaleKey( spep_2 -3 + 92, 1, 0.459, 0.459 );
setScaleKey( spep_2 -3 + 94, 1, 0.441, 0.441 );
setScaleKey( spep_2 -3 + 96, 1, 0.432, 0.432 );
setScaleKey( spep_2 -3 + 98, 1, 0.423, 0.423 );
setScaleKey( spep_2 -3 + 100, 1, 0.414, 0.414 );
setScaleKey( spep_2 -3 + 104, 1, 0.414, 0.414 );

setRotateKey( spep_2 -3 + 52, 1, -6.3 );
setRotateKey( spep_2 -3 + 104, 1, -6.3 );

-- ** 音 ** --
--振りかぶる
SE024 = playSeVer2( spep_2 + 18, 1116, "",spep_2 + 62, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 18, SE024, 146 );
SE025 = playSeVer2( spep_2 + 24, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE025, 132 );

--16号パンチ
SE026 = playSeVer2( spep_2 + 60, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE026, 78 );
SE027 = playSeVer2( spep_2 + 60, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE027, 80 );

--かがむ
SE028 = playSeVer2( spep_2 + 106, 1135, "",spep_2 + 122, 0, 4, -1);

--16号ジャンプする
SE029 = playSeVer2( spep_2 + 120, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE029, 94 );
SE030 = playSeVer2( spep_2 + 120, 1207, "",spep_2 + 208, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 120, SE030, 86 );

--二人空中合流
SE031 = playSeVer2( spep_2 + 152, 44, "",spep_2 + 210, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 152, SE031, 89 );

--気弾溜め
SE032 = playSeVer2( spep_2 + 206, 1003, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 214, 1154, "",spep_2 + 334, 0, 10, -1);
SE034 = playSeVer2( spep_2 + 214, 1295, "",spep_2 + 334, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 214, SE034, 138 );
SE035 = playSeVer2( spep_2 + 214, 1282, "",spep_2 + 334, 0, 10, -1);
SE036 = playSeVer2( spep_2 + 214, 1136, "",spep_2 + 334, 0, 10, -1);
SE037 = playSeVer2( spep_2 + 222, 1274, "",spep_2 + 334, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 324 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 324;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_3, SE_05);
	speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_3, SE_05);
	speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_3 + 0, SE_05 );

--気弾発射
SE039 = playSeVer2( spep_3 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE039, 84 );
SE040 = playSeVer2( spep_3 + 88, 1177, "",spep_3 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 88, SE040, 89 );
SE041 = playSeVer2( spep_3 + 88, 1213, "",spep_3 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 88, SE041, 88 );
SE042 = playSeVer2( spep_3 + 88, 1145, "",spep_3 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 88, SE042, 87 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- ビーム発射〜フィニッシュ(196F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ビーム発射〜フィニッシュまで ef_006
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 196, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 196, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 196, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 196, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ビーム発射〜フィニッシュまで ef_007
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 196, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 196, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 196, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 196, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 -3 + 48, 1, 1 );
setDisp( spep_4 -3 + 82, 1, 0 );
changeAnime( spep_4 -3 + 48, 1, 106 );

setMoveKey( spep_4 -3 + 48, 1, -5.2, 11.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 7.8, 0 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -4.2, 0.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 6.6, 12.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -3.3, 2.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 2.8, 3.9 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -2.5, 9.7 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 4.3, 3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 4.6, 9.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -2.9, 3.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -2.6, 10.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 5, 3.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -4.3, 4.1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 3.2, 10.8 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 3.6, 3.5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -2.8, 12.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -2.8, 12.2 , 0 );

setScaleKey( spep_4 -3 + 48, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 50, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 54, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 58, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 60, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 62, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 64, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 68, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 70, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 72, 1, 1, 1 );
setScaleKey( spep_4 -3 + 74, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 76, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 78, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 82, 1, 1.37, 1.37 );

setRotateKey( spep_4 -3 + 48, 1, -71.5 );
setRotateKey( spep_4 -3 + 82, 1, -71.5 );

-- ** 音 ** --
--気弾飛んでいく
SE043 = playSeVer2( spep_4 + 34, 1161, "",spep_4 + 90, 0, 16, -1);
SE044 = playSeVer2( spep_4 + 34, 1021, "",spep_4 + 90, 0, 16, -1);

--爆発
SE045 = playSeVer2( spep_4 + 74, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_4 + 92, 1160, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_4 + 110, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 78 );
endPhase( spep_4 + 186 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜飛び出す16号(178F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 178, 0x100, -1, 0, 0, 0 );  --開幕〜飛び出す16号 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 178, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 178, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 178 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 178, first_f, 0 );

spep_x = spep_0 + 6;
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 65, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
--SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 60 );

--18号飛び込む
SE004 = playSeVer2( spep_0 + 108, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 110, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 110, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 124 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

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

-- ** 音 ** --
SE007 = playSeVer2( spep_0 + 136, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 136, 1314, "",spep_0 + 230, 0, 20, -1);

--18号向かっていく
SE009 = playSeVer2( spep_0 + 176, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 176, SE009, 39 );
setPitch( spep_0 + 176, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;


------------------------------------------------------
-- 18号敵に迫る〜16号カメラに近づく(312F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_1 + 0, SP_02r, 312, 0x100, -1, 0, 0, 0 );  --18号敵に迫る〜16号カメラに近づく ef_002
setEffMoveKey( spep_1 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, move_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, move_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_f, 0 );
setEffRotateKey( spep_1 + 312, move_f, 0 );
setEffAlphaKey( spep_1 + 0, move_f, 255 );
setEffAlphaKey( spep_1 + 312 -1, move_f, 255 );
setEffAlphaKey( spep_1 + 312, move_f, 0 );

move_b = entryEffectLife( spep_1 + 0, SP_03r, 312, 0x80, -1, 0, 0, 0 );  --18号敵に迫る〜16号カメラに近づく ef_003
setEffMoveKey( spep_1 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 312, move_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 312, move_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_b, 0 );
setEffRotateKey( spep_1 + 312, move_b, 0 );
setEffAlphaKey( spep_1 + 0, move_b, 255 );
setEffAlphaKey( spep_1 + 312 -1, move_b, 255 );
setEffAlphaKey( spep_1 + 312, move_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 112, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 -3 + 48, 1, 106 );
changeAnime( spep_1 -3 + 78, 1, 108 );

setMoveKey( spep_1+ 0, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_1+ 21, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 8.9, -40.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 8.9, -40.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 8.8, -40.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 8.4, -41.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 7.8, -42.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 7, -43.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 5.9, -45.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 4.5, -47.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 2.9, -50.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 1, -53.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -1.1, -56.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -3.5, -60.7 , 0 );
setMoveKey( spep_1 -3 + 47, 1, -4.5, -65.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 55.6, 36.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 91, 46.2 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 91, 46.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 83.9, 36.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 65.2, 26.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 94.4, 39.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 67.5, 26.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 73.1, 30 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 64, 21.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 76.2, 20.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 64.2, 34.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 69.5, 29 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 73.3, 25.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 70.2, 25.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 72.1, 26.5 , 0 );
setMoveKey( spep_1 -3 + 77, 1, 72.8, 27 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_1 -3 + 79, 1, 150.8, 16.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 210.1, 100.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 184.6, 142 , 0 );
setMoveKey( spep_1 -3 + 83, 1, 184.6, 142 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_1 -3 + 85, 1, 138.6, 105.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 202.1, 159.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 140.4, 109.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 128.7, 100.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 138.5, 98.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 124.4, 111.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 134.2, 107.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 123.1, 98.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 133.4, 96.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 119.9, 109.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 123.9, 104.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 126.7, 100 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 122.8, 100 , 0 );
setMoveKey( spep_1 -3 + 111, 1, 124.2, 100.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 124.2, 100.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.768, 0.768 );
setScaleKey( spep_1 -3 + 24, 1, 0.768, 0.768 );
setScaleKey( spep_1 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 28, 1, 0.804, 0.804 );
setScaleKey( spep_1 -3 + 30, 1, 0.852, 0.852 );
setScaleKey( spep_1 -3 + 32, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 34, 1, 0.972, 0.972 );
setScaleKey( spep_1 -3 + 36, 1, 1.068, 1.068 );
setScaleKey( spep_1 -3 + 38, 1, 1.176, 1.176 );
setScaleKey( spep_1 -3 + 40, 1, 1.296, 1.296 );
setScaleKey( spep_1 -3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 44, 1, 1.596, 1.596 );
setScaleKey( spep_1 -3 + 47, 1, 1.764, 1.764 );
setScaleKey( spep_1 -3 + 48, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 49, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 50, 1, 3.504, 3.504 );
setScaleKey( spep_1 -3 + 51, 1, 3.504, 3.504 );
setScaleKey( spep_1 -3 + 52, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 53, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 54, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 55, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 56, 1, 3, 3 );
setScaleKey( spep_1 -3 + 57, 1, 3, 3 );
setScaleKey( spep_1 -3 + 58, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 77, 1, 2.004, 2.004 );
setScaleKey( spep_1 -3 + 78, 1, 3.025, 3.025 );
setScaleKey( spep_1 -3 + 79, 1, 3.025, 3.025 );
setScaleKey( spep_1 -3 + 80, 1, 3.608, 3.608 );
setScaleKey( spep_1 -3 + 81, 1, 3.608, 3.608 );
setScaleKey( spep_1 -3 + 82, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 83, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 84, 1, 2.236, 2.236 );--
setScaleKey( spep_1 -3 + 85, 1, 2.236, 2.236 );--
setScaleKey( spep_1 -3 + 86, 1, 2.794, 2.794 );
setScaleKey( spep_1 -3 + 87, 1, 2.794, 2.794 );
setScaleKey( spep_1 -3 + 88, 1, 2.171, 2.171 );
setScaleKey( spep_1 -3 + 90, 1, 2.119, 2.119 );
setScaleKey( spep_1 -3 + 92, 1, 2.054, 2.054 );
setScaleKey( spep_1 -3 + 94, 1, 2.015, 2.015 );
setScaleKey( spep_1 -3 + 96, 1, 1.963, 1.963 );
setScaleKey( spep_1 -3 + 98, 1, 1.924, 1.924 );
setScaleKey( spep_1 -3 + 100, 1, 1.898, 1.898 );
setScaleKey( spep_1 -3 + 102, 1, 1.872, 1.872 );
setScaleKey( spep_1 -3 + 104, 1, 1.846, 1.846 );
setScaleKey( spep_1 -3 + 106, 1, 1.833, 1.833 );
setScaleKey( spep_1 -3 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 111, 1, 1.807, 1.807 );
setScaleKey( spep_1 -3 + 112, 1, 1.807, 1.807 );

setRotateKey( spep_1 + 0, 1, -4.1 );
setRotateKey( spep_1 -3 + 42, 1, -4.1 );
setRotateKey( spep_1 -3 + 44, 1, -4 );
setRotateKey( spep_1 -3 + 47, 1, -4 );
setRotateKey( spep_1 -3 + 48, 1, -52 );
setRotateKey( spep_1 -3 + 49, 1, -52 );
setRotateKey( spep_1 -3 + 50, 1, -50.7 );
setRotateKey( spep_1 -3 + 51, 1, -50.7 );
setRotateKey( spep_1 -3 + 52, 1, -50 );
setRotateKey( spep_1 -3 + 53, 1, -50 );
setRotateKey( spep_1 -3 + 54, 1, -49.7 );
setRotateKey( spep_1 -3 + 55, 1, -49.7 );
setRotateKey( spep_1 -3 + 56, 1, -49.4 );
setRotateKey( spep_1 -3 + 57, 1, -49.4 );
setRotateKey( spep_1 -3 + 58, 1, -49.1 );
setRotateKey( spep_1 -3 + 60, 1, -48.9 );
setRotateKey( spep_1 -3 + 62, 1, -48.7 );
setRotateKey( spep_1 -3 + 64, 1, -48.5 );
setRotateKey( spep_1 -3 + 66, 1, -48.4 );
setRotateKey( spep_1 -3 + 68, 1, -48.2 );
setRotateKey( spep_1 -3 + 70, 1, -48.1 );
setRotateKey( spep_1 -3 + 72, 1, -48.1 );
setRotateKey( spep_1 -3 + 74, 1, -48 );
setRotateKey( spep_1 -3 + 77, 1, -48 );
setRotateKey( spep_1 -3 + 78, 1, -2.5 );
setRotateKey( spep_1 -3 + 79, 1, -2.5 );
setRotateKey( spep_1 -3 + 80, 1, -2.6 );
setRotateKey( spep_1 -3 + 81, 1, -2.6 );
setRotateKey( spep_1 -3 + 82, 1, -2.7 );
setRotateKey( spep_1 -3 + 90, 1, -2.7 );
setRotateKey( spep_1 -3 + 92, 1, -2.6 );
setRotateKey( spep_1 -3 + 111, 1, -2.6 );
setRotateKey( spep_1 -3 + 112, 1, -2.6 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_1 -3 + 124, 1, 1 );
setDisp( spep_1 -3 + 180, 1, 0 );
changeAnime( spep_1 -3 + 124, 1, 108 );
changeAnime( spep_1 -3 + 146, 1, 107 );

setMoveKey( spep_1 -3 + 124, 1, 2035.9, -385.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 1943.5, -375.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 1759.3, -362.5 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 1492.2, -347 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 1153.2, -328.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 755.2, -308.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 313.4, -286.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 284.3, -269.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 255.6, -252.4 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 244.5, -252.2 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 317, -346.9 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 317, -346.9 , 0 );--
setMoveKey( spep_1 -3 + 146, 1, 344.5, -187.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 289.3, -158.2 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 223.9, -122.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 344.8, -192.8 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 251.5, -139.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 177.7, -104.1 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 124.4, -100 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 143.8, -84.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 145.2, -99.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 123.5, -84.1 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 122.7, -100.6 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 436.6, -169.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 686.7, -255.6 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 878.6, -308.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 1038.1, -354.5 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 1140.1, -380.5 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 1203, -403.8 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 1227, -402.2 , 0 );


setScaleKey( spep_1 -3 + 124, 1, 7.28, 7.28 );
setScaleKey( spep_1 -3 + 126, 1, 7.05, 7.05 );
setScaleKey( spep_1 -3 + 128, 1, 6.66, 6.66 );
setScaleKey( spep_1 -3 + 130, 1, 6.14, 6.14 );
setScaleKey( spep_1 -3 + 132, 1, 5.5, 5.5 );
setScaleKey( spep_1 -3 + 134, 1, 4.75, 4.75 );
setScaleKey( spep_1 -3 + 136, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 138, 1, 3.69, 3.69 );
setScaleKey( spep_1 -3 + 140, 1, 3.44, 3.44 );
setScaleKey( spep_1 -3 + 142, 1, 3.42, 3.42 );
setScaleKey( spep_1 -3 + 144, 1, 4.68, 4.68 );
setScaleKey( spep_1 -3 + 145, 1, 4.68, 4.68 );--
setScaleKey( spep_1 -3 + 146, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 148, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 150, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 152, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 154, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 156, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 158, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 160, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 162, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 166, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 168, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 170, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 172, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 174, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 176, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 180, 1, 1.81, 1.81 );

setRotateKey( spep_1 -3 + 124, 1, 17.7 );
setRotateKey( spep_1 -3 + 145, 1, 17.7 );--
setRotateKey( spep_1 -3 + 146, 1, 0 );
setRotateKey( spep_1 -3 + 180, 1, 0 );

-- ** 音 ** --
--18号パンチ
SE010 = playSeVer2( spep_1 + 36, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 44, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 44, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 44, 1187, "",spep_1 + 82, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 44, SE013, 60 );

--18号パンチ2
SE014 = playSeVer2( spep_1 + 78, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 78, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 78, 1190, "",spep_1 + 114, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 78, SE016, 68 );

--画面遷移
SE017 = playSeVer2( spep_1 + 84, 1072, "", 0, 0, 0, -1);

--18号キック
SE018 = playSeVer2( spep_1 + 134, 1123, "", 0, 0, 0, -1);

--16号ダッシュ
SE019 = playSeVer2( spep_1 + 180, 9, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 180, 1278, "",spep_1 + 354, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 180, SE020, 82 );

--土煙
SE021 = playSeVer2( spep_1 + 216, 1168, "",spep_1 + 354, 0, 74, -1);
setSeVolumeByWorkId( spep_1 + 216, SE021, 89 );

--16号向かってくる
SE022 = playSeVer2( spep_1 + 258, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 258, SE022, 55 );
setPitch( spep_1 + 258, SE022, -400 );
setTimeStretch( SE022, 1.05, 30, 4 );

--18号ジャンプ
SE023 = playSeVer2( spep_1 + 282, 1207, "",spep_1 + 354, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 282, SE023, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 312 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 312;


------------------------------------------------------
-- 殴る16号〜カードカットイン(324F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_2 + 0, SP_04r, 324, 0x100, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで ef_004
setEffMoveKey( spep_2 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 324, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 324, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_f, 0 );
setEffRotateKey( spep_2 + 324, tame_f, 0 );
setEffAlphaKey( spep_2 + 0, tame_f, 255 );
setEffAlphaKey( spep_2 + 324 -1, tame_f, 255 );
setEffAlphaKey( spep_2 + 324, tame_f, 0 );

tame_b = entryEffectLife( spep_2 + 0, SP_05r, 324, 0x80, -1, 0, 0, 0 );  --殴る16号〜カードカットインまで  ef_005
setEffMoveKey( spep_2 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 324, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 324, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame_b, 0 );
setEffRotateKey( spep_2 + 324, tame_b, 0 );
setEffAlphaKey( spep_2 + 0, tame_b, 255 );
setEffAlphaKey( spep_2 + 324 -1, tame_b, 255 );
setEffAlphaKey( spep_2 + 324, tame_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 52, 1, 1 );
setDisp( spep_2 -3 + 104, 1, 0 );
changeAnime( spep_2 -3 + 52, 1, 105 );

setMoveKey( spep_2 -3 + 52, 1, -43.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 53, 1, -43.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -44.4, -124.7 , 0 );
setMoveKey( spep_2 -3 + 55, 1, -44.4, -124.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -48.2, -134.5 , 0 );
setMoveKey( spep_2 -3 + 57, 1, -48.2, -134.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -54.5, -152.1 , 0 );
setMoveKey( spep_2 -3 + 59, 1, -54.5, -152.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -71.3, -203.6 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -71.3, -203.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -68.6, -255.6 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -68.6, -255.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -71.3, -189.8 , 0 );
setMoveKey( spep_2 -3 + 65, 1, -71.3, -189.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -60.7, -146.1 , 0 );
setMoveKey( spep_2 -3 + 67, 1, -60.7, -146.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -76.8, -235.7 , 0 );
setMoveKey( spep_2 -3 + 69, 1, -76.8, -235.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -60.5, -168.9 , 0 );
setMoveKey( spep_2 -3 + 71, 1, -60.5, -168.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -47, -122.7 , 0 );
setMoveKey( spep_2 -3 + 73, 1, -47, -122.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -67.5, -157.4 , 0 );
setMoveKey( spep_2 -3 + 75, 1, -67.5, -157.4 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -44.4, -163.8 , 0 );
setMoveKey( spep_2 -3 + 77, 1, -44.4, -163.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -55.6, -135.6 , 0 );
setMoveKey( spep_2 -3 + 79, 1, -55.6, -135.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -36.3, -96.5 , 0 );
setMoveKey( spep_2 -3 + 81, 1, -36.3, -96.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -32.1, -50.1 , 0 );
setMoveKey( spep_2 -3 + 83, 1, -32.1, -50.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -15.5, -1.4 , 0 );
setMoveKey( spep_2 -3 + 85, 1, -15.5, -1.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -8.9, 20.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -5, 19 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -9.4, 23 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -7, 17.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -10.7, 20.3 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -4.6, 25 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -4.6, 25.1 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -4.6, 25.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -4.5, 25.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -4.5, 25.2 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 2.898, 2.898 );
setScaleKey( spep_2 -3 + 53, 1, 2.898, 2.898 );
setScaleKey( spep_2 -3 + 54, 1, 2.907, 2.907 );
setScaleKey( spep_2 -3 + 55, 1, 2.907, 2.907 );
setScaleKey( spep_2 -3 + 56, 1, 3.096, 3.096 );
setScaleKey( spep_2 -3 + 57, 1, 3.096, 3.096 );
setScaleKey( spep_2 -3 + 58, 1, 3.465, 3.465 );
setScaleKey( spep_2 -3 + 59, 1, 3.465, 3.465 );
setScaleKey( spep_2 -3 + 60, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 61, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 62, 1, 5.823, 5.823 );
setScaleKey( spep_2 -3 + 63, 1, 5.823, 5.823 );
setScaleKey( spep_2 -3 + 64, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 65, 1, 4.572, 4.572 );
setScaleKey( spep_2 -3 + 66, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 67, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 68, 1, 4.995, 4.995 );
setScaleKey( spep_2 -3 + 69, 1, 4.995, 4.995 );
setScaleKey( spep_2 -3 + 70, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 71, 1, 3.33, 3.33 );
setScaleKey( spep_2 -3 + 72, 1, 3.285, 3.285 );
setScaleKey( spep_2 -3 + 73, 1, 3.285, 3.285 );
setScaleKey( spep_2 -3 + 74, 1, 3.249, 3.249 );
setScaleKey( spep_2 -3 + 75, 1, 3.249, 3.249 );
setScaleKey( spep_2 -3 + 76, 1, 3.213, 3.213 );
setScaleKey( spep_2 -3 + 77, 1, 3.213, 3.213 );
setScaleKey( spep_2 -3 + 78, 1, 3.186, 3.186 );
setScaleKey( spep_2 -3 + 79, 1, 3.186, 3.186 );
setScaleKey( spep_2 -3 + 80, 1, 2.484, 2.484 );
setScaleKey( spep_2 -3 + 81, 1, 2.484, 2.484 );
setScaleKey( spep_2 -3 + 82, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 83, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 84, 1, 1.125, 1.125 );
setScaleKey( spep_2 -3 + 85, 1, 1.125, 1.125 );
setScaleKey( spep_2 -3 + 86, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 88, 1, 0.513, 0.513 );
setScaleKey( spep_2 -3 + 90, 1, 0.486, 0.486 );
setScaleKey( spep_2 -3 + 92, 1, 0.459, 0.459 );
setScaleKey( spep_2 -3 + 94, 1, 0.441, 0.441 );
setScaleKey( spep_2 -3 + 96, 1, 0.432, 0.432 );
setScaleKey( spep_2 -3 + 98, 1, 0.423, 0.423 );
setScaleKey( spep_2 -3 + 100, 1, 0.414, 0.414 );
setScaleKey( spep_2 -3 + 104, 1, 0.414, 0.414 );

setRotateKey( spep_2 -3 + 52, 1, 6.3 );
setRotateKey( spep_2 -3 + 104, 1, 6.3 );

-- ** 音 ** --
--振りかぶる
SE024 = playSeVer2( spep_2 + 18, 1116, "",spep_2 + 62, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 18, SE024, 146 );
SE025 = playSeVer2( spep_2 + 24, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE025, 132 );

--16号パンチ
SE026 = playSeVer2( spep_2 + 60, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE026, 78 );
SE027 = playSeVer2( spep_2 + 60, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE027, 80 );

--かがむ
SE028 = playSeVer2( spep_2 + 106, 1135, "",spep_2 + 122, 0, 4, -1);

--16号ジャンプする
SE029 = playSeVer2( spep_2 + 120, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE029, 94 );
SE030 = playSeVer2( spep_2 + 120, 1207, "",spep_2 + 208, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 120, SE030, 86 );

--二人空中合流
SE031 = playSeVer2( spep_2 + 152, 44, "",spep_2 + 210, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 152, SE031, 89 );

--気弾溜め
SE032 = playSeVer2( spep_2 + 206, 1003, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 214, 1154, "",spep_2 + 334, 0, 10, -1);
SE034 = playSeVer2( spep_2 + 214, 1295, "",spep_2 + 334, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 214, SE034, 138 );
SE035 = playSeVer2( spep_2 + 214, 1282, "",spep_2 + 334, 0, 10, -1);
SE036 = playSeVer2( spep_2 + 214, 1136, "",spep_2 + 334, 0, 10, -1);
SE037 = playSeVer2( spep_2 + 222, 1274, "",spep_2 + 334, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 324 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 324;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--気弾発射
SE039 = playSeVer2( spep_3 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE039, 84 );
SE040 = playSeVer2( spep_3 + 88, 1177, "",spep_3 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 88, SE040, 89 );
SE041 = playSeVer2( spep_3 + 88, 1213, "",spep_3 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 88, SE041, 88 );
SE042 = playSeVer2( spep_3 + 88, 1145, "",spep_3 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 88, SE042, 87 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- ビーム発射〜フィニッシュ(196F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ビーム発射〜フィニッシュまで  ef_006
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 196, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 196, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 196, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 196, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ビーム発射〜フィニッシュまで   ef_007
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 196, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 196, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 196, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 196, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 -3 + 48, 1, 1 );
setDisp( spep_4 -3 + 82, 1, 0 );
changeAnime( spep_4 -3 + 48, 1, 6 );

setMoveKey( spep_4 -3 + 48, 1, 5.2, 11.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -7.8, 0 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 4.2, 0.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -6.6, 12.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 3.3, 2.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -2.8, 3.9 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 2.5, 9.7 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -4.3, 3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -4.6, 9.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 2.9, 3.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 2.6, 10.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -5, 3.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 4.3, 4.1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -3.2, 10.8 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -3.6, 3.5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 2.8, 12.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 2.8, 12.2 , 0 );

setScaleKey( spep_4 -3 + 48, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 50, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 54, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 58, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 60, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 62, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 64, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 68, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 70, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 72, 1, 1, 1 );
setScaleKey( spep_4 -3 + 74, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 76, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 78, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 82, 1, 1.37, 1.37 );

setRotateKey( spep_4 -3 + 48, 1, 71.5 );
setRotateKey( spep_4 -3 + 82, 1, 71.5 );

-- ** 音 ** --
--気弾飛んでいく
SE043 = playSeVer2( spep_4 + 34, 1161, "",spep_4 + 90, 0, 16, -1);
SE044 = playSeVer2( spep_4 + 34, 1021, "",spep_4 + 90, 0, 16, -1);

--爆発
SE045 = playSeVer2( spep_4 + 74, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_4 + 92, 1160, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_4 + 110, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 78 );
endPhase( spep_4 + 186 );

end