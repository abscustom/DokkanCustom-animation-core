--1020310:孫悟空(身勝手の極意)_超極限かめはめ波
--sp_effect_a1_00264
--sp2107

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
SP_01 = 156654;  --前半　手前   ef_001
SP_02 = 156655;  --前半　奥    ef_002
SP_03 = 156656;  --後半　手前   ef_003
SP_04 = 156657;  --後半　奥    ef_004

--敵側
SP_01r = 156658;  --敵側：前半　手前    ef_001r

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
-- 前半(508F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --前半　手前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 508, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 508, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 508, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 508, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --前半　奥(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 508, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 508, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 508, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 508, first_b, 255 );

spep_x = spep_0 + 130;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--tgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
--etEffShake( spep_x + 16, ctgogo, 68, 10 );
--etEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
--etEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
--etEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--etEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--etEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--etEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--etEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--etEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--etEffRotateKey( spep_x + 16, ctgogo, 0 );
--etEffRotateKey( spep_x + 84, ctgogo, 0 );
--etEffAlphaKey( spep_x + 16, ctgogo, 255 );
--etEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--入り光
SE001 = playSe( spep_0 + 0, 1278 );
stopSe( spep_0 + 40, SE001, 34 );

--入り光
SE002 = playSe( spep_0 + 0, 1117 );
stopSe( spep_0 + 40, SE002, 34 );

--飛んできて振りかぶる
SE003 = playSe( spep_0 + 60, 1183 );
setSeVolumeByWorkId( spep_0 + 60, SE003, 5 );
setSeVolumeByWorkId( spep_0 + 64, SE003, 10 );
setSeVolumeByWorkId( spep_0 + 68, SE003, 20 );
setSeVolumeByWorkId( spep_0 + 72, SE003, 40 );
setSeVolumeByWorkId( spep_0 + 76, SE003, 60 );
setSeVolumeByWorkId( spep_0 + 80, SE003, 85 );
setSeVolumeByWorkId( spep_0 + 86, SE003, 100 );
setStartTimeMs( SE003,  733 );

--ダンっ
SE004 = playSe( spep_0 + 40, 1182 );
setSeVolumeByWorkId( spep_0 + 40, SE004, 141 );

--飛んできて振りかぶる
SE005 = playSe( spep_0 + 78, 1118 );
setSeVolumeByWorkId( spep_0 + 78, SE005, 25 );
stopSe( spep_0 + 124, SE005, 20 );
setPitch( spep_0 + 78, SE005, 100 );
setTimeStretch( SE005, 1.07, 10, 1 );

--飛んできて振りかぶる
SE006 = playSe( spep_0 + 90, 1182 );
setSeVolumeByWorkId( spep_0 + 90, SE006, 10 );
setSeVolumeByWorkId( spep_0 + 94, SE006, 20 );
setSeVolumeByWorkId( spep_0 + 98, SE006, 40 );
setSeVolumeByWorkId( spep_0 + 102, SE006, 60 );
setSeVolumeByWorkId( spep_0 + 106, SE006, 80 );
setSeVolumeByWorkId( spep_0 + 110, SE006, 100 );
setSeVolumeByWorkId( spep_0 + 90, SE006, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 510, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 140, 1, 1 );
setDisp( spep_0 -3 + 218, 1, 0 );
setDisp( spep_0 -3 + 280, 1, 1 );
setDisp( spep_0 -3 + 364, 1, 0 );
setDisp( spep_0 -3 + 384, 1, 1 );
setDisp( spep_0 -3 + 511, 1, 0 );
changeAnime( spep_0 -3 + 140, 1, 6 );
changeAnime( spep_0 -3 + 212, 1, 8 );
changeAnime( spep_0 -3 + 280, 1, 7 );
changeAnime( spep_0 -3 + 306, 1, 107 );
changeAnime( spep_0 -3 + 316, 1, 5 );
changeAnime( spep_0 -3 + 384, 1, 107 );
changeAnime( spep_0 -3 + 438, 1, 7 );
changeAnime( spep_0 -3 + 470, 1, 7 );

setBlendColor( spep_0 + 201, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_0 + 208, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_0 + 209, 1, 3, 1.0, 1.0, 1.0, 0 );

a1=10;
b1=30;
c1=15;
setMoveKey( spep_0 -3 + 140, 1, -42.7 +a1, 27 -b1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, -31.8 +a1, 32.7 -b1 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -25.9 +a1, 51.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -23.1 +a1, 37.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -16.5 +a1, 47 -c1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -19.1 +a1, 43.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -14.5 +a1, 48.9 -c1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -17.3 +a1, 43 -c1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -16.7 +a1, 43.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -17.4 +a1, 38.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -17.7 +a1, 51.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -13.6 +a1, 39 -c1 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -15.5 +a1, 43.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -14.2 +a1, 43.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -14.9 +a1, 49.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -17.4 +a1, 40.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -16.2 +a1, 44.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -15.2 +a1, 44.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -17.9 +a1, 46.8 -c1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -15.5 +a1, 42.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -11.2 +a1, 46.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -11.9 +a1, 39.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -12.5 +a1, 47.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -12.4 +a1, 44.8 -c1 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -15.3 +a1, 47.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -14.9 +a1, 44.6 -c1 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -13.8 +a1, 45.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -13.8 +a1, 46.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -13.7 +a1, 47.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -13.7 +a1, 47.3 -c1 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -13.7 +a1, 47.3 -c1 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -13.7 +a1, 47.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -14 +a1, 47 -c1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -14 +a1, 47 -c1 , 0 );
setMoveKey( spep_0 -3 + 211, 1, -14 +a1, 47 -c1 , 0 );

a2=20;
b2=0;
setMoveKey( spep_0 -3 + 212, 1, -65 +a2, 58.1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -63.5 +a2, 1.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -75 +a2, 34.1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -75 +a2, 34.1 , 0 );
--
setMoveKey( spep_0 -3 + 280, 1, 138.3, 167.4 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 136.2, 167.9 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 136.1, 157.3 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 134, 164.8 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 130.9, 163.3 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 131.8, 154.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 126.7, 160.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 125.6, 157.7 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 123.3, 156.2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 117, 144.5 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 39.8, -5.3 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 12.1, -57.3 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 12.1, -57.3 , 0 );
setMoveKey( spep_0 -3 + 305, 1, 12.1, -57.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 115.7, -671.7 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 115.7, -671.7 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 93.5, -499.3 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 93.5, -499.3 , 0 );
setMoveKey( spep_0 -3 + 315, 1, 93.5, -499.3 , 0 );
setMoveKey( spep_0 -3 + 316, 1, -17.2, 33.5 , 0 );
setMoveKey( spep_0 -3 + 318, 1, -10.6, 67.7 , 0 );
setMoveKey( spep_0 -3 + 320, 1, -3.3, 106.2 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 0.1, 124.1 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 1.1, 129.3 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 1.6, 131.6 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 1.8, 132.8 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 1.9, 133.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 2, 133.9 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 2.1, 134.1 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 2.1, 134.3 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 2.2, 134.6 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 2.2, 134.8 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 2.2, 135 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 2.3, 135.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 1.1, 125.3 , 0 );
setMoveKey( spep_0 -3 + 348, 1, -3.2, 90.1 , 0 );
setMoveKey( spep_0 -3 + 350, 1, -11.6, 21.1 , 0 );
setMoveKey( spep_0 -3 + 352, 1, -24.6, -86.7 , 0 );
setMoveKey( spep_0 -3 + 354, 1, -41.1, -224 , 0 );
setMoveKey( spep_0 -3 + 356, 1, -59, -373.6 , 0 );
setMoveKey( spep_0 -3 + 358, 1, -70, -525.3 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -90.3, -756.4 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -130.6, -1149.1 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -130.6, -1149.1 , 0 );
--
setMoveKey( spep_0 -3 + 384, 1, 120.1, 86 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 120.2, 85.7 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 120.3, 85.4 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 120.4, 85.1 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 120.5, 84.9 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 120.6, 84.6 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 120.7, 84.3 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 120.8, 84 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 120.8, 83.8 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 120.9, 83.5 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 121, 83.3 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 121.1, 83 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 121.2, 82.8 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 121.3, 82.6 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 121.3, 82.3 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 121.4, 82.1 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 121.5, 81.9 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 121.5, 81.7 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 121.6, 81.5 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 121.7, 81.3 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 121.7, 81.1 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 121.8, 80.9 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 121.9, 80.7 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 121.9, 80.5 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 122, 80.4 , 0 );
setMoveKey( spep_0 -3 + 434, 1, 122, 80.2 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 122.1, 80 , 0 );
setMoveKey( spep_0 -3 + 437, 1, 122.1, 80 , 0 );

a1 = 200;
setMoveKey( spep_0 -3 + 438, 1, -179.4 +a1, -290.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -181.4 +a1, -260.3 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -182.4 +a1, -213.9 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -191.4 +a1, -263 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -191.4 +a1, -262.5 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -171.4 +a1, -238.5 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -188.4 +a1, -238.9 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -175.4 +a1, -216.8 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -185.4 +a1, -236.1 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -185.4 +a1, -235.9 , 0 );
setMoveKey( spep_0 -3 + 458, 1, -139.4 +a1, 257.4 , 0 );
setMoveKey( spep_0 -3 + 460, 1, -143.4 +a1, 242.4 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -154.3 +a1, 504 , 0 );
setMoveKey( spep_0 -3 + 464, 1, -149.6 +a1, 520.4 , 0 );
setMoveKey( spep_0 -3 + 466, 1, -157 +a1, 570.8 , 0 );
setMoveKey( spep_0 -3 + 468, 1, -167.3 +a1, 671.1 , 0 );
setMoveKey( spep_0 -3 + 469, 1, -167.3 +a1, 671.1 , 0 );

setMoveKey( spep_0 -3 + 470, 1, 158, 129.9 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 158.4, 130.2 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 157.9, 130.2 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 155, 128.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 150.7, 126.4 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 144.7, 123.6 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 136.3, 120.1 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 125.7, 114.6 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 111.7, 105 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 93, 91.6 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 65.8, 73.1 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 23, 42.8 , 0 );
setMoveKey( spep_0 -3 + 494, 1, -40.5, -4.6 , 0 );
setMoveKey( spep_0 -3 + 496, 1, -142.4, -80.4 , 0 );
setMoveKey( spep_0 -3 + 498, 1, -290.4, -190 , 0 );
setMoveKey( spep_0 -3 + 500, 1, -392.7, -265.4 , 0 );
setMoveKey( spep_0 -3 + 502, 1, -437.7, -299.3 , 0 );
setMoveKey( spep_0 -3 + 504, 1, -459.6, -314 , 0 );
setMoveKey( spep_0 -3 + 506, 1, -449.1, -301 , 0 );
setMoveKey( spep_0 -3 + 511, 1, -449.1, -301 , 0 );

setScaleKey( spep_0 -3 + 140, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 142, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 144, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 146, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 148, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 150, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 152, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 154, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 156, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 158, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 160, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 162, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 164, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 166, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 168, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 172, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 174, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 176, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 178, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 182, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 184, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 188, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 190, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 202, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 204, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 210, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 211, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 212, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 216, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 218, 1, 0.49, 0.49 );

s1=0.2;
s2=0.02;
setScaleKey( spep_0 -3 + 280, 1, 0.06 +s2, 0.06 +s2 );
setScaleKey( spep_0 -3 + 282, 1, 0.07 +s2, 0.07 +s2 );
setScaleKey( spep_0 -3 + 284, 1, 0.08 +s2, 0.08 +s2 );
setScaleKey( spep_0 -3 + 286, 1, 0.08 +s2, 0.08 +s2 );
setScaleKey( spep_0 -3 + 288, 1, 0.09 +s2, 0.09 +s2 );
setScaleKey( spep_0 -3 + 290, 1, 0.09 +s2, 0.09 +s2 );
setScaleKey( spep_0 -3 + 292, 1, 0.10 +s2, 0.10 +s2 );
setScaleKey( spep_0 -3 + 294, 1, 0.10 +s2, 0.10 +s2 );
setScaleKey( spep_0 -3 + 296, 1, 0.11 +s2, 0.11 +s2 );
setScaleKey( spep_0 -3 + 298, 1, 0.16 +s2, 0.16 +s2 );
setScaleKey( spep_0 -3 + 300, 1, 0.80 +s2, 0.80 +s2 );
setScaleKey( spep_0 -3 + 302, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_0 -3 + 304, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_0 -3 + 305, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_0 -3 + 306, 1, 4.13, 4.13 );
setScaleKey( spep_0 -3 + 308, 1, 4.13, 4.13 );
setScaleKey( spep_0 -3 + 310, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 314, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 315, 1, 2.77, 2.77 );

setScaleKey( spep_0 -3 + 316, 1, 4.11 +s1, 4.11 +s1 );
setScaleKey( spep_0 -3 + 318, 1, 2.8 +s1, 2.8 +s1 );
setScaleKey( spep_0 -3 + 320, 1, 1.33 +s1, 1.33 +s1 );
setScaleKey( spep_0 -3 + 322, 1, 0.65 +s1, 0.65 +s1 );
setScaleKey( spep_0 -3 + 324, 1, 0.45 +s1, 0.45 +s1 );
setScaleKey( spep_0 -3 + 326, 1, 0.36 +s1, 0.36 +s1 );
setScaleKey( spep_0 -3 + 328, 1, 0.32 +s1, 0.32 +s1 );
setScaleKey( spep_0 -3 + 330, 1, 0.29 +s1, 0.29 +s1 );
setScaleKey( spep_0 -3 + 332, 1, 0.28 +s1, 0.28 +s1 );
setScaleKey( spep_0 -3 + 334, 1, 0.27 +s1, 0.27 +s1 );
setScaleKey( spep_0 -3 + 336, 1, 0.26 +s1, 0.26 +s1 );
setScaleKey( spep_0 -3 + 338, 1, 0.25 +s1, 0.25 +s1 );
setScaleKey( spep_0 -3 + 340, 1, 0.24 +s1, 0.24 +s1 );
setScaleKey( spep_0 -3 + 342, 1, 0.23 +s1, 0.23 +s1 );
setScaleKey( spep_0 -3 + 344, 1, 0.23 +s1, 0.23 +s1 );
setScaleKey( spep_0 -3 + 346, 1, 0.39 +s1, 0.39 +s1 );

s3=0.3;
setScaleKey( spep_0 -3 + 348, 1, 0.94 +s1 +s3, 0.94 +s1 +s3 );
setScaleKey( spep_0 -3 + 350, 1, 2.02 +s1 +s3, 2.02 +s1 +s3 );
setScaleKey( spep_0 -3 + 352, 1, 3.68 +s1 +s3, 3.68 +s1 +s3 );
setScaleKey( spep_0 -3 + 354, 1, 5.76 +s1 +s3, 5.76 +s1 +s3 );
setScaleKey( spep_0 -3 + 356, 1, 7.93 +s1 +s3, 7.93 +s1 +s3 );
setScaleKey( spep_0 -3 + 358, 1, 9.57 +s1 +s3, 9.57 +s1 +s3 );
setScaleKey( spep_0 -3 + 360, 1, 11.98 +s1 +s3, 11.98 +s1 +s3 );
setScaleKey( spep_0 -3 + 362, 1, 15.9 +s1 +s3, 15.9 +s1 +s3 );
setScaleKey( spep_0 -3 + 364, 1, 15.9 +s1 +s3, 15.9 +s1 +s3 );
--
setScaleKey( spep_0 -3 + 384, 1, 0.72, 0.72 );
--setScaleKey( spep_0 -3 + 386, 1, 0.73, 0.73 );
--setScaleKey( spep_0 -3 + 396, 1, 0.73, 0.73 );
--setScaleKey( spep_0 -3 + 398, 1, 0.74, 0.74 );
--setScaleKey( spep_0 -3 + 410, 1, 0.74, 0.74 );
--setScaleKey( spep_0 -3 + 412, 1, 0.75, 0.75 );
--setScaleKey( spep_0 -3 + 426, 1, 0.75, 0.75 );
--setScaleKey( spep_0 -3 + 428, 1, 0.76, 0.76 );
--setScaleKey( spep_0 -3 + 437, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 437, 1, 0.76, 0.76 );

setScaleKey( spep_0 -3 + 438, 1, 2.58 +s1, 2.58 +s1 );
setScaleKey( spep_0 -3 + 469, 1, 2.58 +s1, 2.58 +s1 );

setScaleKey( spep_0 -3 + 470, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 474, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 476, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 478, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 480, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 482, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 484, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 486, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 488, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 490, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 492, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 494, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 496, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 498, 1, 1.57, 1.57 );
setScaleKey( spep_0 -3 + 500, 1, 1.89, 1.89 );
setScaleKey( spep_0 -3 + 502, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 504, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 506, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 511, 1, 2.09, 2.09 );


setRotateKey( spep_0 -3 + 140, 1, 49.2 );
setRotateKey( spep_0 -3 + 142, 1, 45.7 );
setRotateKey( spep_0 -3 + 144, 1, 42.2 );
setRotateKey( spep_0 -3 + 146, 1, 39.9 );
setRotateKey( spep_0 -3 + 148, 1, 39.7 );
setRotateKey( spep_0 -3 + 150, 1, 39.5 );
setRotateKey( spep_0 -3 + 152, 1, 39.4 );
setRotateKey( spep_0 -3 + 154, 1, 39.2 );
setRotateKey( spep_0 -3 + 156, 1, 39 );
setRotateKey( spep_0 -3 + 158, 1, 38.8 );
setRotateKey( spep_0 -3 + 160, 1, 38.7 );
setRotateKey( spep_0 -3 + 162, 1, 38.5 );
setRotateKey( spep_0 -3 + 164, 1, 38.4 );
setRotateKey( spep_0 -3 + 166, 1, 38.2 );
setRotateKey( spep_0 -3 + 168, 1, 38 );
setRotateKey( spep_0 -3 + 170, 1, 37.9 );
setRotateKey( spep_0 -3 + 172, 1, 37.8 );
setRotateKey( spep_0 -3 + 174, 1, 37.6 );
setRotateKey( spep_0 -3 + 176, 1, 37.5 );
setRotateKey( spep_0 -3 + 178, 1, 37.4 );
setRotateKey( spep_0 -3 + 180, 1, 37.3 );
setRotateKey( spep_0 -3 + 182, 1, 37.1 );
setRotateKey( spep_0 -3 + 184, 1, 37 );
setRotateKey( spep_0 -3 + 186, 1, 36.9 );
setRotateKey( spep_0 -3 + 188, 1, 36.8 );
setRotateKey( spep_0 -3 + 190, 1, 36.7 );
setRotateKey( spep_0 -3 + 192, 1, 36.6 );
setRotateKey( spep_0 -3 + 194, 1, 36.5 );
setRotateKey( spep_0 -3 + 196, 1, 36.4 );
setRotateKey( spep_0 -3 + 198, 1, 36.3 );
setRotateKey( spep_0 -3 + 200, 1, 36.2 );
setRotateKey( spep_0 -3 + 210, 1, 36.2 );
setRotateKey( spep_0 -3 + 211, 1, 36.2 );
setRotateKey( spep_0 -3 + 212, 1, -18.1 );
setRotateKey( spep_0 -3 + 216, 1, -18.1 );
setRotateKey( spep_0 -3 + 218, 1, -18.1 );
--
setRotateKey( spep_0 -3 + 280, 1, 0 );
setRotateKey( spep_0 -3 + 296, 1, 0 );
setRotateKey( spep_0 -3 + 298, 1, -0.2 );
setRotateKey( spep_0 -3 + 300, 1, -3 );
setRotateKey( spep_0 -3 + 302, 1, -4 );
setRotateKey( spep_0 -3 + 304, 1, -4 );
setRotateKey( spep_0 -3 + 305, 1, -4 );
setRotateKey( spep_0 -3 + 306, 1, -122 );
setRotateKey( spep_0 -3 + 314, 1, -122 );
setRotateKey( spep_0 -3 + 315, 1, -122 );
setRotateKey( spep_0 -3 + 316, 1, 21.3 );
setRotateKey( spep_0 -3 + 362, 1, 21.3 );
setRotateKey( spep_0 -3 + 364, 1, 21.3 );
--
setRotateKey( spep_0 -3 + 384, 1, -26 );
setRotateKey( spep_0 -3 + 437, 1, -26 );
setRotateKey( spep_0 -3 + 438, 1, 137.1 );
setRotateKey( spep_0 -3 + 456, 1, 137.1 );
setRotateKey( spep_0 -3 + 458, 1, 123 );
setRotateKey( spep_0 -3 + 460, 1, 123 );
setRotateKey( spep_0 -3 + 462, 1, 121 );
setRotateKey( spep_0 -3 + 464, 1, 119.3 );
setRotateKey( spep_0 -3 + 466, 1, 117.7 );
setRotateKey( spep_0 -3 + 468, 1, 116 );
setRotateKey( spep_0 -3 + 469, 1, 116 );
setRotateKey( spep_0 -3 + 470, 1, 62 );
setRotateKey( spep_0 -3 + 472, 1, 61.7 );
setRotateKey( spep_0 -3 + 474, 1, 60.5 );
setRotateKey( spep_0 -3 + 476, 1, 58.3 );
setRotateKey( spep_0 -3 + 478, 1, 54.8 );
setRotateKey( spep_0 -3 + 480, 1, 50.3 );
setRotateKey( spep_0 -3 + 482, 1, 45.3 );
setRotateKey( spep_0 -3 + 484, 1, 40.7 );
setRotateKey( spep_0 -3 + 486, 1, 36.8 );
setRotateKey( spep_0 -3 + 488, 1, 33.6 );
setRotateKey( spep_0 -3 + 490, 1, 31.1 );
setRotateKey( spep_0 -3 + 492, 1, 29.2 );
setRotateKey( spep_0 -3 + 494, 1, 27.8 );
setRotateKey( spep_0 -3 + 496, 1, 26.7 );
setRotateKey( spep_0 -3 + 498, 1, 25.9 );
setRotateKey( spep_0 -3 + 500, 1, 25.4 );
setRotateKey( spep_0 -3 + 502, 1, 25.1 );
setRotateKey( spep_0 -3 + 504, 1, 25 );
setRotateKey( spep_0 -3 + 511, 1, 25 );

-- ** 音 ** --
--飛んできて振りかぶる
SE007 = playSe( spep_0 + 106, 1167 );
setSeVolumeByWorkId( spep_0 + 106, SE007, 61 );
stopSe( spep_0 + 132, SE007, 6 );
setPitch( spep_0 + 106, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );

--パンチ
SE008 = playSe( spep_0 + 126, 1233 );
setSeVolumeByWorkId( spep_0 + 126, SE008, 24 );
setSeVolumeByWorkId( spep_0 + 127, SE008, 58 );
setSeVolumeByWorkId( spep_0 + 128, SE008, 78 );
setStartTimeMs( SE008,  133 );
setPitch( spep_0 + 126, SE008, 400 );
setTimeStretch( SE008, 1.27, 10, 1 );

----飛んできて振りかぶる
SE009 = playSe( spep_0 + 124, 1116 );
stopSe( spep_0 + 146, SE009, 6 );
setPitch( spep_0 + 124, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

--光る
SE010 = playSe( spep_0 + 174, 1216,"",0.6 );
setSeVolumeByWorkId( spep_0 + 174, SE010, 7 );
setSeVolumeByWorkId( spep_0 + 175, SE010, 11 );
setSeVolumeByWorkId( spep_0 + 176, SE010, 21 );
setSeVolumeByWorkId( spep_0 + 177, SE010, 41 );
setSeVolumeByWorkId( spep_0 + 178, SE010, 61 );
stopSe( spep_0 + 202, SE010, 18 );
setStartTimeMs( SE010,  783 );
setBandpassFilter	( spep_0 + 174, SE010, 2000, 24000 );

--パンチ
SE011 = playSe( spep_0 + 126, 1022 );
setSeVolumeByWorkId( spep_0 + 126, SE011, 98 );
stopSe( spep_0 + 140, SE011, 16 );

--顔カットイン
SE012 = playSe( spep_0 + 134, 1018 );

--パンチ
SE013 = playSe( spep_0 + 132, 1009 );
setSeVolumeByWorkId( spep_0 + 132, SE013, 96 );

--パンチ
SE014 = playSe( spep_0 + 132, 1187 );
setSeVolumeByWorkId( spep_0 + 132, SE014, 100);

--光る
SE015 = playSe( spep_0 + 178, 1302 );
setSeVolumeByWorkId( spep_0 + 178, SE015, 68 );

--爆発
SE016 = playSe( spep_0 + 212, 1023 );
stopSe( spep_0 + 308, SE016, 14 );

--爆発
SE017 = playSe( spep_0 + 212, 1159 );

--敵飛んでく
SE018 = playSe( spep_0 + 264, 1183 );

--悟空飛んでいく
SE020 = playSe( spep_0 + 320, 1278 );
stopSe( spep_0 + 402, SE020, 34 );

--悟空飛んでいく
SE021 = playSe( spep_0 + 320, 1182 );

--悟空飛んでいく
SE022 = playSe( spep_0 + 322, 1277 );
stopSe( spep_0 + 400, SE022, 30 );
setPitch( spep_0 + 322, SE022, -300 );
setTimeStretch( SE022, 0.8, 10, 1 );

--悟空飛んでいく
SE023 = playSe( spep_0 + 322, 1117 );
stopSe( spep_0 + 340, SE023, 34 );

--敵と空中対峙
SE024 = playSe( spep_0 + 372, 1227 );
stopSe( spep_0 + 442, SE024, 24 );

--敵と空中対峙
SE025 = playSe( spep_0 + 372, 1181 );
setSeVolumeByWorkId( spep_0 + 372, SE025, 10 );
setSeVolumeByWorkId( spep_0 + 376, SE025, 20 );
setSeVolumeByWorkId( spep_0 + 380, SE025, 40 );
setSeVolumeByWorkId( spep_0 + 384, SE025, 60 );
setSeVolumeByWorkId( spep_0 + 388, SE025, 80 );
setSeVolumeByWorkId( spep_0 + 392, SE025, 95 );
setSeVolumeByWorkId( spep_0 + 394, SE025, 100 );
stopSe( spep_0 + 446, SE025, 24 );

--アッパー
SE026 = playSe( spep_0 + 436, 1110 );
setSeVolumeByWorkId( spep_0 + 436, SE026, 100 );

--アッパー
SE027 = playSe( spep_0 + 438, 1010 );

--アッパー
SE028 = playSe( spep_0 + 438, 1187 );
setSeVolumeByWorkId( spep_0 + 438, SE028, 78 );

--アッパー
SE029 = playSe( spep_0 + 440, 1190 );
setSeVolumeByWorkId( spep_0 + 440, SE029, 87 );

--敵飛んでいく
SE030 = playSe( spep_0 + 460, 1183 );
stopSe( spep_0 +508 + 8, SE030, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 508;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_1

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
f = 4;
spep_2 = spep_c + 94 +f;

--------------------------------------
--後半(712F)
--------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0 -f, SP_03, 0x100, -1, 0, 0, 0 );  --後半　手前(ef_003)
setEffMoveKey( spep_2 + 0 -f, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 712, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -f, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 712, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -f, finish_f, 0 );
setEffRotateKey( spep_2 + 712, finish_f, 0 );
setEffAlphaKey( spep_2 + 0 -f, finish_f, 255 );
setEffAlphaKey( spep_2 + 712, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0 -f, SP_04, 0x80, -1, 0, 0, 0 );  --後半　奥(ef_004)
setEffMoveKey( spep_2 + 0 -f, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 712, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -f, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 712, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -f, finish_b, 0 );
setEffRotateKey( spep_2 + 712, finish_b, 0 );
setEffAlphaKey( spep_2 + 0 -f, finish_b, 255 );
setEffAlphaKey( spep_2 + 712, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 130, 1, 1 );
setDisp( spep_2 -3 + 164, 1, 0 );
setDisp( spep_2 -3 + 316, 1, 1 );
setDisp( spep_2 -3 + 389, 1, 0 );
changeAnime( spep_2 -3 + 130, 1, 8 );
changeAnime( spep_2 -3 + 136, 1, 6 );
changeAnime( spep_2 -3 + 316, 1, 6 );

setBlendColor( spep_2 -3 + 136, 1, 3, 0.51, 0.82, 0.86, 0.8 );
setBlendColor( spep_2 -3 + 164, 1, 3, 0.51, 0.82, 0.86, 0.8 );
setBlendColor( spep_2 -3 + 165, 1, 3, 0.51, 0.82, 0.86, 0 );

setBlendColor( spep_2 -3 + 316, 1, 3, 0.11, 0.52, 0.86, 0.2 );
setBlendColor( spep_2 -3 + 317, 1, 3, 0.11, 0.52, 0.86, 0.21 );
setBlendColor( spep_2 -3 + 318, 1, 3, 0.11, 0.52, 0.86, 0.22 );
setBlendColor( spep_2 -3 + 320, 1, 3, 0.11, 0.52, 0.86, 0.24 );
setBlendColor( spep_2 -3 + 322, 1, 3, 0.11, 0.52, 0.86, 0.28 );
setBlendColor( spep_2 -3 + 324, 1, 3, 0.11, 0.52, 0.86, 0.28 );
setBlendColor( spep_2 -3 + 326, 1, 3, 0.11, 0.52, 0.86, 0.3 );
setBlendColor( spep_2 -3 + 328, 1, 3, 0.11, 0.52, 0.86, 0.3 );
setBlendColor( spep_2 -3 + 330, 1, 3, 0.11, 0.52, 0.86, 0.32 );
setBlendColor( spep_2 -3 + 332, 1, 3, 0.11, 0.52, 0.86, 0.34 );
setBlendColor( spep_2 -3 + 334, 1, 3, 0.11, 0.52, 0.86, 0.36 );
setBlendColor( spep_2 -3 + 336, 1, 3, 0.11, 0.52, 0.86, 0.36 );
setBlendColor( spep_2 -3 + 338, 1, 3, 0.11, 0.52, 0.86, 0.38 );
setBlendColor( spep_2 -3 + 340, 1, 3, 0.11, 0.52, 0.86, 0.4 );
setBlendColor( spep_2 -3 + 342, 1, 3, 0.11, 0.52, 0.86, 0.42 );
setBlendColor( spep_2 -3 + 344, 1, 3, 0.11, 0.52, 0.86, 0.44 );
setBlendColor( spep_2 -3 + 346, 1, 3, 0.11, 0.52, 0.86, 0.46 );
setBlendColor( spep_2 -3 + 348, 1, 3, 0.11, 0.52, 0.86, 0.48 );
setBlendColor( spep_2 -3 + 350, 1, 3, 0.11, 0.52, 0.86, 0.5 );
setBlendColor( spep_2 -3 + 352, 1, 3, 0.11, 0.52, 0.86, 0.52 );
setBlendColor( spep_2 -3 + 354, 1, 3, 0.11, 0.52, 0.86, 0.54 );
setBlendColor( spep_2 -3 + 356, 1, 3, 0.11, 0.52, 0.86, 0.56 );
setBlendColor( spep_2 -3 + 358, 1, 3, 0.11, 0.52, 0.86, 0.58 );
setBlendColor( spep_2 -3 + 360, 1, 3, 0.11, 0.52, 0.86, 0.6 );
setBlendColor( spep_2 -3 + 362, 1, 3, 0.11, 0.52, 0.86, 0.6 );
setBlendColor( spep_2 -3 + 388, 1, 3, 0.11, 0.52, 0.86, 0.6 );
setBlendColor( spep_2 -3 + 389, 1, 3, 0.11, 0.52, 0.86, 0 );

setMoveKey( spep_2 -3 + 130, 1, 147.3, 109.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 147.3, 109.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 142.3, 95.2 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 142.3, 95.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 138.1, 112.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 133.7, 88.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 137.1, 100.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 126.1, 90.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 133.4, 101.4 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 126, 87.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 124.2, 90.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 121, 78.9 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 120.9, 103.2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 126.5, 75.4 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 121.4, 90.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 123.8, 79.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 119.5, 91.1 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 113.8, 72.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 113.8, 72.2 , 0 );
--
setMoveKey( spep_2 -3 + 316, 1, 50.3, -176.1 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 95.9, -161.4 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 68.2, -197.2 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 67.1, -196 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 42, -176.7 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 55.5, -170.2 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 52.6, -199.9 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 43.6, -202.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 44.9, -185.3 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 42, -170.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 35.1, -224.5 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 42.4, -206.5 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 23.2, -203.2 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 36.8, -186 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 29.6, -217.6 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 8.6, -233.9 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 12.4, -199.3 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 18, -226.6 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 19.2, -240.5 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 10.1, -237.6 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 9.4, -176.7 , 0 );
setMoveKey( spep_2 -3 + 358, 1, -1.4, -233.5 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 28.3, -212.9 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 19.8, -231.6 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 9.6, -199 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 11.8, -210.9 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 8, -210.7 , 0 );
setMoveKey( spep_2 -3 + 370, 1, -35.6, -188.5 , 0 );
setMoveKey( spep_2 -3 + 372, 1, -37, -164.4 , 0 );
setMoveKey( spep_2 -3 + 374, 1, -46, -189.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, -59.6, -185.7 , 0 );
setMoveKey( spep_2 -3 + 378, 1, -68.5, -164.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, -60.7, -170.1 , 0 );
setMoveKey( spep_2 -3 + 382, 1, -34.5, -177.7 , 0 );
setMoveKey( spep_2 -3 + 384, 1, -76.4, -183.4 , 0 );
setMoveKey( spep_2 -3 + 386, 1, -38.3, -139.6 , 0 );
setMoveKey( spep_2 -3 + 388, 1, -38.1, -133.8 , 0 );
setMoveKey( spep_2 -3 + 389, 1, -38.1, -133.8 , 0 );


setScaleKey( spep_2 -3 + 130, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 135, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 136, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 164, 1, 0.11, 0.11 );
--
setScaleKey( spep_2 -3 + 316, 1, 3.7, 3.7 );
setScaleKey( spep_2 -3 + 388, 1, 3.7, 3.7 );
setScaleKey( spep_2 -3 + 389, 1, 3.7, 3.7 );


setRotateKey( spep_2 -3 + 130, 1, -27.2 );
setRotateKey( spep_2 -3 + 135, 1, -27.2 );
setRotateKey( spep_2 -3 + 136, 1, 23.7 );
setRotateKey( spep_2 -3 + 164, 1, 23.7 );
--
setRotateKey( spep_2 -3 + 316, 1, 31.7 );
setRotateKey( spep_2 -3 + 388, 1, 31.7 );
setRotateKey( spep_2 -3 + 389, 1, 31.7 );

-- ** 音 ** --
--かめはめ波溜め
SE032 = playSe( spep_2 + 0 -f, 1209 );
setPitch( spep_2 + 0 -f, SE032, -200 );
setTimeStretch( SE032, 0.87, 10, 1 );

--かめはめ波溜め
SE019 = playSe( spep_2 + 6, 1210,"",0.6 );
setSeVolumeByWorkId( spep_2 + 6, SE019, 14 );
setSeVolumeByWorkId( spep_2 + 12, SE019, 24 );
setSeVolumeByWorkId( spep_2 + 18, SE019, 34 );
setSeVolumeByWorkId( spep_2 + 24, SE019, 44 );
setSeVolumeByWorkId( spep_2 + 30, SE019, 54 );
setSeVolumeByWorkId( spep_2 + 36, SE019, 64 );
setStartTimeMs( SE019,  5533 );

--かめはめ波溜め
SE033 = playSe( spep_2 + 12, 1307 );
setSeVolumeByWorkId( spep_2 + 12, SE033, 224 );

--かめはめ波溜め
SE034 = playSe( spep_2 + 40, 1306 );
setSeVolumeByWorkId( spep_2 + 40, SE034, 58 );

--かめはめ波発射
SE035 = playSe( spep_2 + 86, 1258 );
setSeVolumeByWorkId( spep_2 + 86, SE035, 98 );

--かめはめ波発射
SE036 = playSe( spep_2 + 90, 1213 );
setSeVolumeByWorkId( spep_2 + 90, SE036, 100 );

--かめはめ波発射
SE037 = playSe( spep_2 + 90, 1223 );

--かめはめ波発射
SE038 = playSe( spep_2 + 90, 1027 );
setSeVolumeByWorkId( spep_2 + 90, SE038, 80 );

--かめはめ波中
SE039 = playSe( spep_2 + 124, 1161 );
setSeVolumeByWorkId( spep_2 + 124, SE039, 62 );

--かめはめ波中
SE040 = playSe( spep_2 + 124, 1211 );
stopSe( spep_2 + 406, SE040, 24 );
setPitch( spep_2 + 124, SE040, 500 );
setTimeStretch( SE040, 1.33, 10, 1 );

--かめはめ波広がる
SE041 = playSe( spep_2 + 154, 1258 );
setSeVolumeByWorkId( spep_2 + 154, SE041, 105 );

--かめはめ波広がる
SE042 = playSe( spep_2 + 154, 1187 );
setSeVolumeByWorkId( spep_2 + 154, SE042, 100 );
setPitch( spep_2 + 154, SE042, -400 );
setTimeStretch( SE042, 0.73, 10, 1 );

--かめはめ波中
SE043 = playSe( spep_2 + 172, 1226 );
setSeVolumeByWorkId( spep_2 + 172, SE043, 114 );
setSeVolumeByWorkId( spep_2 + 219, SE043, 114 );
setSeVolumeByWorkId( spep_2 + 220, SE043, 116 );
setSeVolumeByWorkId( spep_2 + 226, SE043, 122 );
setSeVolumeByWorkId( spep_2 + 232, SE043, 128 );
setSeVolumeByWorkId( spep_2 + 238, SE043, 134 );
setSeVolumeByWorkId( spep_2 + 244, SE043, 140 );
setSeVolumeByWorkId( spep_2 + 250, SE043, 146 );
setSeVolumeByWorkId( spep_2 + 256, SE043, 152 );
setSeVolumeByWorkId( spep_2 + 262, SE043, 158 );
setSeVolumeByWorkId( spep_2 + 268, SE043, 164 );
setSeVolumeByWorkId( spep_2 + 274, SE043, 170 );
setSeVolumeByWorkId( spep_2 + 280, SE043, 176 );
setSeVolumeByWorkId( spep_2 + 286, SE043, 182 );
setSeVolumeByWorkId( spep_2 + 292, SE043, 188 );
setSeVolumeByWorkId( spep_2 + 298, SE043, 194 );
setSeVolumeByWorkId( spep_2 + 304, SE043, 200 );
setSeVolumeByWorkId( spep_2 + 305, SE043, 184 );
setSeVolumeByWorkId( spep_2 + 306, SE043, 168 );
setSeVolumeByWorkId( spep_2 + 307, SE043, 152 );
setSeVolumeByWorkId( spep_2 + 308, SE043, 136 );
setSeVolumeByWorkId( spep_2 + 309, SE043, 120 );
setSeVolumeByWorkId( spep_2 + 310, SE043, 114 );
stopSe( spep_2 + 410, SE043, 34 );

--顔アップ
SE044 = playSe( spep_2 + 182, 1314 );
setSeVolumeByWorkId( spep_2 + 182, SE044, 0 );
setSeVolumeByWorkId( spep_2 + 183, SE044, 1.3 );
setSeVolumeByWorkId( spep_2 + 184, SE044, 2.6 );
setSeVolumeByWorkId( spep_2 + 185, SE044, 3.9 );
setSeVolumeByWorkId( spep_2 + 186, SE044, 5.2 );
setSeVolumeByWorkId( spep_2 + 187, SE044, 6.5 );
setSeVolumeByWorkId( spep_2 + 188, SE044, 7.8 );
setSeVolumeByWorkId( spep_2 + 189, SE044, 9.1 );
setSeVolumeByWorkId( spep_2 + 190, SE044, 10.4 );
setSeVolumeByWorkId( spep_2 + 191, SE044, 11.7 );
setSeVolumeByWorkId( spep_2 + 192, SE044, 13 );
setSeVolumeByWorkId( spep_2 + 193, SE044, 14.3 );
setSeVolumeByWorkId( spep_2 + 194, SE044, 15.6 );
setSeVolumeByWorkId( spep_2 + 195, SE044, 16.9 );
setSeVolumeByWorkId( spep_2 + 196, SE044, 18.2 );
setSeVolumeByWorkId( spep_2 + 197, SE044, 19.5 );
setSeVolumeByWorkId( spep_2 + 198, SE044, 20.8 );
setSeVolumeByWorkId( spep_2 + 199, SE044, 22.1 );
setSeVolumeByWorkId( spep_2 + 200, SE044, 23.4 );
setSeVolumeByWorkId( spep_2 + 201, SE044, 24.7 );
setSeVolumeByWorkId( spep_2 + 202, SE044, 26 );
setSeVolumeByWorkId( spep_2 + 203, SE044, 27.3 );
setSeVolumeByWorkId( spep_2 + 204, SE044, 28.6 );
setSeVolumeByWorkId( spep_2 + 205, SE044, 29.9 );
setSeVolumeByWorkId( spep_2 + 206, SE044, 31.2 );
setSeVolumeByWorkId( spep_2 + 207, SE044, 32.5 );
setSeVolumeByWorkId( spep_2 + 208, SE044, 33.8 );
setSeVolumeByWorkId( spep_2 + 209, SE044, 35.1 );
setSeVolumeByWorkId( spep_2 + 210, SE044, 36.4 );
setSeVolumeByWorkId( spep_2 + 211, SE044, 37.7 );
setSeVolumeByWorkId( spep_2 + 212, SE044, 39 );
setSeVolumeByWorkId( spep_2 + 213, SE044, 40.3 );
setSeVolumeByWorkId( spep_2 + 214, SE044, 41.6 );
setSeVolumeByWorkId( spep_2 + 215, SE044, 42.9 );
setSeVolumeByWorkId( spep_2 + 216, SE044, 44.2 );
setSeVolumeByWorkId( spep_2 + 217, SE044, 45.5 );
setSeVolumeByWorkId( spep_2 + 218, SE044, 46.8 );
setSeVolumeByWorkId( spep_2 + 219, SE044, 48.1 );
setSeVolumeByWorkId( spep_2 + 220, SE044, 49.4 );
setSeVolumeByWorkId( spep_2 + 221, SE044, 50.7 );
setSeVolumeByWorkId( spep_2 + 222, SE044, 52 );
setSeVolumeByWorkId( spep_2 + 223, SE044, 53.3 );
setSeVolumeByWorkId( spep_2 + 224, SE044, 54.6 );
setSeVolumeByWorkId( spep_2 + 225, SE044, 55.9 );
setSeVolumeByWorkId( spep_2 + 226, SE044, 57.2 );
setSeVolumeByWorkId( spep_2 + 227, SE044, 58.5 );
setSeVolumeByWorkId( spep_2 + 228, SE044, 59.8 );
setSeVolumeByWorkId( spep_2 + 229, SE044, 61.1 );
setSeVolumeByWorkId( spep_2 + 230, SE044, 62.4 );
setSeVolumeByWorkId( spep_2 + 231, SE044, 63.7 );
setSeVolumeByWorkId( spep_2 + 232, SE044, 65 );
setSeVolumeByWorkId( spep_2 + 233, SE044, 66.3 );
setSeVolumeByWorkId( spep_2 + 234, SE044, 67.6 );
setSeVolumeByWorkId( spep_2 + 235, SE044, 68.9 );
setSeVolumeByWorkId( spep_2 + 236, SE044, 70.2 );
setSeVolumeByWorkId( spep_2 + 237, SE044, 71.5 );
setSeVolumeByWorkId( spep_2 + 238, SE044, 72.8 );
setSeVolumeByWorkId( spep_2 + 239, SE044, 74.1 );
setSeVolumeByWorkId( spep_2 + 240, SE044, 75.4 );
setSeVolumeByWorkId( spep_2 + 241, SE044, 76.7 );
setSeVolumeByWorkId( spep_2 + 242, SE044, 78 );
setSeVolumeByWorkId( spep_2 + 243, SE044, 79.3 );
setSeVolumeByWorkId( spep_2 + 244, SE044, 80.6 );
setSeVolumeByWorkId( spep_2 + 245, SE044, 81.9 );
setSeVolumeByWorkId( spep_2 + 246, SE044, 83.2 );
setSeVolumeByWorkId( spep_2 + 247, SE044, 84.5 );
setSeVolumeByWorkId( spep_2 + 248, SE044, 85.8 );
setSeVolumeByWorkId( spep_2 + 249, SE044, 87.1 );
setSeVolumeByWorkId( spep_2 + 250, SE044, 88.4 );
setSeVolumeByWorkId( spep_2 + 251, SE044, 89.7 );
setSeVolumeByWorkId( spep_2 + 252, SE044, 91 );
setSeVolumeByWorkId( spep_2 + 253, SE044, 92.3 );
setSeVolumeByWorkId( spep_2 + 254, SE044, 93.6 );
setSeVolumeByWorkId( spep_2 + 255, SE044, 94.9 );
setSeVolumeByWorkId( spep_2 + 256, SE044, 96.2 );
setSeVolumeByWorkId( spep_2 + 257, SE044, 97.5 );
setSeVolumeByWorkId( spep_2 + 258, SE044, 98.8 );
setSeVolumeByWorkId( spep_2 + 259, SE044, 100.1 );
setSeVolumeByWorkId( spep_2 + 260, SE044, 101.4 );
setSeVolumeByWorkId( spep_2 + 261, SE044, 102.7 );
setSeVolumeByWorkId( spep_2 + 262, SE044, 104 );
setSeVolumeByWorkId( spep_2 + 263, SE044, 105.3 );
setSeVolumeByWorkId( spep_2 + 264, SE044, 106.6 );
setSeVolumeByWorkId( spep_2 + 265, SE044, 107.9 );
setSeVolumeByWorkId( spep_2 + 266, SE044, 109.2 );
setSeVolumeByWorkId( spep_2 + 267, SE044, 110.5 );
setSeVolumeByWorkId( spep_2 + 268, SE044, 111.8 );
setSeVolumeByWorkId( spep_2 + 269, SE044, 113.1 );
setSeVolumeByWorkId( spep_2 + 270, SE044, 114.4 );
setSeVolumeByWorkId( spep_2 + 271, SE044, 115.7 );
setSeVolumeByWorkId( spep_2 + 272, SE044, 117 );
setSeVolumeByWorkId( spep_2 + 273, SE044, 118.3 );
setSeVolumeByWorkId( spep_2 + 274, SE044, 119.6 );
setSeVolumeByWorkId( spep_2 + 275, SE044, 120.9 );
setSeVolumeByWorkId( spep_2 + 276, SE044, 122.2 );
setSeVolumeByWorkId( spep_2 + 277, SE044, 123.5 );
setSeVolumeByWorkId( spep_2 + 278, SE044, 124.8 );
setSeVolumeByWorkId( spep_2 + 279, SE044, 126.1 );
setSeVolumeByWorkId( spep_2 + 280, SE044, 127.4 );
setSeVolumeByWorkId( spep_2 + 281, SE044, 128.7 );
setSeVolumeByWorkId( spep_2 + 282, SE044, 130 );
setSeVolumeByWorkId( spep_2 + 283, SE044, 131.3 );
setSeVolumeByWorkId( spep_2 + 284, SE044, 132.6 );
setSeVolumeByWorkId( spep_2 + 285, SE044, 132.9 );
setSeVolumeByWorkId( spep_2 + 286, SE044, 133 );
stopSe( spep_2 + 330, SE044, 56 );
setPitch( spep_2 + 182, SE044, 400 );
setTimeStretch( SE044, 1.27, 10, 1 );

--顔アップから敵飲まれる
SE045 = playSe( spep_2 + 252, 1215,"",0.6 );
setSeVolumeByWorkId( spep_2 + 252, SE045, 67 );
stopSe( spep_2 + 392, SE045, 6 );

--敵飲まれる
SE046 = playSe( spep_2 + 314, 1161 );
setSeVolumeByWorkId( spep_2 + 314, SE046, 6 );
setSeVolumeByWorkId( spep_2 + 322, SE046, 15 );
setSeVolumeByWorkId( spep_2 + 330, SE046, 30 );
setSeVolumeByWorkId( spep_2 + 338, SE046, 45 );
setSeVolumeByWorkId( spep_2 + 346, SE046, 60 );
setSeVolumeByWorkId( spep_2 + 354, SE046, 85 );
setSeVolumeByWorkId( spep_2 + 362, SE046, 100 );
stopSe( spep_2 + 406, SE046, 24 );	

--かめはめ波気弾道
SE047 = playSe( spep_2 + 368, 1212,"",0.6 );
setSeVolumeByWorkId( spep_2 + 368, SE047, 8 );
setSeVolumeByWorkId( spep_2 + 370, SE047, 16 );
setSeVolumeByWorkId( spep_2 + 372, SE047, 24 );
setSeVolumeByWorkId( spep_2 + 374, SE047, 32 );
setSeVolumeByWorkId( spep_2 + 376, SE047, 40 );
setSeVolumeByWorkId( spep_2 + 378, SE047, 48 );
setSeVolumeByWorkId( spep_2 + 380, SE047, 56 );
setSeVolumeByWorkId( spep_2 + 382, SE047, 60 );
stopSe( spep_2 + 428, SE047, 28 );
setStartTimeMs( SE047,  600 );

--敵飲み込まれる
SE048 = playSe( spep_2 + 350, 1021 );
setSeVolumeByWorkId( spep_2 + 350, SE048, 79 );

--岩当たる
SE049 = playSe( spep_2 + 398, 1188 );
setSeVolumeByWorkId( spep_2 + 398, SE049, 126 );

--ラスト爆発
SE050 = playSe( spep_2 + 424, 1067 );
setSeVolumeByWorkId( spep_2 + 424, SE050, 80 );

--ラスト爆発
SE051 = playSe( spep_2 + 426, 1024 );
setSeVolumeByWorkId( spep_2 + 426, SE051, 82 );

--ラスト爆発
SE052 = playSe( spep_2 + 428, 1023 );
setSeVolumeByWorkId( spep_2 + 428, SE052, 71 );

--ラスト爆発
SE053 = playSe( spep_2 + 428, 1159 );
setSeVolumeByWorkId( spep_2 + 428, SE053, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 714, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 388 +2 );
endPhase( spep_2 + 488 +2 );--478

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前半(508F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --前半　手前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 508, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 508, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 508, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 508, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --前半　奥(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 508, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 508, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 508, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 508, first_b, 255 );

--spep_x = spep_0 + 130;
-- ** 顔カットイン ** --
--peff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--etEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--peff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--etEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--入り光
SE001 = playSe( spep_0 + 0, 1278 );
stopSe( spep_0 + 40, SE001, 34 );

--入り光
SE002 = playSe( spep_0 + 0, 1117 );
stopSe( spep_0 + 40, SE002, 34 );

--飛んできて振りかぶる
SE003 = playSe( spep_0 + 60, 1183 );
setSeVolumeByWorkId( spep_0 + 60, SE003, 5 );
setSeVolumeByWorkId( spep_0 + 64, SE003, 10 );
setSeVolumeByWorkId( spep_0 + 68, SE003, 20 );
setSeVolumeByWorkId( spep_0 + 72, SE003, 40 );
setSeVolumeByWorkId( spep_0 + 76, SE003, 60 );
setSeVolumeByWorkId( spep_0 + 80, SE003, 85 );
setSeVolumeByWorkId( spep_0 + 86, SE003, 100 );
setStartTimeMs( SE003,  733 );

--ダンっ
SE004 = playSe( spep_0 + 40, 1182 );
setSeVolumeByWorkId( spep_0 + 40, SE004, 141 );

--飛んできて振りかぶる
SE005 = playSe( spep_0 + 78, 1118 );
setSeVolumeByWorkId( spep_0 + 78, SE005, 25 );
stopSe( spep_0 + 124, SE005, 20 );
setPitch( spep_0 + 78, SE005, 100 );
setTimeStretch( SE005, 1.07, 10, 1 );

--飛んできて振りかぶる
SE006 = playSe( spep_0 + 90, 1182 );
setSeVolumeByWorkId( spep_0 + 90, SE006, 10 );
setSeVolumeByWorkId( spep_0 + 94, SE006, 20 );
setSeVolumeByWorkId( spep_0 + 98, SE006, 40 );
setSeVolumeByWorkId( spep_0 + 102, SE006, 60 );
setSeVolumeByWorkId( spep_0 + 106, SE006, 80 );
setSeVolumeByWorkId( spep_0 + 110, SE006, 100 );
setSeVolumeByWorkId( spep_0 + 90, SE006, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 510, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 140, 1, 1 );
setDisp( spep_0 -3 + 218, 1, 0 );
setDisp( spep_0 -3 + 280, 1, 1 );
setDisp( spep_0 -3 + 364, 1, 0 );
setDisp( spep_0 -3 + 384, 1, 1 );
setDisp( spep_0 -3 + 511, 1, 0 );
changeAnime( spep_0 -3 + 140, 1, 106 );
changeAnime( spep_0 -3 + 212, 1, 108 );
changeAnime( spep_0 -3 + 280, 1, 107 );
changeAnime( spep_0 -3 + 306, 1, 7 );
changeAnime( spep_0 -3 + 316, 1, 105 );
changeAnime( spep_0 -3 + 384, 1, 7 );
changeAnime( spep_0 -3 + 438, 1, 107 );
changeAnime( spep_0 -3 + 470, 1, 107 );

setBlendColor( spep_0 + 201, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_0 + 208, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_0 + 209, 1, 3, 1.0, 1.0, 1.0, 0 );

a1=-10;
b1=30;
c1=15;
setMoveKey( spep_0 -3 + 140, 1, 42.7 +a1, 27 -b1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 31.8 +a1, 32.7 -b1 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 25.9 +a1, 51.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 23.1 +a1, 37.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 16.5 +a1, 47 -c1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 19.1 +a1, 43.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 14.5 +a1, 48.9 -c1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 17.3 +a1, 43 -c1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 16.7 +a1, 43.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 17.4 +a1, 38.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 17.7 +a1, 51.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 13.6 +a1, 39 -c1 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 15.5 +a1, 43.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 14.2 +a1, 43.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 14.9 +a1, 49.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 17.4 +a1, 40.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 16.2 +a1, 44.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 15.2 +a1, 44.5 -c1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 17.9 +a1, 46.8 -c1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 15.5 +a1, 42.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 11.2 +a1, 46.1 -c1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 11.9 +a1, 39.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 12.5 +a1, 47.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 12.4 +a1, 44.8 -c1 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 15.3 +a1, 47.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 14.9 +a1, 44.6 -c1 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 13.8 +a1, 45.7 -c1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 13.8 +a1, 46.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 13.7 +a1, 47.2 -c1 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 13.7 +a1, 47.3 -c1 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 13.7 +a1, 47.3 -c1 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 13.7 +a1, 47.4 -c1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 14 +a1, 47 -c1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 14 +a1, 47 -c1 , 0 );
setMoveKey( spep_0 -3 + 211, 1, 14 +a1, 47 -c1 , 0 );

a2=-20;
b2=0;
setMoveKey( spep_0 -3 + 212, 1, 65 +a2, 58.1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 63.5 +a2, 1.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 75 +a2, 34.1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 75 +a2, 34.1 , 0 );
--
setMoveKey( spep_0 -3 + 280, 1, -138.3, 167.4 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -136.2, 167.9 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -136.1, 157.3 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -134, 164.8 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -130.9, 163.3 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -131.8, 154.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -126.7, 160.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -125.6, 157.7 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -123.3, 156.2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -117, 144.5 , 0 );
setMoveKey( spep_0 -3 + 300, 1, -39.8, -5.3 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -12.1, -57.3 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -12.1, -57.3 , 0 );
setMoveKey( spep_0 -3 + 305, 1, -12.1, -57.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, -115.7, -671.7 , 0 );
setMoveKey( spep_0 -3 + 308, 1, -115.7, -671.7 , 0 );
setMoveKey( spep_0 -3 + 310, 1, -93.5, -499.3 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -93.5, -499.3 , 0 );
setMoveKey( spep_0 -3 + 315, 1, -93.5, -499.3 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 17.2, 33.5 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 10.6, 67.7 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 3.3, 106.2 , 0 );
setMoveKey( spep_0 -3 + 322, 1, -0.1, 124.1 , 0 );
setMoveKey( spep_0 -3 + 324, 1, -1.1, 129.3 , 0 );
setMoveKey( spep_0 -3 + 326, 1, -1.6, 131.6 , 0 );
setMoveKey( spep_0 -3 + 328, 1, -1.8, 132.8 , 0 );
setMoveKey( spep_0 -3 + 330, 1, -1.9, 133.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, -2, 133.9 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -2.1, 134.1 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -2.1, 134.3 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -2.2, 134.6 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -2.2, 134.8 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -2.2, 135 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -2.3, 135.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, -1.1, 125.3 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 3.2, 90.1 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 11.6, 21.1 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 24.6, -86.7 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 41.1, -224 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 59, -373.6 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 70, -525.3 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 90.3, -756.4 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 130.6, -1149.1 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 130.6, -1149.1 , 0 );
--
setMoveKey( spep_0 -3 + 384, 1, -120.1, 86 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -120.2, 85.7 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -120.3, 85.4 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -120.4, 85.1 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -120.5, 84.9 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -120.6, 84.6 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -120.7, 84.3 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -120.8, 84 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -120.8, 83.8 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -120.9, 83.5 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -121, 83.3 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -121.1, 83 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -121.2, 82.8 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -121.3, 82.6 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -121.3, 82.3 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -121.4, 82.1 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -121.5, 81.9 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -121.5, 81.7 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -121.6, 81.5 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -121.7, 81.3 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -121.7, 81.1 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -121.8, 80.9 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -121.9, 80.7 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -121.9, 80.5 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -122, 80.4 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -122, 80.2 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -122.1, 80 , 0 );
setMoveKey( spep_0 -3 + 437, 1, -122.1, 80 , 0 );

a1 = -200;
setMoveKey( spep_0 -3 + 438, 1, 179.4 +a1, -290.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 181.4 +a1, -260.3 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 182.4 +a1, -213.9 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 191.4 +a1, -263 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 191.4 +a1, -262.5 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 171.4 +a1, -238.5 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 188.4 +a1, -238.9 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 175.4 +a1, -216.8 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 185.4 +a1, -236.1 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 185.4 +a1, -235.9 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 139.4 +a1, 257.4 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 143.4 +a1, 242.4 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 154.3 +a1, 504 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 149.6 +a1, 520.4 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 157 +a1, 570.8 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 167.3 +a1, 671.1 , 0 );
setMoveKey( spep_0 -3 + 469, 1, 167.3 +a1, 671.1 , 0 );

setMoveKey( spep_0 -3 + 470, 1, -158, 129.9 , 0 );
setMoveKey( spep_0 -3 + 472, 1, -158.4, 130.2 , 0 );
setMoveKey( spep_0 -3 + 474, 1, -157.9, 130.2 , 0 );
setMoveKey( spep_0 -3 + 476, 1, -155, 128.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, -150.7, 126.4 , 0 );
setMoveKey( spep_0 -3 + 480, 1, -144.7, 123.6 , 0 );
setMoveKey( spep_0 -3 + 482, 1, -136.3, 120.1 , 0 );
setMoveKey( spep_0 -3 + 484, 1, -125.7, 114.6 , 0 );
setMoveKey( spep_0 -3 + 486, 1, -111.7, 105 , 0 );
setMoveKey( spep_0 -3 + 488, 1, -93, 91.6 , 0 );
setMoveKey( spep_0 -3 + 490, 1, -65.8, 73.1 , 0 );
setMoveKey( spep_0 -3 + 492, 1, -23, 42.8 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 40.5, -4.6 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 142.4, -80.4 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 290.4, -190 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 392.7, -265.4 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 437.7, -299.3 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 459.6, -314 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 449.1, -301 , 0 );
setMoveKey( spep_0 -3 + 511, 1, 449.1, -301 , 0 );

setScaleKey( spep_0 -3 + 140, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 142, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 144, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 146, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 148, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 150, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 152, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 154, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 156, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 158, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 160, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 162, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 164, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 166, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 168, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 172, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 174, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 176, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 178, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 182, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 184, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 188, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 190, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 202, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 204, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 210, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 211, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 212, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 216, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 218, 1, 0.49, 0.49 );

s1=0.2;
s2=0.02;
setScaleKey( spep_0 -3 + 280, 1, 0.06 +s2, 0.06 +s2 );
setScaleKey( spep_0 -3 + 282, 1, 0.07 +s2, 0.07 +s2 );
setScaleKey( spep_0 -3 + 284, 1, 0.08 +s2, 0.08 +s2 );
setScaleKey( spep_0 -3 + 286, 1, 0.08 +s2, 0.08 +s2 );
setScaleKey( spep_0 -3 + 288, 1, 0.09 +s2, 0.09 +s2 );
setScaleKey( spep_0 -3 + 290, 1, 0.09 +s2, 0.09 +s2 );
setScaleKey( spep_0 -3 + 292, 1, 0.10 +s2, 0.10 +s2 );
setScaleKey( spep_0 -3 + 294, 1, 0.10 +s2, 0.10 +s2 );
setScaleKey( spep_0 -3 + 296, 1, 0.11 +s2, 0.11 +s2 );
setScaleKey( spep_0 -3 + 298, 1, 0.16 +s2, 0.16 +s2 );
setScaleKey( spep_0 -3 + 300, 1, 0.80 +s2, 0.80 +s2 );
setScaleKey( spep_0 -3 + 302, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_0 -3 + 304, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_0 -3 + 305, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_0 -3 + 306, 1, 4.13, 4.13 );
setScaleKey( spep_0 -3 + 308, 1, 4.13, 4.13 );
setScaleKey( spep_0 -3 + 310, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 314, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 315, 1, 2.77, 2.77 );

setScaleKey( spep_0 -3 + 316, 1, 4.11 +s1, 4.11 +s1 );
setScaleKey( spep_0 -3 + 318, 1, 2.8 +s1, 2.8 +s1 );
setScaleKey( spep_0 -3 + 320, 1, 1.33 +s1, 1.33 +s1 );
setScaleKey( spep_0 -3 + 322, 1, 0.65 +s1, 0.65 +s1 );
setScaleKey( spep_0 -3 + 324, 1, 0.45 +s1, 0.45 +s1 );
setScaleKey( spep_0 -3 + 326, 1, 0.36 +s1, 0.36 +s1 );
setScaleKey( spep_0 -3 + 328, 1, 0.32 +s1, 0.32 +s1 );
setScaleKey( spep_0 -3 + 330, 1, 0.29 +s1, 0.29 +s1 );
setScaleKey( spep_0 -3 + 332, 1, 0.28 +s1, 0.28 +s1 );
setScaleKey( spep_0 -3 + 334, 1, 0.27 +s1, 0.27 +s1 );
setScaleKey( spep_0 -3 + 336, 1, 0.26 +s1, 0.26 +s1 );
setScaleKey( spep_0 -3 + 338, 1, 0.25 +s1, 0.25 +s1 );
setScaleKey( spep_0 -3 + 340, 1, 0.24 +s1, 0.24 +s1 );
setScaleKey( spep_0 -3 + 342, 1, 0.23 +s1, 0.23 +s1 );
setScaleKey( spep_0 -3 + 344, 1, 0.23 +s1, 0.23 +s1 );
setScaleKey( spep_0 -3 + 346, 1, 0.39 +s1, 0.39 +s1 );

s3=0.3;
setScaleKey( spep_0 -3 + 348, 1, 0.94 +s1 +s3, 0.94 +s1 +s3 );
setScaleKey( spep_0 -3 + 350, 1, 2.02 +s1 +s3, 2.02 +s1 +s3 );
setScaleKey( spep_0 -3 + 352, 1, 3.68 +s1 +s3, 3.68 +s1 +s3 );
setScaleKey( spep_0 -3 + 354, 1, 5.76 +s1 +s3, 5.76 +s1 +s3 );
setScaleKey( spep_0 -3 + 356, 1, 7.93 +s1 +s3, 7.93 +s1 +s3 );
setScaleKey( spep_0 -3 + 358, 1, 9.57 +s1 +s3, 9.57 +s1 +s3 );
setScaleKey( spep_0 -3 + 360, 1, 11.98 +s1 +s3, 11.98 +s1 +s3 );
setScaleKey( spep_0 -3 + 362, 1, 15.9 +s1 +s3, 15.9 +s1 +s3 );
setScaleKey( spep_0 -3 + 364, 1, 15.9 +s1 +s3, 15.9 +s1 +s3 );
--
setScaleKey( spep_0 -3 + 384, 1, 0.72, 0.72 );
--setScaleKey( spep_0 -3 + 386, 1, 0.73, 0.73 );
--setScaleKey( spep_0 -3 + 396, 1, 0.73, 0.73 );
--setScaleKey( spep_0 -3 + 398, 1, 0.74, 0.74 );
--setScaleKey( spep_0 -3 + 410, 1, 0.74, 0.74 );
--setScaleKey( spep_0 -3 + 412, 1, 0.75, 0.75 );
--setScaleKey( spep_0 -3 + 426, 1, 0.75, 0.75 );
--setScaleKey( spep_0 -3 + 428, 1, 0.76, 0.76 );
--setScaleKey( spep_0 -3 + 437, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 437, 1, 0.76, 0.76 );

setScaleKey( spep_0 -3 + 438, 1, 2.58 +s1, 2.58 +s1 );
setScaleKey( spep_0 -3 + 469, 1, 2.58 +s1, 2.58 +s1 );

setScaleKey( spep_0 -3 + 470, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 474, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 476, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 478, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 480, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 482, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 484, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 486, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 488, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 490, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 492, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 494, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 496, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 498, 1, 1.57, 1.57 );
setScaleKey( spep_0 -3 + 500, 1, 1.89, 1.89 );
setScaleKey( spep_0 -3 + 502, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 504, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 506, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 511, 1, 2.09, 2.09 );


setRotateKey( spep_0 -3 + 140, 1, -49.2 );
setRotateKey( spep_0 -3 + 142, 1, -45.7 );
setRotateKey( spep_0 -3 + 144, 1, -42.2 );
setRotateKey( spep_0 -3 + 146, 1, -39.9 );
setRotateKey( spep_0 -3 + 148, 1, -39.7 );
setRotateKey( spep_0 -3 + 150, 1, -39.5 );
setRotateKey( spep_0 -3 + 152, 1, -39.4 );
setRotateKey( spep_0 -3 + 154, 1, -39.2 );
setRotateKey( spep_0 -3 + 156, 1, -39 );
setRotateKey( spep_0 -3 + 158, 1, -38.8 );
setRotateKey( spep_0 -3 + 160, 1, -38.7 );
setRotateKey( spep_0 -3 + 162, 1, -38.5 );
setRotateKey( spep_0 -3 + 164, 1, -38.4 );
setRotateKey( spep_0 -3 + 166, 1, -38.2 );
setRotateKey( spep_0 -3 + 168, 1, -38 );
setRotateKey( spep_0 -3 + 170, 1, -37.9 );
setRotateKey( spep_0 -3 + 172, 1, -37.8 );
setRotateKey( spep_0 -3 + 174, 1, -37.6 );
setRotateKey( spep_0 -3 + 176, 1, -37.5 );
setRotateKey( spep_0 -3 + 178, 1, -37.4 );
setRotateKey( spep_0 -3 + 180, 1, -37.3 );
setRotateKey( spep_0 -3 + 182, 1, -37.1 );
setRotateKey( spep_0 -3 + 184, 1, -37 );
setRotateKey( spep_0 -3 + 186, 1, -36.9 );
setRotateKey( spep_0 -3 + 188, 1, -36.8 );
setRotateKey( spep_0 -3 + 190, 1, -36.7 );
setRotateKey( spep_0 -3 + 192, 1, -36.6 );
setRotateKey( spep_0 -3 + 194, 1, -36.5 );
setRotateKey( spep_0 -3 + 196, 1, -36.4 );
setRotateKey( spep_0 -3 + 198, 1, -36.3 );
setRotateKey( spep_0 -3 + 200, 1, -36.2 );
setRotateKey( spep_0 -3 + 210, 1, -36.2 );
setRotateKey( spep_0 -3 + 211, 1, -36.2 );
setRotateKey( spep_0 -3 + 212, 1, 18.1 );
setRotateKey( spep_0 -3 + 216, 1, 18.1 );
setRotateKey( spep_0 -3 + 218, 1, 18.1 );
--
setRotateKey( spep_0 -3 + 280, 1, 0 );
setRotateKey( spep_0 -3 + 296, 1, 0 );
setRotateKey( spep_0 -3 + 298, 1, 0.2 );
setRotateKey( spep_0 -3 + 300, 1, 3 );
setRotateKey( spep_0 -3 + 302, 1, 4 );
setRotateKey( spep_0 -3 + 304, 1, 4 );
setRotateKey( spep_0 -3 + 305, 1, 4 );
setRotateKey( spep_0 -3 + 306, 1, 122 );
setRotateKey( spep_0 -3 + 314, 1, 122 );
setRotateKey( spep_0 -3 + 315, 1, 122 );
setRotateKey( spep_0 -3 + 316, 1, -21.3 );
setRotateKey( spep_0 -3 + 362, 1, -21.3 );
setRotateKey( spep_0 -3 + 364, 1, -21.3 );
--
setRotateKey( spep_0 -3 + 384, 1, 26 );
setRotateKey( spep_0 -3 + 437, 1, 26 );
setRotateKey( spep_0 -3 + 438, 1, -137.1 );
setRotateKey( spep_0 -3 + 456, 1, -137.1 );
setRotateKey( spep_0 -3 + 458, 1, -123 );
setRotateKey( spep_0 -3 + 460, 1, -123 );
setRotateKey( spep_0 -3 + 462, 1, -121 );
setRotateKey( spep_0 -3 + 464, 1, -119.3 );
setRotateKey( spep_0 -3 + 466, 1, -117.7 );
setRotateKey( spep_0 -3 + 468, 1, -116 );
setRotateKey( spep_0 -3 + 469, 1, -116 );
setRotateKey( spep_0 -3 + 470, 1, -62 );
setRotateKey( spep_0 -3 + 472, 1, -61.7 );
setRotateKey( spep_0 -3 + 474, 1, -60.5 );
setRotateKey( spep_0 -3 + 476, 1, -58.3 );
setRotateKey( spep_0 -3 + 478, 1, -54.8 );
setRotateKey( spep_0 -3 + 480, 1, -50.3 );
setRotateKey( spep_0 -3 + 482, 1, -45.3 );
setRotateKey( spep_0 -3 + 484, 1, -40.7 );
setRotateKey( spep_0 -3 + 486, 1, -36.8 );
setRotateKey( spep_0 -3 + 488, 1, -33.6 );
setRotateKey( spep_0 -3 + 490, 1, -31.1 );
setRotateKey( spep_0 -3 + 492, 1, -29.2 );
setRotateKey( spep_0 -3 + 494, 1, -27.8 );
setRotateKey( spep_0 -3 + 496, 1, -26.7 );
setRotateKey( spep_0 -3 + 498, 1, -25.9 );
setRotateKey( spep_0 -3 + 500, 1, -25.4 );
setRotateKey( spep_0 -3 + 502, 1, -25.1 );
setRotateKey( spep_0 -3 + 504, 1, -25 );
setRotateKey( spep_0 -3 + 511, 1, -25 );

-- ** 音 ** --
--飛んできて振りかぶる
SE007 = playSe( spep_0 + 106, 1167 );
setSeVolumeByWorkId( spep_0 + 106, SE007, 61 );
stopSe( spep_0 + 132, SE007, 6 );
setPitch( spep_0 + 106, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );

--パンチ
SE008 = playSe( spep_0 + 126, 1233 );
setSeVolumeByWorkId( spep_0 + 126, SE008, 24 );
setSeVolumeByWorkId( spep_0 + 127, SE008, 58 );
setSeVolumeByWorkId( spep_0 + 128, SE008, 78 );
setStartTimeMs( SE008,  133 );
setPitch( spep_0 + 126, SE008, 400 );
setTimeStretch( SE008, 1.27, 10, 1 );

----飛んできて振りかぶる
SE009 = playSe( spep_0 + 124, 1116 );
stopSe( spep_0 + 146, SE009, 6 );
setPitch( spep_0 + 124, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

--光る
SE010 = playSe( spep_0 + 174, 1216,"",0.6 );
setSeVolumeByWorkId( spep_0 + 174, SE010, 7 );
setSeVolumeByWorkId( spep_0 + 175, SE010, 11 );
setSeVolumeByWorkId( spep_0 + 176, SE010, 21 );
setSeVolumeByWorkId( spep_0 + 177, SE010, 41 );
setSeVolumeByWorkId( spep_0 + 178, SE010, 61 );
stopSe( spep_0 + 202, SE010, 18 );
setStartTimeMs( SE010,  783 );
setBandpassFilter	( spep_0 + 174, SE010, 2000, 24000 );

--パンチ
SE011 = playSe( spep_0 + 126, 1022 );
setSeVolumeByWorkId( spep_0 + 126, SE011, 98 );
stopSe( spep_0 + 140, SE011, 16 );

--顔カットイン
SE012 = playSe( spep_0 + 134, 1018 );

--パンチ
SE013 = playSe( spep_0 + 132, 1009 );
setSeVolumeByWorkId( spep_0 + 132, SE013, 96 );

--パンチ
SE014 = playSe( spep_0 + 132, 1187 );
setSeVolumeByWorkId( spep_0 + 132, SE014, 100);

--光る
SE015 = playSe( spep_0 + 178, 1302 );
setSeVolumeByWorkId( spep_0 + 178, SE015, 68 );

--爆発
SE016 = playSe( spep_0 + 212, 1023 );
stopSe( spep_0 + 308, SE016, 14 );

--爆発
SE017 = playSe( spep_0 + 212, 1159 );

--敵飛んでく
SE018 = playSe( spep_0 + 264, 1183 );

--悟空飛んでいく
SE020 = playSe( spep_0 + 320, 1278 );
stopSe( spep_0 + 402, SE020, 34 );

--悟空飛んでいく
SE021 = playSe( spep_0 + 320, 1182 );

--悟空飛んでいく
SE022 = playSe( spep_0 + 322, 1277 );
stopSe( spep_0 + 400, SE022, 30 );
setPitch( spep_0 + 322, SE022, -300 );
setTimeStretch( SE022, 0.8, 10, 1 );

--悟空飛んでいく
SE023 = playSe( spep_0 + 322, 1117 );
stopSe( spep_0 + 340, SE023, 34 );

--敵と空中対峙
SE024 = playSe( spep_0 + 372, 1227 );
stopSe( spep_0 + 442, SE024, 24 );

--敵と空中対峙
SE025 = playSe( spep_0 + 372, 1181 );
setSeVolumeByWorkId( spep_0 + 372, SE025, 10 );
setSeVolumeByWorkId( spep_0 + 376, SE025, 20 );
setSeVolumeByWorkId( spep_0 + 380, SE025, 40 );
setSeVolumeByWorkId( spep_0 + 384, SE025, 60 );
setSeVolumeByWorkId( spep_0 + 388, SE025, 80 );
setSeVolumeByWorkId( spep_0 + 392, SE025, 95 );
setSeVolumeByWorkId( spep_0 + 394, SE025, 100 );
stopSe( spep_0 + 446, SE025, 24 );

--アッパー
SE026 = playSe( spep_0 + 436, 1110 );
setSeVolumeByWorkId( spep_0 + 436, SE026, 100 );

--アッパー
SE027 = playSe( spep_0 + 438, 1010 );

--アッパー
SE028 = playSe( spep_0 + 438, 1187 );
setSeVolumeByWorkId( spep_0 + 438, SE028, 78 );

--アッパー
SE029 = playSe( spep_0 + 440, 1190 );
setSeVolumeByWorkId( spep_0 + 440, SE029, 87 );

--敵飛んでいく
SE030 = playSe( spep_0 + 460, 1183 );
stopSe( spep_0 +508 + 8, SE030, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 508;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_1

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
f = 4;
spep_2 = spep_c + 94 +f;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
f = 4;
spep_2 = spep_1 + 94 +f;


--------------------------------------
--後半(712F)
--------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0 -f, SP_03, 0x100, -1, 0, 0, 0 );  --後半　手前(ef_003)
setEffMoveKey( spep_2 + 0 -f, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 712, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -f, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 712, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -f, finish_f, 0 );
setEffRotateKey( spep_2 + 712, finish_f, 0 );
setEffAlphaKey( spep_2 + 0 -f, finish_f, 255 );
setEffAlphaKey( spep_2 + 712, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0 -f, SP_04, 0x80, -1, 0, 0, 0 );  --後半　奥(ef_004)
setEffMoveKey( spep_2 + 0 -f, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 712, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -f, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 712, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -f, finish_b, 0 );
setEffRotateKey( spep_2 + 712, finish_b, 0 );
setEffAlphaKey( spep_2 + 0 -f, finish_b, 255 );
setEffAlphaKey( spep_2 + 712, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 130, 1, 1 );
setDisp( spep_2 -3 + 164, 1, 0 );
setDisp( spep_2 -3 + 316, 1, 1 );
setDisp( spep_2 -3 + 389, 1, 0 );
changeAnime( spep_2 -3 + 130, 1, 108 );
changeAnime( spep_2 -3 + 136, 1, 106 );
changeAnime( spep_2 -3 + 316, 1, 106 );

setBlendColor( spep_2 -3 + 136, 1, 3, 0.51, 0.82, 0.86, 0.8 );
setBlendColor( spep_2 -3 + 164, 1, 3, 0.51, 0.82, 0.86, 0.8 );
setBlendColor( spep_2 -3 + 165, 1, 3, 0.51, 0.82, 0.86, 0 );

setBlendColor( spep_2 -3 + 316, 1, 3, 0.11, 0.52, 0.86, 0.2 );
setBlendColor( spep_2 -3 + 317, 1, 3, 0.11, 0.52, 0.86, 0.21 );
setBlendColor( spep_2 -3 + 318, 1, 3, 0.11, 0.52, 0.86, 0.22 );
setBlendColor( spep_2 -3 + 320, 1, 3, 0.11, 0.52, 0.86, 0.24 );
setBlendColor( spep_2 -3 + 322, 1, 3, 0.11, 0.52, 0.86, 0.28 );
setBlendColor( spep_2 -3 + 324, 1, 3, 0.11, 0.52, 0.86, 0.28 );
setBlendColor( spep_2 -3 + 326, 1, 3, 0.11, 0.52, 0.86, 0.3 );
setBlendColor( spep_2 -3 + 328, 1, 3, 0.11, 0.52, 0.86, 0.3 );
setBlendColor( spep_2 -3 + 330, 1, 3, 0.11, 0.52, 0.86, 0.32 );
setBlendColor( spep_2 -3 + 332, 1, 3, 0.11, 0.52, 0.86, 0.34 );
setBlendColor( spep_2 -3 + 334, 1, 3, 0.11, 0.52, 0.86, 0.36 );
setBlendColor( spep_2 -3 + 336, 1, 3, 0.11, 0.52, 0.86, 0.36 );
setBlendColor( spep_2 -3 + 338, 1, 3, 0.11, 0.52, 0.86, 0.38 );
setBlendColor( spep_2 -3 + 340, 1, 3, 0.11, 0.52, 0.86, 0.4 );
setBlendColor( spep_2 -3 + 342, 1, 3, 0.11, 0.52, 0.86, 0.42 );
setBlendColor( spep_2 -3 + 344, 1, 3, 0.11, 0.52, 0.86, 0.44 );
setBlendColor( spep_2 -3 + 346, 1, 3, 0.11, 0.52, 0.86, 0.46 );
setBlendColor( spep_2 -3 + 348, 1, 3, 0.11, 0.52, 0.86, 0.48 );
setBlendColor( spep_2 -3 + 350, 1, 3, 0.11, 0.52, 0.86, 0.5 );
setBlendColor( spep_2 -3 + 352, 1, 3, 0.11, 0.52, 0.86, 0.52 );
setBlendColor( spep_2 -3 + 354, 1, 3, 0.11, 0.52, 0.86, 0.54 );
setBlendColor( spep_2 -3 + 356, 1, 3, 0.11, 0.52, 0.86, 0.56 );
setBlendColor( spep_2 -3 + 358, 1, 3, 0.11, 0.52, 0.86, 0.58 );
setBlendColor( spep_2 -3 + 360, 1, 3, 0.11, 0.52, 0.86, 0.6 );
setBlendColor( spep_2 -3 + 362, 1, 3, 0.11, 0.52, 0.86, 0.6 );
setBlendColor( spep_2 -3 + 388, 1, 3, 0.11, 0.52, 0.86, 0.6 );
setBlendColor( spep_2 -3 + 389, 1, 3, 0.11, 0.52, 0.86, 0 );

setMoveKey( spep_2 -3 + 130, 1, -147.3, 109.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -147.3, 109.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -142.3, 95.2 , 0 );
setMoveKey( spep_2 -3 + 135, 1, -142.3, 95.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -138.1, 112.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -133.7, 88.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -137.1, 100.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -126.1, 90.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -133.4, 101.4 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -126, 87.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -124.2, 90.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -121, 78.9 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -120.9, 103.2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -126.5, 75.4 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -121.4, 90.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -123.8, 79.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -119.5, 91.1 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -113.8, 72.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -113.8, 72.2 , 0 );
--
setMoveKey( spep_2 -3 + 316, 1, -50.3, -176.1 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -95.9, -161.4 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -68.2, -197.2 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -67.1, -196 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -42, -176.7 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -55.5, -170.2 , 0 );
setMoveKey( spep_2 -3 + 328, 1, -52.6, -199.9 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -43.6, -202.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -44.9, -185.3 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -42, -170.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, -35.1, -224.5 , 0 );
setMoveKey( spep_2 -3 + 338, 1, -42.4, -206.5 , 0 );
setMoveKey( spep_2 -3 + 340, 1, -23.2, -203.2 , 0 );
setMoveKey( spep_2 -3 + 342, 1, -36.8, -186 , 0 );
setMoveKey( spep_2 -3 + 344, 1, -29.6, -217.6 , 0 );
setMoveKey( spep_2 -3 + 346, 1, -8.6, -233.9 , 0 );
setMoveKey( spep_2 -3 + 348, 1, -12.4, -199.3 , 0 );
setMoveKey( spep_2 -3 + 350, 1, -18, -226.6 , 0 );
setMoveKey( spep_2 -3 + 352, 1, -19.2, -240.5 , 0 );
setMoveKey( spep_2 -3 + 354, 1, -10.1, -237.6 , 0 );
setMoveKey( spep_2 -3 + 356, 1, -9.4, -176.7 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 1.4, -233.5 , 0 );
setMoveKey( spep_2 -3 + 360, 1, -28.3, -212.9 , 0 );
setMoveKey( spep_2 -3 + 362, 1, -19.8, -231.6 , 0 );
setMoveKey( spep_2 -3 + 364, 1, -9.6, -199 , 0 );
setMoveKey( spep_2 -3 + 366, 1, -11.8, -210.9 , 0 );
setMoveKey( spep_2 -3 + 368, 1, -8, -210.7 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 35.6, -188.5 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 37, -164.4 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 46, -189.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 59.6, -185.7 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 68.5, -164.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 60.7, -170.1 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 34.5, -177.7 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 76.4, -183.4 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 38.3, -139.6 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 38.1, -133.8 , 0 );
setMoveKey( spep_2 -3 + 389, 1, 38.1, -133.8 , 0 );

setScaleKey( spep_2 -3 + 130, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 135, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 136, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 164, 1, 0.11, 0.11 );
--
setScaleKey( spep_2 -3 + 316, 1, 3.7, 3.7 );
setScaleKey( spep_2 -3 + 388, 1, 3.7, 3.7 );
setScaleKey( spep_2 -3 + 389, 1, 3.7, 3.7 );

setRotateKey( spep_2 -3 + 130, 1, 27.2 );
setRotateKey( spep_2 -3 + 135, 1, 27.2 );
setRotateKey( spep_2 -3 + 136, 1, -23.7 );
setRotateKey( spep_2 -3 + 164, 1, -23.7 );

setRotateKey( spep_2 -3 + 316, 1, -31.7 );
setRotateKey( spep_2 -3 + 388, 1, -31.7 );
setRotateKey( spep_2 -3 + 389, 1, -31.7 );

-- ** 音 ** --
--かめはめ波溜め
SE032 = playSe( spep_2 + 0 -f, 1209 );
setPitch( spep_2 + 0 -f, SE032, -200 );
setTimeStretch( SE032, 0.87, 10, 1 );

--かめはめ波溜め
SE019 = playSe( spep_2 + 6, 1210,"",0.6 );
setSeVolumeByWorkId( spep_2 + 6, SE019, 14 );
setSeVolumeByWorkId( spep_2 + 12, SE019, 24 );
setSeVolumeByWorkId( spep_2 + 18, SE019, 34 );
setSeVolumeByWorkId( spep_2 + 24, SE019, 44 );
setSeVolumeByWorkId( spep_2 + 30, SE019, 54 );
setSeVolumeByWorkId( spep_2 + 36, SE019, 64 );
setStartTimeMs( SE019,  5533 );

--かめはめ波溜め
SE033 = playSe( spep_2 + 12, 1307 );
setSeVolumeByWorkId( spep_2 + 12, SE033, 224 );

--かめはめ波溜め
SE034 = playSe( spep_2 + 40, 1306 );
setSeVolumeByWorkId( spep_2 + 40, SE034, 58 );

--かめはめ波発射
SE035 = playSe( spep_2 + 86, 1258 );
setSeVolumeByWorkId( spep_2 + 86, SE035, 98 );

--かめはめ波発射
SE036 = playSe( spep_2 + 90, 1213 );
setSeVolumeByWorkId( spep_2 + 90, SE036, 100 );

--かめはめ波発射
SE037 = playSe( spep_2 + 90, 1223 );

--かめはめ波発射
SE038 = playSe( spep_2 + 90, 1027 );
setSeVolumeByWorkId( spep_2 + 90, SE038, 80 );

--かめはめ波中
SE039 = playSe( spep_2 + 124, 1161 );
setSeVolumeByWorkId( spep_2 + 124, SE039, 62 );

--かめはめ波中
SE040 = playSe( spep_2 + 124, 1211 );
stopSe( spep_2 + 406, SE040, 24 );
setPitch( spep_2 + 124, SE040, 500 );
setTimeStretch( SE040, 1.33, 10, 1 );

--かめはめ波広がる
SE041 = playSe( spep_2 + 154, 1258 );
setSeVolumeByWorkId( spep_2 + 154, SE041, 105 );

--かめはめ波広がる
SE042 = playSe( spep_2 + 154, 1187 );
setSeVolumeByWorkId( spep_2 + 154, SE042, 100 );
setPitch( spep_2 + 154, SE042, -400 );
setTimeStretch( SE042, 0.73, 10, 1 );

--かめはめ波中
SE043 = playSe( spep_2 + 172, 1226 );
setSeVolumeByWorkId( spep_2 + 172, SE043, 114 );
setSeVolumeByWorkId( spep_2 + 219, SE043, 114 );
setSeVolumeByWorkId( spep_2 + 220, SE043, 116 );
setSeVolumeByWorkId( spep_2 + 226, SE043, 122 );
setSeVolumeByWorkId( spep_2 + 232, SE043, 128 );
setSeVolumeByWorkId( spep_2 + 238, SE043, 134 );
setSeVolumeByWorkId( spep_2 + 244, SE043, 140 );
setSeVolumeByWorkId( spep_2 + 250, SE043, 146 );
setSeVolumeByWorkId( spep_2 + 256, SE043, 152 );
setSeVolumeByWorkId( spep_2 + 262, SE043, 158 );
setSeVolumeByWorkId( spep_2 + 268, SE043, 164 );
setSeVolumeByWorkId( spep_2 + 274, SE043, 170 );
setSeVolumeByWorkId( spep_2 + 280, SE043, 176 );
setSeVolumeByWorkId( spep_2 + 286, SE043, 182 );
setSeVolumeByWorkId( spep_2 + 292, SE043, 188 );
setSeVolumeByWorkId( spep_2 + 298, SE043, 194 );
setSeVolumeByWorkId( spep_2 + 304, SE043, 200 );
setSeVolumeByWorkId( spep_2 + 305, SE043, 184 );
setSeVolumeByWorkId( spep_2 + 306, SE043, 168 );
setSeVolumeByWorkId( spep_2 + 307, SE043, 152 );
setSeVolumeByWorkId( spep_2 + 308, SE043, 136 );
setSeVolumeByWorkId( spep_2 + 309, SE043, 120 );
setSeVolumeByWorkId( spep_2 + 310, SE043, 114 );
stopSe( spep_2 + 410, SE043, 34 );

--顔アップ
SE044 = playSe( spep_2 + 182, 1314 );
setSeVolumeByWorkId( spep_2 + 182, SE044, 0 );
setSeVolumeByWorkId( spep_2 + 183, SE044, 1.3 );
setSeVolumeByWorkId( spep_2 + 184, SE044, 2.6 );
setSeVolumeByWorkId( spep_2 + 185, SE044, 3.9 );
setSeVolumeByWorkId( spep_2 + 186, SE044, 5.2 );
setSeVolumeByWorkId( spep_2 + 187, SE044, 6.5 );
setSeVolumeByWorkId( spep_2 + 188, SE044, 7.8 );
setSeVolumeByWorkId( spep_2 + 189, SE044, 9.1 );
setSeVolumeByWorkId( spep_2 + 190, SE044, 10.4 );
setSeVolumeByWorkId( spep_2 + 191, SE044, 11.7 );
setSeVolumeByWorkId( spep_2 + 192, SE044, 13 );
setSeVolumeByWorkId( spep_2 + 193, SE044, 14.3 );
setSeVolumeByWorkId( spep_2 + 194, SE044, 15.6 );
setSeVolumeByWorkId( spep_2 + 195, SE044, 16.9 );
setSeVolumeByWorkId( spep_2 + 196, SE044, 18.2 );
setSeVolumeByWorkId( spep_2 + 197, SE044, 19.5 );
setSeVolumeByWorkId( spep_2 + 198, SE044, 20.8 );
setSeVolumeByWorkId( spep_2 + 199, SE044, 22.1 );
setSeVolumeByWorkId( spep_2 + 200, SE044, 23.4 );
setSeVolumeByWorkId( spep_2 + 201, SE044, 24.7 );
setSeVolumeByWorkId( spep_2 + 202, SE044, 26 );
setSeVolumeByWorkId( spep_2 + 203, SE044, 27.3 );
setSeVolumeByWorkId( spep_2 + 204, SE044, 28.6 );
setSeVolumeByWorkId( spep_2 + 205, SE044, 29.9 );
setSeVolumeByWorkId( spep_2 + 206, SE044, 31.2 );
setSeVolumeByWorkId( spep_2 + 207, SE044, 32.5 );
setSeVolumeByWorkId( spep_2 + 208, SE044, 33.8 );
setSeVolumeByWorkId( spep_2 + 209, SE044, 35.1 );
setSeVolumeByWorkId( spep_2 + 210, SE044, 36.4 );
setSeVolumeByWorkId( spep_2 + 211, SE044, 37.7 );
setSeVolumeByWorkId( spep_2 + 212, SE044, 39 );
setSeVolumeByWorkId( spep_2 + 213, SE044, 40.3 );
setSeVolumeByWorkId( spep_2 + 214, SE044, 41.6 );
setSeVolumeByWorkId( spep_2 + 215, SE044, 42.9 );
setSeVolumeByWorkId( spep_2 + 216, SE044, 44.2 );
setSeVolumeByWorkId( spep_2 + 217, SE044, 45.5 );
setSeVolumeByWorkId( spep_2 + 218, SE044, 46.8 );
setSeVolumeByWorkId( spep_2 + 219, SE044, 48.1 );
setSeVolumeByWorkId( spep_2 + 220, SE044, 49.4 );
setSeVolumeByWorkId( spep_2 + 221, SE044, 50.7 );
setSeVolumeByWorkId( spep_2 + 222, SE044, 52 );
setSeVolumeByWorkId( spep_2 + 223, SE044, 53.3 );
setSeVolumeByWorkId( spep_2 + 224, SE044, 54.6 );
setSeVolumeByWorkId( spep_2 + 225, SE044, 55.9 );
setSeVolumeByWorkId( spep_2 + 226, SE044, 57.2 );
setSeVolumeByWorkId( spep_2 + 227, SE044, 58.5 );
setSeVolumeByWorkId( spep_2 + 228, SE044, 59.8 );
setSeVolumeByWorkId( spep_2 + 229, SE044, 61.1 );
setSeVolumeByWorkId( spep_2 + 230, SE044, 62.4 );
setSeVolumeByWorkId( spep_2 + 231, SE044, 63.7 );
setSeVolumeByWorkId( spep_2 + 232, SE044, 65 );
setSeVolumeByWorkId( spep_2 + 233, SE044, 66.3 );
setSeVolumeByWorkId( spep_2 + 234, SE044, 67.6 );
setSeVolumeByWorkId( spep_2 + 235, SE044, 68.9 );
setSeVolumeByWorkId( spep_2 + 236, SE044, 70.2 );
setSeVolumeByWorkId( spep_2 + 237, SE044, 71.5 );
setSeVolumeByWorkId( spep_2 + 238, SE044, 72.8 );
setSeVolumeByWorkId( spep_2 + 239, SE044, 74.1 );
setSeVolumeByWorkId( spep_2 + 240, SE044, 75.4 );
setSeVolumeByWorkId( spep_2 + 241, SE044, 76.7 );
setSeVolumeByWorkId( spep_2 + 242, SE044, 78 );
setSeVolumeByWorkId( spep_2 + 243, SE044, 79.3 );
setSeVolumeByWorkId( spep_2 + 244, SE044, 80.6 );
setSeVolumeByWorkId( spep_2 + 245, SE044, 81.9 );
setSeVolumeByWorkId( spep_2 + 246, SE044, 83.2 );
setSeVolumeByWorkId( spep_2 + 247, SE044, 84.5 );
setSeVolumeByWorkId( spep_2 + 248, SE044, 85.8 );
setSeVolumeByWorkId( spep_2 + 249, SE044, 87.1 );
setSeVolumeByWorkId( spep_2 + 250, SE044, 88.4 );
setSeVolumeByWorkId( spep_2 + 251, SE044, 89.7 );
setSeVolumeByWorkId( spep_2 + 252, SE044, 91 );
setSeVolumeByWorkId( spep_2 + 253, SE044, 92.3 );
setSeVolumeByWorkId( spep_2 + 254, SE044, 93.6 );
setSeVolumeByWorkId( spep_2 + 255, SE044, 94.9 );
setSeVolumeByWorkId( spep_2 + 256, SE044, 96.2 );
setSeVolumeByWorkId( spep_2 + 257, SE044, 97.5 );
setSeVolumeByWorkId( spep_2 + 258, SE044, 98.8 );
setSeVolumeByWorkId( spep_2 + 259, SE044, 100.1 );
setSeVolumeByWorkId( spep_2 + 260, SE044, 101.4 );
setSeVolumeByWorkId( spep_2 + 261, SE044, 102.7 );
setSeVolumeByWorkId( spep_2 + 262, SE044, 104 );
setSeVolumeByWorkId( spep_2 + 263, SE044, 105.3 );
setSeVolumeByWorkId( spep_2 + 264, SE044, 106.6 );
setSeVolumeByWorkId( spep_2 + 265, SE044, 107.9 );
setSeVolumeByWorkId( spep_2 + 266, SE044, 109.2 );
setSeVolumeByWorkId( spep_2 + 267, SE044, 110.5 );
setSeVolumeByWorkId( spep_2 + 268, SE044, 111.8 );
setSeVolumeByWorkId( spep_2 + 269, SE044, 113.1 );
setSeVolumeByWorkId( spep_2 + 270, SE044, 114.4 );
setSeVolumeByWorkId( spep_2 + 271, SE044, 115.7 );
setSeVolumeByWorkId( spep_2 + 272, SE044, 117 );
setSeVolumeByWorkId( spep_2 + 273, SE044, 118.3 );
setSeVolumeByWorkId( spep_2 + 274, SE044, 119.6 );
setSeVolumeByWorkId( spep_2 + 275, SE044, 120.9 );
setSeVolumeByWorkId( spep_2 + 276, SE044, 122.2 );
setSeVolumeByWorkId( spep_2 + 277, SE044, 123.5 );
setSeVolumeByWorkId( spep_2 + 278, SE044, 124.8 );
setSeVolumeByWorkId( spep_2 + 279, SE044, 126.1 );
setSeVolumeByWorkId( spep_2 + 280, SE044, 127.4 );
setSeVolumeByWorkId( spep_2 + 281, SE044, 128.7 );
setSeVolumeByWorkId( spep_2 + 282, SE044, 130 );
setSeVolumeByWorkId( spep_2 + 283, SE044, 131.3 );
setSeVolumeByWorkId( spep_2 + 284, SE044, 132.6 );
setSeVolumeByWorkId( spep_2 + 285, SE044, 132.9 );
setSeVolumeByWorkId( spep_2 + 286, SE044, 133 );
stopSe( spep_2 + 330, SE044, 56 );
setPitch( spep_2 + 182, SE044, 400 );
setTimeStretch( SE044, 1.27, 10, 1 );

--顔アップから敵飲まれる
SE045 = playSe( spep_2 + 252, 1215,"",0.6 );
setSeVolumeByWorkId( spep_2 + 252, SE045, 67 );
stopSe( spep_2 + 392, SE045, 6 );

--敵飲まれる
SE046 = playSe( spep_2 + 314, 1161 );
setSeVolumeByWorkId( spep_2 + 314, SE046, 6 );
setSeVolumeByWorkId( spep_2 + 322, SE046, 15 );
setSeVolumeByWorkId( spep_2 + 330, SE046, 30 );
setSeVolumeByWorkId( spep_2 + 338, SE046, 45 );
setSeVolumeByWorkId( spep_2 + 346, SE046, 60 );
setSeVolumeByWorkId( spep_2 + 354, SE046, 85 );
setSeVolumeByWorkId( spep_2 + 362, SE046, 100 );
stopSe( spep_2 + 406, SE046, 24 );	

--かめはめ波気弾道
SE047 = playSe( spep_2 + 368, 1212,"",0.6 );
setSeVolumeByWorkId( spep_2 + 368, SE047, 8 );
setSeVolumeByWorkId( spep_2 + 370, SE047, 16 );
setSeVolumeByWorkId( spep_2 + 372, SE047, 24 );
setSeVolumeByWorkId( spep_2 + 374, SE047, 32 );
setSeVolumeByWorkId( spep_2 + 376, SE047, 40 );
setSeVolumeByWorkId( spep_2 + 378, SE047, 48 );
setSeVolumeByWorkId( spep_2 + 380, SE047, 56 );
setSeVolumeByWorkId( spep_2 + 382, SE047, 60 );
stopSe( spep_2 + 428, SE047, 28 );
setStartTimeMs( SE047,  600 );

--敵飲み込まれる
SE048 = playSe( spep_2 + 350, 1021 );
setSeVolumeByWorkId( spep_2 + 350, SE048, 79 );

--岩当たる
SE049 = playSe( spep_2 + 398, 1188 );
setSeVolumeByWorkId( spep_2 + 398, SE049, 126 );

--ラスト爆発
SE050 = playSe( spep_2 + 424, 1067 );
setSeVolumeByWorkId( spep_2 + 424, SE050, 80 );

--ラスト爆発
SE051 = playSe( spep_2 + 426, 1024 );
setSeVolumeByWorkId( spep_2 + 426, SE051, 82 );

--ラスト爆発
SE052 = playSe( spep_2 + 428, 1023 );
setSeVolumeByWorkId( spep_2 + 428, SE052, 71 );

--ラスト爆発
SE053 = playSe( spep_2 + 428, 1159 );
setSeVolumeByWorkId( spep_2 + 428, SE053, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 714, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 388 +2 );
endPhase( spep_2 + 488 +2 );--478

end