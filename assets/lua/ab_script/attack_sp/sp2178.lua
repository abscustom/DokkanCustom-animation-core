--1021920:UR超サイヤ人孫悟空(GT)_かめはめ波
--sp_effect_a1_00289
--sp2178

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
SP_01 = 157236;  --冒頭〜かめはめ波溜め：手前 ef_001
SP_03 = 157238;  --発射〜着弾：手前 ef_003

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
-- ご対面(746F)
------------------------------------------------------
spep_0 = 0;

setupMovie( 0, SP_01, 2, 1);

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 746, 0x100, -1, 0, 0, 0 );  --冒頭〜かめはめ波溜め：手前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 746, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 746, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 746, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 746 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 746, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 248, 1, 1 );
changeAnime( spep_0 -3 + 248, 1, 117 );

setMoveKey( spep_0 -3 + 248, 1, 266.8, -54.2 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 200.6, -51.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 133.6, -49.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 127.7, -49.3 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 121.8, -49.3 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 115.9, -49.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 110.1, -49.3 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 104.2, -49.3 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 98.3, -49.3 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 92.4, -49.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 86.6, -49.3 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 80.3, -47.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 78.4, -44.6 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 76.1, -41.2 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 73.3, -37.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 70, -32.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 66.3, -27.1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 62.1, -21.1 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 57.4, -14.4 , 0 );

setScaleKey( spep_0 -3 + 248, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 250, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 268, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 270, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 272, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 274, 1, 1, 1 );
setScaleKey( spep_0 -3 + 276, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 278, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 280, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 282, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 284, 1, 1.11, 1.11 );

setRotateKey( spep_0 -3 + 248, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--気ダメ
SE002 = playSe( spep_0 + 44, 1168 );
setSeVolumeByWorkId( spep_0 + 44, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 45, SE002, 7 );
setSeVolumeByWorkId( spep_0 + 46, SE002, 14 );
setSeVolumeByWorkId( spep_0 + 47, SE002, 25 );
setSeVolumeByWorkId( spep_0 + 48, SE002, 36 );
setSeVolumeByWorkId( spep_0 + 49, SE002, 47 );
setSeVolumeByWorkId( spep_0 + 50, SE002, 58 );
setStartTimeMs( SE002,  617 );

--気ダメ
SE003 = playSe( spep_0 + 36, 1072 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 0 )
setSeVolumeByWorkId( spep_0 + 38, SE003, 32 )
setSeVolumeByWorkId( spep_0 + 40, SE003, 64 )
setSeVolumeByWorkId( spep_0 + 42, SE003, 96 )
setSeVolumeByWorkId( spep_0 + 44, SE003, 128 )
setSeVolumeByWorkId( spep_0 + 46, SE003, 158 )
setStartTimeMs( SE003,  317 );

--オーラ
SE004 = playSe( spep_0 + 24, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );

--オーラ
SE005 = playSe( spep_0 + 48, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 79 );

--気ダメ
SE006 = playSe( spep_0 + 50, 1035 );
setSeVolumeByWorkId( spep_0 + 50, SE006, 126 );

--気ダメ
SE007 = playSe( spep_0 + 50, 1264 );
setSeVolumeByWorkId( spep_0 + 50, SE007, 66 );
stopSe( spep_0 + 132, SE007, 92 );

--気ダメ
SE008 = playSe( spep_0 + 50, 1068 );
setSeVolumeByWorkId( spep_0 + 50, SE008, 84 );

--オーラ
SE009 = playSe( spep_0 + 72, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 72, SE009, 79 );

--オーラ
SE010 = playSe( spep_0 + 96, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 96, SE010, 79 );

--オーラ
SE011 = playSe( spep_0 + 120, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 120, SE011, 79 );

--画面遷移
SE012 = playSe( spep_0 + 228, 44 );

--悟空ダッシュ
SE013 = playSe( spep_0 + 258, 1182 );

--悟空ダッシュ
SE014 = playSe( spep_0 + 258, 1117 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 746 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 282 ; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 57.4, -14.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 52.3, -7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 46.7, 1.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 40.6, 9.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 34.1, 19.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 27.1, 29.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.11, 1.11 );
    setScaleKey( SP_dodge + 2, 1, 1.15, 1.15 );
    setScaleKey( SP_dodge + 4, 1, 1.18, 1.18 );
    setScaleKey( SP_dodge + 6, 1, 1.22, 1.22 );
    setScaleKey( SP_dodge + 8, 1, 1.26, 1.26 );
    setScaleKey( SP_dodge + 10, 1, 1.3, 1.3 );

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

spep_x = spep_0 + 654;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -30, 505.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 505.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 505.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 370, 1, 0 );
setDisp( spep_0 -3 + 416, 1, 1 );
setDisp( spep_0 -3 + 512, 1, 0 );
setDisp( spep_0 -3 + 572, 1, 1 );
setDisp( spep_0 -3 + 632, 1, 0 );

changeAnime( spep_0 -3 + 300, 1, 101 );
changeAnime( spep_0 -3 + 322, 1, 108 );
changeAnime( spep_0 -3 + 416, 1, 106 );
changeAnime( spep_0 -3 + 434, 1, 108 );
changeAnime( spep_0 -3 + 572, 1, 106 );
changeAnime( spep_0 -3 + 582, 1, 105 );

setMoveKey( spep_0 -3 + 286, 1, 52.3, -7 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 46.7, 1.1 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 40.6, 9.8 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 34.1, 19.3 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 27.1, 29.3 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 19.6, 40.1 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 11.7, 51.5 , 0 );
setMoveKey( spep_0 -3 + 299, 1, 11.7, 51.5 , 0 );--
setMoveKey( spep_0 -3 + 300, 1, 157.7, 52.1 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 145.6, 52.1 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 133.5, 52.1 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 121.4, 52.1 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 109.3, 52.1 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 97.1, 52.1 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 85, 52.1 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 72.9, 52.1 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 60.8, 52.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 48.7, 52.1 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 36.6, 52.1 , 0 );
setMoveKey( spep_0 -3 + 321, 1, 36.6, 52.1 , 0 );--
setMoveKey( spep_0 -3 + 322, 1, 50.7, 68.5 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 67.6, 175.6 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 71.3, 253.7 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 79.1, 235.8 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 73.4, 217.4 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 80.2, 226.5 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 73.6, 218.7 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 83.3, 229.9 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 77.5, 225.8 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 85.6, 227.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 79.9, 217.5 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 86.4, 216.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 87, 211.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 87.6, 207.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 88.4, 204 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 89.3, 201 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 90.2, 198.6 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 91.3, 196.7 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 92.4, 195.3 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 93.6, 194.5 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 94.9, 194.1 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 96.3, 194.2 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 97.7, 194.7 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 99.2, 195.7 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 99.2, 195.7 , 0 );
--
setMoveKey( spep_0 -3 + 416, 1, 424.4, -262.1 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 366.6, -209.4 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 322.7, -169.3 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 293.2, -140 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 278.5, -120.4 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 280.1, -109.6 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 281.3, -99.9 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 282.3, -91.1 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 283, -83.3 , 0 );
setMoveKey( spep_0 -3 + 433, 1, 283, -83.3 , 0 );--
setMoveKey( spep_0 -3 + 434, 1, 355.7, -145 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 356.3, -145 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 354.6, -137.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 353.1, -131.3 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 353.4, -130.4 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 355.8, -141.6 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 354.7, -140.8 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 350.6, -137.9 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 348.4, -138.5 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 349.3, -134.2 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 352, -131.3 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 351.8, -144.4 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 350.7, -143.9 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 348.5, -146.6 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 344.4, -134.3 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 345.1, -138.8 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 347.9, -141.7 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 343.6, -127 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 341.7, -139.5 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 344.1, -145.1 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 345, -142 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 344.6, -145.3 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 341.1, -139.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 339.1, -135.4 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 342, -130.4 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 341.5, -145.5 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 340.4, -144.5 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 333.9, -139.6 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 334.2, -139.9 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 334.2, -129.6 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 337.1, -142.2 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 325.8, -147.3 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 333.2, -133.1 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 320.9, -140.9 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 333.8, -142.2 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 332, -150.4 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 329.8, -142.1 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 327, -128 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 327.9, -135.3 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 327.9, -135.3 , 0 );
--
setMoveKey( spep_0 -3 + 572, 1, -44.4, 174.7 , 0 );
setMoveKey( spep_0 -3 + 574, 1, -38, 172.9 , 0 );
setMoveKey( spep_0 -3 + 576, 1, -31.9, 170.1 , 0 );
setMoveKey( spep_0 -3 + 578, 1, -26, 166.1 , 0 );
setMoveKey( spep_0 -3 + 580, 1, -20.2, 161.1 , 0 );
setMoveKey( spep_0 -3 + 581, 1, -20.2, 161.1 , 0 );--
setMoveKey( spep_0 -3 + 582, 1, 33.6, 113.3 , 0 );
setMoveKey( spep_0 -3 + 584, 1, 29.8, 140.1 , 0 );
setMoveKey( spep_0 -3 + 586, 1, 3.7, 144.4 , 0 );
setMoveKey( spep_0 -3 + 588, 1, 9.6, 155.2 , 0 );
setMoveKey( spep_0 -3 + 590, 1, -10, 172.3 , 0 );
setMoveKey( spep_0 -3 + 592, 1, -0.6, 162.6 , 0 );
setMoveKey( spep_0 -3 + 594, 1, -7.2, 149.6 , 0 );
setMoveKey( spep_0 -3 + 596, 1, -1, 162.3 , 0 );
setMoveKey( spep_0 -3 + 598, 1, -10.7, 155.8 , 0 );
setMoveKey( spep_0 -3 + 600, 1, -1.3, 162 , 0 );
setMoveKey( spep_0 -3 + 602, 1, -4.7, 149.1 , 0 );
setMoveKey( spep_0 -3 + 604, 1, -1.7, 161.7 , 0 );
setMoveKey( spep_0 -3 + 606, 1, -11.4, 158.4 , 0 );
setMoveKey( spep_0 -3 + 608, 1, -2, 161.4 , 0 );
setMoveKey( spep_0 -3 + 610, 1, -15, 170.9 , 0 );
setMoveKey( spep_0 -3 + 612, 1, -2.3, 161.1 , 0 );
setMoveKey( spep_0 -3 + 614, 1, -5.7, 151.4 , 0 );
setMoveKey( spep_0 -3 + 616, 1, -2.7, 160.8 , 0 );
setMoveKey( spep_0 -3 + 618, 1, -2.8, 160.7 , 0 );
setMoveKey( spep_0 -3 + 620, 1, -3, 160.5 , 0 );
setMoveKey( spep_0 -3 + 622, 1, -3.1, 160.4 , 0 );
setMoveKey( spep_0 -3 + 624, 1, -3.3, 160.2 , 0 );
setMoveKey( spep_0 -3 + 626, 1, -3.5, 160.1 , 0 );
setMoveKey( spep_0 -3 + 628, 1, -3.6, 159.9 , 0 );
setMoveKey( spep_0 -3 + 630, 1, -3.8, 159.8 , 0 );
setMoveKey( spep_0 -3 + 632, 1, -3.8, 159.8 , 0 );


setScaleKey( spep_0 -3 + 286, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 288, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 290, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 292, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 294, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 296, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 298, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 299, 1, 1.4, 1.4 );--
setScaleKey( spep_0 -3 + 300, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 321, 1, 1.43, 1.43 );--
setScaleKey( spep_0 -3 + 322, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 324, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 326, 1, 1.47, 1.47 );
setScaleKey( spep_0 -3 + 328, 1, 1.56, 1.56 );
setScaleKey( spep_0 -3 + 330, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 332, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 334, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 336, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 338, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 340, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 342, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 344, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 346, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 348, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 350, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 352, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 354, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 356, 1, 2.31, 2.31 );
setScaleKey( spep_0 -3 + 358, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 360, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 362, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 364, 1, 2.44, 2.44 );
setScaleKey( spep_0 -3 + 366, 1, 2.46, 2.46 );
setScaleKey( spep_0 -3 + 368, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 370, 1, 2.49, 2.49 );
--
setScaleKey( spep_0 -3 + 416, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 418, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 420, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 422, 1, 2.17, 2.17 );
setScaleKey( spep_0 -3 + 424, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 426, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 428, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 430, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 433, 1, 2.07, 2.07 );--
setScaleKey( spep_0 -3 + 434, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 436, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 438, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 440, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 442, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 444, 1, 1.83, 1.83 );
setScaleKey( spep_0 -3 + 446, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 448, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 450, 1, 1.81, 1.81 );
setScaleKey( spep_0 -3 + 452, 1, 1.81, 1.81 );
setScaleKey( spep_0 -3 + 454, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 456, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 458, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 460, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 462, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 464, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 466, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 468, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 470, 1, 1.75, 1.75 );
setScaleKey( spep_0 -3 + 472, 1, 1.75, 1.75 );
setScaleKey( spep_0 -3 + 474, 1, 1.74, 1.74 );
setScaleKey( spep_0 -3 + 476, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 478, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 480, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 482, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 484, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 486, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 488, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 490, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 492, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 494, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 496, 1, 1.67, 1.67 );
setScaleKey( spep_0 -3 + 498, 1, 1.67, 1.67 );
setScaleKey( spep_0 -3 + 500, 1, 1.66, 1.66 );
setScaleKey( spep_0 -3 + 502, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 504, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 506, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 508, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 510, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 512, 1, 1.63, 1.63 );
--
setScaleKey( spep_0 -3 + 572, 1, 3.54, 3.54 );
setScaleKey( spep_0 -3 + 574, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 576, 1, 3.1, 3.1 );
setScaleKey( spep_0 -3 + 578, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 580, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 581, 1, 2.66, 2.66 );--
setScaleKey( spep_0 -3 + 582, 1, 2.05, 2.05 );
setScaleKey( spep_0 -3 + 584, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 586, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 588, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 590, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 592, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 594, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 596, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 598, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 600, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 602, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 604, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 606, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 608, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 610, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 612, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 614, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 616, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 618, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 620, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 622, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 624, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 626, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 628, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 630, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 632, 1, 0.14, 0.14 );


setRotateKey( spep_0 -3 + 321, 1, 0 );--
setRotateKey( spep_0 -3 + 322, 1, -17.5 );
setRotateKey( spep_0 -3 + 324, 1, -17.4 );
setRotateKey( spep_0 -3 + 326, 1, -17.3 );
setRotateKey( spep_0 -3 + 344, 1, -17.3 );
setRotateKey( spep_0 -3 + 346, 1, -17.4 );
setRotateKey( spep_0 -3 + 362, 1, -17.4 );
setRotateKey( spep_0 -3 + 364, 1, -17.5 );
setRotateKey( spep_0 -3 + 370, 1, -17.5 );
--
setRotateKey( spep_0 -3 + 416, 1, -29 );
setRotateKey( spep_0 -3 + 418, 1, -28.5 );
setRotateKey( spep_0 -3 + 420, 1, -28.1 );
setRotateKey( spep_0 -3 + 422, 1, -27.7 );
setRotateKey( spep_0 -3 + 424, 1, -27.3 );
setRotateKey( spep_0 -3 + 426, 1, -27 );
setRotateKey( spep_0 -3 + 428, 1, -26.7 );
setRotateKey( spep_0 -3 + 430, 1, -26.4 );
setRotateKey( spep_0 -3 + 432, 1, -26.2 );
setRotateKey( spep_0 -3 + 433, 1, -26.2 );--
setRotateKey( spep_0 -3 + 434, 1, 18 );
setRotateKey( spep_0 -3 + 436, 1, 17.8 );
setRotateKey( spep_0 -3 + 508, 1, 17.8 );
setRotateKey( spep_0 -3 + 510, 1, 18 );
setRotateKey( spep_0 -3 + 512, 1, 18 );
--
setRotateKey( spep_0 -3 + 572, 1, -41.5 );
setRotateKey( spep_0 -3 + 581, 1, -41.5 );--
setRotateKey( spep_0 -3 + 582, 1, 0 );
setRotateKey( spep_0 -3 + 630, 1, 0 );
setRotateKey( spep_0 -3 + 632, 1, 0 );

-- ** 音 ** --
--膝蹴り
SE015 = playSe( spep_0 + 308, 1003 );

--膝蹴り
SE016 = playSe( spep_0 + 314, 1010 );

--膝蹴り
SE017 = playSe( spep_0 + 314, 1190 );
setSeVolumeByWorkId( spep_0 + 314, SE017, 82 );

--膝蹴り
SE018 = playSe( spep_0 + 316, 1110 );
setSeVolumeByWorkId( spep_0 + 316, SE018, 140 );

--気弾溜め
SE019 = playSe( spep_0 + 366, 1255 );
stopSe( spep_0 + 410, SE019, 22 );

--気弾溜め
SE020 = playSe( spep_0 + 366, 1262 );
setSeVolumeByWorkId( spep_0 + 366, SE020, 141 );
stopSe( spep_0 + 418, SE020, 4 );

--気弾溜め
SE021 = playSe( spep_0 + 366, 1004 );
setSeVolumeByWorkId( spep_0 + 366, SE021, 81 );

--連続気弾
SE022 = playSe( spep_0 + 420, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 420, SE022, 126 );
setPitch( spep_0 + 420, SE022, 200 );
setTimeStretch( SE022, 1.13, 10, 1 );

--連続気弾
SE023 = playSe( spep_0 + 420, 1015,"",0.6 );

--連続気弾
SE024 = playSe( spep_0 + 430, 1011,"",0.6 );
setSeVolumeByWorkId( spep_0 + 430, SE024, 75 );

--連続気弾
SE025 = playSe( spep_0 + 436, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 436, SE025, 126 );
setPitch( spep_0 + 436, SE025, 200 );
setTimeStretch( SE025, 1.13, 10, 1 );

--連続気弾
SE026 = playSe( spep_0 + 436, 1015,"",0.6 );

--連続気弾
SE027 = playSe( spep_0 + 450, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 450, SE027, 126 );
setPitch( spep_0 + 450, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );

--連続気弾
SE028 = playSe( spep_0 + 450, 1015,"",0.6 );

--気弾爆発
SE029 = playSe( spep_0 + 460, 102,"",0.6 );

--連続気弾
SE030 = playSe( spep_0 + 464, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 464, SE030, 126 );
setPitch( spep_0 + 464, SE030, 200 );
setTimeStretch( SE030, 1.13, 10, 1 );

--連続気弾
SE031 = playSe( spep_0 + 464, 1015,"",0.6 );

--連続気弾
SE032 = playSe( spep_0 + 478, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 478, SE032, 126 );
setPitch( spep_0 + 478, SE032, 200 );
setTimeStretch( SE032, 1.13, 10, 1 );

--連続気弾
SE033 = playSe( spep_0 + 478, 1015,"",0.6 );

--連続気弾
SE034 = playSe( spep_0 + 492, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 492, SE034, 126 );
setPitch( spep_0 + 492, SE034, 200 );
setTimeStretch( SE034, 1.13, 10, 1 );

--連続気弾
SE035 = playSe( spep_0 + 492, 1015,"",0.6 );

--画面遷移
SE036 = playSe( spep_0 + 492, 1072 );
setSeVolumeByWorkId( spep_0 + 492, SE036, 72 );

--ふりかぶり
SE037 = playSe( spep_0 + 548, 1116 );
stopSe( spep_0 + 566, SE037, 14 );

--ふりかぶり
SE038 = playSe( spep_0 + 560, 1003 );

--パンチ
SE039 = playSe( spep_0 + 570, 1120 );

--パンチ
SE040 = playSe( spep_0 + 570, 1183 );
setSeVolumeByWorkId( spep_0 + 570, SE040, 63 );
stopSe( spep_0 + 622, SE040, 30 );

--パンチ
SE041 = playSe( spep_0 + 576, 9 );
setSeVolumeByWorkId( spep_0 + 576, SE041, 79 );
stopSe( spep_0 + 596, SE041, 36 );

--かめはめ波溜め
SE042 = playSe( spep_0 + 646, 1209,"",0.7 );
stopSe( spep_0 +738 + 20, SE042, 0 );

--かめはめ波溜め
SE043 = playSe( spep_0 + 646, 1210,"",0.7 );
stopSe( spep_0 +738 + 20, SE043, 0 );

--顔カットイン
SE044 = playSe( spep_0 + 660, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 746;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

--発射前かめはめ波溜め
SE045 = playSe( spep_1 + 82 + 4, 1210,"",0.7 );
setSeVolumeByWorkId( spep_1 + 82 + 4, SE045, 0 );
setSeVolumeByWorkId( spep_1 + 84 + 4, SE045, 25 );
setSeVolumeByWorkId( spep_1 + 86 + 4, SE045, 50 );
setSeVolumeByWorkId( spep_1 + 88 + 4, SE045, 75 );
setSeVolumeByWorkId( spep_1 + 90 + 4, SE045, 100 );
stopSe( spep_1 +94 + 48 + 4, SE045, 10 );
setStartTimeMs( SE045,  1667 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94+4;

------------------------------------------------------
-- ご対面(276F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --発射〜着弾：手前(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 276, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 276, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 276, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 154, 1, 0 );
changeAnime( spep_2 -3 + 120, 1, 105 );

setMoveKey( spep_2 -3 + 120, 1, -55.1, -24.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -16.3, -34 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 22.5, -43.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 61.3, -52.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 100.1, -61.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 103.2, -62.2 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 106.2, -62.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 109.2, -63.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 112.2, -64.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 115.2, -65 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 118.2, -65.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 121.2, -66.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 124.2, -67.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 127.2, -67.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 130.2, -68.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 133.2, -69.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 136.2, -69.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 136.2, -69.9 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 122, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 124, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 126, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 128, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 130, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 132, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 134, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 136, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 138, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 140, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 144, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 146, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 148, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 150, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 152, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 154, 1, 0.24, 0.24 );

setRotateKey( spep_2 -3 + 120, 1, 34.1 );
setRotateKey( spep_2 -3 + 136, 1, 34.1 );
setRotateKey( spep_2 -3 + 138, 1, 34.2 );
setRotateKey( spep_2 -3 + 154, 1, 34.2 );

-- ** 音 ** --
--かめはめ波発射
SE047 = playSe( spep_2 + 46, 1027 );
setSeVolumeByWorkId( spep_2 + 46, SE047, 65 );

--かめはめ波発射
SE048 = playSe( spep_2 + 46, 1284 );
stopSe( spep_2 + 154, SE048, 12 );

--かめはめ波発射
SE049 = playSe( spep_2 + 46, 1022 );
stopSe( spep_2 + 154, SE049, 12 );

--かめはめ波発射
SE050 = playSe( spep_2 + 46, 1213 );
setSeVolumeByWorkId( spep_2 + 46, SE050, 57 );
stopSe( spep_2 + 154, SE050, 12 );

--かめはめ波飛んでいく
SE051 = playSe( spep_2 + 122, 1202,"",0.7 );
setSeVolumeByWorkId( spep_2 + 122, SE051, 160 );
stopSe( spep_2 + 154, SE051, 12 );

--かめはめ波飛んでいく
SE052 = playSe( spep_2 + 122, 1021 );
stopSe( spep_2 + 154, SE052, 12 );

--爆発
SE053 = playSe( spep_2 + 152, 1067 );

--爆発
SE054 = playSe( spep_2 + 152, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 276 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 166 );
endPhase( spep_2 + 266 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
-- ご対面(746F)
------------------------------------------------------
spep_0 = 0;

setupMovie( 0, SP_01, 2, 1);

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 746, 0x100, -1, 0, 0, 0 );  --冒頭〜かめはめ波溜め：手前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 746, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 746, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 746, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 746 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 746, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 248, 1, 1 );
changeAnime( spep_0 -3 + 248, 1,17 );

setMoveKey( spep_0 -3 + 248, 1, -266.8, -54.2 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -200.6, -51.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -133.6, -49.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -127.7, -49.3 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -121.8, -49.3 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -115.9, -49.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -110.1, -49.3 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -104.2, -49.3 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -98.3, -49.3 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -92.4, -49.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -86.6, -49.3 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -80.3, -47.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -78.4, -44.6 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -76.1, -41.2 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -73.3, -37.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -70, -32.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -66.3, -27.1 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -62.1, -21.1 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -57.4, -14.4 , 0 );

setScaleKey( spep_0 -3 + 248, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 250, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 268, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 270, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 272, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 274, 1, 1, 1 );
setScaleKey( spep_0 -3 + 276, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 278, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 280, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 282, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 284, 1, 1.11, 1.11 );

setRotateKey( spep_0 -3 + 248, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSe( spep_0 + 0, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--気ダメ
SE002 = playSe( spep_0 + 44, 1168 );
setSeVolumeByWorkId( spep_0 + 44, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 45, SE002, 7 );
setSeVolumeByWorkId( spep_0 + 46, SE002, 14 );
setSeVolumeByWorkId( spep_0 + 47, SE002, 25 );
setSeVolumeByWorkId( spep_0 + 48, SE002, 36 );
setSeVolumeByWorkId( spep_0 + 49, SE002, 47 );
setSeVolumeByWorkId( spep_0 + 50, SE002, 58 );
setStartTimeMs( SE002,  617 );

--気ダメ
SE003 = playSe( spep_0 + 36, 1072 );
setSeVolumeByWorkId( spep_0 + 36, SE003, 0 )
setSeVolumeByWorkId( spep_0 + 38, SE003, 32 )
setSeVolumeByWorkId( spep_0 + 40, SE003, 64 )
setSeVolumeByWorkId( spep_0 + 42, SE003, 96 )
setSeVolumeByWorkId( spep_0 + 44, SE003, 128 )
setSeVolumeByWorkId( spep_0 + 46, SE003, 158 )
setStartTimeMs( SE003,  317 );

--オーラ
SE004 = playSe( spep_0 + 24, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );

--オーラ
SE005 = playSe( spep_0 + 48, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 79 );

--気ダメ
SE006 = playSe( spep_0 + 50, 1035 );
setSeVolumeByWorkId( spep_0 + 50, SE006, 126 );

--気ダメ
SE007 = playSe( spep_0 + 50, 1264 );
setSeVolumeByWorkId( spep_0 + 50, SE007, 66 );
stopSe( spep_0 + 132, SE007, 92 );

--気ダメ
SE008 = playSe( spep_0 + 50, 1068 );
setSeVolumeByWorkId( spep_0 + 50, SE008, 84 );

--オーラ
SE009 = playSe( spep_0 + 72, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 72, SE009, 79 );

--オーラ
SE010 = playSe( spep_0 + 96, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 96, SE010, 79 );

--オーラ
SE011 = playSe( spep_0 + 120, 1036,"",0.6 );
setSeVolumeByWorkId( spep_0 + 120, SE011, 79 );

--画面遷移
SE012 = playSe( spep_0 + 228, 44 );

--悟空ダッシュ
SE013 = playSe( spep_0 + 258, 1182 );

--悟空ダッシュ
SE014 = playSe( spep_0 + 258, 1117 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 746 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 282 ; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 57.4, -14.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 52.3, -7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 46.7, 1.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 40.6, 9.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 34.1, 19.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 27.1, 29.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.11, 1.11 );
    setScaleKey( SP_dodge + 2, 1, 1.15, 1.15 );
    setScaleKey( SP_dodge + 4, 1, 1.18, 1.18 );
    setScaleKey( SP_dodge + 6, 1, 1.22, 1.22 );
    setScaleKey( SP_dodge + 8, 1, 1.26, 1.26 );
    setScaleKey( SP_dodge + 10, 1, 1.3, 1.3 );

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

spep_x = spep_0 + 654;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -30, 505.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 505.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 505.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 370, 1, 0 );
setDisp( spep_0 -3 + 416, 1, 1 );
setDisp( spep_0 -3 + 512, 1, 0 );
setDisp( spep_0 -3 + 572, 1, 1 );
setDisp( spep_0 -3 + 632, 1, 0 );

changeAnime( spep_0 -3 + 300, 1, 1 );
changeAnime( spep_0 -3 + 322, 1, 8 );
changeAnime( spep_0 -3 + 416, 1, 6 );
changeAnime( spep_0 -3 + 434, 1, 8 );
changeAnime( spep_0 -3 + 572, 1, 106 );
changeAnime( spep_0 -3 + 582, 1, 105 );

setMoveKey( spep_0 -3 + 286, 1, -52.3, -7 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -46.7, 1.1 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -40.6, 9.8 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -34.1, 19.3 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -27.1, 29.3 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -19.6, 40.1 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -11.7, 51.5 , 0 );
setMoveKey( spep_0 -3 + 299, 1, -11.7, 51.5 , 0 );--
setMoveKey( spep_0 -3 + 300, 1, -157.7, 52.1 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -145.6, 52.1 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -133.5, 52.1 , 0 );
setMoveKey( spep_0 -3 + 306, 1, -121.4, 52.1 , 0 );
setMoveKey( spep_0 -3 + 308, 1, -109.3, 52.1 , 0 );
setMoveKey( spep_0 -3 + 310, 1, -97.1, 52.1 , 0 );
setMoveKey( spep_0 -3 + 312, 1, -85, 52.1 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -72.9, 52.1 , 0 );
setMoveKey( spep_0 -3 + 316, 1, -60.8, 52.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, -48.7, 52.1 , 0 );
setMoveKey( spep_0 -3 + 320, 1, -36.6, 52.1 , 0 );
setMoveKey( spep_0 -3 + 321, 1, -36.6, 52.1 , 0 );--
setMoveKey( spep_0 -3 + 322, 1, -50.7, 68.5 , 0 );
setMoveKey( spep_0 -3 + 324, 1, -67.6, 175.6 , 0 );
setMoveKey( spep_0 -3 + 326, 1, -71.3, 253.7 , 0 );
setMoveKey( spep_0 -3 + 328, 1, -79.1, 235.8 , 0 );
setMoveKey( spep_0 -3 + 330, 1, -73.4, 217.4 , 0 );
setMoveKey( spep_0 -3 + 332, 1, -80.2, 226.5 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -73.6, 218.7 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -83.3, 229.9 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -77.5, 225.8 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -85.6, 227.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -79.9, 217.5 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -86.4, 216.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, -87, 211.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, -87.6, 207.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, -88.4, 204 , 0 );
setMoveKey( spep_0 -3 + 352, 1, -89.3, 201 , 0 );
setMoveKey( spep_0 -3 + 354, 1, -90.2, 198.6 , 0 );
setMoveKey( spep_0 -3 + 356, 1, -91.3, 196.7 , 0 );
setMoveKey( spep_0 -3 + 358, 1, -92.4, 195.3 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -93.6, 194.5 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -94.9, 194.1 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -96.3, 194.2 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -97.7, 194.7 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -99.2, 195.7 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -99.2, 195.7 , 0 );
--
setMoveKey( spep_0 -3 + 416, 1, -424.4, -262.1 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -366.6, -209.4 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -322.7, -169.3 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -293.2, -140 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -278.5, -120.4 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -280.1, -109.6 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -281.3, -99.9 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -282.3, -91.1 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -283, -83.3 , 0 );
setMoveKey( spep_0 -3 + 433, 1, -283, -83.3 , 0 );--
setMoveKey( spep_0 -3 + 434, 1, -355.7, -145 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -356.3, -145 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -354.6, -137.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -353.1, -131.3 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -353.4, -130.4 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -355.8, -141.6 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -354.7, -140.8 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -350.6, -137.9 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -348.4, -138.5 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -349.3, -134.2 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -352, -131.3 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -351.8, -144.4 , 0 );
setMoveKey( spep_0 -3 + 458, 1, -350.7, -143.9 , 0 );
setMoveKey( spep_0 -3 + 460, 1, -348.5, -146.6 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -344.4, -134.3 , 0 );
setMoveKey( spep_0 -3 + 464, 1, -345.1, -138.8 , 0 );
setMoveKey( spep_0 -3 + 466, 1, -347.9, -141.7 , 0 );
setMoveKey( spep_0 -3 + 468, 1, -343.6, -127 , 0 );
setMoveKey( spep_0 -3 + 470, 1, -341.7, -139.5 , 0 );
setMoveKey( spep_0 -3 + 472, 1, -344.1, -145.1 , 0 );
setMoveKey( spep_0 -3 + 474, 1, -345, -142 , 0 );
setMoveKey( spep_0 -3 + 476, 1, -344.6, -145.3 , 0 );
setMoveKey( spep_0 -3 + 478, 1, -341.1, -139.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, -339.1, -135.4 , 0 );
setMoveKey( spep_0 -3 + 482, 1, -342, -130.4 , 0 );
setMoveKey( spep_0 -3 + 484, 1, -341.5, -145.5 , 0 );
setMoveKey( spep_0 -3 + 486, 1, -340.4, -144.5 , 0 );
setMoveKey( spep_0 -3 + 488, 1, -333.9, -139.6 , 0 );
setMoveKey( spep_0 -3 + 490, 1, -334.2, -139.9 , 0 );
setMoveKey( spep_0 -3 + 492, 1, -334.2, -129.6 , 0 );
setMoveKey( spep_0 -3 + 494, 1, -337.1, -142.2 , 0 );
setMoveKey( spep_0 -3 + 496, 1, -325.8, -147.3 , 0 );
setMoveKey( spep_0 -3 + 498, 1, -333.2, -133.1 , 0 );
setMoveKey( spep_0 -3 + 500, 1, -320.9, -140.9 , 0 );
setMoveKey( spep_0 -3 + 502, 1, -333.8, -142.2 , 0 );
setMoveKey( spep_0 -3 + 504, 1, -332, -150.4 , 0 );
setMoveKey( spep_0 -3 + 506, 1, -329.8, -142.1 , 0 );
setMoveKey( spep_0 -3 + 508, 1, -327, -128 , 0 );
setMoveKey( spep_0 -3 + 510, 1, -327.9, -135.3 , 0 );
setMoveKey( spep_0 -3 + 512, 1, -327.9, -135.3 , 0 );
--
setMoveKey( spep_0 -3 + 572, 1, -44.4, 174.7 , 0 );
setMoveKey( spep_0 -3 + 574, 1, -38, 172.9 , 0 );
setMoveKey( spep_0 -3 + 576, 1, -31.9, 170.1 , 0 );
setMoveKey( spep_0 -3 + 578, 1, -26, 166.1 , 0 );
setMoveKey( spep_0 -3 + 580, 1, -20.2, 161.1 , 0 );
setMoveKey( spep_0 -3 + 581, 1, -20.2, 161.1 , 0 );--
setMoveKey( spep_0 -3 + 582, 1, 33.6, 113.3 , 0 );
setMoveKey( spep_0 -3 + 584, 1, 29.8, 140.1 , 0 );
setMoveKey( spep_0 -3 + 586, 1, 3.7, 144.4 , 0 );
setMoveKey( spep_0 -3 + 588, 1, 9.6, 155.2 , 0 );
setMoveKey( spep_0 -3 + 590, 1, -10, 172.3 , 0 );
setMoveKey( spep_0 -3 + 592, 1, -0.6, 162.6 , 0 );
setMoveKey( spep_0 -3 + 594, 1, -7.2, 149.6 , 0 );
setMoveKey( spep_0 -3 + 596, 1, -1, 162.3 , 0 );
setMoveKey( spep_0 -3 + 598, 1, -10.7, 155.8 , 0 );
setMoveKey( spep_0 -3 + 600, 1, -1.3, 162 , 0 );
setMoveKey( spep_0 -3 + 602, 1, -4.7, 149.1 , 0 );
setMoveKey( spep_0 -3 + 604, 1, -1.7, 161.7 , 0 );
setMoveKey( spep_0 -3 + 606, 1, -11.4, 158.4 , 0 );
setMoveKey( spep_0 -3 + 608, 1, -2, 161.4 , 0 );
setMoveKey( spep_0 -3 + 610, 1, -15, 170.9 , 0 );
setMoveKey( spep_0 -3 + 612, 1, -2.3, 161.1 , 0 );
setMoveKey( spep_0 -3 + 614, 1, -5.7, 151.4 , 0 );
setMoveKey( spep_0 -3 + 616, 1, -2.7, 160.8 , 0 );
setMoveKey( spep_0 -3 + 618, 1, -2.8, 160.7 , 0 );
setMoveKey( spep_0 -3 + 620, 1, -3, 160.5 , 0 );
setMoveKey( spep_0 -3 + 622, 1, -3.1, 160.4 , 0 );
setMoveKey( spep_0 -3 + 624, 1, -3.3, 160.2 , 0 );
setMoveKey( spep_0 -3 + 626, 1, -3.5, 160.1 , 0 );
setMoveKey( spep_0 -3 + 628, 1, -3.6, 159.9 , 0 );
setMoveKey( spep_0 -3 + 630, 1, -3.8, 159.8 , 0 );
setMoveKey( spep_0 -3 + 632, 1, -3.8, 159.8 , 0 );

setScaleKey( spep_0 -3 + 286, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 288, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 290, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 292, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 294, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 296, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 298, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 299, 1, 1.4, 1.4 );--
setScaleKey( spep_0 -3 + 300, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 321, 1, 1.43, 1.43 );--
setScaleKey( spep_0 -3 + 322, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 324, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 326, 1, 1.47, 1.47 );
setScaleKey( spep_0 -3 + 328, 1, 1.56, 1.56 );
setScaleKey( spep_0 -3 + 330, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 332, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 334, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 336, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 338, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 340, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 342, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 344, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 346, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 348, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 350, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 352, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 354, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 356, 1, 2.31, 2.31 );
setScaleKey( spep_0 -3 + 358, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 360, 1, 2.38, 2.38 );
setScaleKey( spep_0 -3 + 362, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 364, 1, 2.44, 2.44 );
setScaleKey( spep_0 -3 + 366, 1, 2.46, 2.46 );
setScaleKey( spep_0 -3 + 368, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 370, 1, 2.49, 2.49 );
--
setScaleKey( spep_0 -3 + 416, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 418, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 420, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 422, 1, 2.17, 2.17 );
setScaleKey( spep_0 -3 + 424, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 426, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 428, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 430, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 433, 1, 2.07, 2.07 );--
setScaleKey( spep_0 -3 + 434, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 436, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 438, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 440, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 442, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 444, 1, 1.83, 1.83 );
setScaleKey( spep_0 -3 + 446, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 448, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 450, 1, 1.81, 1.81 );
setScaleKey( spep_0 -3 + 452, 1, 1.81, 1.81 );
setScaleKey( spep_0 -3 + 454, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 456, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 458, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 460, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 462, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 464, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 466, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 468, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 470, 1, 1.75, 1.75 );
setScaleKey( spep_0 -3 + 472, 1, 1.75, 1.75 );
setScaleKey( spep_0 -3 + 474, 1, 1.74, 1.74 );
setScaleKey( spep_0 -3 + 476, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 478, 1, 1.73, 1.73 );
setScaleKey( spep_0 -3 + 480, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 482, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 484, 1, 1.71, 1.71 );
setScaleKey( spep_0 -3 + 486, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 488, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 490, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 492, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 494, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 496, 1, 1.67, 1.67 );
setScaleKey( spep_0 -3 + 498, 1, 1.67, 1.67 );
setScaleKey( spep_0 -3 + 500, 1, 1.66, 1.66 );
setScaleKey( spep_0 -3 + 502, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 504, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 506, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 508, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 510, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 512, 1, 1.63, 1.63 );
--
setScaleKey( spep_0 -3 + 572, 1, 3.54, 3.54 );
setScaleKey( spep_0 -3 + 574, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 576, 1, 3.1, 3.1 );
setScaleKey( spep_0 -3 + 578, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 580, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 581, 1, 2.66, 2.66 );--
setScaleKey( spep_0 -3 + 582, 1, 2.05, 2.05 );
setScaleKey( spep_0 -3 + 584, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 586, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 588, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 590, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 592, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 594, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 596, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 598, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 600, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 602, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 604, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 606, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 608, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 610, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 612, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 614, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 616, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 618, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 620, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 622, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 624, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 626, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 628, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 630, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 632, 1, 0.14, 0.14 );


setRotateKey( spep_0 -3 + 321, 1, 0 );--
setRotateKey( spep_0 -3 + 322, 1, 17.5 );
setRotateKey( spep_0 -3 + 324, 1, 17.4 );
setRotateKey( spep_0 -3 + 326, 1, 17.3 );
setRotateKey( spep_0 -3 + 344, 1, 17.3 );
setRotateKey( spep_0 -3 + 346, 1, 17.4 );
setRotateKey( spep_0 -3 + 362, 1, 17.4 );
setRotateKey( spep_0 -3 + 364, 1, 17.5 );
setRotateKey( spep_0 -3 + 370, 1, 17.5 );
--
setRotateKey( spep_0 -3 + 416, 1, 29 );
setRotateKey( spep_0 -3 + 418, 1, 28.5 );
setRotateKey( spep_0 -3 + 420, 1, 28.1 );
setRotateKey( spep_0 -3 + 422, 1, 27.7 );
setRotateKey( spep_0 -3 + 424, 1, 27.3 );
setRotateKey( spep_0 -3 + 426, 1, 27 );
setRotateKey( spep_0 -3 + 428, 1, 26.7 );
setRotateKey( spep_0 -3 + 430, 1, 26.4 );
setRotateKey( spep_0 -3 + 432, 1, 26.2 );
setRotateKey( spep_0 -3 + 433, 1, 26.2 );
setRotateKey( spep_0 -3 + 434, 1, -18 );
setRotateKey( spep_0 -3 + 436, 1, -17.8 );
setRotateKey( spep_0 -3 + 508, 1, -17.8 );
setRotateKey( spep_0 -3 + 510, 1, -18 );
setRotateKey( spep_0 -3 + 512, 1, -18 );
--
setRotateKey( spep_0 -3 + 572, 1, -41.5 );
setRotateKey( spep_0 -3 + 581, 1, -41.5 );--
setRotateKey( spep_0 -3 + 582, 1, 0 );
setRotateKey( spep_0 -3 + 630, 1, 0 );
setRotateKey( spep_0 -3 + 632, 1, 0 );

-- ** 音 ** --
--膝蹴り
SE015 = playSe( spep_0 + 308, 1003 );

--膝蹴り
SE016 = playSe( spep_0 + 314, 1010 );

--膝蹴り
SE017 = playSe( spep_0 + 314, 1190 );
setSeVolumeByWorkId( spep_0 + 314, SE017, 82 );

--膝蹴り
SE018 = playSe( spep_0 + 316, 1110 );
setSeVolumeByWorkId( spep_0 + 316, SE018, 140 );

--気弾溜め
SE019 = playSe( spep_0 + 366, 1255 );
stopSe( spep_0 + 410, SE019, 22 );

--気弾溜め
SE020 = playSe( spep_0 + 366, 1262 );
setSeVolumeByWorkId( spep_0 + 366, SE020, 141 );
stopSe( spep_0 + 418, SE020, 4 );

--気弾溜め
SE021 = playSe( spep_0 + 366, 1004 );
setSeVolumeByWorkId( spep_0 + 366, SE021, 81 );

--連続気弾
SE022 = playSe( spep_0 + 420, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 420, SE022, 126 );
setPitch( spep_0 + 420, SE022, 200 );
setTimeStretch( SE022, 1.13, 10, 1 );

--連続気弾
SE023 = playSe( spep_0 + 420, 1015,"",0.6 );

--連続気弾
SE024 = playSe( spep_0 + 430, 1011,"",0.6 );
setSeVolumeByWorkId( spep_0 + 430, SE024, 75 );

--連続気弾
SE025 = playSe( spep_0 + 436, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 436, SE025, 126 );
setPitch( spep_0 + 436, SE025, 200 );
setTimeStretch( SE025, 1.13, 10, 1 );

--連続気弾
SE026 = playSe( spep_0 + 436, 1015,"",0.6 );

--連続気弾
SE027 = playSe( spep_0 + 450, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 450, SE027, 126 );
setPitch( spep_0 + 450, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );

--連続気弾
SE028 = playSe( spep_0 + 450, 1015,"",0.6 );

--気弾爆発
SE029 = playSe( spep_0 + 460, 102,"",0.6 );

--連続気弾
SE030 = playSe( spep_0 + 464, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 464, SE030, 126 );
setPitch( spep_0 + 464, SE030, 200 );
setTimeStretch( SE030, 1.13, 10, 1 );

--連続気弾
SE031 = playSe( spep_0 + 464, 1015,"",0.6 );

--連続気弾
SE032 = playSe( spep_0 + 478, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 478, SE032, 126 );
setPitch( spep_0 + 478, SE032, 200 );
setTimeStretch( SE032, 1.13, 10, 1 );

--連続気弾
SE033 = playSe( spep_0 + 478, 1015,"",0.6 );

--連続気弾
SE034 = playSe( spep_0 + 492, 1155,"",0.6 );
setSeVolumeByWorkId( spep_0 + 492, SE034, 126 );
setPitch( spep_0 + 492, SE034, 200 );
setTimeStretch( SE034, 1.13, 10, 1 );

--連続気弾
SE035 = playSe( spep_0 + 492, 1015,"",0.6 );

--画面遷移
SE036 = playSe( spep_0 + 492, 1072 );
setSeVolumeByWorkId( spep_0 + 492, SE036, 72 );

--ふりかぶり
SE037 = playSe( spep_0 + 548, 1116 );
stopSe( spep_0 + 566, SE037, 14 );

--ふりかぶり
SE038 = playSe( spep_0 + 560, 1003 );

--パンチ
SE039 = playSe( spep_0 + 570, 1120 );

--パンチ
SE040 = playSe( spep_0 + 570, 1183 );
setSeVolumeByWorkId( spep_0 + 570, SE040, 63 );
stopSe( spep_0 + 622, SE040, 30 );

--パンチ
SE041 = playSe( spep_0 + 576, 9 );
setSeVolumeByWorkId( spep_0 + 576, SE041, 79 );
stopSe( spep_0 + 596, SE041, 36 );

--かめはめ波溜め
SE042 = playSe( spep_0 + 646, 1209,"",0.7 );
stopSe( spep_0 +738 + 20, SE042, 0 );

--かめはめ波溜め
SE043 = playSe( spep_0 + 646, 1210,"",0.7 );
stopSe( spep_0 +738 + 20, SE043, 0 );

--顔カットイン
SE044 = playSe( spep_0 + 660, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 746;

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

--発射前かめはめ波溜め
SE045 = playSe( spep_1 + 82 + 4, 1210,"",0.7 );
setSeVolumeByWorkId( spep_1 + 82 + 4, SE045, 0 );
setSeVolumeByWorkId( spep_1 + 84 + 4, SE045, 25 );
setSeVolumeByWorkId( spep_1 + 86 + 4, SE045, 50 );
setSeVolumeByWorkId( spep_1 + 88 + 4, SE045, 75 );
setSeVolumeByWorkId( spep_1 + 90 + 4, SE045, 100 );
stopSe( spep_1 +94 + 48 + 4, SE045, 10 );
setStartTimeMs( SE045,  1667 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94+4;

------------------------------------------------------
-- ご対面(276F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --発射〜着弾：手前(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 276, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 276, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 276, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 154, 1, 0 );
changeAnime( spep_2 -3 + 120, 1,5 );

setMoveKey( spep_2 -3 + 120, 1, 55.1, -24.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 16.3, -34 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -22.5, -43.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -61.3, -52.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -100.1, -61.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -103.2, -62.2 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -106.2, -62.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -109.2, -63.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -112.2, -64.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -115.2, -65 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -118.2, -65.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -121.2, -66.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -124.2, -67.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -127.2, -67.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -130.2, -68.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -133.2, -69.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -136.2, -69.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -136.2, -69.9 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 122, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 124, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 126, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 128, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 130, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 132, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 134, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 136, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 138, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 140, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 144, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 146, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 148, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 150, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 152, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 154, 1, 0.24, 0.24 );

setRotateKey( spep_2 -3 + 120, 1, -34.1 );
setRotateKey( spep_2 -3 + 136, 1, -34.1 );
setRotateKey( spep_2 -3 + 138, 1, -34.2 );
setRotateKey( spep_2 -3 + 154, 1, -34.2 );

-- ** 音 ** --
--かめはめ波発射
SE047 = playSe( spep_2 + 46, 1027 );
setSeVolumeByWorkId( spep_2 + 46, SE047, 65 );

--かめはめ波発射
SE048 = playSe( spep_2 + 46, 1284 );
stopSe( spep_2 + 154, SE048, 12 );

--かめはめ波発射
SE049 = playSe( spep_2 + 46, 1022 );
stopSe( spep_2 + 154, SE049, 12 );

--かめはめ波発射
SE050 = playSe( spep_2 + 46, 1213 );
setSeVolumeByWorkId( spep_2 + 46, SE050, 57 );
stopSe( spep_2 + 154, SE050, 12 );

--かめはめ波飛んでいく
SE051 = playSe( spep_2 + 122, 1202,"",0.7 );
setSeVolumeByWorkId( spep_2 + 122, SE051, 160 );
stopSe( spep_2 + 154, SE051, 12 );

--かめはめ波飛んでいく
SE052 = playSe( spep_2 + 122, 1021 );
stopSe( spep_2 + 154, SE052, 12 );

--爆発
SE053 = playSe( spep_2 + 152, 1067 );

--爆発
SE054 = playSe( spep_2 + 152, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 276 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 166 );
endPhase( spep_2 + 266 );

end