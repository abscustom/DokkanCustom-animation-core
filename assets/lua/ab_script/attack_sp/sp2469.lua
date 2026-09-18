--1025510:ガンマ1号_必殺技：ガンマ・ブラスター
--sp_effect_a2_00191
--sp2469

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
SP_01 = 160780; --開始～銃構えまで：手前 ef_001
SP_02 = 160781; --開始～銃構えまで：奥 ef_002
SP_03 = 160782; --発射～ラストまで：手前 ef_003
SP_04 = 160783; --発射～ラストまで：奥 ef_004

--敵側
SP_01r = 160784; --敵用：開始～銃構えまで：手前 ef_001r
SP_02r = 160785; --敵用：開始～銃構えまで：奥 ef_002r


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
-- 開始～銃構えまで(930F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 930, 0x100, -1, 0, 0, 0 );  --開始～銃構えまで：手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 930, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 930, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 930, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 930 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 930, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 930, 0x80, -1, 0, 0, 0 );  --開始～銃構えまで：奥 ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 930, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 930, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 930, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 930 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 930, first_b, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
--敵の動き1
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
entryFadeBg( spep_0 + 0, 0, 930 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

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
--敵の動き2
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
--敵の動き3
setDisp( spep_0 -3 + 224, 1, 1 );
setDisp( spep_0 -3 + 350, 1, 0 );
changeAnime( spep_0 -3 + 224, 1, 106 );
changeAnime( spep_0 -3 + 246, 1, 108 );
changeAnime( spep_0 -3 + 268, 1, 106 );
changeAnime( spep_0 -3 + 312, 1, 108 );
changeAnime( spep_0 -3 + 322, 1, 105 );

setMoveKey( spep_0 -3 + 224, 1, -545.3, -217.1 , 0 );
setMoveKey( spep_0 -3 + 225, 1, -545.3, -217.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -395.6, -150.6 , 0 );
setMoveKey( spep_0 -3 + 227, 1, -395.6, -150.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -245.8, -84.1 , 0 );
setMoveKey( spep_0 -3 + 229, 1, -245.8, -84.1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -96, -17.5 , 0 );
setMoveKey( spep_0 -3 + 231, 1, -96, -17.5 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 53.8, 49 , 0 );
setMoveKey( spep_0 -3 + 233, 1, 53.8, 49 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 59.1, 52.3 , 0 );
setMoveKey( spep_0 -3 + 235, 1, 59.1, 52.3 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 64.4, 55.7 , 0 );
setMoveKey( spep_0 -3 + 237, 1, 64.4, 55.7 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 69.6, 59 , 0 );
setMoveKey( spep_0 -3 + 239, 1, 69.6, 59 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 74.9, 62.4 , 0 );
setMoveKey( spep_0 -3 + 241, 1, 74.9, 62.4 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 80.2, 65.7 , 0 );
setMoveKey( spep_0 -3 + 243, 1, 80.2, 65.7 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 85.5, 69.1 , 0 );
setMoveKey( spep_0 -3 + 245, 1, 85.5, 69.1 , 0 );--
setMoveKey( spep_0 -3 + 246, 1, 125.8, 75.3 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 157.2, 93.4 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 151.3, 108.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 164, 98.2 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 161.2, 94.5 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 170.8, 103.1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 167.9, 99.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 177.5, 107.9 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 179.2, 111.4 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 180.9, 115 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 182.5, 118.5 , 0 );
setMoveKey( spep_0 -3 + 267, 1, 182.5, 118.5 , 0 );--
setMoveKey( spep_0 -3 + 268, 1, 127.3, 133.9 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 141.6, 171.5 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 132.1, 180.9 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 141.2, 177.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 133.1, 164.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 137, 161.1 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 121.8, 140.7 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 131, 137.2 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 123, 130.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 127.4, 117 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 125.6, 107 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 123.8, 96.9 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 119.7, 89.4 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 115.6, 81.9 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 111.5, 74.3 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 107.5, 66.8 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 103.4, 59.3 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 99.3, 51.8 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 95.3, 44.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 91.2, 36.7 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 87.1, 29.2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 83, 21.7 , 0 );
setMoveKey( spep_0 -3 + 311, 1, 83, 21.7 , 0 );--
setMoveKey( spep_0 -3 + 312, 1, 76.4, 8.3 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 113.7, 14.6 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 185.4, 5.5 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 234, -14.8 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 260.9, -28.9 , 0 );
setMoveKey( spep_0 -3 + 321, 1, 260.9, -28.9 , 0 );--
setMoveKey( spep_0 -3 + 322, 1, 267.3, -32.4 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 279, -52.2 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 296.9, -53.4 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 302.5, -57.7 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 312.6, -64.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 307.2, -71.2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 314.2, -65.5 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 308.8, -69.2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 315.8, -66.6 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 316.6, -67.2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 317.4, -67.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 318.2, -68.3 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 319, -68.8 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 319.8, -69.4 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 319.8, -69.4 , 0 );

s2 = 0.1;
s3 = 0.2;
setScaleKey( spep_0 -3 + 224, 1, 1.35 +s2, 1.35 +s2 );
setScaleKey( spep_0 -3 + 225, 1, 1.35 +s2, 1.35 +s2 );
setScaleKey( spep_0 -3 + 226, 1, 1.39 +s2, 1.39 +s2 );
setScaleKey( spep_0 -3 + 227, 1, 1.39 +s2, 1.39 +s2 );
setScaleKey( spep_0 -3 + 228, 1, 1.42 +s2, 1.42 +s2 );
setScaleKey( spep_0 -3 + 229, 1, 1.42 +s2, 1.42 +s2 );
setScaleKey( spep_0 -3 + 230, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 231, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 232, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 240, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 242, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 244, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 245, 1, 1.5 +s2, 1.5 +s2 );--
setScaleKey( spep_0 -3 + 246, 1, 1.72 +s3, 1.72 +s3 );
setScaleKey( spep_0 -3 + 248, 1, 1.71 +s3, 1.71 +s3 );
setScaleKey( spep_0 -3 + 250, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_0 -3 + 266, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_0 -3 + 267, 1, 1.7 +s3, 1.7 +s3 );--
setScaleKey( spep_0 -3 + 268, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 274, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 276, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 278, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 280, 1, 1.48 +s2, 1.48 +s2 );
setScaleKey( spep_0 -3 + 282, 1, 1.47 +s2, 1.47 +s2 );
setScaleKey( spep_0 -3 + 284, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 286, 1, 1.43 +s2, 1.43 +s2 );
setScaleKey( spep_0 -3 + 288, 1, 1.42 +s2, 1.42 +s2 );
setScaleKey( spep_0 -3 + 290, 1, 1.4 +s2, 1.4 +s2 );
setScaleKey( spep_0 -3 + 292, 1, 1.38 +s2, 1.38 +s2 );
setScaleKey( spep_0 -3 + 294, 1, 1.36 +s2, 1.36 +s2 );
setScaleKey( spep_0 -3 + 296, 1, 1.35 +s2, 1.34 +s2 );
setScaleKey( spep_0 -3 + 298, 1, 1.33 +s2, 1.32 +s2 );
setScaleKey( spep_0 -3 + 300, 1, 1.31 +s2, 1.3 +s2 );
setScaleKey( spep_0 -3 + 302, 1, 1.29 +s2, 1.28 +s2 );
setScaleKey( spep_0 -3 + 304, 1, 1.27 +s2, 1.26 +s2 );
setScaleKey( spep_0 -3 + 306, 1, 1.26 +s2, 1.24 +s2 );
setScaleKey( spep_0 -3 + 308, 1, 1.24 +s2, 1.22 +s2 );
setScaleKey( spep_0 -3 + 310, 1, 1.22 +s2, 1.2 +s2 );
setScaleKey( spep_0 -3 + 311, 1, 1.22 +s2, 1.2 +s2 );--

setScaleKey( spep_0 -3 + 312, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 314, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 316, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 318, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 320, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 321, 1, 0.45, 0.45 );--
setScaleKey( spep_0 -3 + 322, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 324, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 326, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 328, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 330, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 332, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 334, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 336, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 338, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 340, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 342, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 344, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 346, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 348, 1, 0.04, 0.04 );
setScaleKey( spep_0 -3 + 350, 1, 0.04, 0.04 );

setRotateKey( spep_0 -3 + 224, 1, -21.6 );
setRotateKey( spep_0 -3 + 245, 1, -21.6 );--
setRotateKey( spep_0 -3 + 246, 1, -11.2 );
setRotateKey( spep_0 -3 + 248, 1, -11.7 );
setRotateKey( spep_0 -3 + 250, 1, -11.3 );
setRotateKey( spep_0 -3 + 252, 1, -10.9 );
setRotateKey( spep_0 -3 + 254, 1, -10.5 );
setRotateKey( spep_0 -3 + 256, 1, -10.1 );
setRotateKey( spep_0 -3 + 258, 1, -9.7 );
setRotateKey( spep_0 -3 + 260, 1, -9.3 );
setRotateKey( spep_0 -3 + 262, 1, -8.6 );
setRotateKey( spep_0 -3 + 264, 1, -7.9 );
setRotateKey( spep_0 -3 + 266, 1, -7.3 );
setRotateKey( spep_0 -3 + 267, 1, -7.3 );--
setRotateKey( spep_0 -3 + 268, 1, -36.3 );
setRotateKey( spep_0 -3 + 270, 1, -24.3 );
setRotateKey( spep_0 -3 + 272, 1, -21.3 );
setRotateKey( spep_0 -3 + 274, 1, -18.3 );
setRotateKey( spep_0 -3 + 276, 1, -18.1 );
setRotateKey( spep_0 -3 + 278, 1, -17.8 );
setRotateKey( spep_0 -3 + 280, 1, -17.4 );
setRotateKey( spep_0 -3 + 282, 1, -17 );
setRotateKey( spep_0 -3 + 284, 1, -16.1 );
setRotateKey( spep_0 -3 + 286, 1, -15.3 );
setRotateKey( spep_0 -3 + 288, 1, -14.4 );
setRotateKey( spep_0 -3 + 290, 1, -13.5 );
setRotateKey( spep_0 -3 + 292, 1, -12.2 );
setRotateKey( spep_0 -3 + 294, 1, -10.8 );
setRotateKey( spep_0 -3 + 296, 1, -9.5 );
setRotateKey( spep_0 -3 + 298, 1, -8.1 );
setRotateKey( spep_0 -3 + 300, 1, -6.8 );
setRotateKey( spep_0 -3 + 302, 1, -5.4 );
setRotateKey( spep_0 -3 + 304, 1, -4.1 );
setRotateKey( spep_0 -3 + 306, 1, -2.7 );
setRotateKey( spep_0 -3 + 308, 1, -1.4 );
setRotateKey( spep_0 -3 + 310, 1, 0 );
setRotateKey( spep_0 -3 + 311, 1, 0 );--
setRotateKey( spep_0 -3 + 312, 1, 18 );
setRotateKey( spep_0 -3 + 321, 1, 18 );--
setRotateKey( spep_0 -3 + 322, 1, 49 );
setRotateKey( spep_0 -3 + 350, 1, 49 );

-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 -3 + 378, 1, 1 );
setDisp( spep_0 -3 + 532, 1, 0 );
changeAnime( spep_0 -3 + 378, 1, 7 );
changeAnime( spep_0 -3 + 408, 1, 6 );
changeAnime( spep_0 -3 + 502, 1, 106 );
changeAnime( spep_0 -3 + 518, 1, 8 );

setMoveKey( spep_0 -3 + 378, 1, -280.1, 454 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -272.5, 438.9 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -267, 427.4 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -263.6, 419.4 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -246.3, 387.3 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -225.8, 349.9 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -202.4, 307.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -176, 259.6 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -170.8, 239.8 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -164.9, 218.2 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -158.5, 194.7 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -151.4, 169.2 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -143.7, 142 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -135.4, 112.8 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -110.8, 110.7 , 0 );
setMoveKey( spep_0 -3 + 407, 1, -110.8, 110.7 , 0 );--
setMoveKey( spep_0 -3 + 408, 1, -134.9, 120.7 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -114.6, 146.2 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -120.2, 166.7 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -95.8, 160.6 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -91.1, 156.2 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -81.1, 169.3 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -84.5, 169.1 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -70.3, 174.4 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -69.3, 169.9 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -65.8, 179.5 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -74.9, 188.3 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -65.3, 184.2 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -67.3, 175 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -63.1, 178.3 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -66.9, 173.5 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -65, 175.2 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -66.7, 174.2 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -69.1, 173.5 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -72, 173.1 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -75.5, 173 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -79.5, 173.3 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -84.1, 173.9 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -89.3, 174.7 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -94.9, 176 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -101.2, 177.5 , 0 );
setMoveKey( spep_0 -3 + 458, 1, -108, 179.4 , 0 );
setMoveKey( spep_0 -3 + 460, 1, -115.5, 181.5 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -123.5, 184.1 , 0 );
setMoveKey( spep_0 -3 + 463, 1, -123.5, 184.1 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 402.9, -262.1 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 379.9, -275.8 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 356.9, -289.6 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 333.8, -303.3 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 241.8, -430.3 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 238.9, -435.8 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 168.8, -400.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 210, -478.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 195.7, -492.1 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 205, -489.4 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 191.4, -504.1 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 200, -500.1 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 184, -487 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 195, -510.8 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 184.6, -524.8 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 190.1, -521.5 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 180.2, -534.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 180.2, -539.5 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 172.8, -542.4 , 0 );
setMoveKey( spep_0 -3 + 501, 1, 172.8, -542.4 , 0 );--
setMoveKey( spep_0 -3 + 502, 1, 38.7, 40.8 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 41.5, 45.3 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 41.9, 42.5 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 42.4, 39.7 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 42.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 43.2, 34 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 43.6, 31.2 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 44, 28.3 , 0 );
setMoveKey( spep_0 -3 + 517, 1, 44, 28.3 , 0 );--
setMoveKey( spep_0 -3 + 518, 1, -89.6, 54.5 , 0 );
setMoveKey( spep_0 -3 + 520, 1, -83.9, 73.6 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -111.4, 118.9 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -363.3, 275.4 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -585.8, 404.3 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -747.9, 521.1 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -877.3, 594.8 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -877.3, 594.8 , 0 );

setScaleKey( spep_0 -3 + 378, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 380, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 382, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 384, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 386, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 388, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 390, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 392, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 394, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 396, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 398, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 400, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 402, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 404, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 406, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 407, 1, 1.1, 1.1 );--
setScaleKey( spep_0 -3 + 408, 1, 3.98, 3.98 );
setScaleKey( spep_0 -3 + 410, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 412, 1, 3.54, 3.54 );
setScaleKey( spep_0 -3 + 414, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 416, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 418, 1, 3.03, 3.03 );
setScaleKey( spep_0 -3 + 420, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 422, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 424, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 436, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 438, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 446, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 448, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 450, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 452, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 456, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 458, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 460, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 462, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 463, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 464, 1, 9.38, 9.38 );
setScaleKey( spep_0 -3 + 501, 1, 9.38, 9.38 );--
setScaleKey( spep_0 -3 + 502, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 504, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 506, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 517, 1, 1.77, 1.77 );--
setScaleKey( spep_0 -3 + 518, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 520, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 522, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 524, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 526, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 528, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 530, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 532, 1, 0.67, 0.67 );

setRotateKey( spep_0 -3 + 378, 1, -97.6 );
setRotateKey( spep_0 -3 + 380, 1, -97.5 );
setRotateKey( spep_0 -3 + 384, 1, -97.5 );
setRotateKey( spep_0 -3 + 386, 1, -93.2 );
setRotateKey( spep_0 -3 + 388, 1, -88.3 );
setRotateKey( spep_0 -3 + 390, 1, -82.7 );
setRotateKey( spep_0 -3 + 392, 1, -76.4 );
setRotateKey( spep_0 -3 + 394, 1, -75.9 );
setRotateKey( spep_0 -3 + 396, 1, -75.2 );
setRotateKey( spep_0 -3 + 398, 1, -74.6 );
setRotateKey( spep_0 -3 + 400, 1, -73.9 );
setRotateKey( spep_0 -3 + 402, 1, -73.1 );
setRotateKey( spep_0 -3 + 404, 1, -72.2 );
setRotateKey( spep_0 -3 + 406, 1, -71.4 );
setRotateKey( spep_0 -3 + 407, 1, -71.4 );--
setRotateKey( spep_0 -3 + 408, 1, -44.9 );
setRotateKey( spep_0 -3 + 410, 1, -44.1 );
setRotateKey( spep_0 -3 + 412, 1, -43.4 );
setRotateKey( spep_0 -3 + 414, 1, -42.8 );
setRotateKey( spep_0 -3 + 416, 1, -42.2 );
setRotateKey( spep_0 -3 + 418, 1, -41.6 );
setRotateKey( spep_0 -3 + 420, 1, -41.2 );
setRotateKey( spep_0 -3 + 422, 1, -40.8 );
setRotateKey( spep_0 -3 + 424, 1, -40.4 );
setRotateKey( spep_0 -3 + 426, 1, -40.1 );
setRotateKey( spep_0 -3 + 428, 1, -39.9 );
setRotateKey( spep_0 -3 + 430, 1, -39.7 );
setRotateKey( spep_0 -3 + 432, 1, -39.4 );
setRotateKey( spep_0 -3 + 434, 1, -39.1 );
setRotateKey( spep_0 -3 + 436, 1, -38.8 );
setRotateKey( spep_0 -3 + 438, 1, -38.5 );
setRotateKey( spep_0 -3 + 440, 1, -38.1 );
setRotateKey( spep_0 -3 + 442, 1, -37.8 );
setRotateKey( spep_0 -3 + 444, 1, -37.4 );
setRotateKey( spep_0 -3 + 446, 1, -37 );
setRotateKey( spep_0 -3 + 448, 1, -36.6 );
setRotateKey( spep_0 -3 + 450, 1, -36.2 );
setRotateKey( spep_0 -3 + 452, 1, -35.7 );
setRotateKey( spep_0 -3 + 454, 1, -35.3 );
setRotateKey( spep_0 -3 + 456, 1, -34.8 );
setRotateKey( spep_0 -3 + 458, 1, -34.3 );
setRotateKey( spep_0 -3 + 460, 1, -33.8 );
setRotateKey( spep_0 -3 + 462, 1, -33.3 );
setRotateKey( spep_0 -3 + 463, 1, -33.3 );
setRotateKey( spep_0 -3 + 464, 1, 19.8 );
setRotateKey( spep_0 -3 + 466, 1, 19.6 );
setRotateKey( spep_0 -3 + 468, 1, 19.4 );
setRotateKey( spep_0 -3 + 470, 1, 19.1 );
setRotateKey( spep_0 -3 + 472, 1, 20 );
setRotateKey( spep_0 -3 + 474, 1, 20.3 );
setRotateKey( spep_0 -3 + 476, 1, 20.5 );
setRotateKey( spep_0 -3 + 478, 1, 19.9 );
setRotateKey( spep_0 -3 + 480, 1, 19.2 );
setRotateKey( spep_0 -3 + 482, 1, 18.6 );
setRotateKey( spep_0 -3 + 484, 1, 18 );
setRotateKey( spep_0 -3 + 486, 1, 17.4 );
setRotateKey( spep_0 -3 + 488, 1, 16.8 );
setRotateKey( spep_0 -3 + 490, 1, 16.2 );
setRotateKey( spep_0 -3 + 492, 1, 15.6 );
setRotateKey( spep_0 -3 + 494, 1, 14.9 );
setRotateKey( spep_0 -3 + 496, 1, 14.3 );
setRotateKey( spep_0 -3 + 498, 1, 13.7 );
setRotateKey( spep_0 -3 + 500, 1, 13.1 );
setRotateKey( spep_0 -3 + 501, 1, 13.1 );--
setRotateKey( spep_0 -3 + 502, 1, 8 );
setRotateKey( spep_0 -3 + 517, 1, 8 );--
setRotateKey( spep_0 -3 + 518, 1, 25.2 );
setRotateKey( spep_0 -3 + 520, 1, 26.4 );
setRotateKey( spep_0 -3 + 522, 1, 25.2 );
setRotateKey( spep_0 -3 + 530, 1, 25.2 );
setRotateKey( spep_0 -3 + 532, 1, 25.2 );

-- ** 敵キャラクター ** --
--敵の動き5
setDisp( spep_0 -3 + 538, 1, 1 );
setDisp( spep_0 -3 + 658, 1, 0 );
changeAnime( spep_0 -3 + 538, 1, 105 );

setMoveKey( spep_0 -3 + 538, 1, -304.8, 190.1 , 0 );
setMoveKey( spep_0 -3 + 539, 1, -304.8, 190.1 , 0 );
setMoveKey( spep_0 -3 + 540, 1, -298.5, 189.2 , 0 );
setMoveKey( spep_0 -3 + 541, 1, -298.5, 189.2 , 0 );
setMoveKey( spep_0 -3 + 542, 1, -292.2, 188.2 , 0 );
setMoveKey( spep_0 -3 + 543, 1, -292.2, 188.2 , 0 );
setMoveKey( spep_0 -3 + 544, 1, -285.9, 187.2 , 0 );
setMoveKey( spep_0 -3 + 545, 1, -285.9, 187.2 , 0 );
setMoveKey( spep_0 -3 + 546, 1, -279.6, 186.2 , 0 );
setMoveKey( spep_0 -3 + 547, 1, -279.6, 186.2 , 0 );
setMoveKey( spep_0 -3 + 548, 1, -273.3, 185.2 , 0 );
setMoveKey( spep_0 -3 + 549, 1, -273.3, 185.2 , 0 );
setMoveKey( spep_0 -3 + 550, 1, -266.9, 184.2 , 0 );
setMoveKey( spep_0 -3 + 551, 1, -266.9, 184.2 , 0 );
setMoveKey( spep_0 -3 + 552, 1, -260.6, 183.2 , 0 );
setMoveKey( spep_0 -3 + 553, 1, -260.6, 183.2 , 0 );
setMoveKey( spep_0 -3 + 554, 1, -254.3, 182.2 , 0 );
setMoveKey( spep_0 -3 + 555, 1, -254.3, 182.2 , 0 );
setMoveKey( spep_0 -3 + 556, 1, -242.9, 177.6 , 0 );
setMoveKey( spep_0 -3 + 557, 1, -242.9, 177.6 , 0 );
setMoveKey( spep_0 -3 + 558, 1, -231.4, 173 , 0 );
setMoveKey( spep_0 -3 + 559, 1, -231.4, 173 , 0 );
setMoveKey( spep_0 -3 + 560, 1, -200.8, 160.7 , 0 );
setMoveKey( spep_0 -3 + 561, 1, -200.8, 160.7 , 0 );
setMoveKey( spep_0 -3 + 562, 1, -170.2, 148.4 , 0 );
setMoveKey( spep_0 -3 + 563, 1, -170.2, 148.4 , 0 );
setMoveKey( spep_0 -3 + 564, 1, -139.6, 136 , 0 );
setMoveKey( spep_0 -3 + 565, 1, -139.6, 136 , 0 );
setMoveKey( spep_0 -3 + 566, 1, -105.8, 93.7 , 0 );
setMoveKey( spep_0 -3 + 567, 1, -105.8, 93.7 , 0 );
setMoveKey( spep_0 -3 + 568, 1, -72.1, 51.2 , 0 );
setMoveKey( spep_0 -3 + 569, 1, -72.1, 51.2 , 0 );
setMoveKey( spep_0 -3 + 570, 1, -58.9, 49.7 , 0 );
setMoveKey( spep_0 -3 + 571, 1, -58.9, 49.7 , 0 );
setMoveKey( spep_0 -3 + 572, 1, -45.6, 48.2 , 0 );
setMoveKey( spep_0 -3 + 573, 1, -45.6, 48.2 , 0 );
setMoveKey( spep_0 -3 + 574, 1, -32.4, 46.6 , 0 );
setMoveKey( spep_0 -3 + 575, 1, -32.4, 46.6 , 0 );
setMoveKey( spep_0 -3 + 576, 1, -19.2, 45.1 , 0 );
setMoveKey( spep_0 -3 + 577, 1, -19.2, 45.1 , 0 );
setMoveKey( spep_0 -3 + 578, 1, 7.7, -34 , 0 );
setMoveKey( spep_0 -3 + 579, 1, 7.7, -34 , 0 );
setMoveKey( spep_0 -3 + 580, 1, -1.6, -46.4 , 0 );
setMoveKey( spep_0 -3 + 581, 1, -1.6, -46.4 , 0 );
setMoveKey( spep_0 -3 + 582, 1, 7.5, -33.9 , 0 );
setMoveKey( spep_0 -3 + 583, 1, 7.5, -33.9 , 0 );
setMoveKey( spep_0 -3 + 584, 1, -4.9, -24.6 , 0 );
setMoveKey( spep_0 -3 + 585, 1, -4.9, -24.6 , 0 );
setMoveKey( spep_0 -3 + 586, 1, 6.7, -10.8 , 0 );
setMoveKey( spep_0 -3 + 587, 1, 6.7, -10.8 , 0 );
setMoveKey( spep_0 -3 + 588, 1, 0.5, -20.1 , 0 );
setMoveKey( spep_0 -3 + 589, 1, 0.5, -20.1 , 0 );
setMoveKey( spep_0 -3 + 590, 1, 5.7, -9.4 , 0 );
setMoveKey( spep_0 -3 + 591, 1, 5.7, -9.4 , 0 );
setMoveKey( spep_0 -3 + 592, 1, -3.6, -15.6 , 0 );
setMoveKey( spep_0 -3 + 593, 1, -3.6, -15.6 , 0 );
setMoveKey( spep_0 -3 + 594, 1, 0, 12.9 , 0 );
setMoveKey( spep_0 -3 + 595, 1, 0, 12.9 , 0 );
setMoveKey( spep_0 -3 + 596, 1, -9.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 597, 1, -9.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 598, 1, 3.5, 1.9 , 0 );
setMoveKey( spep_0 -3 + 599, 1, 3.5, 1.9 , 0 );
setMoveKey( spep_0 -3 + 600, 1, 4.3, 2.2 , 0 );
setMoveKey( spep_0 -3 + 601, 1, 4.3, 2.2 , 0 );
setMoveKey( spep_0 -3 + 602, 1, 5, 2.6 , 0 );
setMoveKey( spep_0 -3 + 603, 1, 5, 2.6 , 0 );
setMoveKey( spep_0 -3 + 604, 1, 5.8, 2.9 , 0 );
setMoveKey( spep_0 -3 + 605, 1, 5.8, 2.9 , 0 );
setMoveKey( spep_0 -3 + 606, 1, 6.6, 3.4 , 0 );
setMoveKey( spep_0 -3 + 607, 1, 6.6, 3.4 , 0 );
setMoveKey( spep_0 -3 + 608, 1, 7.5, 3.9 , 0 );
setMoveKey( spep_0 -3 + 609, 1, 7.5, 3.9 , 0 );
setMoveKey( spep_0 -3 + 610, 1, 8.4, 4.2 , 0 );
setMoveKey( spep_0 -3 + 611, 1, 8.4, 4.2 , 0 );
setMoveKey( spep_0 -3 + 612, 1, 9.3, 4.8 , 0 );
setMoveKey( spep_0 -3 + 613, 1, 9.3, 4.8 , 0 );
setMoveKey( spep_0 -3 + 614, 1, 10.3, 5.4 , 0 );
setMoveKey( spep_0 -3 + 615, 1, 10.3, 5.4 , 0 );
setMoveKey( spep_0 -3 + 616, 1, 11.3, 6.2 , 0 );
setMoveKey( spep_0 -3 + 617, 1, 11.3, 6.2 , 0 );
setMoveKey( spep_0 -3 + 618, 1, 12.3, 6.8 , 0 );
setMoveKey( spep_0 -3 + 619, 1, 12.3, 6.8 , 0 );
setMoveKey( spep_0 -3 + 620, 1, 13.3, 7.6 , 0 );
setMoveKey( spep_0 -3 + 621, 1, 13.3, 7.6 , 0 );
setMoveKey( spep_0 -3 + 622, 1, 14.4, 8.5 , 0 );
setMoveKey( spep_0 -3 + 623, 1, 14.4, 8.5 , 0 );
setMoveKey( spep_0 -3 + 624, 1, 15.5, 9.4 , 0 );
setMoveKey( spep_0 -3 + 625, 1, 15.5, 9.4 , 0 );
setMoveKey( spep_0 -3 + 626, 1, 16.5, 10.4 , 0 );
setMoveKey( spep_0 -3 + 627, 1, 16.5, 10.4 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 17.6, 11.5 , 0 );
setMoveKey( spep_0 -3 + 629, 1, 17.6, 11.5 , 0 );
setMoveKey( spep_0 -3 + 630, 1, 18.6, 12.6 , 0 );
setMoveKey( spep_0 -3 + 631, 1, 18.6, 12.6 , 0 );
setMoveKey( spep_0 -3 + 632, 1, 19.6, 13.8 , 0 );
setMoveKey( spep_0 -3 + 633, 1, 19.6, 13.8 , 0 );
setMoveKey( spep_0 -3 + 634, 1, 20.6, 15.3 , 0 );
setMoveKey( spep_0 -3 + 635, 1, 20.6, 15.3 , 0 );
setMoveKey( spep_0 -3 + 636, 1, 21.5, 16.8 , 0 );
setMoveKey( spep_0 -3 + 637, 1, 21.5, 16.8 , 0 );
setMoveKey( spep_0 -3 + 638, 1, 22.3, 18.3 , 0 );
setMoveKey( spep_0 -3 + 639, 1, 22.3, 18.3 , 0 );
setMoveKey( spep_0 -3 + 640, 1, 23.1, 20 , 0 );
setMoveKey( spep_0 -3 + 641, 1, 23.1, 20 , 0 );
setMoveKey( spep_0 -3 + 642, 1, 23.8, 21.7 , 0 );
setMoveKey( spep_0 -3 + 643, 1, 23.8, 21.7 , 0 );
setMoveKey( spep_0 -3 + 644, 1, 24.3, 23.6 , 0 );
setMoveKey( spep_0 -3 + 645, 1, 24.3, 23.6 , 0 );
setMoveKey( spep_0 -3 + 646, 1, 24.7, 25.5 , 0 );
setMoveKey( spep_0 -3 + 647, 1, 24.7, 25.5 , 0 );
setMoveKey( spep_0 -3 + 648, 1, 25, 27.6 , 0 );
setMoveKey( spep_0 -3 + 649, 1, 25, 27.6 , 0 );
setMoveKey( spep_0 -3 + 650, 1, 25.1, 29.7 , 0 );
setMoveKey( spep_0 -3 + 651, 1, 25.1, 29.7 , 0 );
setMoveKey( spep_0 -3 + 652, 1, 25.1, 31.8 , 0 );
setMoveKey( spep_0 -3 + 653, 1, 25.1, 31.8 , 0 );
setMoveKey( spep_0 -3 + 654, 1, 24.9, 34 , 0 );
setMoveKey( spep_0 -3 + 655, 1, 24.9, 34 , 0 );
setMoveKey( spep_0 -3 + 656, 1, 24.4, 36.5 , 0 );
setMoveKey( spep_0 -3 + 657, 1, 24.4, 36.5 , 0 );
setMoveKey( spep_0 -3 + 658, 1, 24.4, 36.5 , 0 );

setScaleKey( spep_0 -3 + 538, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 539, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 540, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 541, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 542, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 543, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 544, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 545, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 546, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 547, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 548, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 549, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 550, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 551, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 552, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 553, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 554, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 555, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 556, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 557, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 558, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 559, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 560, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 561, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 562, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 563, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 564, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 565, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 566, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 567, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 568, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 569, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 570, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 571, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 572, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 573, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 574, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 575, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 576, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 577, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 578, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 580, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 581, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 582, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 584, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 585, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 586, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 588, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 589, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 590, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 592, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 593, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 594, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 596, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 597, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 598, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 610, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 611, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 612, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 624, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 625, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 626, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 636, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 637, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 638, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 644, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 645, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 646, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 652, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 653, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 654, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 658, 1, 0.05, 0.05 );

setRotateKey( spep_0 -3 + 538, 1, -70.3 );
setRotateKey( spep_0 -3 + 539, 1, -70.3 );
setRotateKey( spep_0 -3 + 540, 1, -68.7 );
setRotateKey( spep_0 -3 + 541, 1, -68.7 );
setRotateKey( spep_0 -3 + 542, 1, -67 );
setRotateKey( spep_0 -3 + 543, 1, -67 );
setRotateKey( spep_0 -3 + 544, 1, -65.4 );
setRotateKey( spep_0 -3 + 545, 1, -65.4 );
setRotateKey( spep_0 -3 + 546, 1, -63.8 );
setRotateKey( spep_0 -3 + 547, 1, -63.8 );
setRotateKey( spep_0 -3 + 548, 1, -62.2 );
setRotateKey( spep_0 -3 + 549, 1, -62.2 );
setRotateKey( spep_0 -3 + 550, 1, -60.6 );
setRotateKey( spep_0 -3 + 551, 1, -60.6 );
setRotateKey( spep_0 -3 + 552, 1, -58.9 );
setRotateKey( spep_0 -3 + 553, 1, -58.9 );
setRotateKey( spep_0 -3 + 554, 1, -57.3 );
setRotateKey( spep_0 -3 + 555, 1, -57.3 );
setRotateKey( spep_0 -3 + 556, 1, -56.3 );
setRotateKey( spep_0 -3 + 557, 1, -56.3 );
setRotateKey( spep_0 -3 + 558, 1, -55.3 );
setRotateKey( spep_0 -3 + 559, 1, -55.3 );
setRotateKey( spep_0 -3 + 560, 1, -52.5 );
setRotateKey( spep_0 -3 + 561, 1, -52.5 );
setRotateKey( spep_0 -3 + 562, 1, -49.8 );
setRotateKey( spep_0 -3 + 563, 1, -49.8 );
setRotateKey( spep_0 -3 + 564, 1, -47 );
setRotateKey( spep_0 -3 + 565, 1, -47 );
setRotateKey( spep_0 -3 + 566, 1, -40.7 );
setRotateKey( spep_0 -3 + 567, 1, -40.7 );
setRotateKey( spep_0 -3 + 568, 1, -34.3 );
setRotateKey( spep_0 -3 + 569, 1, -34.3 );
setRotateKey( spep_0 -3 + 570, 1, -31.6 );
setRotateKey( spep_0 -3 + 571, 1, -31.6 );
setRotateKey( spep_0 -3 + 572, 1, -29 );
setRotateKey( spep_0 -3 + 573, 1, -29 );
setRotateKey( spep_0 -3 + 574, 1, -26.3 );
setRotateKey( spep_0 -3 + 575, 1, -26.3 );
setRotateKey( spep_0 -3 + 576, 1, -23.6 );
setRotateKey( spep_0 -3 + 577, 1, -23.6 );
setRotateKey( spep_0 -3 + 578, 1, -32.6 );
setRotateKey( spep_0 -3 + 622, 1, -32.6 );
setRotateKey( spep_0 -3 + 623, 1, -32.6 );
setRotateKey( spep_0 -3 + 624, 1, -32.5 );
setRotateKey( spep_0 -3 + 625, 1, -32.5 );
setRotateKey( spep_0 -3 + 626, 1, -32.6 );
setRotateKey( spep_0 -3 + 627, 1, -32.6 );
setRotateKey( spep_0 -3 + 628, 1, -32.6 );
setRotateKey( spep_0 -3 + 629, 1, -32.6 );
setRotateKey( spep_0 -3 + 630, 1, -32.5 );
setRotateKey( spep_0 -3 + 631, 1, -32.5 );
setRotateKey( spep_0 -3 + 632, 1, -32.6 );
setRotateKey( spep_0 -3 + 634, 1, -32.6 );
setRotateKey( spep_0 -3 + 635, 1, -32.6 );
setRotateKey( spep_0 -3 + 636, 1, -32.5 );
setRotateKey( spep_0 -3 + 637, 1, -32.5 );
setRotateKey( spep_0 -3 + 638, 1, -32.6 );
setRotateKey( spep_0 -3 + 642, 1, -32.6 );
setRotateKey( spep_0 -3 + 643, 1, -32.6 );
setRotateKey( spep_0 -3 + 644, 1, -32.5 );
setRotateKey( spep_0 -3 + 645, 1, -32.5 );
setRotateKey( spep_0 -3 + 646, 1, -32.6 );
setRotateKey( spep_0 -3 + 647, 1, -32.6 );
setRotateKey( spep_0 -3 + 648, 1, -32.5 );
setRotateKey( spep_0 -3 + 652, 1, -32.5 );
setRotateKey( spep_0 -3 + 653, 1, -32.5 );
setRotateKey( spep_0 -3 + 654, 1, -32.6 );
setRotateKey( spep_0 -3 + 655, 1, -32.6 );
setRotateKey( spep_0 -3 + 656, 1, -32.5 );
setRotateKey( spep_0 -3 + 658, 1, -32.5 );

-- ** 敵キャラクター ** --
--敵の動き6
setDisp( spep_0 -3 + 770, 1, 1 );
--setDisp( spep_0 -3 + 794, 1, 0 );
changeAnime( spep_0 -3 + 770, 1, 8 );

setMoveKey( spep_0 -3 + 770, 1, -38.2, 3.6 , 0 );
setMoveKey( spep_0 -3 + 772, 1, -36.8, 2.2 , 0 );
setMoveKey( spep_0 -3 + 774, 1, -35.4, 0.8 , 0 );
setMoveKey( spep_0 -3 + 776, 1, -34, -0.6 , 0 );
setMoveKey( spep_0 -3 + 778, 1, -32.6, -1.9 , 0 );
setMoveKey( spep_0 -3 + 780, 1, -31.2, -3.3 , 0 );
setMoveKey( spep_0 -3 + 782, 1, -29.8, -4.7 , 0 );
setMoveKey( spep_0 -3 + 784, 1, -40.9, -24.7 , 0 );
setMoveKey( spep_0 -3 + 786, 1, -27.1, -7.5 , 0 );
setMoveKey( spep_0 -3 + 788, 1, -38.1, 0.4 , 0 );
setMoveKey( spep_0 -3 + 790, 1, -25.7, -8.9 , 0 );
setMoveKey( spep_0 -3 + 792, 1, -31.9, -15.1 , 0 );
setMoveKey( spep_0 -3 + 795, 1, -31.9, -15.1 , 0 );

setScaleKey( spep_0 -3 + 770, 1, 1, 1 );
setScaleKey( spep_0 -3 + 795, 1, 1, 1 );

setRotateKey( spep_0 -3 + 770, 1, -58 );
setRotateKey( spep_0 -3 + 795, 1, -58 );

-- ** 敵キャラクター ** --
--敵の動き7
--setDisp( spep_0 -3 + 796, 1, 1 );
setDisp( spep_0 -3 + 812, 1, 0 );
--changeAnime( spep_0 -3 + 796, 1, 8 );

setMoveKey( spep_0 -3 + 796, 1, -107.2, -40.1 , 0 );
setMoveKey( spep_0 -3 + 798, 1, -238.8, -35.6 , 0 );
setMoveKey( spep_0 -3 + 800, 1, -366.2, -30.9 , 0 );
setMoveKey( spep_0 -3 + 802, 1, -467.8, -38.4 , 0 );
setMoveKey( spep_0 -3 + 804, 1, -571.4, -42.7 , 0 );
setMoveKey( spep_0 -3 + 806, 1, -642.9, -40.6 , 0 );
setMoveKey( spep_0 -3 + 808, 1, -713.3, -47.6 , 0 );
setMoveKey( spep_0 -3 + 810, 1, -764.1, -42.1 , 0 );
setMoveKey( spep_0 -3 + 812, 1, -764.1, -42.1 , 0 );

setScaleKey( spep_0 -3 + 796, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 798, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 800, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 802, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 804, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 806, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 808, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 810, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 812, 1, 0.94, 0.94 );

setRotateKey( spep_0 -3 + 796, 1, -66.3 );
setRotateKey( spep_0 -3 + 812, 1, -66.3 );

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

--向かっていく
SE029 = playSeVer2( spep_0 + 220, 1117, "",spep_0 + 274, 0, 14, -1);

--空中パンチ
SE030 = playSeVer2( spep_0 + 246, 1359, "",spep_0 + 286, 0, 20, -1);		
SE031 = playSeVer2( spep_0 + 246, 1153, "", 0, 0, 0, -1);		

--膝蹴り
SE032 = playSeVer2( spep_0 + 262, 1001, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 264, 1359, "",spep_0 + 304, 0, 20, -1);
SE034 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE034, 83 );
SE042 = playSeVer2( spep_0 + 400, 1359, "",spep_0 + 444, 0, 22, -1);
SE043 = playSeVer2( spep_0 + 402, 1153, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 406, 1110, "", 0, 0, 0, -1);

--回転
SE035 = playSeVer2( spep_0 + 280, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE036 = playSeVer2( spep_0 + 308, 1359, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE037, 88 );
SE038 = playSeVer2( spep_0 + 308, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE038, 94 );

--敵飛んでいく
SE039 = playSeVer2( spep_0 + 332, 1121, "",spep_0 + 414, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 332, SE039, 71 );

--瞬間移動
SE040 = playSeVer2( spep_0 + 334, 1109, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 368, 1109, "", 0, 0, 0, -1);

--手刀
SE045 = playSeVer2( spep_0 + 462, 1189, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 470, 1110, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 470, 1359, "",spep_0 + 502, 0, 10, -1);
SE048 = playSeVer2( spep_0 + 470, 1010, "", 0, 0, 0, -1);

--回転
SE049 = playSeVer2( spep_0 + 504, 1003, "", 0, 0, 0, -1);

--蹴り飛ばす
SE050 = playSeVer2( spep_0 + 512, 1123, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 514, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE051, 88 );

--向かっていく
SE052 = playSeVer2( spep_0 + 540, 1116, "",spep_0 + 590, 0, 16, -1);
SE053 = playSeVer2( spep_0 + 544, 1117, "", 0, 0, 0, -1);

--頭突き
SE054 = playSeVer2( spep_0 + 574, 1359, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 574, 1187, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 574, 1387, "", 0, 0, 0, -1);

--敵と一緒に飛んでいく
SE057 = playSeVer2( spep_0 + 586, 1121, "",spep_0 + 680, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 586, SE057, 74 );
setPitch( spep_0 + 586, SE057, 200 );
setTimeStretch( SE057, 1.13, 30, 4 );
SE058 = playSeVer2( spep_0 + 586, 1183, "",spep_0 + 680, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 586, SE058, 69 );
SE059 = playSeVer2( spep_0 + 586, 1277, "", 0, 0, 0, -1);

--壁激突
SE060 = playSeVer2( spep_0 + 658, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE060, 54 );
SE061 = playSeVer2( spep_0 + 658, 1044, "",spep_0 + 720, 0, 2, -1);
SE062 = playSeVer2( spep_0 + 658, 1226, "",spep_0 + 732, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 658, SE062, 50 );

--遠く壁引きずる
SE063 = playSeVer2( spep_0 + 718, 1044, "",spep_0 + 772, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 718, SE063, 42 );

--近めで壁引きずる
SE064 = playSeVer2( spep_0 + 766, 1044, "",spep_0 + 794, 0, 8, -1);
SE065 = playSeVer2( spep_0 + 766, 1226, "",spep_0 + 792, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 766, SE065, 70 );

--敵弾き飛ばす
SE066 = playSeVer2( spep_0 + 786, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE066, 82 );
SE067 = playSeVer2( spep_0 + 786, 1359, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 786, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE068, 72 );

--翻る
SE069 = playSeVer2( spep_0 + 816, 1332, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_0 + 824, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE070, 74 );

--銃構える
SE071 = playSeVer2( spep_0 + 862, 1150, "",spep_0 + 888, 4, 10, -1);
setStartTimeMs( SE071,  417 );

--画面遷移
SE072 = playSeVer2( spep_0 + 858, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE072, 79 );

--銃溜め
SE073 = playSeVer2( spep_0 + 884, 1257, "",spep_0 + 942, 0, 10, -1);
SE074 = playSeVer2( spep_0 + 884, 1356, "",spep_0 + 942, 0, 10, 0.6);
SE075 = playSeVer2( spep_0 + 890, 1157, "",spep_0 + 942, 0, 10, -1);
SE076 = playSeVer2( spep_0 + 890, 1254, "",spep_0 + 942, 22, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 890, SE076, 68 );
SE077 = playSeVer2( spep_0 + 890, 1282, "",spep_0 + 942, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 890, SE077, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 930;


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
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
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

--銃発射
SE079 = playSeVer2( spep_1 + 88, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE079, 71 );
SE080 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_1 + 90, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE081, 83 );
SE082 = playSeVer2( spep_1 + 90, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE082, 89 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射～ラストまで(206F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --発射～ラストまで：手前 ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 206, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 206, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 206, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 206, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --発射～ラストまで：奥 ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 206, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 206, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 206, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 206, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 68, 1, 1 );
setDisp( spep_2 -3 + 90, 1, 0 );
changeAnime( spep_2 -3 + 68, 1, 8 );

setMoveKey( spep_2 -3 + 68, 1, -443.9, -82.5 , 0 );
setMoveKey( spep_2 -3 + 69, 1, -443.9, -82.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -406.4, -74.3 , 0 );
setMoveKey( spep_2 -3 + 71, 1, -406.4, -74.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -373.3, -67 , 0 );
setMoveKey( spep_2 -3 + 73, 1, -373.3, -67 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -344.6, -60.6 , 0 );
setMoveKey( spep_2 -3 + 75, 1, -344.6, -60.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -320.4, -55.3 , 0 );
setMoveKey( spep_2 -3 + 77, 1, -320.4, -55.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -300.5, -50.9 , 0 );
setMoveKey( spep_2 -3 + 79, 1, -300.5, -50.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -285.1, -47.5 , 0 );
setMoveKey( spep_2 -3 + 81, 1, -285.1, -47.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -251, -40.3 , 0 );
setMoveKey( spep_2 -3 + 83, 1, -251, -40.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -214.8, -32.6 , 0 );
setMoveKey( spep_2 -3 + 85, 1, -214.8, -32.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -176.8, -24.6 , 0 );
setMoveKey( spep_2 -3 + 87, 1, -176.8, -24.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -136.5, -15.7 , 0 );
setMoveKey( spep_2 -3 + 89, 1, -136.5, -15.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -136.5, -15.7 , 0 );

setScaleKey( spep_2 -3 + 68, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 69, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 70, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 71, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 72, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 73, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 74, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 75, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 76, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 77, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 78, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 79, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 80, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 81, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 82, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 83, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 84, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 85, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 86, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 87, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 88, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 89, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 90, 1, 1.71, 1.71 );

setRotateKey( spep_2 -3 + 68, 1, -30.5 );
setRotateKey( spep_2 -3 + 90, 1, -30.5 );

-- ** 音 ** --
--ビーム飛んでいく
SE083 = playSeVer2( spep_2 + 16, 1121, "",spep_2 + 110, 0, 20, -1);

--爆発
SE084 = playSeVer2( spep_2 + 86, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE084, 89 );
SE085 = playSeVer2( spep_2 + 90, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE085, 89 );
SE086 = playSeVer2( spep_2 + 96, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE086, 81 );
SE087 = playSeVer2( spep_2 + 96, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE087, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 206 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 +90 );
endPhase( spep_2 + 196 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始～銃構えまで(930F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 930, 0x100, -1, 0, 0, 0 );  --開始～銃構えまで：手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 930, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 930, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 930, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 930 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 930, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 930, 0x80, -1, 0, 0, 0 );  --開始～銃構えまで：奥   ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 930, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 930, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 930, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 930 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 930, first_b, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
--敵の動き1
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
--SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

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
--敵の動き2
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
--敵の動き3
setDisp( spep_0 -3 + 224, 1, 1 );
setDisp( spep_0 -3 + 350, 1, 0 );
changeAnime( spep_0 -3 + 224, 1, 106 );
changeAnime( spep_0 -3 + 246, 1, 108 );
changeAnime( spep_0 -3 + 268, 1, 106 );
changeAnime( spep_0 -3 + 312, 1, 108 );
changeAnime( spep_0 -3 + 322, 1, 105 );

setMoveKey( spep_0 -3 + 224, 1, -545.3, -217.1 , 0 );
setMoveKey( spep_0 -3 + 225, 1, -545.3, -217.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -395.6, -150.6 , 0 );
setMoveKey( spep_0 -3 + 227, 1, -395.6, -150.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -245.8, -84.1 , 0 );
setMoveKey( spep_0 -3 + 229, 1, -245.8, -84.1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -96, -17.5 , 0 );
setMoveKey( spep_0 -3 + 231, 1, -96, -17.5 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 53.8, 49 , 0 );
setMoveKey( spep_0 -3 + 233, 1, 53.8, 49 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 59.1, 52.3 , 0 );
setMoveKey( spep_0 -3 + 235, 1, 59.1, 52.3 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 64.4, 55.7 , 0 );
setMoveKey( spep_0 -3 + 237, 1, 64.4, 55.7 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 69.6, 59 , 0 );
setMoveKey( spep_0 -3 + 239, 1, 69.6, 59 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 74.9, 62.4 , 0 );
setMoveKey( spep_0 -3 + 241, 1, 74.9, 62.4 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 80.2, 65.7 , 0 );
setMoveKey( spep_0 -3 + 243, 1, 80.2, 65.7 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 85.5, 69.1 , 0 );
setMoveKey( spep_0 -3 + 245, 1, 85.5, 69.1 , 0 );--
setMoveKey( spep_0 -3 + 246, 1, 125.8, 75.3 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 157.2, 93.4 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 151.3, 108.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 164, 98.2 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 161.2, 94.5 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 170.8, 103.1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 167.9, 99.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 177.5, 107.9 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 179.2, 111.4 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 180.9, 115 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 182.5, 118.5 , 0 );
setMoveKey( spep_0 -3 + 267, 1, 182.5, 118.5 , 0 );--
setMoveKey( spep_0 -3 + 268, 1, 127.3, 133.9 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 141.6, 171.5 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 132.1, 180.9 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 141.2, 177.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 133.1, 164.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 137, 161.1 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 121.8, 140.7 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 131, 137.2 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 123, 130.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 127.4, 117 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 125.6, 107 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 123.8, 96.9 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 119.7, 89.4 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 115.6, 81.9 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 111.5, 74.3 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 107.5, 66.8 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 103.4, 59.3 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 99.3, 51.8 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 95.3, 44.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 91.2, 36.7 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 87.1, 29.2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 83, 21.7 , 0 );
setMoveKey( spep_0 -3 + 311, 1, 83, 21.7 , 0 );--
setMoveKey( spep_0 -3 + 312, 1, 76.4, 8.3 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 113.7, 14.6 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 185.4, 5.5 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 234, -14.8 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 260.9, -28.9 , 0 );
setMoveKey( spep_0 -3 + 321, 1, 260.9, -28.9 , 0 );--
setMoveKey( spep_0 -3 + 322, 1, 267.3, -32.4 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 279, -52.2 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 296.9, -53.4 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 302.5, -57.7 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 312.6, -64.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 307.2, -71.2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 314.2, -65.5 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 308.8, -69.2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 315.8, -66.6 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 316.6, -67.2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 317.4, -67.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 318.2, -68.3 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 319, -68.8 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 319.8, -69.4 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 319.8, -69.4 , 0 );

s2 = 0.1;
s3 = 0.2;
setScaleKey( spep_0 -3 + 224, 1, 1.35 +s2, 1.35 +s2 );
setScaleKey( spep_0 -3 + 225, 1, 1.35 +s2, 1.35 +s2 );
setScaleKey( spep_0 -3 + 226, 1, 1.39 +s2, 1.39 +s2 );
setScaleKey( spep_0 -3 + 227, 1, 1.39 +s2, 1.39 +s2 );
setScaleKey( spep_0 -3 + 228, 1, 1.42 +s2, 1.42 +s2 );
setScaleKey( spep_0 -3 + 229, 1, 1.42 +s2, 1.42 +s2 );
setScaleKey( spep_0 -3 + 230, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 231, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 232, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 240, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 242, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 244, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 245, 1, 1.5 +s2, 1.5 +s2 );--
setScaleKey( spep_0 -3 + 246, 1, 1.72 +s3, 1.72 +s3 );
setScaleKey( spep_0 -3 + 248, 1, 1.71 +s3, 1.71 +s3 );
setScaleKey( spep_0 -3 + 250, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_0 -3 + 266, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_0 -3 + 267, 1, 1.7 +s3, 1.7 +s3 );--
setScaleKey( spep_0 -3 + 268, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 274, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 276, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 278, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 280, 1, 1.48 +s2, 1.48 +s2 );
setScaleKey( spep_0 -3 + 282, 1, 1.47 +s2, 1.47 +s2 );
setScaleKey( spep_0 -3 + 284, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 286, 1, 1.43 +s2, 1.43 +s2 );
setScaleKey( spep_0 -3 + 288, 1, 1.42 +s2, 1.42 +s2 );
setScaleKey( spep_0 -3 + 290, 1, 1.4 +s2, 1.4 +s2 );
setScaleKey( spep_0 -3 + 292, 1, 1.38 +s2, 1.38 +s2 );
setScaleKey( spep_0 -3 + 294, 1, 1.36 +s2, 1.36 +s2 );
setScaleKey( spep_0 -3 + 296, 1, 1.35 +s2, 1.34 +s2 );
setScaleKey( spep_0 -3 + 298, 1, 1.33 +s2, 1.32 +s2 );
setScaleKey( spep_0 -3 + 300, 1, 1.31 +s2, 1.3 +s2 );
setScaleKey( spep_0 -3 + 302, 1, 1.29 +s2, 1.28 +s2 );
setScaleKey( spep_0 -3 + 304, 1, 1.27 +s2, 1.26 +s2 );
setScaleKey( spep_0 -3 + 306, 1, 1.26 +s2, 1.24 +s2 );
setScaleKey( spep_0 -3 + 308, 1, 1.24 +s2, 1.22 +s2 );
setScaleKey( spep_0 -3 + 310, 1, 1.22 +s2, 1.2 +s2 );
setScaleKey( spep_0 -3 + 311, 1, 1.22 +s2, 1.2 +s2 );--

setScaleKey( spep_0 -3 + 312, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 314, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 316, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 318, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 320, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 321, 1, 0.45, 0.45 );--
setScaleKey( spep_0 -3 + 322, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 324, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 326, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 328, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 330, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 332, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 334, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 336, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 338, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 340, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 342, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 344, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 346, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 348, 1, 0.04, 0.04 );
setScaleKey( spep_0 -3 + 350, 1, 0.04, 0.04 );

setRotateKey( spep_0 -3 + 224, 1, -21.6 );
setRotateKey( spep_0 -3 + 245, 1, -21.6 );--
setRotateKey( spep_0 -3 + 246, 1, -11.2 );
setRotateKey( spep_0 -3 + 248, 1, -11.7 );
setRotateKey( spep_0 -3 + 250, 1, -11.3 );
setRotateKey( spep_0 -3 + 252, 1, -10.9 );
setRotateKey( spep_0 -3 + 254, 1, -10.5 );
setRotateKey( spep_0 -3 + 256, 1, -10.1 );
setRotateKey( spep_0 -3 + 258, 1, -9.7 );
setRotateKey( spep_0 -3 + 260, 1, -9.3 );
setRotateKey( spep_0 -3 + 262, 1, -8.6 );
setRotateKey( spep_0 -3 + 264, 1, -7.9 );
setRotateKey( spep_0 -3 + 266, 1, -7.3 );
setRotateKey( spep_0 -3 + 267, 1, -7.3 );--
setRotateKey( spep_0 -3 + 268, 1, -36.3 );
setRotateKey( spep_0 -3 + 270, 1, -24.3 );
setRotateKey( spep_0 -3 + 272, 1, -21.3 );
setRotateKey( spep_0 -3 + 274, 1, -18.3 );
setRotateKey( spep_0 -3 + 276, 1, -18.1 );
setRotateKey( spep_0 -3 + 278, 1, -17.8 );
setRotateKey( spep_0 -3 + 280, 1, -17.4 );
setRotateKey( spep_0 -3 + 282, 1, -17 );
setRotateKey( spep_0 -3 + 284, 1, -16.1 );
setRotateKey( spep_0 -3 + 286, 1, -15.3 );
setRotateKey( spep_0 -3 + 288, 1, -14.4 );
setRotateKey( spep_0 -3 + 290, 1, -13.5 );
setRotateKey( spep_0 -3 + 292, 1, -12.2 );
setRotateKey( spep_0 -3 + 294, 1, -10.8 );
setRotateKey( spep_0 -3 + 296, 1, -9.5 );
setRotateKey( spep_0 -3 + 298, 1, -8.1 );
setRotateKey( spep_0 -3 + 300, 1, -6.8 );
setRotateKey( spep_0 -3 + 302, 1, -5.4 );
setRotateKey( spep_0 -3 + 304, 1, -4.1 );
setRotateKey( spep_0 -3 + 306, 1, -2.7 );
setRotateKey( spep_0 -3 + 308, 1, -1.4 );
setRotateKey( spep_0 -3 + 310, 1, 0 );
setRotateKey( spep_0 -3 + 311, 1, 0 );--
setRotateKey( spep_0 -3 + 312, 1, 18 );
setRotateKey( spep_0 -3 + 321, 1, 18 );--
setRotateKey( spep_0 -3 + 322, 1, 49 );
setRotateKey( spep_0 -3 + 350, 1, 49 );

-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 -3 + 378, 1, 1 );
setDisp( spep_0 -3 + 532, 1, 0 );
changeAnime( spep_0 -3 + 378, 1, 7 );
changeAnime( spep_0 -3 + 408, 1, 6 );
changeAnime( spep_0 -3 + 502, 1, 106 );
changeAnime( spep_0 -3 + 518, 1, 8 );

setMoveKey( spep_0 -3 + 378, 1, -280.1, 454 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -272.5, 438.9 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -267, 427.4 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -263.6, 419.4 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -246.3, 387.3 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -225.8, 349.9 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -202.4, 307.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -176, 259.6 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -170.8, 239.8 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -164.9, 218.2 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -158.5, 194.7 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -151.4, 169.2 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -143.7, 142 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -135.4, 112.8 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -110.8, 110.7 , 0 );
setMoveKey( spep_0 -3 + 407, 1, -110.8, 110.7 , 0 );--
setMoveKey( spep_0 -3 + 408, 1, -134.9, 120.7 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -114.6, 146.2 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -120.2, 166.7 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -95.8, 160.6 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -91.1, 156.2 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -81.1, 169.3 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -84.5, 169.1 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -70.3, 174.4 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -69.3, 169.9 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -65.8, 179.5 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -74.9, 188.3 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -65.3, 184.2 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -67.3, 175 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -63.1, 178.3 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -66.9, 173.5 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -65, 175.2 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -66.7, 174.2 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -69.1, 173.5 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -72, 173.1 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -75.5, 173 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -79.5, 173.3 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -84.1, 173.9 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -89.3, 174.7 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -94.9, 176 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -101.2, 177.5 , 0 );
setMoveKey( spep_0 -3 + 458, 1, -108, 179.4 , 0 );
setMoveKey( spep_0 -3 + 460, 1, -115.5, 181.5 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -123.5, 184.1 , 0 );
setMoveKey( spep_0 -3 + 463, 1, -123.5, 184.1 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 402.9, -262.1 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 379.9, -275.8 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 356.9, -289.6 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 333.8, -303.3 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 241.8, -430.3 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 238.9, -435.8 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 168.8, -400.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 210, -478.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 195.7, -492.1 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 205, -489.4 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 191.4, -504.1 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 200, -500.1 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 184, -487 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 195, -510.8 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 184.6, -524.8 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 190.1, -521.5 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 180.2, -534.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 180.2, -539.5 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 172.8, -542.4 , 0 );
setMoveKey( spep_0 -3 + 501, 1, 172.8, -542.4 , 0 );--
setMoveKey( spep_0 -3 + 502, 1, 38.7, 40.8 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 41.5, 45.3 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 41.9, 42.5 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 42.4, 39.7 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 42.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 43.2, 34 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 43.6, 31.2 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 44, 28.3 , 0 );
setMoveKey( spep_0 -3 + 517, 1, 44, 28.3 , 0 );--
setMoveKey( spep_0 -3 + 518, 1, -89.6, 54.5 , 0 );
setMoveKey( spep_0 -3 + 520, 1, -83.9, 73.6 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -111.4, 118.9 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -363.3, 275.4 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -585.8, 404.3 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -747.9, 521.1 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -877.3, 594.8 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -877.3, 594.8 , 0 );

setScaleKey( spep_0 -3 + 378, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 380, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 382, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 384, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 386, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 388, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 390, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 392, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 394, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 396, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 398, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 400, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 402, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 404, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 406, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 407, 1, 1.1, 1.1 );--
setScaleKey( spep_0 -3 + 408, 1, 3.98, 3.98 );
setScaleKey( spep_0 -3 + 410, 1, 3.75, 3.75 );
setScaleKey( spep_0 -3 + 412, 1, 3.54, 3.54 );
setScaleKey( spep_0 -3 + 414, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 416, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 418, 1, 3.03, 3.03 );
setScaleKey( spep_0 -3 + 420, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 422, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 424, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 436, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 438, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 446, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 448, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 450, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 452, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 456, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 458, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 460, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 462, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 463, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 464, 1, 9.38, 9.38 );
setScaleKey( spep_0 -3 + 501, 1, 9.38, 9.38 );--
setScaleKey( spep_0 -3 + 502, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 504, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 506, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 517, 1, 1.77, 1.77 );--
setScaleKey( spep_0 -3 + 518, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 520, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 522, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 524, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 526, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 528, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 530, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 532, 1, 0.67, 0.67 );

setRotateKey( spep_0 -3 + 378, 1, -97.6 );
setRotateKey( spep_0 -3 + 380, 1, -97.5 );
setRotateKey( spep_0 -3 + 384, 1, -97.5 );
setRotateKey( spep_0 -3 + 386, 1, -93.2 );
setRotateKey( spep_0 -3 + 388, 1, -88.3 );
setRotateKey( spep_0 -3 + 390, 1, -82.7 );
setRotateKey( spep_0 -3 + 392, 1, -76.4 );
setRotateKey( spep_0 -3 + 394, 1, -75.9 );
setRotateKey( spep_0 -3 + 396, 1, -75.2 );
setRotateKey( spep_0 -3 + 398, 1, -74.6 );
setRotateKey( spep_0 -3 + 400, 1, -73.9 );
setRotateKey( spep_0 -3 + 402, 1, -73.1 );
setRotateKey( spep_0 -3 + 404, 1, -72.2 );
setRotateKey( spep_0 -3 + 406, 1, -71.4 );
setRotateKey( spep_0 -3 + 407, 1, -71.4 );--
setRotateKey( spep_0 -3 + 408, 1, -44.9 );
setRotateKey( spep_0 -3 + 410, 1, -44.1 );
setRotateKey( spep_0 -3 + 412, 1, -43.4 );
setRotateKey( spep_0 -3 + 414, 1, -42.8 );
setRotateKey( spep_0 -3 + 416, 1, -42.2 );
setRotateKey( spep_0 -3 + 418, 1, -41.6 );
setRotateKey( spep_0 -3 + 420, 1, -41.2 );
setRotateKey( spep_0 -3 + 422, 1, -40.8 );
setRotateKey( spep_0 -3 + 424, 1, -40.4 );
setRotateKey( spep_0 -3 + 426, 1, -40.1 );
setRotateKey( spep_0 -3 + 428, 1, -39.9 );
setRotateKey( spep_0 -3 + 430, 1, -39.7 );
setRotateKey( spep_0 -3 + 432, 1, -39.4 );
setRotateKey( spep_0 -3 + 434, 1, -39.1 );
setRotateKey( spep_0 -3 + 436, 1, -38.8 );
setRotateKey( spep_0 -3 + 438, 1, -38.5 );
setRotateKey( spep_0 -3 + 440, 1, -38.1 );
setRotateKey( spep_0 -3 + 442, 1, -37.8 );
setRotateKey( spep_0 -3 + 444, 1, -37.4 );
setRotateKey( spep_0 -3 + 446, 1, -37 );
setRotateKey( spep_0 -3 + 448, 1, -36.6 );
setRotateKey( spep_0 -3 + 450, 1, -36.2 );
setRotateKey( spep_0 -3 + 452, 1, -35.7 );
setRotateKey( spep_0 -3 + 454, 1, -35.3 );
setRotateKey( spep_0 -3 + 456, 1, -34.8 );
setRotateKey( spep_0 -3 + 458, 1, -34.3 );
setRotateKey( spep_0 -3 + 460, 1, -33.8 );
setRotateKey( spep_0 -3 + 462, 1, -33.3 );
setRotateKey( spep_0 -3 + 463, 1, -33.3 );
setRotateKey( spep_0 -3 + 464, 1, 19.8 );
setRotateKey( spep_0 -3 + 466, 1, 19.6 );
setRotateKey( spep_0 -3 + 468, 1, 19.4 );
setRotateKey( spep_0 -3 + 470, 1, 19.1 );
setRotateKey( spep_0 -3 + 472, 1, 20 );
setRotateKey( spep_0 -3 + 474, 1, 20.3 );
setRotateKey( spep_0 -3 + 476, 1, 20.5 );
setRotateKey( spep_0 -3 + 478, 1, 19.9 );
setRotateKey( spep_0 -3 + 480, 1, 19.2 );
setRotateKey( spep_0 -3 + 482, 1, 18.6 );
setRotateKey( spep_0 -3 + 484, 1, 18 );
setRotateKey( spep_0 -3 + 486, 1, 17.4 );
setRotateKey( spep_0 -3 + 488, 1, 16.8 );
setRotateKey( spep_0 -3 + 490, 1, 16.2 );
setRotateKey( spep_0 -3 + 492, 1, 15.6 );
setRotateKey( spep_0 -3 + 494, 1, 14.9 );
setRotateKey( spep_0 -3 + 496, 1, 14.3 );
setRotateKey( spep_0 -3 + 498, 1, 13.7 );
setRotateKey( spep_0 -3 + 500, 1, 13.1 );
setRotateKey( spep_0 -3 + 501, 1, 13.1 );--
setRotateKey( spep_0 -3 + 502, 1, 8 );
setRotateKey( spep_0 -3 + 517, 1, 8 );--
setRotateKey( spep_0 -3 + 518, 1, 25.2 );
setRotateKey( spep_0 -3 + 520, 1, 26.4 );
setRotateKey( spep_0 -3 + 522, 1, 25.2 );
setRotateKey( spep_0 -3 + 530, 1, 25.2 );
setRotateKey( spep_0 -3 + 532, 1, 25.2 );

-- ** 敵キャラクター ** --
--敵の動き5
setDisp( spep_0 -3 + 538, 1, 1 );
setDisp( spep_0 -3 + 658, 1, 0 );
changeAnime( spep_0 -3 + 538, 1, 5 );

setMoveKey( spep_0 -3 + 538, 1, 304.8, 190.1 , 0 );
setMoveKey( spep_0 -3 + 539, 1, 304.8, 190.1 , 0 );
setMoveKey( spep_0 -3 + 540, 1, 298.5, 189.2 , 0 );
setMoveKey( spep_0 -3 + 541, 1, 298.5, 189.2 , 0 );
setMoveKey( spep_0 -3 + 542, 1, 292.2, 188.2 , 0 );
setMoveKey( spep_0 -3 + 543, 1, 292.2, 188.2 , 0 );
setMoveKey( spep_0 -3 + 544, 1, 285.9, 187.2 , 0 );
setMoveKey( spep_0 -3 + 545, 1, 285.9, 187.2 , 0 );
setMoveKey( spep_0 -3 + 546, 1, 279.6, 186.2 , 0 );
setMoveKey( spep_0 -3 + 547, 1, 279.6, 186.2 , 0 );
setMoveKey( spep_0 -3 + 548, 1, 273.3, 185.2 , 0 );
setMoveKey( spep_0 -3 + 549, 1, 273.3, 185.2 , 0 );
setMoveKey( spep_0 -3 + 550, 1, 266.9, 184.2 , 0 );
setMoveKey( spep_0 -3 + 551, 1, 266.9, 184.2 , 0 );
setMoveKey( spep_0 -3 + 552, 1, 260.6, 183.2 , 0 );
setMoveKey( spep_0 -3 + 553, 1, 260.6, 183.2 , 0 );
setMoveKey( spep_0 -3 + 554, 1, 254.3, 182.2 , 0 );
setMoveKey( spep_0 -3 + 555, 1, 254.3, 182.2 , 0 );
setMoveKey( spep_0 -3 + 556, 1, 242.9, 177.6 , 0 );
setMoveKey( spep_0 -3 + 557, 1, 242.9, 177.6 , 0 );
setMoveKey( spep_0 -3 + 558, 1, 231.4, 173 , 0 );
setMoveKey( spep_0 -3 + 559, 1, 231.4, 173 , 0 );
setMoveKey( spep_0 -3 + 560, 1, 200.8, 160.7 , 0 );
setMoveKey( spep_0 -3 + 561, 1, 200.8, 160.7 , 0 );
setMoveKey( spep_0 -3 + 562, 1, 170.2, 148.4 , 0 );
setMoveKey( spep_0 -3 + 563, 1, 170.2, 148.4 , 0 );
setMoveKey( spep_0 -3 + 564, 1, 139.6, 136 , 0 );
setMoveKey( spep_0 -3 + 565, 1, 139.6, 136 , 0 );
setMoveKey( spep_0 -3 + 566, 1, 105.8, 93.7 , 0 );
setMoveKey( spep_0 -3 + 567, 1, 105.8, 93.7 , 0 );
setMoveKey( spep_0 -3 + 568, 1, 72.1, 51.2 , 0 );
setMoveKey( spep_0 -3 + 569, 1, 72.1, 51.2 , 0 );
setMoveKey( spep_0 -3 + 570, 1, 58.9, 49.7 , 0 );
setMoveKey( spep_0 -3 + 571, 1, 58.9, 49.7 , 0 );
setMoveKey( spep_0 -3 + 572, 1, 45.6, 48.2 , 0 );
setMoveKey( spep_0 -3 + 573, 1, 45.6, 48.2 , 0 );
setMoveKey( spep_0 -3 + 574, 1, 32.4, 46.6 , 0 );
setMoveKey( spep_0 -3 + 575, 1, 32.4, 46.6 , 0 );
setMoveKey( spep_0 -3 + 576, 1, 19.2, 45.1 , 0 );
setMoveKey( spep_0 -3 + 577, 1, 19.2, 45.1 , 0 );
setMoveKey( spep_0 -3 + 578, 1, -7.7, -34 , 0 );
setMoveKey( spep_0 -3 + 579, 1, -7.7, -34 , 0 );
setMoveKey( spep_0 -3 + 580, 1, 1.6, -46.4 , 0 );
setMoveKey( spep_0 -3 + 581, 1, 1.6, -46.4 , 0 );
setMoveKey( spep_0 -3 + 582, 1, -7.5, -33.9 , 0 );
setMoveKey( spep_0 -3 + 583, 1, -7.5, -33.9 , 0 );
setMoveKey( spep_0 -3 + 584, 1, 4.9, -24.6 , 0 );
setMoveKey( spep_0 -3 + 585, 1, 4.9, -24.6 , 0 );
setMoveKey( spep_0 -3 + 586, 1, -6.7, -10.8 , 0 );
setMoveKey( spep_0 -3 + 587, 1, -6.7, -10.8 , 0 );
setMoveKey( spep_0 -3 + 588, 1, -0.5, -20.1 , 0 );
setMoveKey( spep_0 -3 + 589, 1, -0.5, -20.1 , 0 );
setMoveKey( spep_0 -3 + 590, 1, -5.7, -9.4 , 0 );
setMoveKey( spep_0 -3 + 591, 1, -5.7, -9.4 , 0 );
setMoveKey( spep_0 -3 + 592, 1, 3.6, -15.6 , 0 );
setMoveKey( spep_0 -3 + 593, 1, 3.6, -15.6 , 0 );
setMoveKey( spep_0 -3 + 594, 1, -0, 12.9 , 0 );
setMoveKey( spep_0 -3 + 595, 1, -0, 12.9 , 0 );
setMoveKey( spep_0 -3 + 596, 1, 9.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 597, 1, 9.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 598, 1, -3.5, 1.9 , 0 );
setMoveKey( spep_0 -3 + 599, 1, -3.5, 1.9 , 0 );
setMoveKey( spep_0 -3 + 600, 1, -4.3, 2.2 , 0 );
setMoveKey( spep_0 -3 + 601, 1, -4.3, 2.2 , 0 );
setMoveKey( spep_0 -3 + 602, 1, -5, 2.6 , 0 );
setMoveKey( spep_0 -3 + 603, 1, -5, 2.6 , 0 );
setMoveKey( spep_0 -3 + 604, 1, -5.8, 2.9 , 0 );
setMoveKey( spep_0 -3 + 605, 1, -5.8, 2.9 , 0 );
setMoveKey( spep_0 -3 + 606, 1, -6.6, 3.4 , 0 );
setMoveKey( spep_0 -3 + 607, 1, -6.6, 3.4 , 0 );
setMoveKey( spep_0 -3 + 608, 1, -7.5, 3.9 , 0 );
setMoveKey( spep_0 -3 + 609, 1, -7.5, 3.9 , 0 );
setMoveKey( spep_0 -3 + 610, 1, -8.4, 4.2 , 0 );
setMoveKey( spep_0 -3 + 611, 1, -8.4, 4.2 , 0 );
setMoveKey( spep_0 -3 + 612, 1, -9.3, 4.8 , 0 );
setMoveKey( spep_0 -3 + 613, 1, -9.3, 4.8 , 0 );
setMoveKey( spep_0 -3 + 614, 1, -10.3, 5.4 , 0 );
setMoveKey( spep_0 -3 + 615, 1, -10.3, 5.4 , 0 );
setMoveKey( spep_0 -3 + 616, 1, -11.3, 6.2 , 0 );
setMoveKey( spep_0 -3 + 617, 1, -11.3, 6.2 , 0 );
setMoveKey( spep_0 -3 + 618, 1, -12.3, 6.8 , 0 );
setMoveKey( spep_0 -3 + 619, 1, -12.3, 6.8 , 0 );
setMoveKey( spep_0 -3 + 620, 1, -13.3, 7.6 , 0 );
setMoveKey( spep_0 -3 + 621, 1, -13.3, 7.6 , 0 );
setMoveKey( spep_0 -3 + 622, 1, -14.4, 8.5 , 0 );
setMoveKey( spep_0 -3 + 623, 1, -14.4, 8.5 , 0 );
setMoveKey( spep_0 -3 + 624, 1, -15.5, 9.4 , 0 );
setMoveKey( spep_0 -3 + 625, 1, -15.5, 9.4 , 0 );
setMoveKey( spep_0 -3 + 626, 1, -16.5, 10.4 , 0 );
setMoveKey( spep_0 -3 + 627, 1, -16.5, 10.4 , 0 );
setMoveKey( spep_0 -3 + 628, 1, -17.6, 11.5 , 0 );
setMoveKey( spep_0 -3 + 629, 1, -17.6, 11.5 , 0 );
setMoveKey( spep_0 -3 + 630, 1, -18.6, 12.6 , 0 );
setMoveKey( spep_0 -3 + 631, 1, -18.6, 12.6 , 0 );
setMoveKey( spep_0 -3 + 632, 1, -19.6, 13.8 , 0 );
setMoveKey( spep_0 -3 + 633, 1, -19.6, 13.8 , 0 );
setMoveKey( spep_0 -3 + 634, 1, -20.6, 15.3 , 0 );
setMoveKey( spep_0 -3 + 635, 1, -20.6, 15.3 , 0 );
setMoveKey( spep_0 -3 + 636, 1, -21.5, 16.8 , 0 );
setMoveKey( spep_0 -3 + 637, 1, -21.5, 16.8 , 0 );
setMoveKey( spep_0 -3 + 638, 1, -22.3, 18.3 , 0 );
setMoveKey( spep_0 -3 + 639, 1, -22.3, 18.3 , 0 );
setMoveKey( spep_0 -3 + 640, 1, -23.1, 20 , 0 );
setMoveKey( spep_0 -3 + 641, 1, -23.1, 20 , 0 );
setMoveKey( spep_0 -3 + 642, 1, -23.8, 21.7 , 0 );
setMoveKey( spep_0 -3 + 643, 1, -23.8, 21.7 , 0 );
setMoveKey( spep_0 -3 + 644, 1, -24.3, 23.6 , 0 );
setMoveKey( spep_0 -3 + 645, 1, -24.3, 23.6 , 0 );
setMoveKey( spep_0 -3 + 646, 1, -24.7, 25.5 , 0 );
setMoveKey( spep_0 -3 + 647, 1, -24.7, 25.5 , 0 );
setMoveKey( spep_0 -3 + 648, 1, -25, 27.6 , 0 );
setMoveKey( spep_0 -3 + 649, 1, -25, 27.6 , 0 );
setMoveKey( spep_0 -3 + 650, 1, -25.1, 29.7 , 0 );
setMoveKey( spep_0 -3 + 651, 1, -25.1, 29.7 , 0 );
setMoveKey( spep_0 -3 + 652, 1, -25.1, 31.8 , 0 );
setMoveKey( spep_0 -3 + 653, 1, -25.1, 31.8 , 0 );
setMoveKey( spep_0 -3 + 654, 1, -24.9, 34 , 0 );
setMoveKey( spep_0 -3 + 655, 1, -24.9, 34 , 0 );
setMoveKey( spep_0 -3 + 656, 1, -24.4, 36.5 , 0 );
setMoveKey( spep_0 -3 + 657, 1, -24.4, 36.5 , 0 );
setMoveKey( spep_0 -3 + 658, 1, -24.4, 36.5 , 0 );

setScaleKey( spep_0 -3 + 538, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 539, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 540, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 541, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 542, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 543, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 544, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 545, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 546, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 547, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 548, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 549, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 550, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 551, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 552, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 553, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 554, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 555, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 556, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 557, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 558, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 559, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 560, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 561, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 562, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 563, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 564, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 565, 1, 1.23, 1.23 );
setScaleKey( spep_0 -3 + 566, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 567, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 568, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 569, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 570, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 571, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 572, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 573, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 574, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 575, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 576, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 577, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 578, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 580, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 581, 1, 2.4, 2.4 );
setScaleKey( spep_0 -3 + 582, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 584, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 585, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 586, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 588, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 589, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 590, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 592, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 593, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 594, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 596, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 597, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 598, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 610, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 611, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 612, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 624, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 625, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 626, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 636, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 637, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 638, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 644, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 645, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 646, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 652, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 653, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 654, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 658, 1, 0.05, 0.05 );

setRotateKey( spep_0 -3 + 538, 1, 70.3 );
setRotateKey( spep_0 -3 + 539, 1, 70.3 );
setRotateKey( spep_0 -3 + 540, 1, 68.7 );
setRotateKey( spep_0 -3 + 541, 1, 68.7 );
setRotateKey( spep_0 -3 + 542, 1, 67 );
setRotateKey( spep_0 -3 + 543, 1, 67 );
setRotateKey( spep_0 -3 + 544, 1, 65.4 );
setRotateKey( spep_0 -3 + 545, 1, 65.4 );
setRotateKey( spep_0 -3 + 546, 1, 63.8 );
setRotateKey( spep_0 -3 + 547, 1, 63.8 );
setRotateKey( spep_0 -3 + 548, 1, 62.2 );
setRotateKey( spep_0 -3 + 549, 1, 62.2 );
setRotateKey( spep_0 -3 + 550, 1, 60.6 );
setRotateKey( spep_0 -3 + 551, 1, 60.6 );
setRotateKey( spep_0 -3 + 552, 1, 58.9 );
setRotateKey( spep_0 -3 + 553, 1, 58.9 );
setRotateKey( spep_0 -3 + 554, 1, 57.3 );
setRotateKey( spep_0 -3 + 555, 1, 57.3 );
setRotateKey( spep_0 -3 + 556, 1, 56.3 );
setRotateKey( spep_0 -3 + 557, 1, 56.3 );
setRotateKey( spep_0 -3 + 558, 1, 55.3 );
setRotateKey( spep_0 -3 + 559, 1, 55.3 );
setRotateKey( spep_0 -3 + 560, 1, 52.5 );
setRotateKey( spep_0 -3 + 561, 1, 52.5 );
setRotateKey( spep_0 -3 + 562, 1, 49.8 );
setRotateKey( spep_0 -3 + 563, 1, 49.8 );
setRotateKey( spep_0 -3 + 564, 1, 47 );
setRotateKey( spep_0 -3 + 565, 1, 47 );
setRotateKey( spep_0 -3 + 566, 1, 40.7 );
setRotateKey( spep_0 -3 + 567, 1, 40.7 );
setRotateKey( spep_0 -3 + 568, 1, 34.3 );
setRotateKey( spep_0 -3 + 569, 1, 34.3 );
setRotateKey( spep_0 -3 + 570, 1, 31.6 );
setRotateKey( spep_0 -3 + 571, 1, 31.6 );
setRotateKey( spep_0 -3 + 572, 1, 29 );
setRotateKey( spep_0 -3 + 573, 1, 29 );
setRotateKey( spep_0 -3 + 574, 1, 26.3 );
setRotateKey( spep_0 -3 + 575, 1, 26.3 );
setRotateKey( spep_0 -3 + 576, 1, 23.6 );
setRotateKey( spep_0 -3 + 577, 1, 23.6 );
setRotateKey( spep_0 -3 + 578, 1, 32.6 );
setRotateKey( spep_0 -3 + 622, 1, 32.6 );
setRotateKey( spep_0 -3 + 623, 1, 32.6 );
setRotateKey( spep_0 -3 + 624, 1, 32.5 );
setRotateKey( spep_0 -3 + 625, 1, 32.5 );
setRotateKey( spep_0 -3 + 626, 1, 32.6 );
setRotateKey( spep_0 -3 + 627, 1, 32.6 );
setRotateKey( spep_0 -3 + 628, 1, 32.6 );
setRotateKey( spep_0 -3 + 629, 1, 32.6 );
setRotateKey( spep_0 -3 + 630, 1, 32.5 );
setRotateKey( spep_0 -3 + 631, 1, 32.5 );
setRotateKey( spep_0 -3 + 632, 1, 32.6 );
setRotateKey( spep_0 -3 + 634, 1, 32.6 );
setRotateKey( spep_0 -3 + 635, 1, 32.6 );
setRotateKey( spep_0 -3 + 636, 1, 32.5 );
setRotateKey( spep_0 -3 + 637, 1, 32.5 );
setRotateKey( spep_0 -3 + 638, 1, 32.6 );
setRotateKey( spep_0 -3 + 642, 1, 32.6 );
setRotateKey( spep_0 -3 + 643, 1, 32.6 );
setRotateKey( spep_0 -3 + 644, 1, 32.5 );
setRotateKey( spep_0 -3 + 645, 1, 32.5 );
setRotateKey( spep_0 -3 + 646, 1, 32.6 );
setRotateKey( spep_0 -3 + 647, 1, 32.6 );
setRotateKey( spep_0 -3 + 648, 1, 32.5 );
setRotateKey( spep_0 -3 + 652, 1, 32.5 );
setRotateKey( spep_0 -3 + 653, 1, 32.5 );
setRotateKey( spep_0 -3 + 654, 1, 32.6 );
setRotateKey( spep_0 -3 + 655, 1, 32.6 );
setRotateKey( spep_0 -3 + 656, 1, 32.5 );
setRotateKey( spep_0 -3 + 658, 1, 32.5 );

-- ** 敵キャラクター ** --
--敵の動き6
setDisp( spep_0 -3 + 770, 1, 1 );
--setDisp( spep_0 -3 + 794, 1, 0 );
changeAnime( spep_0 -3 + 770, 1, 108 );

setMoveKey( spep_0 -3 + 770, 1, 38.2, 3.6 , 0 );
setMoveKey( spep_0 -3 + 772, 1, 36.8, 2.2 , 0 );
setMoveKey( spep_0 -3 + 774, 1, 35.4, 0.8 , 0 );
setMoveKey( spep_0 -3 + 776, 1, 34, -0.6 , 0 );
setMoveKey( spep_0 -3 + 778, 1, 32.6, -1.9 , 0 );
setMoveKey( spep_0 -3 + 780, 1, 31.2, -3.3 , 0 );
setMoveKey( spep_0 -3 + 782, 1, 29.8, -4.7 , 0 );
setMoveKey( spep_0 -3 + 784, 1, 40.9, -24.7 , 0 );
setMoveKey( spep_0 -3 + 786, 1, 27.1, -7.5 , 0 );
setMoveKey( spep_0 -3 + 788, 1, 38.1, 0.4 , 0 );
setMoveKey( spep_0 -3 + 790, 1, 25.7, -8.9 , 0 );
setMoveKey( spep_0 -3 + 792, 1, 31.9, -15.1 , 0 );
setMoveKey( spep_0 -3 + 795, 1, 31.9, -15.1 , 0 );

setScaleKey( spep_0 -3 + 770, 1, 1, 1 );
setScaleKey( spep_0 -3 + 795, 1, 1, 1 );

setRotateKey( spep_0 -3 + 770, 1, 58 );
setRotateKey( spep_0 -3 + 795, 1, 58 );

-- ** 敵キャラクター ** --
--敵の動き7
--setDisp( spep_0 -3 + 796, 1, 1 );
setDisp( spep_0 -3 + 812, 1, 0 );
--changeAnime( spep_0 -3 + 796, 1, 8 );

setMoveKey( spep_0 -3 + 796, 1, 107.2, -40.1 , 0 );
setMoveKey( spep_0 -3 + 798, 1, 238.8, -35.6 , 0 );
setMoveKey( spep_0 -3 + 800, 1, 366.2, -30.9 , 0 );
setMoveKey( spep_0 -3 + 802, 1, 467.8, -38.4 , 0 );
setMoveKey( spep_0 -3 + 804, 1, 571.4, -42.7 , 0 );
setMoveKey( spep_0 -3 + 806, 1, 642.9, -40.6 , 0 );
setMoveKey( spep_0 -3 + 808, 1, 713.3, -47.6 , 0 );
setMoveKey( spep_0 -3 + 810, 1, 764.1, -42.1 , 0 );
setMoveKey( spep_0 -3 + 812, 1, 764.1, -42.1 , 0 );

setScaleKey( spep_0 -3 + 796, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 798, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 800, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 802, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 804, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 806, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 808, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 810, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 812, 1, 0.94, 0.94 );

setRotateKey( spep_0 -3 + 796, 1, 66.3 );
setRotateKey( spep_0 -3 + 812, 1, 66.3 );

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

--向かっていく
SE029 = playSeVer2( spep_0 + 220, 1117, "",spep_0 + 274, 0, 14, -1);

--空中パンチ
SE030 = playSeVer2( spep_0 + 246, 1359, "",spep_0 + 286, 0, 20, -1);        
SE031 = playSeVer2( spep_0 + 246, 1153, "", 0, 0, 0, -1);       

--膝蹴り
SE032 = playSeVer2( spep_0 + 262, 1001, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 264, 1359, "",spep_0 + 304, 0, 20, -1);
SE034 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE034, 83 );
SE042 = playSeVer2( spep_0 + 400, 1359, "",spep_0 + 444, 0, 22, -1);
SE043 = playSeVer2( spep_0 + 402, 1153, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 406, 1110, "", 0, 0, 0, -1);

--回転
SE035 = playSeVer2( spep_0 + 280, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE036 = playSeVer2( spep_0 + 308, 1359, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE037, 88 );
SE038 = playSeVer2( spep_0 + 308, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE038, 94 );

--敵飛んでいく
SE039 = playSeVer2( spep_0 + 332, 1121, "",spep_0 + 414, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 332, SE039, 71 );

--瞬間移動
SE040 = playSeVer2( spep_0 + 334, 1109, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 368, 1109, "", 0, 0, 0, -1);

--手刀
SE045 = playSeVer2( spep_0 + 462, 1189, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 470, 1110, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 470, 1359, "",spep_0 + 502, 0, 10, -1);
SE048 = playSeVer2( spep_0 + 470, 1010, "", 0, 0, 0, -1);

--回転
SE049 = playSeVer2( spep_0 + 504, 1003, "", 0, 0, 0, -1);

--蹴り飛ばす
SE050 = playSeVer2( spep_0 + 512, 1123, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 514, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE051, 88 );

--向かっていく
SE052 = playSeVer2( spep_0 + 540, 1116, "",spep_0 + 590, 0, 16, -1);
SE053 = playSeVer2( spep_0 + 544, 1117, "", 0, 0, 0, -1);

--頭突き
SE054 = playSeVer2( spep_0 + 574, 1359, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 574, 1187, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 574, 1387, "", 0, 0, 0, -1);

--敵と一緒に飛んでいく
SE057 = playSeVer2( spep_0 + 586, 1121, "",spep_0 + 680, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 586, SE057, 74 );
setPitch( spep_0 + 586, SE057, 200 );
setTimeStretch( SE057, 1.13, 30, 4 );
SE058 = playSeVer2( spep_0 + 586, 1183, "",spep_0 + 680, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 586, SE058, 69 );
SE059 = playSeVer2( spep_0 + 586, 1277, "", 0, 0, 0, -1);

--壁激突
SE060 = playSeVer2( spep_0 + 658, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE060, 54 );
SE061 = playSeVer2( spep_0 + 658, 1044, "",spep_0 + 720, 0, 2, -1);
SE062 = playSeVer2( spep_0 + 658, 1226, "",spep_0 + 732, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 658, SE062, 50 );

--遠く壁引きずる
SE063 = playSeVer2( spep_0 + 718, 1044, "",spep_0 + 772, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 718, SE063, 42 );

--近めで壁引きずる
SE064 = playSeVer2( spep_0 + 766, 1044, "",spep_0 + 794, 0, 8, -1);
SE065 = playSeVer2( spep_0 + 766, 1226, "",spep_0 + 792, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 766, SE065, 70 );

--敵弾き飛ばす
SE066 = playSeVer2( spep_0 + 786, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE066, 82 );
SE067 = playSeVer2( spep_0 + 786, 1359, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 786, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE068, 72 );

--翻る
SE069 = playSeVer2( spep_0 + 816, 1332, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_0 + 824, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE070, 74 );

--銃構える
SE071 = playSeVer2( spep_0 + 862, 1150, "",spep_0 + 888, 4, 10, -1);
setStartTimeMs( SE071,  417 );

--画面遷移
SE072 = playSeVer2( spep_0 + 858, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE072, 79 );

--銃溜め
SE073 = playSeVer2( spep_0 + 884, 1257, "",spep_0 + 942, 0, 10, -1);
SE074 = playSeVer2( spep_0 + 884, 1356, "",spep_0 + 942, 0, 10, 0.6);
SE075 = playSeVer2( spep_0 + 890, 1157, "",spep_0 + 942, 0, 10, -1);
SE076 = playSeVer2( spep_0 + 890, 1254, "",spep_0 + 942, 22, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 890, SE076, 68 );
SE077 = playSeVer2( spep_0 + 890, 1282, "",spep_0 + 942, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 890, SE077, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 930;


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
SE079 = playSeVer2( spep_1 + 88, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE079, 71 );
SE080 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_1 + 90, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE081, 83 );
SE082 = playSeVer2( spep_1 + 90, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE082, 89 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射～ラストまで(206F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --発射～ラストまで：手前 ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 206, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 206, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 206, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 206, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --発射～ラストまで：奥   ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 206, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 206, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 206, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 206, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 68, 1, 1 );
setDisp( spep_2 -3 + 90, 1, 0 );
changeAnime( spep_2 -3 + 68, 1, 108 );

setMoveKey( spep_2 -3 + 68, 1, 443.9, -82.5 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 443.9, -82.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 406.4, -74.3 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 406.4, -74.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 373.3, -67 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 373.3, -67 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 344.6, -60.6 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 344.6, -60.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 320.4, -55.3 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 320.4, -55.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 300.5, -50.9 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 300.5, -50.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 285.1, -47.5 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 285.1, -47.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 251, -40.3 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 251, -40.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 214.8, -32.6 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 214.8, -32.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 176.8, -24.6 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 176.8, -24.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 136.5, -15.7 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 136.5, -15.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 136.5, -15.7 , 0 );

setScaleKey( spep_2 -3 + 68, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 69, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 70, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 71, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 72, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 73, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 74, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 75, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 76, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 77, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 78, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 79, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 80, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 81, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 82, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 83, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 84, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 85, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 86, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 87, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 88, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 89, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 90, 1, 1.71, 1.71 );

setRotateKey( spep_2 -3 + 68, 1, 30.5 );
setRotateKey( spep_2 -3 + 90, 1, 30.5 );

-- ** 音 ** --
--ビーム飛んでいく
SE083 = playSeVer2( spep_2 + 16, 1121, "",spep_2 + 110, 0, 20, -1);

--爆発
SE084 = playSeVer2( spep_2 + 86, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE084, 89 );
SE085 = playSeVer2( spep_2 + 90, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE085, 89 );
SE086 = playSeVer2( spep_2 + 96, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE086, 81 );
SE087 = playSeVer2( spep_2 + 96, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE087, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 206 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 +90 );
endPhase( spep_2 + 196 );


end