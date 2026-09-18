--1021140:超サイヤ人2孫悟飯(少年期)_閃光の一撃
--sp_effect_a1_00263
--sp2113

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
SP_01 = 156349;  --歩き、カットイン    ef_001
SP_02 = 156350;  --悟飯顔アップ  ef_002
SP_03 = 156352;  --敵の渦巻集中(敵より手前    ef_003_front
SP_04 = 156353;  --敵の渦巻集中（敵より奥 ef_003_back
SP_05 = 156354;  --拳パンチ    ef_004
SP_06 = 156355;  --悟飯拳突き出してる   ef_005
SP_07 = 156357;  --敵吹っ飛び（敵より手前 ef_006_front
SP_08 = 156358;  --敵吹っ飛び（敵より奥  ef_006_back
SP_09 = 156359;  --かめはめ波溜め ef_007
SP_10 = 156360;  --かめはめ波撃つ ef_008
SP_11 = 156361;  --爆発  ef_009
SP_12 = 156362;  --敵に飛んでくる悟飯（敵より手前 ef_010_front
SP_13 = 156363;  --敵に飛んでくる悟飯（敵より奥  ef_010_back
SP_14 = 156366;  --フィニッシュ（敵より手前    ef_011_front
SP_15 = 156367;  --フィニッシュ（敵より奥 ef_011_back
SP_16 = 156368;  --KO  ef_012

--敵側
SP_02r = 156351;  --悟飯顔アップ(反転）  ef_002_r
SP_06r = 156356;  --悟飯拳突き出してる（反転）   ef_005_r
SP_12r = 156364;  --敵に飛んでくる悟飯（敵より手前 ef_010_front_r
SP_13r = 156365;  --敵に飛んでくる悟飯（敵より奥  ef_010_back_r

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
-- 歩き、カットイン(218F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --歩き、カットイン(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 218, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 218, first_f, 255 );

spep_x = spep_0 + 8;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--オーラ1
SE001 = playSe( spep_0 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );

--イナヅマ
SE002 = playSe( spep_0 + 0, 1147 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 36 );

--足音1
SE003 = playSe( spep_0 + 0, 1106 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 158 );

--足音2
SE004 = playSe( spep_0 + 0, 1108 );

--顔カットイン
SE005 = playSe( spep_0 + 18, 1018 );

--オーラ2
SE006 = playSe( spep_0 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 24, SE006, 56 );

--オーラ3
SE007 = playSe( spep_0 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 48, SE007, 56 );

--足音3
SE008 = playSe( spep_0 + 70, 1106 );
setSeVolumeByWorkId( spep_0 + 70, SE008, 141 );

--足音4
SE009 = playSe( spep_0 + 70, 1108 );

--オーラ4
SE010 = playSe( spep_0 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 72, SE010, 56 );

--オーラ5
SE011 = playSe( spep_0 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 96, SE011, 56 );

--オーラ6
SE012 = playSe( spep_0 + 120, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 120, SE012, 56 );

--気を放つ1
SE013 = playSe( spep_0 + 190, 1264 );
setSeVolumeByWorkId( spep_0 + 190, SE013, 0 );
setSeVolumeByWorkId( spep_0 + 191, SE013, 20 );
setSeVolumeByWorkId( spep_0 + 192, SE013, 40 );
setSeVolumeByWorkId( spep_0 + 193, SE013, 60 );
setSeVolumeByWorkId( spep_0 + 194, SE013, 80 );
setSeVolumeByWorkId( spep_0 + 195, SE013, 100 );
setSeVolumeByWorkId( spep_0 + 196, SE013, 115 );
stopSe( spep_0 +218 + 30, SE013, 184 );
setStartTimeMs( SE013,  950 );
setPitch( spep_0 + 133, SE013, -300 );
setTimeStretch( SE013, 0.8, 10, 1 );

--オーラ
SE014 = playSe( spep_0 + 144, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 144, SE014, 56 );

--気を放つ2
SE015 = playSe( spep_0 + 190, 1285 );
setSeVolumeByWorkId( spep_0 + 190, SE015, 0 );
setSeVolumeByWorkId( spep_0 + 192, SE015, 10 );
setSeVolumeByWorkId( spep_0 + 194, SE015, 20 );
setSeVolumeByWorkId( spep_0 + 196, SE015, 40 );
setSeVolumeByWorkId( spep_0 + 198, SE015, 60 );
setSeVolumeByWorkId( spep_0 + 200, SE015, 80 );
setSeVolumeByWorkId( spep_0 + 202, SE015, 90 );
setSeVolumeByWorkId( spep_0 + 204, SE015, 100 );
setStartTimeMs( SE015,  400 );

--オーラ7
SE016 = playSe( spep_0 + 168, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 168, SE016, 56 );

--足音5
SE017 = playSe( spep_0 + 186, 1106 );
setSeVolumeByWorkId( spep_0 + 186, SE017, 158 );

--足音6
SE018 = playSe( spep_0 + 186, 1108 );

--気を放つ3
SE019 = playSe( spep_0 + 186, 1231 );
setSeVolumeByWorkId( spep_0 + 186, SE019, 229 );

--気を放つ4
SE020 = playSe( spep_0 + 186, 1068 );
setSeVolumeByWorkId( spep_0 + 186, SE020, 43 );

--オーラ8
SE021 = playSe( spep_0 + 192, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 192, SE021, 56 );

--イナヅマ
SE022 = playSe( spep_0 + 206, 1147 );
setSeVolumeByWorkId( spep_0 + 206, SE022, 33 );
stopSe( spep_0 +218 +56 + 10, SE022, 18 );

--オーラ9
SE023 = playSe( spep_0 + 216, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 216, SE023, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 218, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 218;


--------------------------------------
-- 悟飯顔アップ(56F)
--------------------------------------
-- ** エフェクト等 ** --
faceup = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --悟飯顔アップ(ef_002)
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, faceup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 56, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 56, faceup, 255 );

-- ** 音 ** --
--オーラ1
SE024 = playSe( spep_1 + 22, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 22, SE024, 56 );

--オーラ2
SE025 = playSe( spep_1 + 46, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 46, SE025, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


--------------------------------------
-- 敵の渦巻集中(56F)
--------------------------------------
-- ** エフェクト等 ** --
uzumaki_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_003_front)
setEffMoveKey( spep_2 + 0, uzumaki_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, uzumaki_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, uzumaki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, uzumaki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, uzumaki_f, 0 );
setEffRotateKey( spep_2 + 56, uzumaki_f, 0 );
setEffAlphaKey( spep_2 + 0, uzumaki_f, 255 );
setEffAlphaKey( spep_2 + 56, uzumaki_f, 255 );

uzumaki_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵より奥(ef_003_back)
setEffMoveKey( spep_2 + 0, uzumaki_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, uzumaki_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, uzumaki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, uzumaki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, uzumaki_b, 0 );
setEffRotateKey( spep_2 + 56, uzumaki_b, 0 );
setEffAlphaKey( spep_2 + 0, uzumaki_b, 255 );
setEffAlphaKey( spep_2 + 56, uzumaki_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 101 );

b1=56;

setMoveKey( spep_2 + 0, 1, 84.8, 0.2 +b1, 0 );
setMoveKey( spep_2 + 1, 1, 85.4, 0.2 +b1, 0 );
setMoveKey( spep_2 + 2, 1, 86.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 6, 1, 86.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 7, 1, 86.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 8, 1, 87.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 9, 1, 87.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 10, 1, 87.9, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 12, 1, 88.5, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 14, 1, 89.2, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 16, 1, 89.8, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 18, 1, 90.4, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 20, 1, 91, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 22, 1, 91.6, 0.2 +b1, 0 );

setScaleKey( spep_2 + 0, 1, 2.385, 2.385 );
setScaleKey( spep_2 + 1, 1, 2.400, 2.400 );
setScaleKey( spep_2 + 2, 1, 2.415, 2.415 );
setScaleKey( spep_2 -3 + 6, 1, 2.445, 2.445 );
setScaleKey( spep_2 -3 + 7, 1, 2.445, 2.445 );
setScaleKey( spep_2 -3 + 8, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 9, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 10, 1, 2.475, 2.475 );
setScaleKey( spep_2 -3 + 12, 1, 2.489, 2.489 );
setScaleKey( spep_2 -3 + 14, 1, 2.505, 2.505 );
setScaleKey( spep_2 -3 + 16, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 18, 1, 2.535, 2.535 );
setScaleKey( spep_2 -3 + 20, 1, 2.565, 2.565 );
setScaleKey( spep_2 -3 + 22, 1, 2.58, 2.58 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 92.2, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 2, 1, 92.9, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 4, 1, 93.5, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 6, 1, 94.1, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 8, 1, 94.7, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 10, 1, 95.3, 0.2 +b1, 0 );

    setScaleKey( SP_dodge + 0, 1, 2.59, 2.59 );
    setScaleKey( SP_dodge + 2, 1, 2.61, 2.61 );
    setScaleKey( SP_dodge + 4, 1, 2.625, 2.625 );
    setScaleKey( SP_dodge + 6, 1, 2.64, 2.64 );
    setScaleKey( SP_dodge + 8, 1, 2.67, 2.67 );
    setScaleKey( SP_dodge + 10, 1, 2.685, 2.685 );
--
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

setDisp( spep_2 + 56, 1, 0 );

setMoveKey( spep_2 -3 + 24, 1, 92.2, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 26, 1, 92.9, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 28, 1, 93.5, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 30, 1, 94.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 32, 1, 94.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 34, 1, 95.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 36, 1, 96, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 38, 1, 96.6, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 40, 1, 97.2, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 42, 1, 97.8, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 44, 1, 98.4, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 46, 1, 99, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 48, 1, 99.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 50, 1, 100.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 52, 1, 100.9, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 54, 1, 101.5, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 57, 1, 102.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 58, 1, 102.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 59, 1, 102.1, 0.2 +b1, 0 );

setScaleKey( spep_2 -3 + 24, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 26, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 28, 1, 2.625, 2.625 );
setScaleKey( spep_2 -3 + 30, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 32, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 34, 1, 2.685, 2.685 );
setScaleKey( spep_2 -3 + 36, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 38, 1, 2.715, 2.715 );
setScaleKey( spep_2 -3 + 40, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 42, 1, 2.745, 2.745 );
setScaleKey( spep_2 -3 + 44, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 46, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 48, 1, 2.805, 2.805 );
setScaleKey( spep_2 -3 + 50, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 52, 1, 2.835, 2.835 );
setScaleKey( spep_2 -3 + 54, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 57, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 58, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 59, 1, 2.88, 2.88 );

setRotateKey( spep_2 + 56, 1, 0 );

-- ** 音 ** --
--敵に近づく
SE026 = playSe( spep_2 + 34, 1167 );
setSeVolumeByWorkId( spep_2 + 34, SE026, 21 );
stopSe( spep_2 +56 + 20, SE026, 20 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


--------------------------------------
--拳パンチ(32F)
--------------------------------------
-- ** エフェクト等 ** --
punch = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --拳パンチ(ef_004)
setEffMoveKey( spep_3 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 32, punch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 32, punch, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch, 0 );
setEffRotateKey( spep_3 + 32, punch, 0 );
setEffAlphaKey( spep_3 + 0, punch, 255 );
setEffAlphaKey( spep_3 + 32, punch, 255 );

-- ** 音 ** --
--敵を突き破る1
SE027 = playSe( spep_3 + 10, 1187 );
setSeVolumeByWorkId( spep_3 + 10, SE027, 68 );

--敵を突き破る2
SE028 = playSe( spep_3 + 14, 1110 );
setSeVolumeByWorkId( spep_3 + 14, SE028, 58 );

--敵を突き破る3
SE029 = playSe( spep_3 + 18, 1153 );
setSeVolumeByWorkId( spep_3 + 18, SE029, 68 );

--敵を突き破る4
SE030 = playSe( spep_3 + 20, 1123 );
setSeVolumeByWorkId( spep_3 + 20, SE030, 0 );
setSeVolumeByWorkId( spep_3 +22 + 0, SE030, 0 );
setSeVolumeByWorkId( spep_3 +22 + 2, SE030, 8 );
setSeVolumeByWorkId( spep_3 +22 + 4, SE030, 16 );
setSeVolumeByWorkId( spep_3 +22 + 6, SE030, 24 );
setSeVolumeByWorkId( spep_3 +22 + 8, SE030, 32 );
setSeVolumeByWorkId( spep_3 +22 + 10, SE030, 40 );
setSeVolumeByWorkId( spep_3 +22 + 12, SE030, 48 );
setSeVolumeByWorkId( spep_3 +22 + 14, SE030, 56 );
setSeVolumeByWorkId( spep_3 +22 + 16, SE030, 64 );
setPitch( spep_3 + 20, SE030, -200 );
setTimeStretch( SE030, 0.96, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 32, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 32;


--------------------------------------
--悟飯拳突き出してる(56F)
--------------------------------------
-- ** エフェクト等 ** --
ptuki = entryEffectLife( spep_4 + 0, SP_06, 55, 0x100, -1, 0, 0, 0 );  --悟飯拳突き出してる(ef_005)
setEffMoveKey( spep_4 + 0, ptuki, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, ptuki, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ptuki, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, ptuki, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ptuki, 0 );
setEffRotateKey( spep_4 + 56, ptuki, 0 );
setEffAlphaKey( spep_4 + 0, ptuki, 255 );
setEffAlphaKey( spep_4 + 56, ptuki, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


--------------------------------------
--敵吹っ飛び(56F)
--------------------------------------
-- ** エフェクト等 ** --
huttobi_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_006_front)
setEffMoveKey( spep_5 + 0, huttobi_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, huttobi_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, huttobi_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, huttobi_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, huttobi_f, 0 );
setEffRotateKey( spep_5 + 56, huttobi_f, 0 );
setEffAlphaKey( spep_5 + 0, huttobi_f, 255 );
setEffAlphaKey( spep_5 + 56, huttobi_f, 255 );

huttobi_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --敵より奥(ef_006_back)
setEffMoveKey( spep_5 + 0, huttobi_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, huttobi_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, huttobi_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, huttobi_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, huttobi_b, 0 );
setEffRotateKey( spep_5 + 56, huttobi_b, 0 );
setEffAlphaKey( spep_5 + 0, huttobi_b, 255 );
setEffAlphaKey( spep_5 + 56, huttobi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 -1 + 6, 1, 5 );

setBlendColor(spep_5 + 0, 1, 3, 0.5, 0.24, 0.6, 0.6);
setBlendColor(spep_5 + 56, 1, 3, 0.5, 0.24, 0.6, 0.6);

a2=10;
b2=10;

setMoveKey( spep_5 + 0, 1, -164.2 +140, -173.6 + 40, 0 );
setMoveKey( spep_5 -1 + 2, 1, -91.3 +140, -94 +40, 0 );
setMoveKey( spep_5 -1 + 5, 1, -71.1 +140, -28.7 +40, 0 );
setMoveKey( spep_5 -1 + 6, 1, 76.9 -a2, 131.4 -b2, 0 );
setMoveKey( spep_5 -1 + 7, 1, 76.9 -a2, 131.4 -b2, 0 );
setMoveKey( spep_5 -1 + 8, 1, 130 -a2, 155.4 -b2, 0 );
setMoveKey( spep_5 -1 + 10, 1, 121.9 -a2, 197.4 -b2, 0 );
setMoveKey( spep_5 -1 + 12, 1, 132.6 -a2, 177.4 -b2, 0 );
setMoveKey( spep_5 -1 + 14, 1, 122.2 -a2, 215.5 -b2, 0 );
setMoveKey( spep_5 -1 + 16, 1, 170.7 -a2, 231.7 -b2, 0 );
setMoveKey( spep_5 -1 + 18, 1, 158.1 -a2, 257.9 -b2, 0 );
setMoveKey( spep_5 -1 + 20, 1, 164.3 -a2, 242.4 -b2, 0 );
setMoveKey( spep_5 -1 + 22, 1, 169.5 -a2, 281.2 -b2, 0 );
setMoveKey( spep_5 -1 + 24, 1, 173.8 -a2, 266.1 -b2, 0 );
setMoveKey( spep_5 -1 + 26, 1, 165 -a2, 285.3 -b2, 0 );
setMoveKey( spep_5 -1 + 28, 1, 191.2 -a2, 294.8 -b2, 0 );
setMoveKey( spep_5 -1 + 30, 1, 180.5 -a2, 302.8 -b2, 0 );
setMoveKey( spep_5 -1 + 32, 1, 180.9 -a2, 285.1 -b2, 0 );
setMoveKey( spep_5 -1 + 34, 1, 180.3 -a2, 309.9 -b2, 0 );
setMoveKey( spep_5 -1 + 36, 1, 174.8 -a2, 293.1 -b2, 0 );
setMoveKey( spep_5 -1 + 38, 1, 188.5 -a2, 294.9 -b2, 0 );
setMoveKey( spep_5 -1 + 40, 1, 177.2 -a2, 303.3 -b2, 0 );
setMoveKey( spep_5 -1 + 42, 1, 169.2 -a2, 278.2 -b2, 0 );
setMoveKey( spep_5 -1 + 44, 1, 156.4 -a2, 279.8 -b2, 0 );
setMoveKey( spep_5 -1 + 46, 1, 166.9 -a2, 272.1 -b2, 0 );
setMoveKey( spep_5 -1 + 48, 1, 152.5 -a2, 263 -b2, 0 );
setMoveKey( spep_5 -1 + 50, 1, 145.4 -a2, 252.8 -b2, 0 );
setMoveKey( spep_5 -1 + 52, 1, 137.6 -a2, 241.4 -b2, 0 );
setMoveKey( spep_5 -1 + 54, 1, 129.1 -a2, 228.7 -b2, 0 );
setMoveKey( spep_5 -1 + 56, 1, 120 -a2, 214.9 -b2, 0 );
setMoveKey( spep_5 -1 + 57, 1, 110.2 -a2, 200.1 -b2, 0 );

a5=0.7;

setScaleKey( spep_5 + 0, 1, 3.85 +a5 , 3.85 +a5 );
setScaleKey( spep_5 -1 + 2, 1, 3.374 +a5, 3.374 +a5 );
setScaleKey( spep_5 -1 + 5, 1, 2.646 +a5, 2.646 +a5 );
setScaleKey( spep_5 -1 + 6, 1, 2.142 +a5, 2.142 +a5 );
setScaleKey( spep_5 -1 + 7, 1, 2.142 +a5, 2.142 +a5 );
setScaleKey( spep_5 -1 + 8, 1, 2.044 +a5, 2.044 +a5 );
setScaleKey( spep_5 -1 + 10, 1, 1.946 +a5, 1.946 +a5 );
setScaleKey( spep_5 -1 + 12, 1, 1.848 +a5, 1.848 +a5 );
setScaleKey( spep_5 -1 + 14, 1, 1.75 +a5, 1.75 +a5 );
setScaleKey( spep_5 -1 + 16, 1, 1.666 +a5, 1.666 +a5 );
setScaleKey( spep_5 -1 + 18, 1, 1.582 +a5, 1.582 +a5 );
setScaleKey( spep_5 -1 + 20, 1, 1.512 +a5, 1.512 +a5 );
setScaleKey( spep_5 -1 + 22, 1, 1.428 +a5, 1.428 +a5 );
setScaleKey( spep_5 -1 + 24, 1, 1.358 +a5, 1.358 +a5 );
setScaleKey( spep_5 -1 + 26, 1, 1.302 +a5, 1.302 +a5 );
setScaleKey( spep_5 -1 + 28, 1, 1.232 +a5, 1.232 +a5 );
setScaleKey( spep_5 -1 + 30, 1, 1.176 +a5, 1.176 +a5 );
setScaleKey( spep_5 -1 + 32, 1, 1.12 +a5, 1.12 +a5 );
setScaleKey( spep_5 -1 + 34, 1, 1.078 +a5, 1.078 +a5 );
setScaleKey( spep_5 -1 + 36, 1, 1.022 +a5, 1.022 +a5 );
setScaleKey( spep_5 -1 + 38, 1, 0.98 +a5, 0.98 +a5 );
setScaleKey( spep_5 -1 + 40, 1, 0.952 +a5, 0.952 +a5 );
setScaleKey( spep_5 -1 + 42, 1, 0.91 +a5, 0.91 +a5 );
setScaleKey( spep_5 -1 + 44, 1, 0.882 +a5, 0.882 +a5 );
setScaleKey( spep_5 -1 + 46, 1, 0.84 +a5, 0.84 +a5 );
setScaleKey( spep_5 -1 + 48, 1, 0.826 +a5, 0.826 +a5 );
setScaleKey( spep_5 -1 + 50, 1, 0.798 +a5, 0.798 +a5 );
setScaleKey( spep_5 -1 + 52, 1, 0.77 +a5, 0.77 +a5 );
setScaleKey( spep_5 -1 + 54, 1, 0.756 +a5, 0.756 +a5 );
setScaleKey( spep_5 -1 + 56, 1, 0.742 +a5, 0.742 +a5 );
setScaleKey( spep_5 -1 + 57, 1, 0.728 +a5, 0.728 +a5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 5, 1, 0 );
setRotateKey( spep_5 + 6, 1, 2 );
setRotateKey( spep_5 + 39, 1, 20 );
setRotateKey( spep_5 + 56, 1, 20 );


-- ** 音 ** --
--敵飛んでいく1
SE031 = playSe( spep_5 + 0, 1027 );
setSeVolumeByWorkId( spep_5 + 0, SE031, 45 );

--敵飛んでいく2
SE032 = playSe( spep_5 + 4, 1183 );
stopSe( spep_5 +56 + 6, SE032, 20 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

--------------------------------------
--かめはめ波溜め(116F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --かめはめ波溜め(ef_007)
setEffMoveKey( spep_6 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame, 0 );
setEffRotateKey( spep_6 + 116, tame, 0 );
setEffAlphaKey( spep_6 + 0, tame, 255 );
setEffAlphaKey( spep_6 + 116, tame, 255 );

-- ** 音 ** --
--オーラ２_1
SE033 = playSe( spep_6 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 0, SE033, 63 );

--イナヅマ２
SE034 = playSe( spep_6 + 2, 1147 );
setSeVolumeByWorkId( spep_6 + 2, SE034, 42 );

--オーラ２_2
SE035 = playSe( spep_6 + 14, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 14, SE035, 63 );

--構える
SE036 = playSe( spep_6 + 22, 1003 );
setSeVolumeByWorkId( spep_6 + 22, SE036, 72 );

--オーラ２_3
SE037 = playSe( spep_6 + 38, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 38, SE037, 63 );

--かめはめ波溜め1
SE038 = playSe( spep_6 + 38, 1131 );

--かめはめ波溜め2
SE039 = playSe( spep_6 + 38, 1132 );
setSeVolumeByWorkId( spep_6 + 38, SE039, 72 );

--かめはめ波溜め3
SE040 = playSe( spep_6 + 38, 1014 );
setSeVolumeByWorkId( spep_6 + 38, SE040, 60 );

--オーラ２_4
SE041 = playSe( spep_6 + 62, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 62, SE041, 63 );

--オーラ２_5
SE042 = playSe( spep_6 + 86, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 86, SE042, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;

--------------------------------------
--かめはめ波撃つ(116F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --かめはめ波撃つ(ef_008)
setEffMoveKey( spep_7 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, shot, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, shot, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, shot, 0 );
setEffRotateKey( spep_7 + 116, shot, 0 );
setEffAlphaKey( spep_7 + 0, shot, 255 );
setEffAlphaKey( spep_7 + 116, shot, 255 );

-- ** 音 ** --
--オーラ２_6
SE043 = playSe( spep_7 + 4, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_7 + 4, SE043, 63 );

--かめはめ波発射1
SE044 = playSe( spep_7 + 10, 1022 );

--かめはめ波発射2
SE045 = playSe( spep_7 + 10, 1285 );
setSeVolumeByWorkId( spep_7 + 10, SE045, 46 );
setPitch( spep_7 + 10, SE045, 400 );
setTimeStretch( SE045, 1.27, 10, 1 );

--かめはめ波発射3
SE046 = playSe( spep_7 + 10, 1146 );

--オーラ２_7
SE047 = playSe( spep_7 + 18, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_7 + 18, SE047, 63 );

--かめはめ波発射4
SE048 = playSe( spep_7 + 18, 1044 );
setSeVolumeByWorkId( spep_7 + 18, SE048, 100 );
setSeVolumeByWorkId( spep_7 + 18, SE048, 100 );
setSeVolumeByWorkId( spep_7 + 190, SE048, 100 );
setSeVolumeByWorkId( spep_7 + 194, SE048, 80 );
setSeVolumeByWorkId( spep_7 + 198, SE048, 60 );
setSeVolumeByWorkId( spep_7 + 202, SE048, 40 );
setSeVolumeByWorkId( spep_7 + 208, SE048, 25 );
stopSe( spep_7 +278 + 0, SE048, 5 ); --(spep_7~10まで)

--かめはめ波弾道
SE050 = playSe( spep_7 + 110, 1213 );
setSeVolumeByWorkId( spep_7 + 110, SE050, 5 );
setSeVolumeByWorkId( spep_7 + 130, SE050, 10 );
setSeVolumeByWorkId( spep_7 + 150, SE050, 20 );
setSeVolumeByWorkId( spep_7 + 160, SE050, 31 );
setSeVolumeByWorkId( spep_7 + 170, SE050, 42 );
setSeVolumeByWorkId( spep_7 + 182, SE050, 53 );
stopSe( spep_7 +278 + 0, SE050, 5 ); --(spep_7~10まで)
setStartTimeMs( SE050,  800 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 116;

--------------------------------------
--爆発(86F)
--------------------------------------
-- ** エフェクト等 ** --
bakuhathu = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --爆発(ef_009)
setEffMoveKey( spep_8 + 0, bakuhathu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, bakuhathu, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, bakuhathu, 1.0, 1.0 );
setEffScaleKey( spep_8 + 86, bakuhathu, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bakuhathu, 0 );
setEffRotateKey( spep_8 + 86, bakuhathu, 0 );
setEffAlphaKey( spep_8 + 0, bakuhathu, 255 );
setEffAlphaKey( spep_8 + 86, bakuhathu, 255 );

-- ** 音 ** --
--爆発1
SE052 = playSe( spep_8 + 2, 1068 );

--爆発2
SE053 = playSe( spep_8 + 12, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 86, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_8 + 84, 0, 4, 0, 255, 255, 255, 255);     -- white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 86;


--------------------------------------
--敵に飛んでくる悟飯(76F)
--------------------------------------
-- ** エフェクト等 ** --
missile_f = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_006_front)
setEffMoveKey( spep_9 + 0, missile_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, missile_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, missile_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, missile_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, missile_f, 0 );
setEffRotateKey( spep_9 + 76, missile_f, 0 );
setEffAlphaKey( spep_9 + 0, missile_f, 255 );
setEffAlphaKey( spep_9 + 76, missile_f, 255 );

missile_b = entryEffect( spep_9 + 0, SP_13, 0x80, -1, 0, 0, 0 );  --敵より手前(ef_006_front)
setEffMoveKey( spep_9 + 0, missile_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, missile_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, missile_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, missile_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, missile_b, 0 );
setEffRotateKey( spep_9 + 76, missile_b, 0 );
setEffAlphaKey( spep_9 + 0, missile_b, 255 );
setEffAlphaKey( spep_9 + 76, missile_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 76, 1, 0 );
changeAnime( spep_9 + 0, 1, 6 );
changeAnime( spep_9 -3 + 50, 1, 8 );

setBlendColor( spep_9 + 0, 1, 1, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_9 + 75, 1, 1, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_9 + 76, 1, 1, 1.0, 1.0, 1.0, 0 );

setMoveKey( spep_9 + 0, 1, -159.7, -12.8 , 0 );
setMoveKey( spep_9 + 1, 1, -141.7, -12.8 , 0 );
setMoveKey( spep_9 + 2, 1, -123.7, -12.8 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -105.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 7, 1, -105.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -87.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 9, 1, -87.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -69.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -51.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -34, -12.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -33.1, -12.8 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -32.2, -12.8 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -31.3, -12.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -30.4, -12.8 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -29.5, -12.8 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -28.7, -12.8 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -27.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 30, 1, -26.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 32, 1, -26, -12.8 , 0 );
setMoveKey( spep_9 -3 + 34, 1, -25.1, -12.8 , 0 );
setMoveKey( spep_9 -3 + 36, 1, -24.2, -12.8 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -23.3, -12.8 , 0 );
setMoveKey( spep_9 -3 + 40, 1, -22.4, -12.8 , 0 );
setMoveKey( spep_9 -3 + 42, 1, -21.5, -12.8 , 0 );
setMoveKey( spep_9 -3 + 44, 1, -20.7, -12.8 , 0 );
setMoveKey( spep_9 -3 + 46, 1, -19.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 49, 1, -18.9, -12.8 , 0 );

a3=70;
b3=25;

setMoveKey( spep_9 -3 + 50, 1, -175.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 52, 1, -183.4 +a3, 28.9 -b3, 0 );
setMoveKey( spep_9 -3 + 54, 1, -178.9 +a3, -27.1 -b3, 0 );
setMoveKey( spep_9 -3 + 56, 1, -191.3 +a3, 2.2 -b3, 0 );
setMoveKey( spep_9 -3 + 58, 1, -159.3 +a3, 7.6 -b3, 0 );
setMoveKey( spep_9 -3 + 60, 1, -175.3 +a3, 20.9 -b3, 0 );
setMoveKey( spep_9 -3 + 62, 1, -175.3 +a3, -11.1 -b3, 0 );
setMoveKey( spep_9 -3 + 64, 1, -191.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 66, 1, -159.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 68, 1, -175.3 +a3, 20.9 -b3, 0 );
setMoveKey( spep_9 -3 + 70, 1, -175.3 +a3, -11.1 -b3, 0 );
setMoveKey( spep_9 -3 + 72, 1, -183.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 74, 1, -167.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 76, 1, -175.3 +a3, 12.9 -b3, 0 );
setMoveKey( spep_9 -3 + 78, 1, -175.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 79, 1, -175.3 +a3, 4.9 -b3, 0 );

a4=0.2;

setScaleKey( spep_9 + 0, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 1, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 2, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 3, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 4, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 5, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 6, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 -3 + 49, 1, 0.55+a4, 0.55+a4 );
setScaleKey( spep_9 -3 + 50, 1, 0.64+a4, 0.64+a4 );
setScaleKey( spep_9 -3 + 79, 1, 0.64+a4, 0.64+a4 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 1, 1, 0 );
setRotateKey( spep_9 + 2, 1, 0 );
setRotateKey( spep_9 + 3, 1, 0 );
setRotateKey( spep_9 + 4, 1, 0 );
setRotateKey( spep_9 + 5, 1, 0 );
setRotateKey( spep_9 + 6, 1, 0 );
setRotateKey( spep_9 + 79, 1, 0 );

-- ** 音 ** --
--閃光の中でパンチ
SE054 = playSe( spep_9 + 40, 1231 );
setSeVolumeByWorkId( spep_9 + 40, SE054, 81 );
setPitch( spep_9 + 40, SE054, 300 );
setTimeStretch( SE054, 1.2, 10, 1 );

--閃光の中でパンチ
SE055 = playSe( spep_9 + 42, 1169 );
setSeVolumeByWorkId( spep_9 + 42, SE055, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 76, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 76;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_10 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_10, SE_05);
    speff = entryEffect( spep_10, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_10, SE_05);
    speff = entryEffect( spep_10, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_10, SE_05);
    speff = entryEffect( spep_10, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_10 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_10 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_10 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_10 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_10 + 0, shuchusen, 0 );
setEffRotateKey( spep_10 + 90, shuchusen, 0 );
setEffAlphaKey( spep_10 + 0, shuchusen, 255 );
setEffAlphaKey( spep_10 + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_10 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_10 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_10 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 94;

--------------------------------------
--フィニッシュ(198F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_011_front)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 198, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 198, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 198, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 198, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --敵より奥(ef_011_back)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 198, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 198, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 198, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 198, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 111, 1, 0 );
setDisp( spep_11 -3 + 132, 1, 1 );
setDisp( spep_11 -3 + 173, 1, 0 );
changeAnime( spep_11 + 0, 1, 8 );

setBlendColor( spep_11 + 0, 1, 1, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_11 -3 + 111, 1, 1, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_11 -3 + 132, 1, 1, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_11 -3 + 172, 1, 1, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_11 -3 + 173, 1, 1, 1.0, 1.0, 1.0, 0 );

setMoveKey( spep_11 + 0, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 + 1, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 + 2, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 + 3, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 + 4, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 + 5, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 + 6, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 -3 + 111, 1, 144.4 -50, 63.8 , 0 );
--
setMoveKey( spep_11 -3 + 132, 1, 144.4 -50, 63.8 , 0 );
setMoveKey( spep_11 -3 + 173, 1, 144.4 -50, 63.8 , 0 );

a6=0.6;

setScaleKey( spep_11 + 0, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 1, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 2, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 3, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 4, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 -3 + 8, 1, 1.69 +a6, 1.69 +a6 );
setScaleKey( spep_11 -3 + 9, 1, 1.69 +a6, 1.69 +a6 );
setScaleKey( spep_11 -3 + 10, 1, 1.69 +a6, 1.69 +a6 );
setScaleKey( spep_11 -3 + 12, 1, 1.68 +a6, 1.68 +a6 );
setScaleKey( spep_11 -3 + 14, 1, 1.67 +a6, 1.67 +a6 );
setScaleKey( spep_11 -3 + 16, 1, 1.66 +a6, 1.66 +a6 );
setScaleKey( spep_11 -3 + 18, 1, 1.64 +a6, 1.64 +a6 );
setScaleKey( spep_11 -3 + 20, 1, 1.63 +a6, 1.63 +a6 );
setScaleKey( spep_11 -3 + 22, 1, 1.61 +a6, 1.61 +a6 );
setScaleKey( spep_11 -3 + 24, 1, 1.6 +a6, 1.6 +a6 );
setScaleKey( spep_11 -3 + 26, 1, 1.58 +a6, 1.58 +a6 );
setScaleKey( spep_11 -3 + 28, 1, 1.56 +a6, 1.56 +a6 );
setScaleKey( spep_11 -3 + 30, 1, 1.54 +a6, 1.54 +a6 );
setScaleKey( spep_11 -3 + 32, 1, 1.51 +a6, 1.51 +a6 );
setScaleKey( spep_11 -3 + 34, 1, 1.49 +a6, 1.49 +a6 );
setScaleKey( spep_11 -3 + 36, 1, 1.46 +a6, 1.46 +a6 );
setScaleKey( spep_11 -3 + 38, 1, 1.43 +a6, 1.43 +a6 );
setScaleKey( spep_11 -3 + 40, 1, 1.4 +a6, 1.4 +a6 );
setScaleKey( spep_11 -3 + 42, 1, 1.37 +a6, 1.37 +a6 );
setScaleKey( spep_11 -3 + 44, 1, 1.34 +a6, 1.34 +a6 );
setScaleKey( spep_11 -3 + 46, 1, 1.31 +a6, 1.31 +a6 );
setScaleKey( spep_11 -3 + 48, 1, 1.27 +a6, 1.27 +a6 );
setScaleKey( spep_11 -3 + 50, 1, 1.24 +a6, 1.24 +a6 );
setScaleKey( spep_11 -3 + 52, 1, 1.2 +a6, 1.2 +a6 );
setScaleKey( spep_11 -3 + 54, 1, 1.16 +a6, 1.16 +a6 );
setScaleKey( spep_11 -3 + 111, 1, 1.16 +a6, 1.16 +a6 );
--
setScaleKey( spep_11 -3 + 132, 1, 1.16 +a6, 1.16 +a6 );
setScaleKey( spep_11 -3 + 134, 1, 1.15 +a6, 1.15 +a6 );
setScaleKey( spep_11 -3 + 136, 1, 1.14 +a6, 1.14 +a6 );
setScaleKey( spep_11 -3 + 138, 1, 1.12 +a6, 1.12 +a6 );
setScaleKey( spep_11 -3 + 140, 1, 1.11 +a6, 1.11 +a6 );
setScaleKey( spep_11 -3 + 142, 1, 1.1 +a6, 1.1 +a6 );
setScaleKey( spep_11 -3 + 144, 1, 1.09 +a6, 1.09 +a6 );
setScaleKey( spep_11 -3 + 146, 1, 1.08 +a6, 1.08 +a6 );
setScaleKey( spep_11 -3 + 148, 1, 1.07 +a6, 1.07 +a6 );
setScaleKey( spep_11 -3 + 150, 1, 1.06 +a6, 1.06 +a6 );
setScaleKey( spep_11 -3 + 152, 1, 1.05 +a6, 1.05 +a6 );
setScaleKey( spep_11 -3 + 154, 1, 1.03 +a6, 1.03 +a6 );
setScaleKey( spep_11 -3 + 156, 1, 1.02 +a6, 1.02 +a6 );
setScaleKey( spep_11 -3 + 158, 1, 1.01 +a6, 1.01 +a6 );
setScaleKey( spep_11 -3 + 160, 1, 1 +a6, 1 +a6 );
setScaleKey( spep_11 -3 + 162, 1, 0.99 +a6, 0.99 +a6 );
setScaleKey( spep_11 -3 + 164, 1, 0.98 +a6, 0.98 +a6 );
setScaleKey( spep_11 -3 + 166, 1, 0.97 +a6, 0.97 +a6 );
setScaleKey( spep_11 -3 + 168, 1, 0.96 +a6, 0.96 +a6 );
setScaleKey( spep_11 -3 + 170, 1, 0.95 +a6, 0.95 +a6 );
setScaleKey( spep_11 -3 + 172, 1, 0.93 +a6, 0.93 +a6 );
setScaleKey( spep_11 -3 + 173, 1, 0.93 +a6, 0.93 +a6 );

setRotateKey( spep_11 + 0, 1, -27 );
setRotateKey( spep_11 + 1, 1, -27 );
setRotateKey( spep_11 + 2, 1, -27 );
setRotateKey( spep_11 + 3, 1, -27 );
setRotateKey( spep_11 + 4, 1, -27 );
setRotateKey( spep_11 + 5, 1, -27 );
setRotateKey( spep_11 + 6, 1, -27 );
setRotateKey( spep_11 + 111, 1, -27 );
--
setRotateKey( spep_11 + 132, 1, -27 );
setRotateKey( spep_11 + 170, 1, -27 );

-- ** K.O.演出 ** --
KO = entryEffect( spep_11 + 178, SP_16, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_011_front)
setEffMoveKey( spep_11 + 178, KO, 0, 0 , 0 );
setEffMoveKey( spep_11 + 354, KO, 0, 0 , 0 );
setEffScaleKey( spep_11 + 178, KO, 1.0, 1.0 );
setEffScaleKey( spep_11 + 354, KO, 1.0, 1.0 );
setEffRotateKey( spep_11 + 178, KO, 0 );
setEffRotateKey( spep_11 + 354, KO, 0 );
setEffAlphaKey( spep_11 + 178, KO, 255 );
setEffAlphaKey( spep_11 + 354, KO, 255 );

-- ** 音 ** --
--瓦礫音1
SE056 = playSe( spep_11 + 0, 1168 );
setSeVolumeByWorkId( spep_11 + 0, SE056, 6 );
setSeVolumeByWorkId( spep_11 + 4, SE056, 12 );
setSeVolumeByWorkId( spep_11 + 6, SE056, 22 );
setSeVolumeByWorkId( spep_11 + 8, SE056, 32 );
setSeVolumeByWorkId( spep_11 + 10, SE056, 42 );
setSeVolumeByWorkId( spep_11 + 12, SE056, 52 );
stopSe( spep_11 + 108, SE056, 6 );
setStartTimeMs( SE056,  1933 );

--瓦礫音2
SE058 = playSe( spep_11 + 0, 1044 );
setSeVolumeByWorkId( spep_11 + 0, SE058, 43 );
stopSe( spep_11 + 108, SE058, 6 );

--瓦礫音3
SE059 = playSe( spep_11 + 0, 1226 );
setSeVolumeByWorkId( spep_11 + 0, SE059, 52 );
stopSe( spep_11 + 106, SE059, 6 );
setStartTimeMs( SE056,  1933 );

--稲光
SE060 = playSe( spep_11 + 48, 1056 );
setSeVolumeByWorkId( spep_11 + 48, SE060, 67 );

--ラスト爆発1
SE061 = playSe( spep_11 + 112, 1069 );

--ラスト爆発2
SE062 = playSe( spep_11 + 130, 1011 );
setSeVolumeByWorkId( spep_11 + 130, SE062, 79 );

--ラスト爆発3
SE063 = playSe( spep_11 + 134, 1159 );
setSeVolumeByWorkId( spep_11 + 134, SE063, 84 );

--ラスト爆発4
SE064 = playSe( spep_11 + 136, 1024 );
setSeVolumeByWorkId( spep_11 + 136, SE064, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 198, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_11 + 52 );
entryFade( spep_11 +188 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_11 + 188 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 歩き、カットイン(218F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --歩き、カットイン(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 218, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 218, first_f, 255 );

spep_x = spep_0 + 8;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--オーラ1
SE001 = playSe( spep_0 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );

--イナヅマ
SE002 = playSe( spep_0 + 0, 1147 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 36 );

--足音1
SE003 = playSe( spep_0 + 0, 1106 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 158 );

--足音2
SE004 = playSe( spep_0 + 0, 1108 );

--顔カットイン
--SE005 = playSe( spep_0 + 18, 1018 );

--オーラ2
SE006 = playSe( spep_0 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 24, SE006, 56 );

--オーラ3
SE007 = playSe( spep_0 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 48, SE007, 56 );

--足音3
SE008 = playSe( spep_0 + 70, 1106 );
setSeVolumeByWorkId( spep_0 + 70, SE008, 141 );

--足音4
SE009 = playSe( spep_0 + 70, 1108 );

--オーラ4
SE010 = playSe( spep_0 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 72, SE010, 56 );

--オーラ5
SE011 = playSe( spep_0 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 96, SE011, 56 );

--オーラ6
SE012 = playSe( spep_0 + 120, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 120, SE012, 56 );

--気を放つ1
SE013 = playSe( spep_0 + 190, 1264 );
setSeVolumeByWorkId( spep_0 + 190, SE013, 0 );
setSeVolumeByWorkId( spep_0 + 191, SE013, 20 );
setSeVolumeByWorkId( spep_0 + 192, SE013, 40 );
setSeVolumeByWorkId( spep_0 + 193, SE013, 60 );
setSeVolumeByWorkId( spep_0 + 194, SE013, 80 );
setSeVolumeByWorkId( spep_0 + 195, SE013, 100 );
setSeVolumeByWorkId( spep_0 + 196, SE013, 115 );
stopSe( spep_0 +218 + 30, SE013, 184 );
setStartTimeMs( SE013,  950 );
setPitch( spep_0 + 133, SE013, -300 );
setTimeStretch( SE013, 0.8, 10, 1 );

--オーラ
SE014 = playSe( spep_0 + 144, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 144, SE014, 56 );

--気を放つ2
SE015 = playSe( spep_0 + 190, 1285 );
setSeVolumeByWorkId( spep_0 + 190, SE015, 0 );
setSeVolumeByWorkId( spep_0 + 192, SE015, 10 );
setSeVolumeByWorkId( spep_0 + 194, SE015, 20 );
setSeVolumeByWorkId( spep_0 + 196, SE015, 40 );
setSeVolumeByWorkId( spep_0 + 198, SE015, 60 );
setSeVolumeByWorkId( spep_0 + 200, SE015, 80 );
setSeVolumeByWorkId( spep_0 + 202, SE015, 90 );
setSeVolumeByWorkId( spep_0 + 204, SE015, 100 );
setStartTimeMs( SE015,  400 );

--オーラ7
SE016 = playSe( spep_0 + 168, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 168, SE016, 56 );

--足音5
SE017 = playSe( spep_0 + 186, 1106 );
setSeVolumeByWorkId( spep_0 + 186, SE017, 158 );

--足音6
SE018 = playSe( spep_0 + 186, 1108 );

--気を放つ3
SE019 = playSe( spep_0 + 186, 1231 );
setSeVolumeByWorkId( spep_0 + 186, SE019, 229 );

--気を放つ4
SE020 = playSe( spep_0 + 186, 1068 );
setSeVolumeByWorkId( spep_0 + 186, SE020, 43 );

--オーラ8
SE021 = playSe( spep_0 + 192, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 192, SE021, 56 );

--イナヅマ
SE022 = playSe( spep_0 + 206, 1147 );
setSeVolumeByWorkId( spep_0 + 206, SE022, 33 );
stopSe( spep_0 +218 +56 + 10, SE022, 18 );

--オーラ9
SE023 = playSe( spep_0 + 216, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 216, SE023, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 218, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 218;


--------------------------------------
-- 悟飯顔アップ(56F)
--------------------------------------
-- ** エフェクト等 ** --
faceup = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --悟飯顔アップ(ef_002)
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, faceup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 56, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 56, faceup, 255 );

-- ** 音 ** --
--オーラ1
SE024 = playSe( spep_1 + 22, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 22, SE024, 56 );

--オーラ2
SE025 = playSe( spep_1 + 46, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_1 + 46, SE025, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


--------------------------------------
-- 敵の渦巻集中(56F)
--------------------------------------
-- ** エフェクト等 ** --
uzumaki_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_003_front)
setEffMoveKey( spep_2 + 0, uzumaki_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, uzumaki_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, uzumaki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, uzumaki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, uzumaki_f, 0 );
setEffRotateKey( spep_2 + 56, uzumaki_f, 0 );
setEffAlphaKey( spep_2 + 0, uzumaki_f, 255 );
setEffAlphaKey( spep_2 + 56, uzumaki_f, 255 );

uzumaki_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵より奥(ef_003_back)
setEffMoveKey( spep_2 + 0, uzumaki_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, uzumaki_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, uzumaki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, uzumaki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, uzumaki_b, 0 );
setEffRotateKey( spep_2 + 56, uzumaki_b, 0 );
setEffAlphaKey( spep_2 + 0, uzumaki_b, 255 );
setEffAlphaKey( spep_2 + 56, uzumaki_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 101 );

b1=56;

setMoveKey( spep_2 + 0, 1, 84.8, 0.2 +b1, 0 );
setMoveKey( spep_2 + 1, 1, 85.4, 0.2 +b1, 0 );
setMoveKey( spep_2 + 2, 1, 86.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 6, 1, 86.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 7, 1, 86.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 8, 1, 87.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 9, 1, 87.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 10, 1, 87.9, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 12, 1, 88.5, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 14, 1, 89.2, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 16, 1, 89.8, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 18, 1, 90.4, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 20, 1, 91, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 22, 1, 91.6, 0.2 +b1, 0 );

setScaleKey( spep_2 + 0, 1, 2.385, 2.385 );
setScaleKey( spep_2 + 1, 1, 2.400, 2.400 );
setScaleKey( spep_2 + 2, 1, 2.415, 2.415 );
setScaleKey( spep_2 -3 + 6, 1, 2.445, 2.445 );
setScaleKey( spep_2 -3 + 7, 1, 2.445, 2.445 );
setScaleKey( spep_2 -3 + 8, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 9, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 10, 1, 2.475, 2.475 );
setScaleKey( spep_2 -3 + 12, 1, 2.489, 2.489 );
setScaleKey( spep_2 -3 + 14, 1, 2.505, 2.505 );
setScaleKey( spep_2 -3 + 16, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 18, 1, 2.535, 2.535 );
setScaleKey( spep_2 -3 + 20, 1, 2.565, 2.565 );
setScaleKey( spep_2 -3 + 22, 1, 2.58, 2.58 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 92.2, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 2, 1, 92.9, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 4, 1, 93.5, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 6, 1, 94.1, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 8, 1, 94.7, 0.2 +b1, 0 );
    setMoveKey( SP_dodge + 10, 1, 95.3, 0.2 +b1, 0 );

    setScaleKey( SP_dodge + 0, 1, 2.59, 2.59 );
    setScaleKey( SP_dodge + 2, 1, 2.61, 2.61 );
    setScaleKey( SP_dodge + 4, 1, 2.625, 2.625 );
    setScaleKey( SP_dodge + 6, 1, 2.64, 2.64 );
    setScaleKey( SP_dodge + 8, 1, 2.67, 2.67 );
    setScaleKey( SP_dodge + 10, 1, 2.685, 2.685 );
--
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

setDisp( spep_2 + 56, 1, 0 );

setMoveKey( spep_2 -3 + 24, 1, 92.2, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 26, 1, 92.9, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 28, 1, 93.5, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 30, 1, 94.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 32, 1, 94.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 34, 1, 95.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 36, 1, 96, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 38, 1, 96.6, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 40, 1, 97.2, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 42, 1, 97.8, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 44, 1, 98.4, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 46, 1, 99, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 48, 1, 99.7, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 50, 1, 100.3, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 52, 1, 100.9, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 54, 1, 101.5, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 57, 1, 102.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 58, 1, 102.1, 0.2 +b1, 0 );
setMoveKey( spep_2 -3 + 59, 1, 102.1, 0.2 +b1, 0 );

setScaleKey( spep_2 -3 + 24, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 26, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 28, 1, 2.625, 2.625 );
setScaleKey( spep_2 -3 + 30, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 32, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 34, 1, 2.685, 2.685 );
setScaleKey( spep_2 -3 + 36, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 38, 1, 2.715, 2.715 );
setScaleKey( spep_2 -3 + 40, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 42, 1, 2.745, 2.745 );
setScaleKey( spep_2 -3 + 44, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 46, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 48, 1, 2.805, 2.805 );
setScaleKey( spep_2 -3 + 50, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 52, 1, 2.835, 2.835 );
setScaleKey( spep_2 -3 + 54, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 57, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 58, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 59, 1, 2.88, 2.88 );

setRotateKey( spep_2 + 56, 1, 0 );

-- ** 音 ** --
--敵に近づく
SE026 = playSe( spep_2 + 34, 1167 );
setSeVolumeByWorkId( spep_2 + 34, SE026, 21 );
stopSe( spep_2 +56 + 20, SE026, 20 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


--------------------------------------
--拳パンチ(32F)
--------------------------------------
-- ** エフェクト等 ** --
punch = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --拳パンチ(ef_004)
setEffMoveKey( spep_3 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 32, punch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 32, punch, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch, 0 );
setEffRotateKey( spep_3 + 32, punch, 0 );
setEffAlphaKey( spep_3 + 0, punch, 255 );
setEffAlphaKey( spep_3 + 32, punch, 255 );

-- ** 音 ** --
--敵を突き破る1
SE027 = playSe( spep_3 + 10, 1187 );
setSeVolumeByWorkId( spep_3 + 10, SE027, 68 );

--敵を突き破る2
SE028 = playSe( spep_3 + 14, 1110 );
setSeVolumeByWorkId( spep_3 + 14, SE028, 58 );

--敵を突き破る3
SE029 = playSe( spep_3 + 18, 1153 );
setSeVolumeByWorkId( spep_3 + 18, SE029, 68 );

--敵を突き破る4
SE030 = playSe( spep_3 + 20, 1123 );
setSeVolumeByWorkId( spep_3 + 20, SE030, 0 );
setSeVolumeByWorkId( spep_3 +22 + 0, SE030, 0 );
setSeVolumeByWorkId( spep_3 +22 + 2, SE030, 8 );
setSeVolumeByWorkId( spep_3 +22 + 4, SE030, 16 );
setSeVolumeByWorkId( spep_3 +22 + 6, SE030, 24 );
setSeVolumeByWorkId( spep_3 +22 + 8, SE030, 32 );
setSeVolumeByWorkId( spep_3 +22 + 10, SE030, 40 );
setSeVolumeByWorkId( spep_3 +22 + 12, SE030, 48 );
setSeVolumeByWorkId( spep_3 +22 + 14, SE030, 56 );
setSeVolumeByWorkId( spep_3 +22 + 16, SE030, 64 );
setPitch( spep_3 + 20, SE030, -200 );
setTimeStretch( SE030, 0.96, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 32, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 32;


--------------------------------------
--悟飯拳突き出してる(56F)
--------------------------------------
-- ** エフェクト等 ** --
ptuki = entryEffectLife( spep_4 + 0, SP_06r, 55, 0x100, -1, 0, 0, 0 );  --悟飯拳突き出してる(ef_005)
setEffMoveKey( spep_4 + 0, ptuki, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, ptuki, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ptuki, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, ptuki, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ptuki, 0 );
setEffRotateKey( spep_4 + 56, ptuki, 0 );
setEffAlphaKey( spep_4 + 0, ptuki, 255 );
setEffAlphaKey( spep_4 + 56, ptuki, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


--------------------------------------
--敵吹っ飛び(56F)
--------------------------------------
-- ** エフェクト等 ** --
huttobi_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_006_front)
setEffMoveKey( spep_5 + 0, huttobi_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, huttobi_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, huttobi_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, huttobi_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, huttobi_f, 0 );
setEffRotateKey( spep_5 + 56, huttobi_f, 0 );
setEffAlphaKey( spep_5 + 0, huttobi_f, 255 );
setEffAlphaKey( spep_5 + 56, huttobi_f, 255 );

huttobi_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --敵より奥(ef_006_back)
setEffMoveKey( spep_5 + 0, huttobi_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, huttobi_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, huttobi_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, huttobi_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, huttobi_b, 0 );
setEffRotateKey( spep_5 + 56, huttobi_b, 0 );
setEffAlphaKey( spep_5 + 0, huttobi_b, 255 );
setEffAlphaKey( spep_5 + 56, huttobi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5 -1 + 6, 1, 5 );

setBlendColor(spep_5 + 0, 1, 3, 0.5, 0.24, 0.6, 0.6);
setBlendColor(spep_5 + 56, 1, 3, 0.5, 0.24, 0.6, 0.6);

a2=10;
b2=10;

setMoveKey( spep_5 + 0, 1, -164.2 +140, -173.6 + 40, 0 );
setMoveKey( spep_5 -1 + 2, 1, -91.3 +140, -94 +40, 0 );
setMoveKey( spep_5 -1 + 5, 1, -71.1 +140, -28.7 +40, 0 );
setMoveKey( spep_5 -1 + 6, 1, 76.9 -a2, 131.4 -b2, 0 );
setMoveKey( spep_5 -1 + 7, 1, 76.9 -a2, 131.4 -b2, 0 );
setMoveKey( spep_5 -1 + 8, 1, 130 -a2, 155.4 -b2, 0 );
setMoveKey( spep_5 -1 + 10, 1, 121.9 -a2, 197.4 -b2, 0 );
setMoveKey( spep_5 -1 + 12, 1, 132.6 -a2, 177.4 -b2, 0 );
setMoveKey( spep_5 -1 + 14, 1, 122.2 -a2, 215.5 -b2, 0 );
setMoveKey( spep_5 -1 + 16, 1, 170.7 -a2, 231.7 -b2, 0 );
setMoveKey( spep_5 -1 + 18, 1, 158.1 -a2, 257.9 -b2, 0 );
setMoveKey( spep_5 -1 + 20, 1, 164.3 -a2, 242.4 -b2, 0 );
setMoveKey( spep_5 -1 + 22, 1, 169.5 -a2, 281.2 -b2, 0 );
setMoveKey( spep_5 -1 + 24, 1, 173.8 -a2, 266.1 -b2, 0 );
setMoveKey( spep_5 -1 + 26, 1, 165 -a2, 285.3 -b2, 0 );
setMoveKey( spep_5 -1 + 28, 1, 191.2 -a2, 294.8 -b2, 0 );
setMoveKey( spep_5 -1 + 30, 1, 180.5 -a2, 302.8 -b2, 0 );
setMoveKey( spep_5 -1 + 32, 1, 180.9 -a2, 285.1 -b2, 0 );
setMoveKey( spep_5 -1 + 34, 1, 180.3 -a2, 309.9 -b2, 0 );
setMoveKey( spep_5 -1 + 36, 1, 174.8 -a2, 293.1 -b2, 0 );
setMoveKey( spep_5 -1 + 38, 1, 188.5 -a2, 294.9 -b2, 0 );
setMoveKey( spep_5 -1 + 40, 1, 177.2 -a2, 303.3 -b2, 0 );
setMoveKey( spep_5 -1 + 42, 1, 169.2 -a2, 278.2 -b2, 0 );
setMoveKey( spep_5 -1 + 44, 1, 156.4 -a2, 279.8 -b2, 0 );
setMoveKey( spep_5 -1 + 46, 1, 166.9 -a2, 272.1 -b2, 0 );
setMoveKey( spep_5 -1 + 48, 1, 152.5 -a2, 263 -b2, 0 );
setMoveKey( spep_5 -1 + 50, 1, 145.4 -a2, 252.8 -b2, 0 );
setMoveKey( spep_5 -1 + 52, 1, 137.6 -a2, 241.4 -b2, 0 );
setMoveKey( spep_5 -1 + 54, 1, 129.1 -a2, 228.7 -b2, 0 );
setMoveKey( spep_5 -1 + 56, 1, 120 -a2, 214.9 -b2, 0 );
setMoveKey( spep_5 -1 + 57, 1, 110.2 -a2, 200.1 -b2, 0 );

a5=0.7;

setScaleKey( spep_5 + 0, 1, 3.85 +a5 , 3.85 +a5 );
setScaleKey( spep_5 -1 + 2, 1, 3.374 +a5, 3.374 +a5 );
setScaleKey( spep_5 -1 + 5, 1, 2.646 +a5, 2.646 +a5 );
setScaleKey( spep_5 -1 + 6, 1, 2.142 +a5, 2.142 +a5 );
setScaleKey( spep_5 -1 + 7, 1, 2.142 +a5, 2.142 +a5 );
setScaleKey( spep_5 -1 + 8, 1, 2.044 +a5, 2.044 +a5 );
setScaleKey( spep_5 -1 + 10, 1, 1.946 +a5, 1.946 +a5 );
setScaleKey( spep_5 -1 + 12, 1, 1.848 +a5, 1.848 +a5 );
setScaleKey( spep_5 -1 + 14, 1, 1.75 +a5, 1.75 +a5 );
setScaleKey( spep_5 -1 + 16, 1, 1.666 +a5, 1.666 +a5 );
setScaleKey( spep_5 -1 + 18, 1, 1.582 +a5, 1.582 +a5 );
setScaleKey( spep_5 -1 + 20, 1, 1.512 +a5, 1.512 +a5 );
setScaleKey( spep_5 -1 + 22, 1, 1.428 +a5, 1.428 +a5 );
setScaleKey( spep_5 -1 + 24, 1, 1.358 +a5, 1.358 +a5 );
setScaleKey( spep_5 -1 + 26, 1, 1.302 +a5, 1.302 +a5 );
setScaleKey( spep_5 -1 + 28, 1, 1.232 +a5, 1.232 +a5 );
setScaleKey( spep_5 -1 + 30, 1, 1.176 +a5, 1.176 +a5 );
setScaleKey( spep_5 -1 + 32, 1, 1.12 +a5, 1.12 +a5 );
setScaleKey( spep_5 -1 + 34, 1, 1.078 +a5, 1.078 +a5 );
setScaleKey( spep_5 -1 + 36, 1, 1.022 +a5, 1.022 +a5 );
setScaleKey( spep_5 -1 + 38, 1, 0.98 +a5, 0.98 +a5 );
setScaleKey( spep_5 -1 + 40, 1, 0.952 +a5, 0.952 +a5 );
setScaleKey( spep_5 -1 + 42, 1, 0.91 +a5, 0.91 +a5 );
setScaleKey( spep_5 -1 + 44, 1, 0.882 +a5, 0.882 +a5 );
setScaleKey( spep_5 -1 + 46, 1, 0.84 +a5, 0.84 +a5 );
setScaleKey( spep_5 -1 + 48, 1, 0.826 +a5, 0.826 +a5 );
setScaleKey( spep_5 -1 + 50, 1, 0.798 +a5, 0.798 +a5 );
setScaleKey( spep_5 -1 + 52, 1, 0.77 +a5, 0.77 +a5 );
setScaleKey( spep_5 -1 + 54, 1, 0.756 +a5, 0.756 +a5 );
setScaleKey( spep_5 -1 + 56, 1, 0.742 +a5, 0.742 +a5 );
setScaleKey( spep_5 -1 + 57, 1, 0.728 +a5, 0.728 +a5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 5, 1, 0 );
setRotateKey( spep_5 + 6, 1, 2 );
setRotateKey( spep_5 + 39, 1, 20 );
setRotateKey( spep_5 + 56, 1, 20 );


-- ** 音 ** --
--敵飛んでいく1
SE031 = playSe( spep_5 + 0, 1027 );
setSeVolumeByWorkId( spep_5 + 0, SE031, 45 );

--敵飛んでいく2
SE032 = playSe( spep_5 + 4, 1183 );
stopSe( spep_5 +56 + 6, SE032, 20 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

--------------------------------------
--かめはめ波溜め(116F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --かめはめ波溜め(ef_007)
setEffMoveKey( spep_6 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tame, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame, 0 );
setEffRotateKey( spep_6 + 116, tame, 0 );
setEffAlphaKey( spep_6 + 0, tame, 255 );
setEffAlphaKey( spep_6 + 116, tame, 255 );

-- ** 音 ** --
--オーラ２_1
SE033 = playSe( spep_6 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 0, SE033, 63 );

--イナヅマ２
SE034 = playSe( spep_6 + 2, 1147 );
setSeVolumeByWorkId( spep_6 + 2, SE034, 42 );

--オーラ２_2
SE035 = playSe( spep_6 + 14, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 14, SE035, 63 );

--構える
SE036 = playSe( spep_6 + 22, 1003 );
setSeVolumeByWorkId( spep_6 + 22, SE036, 72 );

--オーラ２_3
SE037 = playSe( spep_6 + 38, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 38, SE037, 63 );

--かめはめ波溜め1
SE038 = playSe( spep_6 + 38, 1131 );

--かめはめ波溜め2
SE039 = playSe( spep_6 + 38, 1132 );
setSeVolumeByWorkId( spep_6 + 38, SE039, 72 );

--かめはめ波溜め3
SE040 = playSe( spep_6 + 38, 1014 );
setSeVolumeByWorkId( spep_6 + 38, SE040, 60 );

--オーラ２_4
SE041 = playSe( spep_6 + 62, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 62, SE041, 63 );

--オーラ２_5
SE042 = playSe( spep_6 + 86, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_6 + 86, SE042, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;

--------------------------------------
--かめはめ波撃つ(116F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --かめはめ波撃つ(ef_008)
setEffMoveKey( spep_7 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, shot, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_7 + 116, shot, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, shot, 0 );
setEffRotateKey( spep_7 + 116, shot, 0 );
setEffAlphaKey( spep_7 + 0, shot, 255 );
setEffAlphaKey( spep_7 + 116, shot, 255 );

-- ** 音 ** --
--オーラ２_6
SE043 = playSe( spep_7 + 4, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_7 + 4, SE043, 63 );

--かめはめ波発射1
SE044 = playSe( spep_7 + 10, 1022 );

--かめはめ波発射2
SE045 = playSe( spep_7 + 10, 1285 );
setSeVolumeByWorkId( spep_7 + 10, SE045, 46 );
setPitch( spep_7 + 10, SE045, 400 );
setTimeStretch( SE045, 1.27, 10, 1 );

--かめはめ波発射3
SE046 = playSe( spep_7 + 10, 1146 );

--オーラ２_7
SE047 = playSe( spep_7 + 18, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_7 + 18, SE047, 63 );

--かめはめ波発射4
SE048 = playSe( spep_7 + 18, 1044 );
setSeVolumeByWorkId( spep_7 + 18, SE048, 100 );
setSeVolumeByWorkId( spep_7 + 18, SE048, 100 );
setSeVolumeByWorkId( spep_7 + 190, SE048, 100 );
setSeVolumeByWorkId( spep_7 + 194, SE048, 80 );
setSeVolumeByWorkId( spep_7 + 198, SE048, 60 );
setSeVolumeByWorkId( spep_7 + 202, SE048, 40 );
setSeVolumeByWorkId( spep_7 + 208, SE048, 25 );
stopSe( spep_7 +278 + 0, SE048, 5 ); --(spep_7~10まで)

--かめはめ波弾道
SE050 = playSe( spep_7 + 110, 1213 );
setSeVolumeByWorkId( spep_7 + 110, SE050, 5 );
setSeVolumeByWorkId( spep_7 + 130, SE050, 10 );
setSeVolumeByWorkId( spep_7 + 150, SE050, 20 );
setSeVolumeByWorkId( spep_7 + 160, SE050, 31 );
setSeVolumeByWorkId( spep_7 + 170, SE050, 42 );
setSeVolumeByWorkId( spep_7 + 182, SE050, 53 );
stopSe( spep_7 +278 + 0, SE050, 5 ); --(spep_7~10まで)
setStartTimeMs( SE050,  800 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 116;

--------------------------------------
--爆発(86F)
--------------------------------------
-- ** エフェクト等 ** --
bakuhathu = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --爆発(ef_009)
setEffMoveKey( spep_8 + 0, bakuhathu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, bakuhathu, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, bakuhathu, -1.0, 1.0 );
setEffScaleKey( spep_8 + 86, bakuhathu, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bakuhathu, 0 );
setEffRotateKey( spep_8 + 86, bakuhathu, 0 );
setEffAlphaKey( spep_8 + 0, bakuhathu, 255 );
setEffAlphaKey( spep_8 + 86, bakuhathu, 255 );

-- ** 音 ** --
--爆発1
SE052 = playSe( spep_8 + 2, 1068 );

--爆発2
SE053 = playSe( spep_8 + 12, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 86, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_8 + 84, 0, 4, 0, 255, 255, 255, 255);     -- white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 86;

--------------------------------------
--敵に飛んでくる悟飯(76F)
--------------------------------------
-- ** エフェクト等 ** --
missile_f = entryEffect( spep_9 + 0, SP_12r, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_006_front)
setEffMoveKey( spep_9 + 0, missile_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, missile_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, missile_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, missile_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, missile_f, 0 );
setEffRotateKey( spep_9 + 76, missile_f, 0 );
setEffAlphaKey( spep_9 + 0, missile_f, 255 );
setEffAlphaKey( spep_9 + 76, missile_f, 255 );

missile_b = entryEffect( spep_9 + 0, SP_13r, 0x80, -1, 0, 0, 0 );  --敵より手前(ef_006_front)
setEffMoveKey( spep_9 + 0, missile_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, missile_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, missile_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, missile_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, missile_b, 0 );
setEffRotateKey( spep_9 + 76, missile_b, 0 );
setEffAlphaKey( spep_9 + 0, missile_b, 255 );
setEffAlphaKey( spep_9 + 76, missile_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 76, 1, 0 );
changeAnime( spep_9 + 0, 1, 6 );
changeAnime( spep_9 -3 + 50, 1, 8 );

setBlendColor( spep_9 + 0, 1, 1, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_9 + 75, 1, 1, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_9 + 76, 1, 1, 1.0, 1.0, 1.0, 0 );

setMoveKey( spep_9 + 0, 1, -159.7, -12.8 , 0 );
setMoveKey( spep_9 + 1, 1, -141.7, -12.8 , 0 );
setMoveKey( spep_9 + 2, 1, -123.7, -12.8 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -105.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 7, 1, -105.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -87.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 9, 1, -87.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -69.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -51.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -34, -12.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -33.1, -12.8 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -32.2, -12.8 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -31.3, -12.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -30.4, -12.8 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -29.5, -12.8 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -28.7, -12.8 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -27.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 30, 1, -26.9, -12.8 , 0 );
setMoveKey( spep_9 -3 + 32, 1, -26, -12.8 , 0 );
setMoveKey( spep_9 -3 + 34, 1, -25.1, -12.8 , 0 );
setMoveKey( spep_9 -3 + 36, 1, -24.2, -12.8 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -23.3, -12.8 , 0 );
setMoveKey( spep_9 -3 + 40, 1, -22.4, -12.8 , 0 );
setMoveKey( spep_9 -3 + 42, 1, -21.5, -12.8 , 0 );
setMoveKey( spep_9 -3 + 44, 1, -20.7, -12.8 , 0 );
setMoveKey( spep_9 -3 + 46, 1, -19.8, -12.8 , 0 );
setMoveKey( spep_9 -3 + 49, 1, -18.9, -12.8 , 0 );

a3=70;
b3=25;

setMoveKey( spep_9 -3 + 50, 1, -175.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 52, 1, -183.4 +a3, 28.9 -b3, 0 );
setMoveKey( spep_9 -3 + 54, 1, -178.9 +a3, -27.1 -b3, 0 );
setMoveKey( spep_9 -3 + 56, 1, -191.3 +a3, 2.2 -b3, 0 );
setMoveKey( spep_9 -3 + 58, 1, -159.3 +a3, 7.6 -b3, 0 );
setMoveKey( spep_9 -3 + 60, 1, -175.3 +a3, 20.9 -b3, 0 );
setMoveKey( spep_9 -3 + 62, 1, -175.3 +a3, -11.1 -b3, 0 );
setMoveKey( spep_9 -3 + 64, 1, -191.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 66, 1, -159.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 68, 1, -175.3 +a3, 20.9 -b3, 0 );
setMoveKey( spep_9 -3 + 70, 1, -175.3 +a3, -11.1 -b3, 0 );
setMoveKey( spep_9 -3 + 72, 1, -183.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 74, 1, -167.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 76, 1, -175.3 +a3, 12.9 -b3, 0 );
setMoveKey( spep_9 -3 + 78, 1, -175.3 +a3, 4.9 -b3, 0 );
setMoveKey( spep_9 -3 + 79, 1, -175.3 +a3, 4.9 -b3, 0 );

a4=0.2;

setScaleKey( spep_9 + 0, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 1, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 2, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 3, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 4, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 5, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 + 6, 1, 0.55+a4 , 0.55+a4 );
setScaleKey( spep_9 -3 + 49, 1, 0.55+a4, 0.55+a4 );
setScaleKey( spep_9 -3 + 50, 1, 0.64+a4, 0.64+a4 );
setScaleKey( spep_9 -3 + 79, 1, 0.64+a4, 0.64+a4 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 1, 1, 0 );
setRotateKey( spep_9 + 2, 1, 0 );
setRotateKey( spep_9 + 3, 1, 0 );
setRotateKey( spep_9 + 4, 1, 0 );
setRotateKey( spep_9 + 5, 1, 0 );
setRotateKey( spep_9 + 6, 1, 0 );
setRotateKey( spep_9 + 79, 1, 0 );

-- ** 音 ** --
--閃光の中でパンチ
SE054 = playSe( spep_9 + 40, 1231 );
setSeVolumeByWorkId( spep_9 + 40, SE054, 81 );
setPitch( spep_9 + 40, SE054, 300 );
setTimeStretch( SE054, 1.2, 10, 1 );

--閃光の中でパンチ
SE055 = playSe( spep_9 + 42, 1169 );
setSeVolumeByWorkId( spep_9 + 42, SE055, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 76, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 76;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_10 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_10 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_10 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_10 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_10 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_10 + 0, shuchusen, 0 );
setEffRotateKey( spep_10 + 90, shuchusen, 0 );
setEffAlphaKey( spep_10 + 0, shuchusen, 255 );
setEffAlphaKey( spep_10 + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_10 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_10 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_10 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 94;

--------------------------------------
--フィニッシュ(198F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_011_front)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 198, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 198, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 198, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 198, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --敵より奥(ef_011_back)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 198, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_11 + 198, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 198, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 198, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 111, 1, 0 );
setDisp( spep_11 -3 + 132, 1, 1 );
setDisp( spep_11 -3 + 173, 1, 0 );
changeAnime( spep_11 + 0, 1, 108 );

setBlendColor( spep_11 + 0, 1, 1, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_11 -3 + 111, 1, 1, 1.0, 1.0, 1.0, 0.7 );
--
setBlendColor( spep_11 -3 + 132, 1, 1, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_11 -3 + 172, 1, 1, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_11 -3 + 173, 1, 1, 1.0, 1.0, 1.0, 0 );

setMoveKey( spep_11 + 0, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 + 1, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 + 2, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 + 3, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 + 4, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 + 5, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 + 6, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 -3 + 111, 1, -144.4 +50, 63.8 , 0 );
--
setMoveKey( spep_11 -3 + 132, 1, -144.4 +50, 63.8 , 0 );
setMoveKey( spep_11 -3 + 173, 1, -144.4 +50, 63.8 , 0 );

a6=0.6;

setScaleKey( spep_11 + 0, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 1, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 2, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 3, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 + 4, 1, 1.7 +a6, 1.7 );
setScaleKey( spep_11 -3 + 8, 1, 1.69 +a6, 1.69 +a6 );
setScaleKey( spep_11 -3 + 9, 1, 1.69 +a6, 1.69 +a6 );
setScaleKey( spep_11 -3 + 10, 1, 1.69 +a6, 1.69 +a6 );
setScaleKey( spep_11 -3 + 12, 1, 1.68 +a6, 1.68 +a6 );
setScaleKey( spep_11 -3 + 14, 1, 1.67 +a6, 1.67 +a6 );
setScaleKey( spep_11 -3 + 16, 1, 1.66 +a6, 1.66 +a6 );
setScaleKey( spep_11 -3 + 18, 1, 1.64 +a6, 1.64 +a6 );
setScaleKey( spep_11 -3 + 20, 1, 1.63 +a6, 1.63 +a6 );
setScaleKey( spep_11 -3 + 22, 1, 1.61 +a6, 1.61 +a6 );
setScaleKey( spep_11 -3 + 24, 1, 1.6 +a6, 1.6 +a6 );
setScaleKey( spep_11 -3 + 26, 1, 1.58 +a6, 1.58 +a6 );
setScaleKey( spep_11 -3 + 28, 1, 1.56 +a6, 1.56 +a6 );
setScaleKey( spep_11 -3 + 30, 1, 1.54 +a6, 1.54 +a6 );
setScaleKey( spep_11 -3 + 32, 1, 1.51 +a6, 1.51 +a6 );
setScaleKey( spep_11 -3 + 34, 1, 1.49 +a6, 1.49 +a6 );
setScaleKey( spep_11 -3 + 36, 1, 1.46 +a6, 1.46 +a6 );
setScaleKey( spep_11 -3 + 38, 1, 1.43 +a6, 1.43 +a6 );
setScaleKey( spep_11 -3 + 40, 1, 1.4 +a6, 1.4 +a6 );
setScaleKey( spep_11 -3 + 42, 1, 1.37 +a6, 1.37 +a6 );
setScaleKey( spep_11 -3 + 44, 1, 1.34 +a6, 1.34 +a6 );
setScaleKey( spep_11 -3 + 46, 1, 1.31 +a6, 1.31 +a6 );
setScaleKey( spep_11 -3 + 48, 1, 1.27 +a6, 1.27 +a6 );
setScaleKey( spep_11 -3 + 50, 1, 1.24 +a6, 1.24 +a6 );
setScaleKey( spep_11 -3 + 52, 1, 1.2 +a6, 1.2 +a6 );
setScaleKey( spep_11 -3 + 54, 1, 1.16 +a6, 1.16 +a6 );
setScaleKey( spep_11 -3 + 111, 1, 1.16 +a6, 1.16 +a6 );
--
setScaleKey( spep_11 -3 + 132, 1, 1.16 +a6, 1.16 +a6 );
setScaleKey( spep_11 -3 + 134, 1, 1.15 +a6, 1.15 +a6 );
setScaleKey( spep_11 -3 + 136, 1, 1.14 +a6, 1.14 +a6 );
setScaleKey( spep_11 -3 + 138, 1, 1.12 +a6, 1.12 +a6 );
setScaleKey( spep_11 -3 + 140, 1, 1.11 +a6, 1.11 +a6 );
setScaleKey( spep_11 -3 + 142, 1, 1.1 +a6, 1.1 +a6 );
setScaleKey( spep_11 -3 + 144, 1, 1.09 +a6, 1.09 +a6 );
setScaleKey( spep_11 -3 + 146, 1, 1.08 +a6, 1.08 +a6 );
setScaleKey( spep_11 -3 + 148, 1, 1.07 +a6, 1.07 +a6 );
setScaleKey( spep_11 -3 + 150, 1, 1.06 +a6, 1.06 +a6 );
setScaleKey( spep_11 -3 + 152, 1, 1.05 +a6, 1.05 +a6 );
setScaleKey( spep_11 -3 + 154, 1, 1.03 +a6, 1.03 +a6 );
setScaleKey( spep_11 -3 + 156, 1, 1.02 +a6, 1.02 +a6 );
setScaleKey( spep_11 -3 + 158, 1, 1.01 +a6, 1.01 +a6 );
setScaleKey( spep_11 -3 + 160, 1, 1 +a6, 1 +a6 );
setScaleKey( spep_11 -3 + 162, 1, 0.99 +a6, 0.99 +a6 );
setScaleKey( spep_11 -3 + 164, 1, 0.98 +a6, 0.98 +a6 );
setScaleKey( spep_11 -3 + 166, 1, 0.97 +a6, 0.97 +a6 );
setScaleKey( spep_11 -3 + 168, 1, 0.96 +a6, 0.96 +a6 );
setScaleKey( spep_11 -3 + 170, 1, 0.95 +a6, 0.95 +a6 );
setScaleKey( spep_11 -3 + 172, 1, 0.93 +a6, 0.93 +a6 );
setScaleKey( spep_11 -3 + 173, 1, 0.93 +a6, 0.93 +a6 );

setRotateKey( spep_11 + 0, 1, 27 );
setRotateKey( spep_11 + 1, 1, 27 );
setRotateKey( spep_11 + 2, 1, 27 );
setRotateKey( spep_11 + 3, 1, 27 );
setRotateKey( spep_11 + 4, 1, 27 );
setRotateKey( spep_11 + 5, 1, 27 );
setRotateKey( spep_11 + 6, 1, 27 );
setRotateKey( spep_11 + 111, 1, 27 );
--
setRotateKey( spep_11 + 132, 1, 27 );
setRotateKey( spep_11 + 170, 1, 27 );

-- ** K.O.演出 ** --
KO = entryEffect( spep_11 + 178, SP_16, 0x100, -1, 0, 0, 0 );  --敵より手前(ef_011_front)
setEffMoveKey( spep_11 + 178, KO, 0, 0 , 0 );
setEffMoveKey( spep_11 + 354, KO, 0, 0 , 0 );
setEffScaleKey( spep_11 + 178, KO, -1.0, 1.0 );
setEffScaleKey( spep_11 + 354, KO, -1.0, 1.0 );
setEffRotateKey( spep_11 + 178, KO, 0 );
setEffRotateKey( spep_11 + 354, KO, 0 );
setEffAlphaKey( spep_11 + 178, KO, 255 );
setEffAlphaKey( spep_11 + 354, KO, 255 );

-- ** 音 ** --
--瓦礫音1
SE056 = playSe( spep_11 + 0, 1168 );
setSeVolumeByWorkId( spep_11 + 0, SE056, 6 );
setSeVolumeByWorkId( spep_11 + 4, SE056, 12 );
setSeVolumeByWorkId( spep_11 + 6, SE056, 22 );
setSeVolumeByWorkId( spep_11 + 8, SE056, 32 );
setSeVolumeByWorkId( spep_11 + 10, SE056, 42 );
setSeVolumeByWorkId( spep_11 + 12, SE056, 52 );
stopSe( spep_11 + 108, SE056, 6 );
setStartTimeMs( SE056,  1933 );

--瓦礫音2
SE058 = playSe( spep_11 + 0, 1044 );
setSeVolumeByWorkId( spep_11 + 0, SE058, 43 );
stopSe( spep_11 + 108, SE058, 6 );

--瓦礫音3
SE059 = playSe( spep_11 + 0, 1226 );
setSeVolumeByWorkId( spep_11 + 0, SE059, 52 );
stopSe( spep_11 + 106, SE059, 6 );
setStartTimeMs( SE056,  1933 );

--稲光
SE060 = playSe( spep_11 + 48, 1056 );
setSeVolumeByWorkId( spep_11 + 48, SE060, 67 );

--ラスト爆発1
SE061 = playSe( spep_11 + 112, 1069 );

--ラスト爆発2
SE062 = playSe( spep_11 + 130, 1011 );
setSeVolumeByWorkId( spep_11 + 130, SE062, 79 );

--ラスト爆発3
SE063 = playSe( spep_11 + 134, 1159 );
setSeVolumeByWorkId( spep_11 + 134, SE063, 84 );

--ラスト爆発4
SE064 = playSe( spep_11 + 136, 1024 );
setSeVolumeByWorkId( spep_11 + 136, SE064, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 198, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_11 + 52 );
entryFade( spep_11 +188 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_11 + 188 );

end