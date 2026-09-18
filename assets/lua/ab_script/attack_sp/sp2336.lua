--1023980:UR魔人ベジータ_ファイナルインパクト_sp2336
--sp_effect_a3_00089
--sp2336

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
SP_01 = 159271;  --開幕  ef_001
SP_02 = 159272;  --突進  ef_002
SP_03 = 159273;  --膝蹴り～蹴り 前面   ef_003_1
SP_04 = 159274;  --膝蹴り～蹴り 背面   ef_003_2
SP_05 = 159275;  --気弾構え    ef_004
SP_06 = 159276;  --発射 前面   ef_005_1
SP_07 = 159277;  --発射 背面   ef_005_2
SP_08 = 159278;  --フィニッシュ  ef_006

--敵側
SP_01r = 159279;  --開幕  ef_101
SP_02r = 159280;  --突進  ef_102
SP_03r = 159281;  --膝蹴り～蹴り 前面   ef_103_1
SP_05r = 159282;  --気弾構え    ef_104
SP_06r = 159283;  --発射 前面   ef_105_1
SP_07r = 159284;  --発射 背面   ef_105_2
SP_08r = 159285;  --フィニッシュ  ef_106

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 88, 0x100, -1, 0, 0, 0 );  --開幕  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 88, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 88 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 88, first_f, 0 );

spep_x = spep_0 + 0;
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 80 );
SE002 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 76 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 79 );

--イナヅマ
SE004 = playSeVer2( spep_0 + 0, 1148, "",spep_0 + 104, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 81 );
SE005 = playSeVer2( spep_0 + 0, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 89 );

--土埃
SE006 = playSeVer2( spep_0 + 0, 1168, "",spep_0 + 144, 30, 70, -1);
setSeVolumeByWorkId( spep_0 + 0, SE006, 70 );
SE007 = playSeVer2( spep_0 + 16, 1188, "", 0, 10, 0, -1);
setStartTimeMs( SE007,  167 );

--顔カットイン
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE009 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE009, 79 );
SE010 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE010, 79 );
SE011 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE011, 79 )

--ベジータ突っ込む
SE012 = playSeVer2( spep_0 + 80, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 80, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 80, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;


------------------------------------------------------
-- 突進(76F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --突進  ef_002
setEffMoveKey( spep_1 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, dash, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, dash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 76, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 76 -1, dash, 255 );
setEffAlphaKey( spep_1 + 76, dash, 0 );

-- ** 音 ** --
--ベジータ突っ込む
SE015 = playSeVer2( spep_1 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE015, 56 );
setTimeStretch( SE015, 1.25, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
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
--膝蹴り
SE016 = playSeVer2( spep_1 + 70, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- 膝蹴り～蹴り(216F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_03, 216, 0x100, -1, 0, 0, 0 );  --膝蹴り～蹴り 前面   ef_003_1
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 216, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 216 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 216, kick_f, 0 );

kick_b = entryEffectLife( spep_2 + 0, SP_04, 216, 0x80, -1, 0, 0, 0 );  --膝蹴り～蹴り 背面   ef_003_2
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 216, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 216 -1, kick_b, 255 );
setEffAlphaKey( spep_2 + 216, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 4, 1, 1 );
setDisp( spep_2 -3 + 219, 1, 0 );
changeAnime( spep_2 -3 + 4, 1, 107 );
changeAnime( spep_2 -3 + 42, 1, 106 );
changeAnime( spep_2 -3 + 158, 1, 108 );

setMoveKey( spep_2 -3 + 4, 1, -89.4, 28.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -87.4, 41.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -57.5, 10.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -75.6, 23.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -45.7, 27.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -55.8, 7.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -54, 19.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -68.1, 23.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -38.2, 27.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -48.3, 7.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -46.4, 19.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -44.5, 19.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -42.7, 19.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -40.8, 19.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -38.9, 19.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -37, 19.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -35.1, 19.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -33.2, 19.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -31.4, 19.1 , 0 );
setMoveKey( spep_2 -3 + 41, 1, -31.4, 19.1 , 0 );--
setMoveKey( spep_2 -3 + 42, 1, -28.4, -22.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -27.7, -22.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -27, -22.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -26.3, -22.1 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -25.7, -22.1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -25, -22.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -24.3, -22.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -23.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -22.9, -22.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -22.2, -22.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -21.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -20.9, -22.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -20.2, -22.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -19.5, -22.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -18.8, -22.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -18.1, -22.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -17.5, -22.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -16.8, -22.1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -16.1, -22.1 , 0 );
setMoveKey( spep_2 -3 + 79, 1, -16.1, -22.1 , 0 );--
setMoveKey( spep_2 -3 + 80, 1, 75.9, -113.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 76.2, -112.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 76.4, -111.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 76.8, -111.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 77, -110.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 77.3, -109.5 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 77.6, -108.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 77.9, -107.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 78.2, -107.1 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 78.4, -106.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 78.7, -105.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 79, -104.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 79.3, -103.8 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 79.6, -103 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 79.9, -102.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 80.1, -101.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 80.5, -100.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 80.7, -99.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 76.3, -89.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 85.7, -103.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 76.4, -96.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 81.2, -102.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 81.3, -97.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 81.4, -97.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 81.4, -97.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 81.4, -97.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 81.3, -97.8 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 81.3, -97.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 81.3, -97.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 81.2, -98 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 81.2, -98 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 81.2, -98.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 81.2, -98.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 81.2, -98.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 81.2, -98.3 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 81.2, -98.3 , 0 );--
setMoveKey( spep_2 -3 + 150, 1, 78.2, -110.7 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 78.2, -110.7 , 0 );--
setMoveKey( spep_2 -3 + 158, 1, 199.5, 5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 191.4, -27.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 171, -23.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 148, -46.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 127.6, -56.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 128.8, -56.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 129.7, -55.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 119.2, -45 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 127.9, -43.8 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 135.9, -42.6 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 143.5, -41.5 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 150.7, -40.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 157.5, -39.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 164, -38.6 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 170.1, -37.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 175.9, -36.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 181.3, -36.1 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 186.4, -35.4 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 191.2, -34.7 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 195.6, -34 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 199.7, -33.4 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 203.4, -32.9 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 206.8, -32.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 209.8, -32 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 212.4, -31.6 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 214.7, -31.2 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 216.6, -31 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 218.1, -30.8 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 219.1, -30.6 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 219.8, -30.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 220, -30.5 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 220, -30.5 , 0 );

setScaleKey( spep_2 -3 + 4, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 6, 1, 3.73, 3.73 );
setScaleKey( spep_2 -3 + 8, 1, 3.26, 3.26 );
setScaleKey( spep_2 -3 + 10, 1, 2.8, 2.79 );
setScaleKey( spep_2 -3 + 41, 1, 2.8, 2.79 );--
setScaleKey( spep_2 -3 + 42, 1, 2, 2 );
setScaleKey( spep_2 -3 + 79, 1, 2, 2 );--
setScaleKey( spep_2 -3 + 80, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 82, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 84, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 86, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 88, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 90, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 92, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 94, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 96, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 98, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 100, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 102, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 104, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 106, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 108, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 110, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 112, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 114, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 116, 1, 1, 1 );
setScaleKey( spep_2 -3 + 118, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 120, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 122, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 124, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 126, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 130, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 132, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 138, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 140, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 149, 1, 0.97, 0.97 );--

s2 = 0.4;
setScaleKey( spep_2 -3 + 150, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 157, 1, 2 +s2, 2 +s2 );--

setScaleKey( spep_2 -3 + 158, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 160, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 162, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 164, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 166, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 168, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 170, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 172, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 174, 1, 1.95, 1.93 );
setScaleKey( spep_2 -3 + 176, 1, 1.77, 1.73 );
setScaleKey( spep_2 -3 + 178, 1, 1.6, 1.56 );
setScaleKey( spep_2 -3 + 180, 1, 1.45, 1.41 );
setScaleKey( spep_2 -3 + 182, 1, 1.32, 1.27 );
setScaleKey( spep_2 -3 + 184, 1, 1.2, 1.15 );
setScaleKey( spep_2 -3 + 186, 1, 1.08, 1.04 );
setScaleKey( spep_2 -3 + 188, 1, 0.98, 0.93 );
setScaleKey( spep_2 -3 + 190, 1, 0.89, 0.84 );
setScaleKey( spep_2 -3 + 192, 1, 0.8, 0.76 );
setScaleKey( spep_2 -3 + 194, 1, 0.73, 0.69 );
setScaleKey( spep_2 -3 + 196, 1, 0.66, 0.62 );
setScaleKey( spep_2 -3 + 198, 1, 0.59, 0.56 );
setScaleKey( spep_2 -3 + 200, 1, 0.54, 0.51 );
setScaleKey( spep_2 -3 + 202, 1, 0.49, 0.46 );
setScaleKey( spep_2 -3 + 204, 1, 0.45, 0.42 );
setScaleKey( spep_2 -3 + 206, 1, 0.41, 0.39 );
setScaleKey( spep_2 -3 + 208, 1, 0.38, 0.36 );
setScaleKey( spep_2 -3 + 210, 1, 0.36, 0.34 );
setScaleKey( spep_2 -3 + 212, 1, 0.34, 0.32 );
setScaleKey( spep_2 -3 + 214, 1, 0.33, 0.31 );
setScaleKey( spep_2 -3 + 216, 1, 0.32, 0.3 );
setScaleKey( spep_2 -3 + 219, 1, 0.32, 0.3 );

setRotateKey( spep_2 -3 + 4, 1, -33.9 );
setRotateKey( spep_2 -3 + 41, 1, -33.9 );--
setRotateKey( spep_2 -3 + 42, 1, -32.6 );
setRotateKey( spep_2 -3 + 44, 1, -32.5 );
setRotateKey( spep_2 -3 + 79, 1, -32.5 );--
setRotateKey( spep_2 -3 + 80, 1, -17.4 );
setRotateKey( spep_2 -3 + 149, 1, -17.4 );--
setRotateKey( spep_2 -3 + 150, 1, -41.9 );
setRotateKey( spep_2 -3 + 157, 1, -41.9 );--
setRotateKey( spep_2 -3 + 158, 1, 0 );
setRotateKey( spep_2 -3 + 160, 1, 8 );
setRotateKey( spep_2 -3 + 162, 1, 0 );
setRotateKey( spep_2 -3 + 164, 1, -6 );
setRotateKey( spep_2 -3 + 166, 1, 0 );
setRotateKey( spep_2 -3 + 168, 1, 8 );
setRotateKey( spep_2 -3 + 170, 1, 0 );
setRotateKey( spep_2 -3 + 219, 1, 0 );

-- ** 音 ** --
--膝蹴り
SE017 = playSeVer2( spep_2 + 4, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 4, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE018, 86 );
SE019 = playSeVer2( spep_2 + 4, 1010, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_2 + 32, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE020, 50 );
SE021 = playSeVer2( spep_2 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE021, 50 );

--後ろ飛び
SE022 = playSeVer2( spep_2 + 74, 1117, "",spep_2 + 124, 0, 30, -1);

--オーラ
SE023 = playSeVer2( spep_2 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE023, 50 );
SE024 = playSeVer2( spep_2 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE024, 50 );

--地面足つく
SE025 = playSeVer2( spep_2 + 108, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE025, 316 );
SE026 = playSeVer2( spep_2 + 108, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE026, 153 );

--向かっていく
SE027 = playSeVer2( spep_2 + 116, 1207, "",spep_2 + 164, 8, 12, -1);
setSeVolumeByWorkId( spep_2 + 116, SE027, 89 );
SE028 = playSeVer2( spep_2 + 120, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE028, 91 );

--蹴り飛ばし
SE029 = playSeVer2( spep_2 + 142, 1189, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 148, 1187, "",spep_2 + 220, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 148, SE030, 83 );
SE031 = playSeVer2( spep_2 + 148, 1120, "",spep_2 + 220, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 148, SE031, 110 );

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 156, 1183, "",spep_2 + 226, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 216 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 216;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
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
 
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --

--playSe( spep_3 + 0, SE_05 );

--オーラ
SE034 = playSeVer2( spep_3 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 82, SE034, 89 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 気弾構え(200F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_05, 200, 0x100, -1, 0, 0, 0 );  --気弾構え    ef_004
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 200, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 200, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 200, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 200 -1, tame, 255 );
setEffAlphaKey( spep_4 + 200, tame, 0 );

-- ** 音 ** --
--腕前に出す
SE035 = playSeVer2( spep_4 + 10, 1004, "", 0, 0, 0, -1);

--オーラ
SE036 = playSeVer2( spep_4 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12, SE036, 89 );
SE037 = playSeVer2( spep_4 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 36, SE037, 89 );
SE039 = playSeVer2( spep_4 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE039, 89 );
SE042 = playSeVer2( spep_4 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE042, 89 );
SE043 = playSeVer2( spep_4 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 108, SE043, 89 );
SE044 = playSeVer2( spep_4 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 132, SE044, 89 );

--爆風
SE038 = playSeVer2( spep_4 + 78, 1119, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_4 + 78, SE038, 91 );
setStartTimeMs( SE038,  317 );
SE040 = playSeVer2( spep_4 + 70, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 70, 1278, "",spep_4 + 178, 0, 54, -1);

--イナヅマ
SE045 = playSeVer2( spep_4 + 156, 1056, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 200 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 200;


------------------------------------------------------
-- 発射(206F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_5 + 0, SP_06, 205, 0x100, -1, 0, 0, 0 );  --発射 前面   ef_005_1
setEffMoveKey( spep_5 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 205, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 205, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot_f, 0 );
setEffRotateKey( spep_5 + 205, shot_f, 0 );
setEffAlphaKey( spep_5 + 0, shot_f, 255 );
setEffAlphaKey( spep_5 + 205 -1, shot_f, 255 );
setEffAlphaKey( spep_5 + 205, shot_f, 0 );

shot_b = entryEffectLife( spep_5 + 0, SP_07, 205, 0x80, -1, 0, 0, 0 );  --発射 背面   ef_005_2
setEffMoveKey( spep_5 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 205, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 205, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot_b, 0 );
setEffRotateKey( spep_5 + 205, shot_b, 0 );
setEffAlphaKey( spep_5 + 0, shot_b, 255 );
setEffAlphaKey( spep_5 + 205 -1, shot_b, 255 );
setEffAlphaKey( spep_5 + 205, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 116, 1, 1 );
setDisp( spep_5 -3 + 164, 1, 0 );
changeAnime( spep_5 -3 + 116, 1, 5 );
changeAnime( spep_5 -3 + 138, 1, 108 );

setMoveKey( spep_5 -3 + 116, 1, 641.3, 218 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 586.9, 206.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 531.2, 186.7 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 476.7, 174.7 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 421, 155.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 366.5, 142.9 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 310.9, 124 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 256.3, 111.2 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 200.8, 92.6 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 146.1, 79.4 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 90.6, 61.3 , 0 );
setMoveKey( spep_5 -3 + 137, 1, 90.6, 61.3 , 0 );--
setMoveKey( spep_5 -3 + 138, 1, 67.1, 41.3 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 69.7, 71 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 76.5, 27.2 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 80, 38.4 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 83.2, 38.4 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 86.7, 38.3 , 0 );
setMoveKey( spep_5 -3 + 150, 1, 89.9, 37.8 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 93.4, 37.4 , 0 );
setMoveKey( spep_5 -3 + 154, 1, 96.7, 36.4 , 0 );
setMoveKey( spep_5 -3 + 156, 1, 100.2, 35.4 , 0 );
setMoveKey( spep_5 -3 + 158, 1, 103.7, 34 , 0 );
setMoveKey( spep_5 -3 + 160, 1, 107.2, 32.6 , 0 );
setMoveKey( spep_5 -3 + 162, 1, 110.7, 30.7 , 0 );
setMoveKey( spep_5 -3 + 164, 1, 114.4, 28.8 , 0 );

setScaleKey( spep_5 -3 + 116, 1, 3.63, 3.63 );
setScaleKey( spep_5 -3 + 118, 1, 3.35, 3.35 );
setScaleKey( spep_5 -3 + 120, 1, 3.28, 3.28 );
setScaleKey( spep_5 -3 + 122, 1, 3.02, 3.02 );
setScaleKey( spep_5 -3 + 124, 1, 2.94, 2.94 );
setScaleKey( spep_5 -3 + 126, 1, 2.68, 2.68 );
setScaleKey( spep_5 -3 + 128, 1, 2.59, 2.59 );
setScaleKey( spep_5 -3 + 130, 1, 2.35, 2.35 );
setScaleKey( spep_5 -3 + 132, 1, 2.25, 2.25 );
setScaleKey( spep_5 -3 + 134, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 136, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 137, 1, 1.9, 1.9 );--
setScaleKey( spep_5 -3 + 138, 1, 2.98 -0.2, 2.98 -0.2 );
setScaleKey( spep_5 -3 + 140, 1, 3.19 -0.2, 3.19 -0.2 );
setScaleKey( spep_5 -3 + 142, 1, 3.55 -0.2, 3.55 -0.2 );
setScaleKey( spep_5 -3 + 144, 1, 3.17 -0.2, 3.17 -0.2 );
setScaleKey( spep_5 -3 + 146, 1, 2.95 -0.2, 2.95 -0.2 );
setScaleKey( spep_5 -3 + 148, 1, 2.59, 2.59 );
setScaleKey( spep_5 -3 + 150, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 152, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 154, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 156, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 158, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 160, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 162, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 164, 1, 0.26, 0.26 );

setRotateKey( spep_5 -3 + 116, 1, 36.1 );
setRotateKey( spep_5 -3 + 137, 1, 36.1 );--
setRotateKey( spep_5 -3 + 138, 1, 0 );
setRotateKey( spep_5 -3 + 140, 1, -9.5 );
setRotateKey( spep_5 -3 + 142, 1, 8.2 );
setRotateKey( spep_5 -3 + 144, 1, 0 );
setRotateKey( spep_5 -3 + 146, 1, -0.9 );
setRotateKey( spep_5 -3 + 148, 1, -1.9 );
setRotateKey( spep_5 -3 + 150, 1, -2.8 );
setRotateKey( spep_5 -3 + 152, 1, -3.8 );
setRotateKey( spep_5 -3 + 154, 1, -4.7 );
setRotateKey( spep_5 -3 + 156, 1, -5.7 );
setRotateKey( spep_5 -3 + 158, 1, -6.6 );
setRotateKey( spep_5 -3 + 160, 1, -7.6 );
setRotateKey( spep_5 -3 + 162, 1, -8.5 );
setRotateKey( spep_5 -3 + 164, 1, -9.5 );

-- ** 音 ** --
--イナヅマ
SE046 = playSeVer2( spep_5 + 4, 1148, "",spep_5 + 56, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE046, 79 );

--気弾発射
SE047 = playSeVer2( spep_5 + 32, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 32, SE047, 79 );
SE048 = playSeVer2( spep_5 + 32, 1110, "", spep_5 + 64, 0, 10, -1);
SE049 = playSeVer2( spep_5 + 32, 1312, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_5 + 32, 1338, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_5 + 32, 1026, "", 0, 0, 0, -1);

--気弾飛んでいく
SE052 = playSeVer2( spep_5 + 48, 1215, "",spep_5 +210, 0, 78, 0.6);
SE053 = playSeVer2( spep_5 + 68, 1282, "",spep_5 + 158, 0, 26, 0.6);
setSeVolumeByWorkId( spep_5 + 68, SE053, 60 );
SE054 = playSeVer2( spep_5 + 68, 1241, "",spep_5 + 154, 0, 22, 0.6);
SE055 = playSeVer2( spep_5 + 74, 1202, "", 0, 0, 0, 0.6);

--気弾ヒット
SE056 = playSeVer2( spep_5 + 130, 1017, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_5 + 130, 1011, "", 0, 0, 0, -1);

--岩激突
SE058 = playSeVer2( spep_5 + 168, 1159, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_5 + 172, 1306, "",spep_5 + 220, 0, 26, -1);

--ラスト爆発
SE060 = playSeVer2( spep_5 + 198, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_5 + 198, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 205 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 205;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 176, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 176, finish, 255 );

-- ** 音 ** --
--ラスト爆発
SE062 = playSeVer2( spep_6 + 0, 1188, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_6 + 10, 1168, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_6 + 28, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE064, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 66 );
endPhase( spep_6 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 88, 0x100, -1, 0, 0, 0 );  --開幕  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 88, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 88 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 88, first_f, 0 );

spep_x = spep_0 + 0;
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 80 );
SE002 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 76 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 79 );

--イナヅマ
SE004 = playSeVer2( spep_0 + 0, 1148, "",spep_0 + 104, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 81 );
SE005 = playSeVer2( spep_0 + 0, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 89 );

--土埃
SE006 = playSeVer2( spep_0 + 0, 1168, "",spep_0 + 144, 30, 70, -1);
setSeVolumeByWorkId( spep_0 + 0, SE006, 70 );
SE007 = playSeVer2( spep_0 + 16, 1188, "", 0, 10, 0, -1);
setStartTimeMs( SE007,  167 );

--顔カットイン
--SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE009 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE009, 79 );
SE010 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE010, 79 );
SE011 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE011, 79 )

--ベジータ突っ込む
SE012 = playSeVer2( spep_0 + 80, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 80, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 80, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;


------------------------------------------------------
-- 突進(76F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_1 + 0, SP_02r, 76, 0x100, -1, 0, 0, 0 );  --突進  ef_002
setEffMoveKey( spep_1 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, dash, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, dash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 76, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 76 -1, dash, 255 );
setEffAlphaKey( spep_1 + 76, dash, 0 );

-- ** 音 ** --
--ベジータ突っ込む
SE015 = playSeVer2( spep_1 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE015, 56 );
setTimeStretch( SE015, 1.25, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
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
--膝蹴り
SE016 = playSeVer2( spep_1 + 70, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- 膝蹴り～蹴り(216F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_03r, 216, 0x100, -1, 0, 0, 0 );  --膝蹴り～蹴り 前面   ef_003_1
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 216, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 216 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 216, kick_f, 0 );

kick_b = entryEffectLife( spep_2 + 0, SP_04, 216, 0x80, -1, 0, 0, 0 );  --膝蹴り～蹴り 背面   ef_003_2
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 216, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 216, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 216 -1, kick_b, 255 );
setEffAlphaKey( spep_2 + 216, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 4, 1, 1 );
setDisp( spep_2 -3 + 219, 1, 0 );
changeAnime( spep_2 -3 + 4, 1, 107 );
changeAnime( spep_2 -3 + 42, 1, 106 );
changeAnime( spep_2 -3 + 158, 1, 108 );

setMoveKey( spep_2 -3 + 4, 1, -89.4, 28.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -87.4, 41.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -57.5, 10.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -75.6, 23.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -45.7, 27.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -55.8, 7.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -54, 19.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -68.1, 23.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -38.2, 27.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -48.3, 7.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -46.4, 19.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -44.5, 19.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -42.7, 19.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -40.8, 19.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -38.9, 19.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -37, 19.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -35.1, 19.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -33.2, 19.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -31.4, 19.1 , 0 );
setMoveKey( spep_2 -3 + 41, 1, -31.4, 19.1 , 0 );--
setMoveKey( spep_2 -3 + 42, 1, -28.4, -22.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -27.7, -22.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -27, -22.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -26.3, -22.1 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -25.7, -22.1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -25, -22.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -24.3, -22.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -23.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -22.9, -22.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -22.2, -22.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -21.6, -22.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -20.9, -22.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -20.2, -22.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -19.5, -22.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -18.8, -22.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -18.1, -22.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -17.5, -22.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -16.8, -22.1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -16.1, -22.1 , 0 );
setMoveKey( spep_2 -3 + 79, 1, -16.1, -22.1 , 0 );--
setMoveKey( spep_2 -3 + 80, 1, 75.9, -113.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 76.2, -112.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 76.4, -111.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 76.8, -111.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 77, -110.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 77.3, -109.5 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 77.6, -108.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 77.9, -107.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 78.2, -107.1 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 78.4, -106.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 78.7, -105.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 79, -104.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 79.3, -103.8 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 79.6, -103 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 79.9, -102.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 80.1, -101.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 80.5, -100.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 80.7, -99.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 76.3, -89.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 85.7, -103.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 76.4, -96.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 81.2, -102.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 81.3, -97.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 81.4, -97.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 81.4, -97.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 81.4, -97.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 81.3, -97.8 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 81.3, -97.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 81.3, -97.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 81.2, -98 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 81.2, -98 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 81.2, -98.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 81.2, -98.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 81.2, -98.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 81.2, -98.3 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 81.2, -98.3 , 0 );--
setMoveKey( spep_2 -3 + 150, 1, 78.2, -110.7 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 78.2, -110.7 , 0 );--
setMoveKey( spep_2 -3 + 158, 1, 199.5, 5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 191.4, -27.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 171, -23.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 148, -46.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 127.6, -56.8 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 128.8, -56.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 129.7, -55.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 119.2, -45 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 127.9, -43.8 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 135.9, -42.6 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 143.5, -41.5 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 150.7, -40.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 157.5, -39.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 164, -38.6 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 170.1, -37.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 175.9, -36.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 181.3, -36.1 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 186.4, -35.4 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 191.2, -34.7 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 195.6, -34 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 199.7, -33.4 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 203.4, -32.9 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 206.8, -32.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 209.8, -32 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 212.4, -31.6 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 214.7, -31.2 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 216.6, -31 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 218.1, -30.8 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 219.1, -30.6 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 219.8, -30.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 220, -30.5 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 220, -30.5 , 0 );

setScaleKey( spep_2 -3 + 4, 1, 4.19, 4.19 );
setScaleKey( spep_2 -3 + 6, 1, 3.73, 3.73 );
setScaleKey( spep_2 -3 + 8, 1, 3.26, 3.26 );
setScaleKey( spep_2 -3 + 10, 1, 2.8, 2.79 );
setScaleKey( spep_2 -3 + 41, 1, 2.8, 2.79 );--
setScaleKey( spep_2 -3 + 42, 1, 2, 2 );
setScaleKey( spep_2 -3 + 79, 1, 2, 2 );--
setScaleKey( spep_2 -3 + 80, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 82, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 84, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 86, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 88, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 90, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 92, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 94, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 96, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 98, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 100, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 102, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 104, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 106, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 108, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 110, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 112, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 114, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 116, 1, 1, 1 );
setScaleKey( spep_2 -3 + 118, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 120, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 122, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 124, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 126, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 130, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 132, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 138, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 140, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 149, 1, 0.97, 0.97 );--

s2 = 0.4;
setScaleKey( spep_2 -3 + 150, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 157, 1, 2 +s2, 2 +s2 );--

setScaleKey( spep_2 -3 + 158, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 160, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 162, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 164, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 166, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 168, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 170, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 172, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 174, 1, 1.95, 1.93 );
setScaleKey( spep_2 -3 + 176, 1, 1.77, 1.73 );
setScaleKey( spep_2 -3 + 178, 1, 1.6, 1.56 );
setScaleKey( spep_2 -3 + 180, 1, 1.45, 1.41 );
setScaleKey( spep_2 -3 + 182, 1, 1.32, 1.27 );
setScaleKey( spep_2 -3 + 184, 1, 1.2, 1.15 );
setScaleKey( spep_2 -3 + 186, 1, 1.08, 1.04 );
setScaleKey( spep_2 -3 + 188, 1, 0.98, 0.93 );
setScaleKey( spep_2 -3 + 190, 1, 0.89, 0.84 );
setScaleKey( spep_2 -3 + 192, 1, 0.8, 0.76 );
setScaleKey( spep_2 -3 + 194, 1, 0.73, 0.69 );
setScaleKey( spep_2 -3 + 196, 1, 0.66, 0.62 );
setScaleKey( spep_2 -3 + 198, 1, 0.59, 0.56 );
setScaleKey( spep_2 -3 + 200, 1, 0.54, 0.51 );
setScaleKey( spep_2 -3 + 202, 1, 0.49, 0.46 );
setScaleKey( spep_2 -3 + 204, 1, 0.45, 0.42 );
setScaleKey( spep_2 -3 + 206, 1, 0.41, 0.39 );
setScaleKey( spep_2 -3 + 208, 1, 0.38, 0.36 );
setScaleKey( spep_2 -3 + 210, 1, 0.36, 0.34 );
setScaleKey( spep_2 -3 + 212, 1, 0.34, 0.32 );
setScaleKey( spep_2 -3 + 214, 1, 0.33, 0.31 );
setScaleKey( spep_2 -3 + 216, 1, 0.32, 0.3 );
setScaleKey( spep_2 -3 + 219, 1, 0.32, 0.3 );

setRotateKey( spep_2 -3 + 4, 1, -33.9 );
setRotateKey( spep_2 -3 + 41, 1, -33.9 );--
setRotateKey( spep_2 -3 + 42, 1, -32.6 );
setRotateKey( spep_2 -3 + 44, 1, -32.5 );
setRotateKey( spep_2 -3 + 79, 1, -32.5 );--
setRotateKey( spep_2 -3 + 80, 1, -17.4 );
setRotateKey( spep_2 -3 + 149, 1, -17.4 );--
setRotateKey( spep_2 -3 + 150, 1, -41.9 );
setRotateKey( spep_2 -3 + 157, 1, -41.9 );--
setRotateKey( spep_2 -3 + 158, 1, 0 );
setRotateKey( spep_2 -3 + 160, 1, 8 );
setRotateKey( spep_2 -3 + 162, 1, 0 );
setRotateKey( spep_2 -3 + 164, 1, -6 );
setRotateKey( spep_2 -3 + 166, 1, 0 );
setRotateKey( spep_2 -3 + 168, 1, 8 );
setRotateKey( spep_2 -3 + 170, 1, 0 );
setRotateKey( spep_2 -3 + 219, 1, 0 );

-- ** 音 ** --
--膝蹴り
SE017 = playSeVer2( spep_2 + 4, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 4, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE018, 86 );
SE019 = playSeVer2( spep_2 + 4, 1010, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_2 + 32, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE020, 50 );
SE021 = playSeVer2( spep_2 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE021, 50 );

--後ろ飛び
SE022 = playSeVer2( spep_2 + 74, 1117, "",spep_2 + 124, 0, 30, -1);

--オーラ
SE023 = playSeVer2( spep_2 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE023, 50 );
SE024 = playSeVer2( spep_2 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE024, 50 );

--地面足つく
SE025 = playSeVer2( spep_2 + 108, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE025, 316 );
SE026 = playSeVer2( spep_2 + 108, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE026, 153 );

--向かっていく
SE027 = playSeVer2( spep_2 + 116, 1207, "",spep_2 + 164, 8, 12, -1);
setSeVolumeByWorkId( spep_2 + 116, SE027, 89 );
SE028 = playSeVer2( spep_2 + 120, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE028, 91 );

--蹴り飛ばし
SE029 = playSeVer2( spep_2 + 142, 1189, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 148, 1187, "",spep_2 + 220, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 148, SE030, 83 );
SE031 = playSeVer2( spep_2 + 148, 1120, "",spep_2 + 220, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 148, SE031, 110 );

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 156, 1183, "",spep_2 + 226, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 216 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 216;


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

--オーラ
SE034 = playSeVer2( spep_3 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 82, SE034, 89 );
 
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 気弾構え(200F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_05r, 200, 0x100, -1, 0, 0, 0 );  --気弾構え    ef_004
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 200, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 200, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 200, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 200 -1, tame, 255 );
setEffAlphaKey( spep_4 + 200, tame, 0 );

-- ** 音 ** --
--腕前に出す
SE035 = playSeVer2( spep_4 + 10, 1004, "", 0, 0, 0, -1);

--オーラ
SE036 = playSeVer2( spep_4 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12, SE036, 89 );
SE037 = playSeVer2( spep_4 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 36, SE037, 89 );
SE039 = playSeVer2( spep_4 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE039, 89 );
SE042 = playSeVer2( spep_4 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE042, 89 );
SE043 = playSeVer2( spep_4 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 108, SE043, 89 );
SE044 = playSeVer2( spep_4 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 132, SE044, 89 );

--爆風
SE038 = playSeVer2( spep_4 + 78, 1119, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_4 + 78, SE038, 91 );
setStartTimeMs( SE038,  317 );
SE040 = playSeVer2( spep_4 + 70, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 70, 1278, "",spep_4 + 178, 0, 54, -1);

--イナヅマ
SE045 = playSeVer2( spep_4 + 156, 1056, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 200 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 200;


------------------------------------------------------
-- 発射(206F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_5 + 0, SP_06r, 205, 0x100, -1, 0, 0, 0 );  --発射 前面   ef_005_1
setEffMoveKey( spep_5 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 205, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 205, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot_f, 0 );
setEffRotateKey( spep_5 + 205, shot_f, 0 );
setEffAlphaKey( spep_5 + 0, shot_f, 255 );
setEffAlphaKey( spep_5 + 205 -1, shot_f, 255 );
setEffAlphaKey( spep_5 + 205, shot_f, 0 );

shot_b = entryEffectLife( spep_5 + 0, SP_07r, 205, 0x80, -1, 0, 0, 0 );  --発射 背面   ef_005_2
setEffMoveKey( spep_5 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 205, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 205, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot_b, 0 );
setEffRotateKey( spep_5 + 205, shot_b, 0 );
setEffAlphaKey( spep_5 + 0, shot_b, 255 );
setEffAlphaKey( spep_5 + 205 -1, shot_b, 255 );
setEffAlphaKey( spep_5 + 205, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 116, 1, 1 );
setDisp( spep_5 -3 + 164, 1, 0 );
changeAnime( spep_5 -3 + 116, 1, 5 );
changeAnime( spep_5 -3 + 138, 1, 108 );

setMoveKey( spep_5 -3 + 116, 1, 641.3, 218 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 586.9, 206.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 531.2, 186.7 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 476.7, 174.7 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 421, 155.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 366.5, 142.9 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 310.9, 124 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 256.3, 111.2 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 200.8, 92.6 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 146.1, 79.4 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 90.6, 61.3 , 0 );
setMoveKey( spep_5 -3 + 137, 1, 90.6, 61.3 , 0 );--
setMoveKey( spep_5 -3 + 138, 1, 67.1, 41.3 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 69.7, 71 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 76.5, 27.2 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 80, 38.4 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 83.2, 38.4 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 86.7, 38.3 , 0 );
setMoveKey( spep_5 -3 + 150, 1, 89.9, 37.8 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 93.4, 37.4 , 0 );
setMoveKey( spep_5 -3 + 154, 1, 96.7, 36.4 , 0 );
setMoveKey( spep_5 -3 + 156, 1, 100.2, 35.4 , 0 );
setMoveKey( spep_5 -3 + 158, 1, 103.7, 34 , 0 );
setMoveKey( spep_5 -3 + 160, 1, 107.2, 32.6 , 0 );
setMoveKey( spep_5 -3 + 162, 1, 110.7, 30.7 , 0 );
setMoveKey( spep_5 -3 + 164, 1, 114.4, 28.8 , 0 );

setScaleKey( spep_5 -3 + 116, 1, 3.63, 3.63 );
setScaleKey( spep_5 -3 + 118, 1, 3.35, 3.35 );
setScaleKey( spep_5 -3 + 120, 1, 3.28, 3.28 );
setScaleKey( spep_5 -3 + 122, 1, 3.02, 3.02 );
setScaleKey( spep_5 -3 + 124, 1, 2.94, 2.94 );
setScaleKey( spep_5 -3 + 126, 1, 2.68, 2.68 );
setScaleKey( spep_5 -3 + 128, 1, 2.59, 2.59 );
setScaleKey( spep_5 -3 + 130, 1, 2.35, 2.35 );
setScaleKey( spep_5 -3 + 132, 1, 2.25, 2.25 );
setScaleKey( spep_5 -3 + 134, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 136, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 137, 1, 1.9, 1.9 );--
setScaleKey( spep_5 -3 + 138, 1, 2.98 -0.2, 2.98 -0.2 );
setScaleKey( spep_5 -3 + 140, 1, 3.19 -0.2, 3.19 -0.2 );
setScaleKey( spep_5 -3 + 142, 1, 3.55 -0.2, 3.55 -0.2 );
setScaleKey( spep_5 -3 + 144, 1, 3.17 -0.2, 3.17 -0.2 );
setScaleKey( spep_5 -3 + 146, 1, 2.95 -0.2, 2.95 -0.2 );
setScaleKey( spep_5 -3 + 148, 1, 2.59, 2.59 );
setScaleKey( spep_5 -3 + 150, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 152, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 154, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 156, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 158, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 160, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 162, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 164, 1, 0.26, 0.26 );

setRotateKey( spep_5 -3 + 116, 1, 36.1 );
setRotateKey( spep_5 -3 + 137, 1, 36.1 );--
setRotateKey( spep_5 -3 + 138, 1, 0 );
setRotateKey( spep_5 -3 + 140, 1, -9.5 );
setRotateKey( spep_5 -3 + 142, 1, 8.2 );
setRotateKey( spep_5 -3 + 144, 1, 0 );
setRotateKey( spep_5 -3 + 146, 1, -0.9 );
setRotateKey( spep_5 -3 + 148, 1, -1.9 );
setRotateKey( spep_5 -3 + 150, 1, -2.8 );
setRotateKey( spep_5 -3 + 152, 1, -3.8 );
setRotateKey( spep_5 -3 + 154, 1, -4.7 );
setRotateKey( spep_5 -3 + 156, 1, -5.7 );
setRotateKey( spep_5 -3 + 158, 1, -6.6 );
setRotateKey( spep_5 -3 + 160, 1, -7.6 );
setRotateKey( spep_5 -3 + 162, 1, -8.5 );
setRotateKey( spep_5 -3 + 164, 1, -9.5 );

-- ** 音 ** --
--イナヅマ
SE046 = playSeVer2( spep_5 + 4, 1148, "",spep_5 + 56, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE046, 79 );

--気弾発射
SE047 = playSeVer2( spep_5 + 32, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 32, SE047, 79 );
SE048 = playSeVer2( spep_5 + 32, 1110, "", spep_5 + 64, 0, 10, -1);
SE049 = playSeVer2( spep_5 + 32, 1312, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_5 + 32, 1338, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_5 + 32, 1026, "", 0, 0, 0, -1);

--気弾飛んでいく
SE052 = playSeVer2( spep_5 + 48, 1215, "",spep_5 +210, 0, 78, 0.6);
SE053 = playSeVer2( spep_5 + 68, 1282, "",spep_5 + 158, 0, 26, 0.6);
setSeVolumeByWorkId( spep_5 + 68, SE053, 60 );
SE054 = playSeVer2( spep_5 + 68, 1241, "",spep_5 + 154, 0, 22, 0.6);
SE055 = playSeVer2( spep_5 + 74, 1202, "", 0, 0, 0, 0.6);

--気弾ヒット
SE056 = playSeVer2( spep_5 + 130, 1017, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_5 + 130, 1011, "", 0, 0, 0, -1);

--岩激突
SE058 = playSeVer2( spep_5 + 168, 1159, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_5 + 172, 1306, "",spep_5 + 220, 0, 26, -1);

--ラスト爆発
SE060 = playSeVer2( spep_5 + 198, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_5 + 198, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 205 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 205;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 176, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 176, finish, 255 );

-- ** 音 ** --
--ラスト爆発
SE062 = playSeVer2( spep_6 + 0, 1188, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_6 + 10, 1168, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_6 + 28, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE064, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 66 );
endPhase( spep_6 + 166 );

end