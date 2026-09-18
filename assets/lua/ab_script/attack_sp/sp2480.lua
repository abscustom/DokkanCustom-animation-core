--1025820:UR超サイヤ人3ゴテンクス＆ピッコロ_激突ウルトラブウブウバレーボール
--sp_effect_a9_00100

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
SP_01 = 161302; --変なポーズ～ドーナツ発射  ef_001
SP_02 = 161304; --ドーナツが敵をボールにする ef_002_front
SP_03 = 161305; --ドーナツが敵をボールにする ef_002_back
SP_04 = 161308; --キャッチ～いくわよ～ボール打ち上げ～トス  ef_003
SP_05 = 161310; --アタック～ボール落下～フィニッシュ  ef_004

--敵側
SP_01r = 161303; --変なポーズ～ドーナツ発射 ef_001_r
SP_02r = 161306; --ドーナツが敵をボールにする ef_002_r_front
SP_03r = 161307; --ドーナツが敵をボールにする ef_002_r_back
SP_04r = 161309; --キャッチ～いくわよ～ボール打ち上げ～トス ef_003_r
SP_05r = 161311; --アタック～ボール落下～フィニッシュ  ef_004_r


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

ENABLE_AUTO_TIME_STRETCH(0.7);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 変なポーズ～ドーナツ発射(184F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --変なポーズ～ドーナツ発射   ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 184, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 184, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 184, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 184 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 184 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 184, first_f, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--入り
SE002 = playSeVer2( spep_0 + 16, 8, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 63 );

--ポーズとる
SE004 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 160 );

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );

--イナヅマ
SE008 = playSeVer2( spep_0 + 76, 1147, "", spep_0 + 194, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 76 );

--オーラ
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 63 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 63 );

--気弾溜め
SE011 = playSeVer2( spep_0 + 128, 1329, "", spep_0 + 204, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 128, SE011, 200 );
setPitch( spep_0 + 128, SE011, -1100 );
setTimeStretch( SE011, 0.27, 30, 4 );


--オーラ
SE012 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE012, 63 );

--気弾の輪1
SE013 = playSeVer2( spep_0 + 152, 1027, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 152, SE013, 76 );
SE014 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 152, SE014, 88 );
setPitch( spep_0 + 152, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE015 = playSeVer2( spep_0 + 152, 1028, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 152, SE015, 81 );

--気弾の輪2
SE016 = playSeVer2( spep_0 + 160, 1110, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 160, SE016, 86 );
setPitch( spep_0 + 160, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_0 + 160, 1028, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 160, SE017, 72 );

--オーラ
SE018 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE018, 63 );

--気弾の輪3
SE019 = playSeVer2( spep_0 + 172, 1110, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 172, SE019, 77 );
setPitch( spep_0 + 172, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );
SE020 = playSeVer2( spep_0 + 172, 1028, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 172, SE020, 73 );

--飛んでいく
SE021 = playSeVer2( spep_0 + 178, 1202, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 184;

------------------------------------------------------
-- ドーナツが敵をボールにする(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
donut_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ドーナツが敵をボールにする   ef_002_front

setEffMoveKey( spep_1 + 0, donut_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, donut_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, donut_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, donut_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, donut_f, 0 );
setEffRotateKey( spep_1 + 74, donut_f, 0 );

setEffAlphaKey( spep_1 + 0, donut_f, 255 );
setEffAlphaKey( spep_1 + 74 - 2, donut_f, 255 );
setEffAlphaKey( spep_1 + 74 - 1, donut_f, 255 );
setEffAlphaKey( spep_1 + 74, donut_f, 0 );


donut_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ドーナツが敵をボールにする   ef_002_back

setEffMoveKey( spep_1 + 0, donut_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, donut_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, donut_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, donut_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, donut_b, 0 );
setEffRotateKey( spep_1 + 74, donut_b, 0 );

setEffAlphaKey( spep_1 + 0, donut_b, 255 );
setEffAlphaKey( spep_1 + 74 - 2, donut_b, 255 );
setEffAlphaKey( spep_1 + 74 - 1, donut_b, 255 );
setEffAlphaKey( spep_1 + 74, donut_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1 + 0, 1, 192.9, -71.4 , 0 );
setMoveKey( spep_1 + 2, 1, 181.4, -67.6 , 0 );
setMoveKey( spep_1 + 4, 1, 169.8, -63.8 , 0 );
setMoveKey( spep_1 + 6, 1, 158.2, -60 , 0 );
setMoveKey( spep_1 + 8, 1, 146.7, -56.2 , 0 );
setMoveKey( spep_1 + 10, 1, 135.1, -52.4 , 0 );
setMoveKey( spep_1 + 12, 1, 123.5, -48.6 , 0 );
setMoveKey( spep_1 + 14, 1, 111.9, -44.8 , 0 );
setMoveKey( spep_1 + 16, 1, 100.3, -41 , 0 );
setMoveKey( spep_1 + 18, 1, 88.8, -37.2 , 0 );
setMoveKey( spep_1 + 20, 1, 77.2, -33.4 , 0 );
setMoveKey( spep_1 + 22, 1, 65.6, -29.5 , 0 );
setMoveKey( spep_1 + 24, 1, 54.1, -25.7 , 0 );
setMoveKey( spep_1 + 26, 1, 42.5, -21.9 , 0 );
setMoveKey( spep_1 + 28, 1, 30.9, -18.1 , 0 );
setMoveKey( spep_1 + 30, 1, 28.7, -17.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 2, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 4, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 8, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 10, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 12, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 14, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 30, 1, 0.88, 0.88 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 30, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255);
setAlphaKey( spep_1 + 30, 1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 74 + 2, 0, 0, 0, 0, 255); 

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);    
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    
    pauseAll( SP_dodge, 67);  

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 28.7, -17.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 26.6, -16.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 24.4, -16 , 0 );
    setMoveKey( SP_dodge + 6, 1, 22.3, -15.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 20.1, -14.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 17.9, -13.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.88, 0.88 );
    setScaleKey( SP_dodge + 2, 1, 0.88, 0.88 );
    setScaleKey( SP_dodge + 4, 1, 0.89, 0.89 );
    setScaleKey( SP_dodge + 10, 1, 0.89, 0.89 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景(特殊背景時のみ)
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_1 + 54, 1, 0 );

setMoveKey( spep_1 + 32, 1, 26.6, -16.6 , 0 );
setMoveKey( spep_1 + 34, 1, 24.4, -16 , 0 );
setMoveKey( spep_1 + 36, 1, 22.3, -15.2 , 0 );
setMoveKey( spep_1 + 38, 1, 20.1, -14.5 , 0 );
setMoveKey( spep_1 + 40, 1, 17.9, -13.8 , 0 );
setMoveKey( spep_1 + 44, 1, 15.7, -13 , 0 );
setMoveKey( spep_1 + 46, 1, 13.6, -12.4 , 0 );
setMoveKey( spep_1 + 48, 1, 11.4, -11.6 , 0 );
setMoveKey( spep_1 + 54, 1, 11.4, -11.6 , 0 );

setScaleKey( spep_1 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 40, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 44, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 46, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 48, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 54, 1, 0.76, 0.76 );

setRotateKey( spep_1 + 32, 1, 0 );
setRotateKey( spep_1 + 54, 1, 0 );

setBlendColor( spep_1 + 45, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 46, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 48, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 50, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 51, 1, 5, 1, 1, 1, 1.0);
setBlendColor( spep_1 + 52, 1, 5, 1, 1, 1, 1.0);
setBlendColor( spep_1 + 54, 1, 5, 1, 1, 1, 0);

setAlphaKey( spep_1 + 46, 1, 255);
setAlphaKey( spep_1 + 47, 1, 170);
setAlphaKey( spep_1 + 48, 1, 170);
setAlphaKey( spep_1 + 54, 1, 0);

-- ** 音 ** --
--ボールに閉じ込める
SE022 = playSeVer2( spep_1 + 40, 1274, "", spep_1 + 106, 8, 26, 0.5);
setStartTimeMs( SE022, 283 );
SE023 = playSeVer2( spep_1 + 38, 1257, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_1 + 38, 1291, "", spep_1 + 106, 0, 26, 0.5);
SE025 = playSeVer2( spep_1 + 38, 1354, "", spep_1 + 106, 0, 26, 0.5);

-- ** 次の準備 ** --
spep_2 = spep_1 + 74;

------------------------------------------------------
-- キャッチ～いくわよ～ボール打ち上げ～トス(422F)
------------------------------------------------------

-- ** エフェクト等 ** --
catch_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --キャッチ～いくわよ～ボール打ち上げ～トス   ef_003

setEffMoveKey( spep_2 + 0, catch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 422, catch_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 422, catch_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, catch_f, 0 );
setEffRotateKey( spep_2 + 422, catch_f, 0 );

setEffAlphaKey( spep_2 + 0, catch_f, 255 );
setEffAlphaKey( spep_2 + 422 - 2, catch_f, 255 );
setEffAlphaKey( spep_2 + 422 - 1, catch_f, 255 );
setEffAlphaKey( spep_2 + 422, catch_f, 0 );

-- ** 音 ** --
--ボール飛んでくる
SE026 = playSeVer2( spep_2 + 0, 44, "", spep_2 + 50, 0, 26, 0.5);

--ボールキャッチ
SE027 = playSeVer2( spep_2 + 24, 1352, "", spep_2 + 44, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 24, SE027, 86 );
setPitch( spep_2 + 24, SE027, 300 );
setTimeStretch( SE027, 1.2, 30, 4 );
SE028 = playSeVer2( spep_2 + 24, 1135, "", spep_2 + 42, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 24, SE028, 71 );
setPitch( spep_2 + 24, SE028, -500 );
setTimeStretch( SE028, 0.67, 30, 4 );

--画面遷移
SE029 = playSeVer2( spep_2 + 46, 1072, "", 0, 12, 0, 0.5);
setStartTimeMs( SE029,  250 );

--ゴテンクス構える
SE030 = playSeVer2( spep_2 + 122, 1006, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 122, 1352, "", spep_2 + 148, 0, 8, -1);

--カットイン
--SE032 = playSeVer2( spep_2 + 110, 1018, "", 0, 0, 0, -1);
spep_x = spep_2 + 98;
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ピッコロ構える
SE033 = playSeVer2( spep_2 + 210, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE033, 84 );
SE034 = playSeVer2( spep_2 + 210, 10, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE034, 80 );

--ボール投げる
SE035 = playSeVer2( spep_2 + 286, 1003, "", 0, 0, 0, -1);

--ボールレシーブ
SE036 = playSeVer2( spep_2 + 326, 31, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 326, 1251, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 326, 1246, "", 0, 0, 0, -1);

--ボール飛んでいく
SE039 = playSeVer2( spep_2 + 338, 1118, "", spep_2 + 436, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 338, SE039, 67 );
SE040 = playSeVer2( spep_2 + 346, 1277, "", spep_2 + 436, 0, 6, -1);

--ピッコロトス
SE041 = playSeVer2( spep_2 + 408, 31, "", spep_2 + 438, 0, 8, -1);
SE042 = playSeVer2( spep_2 + 408, 1251, "", spep_2 + 438, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 408, SE042, 73 );
SE043 = playSeVer2( spep_2 + 408, 1246, "", spep_2 + 438, 0, 8, -1);
SE044 = playSeVer2( spep_2 + 408, 1352, "", spep_2 + 438, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 422 + 2, 0, 0, 0, 0, 255);

-- ** 次の準備 ** --s
spep_3 = spep_2 + 422;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線白
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

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

--------------------------------------
--アタック～ボール落下～フィニッシュ(478F)
--------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --アタック～ボール落下～フィニッシュ   ef_004

setEffMoveKey( spep_4 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 478, attack_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 478, attack_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 478, attack_f, 0 );

setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 478, attack_f, 255 );

-- ** 音 ** --
--ゴテンクス向かっていく
SE046 = playSeVer2( spep_4 + 4, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_4 + 22, 1182, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_4 + 22, 9, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 22, 1011, "", 0, 0, 0, -1);

--ボールに向かっていく
SE050 = playSeVer2( spep_4 + 46, 44, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_4 + 62, 1043, "", spep_4 + 108, 0, 14, -1);

--ゴテンクスアタック
SE052 = playSeVer2( spep_4 + 90, 31, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_4 + 90, 1251, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_4 + 90, 1246, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 90, 1120, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_4 + 92, 1110, "", 0, 0, 0, -1);

--ボール飛んでいく
SE057 = playSeVer2( spep_4 + 138, 1272, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_4 + 138, 1183, "", spep_4 + 222, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 138, SE058, 73 );
SE059 = playSeVer2( spep_4 + 138, 1121, "", spep_4 + 222, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 138, SE059, 73 );

--地面激突
SE060 = playSeVer2( spep_4 + 198, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 198, SE060, 67 );

--雲晴れる
SE061 = playSeVer2( spep_4 + 264, 8, "", 0, 0, 0, -1);

--ゴテンクス飛んでくる
SE062 = playSeVer2( spep_4 + 314, 63, "", spep_4 + 394, 0, 42, -1);

--オーラ
SE063 = playSeVer2( spep_4 + 320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 320, SE063, 50 );
SE064 = playSeVer2( spep_4 + 344, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 344, SE064, 50 );

--最後決め
SE065 = playSeVer2( spep_4 + 348, 32, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_4 + 362, 1042, "", 0, 0, 0, -1);

--オーラ
SE067 = playSeVer2( spep_4 + 368, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 368, SE067, 50 );
SE068 = playSeVer2( spep_4 + 392, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 392, SE068, 50 );
SE069 = playSeVer2( spep_4 + 416, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 416, SE069, 50 );
SE070 = playSeVer2( spep_4 + 440, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 440, SE070, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 478 + 2, 0, 0, 0, 0, 255);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 320 );
endPhase( spep_4 + 468 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 変なポーズ～ドーナツ発射(184F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --変なポーズ～ドーナツ発射   ef_001_r

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 184, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 184, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 184, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 184 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 184 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 184, first_f, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--入り
SE002 = playSeVer2( spep_0 + 16, 8, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 63 );

--ポーズとる
SE004 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 160 );

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );

--イナヅマ
SE008 = playSeVer2( spep_0 + 76, 1147, "", spep_0 + 194, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 76 );

--オーラ
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 63 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 63 );

--気弾溜め
SE011 = playSeVer2( spep_0 + 128, 1329, "", spep_0 + 204, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 128, SE011, 200 );
setPitch( spep_0 + 128, SE011, -1100 );
setTimeStretch( SE011, 0.27, 30, 4 );


--オーラ
SE012 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE012, 63 );

--気弾の輪1
SE013 = playSeVer2( spep_0 + 152, 1027, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 152, SE013, 76 );
SE014 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 152, SE014, 88 );
setPitch( spep_0 + 152, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE015 = playSeVer2( spep_0 + 152, 1028, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 152, SE015, 81 );

--気弾の輪2
SE016 = playSeVer2( spep_0 + 160, 1110, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 160, SE016, 86 );
setPitch( spep_0 + 160, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_0 + 160, 1028, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 160, SE017, 72 );

--オーラ
SE018 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE018, 63 );

--気弾の輪3
SE019 = playSeVer2( spep_0 + 172, 1110, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 172, SE019, 77 );
setPitch( spep_0 + 172, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );
SE020 = playSeVer2( spep_0 + 172, 1028, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 172, SE020, 73 );

--飛んでいく
SE021 = playSeVer2( spep_0 + 178, 1202, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 184;

------------------------------------------------------
-- ドーナツが敵をボールにする(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
donut_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --ドーナツが敵をボールにする   ef_002_r_front

setEffMoveKey( spep_1 + 0, donut_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, donut_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, donut_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, donut_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, donut_f, 0 );
setEffRotateKey( spep_1 + 74, donut_f, 0 );

setEffAlphaKey( spep_1 + 0, donut_f, 255 );
setEffAlphaKey( spep_1 + 74 - 2, donut_f, 255 );
setEffAlphaKey( spep_1 + 74 - 1, donut_f, 255 );
setEffAlphaKey( spep_1 + 74, donut_f, 0 );


donut_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --ドーナツが敵をボールにする   ef_002_r_back

setEffMoveKey( spep_1 + 0, donut_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, donut_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, donut_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, donut_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, donut_b, 0 );
setEffRotateKey( spep_1 + 74, donut_b, 0 );

setEffAlphaKey( spep_1 + 0, donut_b, 255 );
setEffAlphaKey( spep_1 + 74 - 2, donut_b, 255 );
setEffAlphaKey( spep_1 + 74 - 1, donut_b, 255 );
setEffAlphaKey( spep_1 + 74, donut_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1 + 0, 1, 192.9, -71.4 , 0 );
setMoveKey( spep_1 + 2, 1, 181.4, -67.6 , 0 );
setMoveKey( spep_1 + 4, 1, 169.8, -63.8 , 0 );
setMoveKey( spep_1 + 6, 1, 158.2, -60 , 0 );
setMoveKey( spep_1 + 8, 1, 146.7, -56.2 , 0 );
setMoveKey( spep_1 + 10, 1, 135.1, -52.4 , 0 );
setMoveKey( spep_1 + 12, 1, 123.5, -48.6 , 0 );
setMoveKey( spep_1 + 14, 1, 111.9, -44.8 , 0 );
setMoveKey( spep_1 + 16, 1, 100.3, -41 , 0 );
setMoveKey( spep_1 + 18, 1, 88.8, -37.2 , 0 );
setMoveKey( spep_1 + 20, 1, 77.2, -33.4 , 0 );
setMoveKey( spep_1 + 22, 1, 65.6, -29.5 , 0 );
setMoveKey( spep_1 + 24, 1, 54.1, -25.7 , 0 );
setMoveKey( spep_1 + 26, 1, 42.5, -21.9 , 0 );
setMoveKey( spep_1 + 28, 1, 30.9, -18.1 , 0 );
setMoveKey( spep_1 + 30, 1, 28.7, -17.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 2, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 4, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 8, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 10, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 12, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 14, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 26, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 30, 1, 0.88, 0.88 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 30, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255);
setAlphaKey( spep_1 + 30, 1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 74 + 2, 0, 0, 0, 0, 255); 

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);    
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    
    pauseAll( SP_dodge, 67);  

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 28.7, -17.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 26.6, -16.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 24.4, -16 , 0 );
    setMoveKey( SP_dodge + 6, 1, 22.3, -15.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 20.1, -14.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 17.9, -13.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.88, 0.88 );
    setScaleKey( SP_dodge + 2, 1, 0.88, 0.88 );
    setScaleKey( SP_dodge + 4, 1, 0.89, 0.89 );
    setScaleKey( SP_dodge + 10, 1, 0.89, 0.89 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景(特殊背景時のみ)
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_1 + 54, 1, 0 );

setMoveKey( spep_1 + 32, 1, 26.6, -16.6 , 0 );
setMoveKey( spep_1 + 34, 1, 24.4, -16 , 0 );
setMoveKey( spep_1 + 36, 1, 22.3, -15.2 , 0 );
setMoveKey( spep_1 + 38, 1, 20.1, -14.5 , 0 );
setMoveKey( spep_1 + 40, 1, 17.9, -13.8 , 0 );
setMoveKey( spep_1 + 44, 1, 15.7, -13 , 0 );
setMoveKey( spep_1 + 46, 1, 13.6, -12.4 , 0 );
setMoveKey( spep_1 + 48, 1, 11.4, -11.6 , 0 );
setMoveKey( spep_1 + 54, 1, 11.4, -11.6 , 0 );

setScaleKey( spep_1 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 40, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 44, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 46, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 48, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 54, 1, 0.76, 0.76 );

setRotateKey( spep_1 + 32, 1, 0 );
setRotateKey( spep_1 + 54, 1, 0 );

setBlendColor( spep_1 + 45, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 46, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 48, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 50, 1, 5, 1, 1, 1, 0.4);
setBlendColor( spep_1 + 51, 1, 5, 1, 1, 1, 1.0);
setBlendColor( spep_1 + 52, 1, 5, 1, 1, 1, 1.0);
setBlendColor( spep_1 + 54, 1, 5, 1, 1, 1, 0);

setAlphaKey( spep_1 + 46, 1, 255);
setAlphaKey( spep_1 + 47, 1, 170);
setAlphaKey( spep_1 + 48, 1, 170);
setAlphaKey( spep_1 + 54, 1, 0);

-- ** 音 ** --
--ボールに閉じ込める
SE022 = playSeVer2( spep_1 + 40, 1274, "", spep_1 + 106, 8, 26, 0.5);
setStartTimeMs( SE022, 283 );
SE023 = playSeVer2( spep_1 + 38, 1257, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_1 + 38, 1291, "", spep_1 + 106, 0, 26, 0.5);
SE025 = playSeVer2( spep_1 + 38, 1354, "", spep_1 + 106, 0, 26, 0.5);

-- ** 次の準備 ** --
spep_2 = spep_1 + 74;

------------------------------------------------------
-- キャッチ～いくわよ～ボール打ち上げ～トス(422F)
------------------------------------------------------

-- ** エフェクト等 ** --
catch_f = entryEffect( spep_2 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --キャッチ～いくわよ～ボール打ち上げ～トス   ef_003_r

setEffMoveKey( spep_2 + 0, catch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 422, catch_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 422, catch_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, catch_f, 0 );
setEffRotateKey( spep_2 + 422, catch_f, 0 );

setEffAlphaKey( spep_2 + 0, catch_f, 255 );
setEffAlphaKey( spep_2 + 422 - 2, catch_f, 255 );
setEffAlphaKey( spep_2 + 422 - 1, catch_f, 255 );
setEffAlphaKey( spep_2 + 422, catch_f, 0 );

-- ** 音 ** --
--ボール飛んでくる
SE026 = playSeVer2( spep_2 + 0, 44, "", spep_2 + 50, 0, 26, 0.5);

--ボールキャッチ
SE027 = playSeVer2( spep_2 + 24, 1352, "", spep_2 + 44, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 24, SE027, 86 );
setPitch( spep_2 + 24, SE027, 300 );
setTimeStretch( SE027, 1.2, 30, 4 );
SE028 = playSeVer2( spep_2 + 24, 1135, "", spep_2 + 42, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 24, SE028, 71 );
setPitch( spep_2 + 24, SE028, -500 );
setTimeStretch( SE028, 0.67, 30, 4 );

--画面遷移
SE029 = playSeVer2( spep_2 + 46, 1072, "", 0, 12, 0, 0.5);
setStartTimeMs( SE029,  250 );

--ゴテンクス構える
SE030 = playSeVer2( spep_2 + 122, 1006, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 122, 1352, "", spep_2 + 148, 0, 8, -1);

--カットイン
--SE032 = playSeVer2( spep_2 + 110, 1018, "", 0, 0, 0, -1);
spep_x = spep_2 + 98;
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ピッコロ構える
SE033 = playSeVer2( spep_2 + 210, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE033, 84 );
SE034 = playSeVer2( spep_2 + 210, 10, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE034, 80 );

--ボール投げる
SE035 = playSeVer2( spep_2 + 286, 1003, "", 0, 0, 0, -1);

--ボールレシーブ
SE036 = playSeVer2( spep_2 + 326, 31, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 326, 1251, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 326, 1246, "", 0, 0, 0, -1);

--ボール飛んでいく
SE039 = playSeVer2( spep_2 + 338, 1118, "", spep_2 + 436, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 338, SE039, 67 );
SE040 = playSeVer2( spep_2 + 346, 1277, "", spep_2 + 436, 0, 6, -1);

--ピッコロトス
SE041 = playSeVer2( spep_2 + 408, 31, "", spep_2 + 438, 0, 8, -1);
SE042 = playSeVer2( spep_2 + 408, 1251, "", spep_2 + 438, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 408, SE042, 73 );
SE043 = playSeVer2( spep_2 + 408, 1246, "", spep_2 + 438, 0, 8, -1);
SE044 = playSeVer2( spep_2 + 408, 1352, "", spep_2 + 438, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 422 + 2, 0, 0, 0, 0, 255);

-- ** 次の準備 ** --
spep_3 = spep_2 + 422;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線白
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

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

--------------------------------------
--アタック～ボール落下～フィニッシュ(478F)
--------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --アタック～ボール落下～フィニッシュ   ef_004_r

setEffMoveKey( spep_4 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 478, attack_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 478, attack_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 478, attack_f, 0 );

setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 478, attack_f, 255 );

-- ** 音 ** --
--ゴテンクス向かっていく
SE046 = playSeVer2( spep_4 + 4, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_4 + 22, 1182, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_4 + 22, 9, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 22, 1011, "", 0, 0, 0, -1);

--ボールに向かっていく
SE050 = playSeVer2( spep_4 + 46, 44, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_4 + 62, 1043, "", spep_4 + 108, 0, 14, -1);

--ゴテンクスアタック
SE052 = playSeVer2( spep_4 + 90, 31, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_4 + 90, 1251, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_4 + 90, 1246, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 90, 1120, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_4 + 92, 1110, "", 0, 0, 0, -1);

--ボール飛んでいく
SE057 = playSeVer2( spep_4 + 138, 1272, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_4 + 138, 1183, "", spep_4 + 222, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 138, SE058, 73 );
SE059 = playSeVer2( spep_4 + 138, 1121, "", spep_4 + 222, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 138, SE059, 73 );

--地面激突
SE060 = playSeVer2( spep_4 + 198, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 198, SE060, 67 );

--雲晴れる
SE061 = playSeVer2( spep_4 + 264, 8, "", 0, 0, 0, -1);

--ゴテンクス飛んでくる
SE062 = playSeVer2( spep_4 + 314, 63, "", spep_4 + 394, 0, 42, -1);

--オーラ
SE063 = playSeVer2( spep_4 + 320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 320, SE063, 50 );
SE064 = playSeVer2( spep_4 + 344, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 344, SE064, 50 );

--最後決め
SE065 = playSeVer2( spep_4 + 348, 32, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_4 + 362, 1042, "", 0, 0, 0, -1);

--オーラ
SE067 = playSeVer2( spep_4 + 368, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 368, SE067, 50 );
SE068 = playSeVer2( spep_4 + 392, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 392, SE068, 50 );
SE069 = playSeVer2( spep_4 + 416, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 416, SE069, 50 );
SE070 = playSeVer2( spep_4 + 440, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 440, SE070, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 478 + 2, 0, 0, 0, 0, 255);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 320 );
endPhase( spep_4 + 468 );

end