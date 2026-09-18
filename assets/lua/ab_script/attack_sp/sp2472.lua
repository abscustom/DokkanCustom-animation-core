--1025630:LRジャッキー・チュン_優勝キック
--sp_effect_b1_00227
--sp2472

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
SP_01 = 160947;	--突進→残像	ef_001
SP_02 = 160949;	--残像で前後に回り込む	ef_002
SP_03 = 160950;	--残像で前後に回り込む	ef_003
SP_04 = 160951;	--残象→蹴り	ef_004
SP_05 = 160953;	--残象→蹴り	ef_005
SP_06 = 160955;	--手刀→膝蹴り	ef_006
SP_07 = 160957;	--手刀→膝蹴り	ef_007
SP_08 = 160958;	--構え→目が光る	ef_008
SP_09 = 160959;	--走ってから優勝キック	ef_009
SP_10 = 160961;	--走ってから優勝キック	ef_010
SP_11 = 160962;	--奥に吹っ飛ぶ敵	ef_011

--敵側
SP_01r = 160948;	--突進→残像	ef_001_r
SP_04r = 160952;	--残象→蹴り	ef_004_r
SP_05r = 160954;	--残象→蹴り	ef_005_r
SP_06r = 160956;	--手刀→膝蹴り	ef_006_r
SP_09r = 160960;	--走ってから優勝キック	ef_009_r

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進→残像(206F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 206, 0x80, -1, 0, 0, 0 );  --突進→残像	ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 206, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 206, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 206 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 206, first_b, 0 );

spep_x = spep_0 + 64;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 70, 1, 0 );

setMoveKey( spep_0 + 0, 1, 90.4, -120.5 , 0 );
setMoveKey( spep_0 + 1, 1, 90.6, -120.5 , 0 );
setMoveKey( spep_0 + 2, 1, 90.9, -120.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 91.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 91.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 91.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 91.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 91.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 92.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 92.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 92.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 93.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 93.5, -120.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 93.9, -120.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 94.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 97.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 99.9, -120.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 103, -120.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 106.2, -120.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 109.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 113.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 117.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 121.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 126.3, -120.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 131.3, -120.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 136.6, -120.5 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 142.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 155.4, -123.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 183.2, -134.3 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 227.2, -152.6 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 288.9, -179.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 370.7, -215.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 475.3, -262.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 606.7, -323.1 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 771.7, -399.4 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 983.2, -498.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 1319.6, -656.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 1319.6, -656.1 , 0 );

setScaleKey( spep_0 -3 + 0, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 1, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 2, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 3, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 4, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 5, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 6, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 48, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 50, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 52, 1, 3.38, 3.38 );
setScaleKey( spep_0 -3 + 54, 1, 3.73, 3.73 );
setScaleKey( spep_0 -3 + 56, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 58, 1, 4.93, 4.93 );
setScaleKey( spep_0 -3 + 60, 1, 5.82, 5.82 );
setScaleKey( spep_0 -3 + 62, 1, 6.94, 6.94 );
setScaleKey( spep_0 -3 + 64, 1, 8.35, 8.35 );
setScaleKey( spep_0 -3 + 66, 1, 10.11, 10.11 );
setScaleKey( spep_0 -3 + 68, 1, 12.45, 12.45 );
setScaleKey( spep_0 -3 + 70, 1, 12.45, 12.45 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 70, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--向かってくる
SE002 = playSeVer2( spep_0 + 30, 1379, "",spep_0 + 172, 0, 26, -1);
SE003 = playSeVer2( spep_0 + 30, 1175, "",spep_0 + 172, 0, 26, 0.6);
setSeVolumeByWorkId( spep_0 + 30, SE003, 72 );

--走り音
SE004 = playSeVer2( spep_0 + 48, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 115 );
SE005 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 126 );
SE007 = playSeVer2( spep_0 + 80, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 141 );
SE008 = playSeVer2( spep_0 + 94, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE008, 140 );
SE009 = playSeVer2( spep_0 + 110, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 150 );
SE010 = playSeVer2( spep_0 + 122, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE010, 146 );

--顔カットイン
SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--残像１
SE011 = playSeVer2( spep_0 + 136, 1232, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 136, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 136, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE013, 77 );
SE014 = playSeVer2( spep_0 + 136, 1116, "",spep_0 + 194, 0, 28, -1);

--残像２
SE015 = playSeVer2( spep_0 + 204, 1245, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 204, 1266, "",spep_0 + 378, 0, 34, -1);
SE017 = playSeVer2( spep_0 + 204, 1227, "",spep_0 + 378, 0, 34, -1);
SE018 = playSeVer2( spep_0 + 204, 1341, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 206 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 188, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 206;


------------------------------------------------------
-- 残像で前後に回り込む(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
zanzou_f = entryEffectLife( spep_1 + 0, SP_02, 65, 0x100, -1, 0, 0, 0 );  --残像で前後に回り込む	ef_002
setEffMoveKey( spep_1 + 0, zanzou_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 65, zanzou_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, zanzou_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 65, zanzou_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zanzou_f, 0 );
setEffRotateKey( spep_1 + 65, zanzou_f, 0 );
setEffAlphaKey( spep_1 + 0, zanzou_f, 255 );
setEffAlphaKey( spep_1 + 65 -1, zanzou_f, 255 );
setEffAlphaKey( spep_1 + 65, zanzou_f, 0 );

zanzou_b = entryEffectLife( spep_1 + 0, SP_03, 65, 0x80, -1, 0, 0, 0 );  --残像で前後に回り込む	ef_003
setEffMoveKey( spep_1 + 0, zanzou_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 65, zanzou_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, zanzou_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 65, zanzou_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zanzou_b, 0 );
setEffRotateKey( spep_1 + 65, zanzou_b, 0 );
setEffAlphaKey( spep_1 + 0, zanzou_b, 255 );
setEffAlphaKey( spep_1 + 65 -1, zanzou_b, 255 );
setEffAlphaKey( spep_1 + 65, zanzou_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 118 );

setMoveKey( spep_1 + 0, 1, 42, -48.2 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 42, -48.2 , 0 );

setScaleKey( spep_1 + 0, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 67, 1, 1.58, 1.58 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 67, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 65 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 65;


------------------------------------------------------
-- 残象→蹴り(286F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_04, 284, 0x100, -1, 0, 0, 0 );  --残象→蹴り	ef_004
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 284, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 284, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 284, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 284 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 284, kick_f, 0 );

kick_b = entryEffectLife( spep_2 + 0, SP_05, 284, 0x80, -1, 0, 0, 0 );  --残象→蹴り	ef_005
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 284, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 284, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 284, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 284 -1, kick_b, 255 );
setEffAlphaKey( spep_2 + 284, kick_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 2 );

setMoveKey( spep_2 + 0, 1, -26.9, -42.5 , 0 );
setMoveKey( spep_2 + 1, 1, -27.4, -42.5 , 0 );
setMoveKey( spep_2 + 2, 1, -27.9, -42.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -28.5, -42.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -29, -42.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -29.5, -42.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -30, -42.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -30.5, -42.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -31.1, -42.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -31.6, -42.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -32.1, -42.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -32.6, -42.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.62, 1.62 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 286 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -32.6, -42.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, -33.1, -42.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, -33.7, -42.5 , 0 );
    setMoveKey( SP_dodge + 6, 1, -34.2, -42.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, -34.7, -42.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, -35.2, -42.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.62, 1.62 );
    setScaleKey( SP_dodge + 10, 1, 1.62, 1.62 );

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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 140, 1, 0 );
changeAnime( spep_2 -3 + 38, 1, 9 );
changeAnime( spep_2 -3 + 94, 1, 8 );
changeAnime( spep_2 -3 + 96, 1, 6 );

setMoveKey( spep_2 -3 + 24, 1, -33.1, -42.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -33.7, -42.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -34.2, -42.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -34.7, -42.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -35.2, -42.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -35.7, -42.5 , 0 );
setMoveKey( spep_2 -3 + 37, 1, -36.3, -42.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 56.4, -53.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 84.6, -62.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 106.4, -70.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 121.9, -75.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 131, -78.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 133.6, -79.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 141.5, -87.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 141.5, -87.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 75.9, -7.9 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 75.9, -7.9 , 0 );--
setMoveKey( spep_2 -3 + 96, 1, 69.4, 5.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 77.1, 29 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 87.6, 52.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 97.6, 74.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 107.1, 95.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 116.1, 115.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 124.6, 133.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 132.5, 150.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 139.9, 167.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 146.7, 182 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 153, 195.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 158.8, 208.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 164, 219.6 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 168.7, 229.8 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 172.8, 238.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 176.4, 246.5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 179.4, 253 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 181.9, 258.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 183.8, 262.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 185.2, 265.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 186, 267.4 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 186.3, 268 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 186.3, 268 , 0 );

setScaleKey( spep_2 -3 + 54, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 56, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 58, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 60, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 93, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 94, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 95, 1, 1.94, 1.94 );--
setScaleKey( spep_2 -3 + 96, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 98, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 140, 1, 1.44, 1.44 );

setRotateKey( spep_2 -3 + 38, 1, 0 );
setRotateKey( spep_2 -3 + 40, 1, 2.5 );
setRotateKey( spep_2 -3 + 42, 1, 4.4 );
setRotateKey( spep_2 -3 + 44, 1, 5.8 );
setRotateKey( spep_2 -3 + 46, 1, 6.7 );
setRotateKey( spep_2 -3 + 48, 1, 7 );
setRotateKey( spep_2 -3 + 93, 1, 7 );
setRotateKey( spep_2 -3 + 94, 1, 5.5 );
setRotateKey( spep_2 -3 + 95, 1, 5.5 );--
setRotateKey( spep_2 -3 + 96, 1, 46.1 );
setRotateKey( spep_2 -3 + 98, 1, 43.8 );
setRotateKey( spep_2 -3 + 100, 1, 41.5 );
setRotateKey( spep_2 -3 + 102, 1, 39.4 );
setRotateKey( spep_2 -3 + 104, 1, 37.3 );
setRotateKey( spep_2 -3 + 106, 1, 35.4 );
setRotateKey( spep_2 -3 + 108, 1, 33.6 );
setRotateKey( spep_2 -3 + 110, 1, 32 );
setRotateKey( spep_2 -3 + 112, 1, 30.4 );
setRotateKey( spep_2 -3 + 114, 1, 29 );
setRotateKey( spep_2 -3 + 116, 1, 27.6 );
setRotateKey( spep_2 -3 + 118, 1, 26.4 );
setRotateKey( spep_2 -3 + 120, 1, 25.3 );
setRotateKey( spep_2 -3 + 122, 1, 24.3 );
setRotateKey( spep_2 -3 + 124, 1, 23.5 );
setRotateKey( spep_2 -3 + 126, 1, 22.7 );
setRotateKey( spep_2 -3 + 128, 1, 22.1 );
setRotateKey( spep_2 -3 + 130, 1, 21.6 );
setRotateKey( spep_2 -3 + 132, 1, 21.2 );
setRotateKey( spep_2 -3 + 134, 1, 20.9 );
setRotateKey( spep_2 -3 + 136, 1, 20.7 );
setRotateKey( spep_2 -3 + 139, 1, 20.6 );
setRotateKey( spep_2 -3 + 140, 1, 20.6 );

setDisp( spep_2 -3 + 200, 1, 1 );
--setDisp( spep_2 -3 + 289, 1, 0 );
changeAnime( spep_2 -3 + 200, 1, 106 );
changeAnime( spep_2 -3 + 208, 1, 108 );
changeAnime( spep_2 -3 + 240, 1, 106 );
changeAnime( spep_2 -3 + 268, 1, 108 );

setMoveKey( spep_2 -3 + 200, 1, 323.4, -90.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 284.9, -90.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 246.3, -90.8 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 207.7, -90.8 , 0 );
setMoveKey( spep_2 -3 + 207, 1, 207.7, -90.8 , 0 );--
setMoveKey( spep_2 -3 + 208, 1, 222.6, -94.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 230.6, -98.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 245.4, -97.4 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 221.7, -90.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 218.9, -87.9 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 216.2, -85.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 213.4, -83.5 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 210.7, -81.2 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 208, -79 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 205.2, -76.7 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 202.5, -74.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 199.8, -72.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 197.1, -70 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 194.4, -67.7 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 191.7, -65.5 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 188.9, -63.3 , 0 );
setMoveKey( spep_2 -3 + 239, 1, 188.9, -63.3 , 0 );--
setMoveKey( spep_2 -3 + 240, 1, 156.8, -87.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 188.9, -91.7 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 204, -92 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 174.4, -88.1 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 168.1, -88.2 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 162.3, -88.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 156.8, -88.4 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 151.8, -88.5 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 147, -88.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 142.6, -88.6 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 138.4, -88.7 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 137.8, -88.7 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 137.3, -88.7 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 137.1, -88.8 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 137.1, -88.8 , 0 );--
setMoveKey( spep_2 -3 + 268, 1, 190.9, -44.7 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 222, -40.5 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 193.6, -45.8 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 197, -47 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 201.7, -48.8 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 207.8, -51.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 215.2, -54 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 224.1, -57.3 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 234.3, -61.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 246, -65.7 , 0 );
--setMoveKey( spep_2 -3 + 288, 1, 259, -70.6 , 0 );
--setMoveKey( spep_2 -3 + 289, 1, 259, -70.6 , 0 );

setScaleKey( spep_2 -3 + 200, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 207, 1, 1.62, 1.62 );--
setScaleKey( spep_2 -3 + 208, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 210, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 212, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 214, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 239, 1, 2.07, 2.07 );--
setScaleKey( spep_2 -3 + 240, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 242, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 244, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 246, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 267, 1, 1.62, 1.62 );--
setScaleKey( spep_2 -3 + 268, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 270, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 272, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 274, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 276, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 278, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 280, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 282, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 284, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 286, 1, 2.57, 2.57 );
--setScaleKey( spep_2 -3 + 288, 1, 2.68, 2.68 );
--setScaleKey( spep_2 -3 + 289, 1, 2.68, 2.68 );

setRotateKey( spep_2 -3 + 200, 1, -46.8 );
setRotateKey( spep_2 -3 + 207, 1, -46.8 );--
setRotateKey( spep_2 -3 + 208, 1, -10.8 );
setRotateKey( spep_2 -3 + 210, 1, -10.3 );
setRotateKey( spep_2 -3 + 212, 1, -9.8 );
setRotateKey( spep_2 -3 + 214, 1, -9 );
setRotateKey( spep_2 -3 + 216, 1, -8.1 );
setRotateKey( spep_2 -3 + 218, 1, -7.2 );
setRotateKey( spep_2 -3 + 220, 1, -6.3 );
setRotateKey( spep_2 -3 + 222, 1, -5.4 );
setRotateKey( spep_2 -3 + 224, 1, -4.5 );
setRotateKey( spep_2 -3 + 226, 1, -3.7 );
setRotateKey( spep_2 -3 + 228, 1, -2.8 );
setRotateKey( spep_2 -3 + 230, 1, -1.9 );
setRotateKey( spep_2 -3 + 232, 1, -1 );
setRotateKey( spep_2 -3 + 234, 1, -0.1 );
setRotateKey( spep_2 -3 + 236, 1, 0.8 );
setRotateKey( spep_2 -3 + 238, 1, 1.6 );
setRotateKey( spep_2 -3 + 239, 1, 1.6 );--
setRotateKey( spep_2 -3 + 240, 1, -46.8 );
setRotateKey( spep_2 -3 + 242, 1, -45.8 );
setRotateKey( spep_2 -3 + 244, 1, -44.8 );
setRotateKey( spep_2 -3 + 246, 1, -43.8 );
setRotateKey( spep_2 -3 + 248, 1, -42.9 );
setRotateKey( spep_2 -3 + 250, 1, -42.2 );
setRotateKey( spep_2 -3 + 252, 1, -41.5 );
setRotateKey( spep_2 -3 + 254, 1, -41 );
setRotateKey( spep_2 -3 + 256, 1, -40.6 );
setRotateKey( spep_2 -3 + 258, 1, -40.3 );
setRotateKey( spep_2 -3 + 260, 1, -40 );
setRotateKey( spep_2 -3 + 262, 1, -39.8 );
setRotateKey( spep_2 -3 + 264, 1, -39.7 );
setRotateKey( spep_2 -3 + 266, 1, -39.6 );
setRotateKey( spep_2 -3 + 267, 1, -39.6 );--
setRotateKey( spep_2 -3 + 268, 1, -27.5 );
setRotateKey( spep_2 -3 + 270, 1, -27.6 );
setRotateKey( spep_2 -3 + 272, 1, -27.8 );
setRotateKey( spep_2 -3 + 274, 1, -28.2 );
setRotateKey( spep_2 -3 + 276, 1, -28.7 );
setRotateKey( spep_2 -3 + 278, 1, -29.4 );
setRotateKey( spep_2 -3 + 280, 1, -30.2 );
setRotateKey( spep_2 -3 + 282, 1, -31.2 );
setRotateKey( spep_2 -3 + 284, 1, -32.3 );
setRotateKey( spep_2 -3 + 286, 1, -33.6 );
--setRotateKey( spep_2 -3 + 288, 1, -35.1 );
--setRotateKey( spep_2 -3 + 289, 1, -35.1 );

-- ** 音 ** --
--残像３
SE019 = playSeVer2( spep_2 + 24, 1116, "",spep_2 + 94, 0, 36, -1);
SE020 = playSeVer2( spep_2 + 26, 1245, "", 0, 0, 0, -1);

--蹴り上げる
SE021 = playSeVer2( spep_2 + 76, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 86, 1187, "", 0, 0, 0, -1);

--横向き向かっていく
SE023 = playSeVer2( spep_2 + 132, 1264, "",spep_2 + 230, 0, 42, -1);
SE024 = playSeVer2( spep_2 + 132, 1278, "",spep_2 + 230, 0, 42, -1);

--パンチ
SE025 = playSeVer2( spep_2 + 194, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 202, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 202, 1110, "", 0, 0, 0, -1);

--キック
SE028 = playSeVer2( spep_2 + 226, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 230, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 230, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE030, 87 );
SE031 = playSeVer2( spep_2 + 230, 1010, "", 0, 0, 0, -1);

--蹴り飛ばす
SE032 = playSeVer2( spep_2 + 246, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);

--手刀
SE034 = playSeVer2( spep_2 + 284 -2, 1049, "",spep_2 + 322 -2, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 284 -2, SE034, 64 );
SE035 = playSeVer2( spep_2 + 286 -2, 1000, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 286 -2, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 284;


------------------------------------------------------
-- 手刀→膝蹴り(116F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
sword_f = entryEffectLife( spep_3 + 0, SP_06, 116, 0x100, -1, 0, 0, 0 );  --手刀→膝蹴り	ef_006
setEffMoveKey( spep_3 + 0, sword_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, sword_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sword_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, sword_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword_f, 0 );
setEffRotateKey( spep_3 + 116, sword_f, 0 );
setEffAlphaKey( spep_3 + 0, sword_f, 255 );
setEffAlphaKey( spep_3 + 116 -1, sword_f, 255 );
setEffAlphaKey( spep_3 + 116, sword_f, 0 );

sword_b = entryEffectLife( spep_3 + 0, SP_07, 116, 0x80, -1, 0, 0, 0 );  --手刀→膝蹴り	ef_007
setEffMoveKey( spep_3 + 0, sword_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, sword_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sword_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, sword_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword_b, 0 );
setEffRotateKey( spep_3 + 116, sword_b, 0 );
setEffAlphaKey( spep_3 + 0, sword_b, 255 );
setEffAlphaKey( spep_3 + 116 -1, sword_b, 255 );
setEffAlphaKey( spep_3 + 116, sword_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 -3 + 0, 1, 1 );
setDisp( spep_3 -3 + 119, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 48, 1, 108 );
changeAnime( spep_3 -3 + 94, 1, 106 );

setMoveKey( spep_3 + 0, 1, -18.2, -85.7 , 0 );
setMoveKey( spep_3 + 1, 1, -16.4, -90.7 , 0 );
setMoveKey( spep_3 + 2, 1, -11, -105.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -2, -130.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 10.6, -165.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 26.8, -210.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -27, -304.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -12.9, -280.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -40, -286.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -0.2, -329.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -29.7, -264.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -39.1, -286.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 0.5, -288.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -23.9, -292.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -28.1, -274.4 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -54.9, -296.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -15.5, -267.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -39.8, -305.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -31.6, -281 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -45, -286.6 , 0 );
setMoveKey( spep_3 -3 + 39, 1, -45, -286.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -189.1, -168.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -116.4, -99.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -43.7, -31.3 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 29, 37.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 231.4, 170.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 196.5, 166.1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 242.7, 177.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 224.6, 172.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 174.5, 170.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 179.6, 174.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 184.6, 179.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 189.7, 183.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 194.7, 187.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 199.8, 192.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 204.8, 196.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 209.9, 201 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 214.9, 205.4 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 214.9, 205.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -107.4, -281.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -87, -230.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -66.7, -179.5 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -46.5, -129.4 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -26.4, -79.8 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -6.4, -30.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 13.5, 17.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 33.4, 65.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 53.1, 113.1 , 0 );
setMoveKey( spep_3 -3 + 93, 1, 72.7, 160 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 92.3, 206.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 101.6, 218.6 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 110.9, 230.7 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 120.1, 242.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 129.1, 254.4 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 138, 266.1 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 146.9, 277.7 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 155.6, 289.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 164.2, 300.4 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 172.7, 311.6 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 181.1, 322.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 189.4, 333.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 197.6, 344.3 , 0 );
setMoveKey( spep_3 -3 + 119, 1, 197.6, 344.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 1, 1, 3, 3 );
setScaleKey( spep_3 + 2, 1, 3.17, 3.17 );
setScaleKey( spep_3 -3 + 6, 1, 3.46, 3.46 );
setScaleKey( spep_3 -3 + 8, 1, 3.86, 3.86 );
setScaleKey( spep_3 -3 + 10, 1, 4.38, 4.38 );
setScaleKey( spep_3 -3 + 12, 1, 5.01, 5.01 );
setScaleKey( spep_3 -3 + 38, 1, 5.01, 5.01 );
setScaleKey( spep_3 -3 + 39, 1, 5.01, 5.01 );
setScaleKey( spep_3 -3 + 40, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 47, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 48, 1, 4.65, 4.65 );
setScaleKey( spep_3 -3 + 50, 1, 4.35, 4.35 );
setScaleKey( spep_3 -3 + 52, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 72, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 73, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 74, 1, 5, 5 );
setScaleKey( spep_3 -3 + 76, 1, 4.67, 4.67 );
setScaleKey( spep_3 -3 + 78, 1, 4.36, 4.36 );
setScaleKey( spep_3 -3 + 80, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 82, 1, 3.73, 3.73 );
setScaleKey( spep_3 -3 + 84, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 86, 1, 3.11, 3.11 );
setScaleKey( spep_3 -3 + 88, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 93, 1, 2.2, 2.2 );
setScaleKey( spep_3 -3 + 94, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 96, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 98, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 100, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 102, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 104, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 106, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 108, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 110, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 112, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 114, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 116, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 118, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 119, 1, 0.82, 0.82 );

setRotateKey( spep_3 + 0, 1, -41.9 );
setRotateKey( spep_3 -3 + 10, 1, -41.9 );
setRotateKey( spep_3 -3 + 12, 1, -31 );
setRotateKey( spep_3 -3 + 14, 1, -30.9 );
setRotateKey( spep_3 -3 + 16, 1, -30.8 );
setRotateKey( spep_3 -3 + 18, 1, -30.7 );
setRotateKey( spep_3 -3 + 20, 1, -30.6 );
setRotateKey( spep_3 -3 + 22, 1, -30.5 );
setRotateKey( spep_3 -3 + 24, 1, -30.4 );
setRotateKey( spep_3 -3 + 26, 1, -30.3 );
setRotateKey( spep_3 -3 + 28, 1, -30.2 );
setRotateKey( spep_3 -3 + 30, 1, -30.2 );
setRotateKey( spep_3 -3 + 32, 1, -30.1 );
setRotateKey( spep_3 -3 + 34, 1, -30 );
setRotateKey( spep_3 -3 + 36, 1, -29.9 );
setRotateKey( spep_3 -3 + 38, 1, -29.8 );
setRotateKey( spep_3 -3 + 39, 1, -29.8 );
setRotateKey( spep_3 -3 + 40, 1, -80.5 );
setRotateKey( spep_3 -3 + 47, 1, -80.5 );
setRotateKey( spep_3 -3 + 48, 1, -40.4 );
setRotateKey( spep_3 -3 + 72, 1, -40.4 );
setRotateKey( spep_3 -3 + 73, 1, -40.4 );
setRotateKey( spep_3 -3 + 74, 1, -15.8 );
setRotateKey( spep_3 -3 + 76, 1, -17.7 );
setRotateKey( spep_3 -3 + 78, 1, -19.5 );
setRotateKey( spep_3 -3 + 80, 1, -21.3 );
setRotateKey( spep_3 -3 + 82, 1, -23.1 );
setRotateKey( spep_3 -3 + 84, 1, -25 );
setRotateKey( spep_3 -3 + 86, 1, -26.8 );
setRotateKey( spep_3 -3 + 88, 1, -28.6 );
setRotateKey( spep_3 -3 + 90, 1, -30.5 );
setRotateKey( spep_3 -3 + 93, 1, -32.3 );
setRotateKey( spep_3 -3 + 94, 1, -34.1 );
setRotateKey( spep_3 -3 + 96, 1, -33.3 );
setRotateKey( spep_3 -3 + 98, 1, -32.5 );
setRotateKey( spep_3 -3 + 100, 1, -31.6 );
setRotateKey( spep_3 -3 + 102, 1, -30.8 );
setRotateKey( spep_3 -3 + 104, 1, -30 );
setRotateKey( spep_3 -3 + 106, 1, -29.2 );
setRotateKey( spep_3 -3 + 108, 1, -28.3 );
setRotateKey( spep_3 -3 + 110, 1, -27.5 );
setRotateKey( spep_3 -3 + 112, 1, -26.7 );
setRotateKey( spep_3 -3 + 114, 1, -25.9 );
setRotateKey( spep_3 -3 + 116, 1, -25 );
setRotateKey( spep_3 -3 + 118, 1, -24.2 );
setRotateKey( spep_3 -3 + 119, 1, -24.2 );

-- ** 音 ** --
--膝蹴り
SE037 = playSeVer2( spep_3 + 40, 1120, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE038, 70 );

--敵飛んでいく
SE039 = playSeVer2( spep_3 + 68, 1121, "",spep_3 + 168, 0, 50, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;


------------------------------------------------------
-- 構え→目が光る(46F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
stance = entryEffectLife( spep_4 + 0, SP_08, 46, 0x100, -1, 0, 0, 0 );  --構え→目が光る	ef_008
setEffMoveKey( spep_4 + 0, stance, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, stance, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, stance, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, stance, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, stance, 0 );
setEffRotateKey( spep_4 + 46, stance, 0 );
setEffAlphaKey( spep_4 + 0, stance, 255 );
setEffAlphaKey( spep_4 + 46 -1, stance, 255 );
setEffAlphaKey( spep_4 + 46, stance, 0 );

-- ** 音 ** --
--目光る
SE040 = playSeVer2( spep_4 + 8, 1303, "",spep_4 + 62, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 8, SE040, 53 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_4 + 44, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_5 + 0, SE_05 );

--正面向かってくる
SE042 = playSeVer2( spep_5 + 74, 1263, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 74, SE042, 168 );
SE043 = playSeVer2( spep_5 + 82, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 82, SE043, 56 );
setTimeStretch( SE043, 1.18, 30, 4 );
SE044 = playSeVer2( spep_5 + 82, 1314, "",spep_5 + 270, 0, 58, -1);
setSeVolumeByWorkId( spep_5 + 82, SE044, 71 );
SE045 = playSeVer2( spep_5 + 82, 1117, "", 0, 0, 0, 0.6);

--走る音
SE046 = playSeVer2( spep_5 + 92, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 92, SE046, 126 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 走ってから優勝キック(186F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
winkick_f = entryEffectLife( spep_6 + 0, SP_09, 186, 0x100, -1, 0, 0, 0 );  --走ってから優勝キック	ef_009
setEffMoveKey( spep_6 + 0, winkick_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, winkick_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, winkick_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 186, winkick_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, winkick_f, 0 );
setEffRotateKey( spep_6 + 186, winkick_f, 0 );
setEffAlphaKey( spep_6 + 0, winkick_f, 255 );
setEffAlphaKey( spep_6 + 186 -1, winkick_f, 255 );
setEffAlphaKey( spep_6 + 186, winkick_f, 0 );

winkick_b = entryEffectLife( spep_6 + 0, SP_10, 186, 0x80, -1, 0, 0, 0 );  --走ってから優勝キック	ef_010
setEffMoveKey( spep_6 + 0, winkick_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, winkick_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, winkick_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 186, winkick_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, winkick_b, 0 );
setEffRotateKey( spep_6 + 186, winkick_b, 0 );
setEffAlphaKey( spep_6 + 0, winkick_b, 255 );
setEffAlphaKey( spep_6 + 186 -1, winkick_b, 255 );
setEffAlphaKey( spep_6 + 186, winkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 140, 1, 1 );
--setDisp( spep_6 -3 + 189, 1, 0 );
changeAnime( spep_6 -3 + 140, 1, 106 );
changeAnime( spep_6 -3 + 144, 1, 108 );

setMoveKey( spep_6 -3 + 140, 1, 205.7, 132.8 , 0 );
setMoveKey( spep_6 -3 + 141, 1, 205.7, 132.8 , 0 );
setMoveKey( spep_6 -3 + 142, 1, 175.6, 117.8 , 0 );
setMoveKey( spep_6 -3 + 143, 1, 175.6, 117.8 , 0 );--
setMoveKey( spep_6 -3 + 144, 1, 160.3, 98.4 , 0 );
setMoveKey( spep_6 -3 + 145, 1, 160.3, 98.4 , 0 );
setMoveKey( spep_6 -3 + 146, 1, 209.7, 78.7 , 0 );
setMoveKey( spep_6 -3 + 147, 1, 209.7, 78.7 , 0 );
setMoveKey( spep_6 -3 + 148, 1, 140.8, 36.3 , 0 );
setMoveKey( spep_6 -3 + 149, 1, 140.8, 36.3 , 0 );
setMoveKey( spep_6 -3 + 150, 1, 201.9, 85.3 , 0 );
setMoveKey( spep_6 -3 + 151, 1, 201.9, 85.3 , 0 );
setMoveKey( spep_6 -3 + 152, 1, 175.2, 80.2 , 0 );
setMoveKey( spep_6 -3 + 153, 1, 175.2, 80.2 , 0 );
setMoveKey( spep_6 -3 + 154, 1, 189.9, 63.5 , 0 );
setMoveKey( spep_6 -3 + 155, 1, 189.9, 63.5 , 0 );
setMoveKey( spep_6 -3 + 156, 1, 204.7, 88 , 0 );
setMoveKey( spep_6 -3 + 157, 1, 204.7, 88 , 0 );
setMoveKey( spep_6 -3 + 158, 1, 178.7, 83.5 , 0 );
setMoveKey( spep_6 -3 + 159, 1, 178.7, 83.5 , 0 );
setMoveKey( spep_6 -3 + 160, 1, 207.6, 90.8 , 0 );
setMoveKey( spep_6 -3 + 161, 1, 207.6, 90.8 , 0 );
setMoveKey( spep_6 -3 + 162, 1, 182, 86.7 , 0 );
setMoveKey( spep_6 -3 + 163, 1, 182, 86.7 , 0 );
setMoveKey( spep_6 -3 + 164, 1, 197.7, 71 , 0 );
setMoveKey( spep_6 -3 + 165, 1, 197.7, 71 , 0 );
setMoveKey( spep_6 -3 + 166, 1, 213.5, 96.5 , 0 );
setMoveKey( spep_6 -3 + 167, 1, 213.5, 96.5 , 0 );
setMoveKey( spep_6 -3 + 168, 1, 188.5, 93 , 0 );
setMoveKey( spep_6 -3 + 169, 1, 188.5, 93 , 0 );
setMoveKey( spep_6 -3 + 170, 1, 204.8, 77.9 , 0 );
setMoveKey( spep_6 -3 + 171, 1, 204.8, 77.9 , 0 );
setMoveKey( spep_6 -3 + 172, 1, 221.3, 104 , 0 );
setMoveKey( spep_6 -3 + 173, 1, 221.3, 104 , 0 );
setMoveKey( spep_6 -3 + 174, 1, 196.9, 101 , 0 );
setMoveKey( spep_6 -3 + 175, 1, 196.9, 101 , 0 );
setMoveKey( spep_6 -3 + 176, 1, 213.8, 86.5 , 0 );
setMoveKey( spep_6 -3 + 177, 1, 213.8, 86.5 , 0 );
setMoveKey( spep_6 -3 + 178, 1, 230.9, 113.3 , 0 );
setMoveKey( spep_6 -3 + 179, 1, 230.9, 113.3 , 0 );
setMoveKey( spep_6 -3 + 180, 1, 207.1, 110.9 , 0 );
setMoveKey( spep_6 -3 + 181, 1, 207.1, 110.9 , 0 );
setMoveKey( spep_6 -3 + 182, 1, 310.7, 154.9 , 0 );
setMoveKey( spep_6 -3 + 183, 1, 310.7, 154.9 , 0 );
setMoveKey( spep_6 -3 + 184, 1, 441.6, 258.7 , 0 );
setMoveKey( spep_6 -3 + 185, 1, 441.6, 258.7 , 0 );
setMoveKey( spep_6 -3 + 186, 1, 572.2, 334.2 , 0 );
setMoveKey( spep_6 -3 + 187, 1, 572.2, 334.2 , 0 );
setMoveKey( spep_6 -3 + 188, 1, 757.5, 475.2 , 0 );
--setMoveKey( spep_6 -3 + 189, 1, 722.3, 488.9 , 0 );

setScaleKey( spep_6 -3 + 140, 1, 2.88, 2.88 );
setScaleKey( spep_6 -3 + 141, 1, 2.88, 2.88 );
setScaleKey( spep_6 -3 + 142, 1, 2.64, 2.64 );
setScaleKey( spep_6 -3 + 143, 1, 2.64, 2.64 );--
setScaleKey( spep_6 -3 + 144, 1, 3, 3 );
setScaleKey( spep_6 -3 + 188, 1, 3, 3 );

setRotateKey( spep_6 -3 + 140, 1, -78.5 );
setRotateKey( spep_6 -3 + 143, 1, -78.5 );--
setRotateKey( spep_6 -3 + 144, 1, 0 );
setRotateKey( spep_6 -3 + 146, 1, 0 );
setRotateKey( spep_6 -3 + 147, 1, 0 );
setRotateKey( spep_6 -3 + 148, 1, 0.1 );
setRotateKey( spep_6 -3 + 149, 1, 0.1 );
setRotateKey( spep_6 -3 + 150, 1, 0.3 );
setRotateKey( spep_6 -3 + 151, 1, 0.3 );
setRotateKey( spep_6 -3 + 152, 1, 0.5 );
setRotateKey( spep_6 -3 + 153, 1, 0.5 );
setRotateKey( spep_6 -3 + 154, 1, 0.8 );
setRotateKey( spep_6 -3 + 155, 1, 0.8 );
setRotateKey( spep_6 -3 + 156, 1, 1.1 );
setRotateKey( spep_6 -3 + 157, 1, 1.1 );
setRotateKey( spep_6 -3 + 158, 1, 1.5 );
setRotateKey( spep_6 -3 + 159, 1, 1.5 );
setRotateKey( spep_6 -3 + 160, 1, 2 );
setRotateKey( spep_6 -3 + 161, 1, 2 );
setRotateKey( spep_6 -3 + 162, 1, 2.5 );
setRotateKey( spep_6 -3 + 163, 1, 2.5 );
setRotateKey( spep_6 -3 + 164, 1, 3.1 );
setRotateKey( spep_6 -3 + 165, 1, 3.1 );
setRotateKey( spep_6 -3 + 166, 1, 3.7 );
setRotateKey( spep_6 -3 + 167, 1, 3.7 );
setRotateKey( spep_6 -3 + 168, 1, 4.4 );
setRotateKey( spep_6 -3 + 169, 1, 4.4 );
setRotateKey( spep_6 -3 + 170, 1, 5.2 );
setRotateKey( spep_6 -3 + 171, 1, 5.2 );
setRotateKey( spep_6 -3 + 172, 1, 6 );
setRotateKey( spep_6 -3 + 173, 1, 6 );
setRotateKey( spep_6 -3 + 174, 1, 6.9 );
setRotateKey( spep_6 -3 + 175, 1, 6.9 );
setRotateKey( spep_6 -3 + 176, 1, 7.9 );
setRotateKey( spep_6 -3 + 177, 1, 7.9 );
setRotateKey( spep_6 -3 + 178, 1, 8.9 );
setRotateKey( spep_6 -3 + 179, 1, 8.9 );
setRotateKey( spep_6 -3 + 180, 1, 10 );
setRotateKey( spep_6 -3 + 181, 1, 10 );
setRotateKey( spep_6 -3 + 182, 1, 8.3 )
setRotateKey( spep_6 -3 + 183, 1, 8.3 );
setRotateKey( spep_6 -3 + 184, 1, 6 );
setRotateKey( spep_6 -3 + 185, 1, 6 );
setRotateKey( spep_6 -3 + 186, 1, 3.3 );
setRotateKey( spep_6 -3 + 187, 1, 3.3 );
setRotateKey( spep_6 -3 + 188, 1, 0 );
--setRotateKey( spep_6 -3 + 189, 1, 0 );

-- ** 音 ** --
--走る音
SE047 = playSeVer2( spep_6 + 36, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 36, SE047, 133 );

--飛びかかる
SE048 = playSeVer2( spep_6 + 58, 1116, "", 0, 0, 0, 0.6);
SE049 = playSeVer2( spep_6 + 58, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_6 + 58, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 58, SE050, 64 );

--敵ヒット
SE051 = playSeVer2( spep_6 + 132, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE052 = playSeVer2( spep_6 + 174, 1121, "",spep_6 + 274, 0, 60, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 186;


------------------------------------------------------
-- 奥に吹っ飛ぶ敵(166F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --奥に吹っ飛ぶ敵	ef_011
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 166, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 166, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 166, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 166, finish, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 46, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, 12.7, -4.2 , 0 );
setMoveKey( spep_7 + 1, 1, 12.7, -3.9 , 0 );
setMoveKey( spep_7 + 2, 1, 12.6, -3.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 12.5, -2 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 12.4, -0.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 12.2, 1.9 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 12, 4.6 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 11.7, 7.8 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 11.3, 11.5 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 10.9, 15.7 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 10.5, 20.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 9.9, 25.7 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 9.3, 31.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 8.6, 37.8 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 7.8, 44.8 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 6.9, 52.3 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 6, 60.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 4.9, 69.1 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 3.8, 78.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 2.5, 88.4 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 1.2, 99 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -0.3, 110.4 , 0 );
setMoveKey( spep_7 -3 + 45, 1, -1.8, 122.4 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -1.8, 122.4 , 0 );

setScaleKey( spep_7 + 0, 1, 3.38, 3.38 );
setScaleKey( spep_7 + 1, 1, 3.37, 3.37 );
setScaleKey( spep_7 + 2, 1, 3.35, 3.35 );
setScaleKey( spep_7 -3 + 6, 1, 3.32, 3.32 );
setScaleKey( spep_7 -3 + 8, 1, 3.27, 3.27 );
setScaleKey( spep_7 -3 + 10, 1, 3.21, 3.21 );
setScaleKey( spep_7 -3 + 12, 1, 3.13, 3.13 );
setScaleKey( spep_7 -3 + 14, 1, 3.04, 3.04 );
setScaleKey( spep_7 -3 + 16, 1, 2.94, 2.94 );
setScaleKey( spep_7 -3 + 18, 1, 2.82, 2.82 );
setScaleKey( spep_7 -3 + 20, 1, 2.69, 2.69 );
setScaleKey( spep_7 -3 + 22, 1, 2.55, 2.55 );
setScaleKey( spep_7 -3 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_7 -3 + 26, 1, 2.22, 2.22 );
setScaleKey( spep_7 -3 + 28, 1, 2.03, 2.03 );
setScaleKey( spep_7 -3 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_7 -3 + 32, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 34, 1, 1.39, 1.39 );
setScaleKey( spep_7 -3 + 36, 1, 1.15, 1.15 );
setScaleKey( spep_7 -3 + 38, 1, 0.9, 0.9 );
setScaleKey( spep_7 -3 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_7 -3 + 42, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 45, 1, 0.05, 0.05 );
setScaleKey( spep_7 -3 + 46, 1, 0.05, 0.05 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 1, 1, 0 );
setRotateKey( spep_7 + 2, 1, 0.2 );
setRotateKey( spep_7 -3 + 6, 1, 0.4 );
setRotateKey( spep_7 -3 + 8, 1, 0.7 );
setRotateKey( spep_7 -3 + 10, 1, 1.1 );
setRotateKey( spep_7 -3 + 12, 1, 1.5 );
setRotateKey( spep_7 -3 + 14, 1, 2.1 );
setRotateKey( spep_7 -3 + 16, 1, 2.7 );
setRotateKey( spep_7 -3 + 18, 1, 3.4 );
setRotateKey( spep_7 -3 + 20, 1, 4.3 );
setRotateKey( spep_7 -3 + 22, 1, 5.1 );
setRotateKey( spep_7 -3 + 24, 1, 6.1 );
setRotateKey( spep_7 -3 + 26, 1, 7.2 );
setRotateKey( spep_7 -3 + 28, 1, 8.3 );
setRotateKey( spep_7 -3 + 30, 1, 9.6 );
setRotateKey( spep_7 -3 + 32, 1, 10.9 );
setRotateKey( spep_7 -3 + 34, 1, 12.3 );
setRotateKey( spep_7 -3 + 36, 1, 13.8 );
setRotateKey( spep_7 -3 + 38, 1, 15.3 );
setRotateKey( spep_7 -3 + 40, 1, 17 );
setRotateKey( spep_7 -3 + 42, 1, 18.8 );
setRotateKey( spep_7 -3 + 45, 1, 20.6 );
setRotateKey( spep_7 -3 + 46, 1, 20.6 );

-- ** 音 ** --
--歓声
SE053 = playSeVer2( spep_7 + 28, 39, "", 0, 0, 0, -1);

--星になる
SE054 = playSeVer2( spep_7 + 38, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 48 );
endPhase( spep_7 + 156 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進→残像(206F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01r, 206, 0x80, -1, 0, 0, 0 );  --突進→残像	ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 206, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 206, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 206 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 206, first_b, 0 );

spep_x = spep_0 + 64;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 70, 1, 0 );

setMoveKey( spep_0 + 0, 1, 90.4, -120.5 , 0 );
setMoveKey( spep_0 + 1, 1, 90.6, -120.5 , 0 );
setMoveKey( spep_0 + 2, 1, 90.9, -120.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 91.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 91.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 91.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 91.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 91.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 92.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 92.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 92.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 93.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 93.5, -120.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 93.9, -120.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 94.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 97.1, -120.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 99.9, -120.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 103, -120.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 106.2, -120.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 109.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 113.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 117.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 121.7, -120.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 126.3, -120.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 131.3, -120.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 136.6, -120.5 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 142.4, -120.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 155.4, -123.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 183.2, -134.3 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 227.2, -152.6 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 288.9, -179.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 370.7, -215.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 475.3, -262.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 606.7, -323.1 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 771.7, -399.4 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 983.2, -498.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 1319.6, -656.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 1319.6, -656.1 , 0 );

setScaleKey( spep_0 -3 + 0, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 1, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 2, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 3, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 4, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 5, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 6, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 48, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 50, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 52, 1, 3.38, 3.38 );
setScaleKey( spep_0 -3 + 54, 1, 3.73, 3.73 );
setScaleKey( spep_0 -3 + 56, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 58, 1, 4.93, 4.93 );
setScaleKey( spep_0 -3 + 60, 1, 5.82, 5.82 );
setScaleKey( spep_0 -3 + 62, 1, 6.94, 6.94 );
setScaleKey( spep_0 -3 + 64, 1, 8.35, 8.35 );
setScaleKey( spep_0 -3 + 66, 1, 10.11, 10.11 );
setScaleKey( spep_0 -3 + 68, 1, 12.45, 12.45 );
setScaleKey( spep_0 -3 + 70, 1, 12.45, 12.45 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 70, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--向かってくる
SE002 = playSeVer2( spep_0 + 30, 1379, "",spep_0 + 172, 0, 26, -1);
SE003 = playSeVer2( spep_0 + 30, 1175, "",spep_0 + 172, 0, 26, 0.6);
setSeVolumeByWorkId( spep_0 + 30, SE003, 72 );

--走り音
SE004 = playSeVer2( spep_0 + 48, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 115 );
SE005 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 126 );
SE007 = playSeVer2( spep_0 + 80, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 141 );
SE008 = playSeVer2( spep_0 + 94, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE008, 140 );
SE009 = playSeVer2( spep_0 + 110, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 150 );
SE010 = playSeVer2( spep_0 + 122, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE010, 146 );

--顔カットイン
--SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--残像１
SE011 = playSeVer2( spep_0 + 136, 1232, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 136, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 136, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE013, 77 );
SE014 = playSeVer2( spep_0 + 136, 1116, "",spep_0 + 194, 0, 28, -1);

--残像２
SE015 = playSeVer2( spep_0 + 204, 1245, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 204, 1266, "",spep_0 + 378, 0, 34, -1);
SE017 = playSeVer2( spep_0 + 204, 1227, "",spep_0 + 378, 0, 34, -1);
SE018 = playSeVer2( spep_0 + 204, 1341, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 206 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 188, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 206;


------------------------------------------------------
-- 残像で前後に回り込む(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
zanzou_f = entryEffectLife( spep_1 + 0, SP_02, 65, 0x100, -1, 0, 0, 0 );  --残像で前後に回り込む	ef_002
setEffMoveKey( spep_1 + 0, zanzou_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 65, zanzou_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, zanzou_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 65, zanzou_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zanzou_f, 0 );
setEffRotateKey( spep_1 + 65, zanzou_f, 0 );
setEffAlphaKey( spep_1 + 0, zanzou_f, 255 );
setEffAlphaKey( spep_1 + 65 -1, zanzou_f, 255 );
setEffAlphaKey( spep_1 + 65, zanzou_f, 0 );

zanzou_b = entryEffectLife( spep_1 + 0, SP_03, 65, 0x80, -1, 0, 0, 0 );  --残像で前後に回り込む	ef_003
setEffMoveKey( spep_1 + 0, zanzou_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 65, zanzou_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, zanzou_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 65, zanzou_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zanzou_b, 0 );
setEffRotateKey( spep_1 + 65, zanzou_b, 0 );
setEffAlphaKey( spep_1 + 0, zanzou_b, 255 );
setEffAlphaKey( spep_1 + 65 -1, zanzou_b, 255 );
setEffAlphaKey( spep_1 + 65, zanzou_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 118 );

setMoveKey( spep_1 + 0, 1, 42, -48.2 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 42, -48.2 , 0 );

setScaleKey( spep_1 + 0, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 67, 1, 1.58, 1.58 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 67, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 65 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 65;


------------------------------------------------------
-- 残象→蹴り(286F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_04r, 284, 0x100, -1, 0, 0, 0 );  --残象→蹴り	ef_004
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 284, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 284, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 284, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 284 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 284, kick_f, 0 );

kick_b = entryEffectLife( spep_2 + 0, SP_05r, 284, 0x80, -1, 0, 0, 0 );  --残象→蹴り	ef_005
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 284, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 284, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 284, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 284 -1, kick_b, 255 );
setEffAlphaKey( spep_2 + 284, kick_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 2 );

setMoveKey( spep_2 + 0, 1, -26.9, -42.5 , 0 );
setMoveKey( spep_2 + 1, 1, -27.4, -42.5 , 0 );
setMoveKey( spep_2 + 2, 1, -27.9, -42.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -28.5, -42.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -29, -42.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -29.5, -42.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -30, -42.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -30.5, -42.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -31.1, -42.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -31.6, -42.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -32.1, -42.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -32.6, -42.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.62, 1.62 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 286 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -32.6, -42.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, -33.1, -42.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, -33.7, -42.5 , 0 );
    setMoveKey( SP_dodge + 6, 1, -34.2, -42.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, -34.7, -42.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, -35.2, -42.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.62, 1.62 );
    setScaleKey( SP_dodge + 10, 1, 1.62, 1.62 );

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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 140, 1, 0 );
changeAnime( spep_2 -3 + 38, 1, 9 );
changeAnime( spep_2 -3 + 94, 1, 8 );
changeAnime( spep_2 -3 + 96, 1, 6 );

setMoveKey( spep_2 -3 + 24, 1, -33.1, -42.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -33.7, -42.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -34.2, -42.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -34.7, -42.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -35.2, -42.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -35.7, -42.5 , 0 );
setMoveKey( spep_2 -3 + 37, 1, -36.3, -42.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 56.4, -53.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 84.6, -62.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 106.4, -70.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 121.9, -75.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 131, -78.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 133.6, -79.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 141.5, -87.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 141.5, -87.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 133.1, -79.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 75.9, -7.9 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 75.9, -7.9 , 0 );--
setMoveKey( spep_2 -3 + 96, 1, 69.4, 5.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 77.1, 29 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 87.6, 52.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 97.6, 74.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 107.1, 95.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 116.1, 115.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 124.6, 133.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 132.5, 150.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 139.9, 167.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 146.7, 182 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 153, 195.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 158.8, 208.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 164, 219.6 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 168.7, 229.8 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 172.8, 238.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 176.4, 246.5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 179.4, 253 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 181.9, 258.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 183.8, 262.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 185.2, 265.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 186, 267.4 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 186.3, 268 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 186.3, 268 , 0 );

setScaleKey( spep_2 -3 + 54, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 56, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 58, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 60, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 93, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 94, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 95, 1, 1.94, 1.94 );--
setScaleKey( spep_2 -3 + 96, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 98, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 140, 1, 1.44, 1.44 );

setRotateKey( spep_2 -3 + 38, 1, 0 );
setRotateKey( spep_2 -3 + 40, 1, 2.5 );
setRotateKey( spep_2 -3 + 42, 1, 4.4 );
setRotateKey( spep_2 -3 + 44, 1, 5.8 );
setRotateKey( spep_2 -3 + 46, 1, 6.7 );
setRotateKey( spep_2 -3 + 48, 1, 7 );
setRotateKey( spep_2 -3 + 93, 1, 7 );
setRotateKey( spep_2 -3 + 94, 1, 5.5 );
setRotateKey( spep_2 -3 + 95, 1, 5.5 );--
setRotateKey( spep_2 -3 + 96, 1, 46.1 );
setRotateKey( spep_2 -3 + 98, 1, 43.8 );
setRotateKey( spep_2 -3 + 100, 1, 41.5 );
setRotateKey( spep_2 -3 + 102, 1, 39.4 );
setRotateKey( spep_2 -3 + 104, 1, 37.3 );
setRotateKey( spep_2 -3 + 106, 1, 35.4 );
setRotateKey( spep_2 -3 + 108, 1, 33.6 );
setRotateKey( spep_2 -3 + 110, 1, 32 );
setRotateKey( spep_2 -3 + 112, 1, 30.4 );
setRotateKey( spep_2 -3 + 114, 1, 29 );
setRotateKey( spep_2 -3 + 116, 1, 27.6 );
setRotateKey( spep_2 -3 + 118, 1, 26.4 );
setRotateKey( spep_2 -3 + 120, 1, 25.3 );
setRotateKey( spep_2 -3 + 122, 1, 24.3 );
setRotateKey( spep_2 -3 + 124, 1, 23.5 );
setRotateKey( spep_2 -3 + 126, 1, 22.7 );
setRotateKey( spep_2 -3 + 128, 1, 22.1 );
setRotateKey( spep_2 -3 + 130, 1, 21.6 );
setRotateKey( spep_2 -3 + 132, 1, 21.2 );
setRotateKey( spep_2 -3 + 134, 1, 20.9 );
setRotateKey( spep_2 -3 + 136, 1, 20.7 );
setRotateKey( spep_2 -3 + 139, 1, 20.6 );
setRotateKey( spep_2 -3 + 140, 1, 20.6 );

setDisp( spep_2 -3 + 200, 1, 1 );
--setDisp( spep_2 -3 + 289, 1, 0 );
changeAnime( spep_2 -3 + 200, 1, 106 );
changeAnime( spep_2 -3 + 208, 1, 108 );
changeAnime( spep_2 -3 + 240, 1, 106 );
changeAnime( spep_2 -3 + 268, 1, 108 );

setMoveKey( spep_2 -3 + 200, 1, 323.4, -90.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 284.9, -90.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 246.3, -90.8 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 207.7, -90.8 , 0 );
setMoveKey( spep_2 -3 + 207, 1, 207.7, -90.8 , 0 );--
setMoveKey( spep_2 -3 + 208, 1, 222.6, -94.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 230.6, -98.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 245.4, -97.4 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 221.7, -90.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 218.9, -87.9 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 216.2, -85.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 213.4, -83.5 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 210.7, -81.2 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 208, -79 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 205.2, -76.7 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 202.5, -74.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 199.8, -72.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 197.1, -70 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 194.4, -67.7 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 191.7, -65.5 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 188.9, -63.3 , 0 );
setMoveKey( spep_2 -3 + 239, 1, 188.9, -63.3 , 0 );--
setMoveKey( spep_2 -3 + 240, 1, 156.8, -87.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 188.9, -91.7 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 204, -92 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 174.4, -88.1 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 168.1, -88.2 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 162.3, -88.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 156.8, -88.4 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 151.8, -88.5 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 147, -88.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 142.6, -88.6 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 138.4, -88.7 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 137.8, -88.7 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 137.3, -88.7 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 137.1, -88.8 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 137.1, -88.8 , 0 );--
setMoveKey( spep_2 -3 + 268, 1, 190.9, -44.7 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 222, -40.5 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 193.6, -45.8 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 197, -47 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 201.7, -48.8 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 207.8, -51.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 215.2, -54 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 224.1, -57.3 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 234.3, -61.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 246, -65.7 , 0 );
--setMoveKey( spep_2 -3 + 288, 1, 259, -70.6 , 0 );
--setMoveKey( spep_2 -3 + 289, 1, 259, -70.6 , 0 );

setScaleKey( spep_2 -3 + 200, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 207, 1, 1.62, 1.62 );--
setScaleKey( spep_2 -3 + 208, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 210, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 212, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 214, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 239, 1, 2.07, 2.07 );--
setScaleKey( spep_2 -3 + 240, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 242, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 244, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 246, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 267, 1, 1.62, 1.62 );--
setScaleKey( spep_2 -3 + 268, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 270, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 272, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 274, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 276, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 278, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 280, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 282, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 284, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 286, 1, 2.57, 2.57 );
--setScaleKey( spep_2 -3 + 288, 1, 2.68, 2.68 );
--setScaleKey( spep_2 -3 + 289, 1, 2.68, 2.68 );

setRotateKey( spep_2 -3 + 200, 1, -46.8 );
setRotateKey( spep_2 -3 + 207, 1, -46.8 );--
setRotateKey( spep_2 -3 + 208, 1, -10.8 );
setRotateKey( spep_2 -3 + 210, 1, -10.3 );
setRotateKey( spep_2 -3 + 212, 1, -9.8 );
setRotateKey( spep_2 -3 + 214, 1, -9 );
setRotateKey( spep_2 -3 + 216, 1, -8.1 );
setRotateKey( spep_2 -3 + 218, 1, -7.2 );
setRotateKey( spep_2 -3 + 220, 1, -6.3 );
setRotateKey( spep_2 -3 + 222, 1, -5.4 );
setRotateKey( spep_2 -3 + 224, 1, -4.5 );
setRotateKey( spep_2 -3 + 226, 1, -3.7 );
setRotateKey( spep_2 -3 + 228, 1, -2.8 );
setRotateKey( spep_2 -3 + 230, 1, -1.9 );
setRotateKey( spep_2 -3 + 232, 1, -1 );
setRotateKey( spep_2 -3 + 234, 1, -0.1 );
setRotateKey( spep_2 -3 + 236, 1, 0.8 );
setRotateKey( spep_2 -3 + 238, 1, 1.6 );
setRotateKey( spep_2 -3 + 239, 1, 1.6 );--
setRotateKey( spep_2 -3 + 240, 1, -46.8 );
setRotateKey( spep_2 -3 + 242, 1, -45.8 );
setRotateKey( spep_2 -3 + 244, 1, -44.8 );
setRotateKey( spep_2 -3 + 246, 1, -43.8 );
setRotateKey( spep_2 -3 + 248, 1, -42.9 );
setRotateKey( spep_2 -3 + 250, 1, -42.2 );
setRotateKey( spep_2 -3 + 252, 1, -41.5 );
setRotateKey( spep_2 -3 + 254, 1, -41 );
setRotateKey( spep_2 -3 + 256, 1, -40.6 );
setRotateKey( spep_2 -3 + 258, 1, -40.3 );
setRotateKey( spep_2 -3 + 260, 1, -40 );
setRotateKey( spep_2 -3 + 262, 1, -39.8 );
setRotateKey( spep_2 -3 + 264, 1, -39.7 );
setRotateKey( spep_2 -3 + 266, 1, -39.6 );
setRotateKey( spep_2 -3 + 267, 1, -39.6 );--
setRotateKey( spep_2 -3 + 268, 1, -27.5 );
setRotateKey( spep_2 -3 + 270, 1, -27.6 );
setRotateKey( spep_2 -3 + 272, 1, -27.8 );
setRotateKey( spep_2 -3 + 274, 1, -28.2 );
setRotateKey( spep_2 -3 + 276, 1, -28.7 );
setRotateKey( spep_2 -3 + 278, 1, -29.4 );
setRotateKey( spep_2 -3 + 280, 1, -30.2 );
setRotateKey( spep_2 -3 + 282, 1, -31.2 );
setRotateKey( spep_2 -3 + 284, 1, -32.3 );
setRotateKey( spep_2 -3 + 286, 1, -33.6 );
--setRotateKey( spep_2 -3 + 288, 1, -35.1 );
--setRotateKey( spep_2 -3 + 289, 1, -35.1 );

-- ** 音 ** --
--残像３
SE019 = playSeVer2( spep_2 + 24, 1116, "",spep_2 + 94, 0, 36, -1);
SE020 = playSeVer2( spep_2 + 26, 1245, "", 0, 0, 0, -1);

--蹴り上げる
SE021 = playSeVer2( spep_2 + 76, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 86, 1187, "", 0, 0, 0, -1);

--横向き向かっていく
SE023 = playSeVer2( spep_2 + 132, 1264, "",spep_2 + 230, 0, 42, -1);
SE024 = playSeVer2( spep_2 + 132, 1278, "",spep_2 + 230, 0, 42, -1);

--パンチ
SE025 = playSeVer2( spep_2 + 194, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 202, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 202, 1110, "", 0, 0, 0, -1);

--キック
SE028 = playSeVer2( spep_2 + 226, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 230, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 230, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE030, 87 );
SE031 = playSeVer2( spep_2 + 230, 1010, "", 0, 0, 0, -1);

--蹴り飛ばす
SE032 = playSeVer2( spep_2 + 246, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);

--手刀
SE034 = playSeVer2( spep_2 + 284 -2, 1049, "",spep_2 + 322 -2, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 284 -2, SE034, 64 );
SE035 = playSeVer2( spep_2 + 286 -2, 1000, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 286 -2, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 284;


------------------------------------------------------
-- 手刀→膝蹴り(116F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
sword_f = entryEffectLife( spep_3 + 0, SP_06r, 116, 0x100, -1, 0, 0, 0 );  --手刀→膝蹴り	ef_006
setEffMoveKey( spep_3 + 0, sword_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, sword_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sword_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, sword_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword_f, 0 );
setEffRotateKey( spep_3 + 116, sword_f, 0 );
setEffAlphaKey( spep_3 + 0, sword_f, 255 );
setEffAlphaKey( spep_3 + 116 -1, sword_f, 255 );
setEffAlphaKey( spep_3 + 116, sword_f, 0 );

sword_b = entryEffectLife( spep_3 + 0, SP_07, 116, 0x80, -1, 0, 0, 0 );  --手刀→膝蹴り	ef_007
setEffMoveKey( spep_3 + 0, sword_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, sword_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sword_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, sword_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sword_b, 0 );
setEffRotateKey( spep_3 + 116, sword_b, 0 );
setEffAlphaKey( spep_3 + 0, sword_b, 255 );
setEffAlphaKey( spep_3 + 116 -1, sword_b, 255 );
setEffAlphaKey( spep_3 + 116, sword_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 -3 + 0, 1, 1 );
setDisp( spep_3 -3 + 119, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 48, 1, 108 );
changeAnime( spep_3 -3 + 94, 1, 106 );

setMoveKey( spep_3 + 0, 1, -18.2, -85.7 , 0 );
setMoveKey( spep_3 + 1, 1, -16.4, -90.7 , 0 );
setMoveKey( spep_3 + 2, 1, -11, -105.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -2, -130.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 10.6, -165.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 26.8, -210.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -27, -304.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -12.9, -280.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -40, -286.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -0.2, -329.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -29.7, -264.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -39.1, -286.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 0.5, -288.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -23.9, -292.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -28.1, -274.4 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -54.9, -296.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -15.5, -267.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -39.8, -305.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -31.6, -281 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -45, -286.6 , 0 );
setMoveKey( spep_3 -3 + 39, 1, -45, -286.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -189.1, -168.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -116.4, -99.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -43.7, -31.3 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 29, 37.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 231.4, 170.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 196.5, 166.1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 242.7, 177.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 224.6, 172.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 174.5, 170.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 179.6, 174.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 184.6, 179.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 189.7, 183.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 194.7, 187.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 199.8, 192.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 204.8, 196.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 209.9, 201 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 214.9, 205.4 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 214.9, 205.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -107.4, -281.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -87, -230.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -66.7, -179.5 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -46.5, -129.4 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -26.4, -79.8 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -6.4, -30.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 13.5, 17.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 33.4, 65.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 53.1, 113.1 , 0 );
setMoveKey( spep_3 -3 + 93, 1, 72.7, 160 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 92.3, 206.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 101.6, 218.6 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 110.9, 230.7 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 120.1, 242.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 129.1, 254.4 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 138, 266.1 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 146.9, 277.7 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 155.6, 289.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 164.2, 300.4 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 172.7, 311.6 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 181.1, 322.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 189.4, 333.5 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 197.6, 344.3 , 0 );
setMoveKey( spep_3 -3 + 119, 1, 197.6, 344.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 1, 1, 3, 3 );
setScaleKey( spep_3 + 2, 1, 3.17, 3.17 );
setScaleKey( spep_3 -3 + 6, 1, 3.46, 3.46 );
setScaleKey( spep_3 -3 + 8, 1, 3.86, 3.86 );
setScaleKey( spep_3 -3 + 10, 1, 4.38, 4.38 );
setScaleKey( spep_3 -3 + 12, 1, 5.01, 5.01 );
setScaleKey( spep_3 -3 + 38, 1, 5.01, 5.01 );
setScaleKey( spep_3 -3 + 39, 1, 5.01, 5.01 );
setScaleKey( spep_3 -3 + 40, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 47, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 48, 1, 4.65, 4.65 );
setScaleKey( spep_3 -3 + 50, 1, 4.35, 4.35 );
setScaleKey( spep_3 -3 + 52, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 72, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 73, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 74, 1, 5, 5 );
setScaleKey( spep_3 -3 + 76, 1, 4.67, 4.67 );
setScaleKey( spep_3 -3 + 78, 1, 4.36, 4.36 );
setScaleKey( spep_3 -3 + 80, 1, 4.04, 4.04 );
setScaleKey( spep_3 -3 + 82, 1, 3.73, 3.73 );
setScaleKey( spep_3 -3 + 84, 1, 3.42, 3.42 );
setScaleKey( spep_3 -3 + 86, 1, 3.11, 3.11 );
setScaleKey( spep_3 -3 + 88, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 93, 1, 2.2, 2.2 );
setScaleKey( spep_3 -3 + 94, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 96, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 98, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 100, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 102, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 104, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 106, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 108, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 110, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 112, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 114, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 116, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 118, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 119, 1, 0.82, 0.82 );

setRotateKey( spep_3 + 0, 1, -41.9 );
setRotateKey( spep_3 -3 + 10, 1, -41.9 );
setRotateKey( spep_3 -3 + 12, 1, -31 );
setRotateKey( spep_3 -3 + 14, 1, -30.9 );
setRotateKey( spep_3 -3 + 16, 1, -30.8 );
setRotateKey( spep_3 -3 + 18, 1, -30.7 );
setRotateKey( spep_3 -3 + 20, 1, -30.6 );
setRotateKey( spep_3 -3 + 22, 1, -30.5 );
setRotateKey( spep_3 -3 + 24, 1, -30.4 );
setRotateKey( spep_3 -3 + 26, 1, -30.3 );
setRotateKey( spep_3 -3 + 28, 1, -30.2 );
setRotateKey( spep_3 -3 + 30, 1, -30.2 );
setRotateKey( spep_3 -3 + 32, 1, -30.1 );
setRotateKey( spep_3 -3 + 34, 1, -30 );
setRotateKey( spep_3 -3 + 36, 1, -29.9 );
setRotateKey( spep_3 -3 + 38, 1, -29.8 );
setRotateKey( spep_3 -3 + 39, 1, -29.8 );
setRotateKey( spep_3 -3 + 40, 1, -80.5 );
setRotateKey( spep_3 -3 + 47, 1, -80.5 );
setRotateKey( spep_3 -3 + 48, 1, -40.4 );
setRotateKey( spep_3 -3 + 72, 1, -40.4 );
setRotateKey( spep_3 -3 + 73, 1, -40.4 );
setRotateKey( spep_3 -3 + 74, 1, -15.8 );
setRotateKey( spep_3 -3 + 76, 1, -17.7 );
setRotateKey( spep_3 -3 + 78, 1, -19.5 );
setRotateKey( spep_3 -3 + 80, 1, -21.3 );
setRotateKey( spep_3 -3 + 82, 1, -23.1 );
setRotateKey( spep_3 -3 + 84, 1, -25 );
setRotateKey( spep_3 -3 + 86, 1, -26.8 );
setRotateKey( spep_3 -3 + 88, 1, -28.6 );
setRotateKey( spep_3 -3 + 90, 1, -30.5 );
setRotateKey( spep_3 -3 + 93, 1, -32.3 );
setRotateKey( spep_3 -3 + 94, 1, -34.1 );
setRotateKey( spep_3 -3 + 96, 1, -33.3 );
setRotateKey( spep_3 -3 + 98, 1, -32.5 );
setRotateKey( spep_3 -3 + 100, 1, -31.6 );
setRotateKey( spep_3 -3 + 102, 1, -30.8 );
setRotateKey( spep_3 -3 + 104, 1, -30 );
setRotateKey( spep_3 -3 + 106, 1, -29.2 );
setRotateKey( spep_3 -3 + 108, 1, -28.3 );
setRotateKey( spep_3 -3 + 110, 1, -27.5 );
setRotateKey( spep_3 -3 + 112, 1, -26.7 );
setRotateKey( spep_3 -3 + 114, 1, -25.9 );
setRotateKey( spep_3 -3 + 116, 1, -25 );
setRotateKey( spep_3 -3 + 118, 1, -24.2 );
setRotateKey( spep_3 -3 + 119, 1, -24.2 );

-- ** 音 ** --
--膝蹴り
SE037 = playSeVer2( spep_3 + 40, 1120, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE038, 70 );

--敵飛んでいく
SE039 = playSeVer2( spep_3 + 68, 1121, "",spep_3 + 168, 0, 50, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;


------------------------------------------------------
-- 構え→目が光る(46F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
stance = entryEffectLife( spep_4 + 0, SP_08, 46, 0x100, -1, 0, 0, 0 );  --構え→目が光る	ef_008
setEffMoveKey( spep_4 + 0, stance, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, stance, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, stance, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, stance, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, stance, 0 );
setEffRotateKey( spep_4 + 46, stance, 0 );
setEffAlphaKey( spep_4 + 0, stance, 255 );
setEffAlphaKey( spep_4 + 46 -1, stance, 255 );
setEffAlphaKey( spep_4 + 46, stance, 0 );

-- ** 音 ** --
--目光る
SE040 = playSeVer2( spep_4 + 8, 1303, "",spep_4 + 62, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 8, SE040, 53 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_4 + 44, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_5 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

--正面向かってくる
SE042 = playSeVer2( spep_5 + 74, 1263, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 74, SE042, 168 );
SE043 = playSeVer2( spep_5 + 82, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 82, SE043, 56 );
setTimeStretch( SE043, 1.18, 30, 4 );
SE044 = playSeVer2( spep_5 + 82, 1314, "",spep_5 + 270, 0, 58, -1);
setSeVolumeByWorkId( spep_5 + 82, SE044, 71 );
SE045 = playSeVer2( spep_5 + 82, 1117, "", 0, 0, 0, 0.6);

--走る音
SE046 = playSeVer2( spep_5 + 92, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 92, SE046, 126 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 走ってから優勝キック(186F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
winkick_f = entryEffectLife( spep_6 + 0, SP_09r, 186, 0x100, -1, 0, 0, 0 );  --走ってから優勝キック	ef_009
setEffMoveKey( spep_6 + 0, winkick_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, winkick_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, winkick_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 186, winkick_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, winkick_f, 0 );
setEffRotateKey( spep_6 + 186, winkick_f, 0 );
setEffAlphaKey( spep_6 + 0, winkick_f, 255 );
setEffAlphaKey( spep_6 + 186 -1, winkick_f, 255 );
setEffAlphaKey( spep_6 + 186, winkick_f, 0 );

winkick_b = entryEffectLife( spep_6 + 0, SP_10, 186, 0x80, -1, 0, 0, 0 );  --走ってから優勝キック	ef_010
setEffMoveKey( spep_6 + 0, winkick_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 186, winkick_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, winkick_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 186, winkick_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, winkick_b, 0 );
setEffRotateKey( spep_6 + 186, winkick_b, 0 );
setEffAlphaKey( spep_6 + 0, winkick_b, 255 );
setEffAlphaKey( spep_6 + 186 -1, winkick_b, 255 );
setEffAlphaKey( spep_6 + 186, winkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 140, 1, 1 );
--setDisp( spep_6 -3 + 189, 1, 0 );
changeAnime( spep_6 -3 + 140, 1, 106 );
changeAnime( spep_6 -3 + 144, 1, 108 );

setMoveKey( spep_6 -3 + 140, 1, 205.7, 132.8 , 0 );
setMoveKey( spep_6 -3 + 141, 1, 205.7, 132.8 , 0 );
setMoveKey( spep_6 -3 + 142, 1, 175.6, 117.8 , 0 );
setMoveKey( spep_6 -3 + 143, 1, 175.6, 117.8 , 0 );--
setMoveKey( spep_6 -3 + 144, 1, 160.3, 98.4 , 0 );
setMoveKey( spep_6 -3 + 145, 1, 160.3, 98.4 , 0 );
setMoveKey( spep_6 -3 + 146, 1, 209.7, 78.7 , 0 );
setMoveKey( spep_6 -3 + 147, 1, 209.7, 78.7 , 0 );
setMoveKey( spep_6 -3 + 148, 1, 140.8, 36.3 , 0 );
setMoveKey( spep_6 -3 + 149, 1, 140.8, 36.3 , 0 );
setMoveKey( spep_6 -3 + 150, 1, 201.9, 85.3 , 0 );
setMoveKey( spep_6 -3 + 151, 1, 201.9, 85.3 , 0 );
setMoveKey( spep_6 -3 + 152, 1, 175.2, 80.2 , 0 );
setMoveKey( spep_6 -3 + 153, 1, 175.2, 80.2 , 0 );
setMoveKey( spep_6 -3 + 154, 1, 189.9, 63.5 , 0 );
setMoveKey( spep_6 -3 + 155, 1, 189.9, 63.5 , 0 );
setMoveKey( spep_6 -3 + 156, 1, 204.7, 88 , 0 );
setMoveKey( spep_6 -3 + 157, 1, 204.7, 88 , 0 );
setMoveKey( spep_6 -3 + 158, 1, 178.7, 83.5 , 0 );
setMoveKey( spep_6 -3 + 159, 1, 178.7, 83.5 , 0 );
setMoveKey( spep_6 -3 + 160, 1, 207.6, 90.8 , 0 );
setMoveKey( spep_6 -3 + 161, 1, 207.6, 90.8 , 0 );
setMoveKey( spep_6 -3 + 162, 1, 182, 86.7 , 0 );
setMoveKey( spep_6 -3 + 163, 1, 182, 86.7 , 0 );
setMoveKey( spep_6 -3 + 164, 1, 197.7, 71 , 0 );
setMoveKey( spep_6 -3 + 165, 1, 197.7, 71 , 0 );
setMoveKey( spep_6 -3 + 166, 1, 213.5, 96.5 , 0 );
setMoveKey( spep_6 -3 + 167, 1, 213.5, 96.5 , 0 );
setMoveKey( spep_6 -3 + 168, 1, 188.5, 93 , 0 );
setMoveKey( spep_6 -3 + 169, 1, 188.5, 93 , 0 );
setMoveKey( spep_6 -3 + 170, 1, 204.8, 77.9 , 0 );
setMoveKey( spep_6 -3 + 171, 1, 204.8, 77.9 , 0 );
setMoveKey( spep_6 -3 + 172, 1, 221.3, 104 , 0 );
setMoveKey( spep_6 -3 + 173, 1, 221.3, 104 , 0 );
setMoveKey( spep_6 -3 + 174, 1, 196.9, 101 , 0 );
setMoveKey( spep_6 -3 + 175, 1, 196.9, 101 , 0 );
setMoveKey( spep_6 -3 + 176, 1, 213.8, 86.5 , 0 );
setMoveKey( spep_6 -3 + 177, 1, 213.8, 86.5 , 0 );
setMoveKey( spep_6 -3 + 178, 1, 230.9, 113.3 , 0 );
setMoveKey( spep_6 -3 + 179, 1, 230.9, 113.3 , 0 );
setMoveKey( spep_6 -3 + 180, 1, 207.1, 110.9 , 0 );
setMoveKey( spep_6 -3 + 181, 1, 207.1, 110.9 , 0 );
setMoveKey( spep_6 -3 + 182, 1, 310.7, 154.9 , 0 );
setMoveKey( spep_6 -3 + 183, 1, 310.7, 154.9 , 0 );
setMoveKey( spep_6 -3 + 184, 1, 441.6, 258.7 , 0 );
setMoveKey( spep_6 -3 + 185, 1, 441.6, 258.7 , 0 );
setMoveKey( spep_6 -3 + 186, 1, 572.2, 334.2 , 0 );
setMoveKey( spep_6 -3 + 187, 1, 572.2, 334.2 , 0 );
setMoveKey( spep_6 -3 + 188, 1, 757.5, 475.2 , 0 );
--setMoveKey( spep_6 -3 + 189, 1, 722.3, 488.9 , 0 );

setScaleKey( spep_6 -3 + 140, 1, 2.88, 2.88 );
setScaleKey( spep_6 -3 + 141, 1, 2.88, 2.88 );
setScaleKey( spep_6 -3 + 142, 1, 2.64, 2.64 );
setScaleKey( spep_6 -3 + 143, 1, 2.64, 2.64 );--
setScaleKey( spep_6 -3 + 144, 1, 3, 3 );
setScaleKey( spep_6 -3 + 188, 1, 3, 3 );

setRotateKey( spep_6 -3 + 140, 1, -78.5 );
setRotateKey( spep_6 -3 + 143, 1, -78.5 );--
setRotateKey( spep_6 -3 + 144, 1, 0 );
setRotateKey( spep_6 -3 + 146, 1, 0 );
setRotateKey( spep_6 -3 + 147, 1, 0 );
setRotateKey( spep_6 -3 + 148, 1, 0.1 );
setRotateKey( spep_6 -3 + 149, 1, 0.1 );
setRotateKey( spep_6 -3 + 150, 1, 0.3 );
setRotateKey( spep_6 -3 + 151, 1, 0.3 );
setRotateKey( spep_6 -3 + 152, 1, 0.5 );
setRotateKey( spep_6 -3 + 153, 1, 0.5 );
setRotateKey( spep_6 -3 + 154, 1, 0.8 );
setRotateKey( spep_6 -3 + 155, 1, 0.8 );
setRotateKey( spep_6 -3 + 156, 1, 1.1 );
setRotateKey( spep_6 -3 + 157, 1, 1.1 );
setRotateKey( spep_6 -3 + 158, 1, 1.5 );
setRotateKey( spep_6 -3 + 159, 1, 1.5 );
setRotateKey( spep_6 -3 + 160, 1, 2 );
setRotateKey( spep_6 -3 + 161, 1, 2 );
setRotateKey( spep_6 -3 + 162, 1, 2.5 );
setRotateKey( spep_6 -3 + 163, 1, 2.5 );
setRotateKey( spep_6 -3 + 164, 1, 3.1 );
setRotateKey( spep_6 -3 + 165, 1, 3.1 );
setRotateKey( spep_6 -3 + 166, 1, 3.7 );
setRotateKey( spep_6 -3 + 167, 1, 3.7 );
setRotateKey( spep_6 -3 + 168, 1, 4.4 );
setRotateKey( spep_6 -3 + 169, 1, 4.4 );
setRotateKey( spep_6 -3 + 170, 1, 5.2 );
setRotateKey( spep_6 -3 + 171, 1, 5.2 );
setRotateKey( spep_6 -3 + 172, 1, 6 );
setRotateKey( spep_6 -3 + 173, 1, 6 );
setRotateKey( spep_6 -3 + 174, 1, 6.9 );
setRotateKey( spep_6 -3 + 175, 1, 6.9 );
setRotateKey( spep_6 -3 + 176, 1, 7.9 );
setRotateKey( spep_6 -3 + 177, 1, 7.9 );
setRotateKey( spep_6 -3 + 178, 1, 8.9 );
setRotateKey( spep_6 -3 + 179, 1, 8.9 );
setRotateKey( spep_6 -3 + 180, 1, 10 );
setRotateKey( spep_6 -3 + 181, 1, 10 );
setRotateKey( spep_6 -3 + 182, 1, 8.3 )
setRotateKey( spep_6 -3 + 183, 1, 8.3 );
setRotateKey( spep_6 -3 + 184, 1, 6 );
setRotateKey( spep_6 -3 + 185, 1, 6 );
setRotateKey( spep_6 -3 + 186, 1, 3.3 );
setRotateKey( spep_6 -3 + 187, 1, 3.3 );
setRotateKey( spep_6 -3 + 188, 1, 0 );
--setRotateKey( spep_6 -3 + 189, 1, 0 );

-- ** 音 ** --
--走る音
SE047 = playSeVer2( spep_6 + 36, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 36, SE047, 133 );

--飛びかかる
SE048 = playSeVer2( spep_6 + 58, 1116, "", 0, 0, 0, 0.6);
SE049 = playSeVer2( spep_6 + 58, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_6 + 58, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 58, SE050, 64 );

--敵ヒット
SE051 = playSeVer2( spep_6 + 132, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE052 = playSeVer2( spep_6 + 174, 1121, "",spep_6 + 274, 0, 60, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 186;


------------------------------------------------------
-- 奥に吹っ飛ぶ敵(166F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --奥に吹っ飛ぶ敵	ef_011
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 166, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 166, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 166, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 166, finish, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 46, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, 12.7, -4.2 , 0 );
setMoveKey( spep_7 + 1, 1, 12.7, -3.9 , 0 );
setMoveKey( spep_7 + 2, 1, 12.6, -3.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 12.5, -2 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 12.4, -0.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 12.2, 1.9 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 12, 4.6 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 11.7, 7.8 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 11.3, 11.5 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 10.9, 15.7 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 10.5, 20.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 9.9, 25.7 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 9.3, 31.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 8.6, 37.8 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 7.8, 44.8 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 6.9, 52.3 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 6, 60.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 4.9, 69.1 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 3.8, 78.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 2.5, 88.4 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 1.2, 99 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -0.3, 110.4 , 0 );
setMoveKey( spep_7 -3 + 45, 1, -1.8, 122.4 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -1.8, 122.4 , 0 );

setScaleKey( spep_7 + 0, 1, 3.38, 3.38 );
setScaleKey( spep_7 + 1, 1, 3.37, 3.37 );
setScaleKey( spep_7 + 2, 1, 3.35, 3.35 );
setScaleKey( spep_7 -3 + 6, 1, 3.32, 3.32 );
setScaleKey( spep_7 -3 + 8, 1, 3.27, 3.27 );
setScaleKey( spep_7 -3 + 10, 1, 3.21, 3.21 );
setScaleKey( spep_7 -3 + 12, 1, 3.13, 3.13 );
setScaleKey( spep_7 -3 + 14, 1, 3.04, 3.04 );
setScaleKey( spep_7 -3 + 16, 1, 2.94, 2.94 );
setScaleKey( spep_7 -3 + 18, 1, 2.82, 2.82 );
setScaleKey( spep_7 -3 + 20, 1, 2.69, 2.69 );
setScaleKey( spep_7 -3 + 22, 1, 2.55, 2.55 );
setScaleKey( spep_7 -3 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_7 -3 + 26, 1, 2.22, 2.22 );
setScaleKey( spep_7 -3 + 28, 1, 2.03, 2.03 );
setScaleKey( spep_7 -3 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_7 -3 + 32, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 34, 1, 1.39, 1.39 );
setScaleKey( spep_7 -3 + 36, 1, 1.15, 1.15 );
setScaleKey( spep_7 -3 + 38, 1, 0.9, 0.9 );
setScaleKey( spep_7 -3 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_7 -3 + 42, 1, 0.35, 0.35 );
setScaleKey( spep_7 -3 + 45, 1, 0.05, 0.05 );
setScaleKey( spep_7 -3 + 46, 1, 0.05, 0.05 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 1, 1, 0 );
setRotateKey( spep_7 + 2, 1, 0.2 );
setRotateKey( spep_7 -3 + 6, 1, 0.4 );
setRotateKey( spep_7 -3 + 8, 1, 0.7 );
setRotateKey( spep_7 -3 + 10, 1, 1.1 );
setRotateKey( spep_7 -3 + 12, 1, 1.5 );
setRotateKey( spep_7 -3 + 14, 1, 2.1 );
setRotateKey( spep_7 -3 + 16, 1, 2.7 );
setRotateKey( spep_7 -3 + 18, 1, 3.4 );
setRotateKey( spep_7 -3 + 20, 1, 4.3 );
setRotateKey( spep_7 -3 + 22, 1, 5.1 );
setRotateKey( spep_7 -3 + 24, 1, 6.1 );
setRotateKey( spep_7 -3 + 26, 1, 7.2 );
setRotateKey( spep_7 -3 + 28, 1, 8.3 );
setRotateKey( spep_7 -3 + 30, 1, 9.6 );
setRotateKey( spep_7 -3 + 32, 1, 10.9 );
setRotateKey( spep_7 -3 + 34, 1, 12.3 );
setRotateKey( spep_7 -3 + 36, 1, 13.8 );
setRotateKey( spep_7 -3 + 38, 1, 15.3 );
setRotateKey( spep_7 -3 + 40, 1, 17 );
setRotateKey( spep_7 -3 + 42, 1, 18.8 );
setRotateKey( spep_7 -3 + 45, 1, 20.6 );
setRotateKey( spep_7 -3 + 46, 1, 20.6 );

-- ** 音 ** --
--歓声
SE053 = playSeVer2( spep_7 + 28, 39, "", 0, 0, 0, -1);

--星になる
SE054 = playSeVer2( spep_7 + 38, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 48 );
endPhase( spep_7 + 156 );


end