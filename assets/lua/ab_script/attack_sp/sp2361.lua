--4024300:超サイヤ人孫悟飯(少年期)_魔閃光
--sp_effect_a1_00347
--sp2361

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
SP_01 = 159614; --開幕:手前 ef_001
SP_02 = 159615; --開幕:奥  ef_002
SP_03 = 159616; --放つ    ef_003

--敵側
SP_01r = 159617; --開幕:手前(敵側) ef_001r
SP_02r = 159618; --開幕:奥(敵側)  ef_002r
SP_03r = 159619; --放つ(敵側)    ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(626F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 626, 0x100, -1, 0, 0, 0 );  --開幕:手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 626, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 626, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 626, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 626 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 626, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 626, 0x80, -1, 0, 0, 0 );  --開幕:奥  ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 626, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 626, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 626, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 626 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 626, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 60, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 186.1, -118 , 0 );
setMoveKey( spep_0 + 1, 1, 186.8, -118 , 0 );
setMoveKey( spep_0 + 2, 1, 187.6, -118 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 188.6, -118 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 188.6, -118 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 189.7, -118 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 189.7, -118 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 190.9, -118 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 192.1, -118 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 193.4, -118 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 194.7, -118 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 195.9, -118 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 197.1, -118 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 198.3, -118 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 199.5, -118 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 200.6, -118 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 201.7, -118 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 202.7, -118 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 203.6, -118 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 204.5, -118 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 205.3, -118 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 206.1, -118 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 206.8, -118 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 207.4, -118 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 208, -118 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 208.5, -118 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 208.9, -118 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 209.3, -118 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 209.6, -118 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 209.8, -118 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 210, -118 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 210.1, -118 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 210.1, -118 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 60, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 60, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 180, 1, 1 );
changeAnime( spep_0 -3 + 180, 1, 104 );

setMoveKey( spep_0 -3 + 180, 1, 34, -37 , 0 );

setScaleKey( spep_0 -3 + 180, 1, 0.8, 0.8 );

setRotateKey( spep_0 -3 + 180, 1, -10 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 76 );
setPitch( spep_0 + 20, SE002, 200 );
setTimeStretch( SE002, 1.13, 30, 4 );

--バク宙
SE004 = playSeVer2( spep_0 + 82, 1207, "",spep_0 + 170, 12, 32, -1);
setStartTimeMs( SE004,  100 );
SE005 = playSeVer2( spep_0 + 84, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 84, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE006, 69 );
SE008 = playSeVer2( spep_0 + 90, 1116, "",spep_0 + 140, 0, 24, -1);

--気弾溜め
SE007 = playSeVer2( spep_0 + 86, 1296, "",spep_0 + 166, 0, 20, -1);

--気弾投げる
SE009 = playSeVer2( spep_0 + 142, 1145, "",spep_0 + 210, 6, 22, -1);
setSeVolumeByWorkId( spep_0 + 142, SE009, 122 );
setStartTimeMs( SE009,  517 );
setPitch( spep_0 + 142, SE009, 300 );
setTimeStretch( SE009, 1.2, 30, 4 );
SE010 = playSeVer2( spep_0 + 142, 1027, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 142, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE011, 124 );
setPitch( spep_0 + 142, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 180 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 2, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 4, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 6, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 8, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 10, 1, 34, -37 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 2, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 4, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 6, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 8, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 10, 1, 0.8, 0.8 );

    setRotateKey( SP_dodge + 0, 1, -10 );
    setRotateKey( SP_dodge + 10, 1, -10 );    
    
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

spep_x = spep_0 + 540;
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

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_0 -3 + 208,  10016, 61, 0x100, -1, 0, 9.9, -36 ); --ズンッ
setEffMoveKey( spep_0 -3 + 208, ctzun, 9.9, -36 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctzun, -14.8, 35.8 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctzun, -16.2, 65.5 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctzun, -28.1, 82 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctzun, -29.9, 103.6 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctzun, -37.8, 109.3 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctzun, -35, 120 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctzun, -44.6, 126.6 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctzun, -37.5, 131.1 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctzun, -47.2, 130 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctzun, -38.2, 129.3 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctzun, -46, 137.6 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctzun, -39, 130.8 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctzun, -46.4, 140.3 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctzun, -45.7, 133.7 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctzun, -45.2, 144.8 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctzun, -41.5, 137.4 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctzun, -51.3, 143.2 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctzun, -43.9, 147.9 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctzun, -49.8, 143.7 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctzun, -47.7, 153.8 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctzun, -49.9, 144.9 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctzun, -50.4, 157.8 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctzun, -49.5, 148.8 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctzun, -47.6, 158.5 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctzun, -54.7, 155.2 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctzun, -47.2, 158.7 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctzun, -56.2, 162.3 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctzun, -48, 161.5 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctzun, -57.3, 169.4 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctzun, -51.1, 162.4 , 0 );
setEffMoveKey( spep_0 -3 + 269, ctzun, -51.1, 162.4 , 0 );

setEffScaleKey( spep_0 -3 + 208, ctzun, 1, 1 );
setEffScaleKey( spep_0 -3 + 210, ctzun, 1.53, 1.53 );
setEffScaleKey( spep_0 -3 + 212, ctzun, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 214, ctzun, 1.9, 1.9 );
setEffScaleKey( spep_0 -3 + 216, ctzun, 2.01, 2.01 );
setEffScaleKey( spep_0 -3 + 218, ctzun, 2.1, 2.1 );
setEffScaleKey( spep_0 -3 + 220, ctzun, 2.17, 2.17 );
setEffScaleKey( spep_0 -3 + 222, ctzun, 2.21, 2.21 );
setEffScaleKey( spep_0 -3 + 224, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_0 -3 + 228, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_0 -3 + 230, ctzun, 2.24, 2.24 );
setEffScaleKey( spep_0 -3 + 234, ctzun, 2.24, 2.24 );
setEffScaleKey( spep_0 -3 + 236, ctzun, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 240, ctzun, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 242, ctzun, 2.26, 2.26 );
setEffScaleKey( spep_0 -3 + 246, ctzun, 2.26, 2.26 );
setEffScaleKey( spep_0 -3 + 248, ctzun, 2.27, 2.27 );
setEffScaleKey( spep_0 -3 + 252, ctzun, 2.27, 2.27 );
setEffScaleKey( spep_0 -3 + 254, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_0 -3 + 258, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_0 -3 + 260, ctzun, 2.29, 2.29 );
setEffScaleKey( spep_0 -3 + 264, ctzun, 2.29, 2.29 );
setEffScaleKey( spep_0 -3 + 266, ctzun, 2.3, 2.3 );
setEffScaleKey( spep_0 -3 + 269, ctzun, 2.3, 2.3 );

setEffRotateKey( spep_0 -3 + 208, ctzun, -10 );
setEffRotateKey( spep_0 -3 + 269, ctzun, -10 );

setEffAlphaKey( spep_0 -3 + 208, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 252, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 254, ctzun, 226 );
setEffAlphaKey( spep_0 -3 + 256, ctzun, 198 );
setEffAlphaKey( spep_0 -3 + 258, ctzun, 169 );
setEffAlphaKey( spep_0 -3 + 260, ctzun, 140 );
setEffAlphaKey( spep_0 -3 + 262, ctzun, 112 );
setEffAlphaKey( spep_0 -3 + 264, ctzun, 83 );
setEffAlphaKey( spep_0 -3 + 266, ctzun, 55 );
setEffAlphaKey( spep_0 -3 + 268, ctzun, 26 );
setEffAlphaKey( spep_0 -3 + 269, ctzun, 26 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 270, 1, 0 );
changeAnime( spep_0 -3 + 206, 1, 108 );

setMoveKey( spep_0 -3 + 205, 1, 34, -37 , 0 );--
setMoveKey( spep_0 -3 + 206, 1, 54, -37 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 65, -64.6 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 69, -62.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 73.5, -31.5 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 86.7, -27.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 103.8, -33.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 129.9, -17.3 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 155.2, 15.1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 169.5, -0.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 177, 32.4 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 186.7, 34.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 192.5, 21.3 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 197.1, 24.2 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 200.8, 43.3 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 206.3, 38 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 208.8, 39.5 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 208.5, 48 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 210.2, 49.1 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 209.6, 36.1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 210.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 212.7, 56 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 213.4, 56.5 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 211.6, 47.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 213.5, 52.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 213.8, 52.5 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 216.5, 57.5 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 216.7, 57.6 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 214.4, 52.8 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 207.4, 57.7 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 207.4, 57.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 207.2, 57.6 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 207.2, 57.6 , 0 );

setScaleKey( spep_0 -3 + 205, 1, 0.8, 0.8 );--
setScaleKey( spep_0 -3 + 206, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 208, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 210, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 212, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 214, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 216, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 218, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 220, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 222, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 224, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 226, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 228, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 230, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 232, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 234, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 236, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 238, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 240, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 242, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 244, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 248, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 250, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 270, 1, 0.3, 0.3 );

setRotateKey( spep_0 -3 + 205, 1, -10 );--
setRotateKey( spep_0 -3 + 206, 1, -10 );
setRotateKey( spep_0 -3 + 208, 1, -9.7 );
setRotateKey( spep_0 -3 + 210, 1, -9.2 );
setRotateKey( spep_0 -3 + 212, 1, -8.6 );
setRotateKey( spep_0 -3 + 214, 1, -7.7 );
setRotateKey( spep_0 -3 + 216, 1, -6.7 );
setRotateKey( spep_0 -3 + 218, 1, -5.5 );
setRotateKey( spep_0 -3 + 220, 1, -4.1 );
setRotateKey( spep_0 -3 + 222, 1, -3.1 );
setRotateKey( spep_0 -3 + 224, 1, -2.2 );
setRotateKey( spep_0 -3 + 226, 1, -1.6 );
setRotateKey( spep_0 -3 + 228, 1, -1.1 );
setRotateKey( spep_0 -3 + 230, 1, -0.7 );
setRotateKey( spep_0 -3 + 232, 1, -0.5 );
setRotateKey( spep_0 -3 + 234, 1, -0.3 );
setRotateKey( spep_0 -3 + 236, 1, -0.1 );
setRotateKey( spep_0 -3 + 238, 1, -0.1 );
setRotateKey( spep_0 -3 + 240, 1, 0 );
setRotateKey( spep_0 -3 + 270, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 330, 1, 1 );
setDisp( spep_0 -3 + 450, 1, 0 );
changeAnime( spep_0 -3 + 330, 1, 106 );
changeAnime( spep_0 -3 + 348, 1, 108 );
changeAnime( spep_0 -3 + 418, 1, 106 );

setMoveKey( spep_0 -3 + 330, 1, 0.2, 18.9 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 105.7, 18.9 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 119.7, 18.9 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 118.4, 18.9 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 111.4, 18.9 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 102.6, 18.9 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 94, 18.9 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 86.8, 18.9 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 81.9, 18.9 , 0 );
setMoveKey( spep_0 -3 + 347, 1, 81.9, 18.9 , 0 );--
setMoveKey( spep_0 -3 + 348, 1, 98.3, 12.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 108.7, 12.5 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 83.2, 16.9 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 103.8, 22 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 105.5, 21.9 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 92.5, 11 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 99.5, 16.8 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 102.2, 16.2 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 106.1, 16 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 108.4, 11.5 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 106.5, 11.4 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 95.5, 11.2 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 80.2, 12.4 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 48.4, 16.9 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 21.6, 16.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -9.9, 16.1 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -43.1, 15.7 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -72.1, 15.2 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -96.2, 14.7 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -115.2, 14.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -129.1, 13.5 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -138.3, 12.8 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -143, 12.1 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -144, 11.4 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -141.6, 10.6 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -136.8, 9.8 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -130.3, 9.1 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -123, 8.4 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -115.6, 7.7 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -108.8, 7.2 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -103, 6.7 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -98.5, 6.4 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -95.3, 6.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -93.5, 6 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -92.9, 5.9 , 0 );
setMoveKey( spep_0 -3 + 417, 1, -92.9, 5.9 , 0 );--
setMoveKey( spep_0 -3 + 418, 1, -281, -43.1 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -262.2, -46.7 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -265.3, -40.4 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -259.2, -40 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -240.7, -46 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -215.9, -39.2 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -179.8, -37.6 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -166.9, -35.7 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -276.5, -25.9 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -453.4, -17.4 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -639.3, -1.1 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -823.8, 14 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -939.7, 21.5 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -1006.2, 25.7 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -1041, 28 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -1055.9, 29 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -1055.9, 29 , 0 );

setScaleKey( spep_0 -3 + 330, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 347, 1, 2.53, 2.53 );--
setScaleKey( spep_0 -3 + 348, 1, 2.76 -0.1, 2.76 -0.1 );
setScaleKey( spep_0 -3 + 417, 1, 2.76 -0.1, 2.76 -0.1 );--
setScaleKey( spep_0 -3 + 418, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 450, 1, 2.53, 2.53 );

setRotateKey( spep_0 -3 + 330, 1, -15 );
setRotateKey( spep_0 -3 + 332, 1, -14.4 );
setRotateKey( spep_0 -3 + 334, 1, -13.8 );
setRotateKey( spep_0 -3 + 336, 1, -13.1 );
setRotateKey( spep_0 -3 + 338, 1, -12.5 );
setRotateKey( spep_0 -3 + 340, 1, -11.9 );
setRotateKey( spep_0 -3 + 342, 1, -11.3 );
setRotateKey( spep_0 -3 + 344, 1, -10.6 );
setRotateKey( spep_0 -3 + 346, 1, -10 );
setRotateKey( spep_0 -3 + 347, 1, -10 );--
setRotateKey( spep_0 -3 + 348, 1, 0 );
setRotateKey( spep_0 -3 + 417, 1, 0 );--
setRotateKey( spep_0 -3 + 418, 1, -100 );
setRotateKey( spep_0 -3 + 450, 1, -100 );

-- ** 音 ** --
--気弾飛んでいく
SE012 = playSeVer2( spep_0 + 172, 1272, "",spep_0 + 212, 0, 12, 0.6);
setPitch( spep_0 + 172, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );

--爆発
SE013 = playSeVer2( spep_0 + 200, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE013, 62 );
SE014 = playSeVer2( spep_0 + 200, 1159, "",spep_0 + 308, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 200, SE014, 60 );

--向かっていく
SE015 = playSeVer2( spep_0 + 288, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 288, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE016, 84 );
SE017 = playSeVer2( spep_0 + 290, 44, "", 0, 0, 0, -1);

--パンチ
SE018 = playSeVer2( spep_0 + 334, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 340, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 340, 1110, "", 0, 0, 0, -1);

--後ろ回り込む
SE021 = playSeVer2( spep_0 + 358, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 394, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE022, 145 );

--背後から殴る
SE023 = playSeVer2( spep_0 + 404, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_0 + 414, 1072, "", 0, 0, 0, -1);

--魔閃光溜め
SE026 = playSeVer2( spep_0 + 536, 1136, "", 0, 6, 0, -1);
setStartTimeMs( SE026,  1767 );
setPitch( spep_0 + 536, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );

--後ろ飛び下がる
SE027 = playSeVer2( spep_0 + 468, 1207, "",spep_0 + 542, 0, 38, 1.0);

--魔閃光溜め
SE028 = playSeVer2( spep_0 + 530, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--魔閃光溜め
SE030 = playSeVer2( spep_0 + 542, 1282, "",spep_0 +640, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 542, SE030, 70 );
SE031 = playSeVer2( spep_0 + 542, 1122, "",spep_0 +640, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 542, SE031, 64 );
SE032 = playSeVer2( spep_0 + 566, 1296, "",spep_0 +640, 0, 10, -1);
setPitch( spep_0 + 566, SE032, 200 );
setTimeStretch( SE032, 1.13, 30, 4 );
SE033 = playSeVer2( spep_0 + 568, 1038, "", 0, 0, 0, 0.5);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 626 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 626;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
 
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--発射前溜め
SE035 = playSeVer2( spep_1 + 82, 1296, "",spep_1 + 128, 4, 12, -1);
setPitch( spep_1 + 82, SE035, 200 );
setTimeStretch( SE035, 1.13, 30, 4 );
SE036 = playSeVer2( spep_1 + 82, 1038, "",spep_1 + 128, 0, 12, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 放つ(242F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --放つ    ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 242, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 242, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 242, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 242, finish, 255 );

-- ** 音 ** --
--魔閃光発射
SE003 = playSeVer2( spep_2 + 22, 1146, "",spep_2 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 22, SE003, 78 );
SE037 = playSeVer2( spep_2 + 22, 1027, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 22, 1177, "",spep_2 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 22, SE038, 88 );
SE039 = playSeVer2( spep_2 + 22, 1193, "",spep_2 + 152, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 22, SE039, 87 );
SE040 = playSeVer2( spep_2 + 22, 1133, "", 0, 0, 0, 0.6);

--爆発
SE041 = playSeVer2( spep_2 + 122, 1068, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 122, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 242 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 124 );
endPhase( spep_2 + 232 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(626F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 626, 0x100, -1, 0, 0, 0 );  --開幕:手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 626, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 626, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 626, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 626 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 626, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 626, 0x80, -1, 0, 0, 0 );  --開幕:奥  ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 626, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 626, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 626, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 626 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 626, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 60, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 186.1, -118 , 0 );
setMoveKey( spep_0 + 1, 1, 186.8, -118 , 0 );
setMoveKey( spep_0 + 2, 1, 187.6, -118 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 188.6, -118 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 188.6, -118 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 189.7, -118 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 189.7, -118 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 190.9, -118 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 192.1, -118 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 193.4, -118 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 194.7, -118 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 195.9, -118 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 197.1, -118 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 198.3, -118 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 199.5, -118 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 200.6, -118 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 201.7, -118 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 202.7, -118 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 203.6, -118 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 204.5, -118 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 205.3, -118 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 206.1, -118 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 206.8, -118 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 207.4, -118 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 208, -118 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 208.5, -118 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 208.9, -118 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 209.3, -118 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 209.6, -118 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 209.8, -118 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 210, -118 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 210.1, -118 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 210.1, -118 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 60, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 60, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 180, 1, 1 );
changeAnime( spep_0 -3 + 180, 1, 104 );

setMoveKey( spep_0 -3 + 180, 1, 34, -37 , 0 );

setScaleKey( spep_0 -3 + 180, 1, 0.8, 0.8 );

setRotateKey( spep_0 -3 + 180, 1, -10 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 76 );
setPitch( spep_0 + 20, SE002, 200 );
setTimeStretch( SE002, 1.13, 30, 4 );

--バク宙
SE004 = playSeVer2( spep_0 + 82, 1207, "",spep_0 + 170, 12, 32, -1);
setStartTimeMs( SE004,  100 );
SE005 = playSeVer2( spep_0 + 84, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 84, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE006, 69 );
SE008 = playSeVer2( spep_0 + 90, 1116, "",spep_0 + 140, 0, 24, -1);

--気弾溜め
SE007 = playSeVer2( spep_0 + 86, 1296, "",spep_0 + 166, 0, 20, -1);

--気弾投げる
SE009 = playSeVer2( spep_0 + 142, 1145, "",spep_0 + 210, 6, 22, -1);
setSeVolumeByWorkId( spep_0 + 142, SE009, 122 );
setStartTimeMs( SE009,  517 );
setPitch( spep_0 + 142, SE009, 300 );
setTimeStretch( SE009, 1.2, 30, 4 );
SE010 = playSeVer2( spep_0 + 142, 1027, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 142, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE011, 124 );
setPitch( spep_0 + 142, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 180 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 2, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 4, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 6, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 8, 1, 34, -37 , 0 );
    setMoveKey( SP_dodge + 10, 1, 34, -37 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 2, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 4, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 6, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 8, 1, 0.8, 0.8 );
    setScaleKey( SP_dodge + 10, 1, 0.8, 0.8 );

    setRotateKey( SP_dodge + 0, 1, -10 );
    setRotateKey( SP_dodge + 10, 1, -10 );    
    
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

spep_x = spep_0 + 540;
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

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

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_0 -3 + 208,  10016, 61, 0x100, -1, 0, 9.9, -36 ); --ズンッ
setEffMoveKey( spep_0 -3 + 208, ctzun, 9.9, -36 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctzun, -14.8, 35.8 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctzun, -16.2, 65.5 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctzun, -28.1, 82 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctzun, -29.9, 103.6 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctzun, -37.8, 109.3 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctzun, -35, 120 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctzun, -44.6, 126.6 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctzun, -37.5, 131.1 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctzun, -47.2, 130 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctzun, -38.2, 129.3 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctzun, -46, 137.6 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctzun, -39, 130.8 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctzun, -46.4, 140.3 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctzun, -45.7, 133.7 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctzun, -45.2, 144.8 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctzun, -41.5, 137.4 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctzun, -51.3, 143.2 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctzun, -43.9, 147.9 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctzun, -49.8, 143.7 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctzun, -47.7, 153.8 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctzun, -49.9, 144.9 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctzun, -50.4, 157.8 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctzun, -49.5, 148.8 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctzun, -47.6, 158.5 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctzun, -54.7, 155.2 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctzun, -47.2, 158.7 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctzun, -56.2, 162.3 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctzun, -48, 161.5 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctzun, -57.3, 169.4 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctzun, -51.1, 162.4 , 0 );
setEffMoveKey( spep_0 -3 + 269, ctzun, -51.1, 162.4 , 0 );

setEffScaleKey( spep_0 -3 + 208, ctzun, 1, 1 );
setEffScaleKey( spep_0 -3 + 210, ctzun, 1.53, 1.53 );
setEffScaleKey( spep_0 -3 + 212, ctzun, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 214, ctzun, 1.9, 1.9 );
setEffScaleKey( spep_0 -3 + 216, ctzun, 2.01, 2.01 );
setEffScaleKey( spep_0 -3 + 218, ctzun, 2.1, 2.1 );
setEffScaleKey( spep_0 -3 + 220, ctzun, 2.17, 2.17 );
setEffScaleKey( spep_0 -3 + 222, ctzun, 2.21, 2.21 );
setEffScaleKey( spep_0 -3 + 224, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_0 -3 + 228, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_0 -3 + 230, ctzun, 2.24, 2.24 );
setEffScaleKey( spep_0 -3 + 234, ctzun, 2.24, 2.24 );
setEffScaleKey( spep_0 -3 + 236, ctzun, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 240, ctzun, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 242, ctzun, 2.26, 2.26 );
setEffScaleKey( spep_0 -3 + 246, ctzun, 2.26, 2.26 );
setEffScaleKey( spep_0 -3 + 248, ctzun, 2.27, 2.27 );
setEffScaleKey( spep_0 -3 + 252, ctzun, 2.27, 2.27 );
setEffScaleKey( spep_0 -3 + 254, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_0 -3 + 258, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_0 -3 + 260, ctzun, 2.29, 2.29 );
setEffScaleKey( spep_0 -3 + 264, ctzun, 2.29, 2.29 );
setEffScaleKey( spep_0 -3 + 266, ctzun, 2.3, 2.3 );
setEffScaleKey( spep_0 -3 + 269, ctzun, 2.3, 2.3 );

setEffRotateKey( spep_0 -3 + 208, ctzun, -10 );
setEffRotateKey( spep_0 -3 + 269, ctzun, -10 );

setEffAlphaKey( spep_0 -3 + 208, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 252, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 254, ctzun, 226 );
setEffAlphaKey( spep_0 -3 + 256, ctzun, 198 );
setEffAlphaKey( spep_0 -3 + 258, ctzun, 169 );
setEffAlphaKey( spep_0 -3 + 260, ctzun, 140 );
setEffAlphaKey( spep_0 -3 + 262, ctzun, 112 );
setEffAlphaKey( spep_0 -3 + 264, ctzun, 83 );
setEffAlphaKey( spep_0 -3 + 266, ctzun, 55 );
setEffAlphaKey( spep_0 -3 + 268, ctzun, 26 );
setEffAlphaKey( spep_0 -3 + 269, ctzun, 26 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 270, 1, 0 );
changeAnime( spep_0 -3 + 206, 1, 108 );

setMoveKey( spep_0 -3 + 205, 1, 34, -37 , 0 );--
setMoveKey( spep_0 -3 + 206, 1, 54, -37 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 65, -64.6 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 69, -62.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 73.5, -31.5 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 86.7, -27.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 103.8, -33.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 129.9, -17.3 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 155.2, 15.1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 169.5, -0.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 177, 32.4 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 186.7, 34.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 192.5, 21.3 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 197.1, 24.2 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 200.8, 43.3 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 206.3, 38 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 208.8, 39.5 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 208.5, 48 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 210.2, 49.1 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 209.6, 36.1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 210.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 212.7, 56 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 213.4, 56.5 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 211.6, 47.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 213.5, 52.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 213.8, 52.5 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 216.5, 57.5 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 216.7, 57.6 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 214.4, 52.8 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 207.4, 57.7 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 207.4, 57.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 207.2, 57.6 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 207.2, 57.6 , 0 );

setScaleKey( spep_0 -3 + 205, 1, 0.8, 0.8 );--
setScaleKey( spep_0 -3 + 206, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 208, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 210, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 212, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 214, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 216, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 218, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 220, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 222, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 224, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 226, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 228, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 230, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 232, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 234, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 236, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 238, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 240, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 242, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 244, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 248, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 250, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 270, 1, 0.3, 0.3 );

setRotateKey( spep_0 -3 + 205, 1, -10 );--
setRotateKey( spep_0 -3 + 206, 1, -10 );
setRotateKey( spep_0 -3 + 208, 1, -9.7 );
setRotateKey( spep_0 -3 + 210, 1, -9.2 );
setRotateKey( spep_0 -3 + 212, 1, -8.6 );
setRotateKey( spep_0 -3 + 214, 1, -7.7 );
setRotateKey( spep_0 -3 + 216, 1, -6.7 );
setRotateKey( spep_0 -3 + 218, 1, -5.5 );
setRotateKey( spep_0 -3 + 220, 1, -4.1 );
setRotateKey( spep_0 -3 + 222, 1, -3.1 );
setRotateKey( spep_0 -3 + 224, 1, -2.2 );
setRotateKey( spep_0 -3 + 226, 1, -1.6 );
setRotateKey( spep_0 -3 + 228, 1, -1.1 );
setRotateKey( spep_0 -3 + 230, 1, -0.7 );
setRotateKey( spep_0 -3 + 232, 1, -0.5 );
setRotateKey( spep_0 -3 + 234, 1, -0.3 );
setRotateKey( spep_0 -3 + 236, 1, -0.1 );
setRotateKey( spep_0 -3 + 238, 1, -0.1 );
setRotateKey( spep_0 -3 + 240, 1, 0 );
setRotateKey( spep_0 -3 + 270, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 330, 1, 1 );
setDisp( spep_0 -3 + 450, 1, 0 );
changeAnime( spep_0 -3 + 330, 1, 106 );
changeAnime( spep_0 -3 + 348, 1, 108 );
changeAnime( spep_0 -3 + 418, 1, 106 );

setMoveKey( spep_0 -3 + 330, 1, 0.2, 18.9 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 105.7, 18.9 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 119.7, 18.9 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 118.4, 18.9 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 111.4, 18.9 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 102.6, 18.9 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 94, 18.9 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 86.8, 18.9 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 81.9, 18.9 , 0 );
setMoveKey( spep_0 -3 + 347, 1, 81.9, 18.9 , 0 );--
setMoveKey( spep_0 -3 + 348, 1, 98.3, 12.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 108.7, 12.5 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 83.2, 16.9 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 103.8, 22 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 105.5, 21.9 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 92.5, 11 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 99.5, 16.8 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 102.2, 16.2 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 106.1, 16 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 108.4, 11.5 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 106.5, 11.4 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 95.5, 11.2 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 80.2, 12.4 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 48.4, 16.9 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 21.6, 16.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -9.9, 16.1 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -43.1, 15.7 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -72.1, 15.2 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -96.2, 14.7 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -115.2, 14.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -129.1, 13.5 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -138.3, 12.8 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -143, 12.1 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -144, 11.4 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -141.6, 10.6 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -136.8, 9.8 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -130.3, 9.1 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -123, 8.4 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -115.6, 7.7 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -108.8, 7.2 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -103, 6.7 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -98.5, 6.4 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -95.3, 6.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -93.5, 6 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -92.9, 5.9 , 0 );
setMoveKey( spep_0 -3 + 417, 1, -92.9, 5.9 , 0 );--
setMoveKey( spep_0 -3 + 418, 1, -281, -43.1 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -262.2, -46.7 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -265.3, -40.4 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -259.2, -40 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -240.7, -46 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -215.9, -39.2 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -179.8, -37.6 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -166.9, -35.7 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -276.5, -25.9 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -453.4, -17.4 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -639.3, -1.1 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -823.8, 14 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -939.7, 21.5 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -1006.2, 25.7 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -1041, 28 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -1055.9, 29 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -1055.9, 29 , 0 );

setScaleKey( spep_0 -3 + 330, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 347, 1, 2.53, 2.53 );--
setScaleKey( spep_0 -3 + 348, 1, 2.76 -0.1, 2.76 -0.1 );
setScaleKey( spep_0 -3 + 417, 1, 2.76 -0.1, 2.76 -0.1 );--
setScaleKey( spep_0 -3 + 418, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 450, 1, 2.53, 2.53 );

setRotateKey( spep_0 -3 + 330, 1, -15 );
setRotateKey( spep_0 -3 + 332, 1, -14.4 );
setRotateKey( spep_0 -3 + 334, 1, -13.8 );
setRotateKey( spep_0 -3 + 336, 1, -13.1 );
setRotateKey( spep_0 -3 + 338, 1, -12.5 );
setRotateKey( spep_0 -3 + 340, 1, -11.9 );
setRotateKey( spep_0 -3 + 342, 1, -11.3 );
setRotateKey( spep_0 -3 + 344, 1, -10.6 );
setRotateKey( spep_0 -3 + 346, 1, -10 );
setRotateKey( spep_0 -3 + 347, 1, -10 );--
setRotateKey( spep_0 -3 + 348, 1, 0 );
setRotateKey( spep_0 -3 + 417, 1, 0 );--
setRotateKey( spep_0 -3 + 418, 1, -100 );
setRotateKey( spep_0 -3 + 450, 1, -100 );

-- ** 音 ** --
--気弾飛んでいく
SE012 = playSeVer2( spep_0 + 172, 1272, "",spep_0 + 212, 0, 12, 0.6);
setPitch( spep_0 + 172, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );

--爆発
SE013 = playSeVer2( spep_0 + 200, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE013, 62 );
SE014 = playSeVer2( spep_0 + 200, 1159, "",spep_0 + 308, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 200, SE014, 60 );

--向かっていく
SE015 = playSeVer2( spep_0 + 288, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 288, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE016, 84 );
SE017 = playSeVer2( spep_0 + 290, 44, "", 0, 0, 0, -1);

--パンチ
SE018 = playSeVer2( spep_0 + 334, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 340, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 340, 1110, "", 0, 0, 0, -1);

--後ろ回り込む
SE021 = playSeVer2( spep_0 + 358, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 394, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE022, 145 );

--背後から殴る
SE023 = playSeVer2( spep_0 + 404, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);

--画面遷移
SE025 = playSeVer2( spep_0 + 414, 1072, "", 0, 0, 0, -1);

--魔閃光溜め
SE026 = playSeVer2( spep_0 + 536, 1136, "", 0, 6, 0, -1);
setStartTimeMs( SE026,  1767 );
setPitch( spep_0 + 536, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );

--後ろ飛び下がる
SE027 = playSeVer2( spep_0 + 468, 1207, "",spep_0 + 542, 0, 38, 1.0);

--魔閃光溜め
SE028 = playSeVer2( spep_0 + 530, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--魔閃光溜め
SE030 = playSeVer2( spep_0 + 542, 1282, "",spep_0 +640, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 542, SE030, 70 );
SE031 = playSeVer2( spep_0 + 542, 1122, "",spep_0 +640, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 542, SE031, 64 );
SE032 = playSeVer2( spep_0 + 566, 1296, "",spep_0 +640, 0, 10, -1);
setPitch( spep_0 + 566, SE032, 200 );
setTimeStretch( SE032, 1.13, 30, 4 );
SE033 = playSeVer2( spep_0 + 568, 1038, "", 0, 0, 0, 0.5);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 626 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 626;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--発射前溜め
SE035 = playSeVer2( spep_1 + 82, 1296, "",spep_1 + 128, 4, 12, -1);
setPitch( spep_1 + 82, SE035, 200 );
setTimeStretch( SE035, 1.13, 30, 4 );
SE036 = playSeVer2( spep_1 + 82, 1038, "",spep_1 + 128, 0, 12, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 放つ(242F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --放つ    ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 242, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 242, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 242, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 242, finish, 255 );

-- ** 音 ** --
--魔閃光発射
SE003 = playSeVer2( spep_2 + 22, 1146, "",spep_2 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 22, SE003, 78 );
SE037 = playSeVer2( spep_2 + 22, 1027, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 22, 1177, "",spep_2 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 22, SE038, 88 );
SE039 = playSeVer2( spep_2 + 22, 1193, "",spep_2 + 152, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 22, SE039, 87 );
SE040 = playSeVer2( spep_2 + 22, 1133, "", 0, 0, 0, 0.6);

--爆発
SE041 = playSeVer2( spep_2 + 122, 1068, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 122, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 242 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 124 );
endPhase( spep_2 + 232 );

end