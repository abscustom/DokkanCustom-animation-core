--4020950:ミラ(最終形態)_本気玉
--sp_effect_a1_00253
--sp2085

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
SP_01 = 156155;  --導入→竜巻出現  ef_001
SP_02 = 156157;  --敵に攻撃、竜巻からミラ出現    ef_002
SP_03 = 156159;  --敵に攻撃、竜巻からミラ出現    ef_003
SP_04 = 156160;  --手からオーラ出現（カットイン）  ef_004
SP_05 = 156162;  --本気玉発生    ef_005
SP_06 = 156164;  --敵に本気玉着弾  ef_006
SP_07 = 156166;  --敵に本気玉着弾  ef_007

--敵側
SP_01r = 156156;    --導入→竜巻出現：敵用    ef_001_r
SP_02r = 156158;    --敵に攻撃、竜巻からミラ出現：敵用  ef_002_r
SP_04r = 156161;    --手からオーラ出現(：敵用  ef_004_r
SP_05r = 156163;    --本気玉発生：敵用  ef_005_r
SP_06r = 156165;    --敵に本気玉着弾：敵用    ef_006_r

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
-- 導入→竜巻出現(156F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入→竜巻出現(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 156, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 156, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 25,  906, 125, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 25, shuchusen1, 125, 25 );
setEffMoveKey(   spep_0 + 25, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 151, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 25, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 151, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 25, shuchusen1, 0 );
setEffRotateKey( spep_0 + 151, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 25, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 151, shuchusen1, 255 );

-- ** 音 ** --
--気流纏う1
SE001 = playSe( spep_0 + 26, 1026 );

--気流纏う2
SE002 = playSe( spep_0 + 26, 1183 );
setSeVolumeByWorkId( spep_0 + 26, SE002, 76 );
stopSe( spep_0 + 130, SE002, 34 );

--気流纏う3
SE003 = playSe( spep_0 + 26, 1227 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 54 );
stopSe( spep_0 + 120, SE003, 60 );

--気流纏う4
SE004 = playSe( spep_0 + 26, 1175 );
setSeVolumeByWorkId( spep_0 + 26, SE004, 71 );
stopSe( spep_0 + 118, SE004, 48 );

--気流纏う5
SE005 = playSe( spep_0 + 26, 1278 );
stopSe( spep_0 + 118, SE005, 50 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 156, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE000, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 音 ** --
--気流纏う6
SE006 = playSe( spep_0 + 36, 1004 );

--気流纏う7
SE007 = playSe( spep_0 + 52, 1004 );
setSeVolumeByWorkId( spep_0 + 52, SE007, 84 );

--気流纏う8
SE008 = playSe( spep_0 + 66, 1004 );
setSeVolumeByWorkId( spep_0 + 66, SE008, 83 );

--気流纏う9
SE009 = playSe( spep_0 + 80, 1004 );
setSeVolumeByWorkId( spep_0 + 80, SE009, 78 );

--気流纏う10
SE010 = playSe( spep_0 + 94, 1004 );
setSeVolumeByWorkId( spep_0 + 94, SE010, 71 );

--気流纏う11
SE011 = playSe( spep_0 + 108, 1004 );
setSeVolumeByWorkId( spep_0 + 108, SE011, 67 );

-- ** 白フェード ** --
entryFade( spep_0 + 150, 2, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;


--------------------------------------
--敵に攻撃、竜巻からミラ出現(146F)
--------------------------------------
-- ** エフェクト等 ** --
tatumaki_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --敵に攻撃、竜巻からミラ出現(ef_002)
setEffMoveKey( spep_1 + 0, tatumaki_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, tatumaki_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tatumaki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, tatumaki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tatumaki_f, 0 );
setEffRotateKey( spep_1 + 146, tatumaki_f, 0 );
setEffAlphaKey( spep_1 + 0, tatumaki_f, 255 );
setEffAlphaKey( spep_1 + 146, tatumaki_f, 255 );

tatumaki_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --敵に攻撃、竜巻からミラ出現(ef_003)
setEffMoveKey( spep_1 + 0, tatumaki_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, tatumaki_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tatumaki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, tatumaki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tatumaki_b, 0 );
setEffRotateKey( spep_1 + 146, tatumaki_b, 0 );
setEffAlphaKey( spep_1 + 0, tatumaki_b, 255 );
setEffAlphaKey( spep_1 + 146, tatumaki_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 146, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 26, 1, 106 );
changeAnime( spep_1 -3 + 30, 1, 108 );
changeAnime( spep_1 -3 + 36, 1, 106 );
changeAnime( spep_1 -3 + 40, 1, 108 );
changeAnime( spep_1 -3 + 56, 1, 106 );
changeAnime( spep_1 -3 + 60, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 105 );

setMoveKey( spep_1 + 0, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 1, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 2, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 3, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 4, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 5, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 6, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -28.9, 21.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -27.2, 20.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -25.3, 19.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -23.5, 18.4 , 0 );
setMoveKey( spep_1 -3 + 21, 1, -27.9, 22.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 46.7, 32.3 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 38.3, 23.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -43.4, 49.4 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -34.6, 48.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 23.9, 42.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 35.1, 23.5 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 41.6, 26.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -37.2, 44.9 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -35.9, 47.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 50.1, -5.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 34.7, 25.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 40.3, 14.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 41.6, 25.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 50.5, 21.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 22.7, 41.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 31.1, 19.2 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 38.2, 22.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -34.5, 39.5 , 0 );
setMoveKey( spep_1 -3 + 59, 1, -31.2, 43.3 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 52.6, -2.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 34.8, 22.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 43.4, 6.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 39.7, 25.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 48, 13.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 40.9, 21.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 49.5, -18.3 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 33.6, 23.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 27, -4.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 52.7, 19.7 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 33.9, 11.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 62.3, 54.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 69.7, 83.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 92.4, 128.2 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 95.1, 145 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 106.6, 174.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 116.4, 201.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 124.8, 226.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 132.2, 249.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 138.8, 270.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 144.6, 291.5 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 150, 311.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 154.9, 330.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 159.4, 348.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 163.6, 366.1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 165.5, 374 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 167.1, 380.3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 168.5, 385.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 169.8, 390.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 171, 394.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 172.2, 398.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 173.3, 402.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 174.4, 406.1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 175.5, 409.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 176.5, 412.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 177.5, 415.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 178.5, 418.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 179.5, 421.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 180.4, 424 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 181.3, 426.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 182.2, 428.8 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 183.1, 431.1 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 183.9, 433.1 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 184.8, 435.1 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 185.6, 436.8 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 185.6, 436.8 , 0 );

setScaleKey( spep_1 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 1, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 3, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 5, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 6, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 10, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 12, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 14, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 16, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 21, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 22, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 25, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 26, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 29, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 32, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 35, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 36, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 39, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 44, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 46, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 48, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 52, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 55, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 56, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 59, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 60, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 62, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 64, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 66, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 68, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 70, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 76, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 78, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 81, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 82, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 84, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 86, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 90, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 92, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 94, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 98, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 100, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 102, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 104, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 106, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 108, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 110, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 112, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 114, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 116, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 118, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 120, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 122, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 124, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 126, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 128, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 130, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 132, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 134, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 136, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 138, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 140, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 142, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 144, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 146, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 148, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 149, 1, 0.32, 0.32 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 25, 1, 0 );
setRotateKey( spep_1 -3 + 26, 1, -57 );
setRotateKey( spep_1 -3 + 29, 1, -57 );
setRotateKey( spep_1 -3 + 30, 1, 0 );
setRotateKey( spep_1 -3 + 35, 1, 0 );
setRotateKey( spep_1 -3 + 36, 1, -57 );
setRotateKey( spep_1 -3 + 39, 1, -57 );
setRotateKey( spep_1 -3 + 40, 1, 0 );
setRotateKey( spep_1 -3 + 55, 1, 0 );
setRotateKey( spep_1 -3 + 56, 1, -57 );
setRotateKey( spep_1 -3 + 59, 1, -57 );
setRotateKey( spep_1 -3 + 60, 1, 0 );
setRotateKey( spep_1 -3 + 149, 1, 0 );

-- ** 音 ** --
--敵に連続ヒット1
SE012 = playSe( spep_1 + 24, 1032 );
setSeVolumeByWorkId( spep_1 + 24, SE012, 75 );
--敵に連続ヒット2
SE013 = playSe( spep_1 + 24, 1026 );
--敵に連続ヒット3
SE014 = playSe( spep_1 + 26, 1031 );
setSeVolumeByWorkId( spep_1 + 26, SE014, 79 );
--敵に連続ヒット4
SE015 = playSe( spep_1 + 28, 1008 );
setSeVolumeByWorkId( spep_1 + 28, SE015, 79 );
--敵に連続ヒット5
SE016 = playSe( spep_1 + 40, 1032 );
setSeVolumeByWorkId( spep_1 + 40, SE016, 62 );
--敵に連続ヒット6
SE017 = playSe( spep_1 + 42, 1008 );
setSeVolumeByWorkId( spep_1 + 42, SE017, 92 );
--敵に連続ヒット7
SE018 = playSe( spep_1 + 56, 1032 );
setSeVolumeByWorkId( spep_1 + 56, SE018, 70 );
--敵に連続ヒット8
SE019 = playSe( spep_1 + 56, 1008 );
setSeVolumeByWorkId( spep_1 + 56, SE019, 71 );
--敵に連続ヒット9
SE020 = playSe( spep_1 + 74, 1032 );
setSeVolumeByWorkId( spep_1 + 74, SE020, 89 );
--敵に連続ヒット10
SE021 = playSe( spep_1 + 74, 1008 );

--気流からあらわる1
SE022 = playSe( spep_1 + 94, 1183 );
stopSe( spep_1 + 126, SE022, 34 );

--気流からあらわる2
SE023 = playSe( spep_1 + 94, 1227 );
stopSe( spep_1 + 126, SE023, 58 );

--気流からあらわる3
SE024 = playSe( spep_1 + 94, 1175 );
stopSe( spep_1 + 124, SE024, 48 );

--気流からあらわる4
SE025 = playSe( spep_1 + 94, 1278 );
stopSe( spep_1 + 124, SE025, 52 );

--気流からあらわる5
SE026 = playSe( spep_1 + 102, 1245 );
setSeVolumeByWorkId( spep_1 + 102, SE026, 58 );
setTimeStretch( SE026, 1.18, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 146, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景


-- ** 次の準備 ** --
spep_2 = spep_1 + 146;


--------------------------------------
--手からオーラ出現(126F)
--------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --手からオーラ出現（カットイン）(ef_004)
setEffMoveKey( spep_2 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, hand, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, hand, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hand, 0 );
setEffRotateKey( spep_2 + 126, hand, 0 );
setEffAlphaKey( spep_2 + 0, hand, 255 );
setEffAlphaKey( spep_2 + 126, hand, 255 );

spep_x = spep_2 + 32;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 45,  906, 80, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 45, shuchusen1, 80, 25 );
setEffMoveKey(   spep_2 + 45, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 125, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 45, shuchusen1, 1.4, 1.4 );
setEffScaleKey(  spep_2 + 125, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_2 + 45, shuchusen1, 0 );
setEffRotateKey( spep_2 + 125, shuchusen1, 0 );
setEffAlphaKey(  spep_2 + 45, shuchusen1, 455 );
setEffAlphaKey(  spep_2 + 125, shuchusen1, 455 );

-- ** 音 ** --
--顔カットイン
SE027 = playSe( spep_2 + 50, 1018 );

--手溜める1
SE028 = playSe( spep_2 + 52, 1161 );
setSeVolumeByWorkId( spep_2 + 52, SE028, 67 );
stopSe( spep_2 +126 + 20, SE028, 0 );

--手溜める2
SE029 = playSe( spep_2 + 52, 1222 );
stopSe( spep_2 +126 + 20, SE029, 0 );

--手溜める3
SE030 = playSe( spep_2 + 52, 1176 );
setSeVolumeByWorkId( spep_2 + 52, SE030, 37 );
stopSe( spep_2 +126 + 20, SE030, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 126, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 126-2;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 本気玉発生(136F)
------------------------------------------------------
-- ** エフェクト等 ** --
tama = entryEffectLife( spep_4 + 0, SP_05, 136, 0x100, -1, 0, 0, 0 );  --本気玉発生(ef_005)
setEffMoveKey( spep_4 + 0, tama, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, tama, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tama, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, tama, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tama, 0 );
setEffRotateKey( spep_4 + 136, tama, 0 );
setEffAlphaKey( spep_4 + 0, tama, 255 );
setEffAlphaKey( spep_4 + 136, tama, 255 );

-- ** 音 ** --
--気弾できる
SE032 = playSe( spep_4 + 70, 1242 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 0 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 15 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 30 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 45 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 60 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 75 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 90 );
setSeVolumeByWorkId( spep_4 + 84, SE032, 100 );
stopSe( spep_4 + 110, SE032, 28 );
setStartTimeMs( SE032,  1067 );

--手溜める２_1
SE033 = playSe( spep_4 + 0, 1176 );
setSeVolumeByWorkId( spep_4 + 0, SE033, 32 );
stopSe( spep_4 + 134, SE033, 32 );
--手溜める２_2
SE034 = playSe( spep_4 + 0, 1161 );
setSeVolumeByWorkId( spep_4 + 0, SE034, 36 );
stopSe( spep_4 + 78, SE034, 20 );

--腕を引く
SE035 = playSe( spep_4 + 32, 1003 );

--気弾できる1    
SE036 = playSe( spep_4 + 56, 1021 );
setSeVolumeByWorkId( spep_4 + 56, SE036, 129 );
setStartTimeMs( SE036,  200 );
setPitch( spep_4 + 56, SE036, -500 );
setTimeStretch( SE036, 0.67, 10, 1 );

--気弾できる2
SE037 = playSe( spep_4 + 50, 1154 );
setSeVolumeByWorkId( spep_4 + 50, SE037, 54 );
setPitch( spep_4 + 50, SE037, -700 );
setTimeStretch( SE037, 0.53, 10, 1 );

--気弾できる3
SE038 = playSe( spep_4 + 52, 1184 );
setSeVolumeByWorkId( spep_4 + 52, SE038, 153 );
stopSe( spep_4 + 78, SE038, 64 );

--気弾できる4
SE039 = playSe( spep_4 + 52, 1191 );
stopSe( spep_4 + 98, SE039, 48 );
setPitch( spep_4 + 52, SE039, -300 );
setTimeStretch( SE039, 0.8, 10, 1 );

--気弾できる5
SE040 = playSe( spep_4 + 56, 1240 );
setSeVolumeByWorkId( spep_4 + 56, SE040, 148 );
stopSe( spep_4 +116 + 6, SE040, 20 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 136, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;


------------------------------------------------------
-- 敵に本気玉着弾(276F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 276, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 276, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 276, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 276, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 276, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 276, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 276, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 35, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 67.9, 143.9 , 0 );
setMoveKey( spep_5 + 1, 1, 68.2, 144.3 , 0 );
setMoveKey( spep_5 + 2, 1, 68.5, 144.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 68.9, 145.2 , 0 );
setMoveKey( spep_5 -3 + 7, 1, 68.9, 145.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 69.2, 145.6 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 69.2, 145.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 69.5, 146.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 69.8, 146.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 70.2, 146.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 70.5, 147.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 70.8, 147.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 71.2, 148.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 71.5, 148.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 71.9, 149.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 72.2, 149.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 72.5, 150.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 72.8, 150.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 76.5, 153.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 78.5, 155.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 80.2, 157.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 50.3, 123.8 , 0 );
--setMoveKey( spep_5 -3 + 40, 1, 50.3, 123.9 , 0 );

setScaleKey( spep_5 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 1, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 2, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 6, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 7, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 8, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 9, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 10, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 12, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 14, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 16, 1, 0.33, 0.33 );
setScaleKey( spep_5 -3 + 18, 1, 0.33, 0.33 );
setScaleKey( spep_5 -3 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_5 -3 + 24, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 26, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 30, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 32, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 38, 1, 0.4, 0.4 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, 0 );
setRotateKey( spep_5 + 2, 1, 0 );
setRotateKey( spep_5 + 3, 1, 0 );
setRotateKey( spep_5 + 4, 1, 0 );
setRotateKey( spep_5 + 5, 1, 0 );
setRotateKey( spep_5 + 6, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, 0 );

-- ** 音 ** --
--気弾放つ1
SE041 = playSe( spep_5 + 18, 1027 );
setSeVolumeByWorkId( spep_5 + 18, SE041, 55 );

--気弾放つ2
SE042 = playSe( spep_5 + 18, 1145 );
stopSe( spep_5 + 38, SE042, 30 );
setPitch( spep_5 + 18, SE042, -300 );
setTimeStretch( SE042, 0.8, 10, 1 );

--気弾放つ3
SE043 = playSe( spep_5 + 18, 1177 );
setSeVolumeByWorkId( spep_5 + 18, SE043, 79 );
stopSe( spep_5 + 38, SE043, 30 );

--爆発1
SE044 = playSe( spep_5 + 36, 1023 );
setSeVolumeByWorkId( spep_5 + 36, SE044, 86 );

--爆発2
SE045 = playSe( spep_5 + 36, 1159 );
setSeVolumeByWorkId( spep_5 + 36, SE045, 72 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 276, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

-- ** ダメージ表示 ** --
--dealDamage( spep_5 + 38 );
--endPhase( spep_5 + 138 );
dealDamage( spep_5 + 78 );
endPhase( spep_5 + 260 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入→竜巻出現(156F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --導入→竜巻出現(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 156, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 156, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 25,  906, 125, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 25, shuchusen1, 125, 25 );
setEffMoveKey(   spep_0 + 25, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 151, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 25, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 151, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 25, shuchusen1, 0 );
setEffRotateKey( spep_0 + 151, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 25, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 151, shuchusen1, 255 );

-- ** 音 ** --
--気流纏う1
SE001 = playSe( spep_0 + 26, 1026 );

--気流纏う2
SE002 = playSe( spep_0 + 26, 1183 );
setSeVolumeByWorkId( spep_0 + 26, SE002, 76 );
stopSe( spep_0 + 130, SE002, 34 );

--気流纏う3
SE003 = playSe( spep_0 + 26, 1227 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 54 );
stopSe( spep_0 + 120, SE003, 60 );

--気流纏う4
SE004 = playSe( spep_0 + 26, 1175 );
setSeVolumeByWorkId( spep_0 + 26, SE004, 71 );
stopSe( spep_0 + 118, SE004, 48 );

--気流纏う5
SE005 = playSe( spep_0 + 26, 1278 );
stopSe( spep_0 + 118, SE005, 50 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 156, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE000, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 音 ** --
--気流纏う6
SE006 = playSe( spep_0 + 36, 1004 );

--気流纏う7
SE007 = playSe( spep_0 + 52, 1004 );
setSeVolumeByWorkId( spep_0 + 52, SE007, 84 );

--気流纏う8
SE008 = playSe( spep_0 + 66, 1004 );
setSeVolumeByWorkId( spep_0 + 66, SE008, 83 );

--気流纏う9
SE009 = playSe( spep_0 + 80, 1004 );
setSeVolumeByWorkId( spep_0 + 80, SE009, 78 );

--気流纏う10
SE010 = playSe( spep_0 + 94, 1004 );
setSeVolumeByWorkId( spep_0 + 94, SE010, 71 );

--気流纏う11
SE011 = playSe( spep_0 + 108, 1004 );
setSeVolumeByWorkId( spep_0 + 108, SE011, 67 );

-- ** 白フェード ** --
entryFade( spep_0 + 150, 2, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;


--------------------------------------
--敵に攻撃、竜巻からミラ出現(146F)
--------------------------------------
-- ** エフェクト等 ** --
tatumaki_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --敵に攻撃、竜巻からミラ出現(ef_002)
setEffMoveKey( spep_1 + 0, tatumaki_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, tatumaki_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tatumaki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, tatumaki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tatumaki_f, 0 );
setEffRotateKey( spep_1 + 146, tatumaki_f, 0 );
setEffAlphaKey( spep_1 + 0, tatumaki_f, 255 );
setEffAlphaKey( spep_1 + 146, tatumaki_f, 255 );

tatumaki_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --敵に攻撃、竜巻からミラ出現(ef_003)
setEffMoveKey( spep_1 + 0, tatumaki_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, tatumaki_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tatumaki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, tatumaki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tatumaki_b, 0 );
setEffRotateKey( spep_1 + 146, tatumaki_b, 0 );
setEffAlphaKey( spep_1 + 0, tatumaki_b, 255 );
setEffAlphaKey( spep_1 + 146, tatumaki_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 146, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 26, 1, 106 );
changeAnime( spep_1 -3 + 30, 1, 108 );
changeAnime( spep_1 -3 + 36, 1, 106 );
changeAnime( spep_1 -3 + 40, 1, 108 );
changeAnime( spep_1 -3 + 56, 1, 106 );
changeAnime( spep_1 -3 + 60, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 105 );

setMoveKey( spep_1 + 0, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 1, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 2, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 3, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 4, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 5, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 + 6, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -30.7, 22.1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -28.9, 21.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -27.2, 20.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -25.3, 19.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -23.5, 18.4 , 0 );
setMoveKey( spep_1 -3 + 21, 1, -27.9, 22.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 46.7, 32.3 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 38.3, 23.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -43.4, 49.4 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -34.6, 48.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 23.9, 42.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 35.1, 23.5 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 41.6, 26.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -37.2, 44.9 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -35.9, 47.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 50.1, -5.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 34.7, 25.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 40.3, 14.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 41.6, 25.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 50.5, 21.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 22.7, 41.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 31.1, 19.2 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 38.2, 22.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -34.5, 39.5 , 0 );
setMoveKey( spep_1 -3 + 59, 1, -31.2, 43.3 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 52.6, -2.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 34.8, 22.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 43.4, 6.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 39.7, 25.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 48, 13.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 40.9, 21.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 49.5, -18.3 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 33.6, 23.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 27, -4.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 52.7, 19.7 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 33.9, 11.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 62.3, 54.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 69.7, 83.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 92.4, 128.2 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 95.1, 145 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 106.6, 174.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 116.4, 201.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 124.8, 226.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 132.2, 249.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 138.8, 270.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 144.6, 291.5 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 150, 311.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 154.9, 330.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 159.4, 348.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 163.6, 366.1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 165.5, 374 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 167.1, 380.3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 168.5, 385.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 169.8, 390.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 171, 394.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 172.2, 398.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 173.3, 402.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 174.4, 406.1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 175.5, 409.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 176.5, 412.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 177.5, 415.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 178.5, 418.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 179.5, 421.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 180.4, 424 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 181.3, 426.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 182.2, 428.8 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 183.1, 431.1 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 183.9, 433.1 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 184.8, 435.1 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 185.6, 436.8 , 0 );
setMoveKey( spep_1 -3 + 149, 1, 185.6, 436.8 , 0 );

setScaleKey( spep_1 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 1, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 3, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 5, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 6, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 10, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 12, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 14, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 16, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 21, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 22, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 25, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 26, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 29, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 32, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 35, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 36, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 39, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 44, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 46, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 48, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 52, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 55, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 56, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 59, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 60, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 62, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 64, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 66, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 68, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 70, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 76, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 78, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 81, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 82, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 84, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 86, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 90, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 92, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 94, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 98, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 100, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 102, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 104, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 106, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 108, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 110, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 112, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 + 114, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 116, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 118, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 120, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 122, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 + 124, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 126, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 128, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 130, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 132, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 134, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 136, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 138, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 140, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 142, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 144, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 146, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 148, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 149, 1, 0.32, 0.32 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 25, 1, 0 );
setRotateKey( spep_1 -3 + 26, 1, -57 );
setRotateKey( spep_1 -3 + 29, 1, -57 );
setRotateKey( spep_1 -3 + 30, 1, 0 );
setRotateKey( spep_1 -3 + 35, 1, 0 );
setRotateKey( spep_1 -3 + 36, 1, -57 );
setRotateKey( spep_1 -3 + 39, 1, -57 );
setRotateKey( spep_1 -3 + 40, 1, 0 );
setRotateKey( spep_1 -3 + 55, 1, 0 );
setRotateKey( spep_1 -3 + 56, 1, -57 );
setRotateKey( spep_1 -3 + 59, 1, -57 );
setRotateKey( spep_1 -3 + 60, 1, 0 );
setRotateKey( spep_1 -3 + 149, 1, 0 );

-- ** 音 ** --
--敵に連続ヒット1
SE012 = playSe( spep_1 + 24, 1032 );
setSeVolumeByWorkId( spep_1 + 24, SE012, 75 );
--敵に連続ヒット2
SE013 = playSe( spep_1 + 24, 1026 );
--敵に連続ヒット3
SE014 = playSe( spep_1 + 26, 1031 );
setSeVolumeByWorkId( spep_1 + 26, SE014, 79 );
--敵に連続ヒット4
SE015 = playSe( spep_1 + 28, 1008 );
setSeVolumeByWorkId( spep_1 + 28, SE015, 79 );
--敵に連続ヒット5
SE016 = playSe( spep_1 + 40, 1032 );
setSeVolumeByWorkId( spep_1 + 40, SE016, 62 );
--敵に連続ヒット6
SE017 = playSe( spep_1 + 42, 1008 );
setSeVolumeByWorkId( spep_1 + 42, SE017, 92 );
--敵に連続ヒット7
SE018 = playSe( spep_1 + 56, 1032 );
setSeVolumeByWorkId( spep_1 + 56, SE018, 70 );
--敵に連続ヒット8
SE019 = playSe( spep_1 + 56, 1008 );
setSeVolumeByWorkId( spep_1 + 56, SE019, 71 );
--敵に連続ヒット9
SE020 = playSe( spep_1 + 74, 1032 );
setSeVolumeByWorkId( spep_1 + 74, SE020, 89 );
--敵に連続ヒット10
SE021 = playSe( spep_1 + 74, 1008 );

--気流からあらわる1
SE022 = playSe( spep_1 + 94, 1183 );
stopSe( spep_1 + 126, SE022, 34 );

--気流からあらわる2
SE023 = playSe( spep_1 + 94, 1227 );
stopSe( spep_1 + 126, SE023, 58 );

--気流からあらわる3
SE024 = playSe( spep_1 + 94, 1175 );
stopSe( spep_1 + 124, SE024, 48 );

--気流からあらわる4
SE025 = playSe( spep_1 + 94, 1278 );
stopSe( spep_1 + 124, SE025, 52 );

--気流からあらわる5
SE026 = playSe( spep_1 + 102, 1245 );
setSeVolumeByWorkId( spep_1 + 102, SE026, 58 );
setTimeStretch( SE026, 1.18, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 146, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景


-- ** 次の準備 ** --
spep_2 = spep_1 + 146;


--------------------------------------
--手からオーラ出現(126F)
--------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --手からオーラ出現（カットイン）(ef_004)
setEffMoveKey( spep_2 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, hand, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, hand, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hand, 0 );
setEffRotateKey( spep_2 + 126, hand, 0 );
setEffAlphaKey( spep_2 + 0, hand, 255 );
setEffAlphaKey( spep_2 + 126, hand, 255 );

spep_x = spep_2 + 32;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 45,  906, 80, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 45, shuchusen1, 80, 25 );
setEffMoveKey(   spep_2 + 45, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 125, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 45, shuchusen1, 1.4, 1.4 );
setEffScaleKey(  spep_2 + 125, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_2 + 45, shuchusen1, 0 );
setEffRotateKey( spep_2 + 125, shuchusen1, 0 );
setEffAlphaKey(  spep_2 + 45, shuchusen1, 455 );
setEffAlphaKey(  spep_2 + 125, shuchusen1, 455 );

-- ** 音 ** --
--顔カットイン
--SE027 = playSe( spep_2 + 50, 1018 );

--手溜める1
SE028 = playSe( spep_2 + 52, 1161 );
setSeVolumeByWorkId( spep_2 + 52, SE028, 67 );
stopSe( spep_2 +126 + 20, SE028, 0 );

--手溜める2
SE029 = playSe( spep_2 + 52, 1222 );
stopSe( spep_2 +126 + 20, SE029, 0 );

--手溜める3
SE030 = playSe( spep_2 + 52, 1176 );
setSeVolumeByWorkId( spep_2 + 52, SE030, 37 );
stopSe( spep_2 +126 + 20, SE030, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 126, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 126-2;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 本気玉発生(136F)
------------------------------------------------------
-- ** エフェクト等 ** --
tama = entryEffectLife( spep_4 + 0, SP_05r, 136, 0x100, -1, 0, 0, 0 );  --本気玉発生(ef_005)
setEffMoveKey( spep_4 + 0, tama, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, tama, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tama, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, tama, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tama, 0 );
setEffRotateKey( spep_4 + 136, tama, 0 );
setEffAlphaKey( spep_4 + 0, tama, 255 );
setEffAlphaKey( spep_4 + 136, tama, 255 );

-- ** 音 ** --
--気弾できる
SE032 = playSe( spep_4 + 70, 1242 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 0 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 15 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 30 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 45 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 60 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 75 );
setSeVolumeByWorkId( spep_4 + 70, SE032, 90 );
setSeVolumeByWorkId( spep_4 + 84, SE032, 100 );
stopSe( spep_4 + 110, SE032, 28 );
setStartTimeMs( SE032,  1067 );

--手溜める２_1
SE033 = playSe( spep_4 + 0, 1176 );
setSeVolumeByWorkId( spep_4 + 0, SE033, 32 );
stopSe( spep_4 + 134, SE033, 32 );
--手溜める２_2
SE034 = playSe( spep_4 + 0, 1161 );
setSeVolumeByWorkId( spep_4 + 0, SE034, 36 );
stopSe( spep_4 + 78, SE034, 20 );

--腕を引く
SE035 = playSe( spep_4 + 32, 1003 );

--気弾できる1    
SE036 = playSe( spep_4 + 56, 1021 );
setSeVolumeByWorkId( spep_4 + 56, SE036, 129 );
setStartTimeMs( SE036,  200 );
setPitch( spep_4 + 56, SE036, -500 );
setTimeStretch( SE036, 0.67, 10, 1 );

--気弾できる2
SE037 = playSe( spep_4 + 50, 1154 );
setSeVolumeByWorkId( spep_4 + 50, SE037, 54 );
setPitch( spep_4 + 50, SE037, -700 );
setTimeStretch( SE037, 0.53, 10, 1 );

--気弾できる3
SE038 = playSe( spep_4 + 52, 1184 );
setSeVolumeByWorkId( spep_4 + 52, SE038, 153 );
stopSe( spep_4 + 78, SE038, 64 );

--気弾できる4
SE039 = playSe( spep_4 + 52, 1191 );
stopSe( spep_4 + 98, SE039, 48 );
setPitch( spep_4 + 52, SE039, -300 );
setTimeStretch( SE039, 0.8, 10, 1 );

--気弾できる5
SE040 = playSe( spep_4 + 56, 1240 );
setSeVolumeByWorkId( spep_4 + 56, SE040, 148 );
stopSe( spep_4 +116 + 6, SE040, 20 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 136, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;


------------------------------------------------------
-- 敵に本気玉着弾(276F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 276, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 276, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 276, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 276, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 276, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 276, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 276, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 35, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 67.9, 143.9 , 0 );
setMoveKey( spep_5 + 1, 1, 68.2, 144.3 , 0 );
setMoveKey( spep_5 + 2, 1, 68.5, 144.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 68.9, 145.2 , 0 );
setMoveKey( spep_5 -3 + 7, 1, 68.9, 145.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 69.2, 145.6 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 69.2, 145.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 69.5, 146.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 69.8, 146.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 70.2, 146.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 70.5, 147.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 70.8, 147.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 71.2, 148.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 71.5, 148.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 71.9, 149.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 72.2, 149.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 72.5, 150.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 72.8, 150.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 76.5, 153.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 78.5, 155.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 80.2, 157.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 50.3, 123.8 , 0 );
--setMoveKey( spep_5 -3 + 40, 1, 50.3, 123.9 , 0 );

setScaleKey( spep_5 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 1, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 2, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 6, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 7, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 8, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 9, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 10, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 12, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 14, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 16, 1, 0.33, 0.33 );
setScaleKey( spep_5 -3 + 18, 1, 0.33, 0.33 );
setScaleKey( spep_5 -3 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_5 -3 + 24, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 26, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 30, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 32, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 38, 1, 0.4, 0.4 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, 0 );
setRotateKey( spep_5 + 2, 1, 0 );
setRotateKey( spep_5 + 3, 1, 0 );
setRotateKey( spep_5 + 4, 1, 0 );
setRotateKey( spep_5 + 5, 1, 0 );
setRotateKey( spep_5 + 6, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, 0 );

-- ** 音 ** --
--気弾放つ1
SE041 = playSe( spep_5 + 18, 1027 );
setSeVolumeByWorkId( spep_5 + 18, SE041, 55 );

--気弾放つ2
SE042 = playSe( spep_5 + 18, 1145 );
stopSe( spep_5 + 38, SE042, 30 );
setPitch( spep_5 + 18, SE042, -300 );
setTimeStretch( SE042, 0.8, 10, 1 );

--気弾放つ3
SE043 = playSe( spep_5 + 18, 1177 );
setSeVolumeByWorkId( spep_5 + 18, SE043, 79 );
stopSe( spep_5 + 38, SE043, 30 );

--爆発1
SE044 = playSe( spep_5 + 36, 1023 );
setSeVolumeByWorkId( spep_5 + 36, SE044, 86 );

--爆発2
SE045 = playSe( spep_5 + 36, 1159 );
setSeVolumeByWorkId( spep_5 + 36, SE045, 72 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 276, 0, 0, 0, 0, 180 );  --黒　背景       -- ベース暗め　背景

-- ** ダメージ表示 ** --
--dealDamage( spep_5 + 38 );
--endPhase( spep_5 + 138 );
dealDamage( spep_5 + 78 );
endPhase( spep_5 + 260 );

end