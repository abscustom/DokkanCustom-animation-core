--1022630:超サイヤ人孫悟空_怒りのかめはめ波
--sp_effect_a1_00307

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

--エフェクト(味方)
SP_01=	157940	;--	冒頭から顔面アップまで　奥
SP_02=	157941	;--	冒頭から顔面アップまで　手前
SP_03=	157942	;--	バカヤローからダメージまで　奥
SP_04=	157943	;--	バカヤローからダメージまで　手前
SP_05=	157944	;--	KO

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1=spep_0+794;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 650 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 302);      -- スキップ先フレーム指定

         --ラスト爆発
         SE032 = playSeVer2( spep_1 + 302, 1067, "", 0, 0, 0, -1);
         SE033 = playSeVer2( spep_1 + 302, 1024, "", 0, 0, 0, -1);
         setSeVolumeByWorkId( spep_1 + 302, SE033, 77 );
         SE034 = playSeVer2( spep_1 + 302, 1159, "", 0, 0, 0, -1);
         setSeVolumeByWorkId( spep_1 + 302, SE034, 84 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭から顔面アップまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast_f = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 794, fast_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 794, fast_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_f, 0 );
setEffRotateKey( spep_0 + 794, fast_f, 0 );
setEffAlphaKey( spep_0 + 0, fast_f, 255 );
setEffAlphaKey( spep_0 + 792, fast_f, 255 );
setEffAlphaKey( spep_0 + 793, fast_f, 255 );
setEffAlphaKey( spep_0 + 794, fast_f, 0 );

-- ** エフェクト等 ** --
fast_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 794, fast_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 794, fast_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_b, 0 );
setEffRotateKey( spep_0 + 794, fast_b, 0 );
setEffAlphaKey( spep_0 + 0, fast_b, 255 );
setEffAlphaKey( spep_0 + 792, fast_b, 255 );
setEffAlphaKey( spep_0 + 793, fast_b, 255 );
setEffAlphaKey( spep_0 + 794, fast_b, 0 );

--敵の動き
setDisp( spep_0-3 + 346, 1, 1);
setDisp( spep_0-1 + 440, 1, 0);

changeAnime( spep_0-3 + 346, 1, 102);

a=-200;

setMoveKey( spep_0-3 + 346, 1, 1258.3, 931.6+a , 0 );
setMoveKey( spep_0-3 + 348, 1, 1131.7, 847.5+a , 0 );
setMoveKey( spep_0-3 + 350, 1, 1018.4, 772.3+a , 0 );
setMoveKey( spep_0-3 + 352, 1, 918.5, 705.9+a , 0 );
setMoveKey( spep_0-3 + 354, 1, 831.9, 648.4+a , 0 );
setMoveKey( spep_0-3 + 356, 1, 758.6, 599.7+a , 0 );
setMoveKey( spep_0-3 + 358, 1, 698.7, 559.9+a , 0 );
setMoveKey( spep_0-3 + 360, 1, 652, 528.9+a , 0 );
setMoveKey( spep_0-3 + 362, 1, 618.7, 506.8+a , 0 );
setMoveKey( spep_0-3 + 364, 1, 598.7, 493.5+a , 0 );
setMoveKey( spep_0-3 + 366, 1, 592.1, 489.1+a , 0 );
setMoveKey( spep_0-3 + 396, 1, 592.1, 489.1+a , 0 );
setMoveKey( spep_0-3 + 398, 1, 585.3, 478.6+a , 0 );
setMoveKey( spep_0-3 + 400, 1, 598.6, 500.3+a , 0 );
setMoveKey( spep_0-3 + 402, 1, 585.6, 480.4+a , 0 );
setMoveKey( spep_0-3 + 404, 1, 596.5, 492.3+a , 0 );
setMoveKey( spep_0-3 + 406, 1, 586.4, 489.1+a , 0 );
setMoveKey( spep_0-3 + 408, 1, 594.5, 492.9+a , 0 );
setMoveKey( spep_0-3 + 410, 1, 591.5, 485.4+a , 0 );
setMoveKey( spep_0-3 + 412, 1, 593.1, 493.2+a , 0 );
setMoveKey( spep_0-3 + 414, 1, 593.6, 486.4+a , 0 );
setMoveKey( spep_0-3 + 416, 1, 591.5, 492.5+a , 0 );
setMoveKey( spep_0-3 + 418, 1, 589.5, 486.9+a , 0 );
setMoveKey( spep_0-3 + 420, 1, 593.6, 491+a , 0 );
setMoveKey( spep_0-3 + 422, 1, 589.5, 489+a , 0 );
setMoveKey( spep_0-3 + 424, 1, 593.9, 488.9+a , 0 );
setMoveKey( spep_0-3 + 426, 1, 589.9, 488.9+a , 0 );
setMoveKey( spep_0-3 + 428, 1, 592.9, 488.2+a , 0 );
setMoveKey( spep_0-3 + 430, 1, 590.8, 489+a , 0 );
setMoveKey( spep_0-3 + 432, 1, 593.4, 489+a , 0 );
setMoveKey( spep_0-3 + 434, 1, 591.1, 489.5+a , 0 );
setMoveKey( spep_0-3 + 436, 1, 593.2, 489.6+a , 0 );
setMoveKey( spep_0-3 + 438, 1, 591.4, 488.9+a , 0 );
setMoveKey( spep_0-1 + 440, 1, 592.6, 488.8+a , 0 );

setScaleKey( spep_0-3 + 346, 1, 7.59, 7.59 );
setScaleKey( spep_0-3 + 348, 1, 7.34, 7.34 );
setScaleKey( spep_0-3 + 350, 1, 7.12, 7.12 );
setScaleKey( spep_0-3 + 352, 1, 6.92, 6.92 );
setScaleKey( spep_0-3 + 354, 1, 6.75, 6.75 );
setScaleKey( spep_0-3 + 356, 1, 6.61, 6.61 );
setScaleKey( spep_0-3 + 358, 1, 6.49, 6.49 );
setScaleKey( spep_0-3 + 360, 1, 6.4, 6.4 );
setScaleKey( spep_0-3 + 362, 1, 6.33, 6.33 );
setScaleKey( spep_0-3 + 364, 1, 6.29, 6.29 );
setScaleKey( spep_0-3 + 366, 1, 6.28, 6.28 );
setScaleKey( spep_0-1 + 440, 1, 6.28, 6.28 );

setRotateKey( spep_0-3 + 346, 1, 9 );
setRotateKey( spep_0-3 + 348, 1, 7.3 );
setRotateKey( spep_0-3 + 350, 1, 5.8 );
setRotateKey( spep_0-3 + 352, 1, 4.4 );
setRotateKey( spep_0-3 + 354, 1, 3.2 );
setRotateKey( spep_0-3 + 356, 1, 2.3 );
setRotateKey( spep_0-3 + 358, 1, 1.4 );
setRotateKey( spep_0-3 + 360, 1, 0.8 );
setRotateKey( spep_0-3 + 362, 1, 0.4 );
setRotateKey( spep_0-3 + 364, 1, 0.1 );
setRotateKey( spep_0-3 + 366, 1, 0 );
setRotateKey( spep_0-1 + 440, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 492, 1, 1);
setDisp( spep_0-1 + 596, 1, 0);

changeAnime( spep_0-3 + 492, 1, 117);
changeAnime( spep_0-3 + 532, 1, 116);

setMoveKey( spep_0-3 + 492, 1, 58, -4.1 , 0 );
setMoveKey( spep_0-3 + 494, 1, 52.4, -4 , 0 );
setMoveKey( spep_0-3 + 496, 1, 60.6, -5.6 , 0 );
setMoveKey( spep_0-3 + 498, 1, 53, -2 , 0 );
setMoveKey( spep_0-3 + 500, 1, 59.2, -8.4 , 0 );
setMoveKey( spep_0-3 + 502, 1, 59.2, -0.7 , 0 );
setMoveKey( spep_0-3 + 504, 1, 54, -5.4 , 0 );
setMoveKey( spep_0-3 + 506, 1, 62.5, -1.1 , 0 );
setMoveKey( spep_0-3 + 508, 1, 57.6, -8.5 , 0 );
setMoveKey( spep_0-3 + 510, 1, 55, -0.3 , 0 );
setMoveKey( spep_0-3 + 512, 1, 62.6, -4.2 , 0 );
setMoveKey( spep_0-3 + 514, 1, 54.2, -4.4 , 0 );
setMoveKey( spep_0-3 + 516, 1, 63.5, -2.2 , 0 );
setMoveKey( spep_0-3 + 518, 1, 56.6, -9.7 , 0 );
setMoveKey( spep_0-3 + 520, 1, 55.6, -1 , 0 );
setMoveKey( spep_0-3 + 522, 1, 61.2, -6.2 , 0 );
setMoveKey( spep_0-3 + 524, 1, 56.2, 0.2 , 0 );
setMoveKey( spep_0-3 + 526, 1, 60.4, -8 , 0 );
setMoveKey( spep_0-3 + 528, 1, 59, -0.8 , 0 );
setMoveKey( spep_0-3 + 530, 1, 53.9, -7.2 , 0 );
setMoveKey( spep_0-3 + 531, 1, 53.9, -7.2 , 0 );

setMoveKey( spep_0-3 + 532, 1, 0, -230.2 , 0 );
setMoveKey( spep_0-3 + 534, 1, 0, -169.1 , 0 );
setMoveKey( spep_0-3 + 536, 1, 0, -133.7 , 0 );
setMoveKey( spep_0-3 + 538, 1, 0, -110.2 , 0 );
setMoveKey( spep_0-3 + 540, 1, 0, -93.3 , 0 );
setMoveKey( spep_0-3 + 542, 1, 0, -80.6 , 0 );
setMoveKey( spep_0-3 + 544, 1, 0, -70.4 , 0 );
setMoveKey( spep_0-3 + 546, 1, 0, -61.8 , 0 );
setMoveKey( spep_0-3 + 548, 1, 0, -54.1 , 0 );
setMoveKey( spep_0-3 + 550, 1, 0, -46.8 , 0 );
setMoveKey( spep_0-3 + 552, 1, 0, -40.2 , 0 );
setMoveKey( spep_0-3 + 554, 1, 0, -35.2 , 0 );
setMoveKey( spep_0-3 + 556, 1, 0, -35 , 0 );
setMoveKey( spep_0-3 + 558, 1, 0, -20.1 , 0 );
setMoveKey( spep_0-3 + 560, 1, 0, -5.3 , 0 );
setMoveKey( spep_0-3 + 562, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 564, 1, -0.1, -0.3 , 0 );
setMoveKey( spep_0-3 + 566, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 568, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 570, 1, -0.1, -0.3 , 0 );
setMoveKey( spep_0-3 + 572, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 574, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 576, 1, -0.1, -0.3 , 0 );
setMoveKey( spep_0-3 + 578, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 580, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 582, 1, 0, -0.3 , 0 );
setMoveKey( spep_0-3 + 584, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 586, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 588, 1, 0, -0.3 , 0 );
setMoveKey( spep_0-3 + 590, 1, 0, -0.2 , 0 );
setMoveKey( spep_0-3 + 592, 1, -0.1, -0.2 , 0 );
setMoveKey( spep_0-3 + 594, 1, 0, -0.2 , 0 );
setMoveKey( spep_0-1 + 596, 1, 0, -0.3 , 0 );

setScaleKey( spep_0-3 + 492, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 531, 1, 2.8, 2.8 );

setScaleKey( spep_0-3 + 532, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 534, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 536, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 538, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 540, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 542, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 544, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 546, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 548, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 550, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 552, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 554, 1, 0.91, 0.91 );
setScaleKey( spep_0-3 + 556, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 558, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 560, 1, 2.32, 2.32 );
setScaleKey( spep_0-3 + 562, 1, 2.29, 2.29 );
setScaleKey( spep_0-3 + 564, 1, 2.24, 2.24 );
setScaleKey( spep_0-3 + 566, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 568, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 570, 1, 2.28, 2.28 );
setScaleKey( spep_0-3 + 572, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 574, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 576, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 578, 1, 2.37, 2.37 );
setScaleKey( spep_0-3 + 580, 1, 2.44, 2.44 );
setScaleKey( spep_0-3 + 582, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 584, 1, 2.38, 2.38 );
setScaleKey( spep_0-3 + 586, 1, 2.47, 2.47 );
setScaleKey( spep_0-3 + 588, 1, 2.33, 2.33 );
setScaleKey( spep_0-3 + 590, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 592, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 594, 1, 2.47, 2.47 );
setScaleKey( spep_0-1 + 596, 1, 2.41, 2.41 );

setRotateKey( spep_0-3 + 492, 1, 9 );
setRotateKey( spep_0-3 + 531, 1, 9 );

setRotateKey( spep_0-3 + 532, 1, -30 );
setRotateKey( spep_0-1 + 596, 1, -30 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 680, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 30, 4 );

--向き直る
SE002 = playSeVer2( spep_0 + 20, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 77 );
setPitch( spep_0 + 20, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 48, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 60 );

--敵の方向く
SE004 = playSeVer2( spep_0 + 126, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE004, 62 );

--背中見せる
SE005 = playSeVer2( spep_0 + 310, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 312, 1106, "", 0, 0, 0, -1);

--気ダメ
SE007 = playSeVer2( spep_0 + 394, 1035, "", 0, 0, 0, -1);

--飛び立つ
SE008 = playSeVer2( spep_0 + 404, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 404, 1183, "",spep_0 + 560, 0, 70, -1);
SE010 = playSeVer2( spep_0 + 404, 1278, "",spep_0 + 560, 0, 70, -1);

--飛んでいく
SE011 = playSeVer2( spep_0 + 436, 1304, "",spep_0 + 570, 0, 80, -1);
setPitch( spep_0 + 436, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );

--敵震える
SE012 = playSeVer2( spep_0 + 500, 1330, "",spep_0 + 564, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 500, SE012, 48 );

--敵向かってくる
SE013 = playSeVer2( spep_0 + 532, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE013, 38 );
setTimeStretch( SE013, 1.20, 30, 4 );

--飛行中
SE014 = playSeVer2( spep_0 + 586, 1314, "",spep_0 + 864, 0, 66, -1);
SE015 = playSeVer2( spep_0 + 586, 1019, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 650, 1019, "", 0, 0, 0, -1);

--ボイス
--やめだ
playVoice( spep_0 + 29, 316 );


--二度と悪さすんじゃねえぞ！
playVoice( spep_0 + 132, 317 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 800, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 650 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);

   
    pauseAll( SP_dodge, 67);  
    
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

--振り向く
SE017 = playSeVer2( spep_0 + 700, 1116, "",spep_0 + 734, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 700, SE017, 69 );
setPitch( spep_0 + 700, SE017, -200 );
setTimeStretch( SE017, 0.87, 30, 4 );
SE018 = playSeVer2( spep_0 + 702, 1188, "",spep_0 + 764, 26, 38, -1);
setStartTimeMs(SE018,200);

--飛行中
SE019 = playSeVer2( spep_0 + 714, 1019, "", 0, 0, 0, -1);

--次の準備
spep_1=spep_0+794;
------------------------------------------------------
-- 冒頭から顔面アップまで
------------------------------------------------------
-- ** エフェクト等 ** --
fast_f = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fast_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 444, fast_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fast_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 444, fast_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fast_f, 0 );
setEffRotateKey( spep_1 + 444, fast_f, 0 );
setEffAlphaKey( spep_1 + 0, fast_f, 255 );
setEffAlphaKey( spep_1 + 444, fast_f, 255 );

-- ** エフェクト等 ** --
fast_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fast_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 444, fast_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fast_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 444, fast_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fast_b, 0 );
setEffRotateKey( spep_1 + 444, fast_b, 0 );
setEffAlphaKey( spep_1 + 0, fast_b, 255 );
setEffAlphaKey( spep_1 + 444, fast_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffectLife( spep_1 + 430, SP_05,120, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 430, KO, 0, 0, 0 );
setEffMoveKey( spep_1 + 550, KO, 0, 0, 0 );
setEffScaleKey( spep_1 + 430, KO, 1.0, 1.0 );
setEffScaleKey( spep_1 + 550, KO, 1.0, 1.0 );
setEffRotateKey( spep_1 + 430, KO, 0 );
setEffRotateKey( spep_1 + 550, KO, 0 );
setEffAlphaKey( spep_1 + 430, KO, 255 );
setEffAlphaKey( spep_1 + 550, KO, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1-1 + 44, 1, 0);

changeAnime( spep_1 + 0, 1, 116);

setMoveKey( spep_1 + 0, 1, 197.8, 308.6 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 197.8, 308.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 197.7, 308.5 , 0 );
setMoveKey( spep_1-3 + 6, 1, 197.6, 308.3 , 0 );
setMoveKey( spep_1-3 + 8, 1, 197.5, 308 , 0 );
setMoveKey( spep_1-3 + 10, 1, 197.4, 307.6 , 0 );
setMoveKey( spep_1-3 + 12, 1, 197.2, 307.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 197, 306.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 196.8, 306 , 0 );
setMoveKey( spep_1-3 + 18, 1, 196.5, 305.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, 196.2, 304.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 195.9, 303.7 , 0 );
setMoveKey( spep_1-3 + 24, 1, 195.5, 302.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 195.1, 301.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 194.7, 300.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 194.2, 299.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 193.8, 298.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 193.2, 296.9 , 0 );
setMoveKey( spep_1-3 + 36, 1, 192.7, 295.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 192.1, 293.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 191.5, 292.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 190.8, 290.7 , 0 );
setMoveKey( spep_1-1 + 44, 1, 190.1, 288.9 , 0 );

setScaleKey( spep_1 + 0, 1, 0.12, 0.12 );
--setScaleKey( spep_1-3 + 2, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 8, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_1-3 + 12, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 14, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 16, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 18, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 20, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 22, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 24, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 26, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 28, 1, 0.35, 0.35 );
setScaleKey( spep_1-3 + 30, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 32, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 34, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 36, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 38, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 40, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 42, 1, 0.62, 0.62 );
setScaleKey( spep_1-1 + 44, 1, 0.67, 0.67 );

setRotateKey( spep_1 + 0, 1, 19.2 );
setRotateKey( spep_1-3 + 24, 1, 19.2 );
setRotateKey( spep_1-3 + 26, 1, 19.1 );
setRotateKey( spep_1-3 + 40, 1, 19.1 );
setRotateKey( spep_1-3 + 42, 1, 19 );
setRotateKey( spep_1-1 + 44, 1, 19 );

--敵の動き
setDisp( spep_1-3 + 120, 1, 1);
setDisp( spep_1-1 + 294, 1, 0);

changeAnime( spep_1-3 + 120, 1, 116);
changeAnime( spep_1-3 + 138, 1, 106);
changeAnime( spep_1-3 + 148, 1, 5);
changeAnime( spep_1-3 + 184, 1, 106);

setBlendColor(spep_1-3 + 120 ,1 ,3 ,1 ,1 ,0.2 ,0.2 );
setBlendColor(spep_1-3 + 148 ,1 ,3 ,1 ,0.8 ,0 ,0.54 );
setBlendColor(spep_1-3 +184 ,1 ,3 ,0.91,1,0.5,0.4);
setBlendColor(spep_1-3 +185 ,1 ,3 ,0.91,1,0.5,0.4);
setBlendColor(spep_1-3 +186 ,1 ,3 ,0.91,1,0.5,0.4);
setBlendColor(spep_1-3 +187 ,1 ,3 ,0.91,1,0.5,0.4);
setBlendColor(spep_1-3 +188 ,1 ,3 ,0.94,1,0.6,0.63);
setBlendColor(spep_1-3 +189 ,1 ,3 ,0.94,1,0.6,0.63);
setBlendColor(spep_1-3 +190 ,1 ,3 ,0.97,1,0.6,0.63);
setBlendColor(spep_1-3 +191 ,1 ,3 ,0.97,1,0.6,0.63);
setBlendColor(spep_1-3 +192 ,1 ,3 ,0.97,1,0.6,0.63);
setBlendColor(spep_1-3 +193 ,1 ,3 ,0.97,1,0.7,0.63);
setBlendColor(spep_1-3 +194 ,1 ,3 ,1,1,0.7,0.85);
setBlendColor(spep_1-3 +195 ,1 ,3 ,1,1,0.7,0.85);
setBlendColor(spep_1-3 +196 ,1 ,3 ,1,1,0.82,0.85);
setBlendColor(spep_1-1 +294 ,1 ,3 ,1,1,0.82,0.85);
setBlendColor(spep_1 +294 ,1 ,3 ,1,1,0.7,0);

setMoveKey( spep_1-3 + 120, 1, 0, 0 , 0 );
setMoveKey( spep_1-3 + 122, 1, -0.5, -0.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 0.7, -0.2 , 0 );
setMoveKey( spep_1-3 + 126, 1, -0.4, 0.3 , 0 );
setMoveKey( spep_1-3 + 128, 1, 0, -0.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, 0.5, 0.5 , 0 );
setMoveKey( spep_1-3 + 132, 1, 0.1, -0.8 , 0 );
setMoveKey( spep_1-3 + 134, 1, 0, 0.8 , 0 );
setMoveKey( spep_1-3 + 137, 1, 0.4, -0.4 , 0 );

setMoveKey( spep_1-3 + 138, 1, -0.9, 86.9 , 0 );
setMoveKey( spep_1-3 + 140, 1, 0.4, 79.9 , 0 );
setMoveKey( spep_1-3 + 142, 1, -0.6, 72 , 0 );
setMoveKey( spep_1-3 + 144, 1, 0.7, 64.1 , 0 );
setMoveKey( spep_1-3 + 147, 1, -0.8, 57.1 , 0 );

setMoveKey( spep_1-3 + 148, 1, 1, 27.5 , 0 );
setMoveKey( spep_1-3 + 150, 1, -1.1, 27.1 , 0 );
setMoveKey( spep_1-3 + 152, 1, 1.1, 25.8 , 0 );
setMoveKey( spep_1-3 + 154, 1, -0.5, 27.1 , 0 );
setMoveKey( spep_1-3 + 156, 1, 1.4, 25.2 , 0 );
setMoveKey( spep_1-3 + 158, 1, -0.3, 26 , 0 );
setMoveKey( spep_1-3 + 160, 1, 0.9, 24.3 , 0 );
setMoveKey( spep_1-3 + 162, 1, -1, 24.2 , 0 );
setMoveKey( spep_1-3 + 164, 1, 0.9, 24.2 , 0 );
setMoveKey( spep_1-3 + 166, 1, -1, 24.9 , 0 );
setMoveKey( spep_1-3 + 168, 1, 1.2, 23.8 , 0 );
setMoveKey( spep_1-3 + 170, 1, -0.4, 22.1 , 0 );
setMoveKey( spep_1-3 + 172, 1, 0, 24.4 , 0 );
setMoveKey( spep_1-3 + 174, 1, -0.8, 21.3 , 0 );
setMoveKey( spep_1-3 + 176, 1, 1.1, 22.4 , 0 );
setMoveKey( spep_1-3 + 178, 1, -1.8, 21.8 , 0 );
setMoveKey( spep_1-3 + 180, 1, 1.1, 19.6 , 0 );
setMoveKey( spep_1-3 + 183, 1, -1.6, 21.7 , 0 );

setMoveKey( spep_1-3 + 184, 1, 24.9, -5.3 , 0 );
setMoveKey( spep_1-3 + 186, 1, 26.9, -6.1 , 0 );
setMoveKey( spep_1-3 + 188, 1, 28.9, -7 , 0 );
setMoveKey( spep_1-3 + 190, 1, 30.9, -7.8 , 0 );
setMoveKey( spep_1-3 + 192, 1, 32.9, -8.7 , 0 );
setMoveKey( spep_1-3 + 194, 1, 34.9, -9.6 , 0 );
setMoveKey( spep_1-3 + 196, 1, 36.9, -10.4 , 0 );
setMoveKey( spep_1-3 + 198, 1, 5.9, -14.8 , 0 );
setMoveKey( spep_1-3 + 200, 1, 61.2, -10.3 , 0 );
setMoveKey( spep_1-3 + 202, 1, 12.2, -5.9 , 0 );
setMoveKey( spep_1-3 + 204, 1, 47.3, -38.5 , 0 );
setMoveKey( spep_1-3 + 206, 1, 40.1, 6.6 , 0 );
setMoveKey( spep_1-3 + 208, 1, 55.5, -32.1 , 0 );
setMoveKey( spep_1-3 + 210, 1, 21.9, -11.1 , 0 );
setMoveKey( spep_1-3 + 212, 1, 61.7, -28.9 , 0 );
setMoveKey( spep_1-3 + 214, 1, 30.8, -8.9 , 0 );
setMoveKey( spep_1-3 + 216, 1, 62.8, -22.7 , 0 );
setMoveKey( spep_1-3 + 218, 1, 38.7, -11.3 , 0 );
setMoveKey( spep_1-3 + 220, 1, 68.5, -14.8 , 0 );
setMoveKey( spep_1-3 + 222, 1, 48.5, -27 , 0 );
setMoveKey( spep_1-3 + 224, 1, 68.6, -20.4 , 0 );
setMoveKey( spep_1-3 + 226, 1, 57.6, -16.4 , 0 );
setMoveKey( spep_1-3 + 228, 1, 73.5, -21.9 , 0 );
setMoveKey( spep_1-3 + 230, 1, 59.6, -19.5 , 0 );
setMoveKey( spep_1-3 + 232, 1, 77, -23 , 0 );
setMoveKey( spep_1-3 + 234, 1, 92.9, -22.8 , 0 );
setMoveKey( spep_1-3 + 236, 1, 78.9, -21.9 , 0 );
setMoveKey( spep_1-3 + 238, 1, 99.9, -21.1 , 0 );
setMoveKey( spep_1-3 + 240, 1, 86.3, -22.2 , 0 );
setMoveKey( spep_1-3 + 242, 1, 88.3, -23.8 , 0 );
setMoveKey( spep_1-3 + 244, 1, 95.3, -24.9 , 0 );
setMoveKey( spep_1-3 + 246, 1, 97.7, -42 , 0 );
setMoveKey( spep_1-3 + 248, 1, 97.7, -27.6 , 0 );
setMoveKey( spep_1-3 + 250, 1, 100.7, -42.7 , 0 );
setMoveKey( spep_1-3 + 252, 1, 102.6, -43.9 , 0 );
setMoveKey( spep_1-3 + 254, 1, 104.6, -34 , 0 );
setMoveKey( spep_1-3 + 256, 1, 104.6, -50.6 , 0 );
setMoveKey( spep_1-3 + 258, 1, 109.1, -34.2 , 0 );
setMoveKey( spep_1-3 + 260, 1, 112.5, -46.3 , 0 );
setMoveKey( spep_1-3 + 262, 1, 115.5, -45.9 , 0 );
setMoveKey( spep_1-3 + 264, 1, 123.5, -27.5 , 0 );
setMoveKey( spep_1-3 + 266, 1, 123.4, -46.7 , 0 );
setMoveKey( spep_1-3 + 268, 1, 126.9, -29.8 , 0 );
setMoveKey( spep_1-3 + 270, 1, 126.9, -48.9 , 0 );
setMoveKey( spep_1-3 + 272, 1, 128.8, -48 , 0 );
setMoveKey( spep_1-3 + 274, 1, 132.3, -33.6 , 0 );
setMoveKey( spep_1-3 + 276, 1, 134.3, -50.2 , 0 );
setMoveKey( spep_1-3 + 278, 1, 136.7, -35.9 , 0 );
setMoveKey( spep_1-3 + 280, 1, 140.7, -52 , 0 );
setMoveKey( spep_1-3 + 282, 1, 143.2, -52.6 , 0 );
setMoveKey( spep_1-3 + 284, 1, 142.6, -36.2 , 0 );
setMoveKey( spep_1-3 + 286, 1, 146.1, -55.3 , 0 );
setMoveKey( spep_1-3 + 288, 1, 150.1, -35.9 , 0 );
setMoveKey( spep_1-3 + 290, 1, 154.6, -52.5 , 0 );
setMoveKey( spep_1-3 + 292, 1, 157, -52.7 , 0 );
setMoveKey( spep_1-1 + 294, 1, 157.5, -40.8 , 0 );

setScaleKey( spep_1-3 + 120, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 122, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 124, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 126, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 128, 1, 1.66, 1.66 );
setScaleKey( spep_1-3 + 130, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 132, 1, 2.09, 2.09 );
setScaleKey( spep_1-3 + 134, 1, 2.36, 2.36 );
setScaleKey( spep_1-3 + 137, 1, 2.67, 2.67 );

setScaleKey( spep_1-3 + 138, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 140, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 142, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 144, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 147, 1, 1.5, 1.5 );

setScaleKey( spep_1-3 + 148, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 150, 1, 1.28, 1.28 );
setScaleKey( spep_1-3 + 152, 1, 1.26, 1.26 );
setScaleKey( spep_1-3 + 154, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 156, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 158, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 160, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 162, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 164, 1, 1.09, 1.09 );
setScaleKey( spep_1-3 + 166, 1, 1.07, 1.07 );
setScaleKey( spep_1-3 + 168, 1, 1.04, 1.04 );
setScaleKey( spep_1-3 + 170, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 172, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 174, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 176, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 178, 1, 0.91, 0.91 );
setScaleKey( spep_1-3 + 180, 1, 0.88, 0.88 );
setScaleKey( spep_1-3 + 183, 1, 0.85, 0.85 );

setScaleKey( spep_1-3 + 184, 1, 2.96, 2.96 );
setScaleKey( spep_1-1 + 294, 1, 2.96, 2.96 );

setRotateKey( spep_1-3 + 120, 1, 0 );
setRotateKey( spep_1-3 + 137, 1, 0 );

setRotateKey( spep_1-3 + 138, 1, -45 );
setRotateKey( spep_1-3 + 147, 1, -45 );

setRotateKey( spep_1-3 + 148, 1, 0 );
setRotateKey( spep_1-3 + 183, 1, 0 );

a=-20;

setRotateKey( spep_1-3 + 184, 1, -28.5+a );
setRotateKey( spep_1-3 + 198, 1, -28.5+a );
setRotateKey( spep_1-3 + 200, 1, -28.4+a );
setRotateKey( spep_1-3 + 202, 1, -28.3+a );
setRotateKey( spep_1-3 + 204, 1, -28.3+a );
setRotateKey( spep_1-3 + 206, 1, -28.2+a );
setRotateKey( spep_1-3 + 208, 1, -28.1+a );
setRotateKey( spep_1-3 + 210, 1, -28.1+a );
setRotateKey( spep_1-3 + 212, 1, -28+a );
setRotateKey( spep_1-3 + 214, 1, -27.9+a );
setRotateKey( spep_1-3 + 216, 1, -27.8+a );
setRotateKey( spep_1-3 + 218, 1, -27.8+a );
setRotateKey( spep_1-3 + 220, 1, -27.7+a );
setRotateKey( spep_1-3 + 222, 1, -27.6+a );
setRotateKey( spep_1-3 + 224, 1, -27.6+a );
setRotateKey( spep_1-3 + 226, 1, -27.5+a );
setRotateKey( spep_1-3 + 228, 1, -27.4+a );
setRotateKey( spep_1-3 + 230, 1, -27.4+a );
setRotateKey( spep_1-3 + 232, 1, -27.3+a );
setRotateKey( spep_1-3 + 234, 1, -27.2+a );
setRotateKey( spep_1-3 + 236, 1, -27.2+a );
setRotateKey( spep_1-3 + 238, 1, -27.1+a );
setRotateKey( spep_1-3 + 240, 1, -27+a );
setRotateKey( spep_1-3 + 242, 1, -27+a );
setRotateKey( spep_1-3 + 244, 1, -26.9+a );
setRotateKey( spep_1-3 + 246, 1, -26.8+a );
setRotateKey( spep_1-3 + 248, 1, -26.8+a );
setRotateKey( spep_1-3 + 250, 1, -26.7+a );
setRotateKey( spep_1-3 + 252, 1, -26.6+a );
setRotateKey( spep_1-3 + 254, 1, -26.6+a );
setRotateKey( spep_1-3 + 256, 1, -26.5+a );
setRotateKey( spep_1-3 + 258, 1, -26.4+a );
setRotateKey( spep_1-3 + 260, 1, -26.4+a );
setRotateKey( spep_1-3 + 262, 1, -26.3+a );
setRotateKey( spep_1-3 + 264, 1, -26.2+a );
setRotateKey( spep_1-3 + 266, 1, -26.2+a );
setRotateKey( spep_1-3 + 268, 1, -26.1+a );
setRotateKey( spep_1-3 + 270, 1, -26+a );
setRotateKey( spep_1-3 + 272, 1, -26+a );
setRotateKey( spep_1-3 + 274, 1, -25.9+a );
setRotateKey( spep_1-3 + 276, 1, -25.8+a );
setRotateKey( spep_1-3 + 278, 1, -25.8+a );
setRotateKey( spep_1-3 + 280, 1, -25.7+a );
setRotateKey( spep_1-3 + 282, 1, -25.6+a );
setRotateKey( spep_1-3 + 284, 1, -25.6+a );
setRotateKey( spep_1-3 + 286, 1, -25.5+a );
setRotateKey( spep_1-3 + 288, 1, -25.4+a );
setRotateKey( spep_1-3 + 290, 1, -25.4+a );
setRotateKey( spep_1-3 + 292, 1, -25.3+a );
setRotateKey( spep_1-1 + 294, 1, -25.2+a );

--SE
--振りかぶる
SE020 = playSeVer2( spep_1 + 14, 1004, "", 0, 0, 0, -1);

--地面爆発
SE021 = playSeVer2( spep_1 + 34, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 34, SE021, 76 );

--気弾発射
SE022 = playSeVer2( spep_1 + 60, 1145, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 60, 1072, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 60, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE024, 69 );

--気弾ヒット
SE025 = playSeVer2( spep_1 + 170, 1211, "",spep_1 + 308, 20, 6, -1);
setSeVolumeByWorkId( spep_1 + 170, SE025, 442 );
setStartTimeMs( SE025,  1750 );
SE026 = playSeVer2( spep_1 + 94, 1215, "",spep_1 + 314, 0, 10, -1);

--敵ヒット
SE027 = playSeVer2( spep_1 + 136, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 136, SE027, 85 );
SE028 = playSeVer2( spep_1 + 136, 1052, "", 0, 0, 0, -1);

--気弾ヒット
SE029 = playSeVer2( spep_1 + 182, 1161, "",spep_1 + 304, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 182, SE029, 123 );
SE030 = playSeVer2( spep_1 + 182, 1226, "",spep_1 + 312, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 182, SE030, 111 );

--気弾飲み込む
SE031 = playSeVer2( spep_1 + 244, 1258, "",spep_1 + 318, 18, 24, -1);
setSeVolumeByWorkId( spep_1 + 244, SE031, 71 );

--ラスト爆発
SE032 = playSeVer2( spep_1 + 302, 1067, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 302, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 302, SE033, 77 );
SE034 = playSeVer2( spep_1 + 302, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 302, SE034, 84 );

--ボイス
--バカヤローーーーッ！！
playVoice( spep_1 + 20, 318 );

--終わり
hideKoScreen();
entryFade( spep_1 +424, 2,  8, 2, 0, 0, 0, 255);             -- black fade
dealDamage( spep_1 + 302 -56 );
endPhase( spep_1 + 434 );
else end