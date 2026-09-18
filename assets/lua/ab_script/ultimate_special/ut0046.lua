--1025800:ヤムチャ_特大繰気弾
--sp_effect_b4_00266

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
SP_01 = 160930;	--開幕〜フィニッシュ（キャラクター）	ef_001
SP_02 = 161005;	--開幕〜フィニッシュ(背景)	ef_002

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

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 630 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 824);      -- スキップ先フレーム指定

          --気弾ヒット
          SE033 = playSeVer2( spep_0 + 824, 1278, "",spep_0 + 848, 0, 26, -1);
          setSeVolumeByWorkId( spep_0 + 824, SE033, 91 );
          SE034 = playSeVer2( spep_0 + 824, 1044, "",spep_0 + 852, 0, 26, -1);
          SE035 = playSeVer2( spep_0 + 690, 1304, "",spep_0 + 852, 0, 26, -1);
          SE037 = playSeVer2( spep_0 + 824, 1019, "",spep_0 + 852, 0, 27, -1);

          --爆発
          SE038 = playSeVer2( spep_0 + 824, 1024, "", 0, 0, 0, -1);
          SE039 = playSeVer2( spep_0 + 824, 1159, "", 0, 0, 0, -1);

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アクティブスキル
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 982, finish_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 982, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_f, 0 );
setEffRotateKey( spep_0 + 982, finish_f, 0 );
setEffAlphaKey( spep_0 + 0, finish_f, 255 );
setEffAlphaKey( spep_0 + 982, finish_f, 255 );

finish_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 982, finish_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 982, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_b, 0 );
setEffRotateKey( spep_0 + 982, finish_b, 0 );
setEffAlphaKey( spep_0 + 0, finish_b, 255 );
setEffAlphaKey( spep_0 + 982, finish_b, 255 );

-- ** エフェクト等 ** --

--敵の動き_1
setDisp( spep_0 -3 + 396, 1, 1 );
setDisp( spep_0 -3 + 444, 1, 0 );
changeAnime( spep_0 -3 + 396, 1, 117 );
changeAnime( spep_0 -3 + 416, 1, 103 );

setMoveKey( spep_0 -3 + 396, 1, 137.3, -318.8 , 0 );
setMoveKey( spep_0 -3 + 397, 1, 137.3, -318.8 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 98.9, -235.6 , 0 );
setMoveKey( spep_0 -3 + 399, 1, 98.9, -235.6 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 76.1, -159.1 , 0 );
setMoveKey( spep_0 -3 + 401, 1, 76.1, -159.1 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 67.8, -118 , 0 );
setMoveKey( spep_0 -3 + 403, 1, 67.8, -118 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 54.8, -79.1 , 0 );
setMoveKey( spep_0 -3 + 405, 1, 54.8, -79.1 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 44.2, -63.1 , 0 );
setMoveKey( spep_0 -3 + 407, 1, 44.2, -63.1 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 40.8, -46.9 , 0 );
setMoveKey( spep_0 -3 + 409, 1, 40.8, -46.9 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 43.5, -51.1 , 0 );
setMoveKey( spep_0 -3 + 411, 1, 43.5, -51.1 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 38.3, -44.6 , 0 );
setMoveKey( spep_0 -3 + 413, 1, 38.3, -44.6 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 33.3, -38.6 , 0 );
setMoveKey( spep_0 -3 + 415, 1, 33.3, -38.6 , 0 );--
setMoveKey( spep_0 -3 + 416, 1, 19.7, 139.9 , 0 );
setMoveKey( spep_0 -3 + 417, 1, 19.7, 139.9 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -7.8, 260.2 , 0 );
setMoveKey( spep_0 -3 + 419, 1, -7.8, 260.2 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -33.1, 370.7 , 0 );
setMoveKey( spep_0 -3 + 421, 1, -33.1, 370.7 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -56.4, 471.5 , 0 );
setMoveKey( spep_0 -3 + 423, 1, -56.4, 471.5 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -77.6, 562.5 , 0 );
setMoveKey( spep_0 -3 + 425, 1, -77.6, 562.5 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -96.7, 643.9 , 0 );
setMoveKey( spep_0 -3 + 427, 1, -96.7, 643.9 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -113.7, 715.4 , 0 );
setMoveKey( spep_0 -3 + 429, 1, -113.7, 715.4 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -128.6, 777.3 , 0 );
setMoveKey( spep_0 -3 + 431, 1, -128.6, 777.3 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -141.4, 829.4 , 0 );
setMoveKey( spep_0 -3 + 433, 1, -141.4, 829.4 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -152.1, 871.7 , 0 );
setMoveKey( spep_0 -3 + 435, 1, -152.1, 871.7 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -160.7, 904.3 , 0 );
setMoveKey( spep_0 -3 + 437, 1, -160.7, 904.3 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -167.1, 927.2 , 0 );
setMoveKey( spep_0 -3 + 439, 1, -167.1, 927.2 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -171.5, 940.4 , 0 );
setMoveKey( spep_0 -3 + 441, 1, -171.5, 940.4 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -173.9, 943.8 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -173.9, 943.8 , 0 );

setScaleKey( spep_0 -3 + 396, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 415, 1, 0.81, 0.81 );--
setScaleKey( spep_0 -3 + 416, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 417, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 418, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 419, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 420, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 421, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 422, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 423, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 424, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 425, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 426, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 427, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 428, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 429, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 430, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 431, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 432, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 433, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 434, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 435, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 436, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 437, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 438, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 439, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 440, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 441, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 442, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 444, 1, 1.33, 1.33 );

setRotateKey( spep_0 -3 + 396, 1, 13.2 );
setRotateKey( spep_0 -3 + 415, 1, 13.2 );--
setRotateKey( spep_0 -3 + 416, 1, 55.7 );
setRotateKey( spep_0 -3 + 444, 1, 55.7 );


--敵の動き_2
setDisp( spep_0 -3 + 484, 1, 1 );
setDisp( spep_0 -3 + 538, 1, 0 );
changeAnime( spep_0 -3 + 484, 1, 116 );

setMoveKey( spep_0 -3 + 484, 1, -30.7, -234.7 , 0 );
setMoveKey( spep_0 -3 + 486, 1, -30.6, -235.2 , 0 );
setMoveKey( spep_0 -3 + 488, 1, -30.6, -235.8 , 0 );
setMoveKey( spep_0 -3 + 490, 1, -30.7, -236.4 , 0 );
setMoveKey( spep_0 -3 + 492, 1, -31, -236.9 , 0 );
setMoveKey( spep_0 -3 + 494, 1, -31.6, -237.4 , 0 );
setMoveKey( spep_0 -3 + 496, 1, -32.3, -237.8 , 0 );
setMoveKey( spep_0 -3 + 498, 1, -33.2, -238 , 0 );
setMoveKey( spep_0 -3 + 500, 1, -34.3, -238.2 , 0 );
setMoveKey( spep_0 -3 + 502, 1, -35.6, -238.3 , 0 );
setMoveKey( spep_0 -3 + 504, 1, -37, -238.2 , 0 );
setMoveKey( spep_0 -3 + 506, 1, -38.8, -237.9 , 0 );
setMoveKey( spep_0 -3 + 508, 1, -40.8, -237.5 , 0 );
setMoveKey( spep_0 -3 + 510, 1, -43, -236.9 , 0 );
setMoveKey( spep_0 -3 + 512, 1, -45.4, -236.1 , 0 );
setMoveKey( spep_0 -3 + 514, 1, -48, -235.1 , 0 );
setMoveKey( spep_0 -3 + 516, 1, -50.9, -234 , 0 );
setMoveKey( spep_0 -3 + 518, 1, -54, -232.6 , 0 );
setMoveKey( spep_0 -3 + 520, 1, -57.4, -231.1 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -61, -229.4 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -64.8, -227.5 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -68.8, -225.5 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -73, -223.3 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -77.4, -221 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -82, -218.8 , 0 );
setMoveKey( spep_0 -3 + 534, 1, -86.7, -208.5 , 0 );
setMoveKey( spep_0 -3 + 536, 1, -83, -215.6 , 0 );
setMoveKey( spep_0 -3 + 538, 1, -83, -215.6 , 0 );

setScaleKey( spep_0 -3 + 484, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 486, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 488, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 490, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 492, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 494, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 496, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 498, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 500, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 502, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 504, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 506, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 508, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 510, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 512, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 514, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 516, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 518, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 520, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 522, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 524, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 526, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 528, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 530, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 532, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 534, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 536, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 538, 1, 1.32, 1.32 );

setRotateKey( spep_0 -3 + 484, 1, -23 );
setRotateKey( spep_0 -3 + 486, 1, -22.9 );
setRotateKey( spep_0 -3 + 488, 1, -22.9 );
setRotateKey( spep_0 -3 + 490, 1, -22.7 );
setRotateKey( spep_0 -3 + 492, 1, -22.6 );
setRotateKey( spep_0 -3 + 494, 1, -22.3 );
setRotateKey( spep_0 -3 + 496, 1, -22 );
setRotateKey( spep_0 -3 + 498, 1, -21.7 );
setRotateKey( spep_0 -3 + 500, 1, -21.3 );
setRotateKey( spep_0 -3 + 502, 1, -20.9 );
setRotateKey( spep_0 -3 + 504, 1, -20.4 );
setRotateKey( spep_0 -3 + 506, 1, -19.8 );
setRotateKey( spep_0 -3 + 508, 1, -19.2 );
setRotateKey( spep_0 -3 + 510, 1, -18.6 );
setRotateKey( spep_0 -3 + 512, 1, -17.9 );
setRotateKey( spep_0 -3 + 514, 1, -17.1 );
setRotateKey( spep_0 -3 + 516, 1, -16.3 );
setRotateKey( spep_0 -3 + 518, 1, -15.5 );
setRotateKey( spep_0 -3 + 520, 1, -14.6 );
setRotateKey( spep_0 -3 + 522, 1, -13.6 );
setRotateKey( spep_0 -3 + 524, 1, -12.6 );
setRotateKey( spep_0 -3 + 526, 1, -11.6 );
setRotateKey( spep_0 -3 + 528, 1, -10.4 );
setRotateKey( spep_0 -3 + 530, 1, -9.3 );
setRotateKey( spep_0 -3 + 532, 1, -8.1 );
setRotateKey( spep_0 -3 + 534, 1, -6.8 );
setRotateKey( spep_0 -3 + 536, 1, -5.5 );
setRotateKey( spep_0 -3 + 538, 1, -5.5 );

--SE
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 10, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 66 );

--電気溜める
SE003 = playSeVer2( spep_0 + 109, 1147, "",spep_0 + 276, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 109, SE003, 62 );

SE004 = playSeVer2( spep_0 + 154, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE004, 53 );
setTimeStretch( SE004, 0.5, 30, 4 );
SE005 = playSeVer2( spep_0 + 154, 1184, "",spep_0 + 314, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 154, SE005, 63 );
SE006 = playSeVer2( spep_0 + 154, 1227, "",spep_0 + 450, 0, 80, -1);
SE007 = playSeVer2( spep_0 + 154, 1148, "",spep_0 + 272, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 157, SE007, 68 );

--気弾飛んでいく
SE008 = playSeVer2( spep_0 + 243, 1116, "",spep_0 + 299, 0, 30, -1);
SE017 = playSeVer2( spep_0 + 400, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE017, 186 );

--腕振り回す
SE009 = playSeVer2( spep_0 + 258, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE009, 81 );
setPitch( spep_0 + 258, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 276, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE010, 162 );
SE011 = playSeVer2( spep_0 + 320, 1004, "", 0, 0, 0, -1);

--気弾飛ばす
SE012 = playSeVer2( spep_0 + 327, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 327, SE012, 75 );
SE013 = playSeVer2( spep_0 + 327, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 327, 1022, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 327, 1193, "",spep_0 + 480, 0, 86, -1);
SE016 = playSeVer2( spep_0 + 345, 1179, "", 0, 0, 0, -1);

--腕動かす--
SE018 = playSeVer2( spep_0 + 448, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE018, 74 );
E019 = playSeVer2( spep_0 + 462, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE019, 83 );
E020 = playSeVer2( spep_0 + 462, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE020, 150 );

--気弾向かっていく
SE021 = playSeVer2( spep_0 + 467, 1215, "",spep_0 + 622, 0, 78, -1);
SE022 = playSeVer2( spep_0 + 467, 1184, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 466, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE023, 53 );
setTimeStretch( SE023, 1.19, 30, 4 );

--赤背景
SE024 = playSeVer2( spep_0 + 534, 1264, "", spep_0 + 692, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 534, SE024, 79 );

--指下ろす
SE025 = playSeVer2( spep_0 + 584, 1004, "", 0, 0, 0, -1);

--気弾飛んでくる
SE026 = playSeVer2( spep_0 + 604, 1146, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE026, 86 );
setStartTimeMs( SE026,  67 );
SE027 = playSeVer2( spep_0 + 616, 1193, "",spep_0 + 700, 0, 28, -1);
SE028 = playSeVer2( spep_0 + 616, 1177, "",spep_0 + 700, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 616, SE028, 74 );

--ボイス
--修業の成果を見せてやる！
playVoice( spep_0 + 0, 525 );
setVoiceVolume( spep_0 + 0, 525, 126 );

--はあ…！
playVoice( spep_0 + 143, 526 );
setVoiceVolume( spep_0 + 143, 526, 100 );

--決めてやるぜ！
playVoice( spep_0 + 203, 527 );
setVoiceVolume( spep_0 + 203, 527, 126 );

--繰気弾！！
playVoice( spep_0 + 312, 528 );
setVoiceVolume( spep_0 + 312, 528, 100 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 630 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    stopSe( SP_dodge - 12, SE028, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setDisp( SP_dodge +2, 1, 1 );
    changeAnime( SP_dodge +2, 1, 103 );

    setMoveKey( SP_dodge + 2, 1, 534.1, -971.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 531.8, -967.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 528.5, -962.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 523.8, -954.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 517.6, -944.8 , 0 );

    setScaleKey( SP_dodge + 2, 1, 2.13, 2.13 );
    setScaleKey( SP_dodge + 10, 1, 2.13, 2.13 );

    setRotateKey( SP_dodge + 2, 1, 60.2 );
    setRotateKey( SP_dodge + 10, 1, 60.2 ); 
    
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


--敵の動き_3
setDisp( spep_0 -3 + 636, 1, 1 );
setDisp( spep_0 -3 + 672, 1, 0 );
changeAnime( spep_0 -3 + 636, 1, 103 );

setMoveKey( spep_0 -3 + 636, 1, 534.1, -971.5 , 0 );
setMoveKey( spep_0 -3 + 638, 1, 531.8, -967.7 , 0 );
setMoveKey( spep_0 -3 + 640, 1, 528.5, -962.4 , 0 );
setMoveKey( spep_0 -3 + 642, 1, 523.8, -954.9 , 0 );
setMoveKey( spep_0 -3 + 644, 1, 517.6, -944.8 , 0 );
setMoveKey( spep_0 -3 + 646, 1, 513.4, -943.5 , 0 );
setMoveKey( spep_0 -3 + 648, 1, 502.9, -918.4 , 0 );
setMoveKey( spep_0 -3 + 650, 1, 497.6, -904.9 , 0 );
setMoveKey( spep_0 -3 + 652, 1, 481.3, -870.3 , 0 );
setMoveKey( spep_0 -3 + 654, 1, 453.4, -845.8 , 0 );
setMoveKey( spep_0 -3 + 656, 1, 429.4, -798.8 , 0 );
setMoveKey( spep_0 -3 + 658, 1, 409, -760.5 , 0 );
setMoveKey( spep_0 -3 + 660, 1, 375.6, -698 , 0 );
setMoveKey( spep_0 -3 + 662, 1, 328.8, -634.5 , 0 );
setMoveKey( spep_0 -3 + 664, 1, 291.8, -569.1 , 0 );
setMoveKey( spep_0 -3 + 666, 1, 240.2, -476.9 , 0 );
setMoveKey( spep_0 -3 + 668, 1, 173.4, -389 , 0 );
setMoveKey( spep_0 -3 + 670, 1, 173.4, -381 , 0 );
setMoveKey( spep_0 -3 + 672, 1, 173.4, -381 , 0 );

setScaleKey( spep_0 -3 + 636, 1, 2.13, 2.13 );
setScaleKey( spep_0 -3 + 672, 1, 2.13, 2.13 );

setRotateKey( spep_0 -3 + 636, 1, 60.2 );
setRotateKey( spep_0 -3 + 672, 1, 60.2 );


--敵の動き_4
setDisp( spep_0 -3 + 696, 1, 1 );
setDisp( spep_0 -3 + 756, 1, 0 );
changeAnime( spep_0 -3 + 696, 1, 108 );

setMoveKey( spep_0 -3 + 696, 1, 4.5, 460.3 , 0 );
setMoveKey( spep_0 -3 + 698, 1, 4.4, 421.9 , 0 );
setMoveKey( spep_0 -3 + 700, 1, 4.3, 384.8 , 0 );
setMoveKey( spep_0 -3 + 702, 1, 4.2, 349 , 0 );
setMoveKey( spep_0 -3 + 704, 1, 4.2, 314.6 , 0 );
setMoveKey( spep_0 -3 + 706, 1, 4.1, 281.5 , 0 );
setMoveKey( spep_0 -3 + 708, 1, 4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 710, 1, 4, 219.5 , 0 );
setMoveKey( spep_0 -3 + 712, 1, 3.9, 190.5 , 0 );
setMoveKey( spep_0 -3 + 714, 1, 3.8, 162.9 , 0 );
setMoveKey( spep_0 -3 + 716, 1, 3.8, 136.6 , 0 );
setMoveKey( spep_0 -3 + 718, 1, 3.7, 111.7 , 0 );
setMoveKey( spep_0 -3 + 720, 1, 3.6, 88.1 , 0 );
setMoveKey( spep_0 -3 + 722, 1, 3.5, 65.8 , 0 );
setMoveKey( spep_0 -3 + 724, 1, 3.5, 44.9 , 0 );
setMoveKey( spep_0 -3 + 726, 1, 3.4, 25.4 , 0 );
setMoveKey( spep_0 -3 + 728, 1, 3.4, 7.2 , 0 );
setMoveKey( spep_0 -3 + 730, 1, 3.3, -9.6 , 0 );
setMoveKey( spep_0 -3 + 732, 1, 3.2, -25.1 , 0 );
setMoveKey( spep_0 -3 + 734, 1, 3.1, -39.2 , 0 );
setMoveKey( spep_0 -3 + 736, 1, 3, -52 , 0 );
setMoveKey( spep_0 -3 + 738, 1, 3, -63.4 , 0 );
setMoveKey( spep_0 -3 + 740, 1, 2.9, -73.5 , 0 );
setMoveKey( spep_0 -3 + 742, 1, 2.9, -82.2 , 0 );
setMoveKey( spep_0 -3 + 744, 1, 2.8, -89.5 , 0 );
setMoveKey( spep_0 -3 + 746, 1, 2.7, -95.6 , 0 );
setMoveKey( spep_0 -3 + 748, 1, 2.7, -100.3 , 0 );
setMoveKey( spep_0 -3 + 750, 1, 2.5, -103.5 , 0 );
setMoveKey( spep_0 -3 + 752, 1, 2.5, -105.5 , 0 );
setMoveKey( spep_0 -3 + 754, 1, 2.5, -106.1 , 0 );
setMoveKey( spep_0 -3 + 756, 1, 2.5, -106.1 , 0 );

setScaleKey( spep_0 -3 + 696, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 756, 1, 1.1, 1.1 );

setRotateKey( spep_0 -3 + 696, 1, 90 );
setRotateKey( spep_0 -3 + 756, 1, 90 );

--SE
--気弾ヒット
SE029 = playSeVer2( spep_0 + 672, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE029, 76 );
SE030 = playSeVer2( spep_0 + 672, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE030, 81 );
SE031 = playSeVer2( spep_0 + 672, 1023, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 672, 1019, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 672, 1278, "",spep_0 + 848, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 672, SE033, 91 );
SE034 = playSeVer2( spep_0 + 672, 1044, "",spep_0 + 852, 0, 26, -1);
SE035 = playSeVer2( spep_0 + 690, 1304, "",spep_0 + 852, 0, 26, -1);
SE036 = playSeVer2( spep_0 + 736, 1019, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 800, 1019, "",spep_0 + 852, 0, 27, -1);

--爆発
SE038 = playSeVer2( spep_0 + 824, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 824, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 832, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 832, SE040, 51 );
SE041 = playSeVer2( spep_0 + 858, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE041, 72 );


--終わり
dealDamage( spep_0 + 832 );
endPhase( spep_0 + 972 );

else end