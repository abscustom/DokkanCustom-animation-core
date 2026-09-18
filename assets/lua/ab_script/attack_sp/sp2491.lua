--1025500:1025510:SSRガンマ1号_ガンマ・ブラスター
--sp_effect_a2_00193

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
SP_01 = 160817;	--開始～銃構えまで：手前	ef_001
SP_02 = 160818;	--開始～銃構えまで：奥	ef_002
SP_03 = 160819;	--発射～敵に迫る：手前	ef_003
SP_04 = 160820;	--発射～敵に迫る：奥	ef_004
SP_05 = 160821;	--汎用ラスト用固定背景	ef_005

--敵側
SP_01r = 160822;	--敵用：開始～銃構えまで：手前	ef_001r
SP_02r = 160823;	--敵用：開始～銃構えまで：奥	ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開始～銃構えまで(454F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 454, 0x100, -1, 0, 0, 0 );  --開始～銃構えまで：手前	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 454, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 454, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 454, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 454 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 454, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 454, 0x80, -1, 0, 0, 0 );  --開始～銃構えまで：奥	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 454, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 454, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 454, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 454 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 454, first_b, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 124, 1, 1 );
setDisp( spep_0 -3 + 174, 1, 0 );
changeAnime( spep_0 -3 + 124, 1, 101 );
changeAnime( spep_0 -3 + 154, 1, 104 );
changeAnime( spep_0 -3 + 158, 1, 106 );

setMoveKey( spep_0 -3 + 124, 1, 242.8, -110.1 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 242.8, -110.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 241.8, -109.8 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 241.8, -109.8 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 240.8, -109.5 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 240.8, -109.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_0 -3 + 131, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 238.9, -108.8 , 0 );
setMoveKey( spep_0 -3 + 133, 1, 238.9, -108.8 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 237.9, -108.5 , 0 );
setMoveKey( spep_0 -3 + 135, 1, 237.9, -108.5 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 236.9, -108.1 , 0 );
setMoveKey( spep_0 -3 + 137, 1, 236.9, -108.1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 235.9, -107.8 , 0 );
setMoveKey( spep_0 -3 + 139, 1, 235.9, -107.8 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 235, -107.5 , 0 );
setMoveKey( spep_0 -3 + 141, 1, 235, -107.5 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 234, -107.1 , 0 );

setScaleKey( spep_0 -3 + 124, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 125, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 126, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 127, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 128, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 132, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 134, 1, 0.21, 0.21 );

setRotateKey( spep_0 -3 + 124, 1, 0 );

-- ** 音 ** --
--空気音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 180, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 26 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--走る音
SE003 = playSeVer2( spep_0 + 18, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 158 );
SE004 = playSeVer2( spep_0 + 18, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 158 );
SE005 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 158 );
SE006 = playSeVer2( spep_0 + 40, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 158 );
SE007 = playSeVer2( spep_0 + 60, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 158 );
SE008 = playSeVer2( spep_0 + 60, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 158 );
SE009 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 158 );
SE011 = playSeVer2( spep_0 + 94, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE011, 158 );
SE012 = playSeVer2( spep_0 + 104, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE012, 158 );
SE014 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE014, 158 );
SE015 = playSeVer2( spep_0 + 120, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE015, 158 );

--加速
SE010 = playSeVer2( spep_0 + 78, 1019, "", 0, 32, 0, -1);
SE013 = playSeVer2( spep_0 + 104, 1167, "",spep_0 + 166, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 104, SE013, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 930 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 234, -107.1 , 0 );
    setMoveKey( SP_dodge + 1, 1, 233, -106.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 233, -106.8 , 0 );
    setMoveKey( SP_dodge + 3, 1, 230.4, -108 , 0 );
    setMoveKey( SP_dodge + 4, 1, 230.4, -108 , 0 );
    setMoveKey( SP_dodge + 5, 1, 230.8, -116 , 0 );
    setMoveKey( SP_dodge + 6, 1, 230.8, -116 , 0 );
    setMoveKey( SP_dodge + 7, 1, 239.7, -136.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 239.7, -136.9 , 0 );
    setMoveKey( SP_dodge + 9, 1, 234.1, -113.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 234.1, -113.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 1, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 2, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 3, 1, 0.33 +0.1, 0.33 +0.1 );
    setScaleKey( SP_dodge + 4, 1, 0.33 +0.1, 0.33 +0.1 );
    setScaleKey( SP_dodge + 5, 1, 0.49 +0.1, 0.49 +0.1 );
    setScaleKey( SP_dodge + 6, 1, 0.49 +0.1, 0.49 +0.1 );
    setScaleKey( SP_dodge + 7, 1, 0.6 +0.15, 0.6 +0.15 );
    setScaleKey( SP_dodge + 8, 1, 0.6 +0.15, 0.6 +0.15 );
    setScaleKey( SP_dodge + 9, 1, 1.1 +0.25, 1.1 +0.25 );
    setScaleKey( SP_dodge + 10, 1, 1.1 +0.25, 1.1 +0.25 );--

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

setMoveKey( spep_0 -3 + 143, 1, 234, -107.1 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 233, -106.8 , 0 );
setMoveKey( spep_0 -3 + 145, 1, 233, -106.8 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 230.4, -108 , 0 );
setMoveKey( spep_0 -3 + 147, 1, 230.4, -108 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 230.8, -116 , 0 );
setMoveKey( spep_0 -3 + 149, 1, 230.8, -116 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 239.7, -136.9 , 0 );
setMoveKey( spep_0 -3 + 151, 1, 239.7, -136.9 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 234.1, -113.2 , 0 );
setMoveKey( spep_0 -3 + 153, 1, 234.1, -113.2 , 0 );--
setMoveKey( spep_0 -3 + 154, 1, 239.6, -95.4 , 0 );
setMoveKey( spep_0 -3 + 155, 1, 239.6, -95.4 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 200.5, -114.1 , 0 );
setMoveKey( spep_0 -3 + 157, 1, 200.5, -114.1 , 0 );--
setMoveKey( spep_0 -3 + 158, 1, 46.8, -177.1 , 0 );
setMoveKey( spep_0 -3 + 159, 1, 46.8, -177.1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 67.7, -157.9 , 0 );
setMoveKey( spep_0 -3 + 161, 1, 67.7, -157.9 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 57.6, -141.8 , 0 );
setMoveKey( spep_0 -3 + 163, 1, 57.6, -141.8 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 78.4, -156.6 , 0 );
setMoveKey( spep_0 -3 + 165, 1, 78.4, -156.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 80.7, -165.3 , 0 );
setMoveKey( spep_0 -3 + 167, 1, 80.7, -165.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 89.2, -155.4 , 0 );
setMoveKey( spep_0 -3 + 169, 1, 89.2, -155.4 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 79.1, -164 , 0 );
setMoveKey( spep_0 -3 + 171, 1, 79.1, -164 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 99.9, -154.1 , 0 );
setMoveKey( spep_0 -3 + 173, 1, 99.9, -154.1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 99.9, -154.1 , 0 );

s1 = 0.4
setScaleKey( spep_0 -3 + 144, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 145, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 146, 1, 0.33 +0.1, 0.33 +0.1 );
setScaleKey( spep_0 -3 + 147, 1, 0.33 +0.1, 0.33 +0.1 );
setScaleKey( spep_0 -3 + 148, 1, 0.49 +0.1, 0.49 +0.1 );
setScaleKey( spep_0 -3 + 149, 1, 0.49 +0.1, 0.49 +0.1 );
setScaleKey( spep_0 -3 + 150, 1, 0.6 +0.15, 0.6 +0.15 );
setScaleKey( spep_0 -3 + 151, 1, 0.6 +0.15, 0.6 +0.15 );
setScaleKey( spep_0 -3 + 152, 1, 1.1 +0.25, 1.1 +0.25 );
setScaleKey( spep_0 -3 + 153, 1, 1.1 +0.25, 1.1 +0.25 );--
setScaleKey( spep_0 -3 + 154, 1, 1.59 +0.2, 1.59 +0.2 );
setScaleKey( spep_0 -3 + 155, 1, 1.59 +0.2, 1.59 +0.2 );
setScaleKey( spep_0 -3 + 156, 1, 2.73 +0.2, 2.73 +0.2 );
setScaleKey( spep_0 -3 + 157, 1, 2.73 +0.2, 2.73 +0.2 );--
setScaleKey( spep_0 -3 + 158, 1, 3.59 +s1, 3.59 +s1 );
setScaleKey( spep_0 -3 + 160, 1, 3.59 +s1, 3.59 +s1 );
setScaleKey( spep_0 -3 + 161, 1, 3.59 +s1, 3.59 +s1 );
setScaleKey( spep_0 -3 + 162, 1, 3.58 +s1, 3.58 +s1 );
setScaleKey( spep_0 -3 + 163, 1, 3.58 +s1, 3.58 +s1 );
setScaleKey( spep_0 -3 + 164, 1, 3.57 +s1, 3.57 +s1 );
setScaleKey( spep_0 -3 + 165, 1, 3.57 +s1, 3.57 +s1 );
setScaleKey( spep_0 -3 + 166, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 167, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 168, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 169, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 170, 1, 3.55 +s1, 3.55 +s1 );
setScaleKey( spep_0 -3 + 171, 1, 3.55 +s1, 3.55 +s1 );
setScaleKey( spep_0 -3 + 172, 1, 3.54 +s1, 3.54 +s1 );
setScaleKey( spep_0 -3 + 173, 1, 3.54 +s1, 3.54 +s1 );
setScaleKey( spep_0 -3 + 174, 1, 3.54 +s1, 3.54 +s1 );

setRotateKey( spep_0 -3 + 153, 1, 0 );--
setRotateKey( spep_0 -3 + 154, 1, 0 );
setRotateKey( spep_0 -3 + 157, 1, 0 );--
setRotateKey( spep_0 -3 + 158, 1, -39.9 );
setRotateKey( spep_0 -3 + 159, 1, -39.9 );
setRotateKey( spep_0 -3 + 160, 1, -39.3 );
setRotateKey( spep_0 -3 + 161, 1, -39.3 );
setRotateKey( spep_0 -3 + 162, 1, -38.6 );
setRotateKey( spep_0 -3 + 163, 1, -38.6 );
setRotateKey( spep_0 -3 + 164, 1, -37.9 );
setRotateKey( spep_0 -3 + 165, 1, -37.9 );
setRotateKey( spep_0 -3 + 166, 1, -37.3 );
setRotateKey( spep_0 -3 + 167, 1, -37.3 );
setRotateKey( spep_0 -3 + 168, 1, -36.6 );
setRotateKey( spep_0 -3 + 169, 1, -36.6 );
setRotateKey( spep_0 -3 + 170, 1, -35.9 );
setRotateKey( spep_0 -3 + 171, 1, -35.9 );
setRotateKey( spep_0 -3 + 172, 1, -35.3 );
setRotateKey( spep_0 -3 + 173, 1, -35.3 );
setRotateKey( spep_0 -3 + 174, 1, -35.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 186, 1, 1 );
setDisp( spep_0 -3 + 208, 1, 0 );
changeAnime( spep_0 -3 + 186, 1, 107 );

setMoveKey( spep_0 -3 + 186, 1, -35.4, 63 , 0 );
setMoveKey( spep_0 -3 + 187, 1, -35.4, 63 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -18.3, 92.8 , 0 );
setMoveKey( spep_0 -3 + 189, 1, -18.3, 92.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -21.2, 126.9 , 0 );
setMoveKey( spep_0 -3 + 191, 1, -21.2, 126.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -5, 132.7 , 0 );
setMoveKey( spep_0 -3 + 193, 1, -5, 132.7 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 76.5, 395.7 , 0 );
setMoveKey( spep_0 -3 + 195, 1, 76.5, 395.7 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 139.2, 623.2 , 0 );
setMoveKey( spep_0 -3 + 197, 1, 139.2, 623.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 201.5, 902.5 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 201.5, 902.5 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 291.4, 1264.6 , 0 );
setMoveKey( spep_0 -3 + 201, 1, 291.4, 1264.6 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 380.9, 1672.4 , 0 );
setMoveKey( spep_0 -3 + 203, 1, 380.9, 1672.4 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 503.8, 2163.1 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 503.8, 2163.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 626, 2705.6 , 0 );
setMoveKey( spep_0 -3 + 207, 1, 626, 2705.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 626, 2705.6 , 0 );

setScaleKey( spep_0 -3 + 186, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 187, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 188, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 189, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 190, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 191, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 192, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 193, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 194, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 195, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 196, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 197, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 198, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 199, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 200, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 201, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 202, 1, 5, 5 );
setScaleKey( spep_0 -3 + 203, 1, 5, 5 );
setScaleKey( spep_0 -3 + 204, 1, 6.31, 6.31 );
setScaleKey( spep_0 -3 + 205, 1, 6.31, 6.31 );
setScaleKey( spep_0 -3 + 206, 1, 7.8, 7.8 );
setScaleKey( spep_0 -3 + 208, 1, 7.8, 7.8 );

setRotateKey( spep_0 -3 + 186, 1, -48.4 );
setRotateKey( spep_0 -3 + 187, 1, -48.4 );
setRotateKey( spep_0 -3 + 188, 1, -50.4 );
setRotateKey( spep_0 -3 + 189, 1, -50.4 );
setRotateKey( spep_0 -3 + 190, 1, -51.4 );
setRotateKey( spep_0 -3 + 191, 1, -51.4 );
setRotateKey( spep_0 -3 + 192, 1, -52.1 );
setRotateKey( spep_0 -3 + 193, 1, -52.1 );
setRotateKey( spep_0 -3 + 194, 1, -62.2 );
setRotateKey( spep_0 -3 + 195, 1, -62.2 );
setRotateKey( spep_0 -3 + 196, 1, -66.5 );
setRotateKey( spep_0 -3 + 197, 1, -66.5 );
setRotateKey( spep_0 -3 + 198, 1, -72 );
setRotateKey( spep_0 -3 + 199, 1, -72 );
setRotateKey( spep_0 -3 + 200, 1, -78.8 );
setRotateKey( spep_0 -3 + 201, 1, -78.8 );
setRotateKey( spep_0 -3 + 202, 1, -86.7 );
setRotateKey( spep_0 -3 + 203, 1, -86.7 );
setRotateKey( spep_0 -3 + 204, 1, -95.9 );
setRotateKey( spep_0 -3 + 205, 1, -95.9 );
setRotateKey( spep_0 -3 + 206, 1, -106.3 );
setRotateKey( spep_0 -3 + 208, 1, -106.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 240, 1, 1 );
setDisp( spep_0 -3 + 346, 1, 0 );
changeAnime( spep_0 -3 + 240, 1, 7 );
changeAnime( spep_0 -3 + 270, 1, 6 );
changeAnime( spep_0 -3 + 316, 1, 106 );
changeAnime( spep_0 -3 + 332, 1, 8 );

setMoveKey( spep_0 -3 + 240, 1, -280.1, 454 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -272.5, 438.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -267, 427.4 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -263.6, 419.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -246.3, 387.3 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -225.8, 349.9 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -202.4, 307.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -176, 259.6 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -170.8, 239.8 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -164.9, 218.2 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -158.5, 194.7 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -151.4, 169.2 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -143.7, 142 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -135.4, 112.8 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -110.8, 110.7 , 0 );
setMoveKey( spep_0 -3 + 269, 1, -110.8, 110.7 , 0 );--
setMoveKey( spep_0 -3 + 270, 1, -136.4, 107 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -115.9, 134.3 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -121.3, 156.3 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -96.8, 151.6 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -91.9, 148.4 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -81.9, 162.6 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -85.1, 163.4 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -70.8, 169.6 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -69.7, 166 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -66.2, 176.1 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -75.1, 185.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -65.6, 182.1 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -68.4, 178 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -64.2, 181.3 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -63, 178.3 , 0 );
setMoveKey( spep_0 -3 + 300, 1, -61.9, 175.1 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -60.7, 171.8 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -59.3, 168.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, -58, 164.6 , 0 );
setMoveKey( spep_0 -3 + 308, 1, -56.6, 160.8 , 0 );
setMoveKey( spep_0 -3 + 310, 1, -55.1, 156.7 , 0 );
setMoveKey( spep_0 -3 + 312, 1, -53.6, 152.5 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -51.5, 148.1 , 0 );
setMoveKey( spep_0 -3 + 315, 1, -51.5, 148.1 , 0 );

setMoveKey( spep_0 -3 + 316, 1, 41.1, 48.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 41.5, 45.3 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 41.9, 42.5 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 42.4, 39.7 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 42.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 43.2, 34 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 43.6, 31.2 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 44, 28.3 , 0 );
setMoveKey( spep_0 -3 + 331, 1, 44, 28.3 , 0 );--
setMoveKey( spep_0 -3 + 332, 1, -80.3, 70 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -93.2, 58.1 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -99, 106.5 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -375.7, 287.8 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -579.6, 413.6 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -754.1, 511.8 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -868, 597.9 , 0 );
setMoveKey( spep_0 -3 + 346, 1, -868, 597.9 , 0 );

setScaleKey( spep_0 -3 + 240, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 242, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 244, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 246, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 248, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 250, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 252, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 254, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 256, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 258, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 260, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 264, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 266, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 268, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 269, 1, 1.1, 1.1 );--
setScaleKey( spep_0 -3 + 270, 1, 3.98, 3.98 );
setScaleKey( spep_0 -3 + 272, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 274, 1, 3.54, 3.54 );
setScaleKey( spep_0 -3 + 276, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 278, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 280, 1, 3.03, 3.03 );
setScaleKey( spep_0 -3 + 282, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 284, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 286, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 298, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 300, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 308, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 310, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 312, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 314, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 315, 1, 2.73, 2.73 );--
setScaleKey( spep_0 -3 + 316, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 318, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 320, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 331, 1, 1.77, 1.77 );--
setScaleKey( spep_0 -3 + 332, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 334, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 336, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 338, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 340, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 342, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 344, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 346, 1, 0.67, 0.67 );

setRotateKey( spep_0 -3 + 240, 1, -97.6 );
setRotateKey( spep_0 -3 + 242, 1, -97.5 );
setRotateKey( spep_0 -3 + 246, 1, -97.5 );
setRotateKey( spep_0 -3 + 248, 1, -93.2 );
setRotateKey( spep_0 -3 + 250, 1, -88.3 );
setRotateKey( spep_0 -3 + 252, 1, -82.7 );
setRotateKey( spep_0 -3 + 254, 1, -76.4 );
setRotateKey( spep_0 -3 + 256, 1, -75.9 );
setRotateKey( spep_0 -3 + 258, 1, -75.2 );
setRotateKey( spep_0 -3 + 260, 1, -74.6 );
setRotateKey( spep_0 -3 + 262, 1, -73.9 );
setRotateKey( spep_0 -3 + 264, 1, -73.1 );
setRotateKey( spep_0 -3 + 266, 1, -72.2 );
setRotateKey( spep_0 -3 + 268, 1, -71.4 );
setRotateKey( spep_0 -3 + 269, 1, -71.4 );--

setRotateKey( spep_0 -3 + 270, 1, -45.7 );
setRotateKey( spep_0 -3 + 272, 1, -44.9 );
setRotateKey( spep_0 -3 + 274, 1, -44.1 );
setRotateKey( spep_0 -3 + 276, 1, -43.4 );
setRotateKey( spep_0 -3 + 278, 1, -42.8 );
setRotateKey( spep_0 -3 + 280, 1, -42.2 );
setRotateKey( spep_0 -3 + 282, 1, -41.6 );
setRotateKey( spep_0 -3 + 284, 1, -41.2 );
setRotateKey( spep_0 -3 + 286, 1, -40.8 );
setRotateKey( spep_0 -3 + 288, 1, -40.4 );
setRotateKey( spep_0 -3 + 290, 1, -40.1 );
setRotateKey( spep_0 -3 + 292, 1, -39.9 );
setRotateKey( spep_0 -3 + 294, 1, -39.7 );
setRotateKey( spep_0 -3 + 296, 1, -39.4 );
setRotateKey( spep_0 -3 + 298, 1, -39.1 );
setRotateKey( spep_0 -3 + 300, 1, -38.8 );
setRotateKey( spep_0 -3 + 302, 1, -38.5 );
setRotateKey( spep_0 -3 + 304, 1, -38.1 );
setRotateKey( spep_0 -3 + 306, 1, -37.8 );
setRotateKey( spep_0 -3 + 308, 1, -37.4 );
setRotateKey( spep_0 -3 + 310, 1, -37 );
setRotateKey( spep_0 -3 + 312, 1, -36.6 );
setRotateKey( spep_0 -3 + 314, 1, -36.2 );
setRotateKey( spep_0 -3 + 315, 1, -36.2 );--
setRotateKey( spep_0 -3 + 316, 1, 8 );
setRotateKey( spep_0 -3 + 331, 1, 8 );--
setRotateKey( spep_0 -3 + 332, 1, 25.2 );
setRotateKey( spep_0 -3 + 334, 1, 26.4 );
setRotateKey( spep_0 -3 + 336, 1, 25.2 );
setRotateKey( spep_0 -3 + 346, 1, 25.2 );

-- ** 音 ** --
--走る音
SE016 = playSeVer2( spep_0 + 128, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE016, 158 );
SE017 = playSeVer2( spep_0 + 136, 1108, "", spep_0 + 142, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE017, 158 );
SE018 = playSeVer2( spep_0 + 142, 1108, "", spep_0 + 150, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE018, 158 );

--加速
SE019 = playSeVer2( spep_0 + 142, 1019, "",spep_0 + 162, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 862, SE071, 180 );

--ダッシュパンチ
SE020 = playSeVer2( spep_0 + 146, 1189, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 152, 1359, "",spep_0 + 192, 0, 20, -1);
SE022 = playSeVer2( spep_0 + 152, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 152, 1187, "",spep_0 + 192, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 152, SE023, 71 );

--アッパー
SE024 = playSeVer2( spep_0 + 182, 1180, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE024, 84 );
setStartTimeMs( SE024,  383 );
SE025 = playSeVer2( spep_0 + 182, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 182, 1359, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 182, 1049, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 184, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE029 = playSeVer2( spep_0 + 226, 1109, "", 0, 0, 0, -1);

--膝蹴り
SE030 = playSeVer2( spep_0 + 258, 1359, "",spep_0 + 302, 0, 22, -1);
SE031 = playSeVer2( spep_0 + 260, 1153, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);

--回転
SE033 = playSeVer2( spep_0 + 312, 1003, "", 0, 0, 0, -1);

--蹴り飛ばす
SE034 = playSeVer2( spep_0 + 320, 1123, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 322, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE035, 88 );

--瞬間移動
SE036 = playSeVer2( spep_0 + 342, 1109, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 378, 1109, "", 0, 0, 0, -1);

--画面遷移
SE038 = playSeVer2( spep_0 + 378, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE038, 79 );

--銃溜め
SE039 = playSeVer2( spep_0 + 404, 1257, "",spep_0 + 464, 0, 10, -1);
SE040 = playSeVer2( spep_0 + 404, 1356, "",spep_0 + 464, 0, 10, -1);
SE041 = playSeVer2( spep_0 + 410, 1157, "",spep_0 + 464, 0, 10, -1);
SE042 = playSeVer2( spep_0 + 410, 1254, "",spep_0 + 464, 20, 10, -1);
setSeVolumeByWorkId( spep_0 + 410, SE042, 68 );
SE043 = playSeVer2( spep_0 + 410, 1282, "",spep_0 + 464, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 410, SE043, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 454 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 454;


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

--銃発射
SE045 = playSeVer2( spep_1 + 88, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE045, 71 );
SE046 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 90, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE047, 83 );
SE048 = playSeVer2( spep_1 + 90, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE048, 89 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射～敵に迫る(100F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_2 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --発射～敵に迫る：手前 ef_003
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 100, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 100 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 100, shot_f, 0 );

shot_b = entryEffectLife( spep_2 + 0, SP_04, 100, 0x80, -1, 0, 0, 0 );  --発射～敵に迫る：奥   ef_004
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 100, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 100 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 100, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 68, 1, 1 );
--setDisp( spep_2 -3 + 103, 1, 0 );
changeAnime( spep_2 -3 + 68, 1, 8 );

setMoveKey( spep_2 -3 + 68, 1, -443.9, -82.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -406.4, -74.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -373.3, -67 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -344.6, -60.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -320.4, -55.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -300.5, -50.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -285.1, -47.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -270.2, -44.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -254.8, -41.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -239.1, -37.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -223.1, -34.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -206.6, -30.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -189.8, -27.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -179.5, -25.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -169, -22.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -158.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -147.8, -18.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -136.5, -15.7 , 0 );
--setMoveKey( spep_2 -3 + 103, 1, -136.5, -15.7 , 0 );

setScaleKey( spep_2 -3 + 68, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 70, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 72, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 74, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 76, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 78, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 80, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 82, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 84, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 86, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 90, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 92, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 94, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 98, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 100, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 102, 1, 1.71, 1.71 );
--setScaleKey( spep_2 -3 + 103, 1, 1.71, 1.71 );

setRotateKey( spep_2 -3 + 68, 1, -30.5 );
setRotateKey( spep_2 -3 + 102, 1, -30.5 );
--setRotateKey( spep_2 -3 + 103, 1, -30.5 );

-- ** 音 ** --
--ビーム飛んでいく
SE049 = playSeVer2( spep_2 + 16, 1121, "",spep_2 + 112, 0, 20, -1);

--爆発
SE050 = playSeVer2( spep_2 + 86, 1023, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 86, SE050, 89 );
SE051 = playSeVer2( spep_2 + 92, 1024, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 92, SE051, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

finish_b = entryEffectLife( spep_3 + 0, SP_05, 112, 0x80, -1, 0, 0, 0 );  --汎用ラスト用固定背景 ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--ガラス割れる
SE052 = playSeVer2( spep_3 + 8, 1188, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_3 + 8, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始～銃構えまで(454F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 454, 0x100, -1, 0, 0, 0 );  --開始～銃構えまで：手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 454, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 454, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 454, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 454 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 454, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 454, 0x80, -1, 0, 0, 0 );  --開始～銃構えまで：奥   ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 454, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 454, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 454, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 454 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 454, first_b, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 124, 1, 1 );
setDisp( spep_0 -3 + 174, 1, 0 );
changeAnime( spep_0 -3 + 124, 1, 101 );
changeAnime( spep_0 -3 + 154, 1, 104 );
changeAnime( spep_0 -3 + 158, 1, 106 );

setMoveKey( spep_0 -3 + 124, 1, 242.8, -110.1 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 242.8, -110.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 241.8, -109.8 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 241.8, -109.8 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 240.8, -109.5 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 240.8, -109.5 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_0 -3 + 131, 1, 239.9, -109.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 238.9, -108.8 , 0 );
setMoveKey( spep_0 -3 + 133, 1, 238.9, -108.8 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 237.9, -108.5 , 0 );
setMoveKey( spep_0 -3 + 135, 1, 237.9, -108.5 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 236.9, -108.1 , 0 );
setMoveKey( spep_0 -3 + 137, 1, 236.9, -108.1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 235.9, -107.8 , 0 );
setMoveKey( spep_0 -3 + 139, 1, 235.9, -107.8 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 235, -107.5 , 0 );
setMoveKey( spep_0 -3 + 141, 1, 235, -107.5 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 234, -107.1 , 0 );

setScaleKey( spep_0 -3 + 124, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 125, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 126, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 127, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 128, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 132, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 134, 1, 0.21, 0.21 );

setRotateKey( spep_0 -3 + 124, 1, 0 );

-- ** 音 ** --
--空気音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 180, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 26 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--走る音
SE003 = playSeVer2( spep_0 + 18, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 158 );
SE004 = playSeVer2( spep_0 + 18, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 158 );
SE005 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 158 );
SE006 = playSeVer2( spep_0 + 40, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 158 );
SE007 = playSeVer2( spep_0 + 60, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 158 );
SE008 = playSeVer2( spep_0 + 60, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 158 );
SE009 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 158 );
SE011 = playSeVer2( spep_0 + 94, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE011, 158 );
SE012 = playSeVer2( spep_0 + 104, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE012, 158 );
SE014 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE014, 158 );
SE015 = playSeVer2( spep_0 + 120, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE015, 158 );

--加速
SE010 = playSeVer2( spep_0 + 78, 1019, "", 0, 32, 0, -1);
SE013 = playSeVer2( spep_0 + 104, 1167, "",spep_0 + 166, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 104, SE013, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 930 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 234, -107.1 , 0 );
    setMoveKey( SP_dodge + 1, 1, 233, -106.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 233, -106.8 , 0 );
    setMoveKey( SP_dodge + 3, 1, 230.4, -108 , 0 );
    setMoveKey( SP_dodge + 4, 1, 230.4, -108 , 0 );
    setMoveKey( SP_dodge + 5, 1, 230.8, -116 , 0 );
    setMoveKey( SP_dodge + 6, 1, 230.8, -116 , 0 );
    setMoveKey( SP_dodge + 7, 1, 239.7, -136.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 239.7, -136.9 , 0 );
    setMoveKey( SP_dodge + 9, 1, 234.1, -113.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 234.1, -113.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 1, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 2, 1, 0.21, 0.21 );
    setScaleKey( SP_dodge + 3, 1, 0.33 +0.1, 0.33 +0.1 );
    setScaleKey( SP_dodge + 4, 1, 0.33 +0.1, 0.33 +0.1 );
    setScaleKey( SP_dodge + 5, 1, 0.49 +0.1, 0.49 +0.1 );
    setScaleKey( SP_dodge + 6, 1, 0.49 +0.1, 0.49 +0.1 );
    setScaleKey( SP_dodge + 7, 1, 0.6 +0.15, 0.6 +0.15 );
    setScaleKey( SP_dodge + 8, 1, 0.6 +0.15, 0.6 +0.15 );
    setScaleKey( SP_dodge + 9, 1, 1.1 +0.25, 1.1 +0.25 );
    setScaleKey( SP_dodge + 10, 1, 1.1 +0.25, 1.1 +0.25 );--

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

setMoveKey( spep_0 -3 + 143, 1, 234, -107.1 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 233, -106.8 , 0 );
setMoveKey( spep_0 -3 + 145, 1, 233, -106.8 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 230.4, -108 , 0 );
setMoveKey( spep_0 -3 + 147, 1, 230.4, -108 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 230.8, -116 , 0 );
setMoveKey( spep_0 -3 + 149, 1, 230.8, -116 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 239.7, -136.9 , 0 );
setMoveKey( spep_0 -3 + 151, 1, 239.7, -136.9 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 234.1, -113.2 , 0 );
setMoveKey( spep_0 -3 + 153, 1, 234.1, -113.2 , 0 );--
setMoveKey( spep_0 -3 + 154, 1, 239.6, -95.4 , 0 );
setMoveKey( spep_0 -3 + 155, 1, 239.6, -95.4 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 200.5, -114.1 , 0 );
setMoveKey( spep_0 -3 + 157, 1, 200.5, -114.1 , 0 );--
setMoveKey( spep_0 -3 + 158, 1, 46.8, -177.1 , 0 );
setMoveKey( spep_0 -3 + 159, 1, 46.8, -177.1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 67.7, -157.9 , 0 );
setMoveKey( spep_0 -3 + 161, 1, 67.7, -157.9 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 57.6, -141.8 , 0 );
setMoveKey( spep_0 -3 + 163, 1, 57.6, -141.8 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 78.4, -156.6 , 0 );
setMoveKey( spep_0 -3 + 165, 1, 78.4, -156.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 80.7, -165.3 , 0 );
setMoveKey( spep_0 -3 + 167, 1, 80.7, -165.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 89.2, -155.4 , 0 );
setMoveKey( spep_0 -3 + 169, 1, 89.2, -155.4 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 79.1, -164 , 0 );
setMoveKey( spep_0 -3 + 171, 1, 79.1, -164 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 99.9, -154.1 , 0 );
setMoveKey( spep_0 -3 + 173, 1, 99.9, -154.1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 99.9, -154.1 , 0 );

s1 = 0.4
setScaleKey( spep_0 -3 + 144, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 145, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 146, 1, 0.33 +0.1, 0.33 +0.1 );
setScaleKey( spep_0 -3 + 147, 1, 0.33 +0.1, 0.33 +0.1 );
setScaleKey( spep_0 -3 + 148, 1, 0.49 +0.1, 0.49 +0.1 );
setScaleKey( spep_0 -3 + 149, 1, 0.49 +0.1, 0.49 +0.1 );
setScaleKey( spep_0 -3 + 150, 1, 0.6 +0.15, 0.6 +0.15 );
setScaleKey( spep_0 -3 + 151, 1, 0.6 +0.15, 0.6 +0.15 );
setScaleKey( spep_0 -3 + 152, 1, 1.1 +0.25, 1.1 +0.25 );
setScaleKey( spep_0 -3 + 153, 1, 1.1 +0.25, 1.1 +0.25 );--
setScaleKey( spep_0 -3 + 154, 1, 1.59 +0.2, 1.59 +0.2 );
setScaleKey( spep_0 -3 + 155, 1, 1.59 +0.2, 1.59 +0.2 );
setScaleKey( spep_0 -3 + 156, 1, 2.73 +0.2, 2.73 +0.2 );
setScaleKey( spep_0 -3 + 157, 1, 2.73 +0.2, 2.73 +0.2 );--
setScaleKey( spep_0 -3 + 158, 1, 3.59 +s1, 3.59 +s1 );
setScaleKey( spep_0 -3 + 160, 1, 3.59 +s1, 3.59 +s1 );
setScaleKey( spep_0 -3 + 161, 1, 3.59 +s1, 3.59 +s1 );
setScaleKey( spep_0 -3 + 162, 1, 3.58 +s1, 3.58 +s1 );
setScaleKey( spep_0 -3 + 163, 1, 3.58 +s1, 3.58 +s1 );
setScaleKey( spep_0 -3 + 164, 1, 3.57 +s1, 3.57 +s1 );
setScaleKey( spep_0 -3 + 165, 1, 3.57 +s1, 3.57 +s1 );
setScaleKey( spep_0 -3 + 166, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 167, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 168, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 169, 1, 3.56 +s1, 3.56 +s1 );
setScaleKey( spep_0 -3 + 170, 1, 3.55 +s1, 3.55 +s1 );
setScaleKey( spep_0 -3 + 171, 1, 3.55 +s1, 3.55 +s1 );
setScaleKey( spep_0 -3 + 172, 1, 3.54 +s1, 3.54 +s1 );
setScaleKey( spep_0 -3 + 173, 1, 3.54 +s1, 3.54 +s1 );
setScaleKey( spep_0 -3 + 174, 1, 3.54 +s1, 3.54 +s1 );

setRotateKey( spep_0 -3 + 153, 1, 0 );--
setRotateKey( spep_0 -3 + 154, 1, 0 );
setRotateKey( spep_0 -3 + 157, 1, 0 );--
setRotateKey( spep_0 -3 + 158, 1, -39.9 );
setRotateKey( spep_0 -3 + 159, 1, -39.9 );
setRotateKey( spep_0 -3 + 160, 1, -39.3 );
setRotateKey( spep_0 -3 + 161, 1, -39.3 );
setRotateKey( spep_0 -3 + 162, 1, -38.6 );
setRotateKey( spep_0 -3 + 163, 1, -38.6 );
setRotateKey( spep_0 -3 + 164, 1, -37.9 );
setRotateKey( spep_0 -3 + 165, 1, -37.9 );
setRotateKey( spep_0 -3 + 166, 1, -37.3 );
setRotateKey( spep_0 -3 + 167, 1, -37.3 );
setRotateKey( spep_0 -3 + 168, 1, -36.6 );
setRotateKey( spep_0 -3 + 169, 1, -36.6 );
setRotateKey( spep_0 -3 + 170, 1, -35.9 );
setRotateKey( spep_0 -3 + 171, 1, -35.9 );
setRotateKey( spep_0 -3 + 172, 1, -35.3 );
setRotateKey( spep_0 -3 + 173, 1, -35.3 );
setRotateKey( spep_0 -3 + 174, 1, -35.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 186, 1, 1 );
setDisp( spep_0 -3 + 208, 1, 0 );
changeAnime( spep_0 -3 + 186, 1, 107 );

setMoveKey( spep_0 -3 + 186, 1, -35.4, 63 , 0 );
setMoveKey( spep_0 -3 + 187, 1, -35.4, 63 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -18.3, 92.8 , 0 );
setMoveKey( spep_0 -3 + 189, 1, -18.3, 92.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -21.2, 126.9 , 0 );
setMoveKey( spep_0 -3 + 191, 1, -21.2, 126.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -5, 132.7 , 0 );
setMoveKey( spep_0 -3 + 193, 1, -5, 132.7 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 76.5, 395.7 , 0 );
setMoveKey( spep_0 -3 + 195, 1, 76.5, 395.7 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 139.2, 623.2 , 0 );
setMoveKey( spep_0 -3 + 197, 1, 139.2, 623.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 201.5, 902.5 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 201.5, 902.5 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 291.4, 1264.6 , 0 );
setMoveKey( spep_0 -3 + 201, 1, 291.4, 1264.6 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 380.9, 1672.4 , 0 );
setMoveKey( spep_0 -3 + 203, 1, 380.9, 1672.4 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 503.8, 2163.1 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 503.8, 2163.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 626, 2705.6 , 0 );
setMoveKey( spep_0 -3 + 207, 1, 626, 2705.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 626, 2705.6 , 0 );

setScaleKey( spep_0 -3 + 186, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 187, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 188, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 189, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 190, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 191, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 192, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 193, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 194, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 195, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 196, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 197, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 198, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 199, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 200, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 201, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 202, 1, 5, 5 );
setScaleKey( spep_0 -3 + 203, 1, 5, 5 );
setScaleKey( spep_0 -3 + 204, 1, 6.31, 6.31 );
setScaleKey( spep_0 -3 + 205, 1, 6.31, 6.31 );
setScaleKey( spep_0 -3 + 206, 1, 7.8, 7.8 );
setScaleKey( spep_0 -3 + 208, 1, 7.8, 7.8 );

setRotateKey( spep_0 -3 + 186, 1, -48.4 );
setRotateKey( spep_0 -3 + 187, 1, -48.4 );
setRotateKey( spep_0 -3 + 188, 1, -50.4 );
setRotateKey( spep_0 -3 + 189, 1, -50.4 );
setRotateKey( spep_0 -3 + 190, 1, -51.4 );
setRotateKey( spep_0 -3 + 191, 1, -51.4 );
setRotateKey( spep_0 -3 + 192, 1, -52.1 );
setRotateKey( spep_0 -3 + 193, 1, -52.1 );
setRotateKey( spep_0 -3 + 194, 1, -62.2 );
setRotateKey( spep_0 -3 + 195, 1, -62.2 );
setRotateKey( spep_0 -3 + 196, 1, -66.5 );
setRotateKey( spep_0 -3 + 197, 1, -66.5 );
setRotateKey( spep_0 -3 + 198, 1, -72 );
setRotateKey( spep_0 -3 + 199, 1, -72 );
setRotateKey( spep_0 -3 + 200, 1, -78.8 );
setRotateKey( spep_0 -3 + 201, 1, -78.8 );
setRotateKey( spep_0 -3 + 202, 1, -86.7 );
setRotateKey( spep_0 -3 + 203, 1, -86.7 );
setRotateKey( spep_0 -3 + 204, 1, -95.9 );
setRotateKey( spep_0 -3 + 205, 1, -95.9 );
setRotateKey( spep_0 -3 + 206, 1, -106.3 );
setRotateKey( spep_0 -3 + 208, 1, -106.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 240, 1, 1 );
setDisp( spep_0 -3 + 346, 1, 0 );
changeAnime( spep_0 -3 + 240, 1, 7 );
changeAnime( spep_0 -3 + 270, 1, 6 );
changeAnime( spep_0 -3 + 316, 1, 106 );
changeAnime( spep_0 -3 + 332, 1, 8 );

setMoveKey( spep_0 -3 + 240, 1, -280.1, 454 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -272.5, 438.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -267, 427.4 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -263.6, 419.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -246.3, 387.3 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -225.8, 349.9 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -202.4, 307.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -176, 259.6 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -170.8, 239.8 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -164.9, 218.2 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -158.5, 194.7 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -151.4, 169.2 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -143.7, 142 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -135.4, 112.8 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -110.8, 110.7 , 0 );
setMoveKey( spep_0 -3 + 269, 1, -110.8, 110.7 , 0 );--
setMoveKey( spep_0 -3 + 270, 1, -136.4, 107 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -115.9, 134.3 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -121.3, 156.3 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -96.8, 151.6 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -91.9, 148.4 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -81.9, 162.6 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -85.1, 163.4 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -70.8, 169.6 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -69.7, 166 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -66.2, 176.1 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -75.1, 185.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -65.6, 182.1 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -68.4, 178 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -64.2, 181.3 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -63, 178.3 , 0 );
setMoveKey( spep_0 -3 + 300, 1, -61.9, 175.1 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -60.7, 171.8 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -59.3, 168.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, -58, 164.6 , 0 );
setMoveKey( spep_0 -3 + 308, 1, -56.6, 160.8 , 0 );
setMoveKey( spep_0 -3 + 310, 1, -55.1, 156.7 , 0 );
setMoveKey( spep_0 -3 + 312, 1, -53.6, 152.5 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -51.5, 148.1 , 0 );
setMoveKey( spep_0 -3 + 315, 1, -51.5, 148.1 , 0 );

setMoveKey( spep_0 -3 + 316, 1, 41.1, 48.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 41.5, 45.3 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 41.9, 42.5 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 42.4, 39.7 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 42.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 43.2, 34 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 43.6, 31.2 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 44, 28.3 , 0 );
setMoveKey( spep_0 -3 + 331, 1, 44, 28.3 , 0 );--
setMoveKey( spep_0 -3 + 332, 1, -80.3, 70 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -93.2, 58.1 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -99, 106.5 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -375.7, 287.8 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -579.6, 413.6 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -754.1, 511.8 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -868, 597.9 , 0 );
setMoveKey( spep_0 -3 + 346, 1, -868, 597.9 , 0 );

setScaleKey( spep_0 -3 + 240, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 242, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 244, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 246, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 248, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 250, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 252, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 254, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 256, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 258, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 260, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 264, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 266, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 268, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 269, 1, 1.1, 1.1 );--
setScaleKey( spep_0 -3 + 270, 1, 3.98, 3.98 );
setScaleKey( spep_0 -3 + 272, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 274, 1, 3.54, 3.54 );
setScaleKey( spep_0 -3 + 276, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 278, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 280, 1, 3.03, 3.03 );
setScaleKey( spep_0 -3 + 282, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 284, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 286, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 298, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 300, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 308, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 310, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 312, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 314, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 315, 1, 2.73, 2.73 );--
setScaleKey( spep_0 -3 + 316, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 318, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 320, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 331, 1, 1.77, 1.77 );--
setScaleKey( spep_0 -3 + 332, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 334, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 336, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 338, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 340, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 342, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 344, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 346, 1, 0.67, 0.67 );

setRotateKey( spep_0 -3 + 240, 1, -97.6 );
setRotateKey( spep_0 -3 + 242, 1, -97.5 );
setRotateKey( spep_0 -3 + 246, 1, -97.5 );
setRotateKey( spep_0 -3 + 248, 1, -93.2 );
setRotateKey( spep_0 -3 + 250, 1, -88.3 );
setRotateKey( spep_0 -3 + 252, 1, -82.7 );
setRotateKey( spep_0 -3 + 254, 1, -76.4 );
setRotateKey( spep_0 -3 + 256, 1, -75.9 );
setRotateKey( spep_0 -3 + 258, 1, -75.2 );
setRotateKey( spep_0 -3 + 260, 1, -74.6 );
setRotateKey( spep_0 -3 + 262, 1, -73.9 );
setRotateKey( spep_0 -3 + 264, 1, -73.1 );
setRotateKey( spep_0 -3 + 266, 1, -72.2 );
setRotateKey( spep_0 -3 + 268, 1, -71.4 );
setRotateKey( spep_0 -3 + 269, 1, -71.4 );--

setRotateKey( spep_0 -3 + 270, 1, -45.7 );
setRotateKey( spep_0 -3 + 272, 1, -44.9 );
setRotateKey( spep_0 -3 + 274, 1, -44.1 );
setRotateKey( spep_0 -3 + 276, 1, -43.4 );
setRotateKey( spep_0 -3 + 278, 1, -42.8 );
setRotateKey( spep_0 -3 + 280, 1, -42.2 );
setRotateKey( spep_0 -3 + 282, 1, -41.6 );
setRotateKey( spep_0 -3 + 284, 1, -41.2 );
setRotateKey( spep_0 -3 + 286, 1, -40.8 );
setRotateKey( spep_0 -3 + 288, 1, -40.4 );
setRotateKey( spep_0 -3 + 290, 1, -40.1 );
setRotateKey( spep_0 -3 + 292, 1, -39.9 );
setRotateKey( spep_0 -3 + 294, 1, -39.7 );
setRotateKey( spep_0 -3 + 296, 1, -39.4 );
setRotateKey( spep_0 -3 + 298, 1, -39.1 );
setRotateKey( spep_0 -3 + 300, 1, -38.8 );
setRotateKey( spep_0 -3 + 302, 1, -38.5 );
setRotateKey( spep_0 -3 + 304, 1, -38.1 );
setRotateKey( spep_0 -3 + 306, 1, -37.8 );
setRotateKey( spep_0 -3 + 308, 1, -37.4 );
setRotateKey( spep_0 -3 + 310, 1, -37 );
setRotateKey( spep_0 -3 + 312, 1, -36.6 );
setRotateKey( spep_0 -3 + 314, 1, -36.2 );
setRotateKey( spep_0 -3 + 315, 1, -36.2 );--
setRotateKey( spep_0 -3 + 316, 1, 8 );
setRotateKey( spep_0 -3 + 331, 1, 8 );--
setRotateKey( spep_0 -3 + 332, 1, 25.2 );
setRotateKey( spep_0 -3 + 334, 1, 26.4 );
setRotateKey( spep_0 -3 + 336, 1, 25.2 );
setRotateKey( spep_0 -3 + 346, 1, 25.2 );

-- ** 音 ** --
--走る音
SE016 = playSeVer2( spep_0 + 128, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE016, 158 );
SE017 = playSeVer2( spep_0 + 136, 1108, "", spep_0 + 142, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE017, 158 );
SE018 = playSeVer2( spep_0 + 142, 1108, "", spep_0 + 150, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE018, 158 );

--加速
SE019 = playSeVer2( spep_0 + 142, 1019, "",spep_0 + 162, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 862, SE071, 180 );

--ダッシュパンチ
SE020 = playSeVer2( spep_0 + 146, 1189, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 152, 1359, "",spep_0 + 192, 0, 20, -1);
SE022 = playSeVer2( spep_0 + 152, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 152, 1187, "",spep_0 + 192, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 152, SE023, 71 );

--アッパー
SE024 = playSeVer2( spep_0 + 182, 1180, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE024, 84 );
setStartTimeMs( SE024,  383 );
SE025 = playSeVer2( spep_0 + 182, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 182, 1359, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 182, 1049, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 184, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE029 = playSeVer2( spep_0 + 226, 1109, "", 0, 0, 0, -1);

--膝蹴り
SE030 = playSeVer2( spep_0 + 258, 1359, "",spep_0 + 302, 0, 22, -1);
SE031 = playSeVer2( spep_0 + 260, 1153, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);

--回転
SE033 = playSeVer2( spep_0 + 312, 1003, "", 0, 0, 0, -1);

--蹴り飛ばす
SE034 = playSeVer2( spep_0 + 320, 1123, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 322, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE035, 88 );

--瞬間移動
SE036 = playSeVer2( spep_0 + 342, 1109, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 378, 1109, "", 0, 0, 0, -1);

--画面遷移
SE038 = playSeVer2( spep_0 + 378, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE038, 79 );

--銃溜め
SE039 = playSeVer2( spep_0 + 404, 1257, "",spep_0 + 464, 0, 10, -1);
SE040 = playSeVer2( spep_0 + 404, 1356, "",spep_0 + 464, 0, 10, -1);
SE041 = playSeVer2( spep_0 + 410, 1157, "",spep_0 + 464, 0, 10, -1);
SE042 = playSeVer2( spep_0 + 410, 1254, "",spep_0 + 464, 20, 10, -1);
setSeVolumeByWorkId( spep_0 + 410, SE042, 68 );
SE043 = playSeVer2( spep_0 + 410, 1282, "",spep_0 + 464, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 410, SE043, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 454 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 454;


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

--銃発射
SE045 = playSeVer2( spep_1 + 88, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE045, 71 );
SE046 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 90, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE047, 83 );
SE048 = playSeVer2( spep_1 + 90, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE048, 89 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射～敵に迫る(100F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_2 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --発射～敵に迫る：手前 ef_003
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, shot_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 100, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 100 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 100, shot_f, 0 );

shot_b = entryEffectLife( spep_2 + 0, SP_04, 100, 0x80, -1, 0, 0, 0 );  --発射～敵に迫る：奥   ef_004
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, shot_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 100, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 100 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 100, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 68, 1, 1 );
--setDisp( spep_2 -3 + 103, 1, 0 );
changeAnime( spep_2 -3 + 68, 1, 108 );

setMoveKey( spep_2 -3 + 68, 1, 443.9, -82.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 406.4, -74.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 373.3, -67 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 344.6, -60.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 320.4, -55.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 300.5, -50.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 285.1, -47.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 270.2, -44.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 254.8, -41.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 239.1, -37.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 223.1, -34.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 206.6, -30.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 189.8, -27.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 179.5, -25.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 169, -22.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 158.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 147.8, -18.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 136.5, -15.7 , 0 );
--setMoveKey( spep_2 -3 + 103, 1, -136.5, -15.7 , 0 );

setScaleKey( spep_2 -3 + 68, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 70, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 72, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 74, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 76, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 78, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 80, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 82, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 84, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 86, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 90, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 92, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 94, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 98, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 100, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 102, 1, 1.71, 1.71 );
--setScaleKey( spep_2 -3 + 103, 1, 1.71, 1.71 );

setRotateKey( spep_2 -3 + 68, 1, 30.5 );
setRotateKey( spep_2 -3 + 102, 1, 30.5 );
--setRotateKey( spep_2 -3 + 103, 1, -30.5 );

-- ** 音 ** --
--ビーム飛んでいく
SE049 = playSeVer2( spep_2 + 16, 1121, "",spep_2 + 112, 0, 20, -1);

--爆発
SE050 = playSeVer2( spep_2 + 86, 1023, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 86, SE050, 89 );
SE051 = playSeVer2( spep_2 + 92, 1024, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 92, SE051, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

finish_b = entryEffectLife( spep_3 + 0, SP_05, 112, 0x80, -1, 0, 0, 0 );  --汎用ラスト用固定背景 ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--ガラス割れる
SE052 = playSeVer2( spep_3 + 8, 1188, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_3 + 8, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム


end