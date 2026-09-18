--1032730:UR_タマガミ・ナンバー・ツー_EX必殺技：ライジングバースト
--sp_effect_b2_00068
--sp2978

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164341; --カード前、敵より前 ef_001
SP_02 = 164342; --カード前、敵より後 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

ENABLE_AUTO_TIME_STRETCH(0.68);

--DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 96;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 276);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 276, SP_01, spep_2 + 276 - 1 + 2, 1);

        -- ** 音 ** --
        --持ち上げる
        SE039 = playSeVer2( spep_2 + 276 + 3, 1182, "", 0, 16, 0, -1);
        setStartTimeMs( SE039,  33 );
    else 

        setupMovie(0 , SP_01, 0, 1);

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前、敵より前
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前、敵より前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--槍まわす
SE001 = playSeVer2( spep_0 + 0, 1388, "",spep_0 + 104, 0, 12, 0.6);
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 4, 1003, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );
stopSeIfDoubleSpeed( spep_0 + 10, SE003 );
SE005 = playSeVer2( spep_0 + 16, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 16, SE005, 89 );
setPitch( spep_0 + 16, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE006 = playSeVer2( spep_0 + 24, 1003, "", 0, 0, 0, 0.6);
SE007 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 30, SE007, 79 );
setPitch( spep_0 + 30, SE007, -100 );
setTimeStretch( SE007, 0.93, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 30, SE007 );
SE008 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, 0.6);
SE009 = playSeVer2( spep_0 + 42, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 42, SE009, 63 );
SE010 = playSeVer2( spep_0 + 48, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 48, SE010, 91 );
setPitch( spep_0 + 48, SE010, 100 );
setTimeStretch( SE010, 1.07, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 48, SE010 );
SE011 = playSeVer2( spep_0 + 54, 1003, "", 0, 0, 0, 0.6);
SE012 = playSeVer2( spep_0 + 60, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 60, SE012, 122 );
SE013 = playSeVer2( spep_0 + 66, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 66, SE013, 76 );
SE014 = playSeVer2( spep_0 + 72, 1003, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 72, SE014, -300 );
setTimeStretch( SE014, 0.8, 30, 4 );
SE015 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, 0.6);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-------------------------------------------------
-- カード前、敵より後
-------------------------------------------------
MAX_FRAME_2 = 626;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード前、敵より後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 14 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 233.9, 260.3 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 314.2, 334.2 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 314.2, 334.2 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 394.4, 408.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 394.4, 408.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 474.6, 482.2 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 474.6, 482.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 554.8, 556.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 554.8, 556.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 635.1, 630.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 635.1, 630.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 715.3, 704.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 715.3, 704.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 1 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.69, 6.69 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.69, 6.69 );

setRotateKey( spep_2 + 0, 1, -4 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -4 );


--敵の動き2
setDisp( spep_2 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 148 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 56 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 56 + OFFSET_X, 1, 112.9, 19.5 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 112.9, 19.5 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 117.1, 21.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 117.1, 21.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 121.3, 23.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 121.3, 23.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 125.5, 25.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 125.5, 25.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 129.8, 28 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 129.8, 28 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 134, 30.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 134, 30.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 138.2, 32.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 138.2, 32.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 142.4, 34.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 142.4, 34.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 146.7, 36.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 146.7, 36.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 150.9, 38.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 150.9, 38.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 155.1, 40.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 155.1, 40.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 159.3, 42.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 159.3, 42.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 163.6, 44.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 163.6, 44.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 167.8, 46.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 167.8, 46.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 172, 49.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 172, 49.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 176.2, 51.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 176.2, 51.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 173, 101.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 173, 101.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 173.1, 96.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 173.1, 96.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 165, 70.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 165, 70.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 153.4, 69.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 153.4, 69.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 171.3, 72.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 171.3, 72.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 174.7, 73.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 174.7, 73.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 172.4, 72.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 172.4, 72.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 171.8, 77 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 171.8, 77 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 172.9, 77.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 172.9, 77.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 174.1, 78.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 174.1, 78.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 175.2, 79 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 175.2, 79 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 176.4, 79.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 176.4, 79.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 177.6, 80.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 177.6, 80.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 178.7, 80.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 178.7, 80.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 179.9, 81.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 179.9, 81.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 181, 82.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 181, 82.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 182.2, 82.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 182.2, 82.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 183.3, 83.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 183.3, 83.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 184.5, 84.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 184.5, 84.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 185.6, 84.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 185.6, 84.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 186.8, 85.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 186.8, 85.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 188, 86.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 188, 86.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 219.5, 100.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 219.5, 100.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 233.2, 78.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 233.2, 78.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 203.4, 117.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 203.4, 117.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 350.2, 96.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 350.2, 96.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 483.7, 80.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 483.7, 80.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 632, 64.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 632, 64.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 780.3, 47.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 780.3, 47.9 , 0 );

setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.02, 2.02 );

setRotateKey( spep_2 + 56 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -9.2 );


--敵の動き3
setDisp( spep_2 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 170 + OFFSET_X, 1, -240.7, 142.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -240.7, 142.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -146.7, 54.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -146.7, 54.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -94.6, 13.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -94.6, 13.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -61.2, -28.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -61.2, -28.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -26.8, -60.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -26.8, -60.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -3, -73.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -3, -73.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 12.4, -99.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 12.4, -99.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 29.2, -115.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 29.2, -115.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 43.5, -129 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 43.5, -129 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 55.7, -140.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 55.7, -140.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 66.2, -150.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 66.2, -150.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 75.3, -159.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 75.3, -159.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 83, -166.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 83, -166.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 89.7, -173.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 89.7, -173.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 95.4, -178.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 95.4, -178.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 100.2, -183.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 100.2, -183.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 104.4, -187.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 104.4, -187.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 109.4, -189 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 109.4, -189 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 110.8, -193.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 110.8, -193.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 114.9, -194.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 114.9, -194.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 115.4, -197.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 115.4, -197.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 117.2, -199.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 117.2, -199.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 118.9, -201.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 118.9, -201.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 120.6, -202.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 120.6, -202.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 122.1, -204.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 122.1, -204.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -144.4, -72.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -144.4, -72.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -144.1, 5.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -144.1, 5.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -144.4, -4.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -144.4, -4.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -144.4, 12.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -144.4, 12.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -163.6, 24 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -163.6, 24 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -147.6, 42 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -147.6, 42 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -141.2, 25.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -141.2, 25.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -141.2, 27.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -141.2, 27.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -162, 41.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -162, 41.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -146, 29.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -146, 29.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -149.2, 30 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -149.2, 30 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -149.2, 34.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -149.2, 34.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -146, 42.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -146, 42.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -146, 43.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -146, 43.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -146, 49.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -146, 49.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -126.4, 383.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -126.4, 383.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 36.7, 713.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 36.7, 713.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 175.8, 1098.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 175.8, 1098.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 315, 1482.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 315, 1482.9 , 0 );

setScaleKey( spep_2 + 170 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.3, 3.3 );

setRotateKey( spep_2 + 170 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -78 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -78 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -71 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -71 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -22 );

setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 0, 0, 0, 0.17 );


--敵の動き4
setDisp( spep_2 + 276 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 470 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 276 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 276 + OFFSET_X, 1, 142.9, 136.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 142.9, 136.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 113.4, 178.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 113.4, 178.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 71.6, 200.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 71.6, 200.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 51.4, 217.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 51.4, 217.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 40.1, 221.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 40.1, 221.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 29.9, 222.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 29.9, 222.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 21, 224.8 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 21, 224.8 , 0 );

setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 276 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -96 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -96 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -110 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -110 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -119 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -119 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -123 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -123 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -125 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -125 );

setBlendColor( spep_2 + 276 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 358 + OFFSET_X, 1, 3, 1, 1, 1, 0.78 );
setBlendColor( spep_2 + 470 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--構える
SE017 = playSeVer2( spep_2 + 4, 1042, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 4, 1317, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 4, 1012, "", 0, 0, 0, -1);

--飛びかかる
SE020 = playSeVer2( spep_2 + 36, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 36, 1117, "",spep_2 + 98, 0, 30, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 10, SE020, 0);
    stopSe( SP_dodge - 10, SE021, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--槍光る
SE022 = playSeVer2( spep_2 + 56, 1254, "", 0, 0, 0, -1);

--斬りつける１
SE023 = playSeVer2( spep_2 + 56, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 72, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 78, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 78, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE026, 68 );
SE027 = playSeVer2( spep_2 + 78, 1032, "", 0, 0, 0, -1);

--斬りつける２
SE028 = playSeVer2( spep_2 + 118, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 124, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE029, 51 );
SE030 = playSeVer2( spep_2 + 124, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE030, 61 );
setPitch( spep_2 + 124, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_2 + 124, 1032, "", 0, 0, 0, -1);

--水にもぐる
SE032 = playSeVer2( spep_2 + 148, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE032, 141 );
SE033 = playSeVer2( spep_2 + 164, 1471, "",spep_2 + 354, 0, 22, -1);
SE034 = playSeVer2( spep_2 + 164, 1011, "", 0, 0, 0, -1);

--振りかぶる
SE035 = playSeVer2( spep_2 + 220, 1116, "",spep_2 + 260, 0, 20, -1);

--パンチ
SE036 = playSeVer2( spep_2 + 230, 1190, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 230, 1153, "", 0, 0, 0, -1);

--持ち上げる
SE039 = playSeVer2( spep_2 + 270, 1182, "", 0, 16, 0, -1);
setStartTimeMs( SE039,  33 );
SE040 = playSeVer2( spep_2 + 282, 8, "", 0, 0, 0, -1);

--溜め
SE038 = playSeVer2( spep_2 + 316, 1336, "",spep_2 + 586, 38, 100, -1);
setSeVolumeByWorkId( spep_2 + 316, SE038, 77 );
setStartTimeMs( SE038,  1167 );
SE041 = playSeVer2( spep_2 + 316, 1507, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 324, 1477, "",spep_2 + 540, 58, 50, -1);
setSeVolumeByWorkId( spep_2 + 324, SE042, 50 );
setStartTimeMs( SE042,  100 );
SE043 = playSeVer2( spep_2 + 318, 1191, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 318, 1441, "", 0, 38, 0, -1);
setTimeStretch( SE044, 1.1, 30, 4 );

--爆発
SE045 = playSeVer2( spep_2 + 500, 1166, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 510, 1188, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 510, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 510, SE047, 76 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 516); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 626f -0f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);


-------------------------------------------------
-- カード前、敵より前
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前、敵より前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--槍まわす
SE001 = playSeVer2( spep_0 + 0, 1388, "",spep_0 + 104, 0, 12, 0.6);
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 4, 1003, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );
stopSeIfDoubleSpeed( spep_0 + 10, SE003 );
SE005 = playSeVer2( spep_0 + 16, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 16, SE005, 89 );
setPitch( spep_0 + 16, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE006 = playSeVer2( spep_0 + 24, 1003, "", 0, 0, 0, 0.6);
SE007 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 30, SE007, 79 );
setPitch( spep_0 + 30, SE007, -100 );
setTimeStretch( SE007, 0.93, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 30, SE007 );
SE008 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, 0.6);
SE009 = playSeVer2( spep_0 + 42, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 42, SE009, 63 );
SE010 = playSeVer2( spep_0 + 48, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 48, SE010, 91 );
setPitch( spep_0 + 48, SE010, 100 );
setTimeStretch( SE010, 1.07, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 48, SE010 );
SE011 = playSeVer2( spep_0 + 54, 1003, "", 0, 0, 0, 0.6);
SE012 = playSeVer2( spep_0 + 60, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 60, SE012, 122 );
SE013 = playSeVer2( spep_0 + 66, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 66, SE013, 76 );
SE014 = playSeVer2( spep_0 + 72, 1003, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 72, SE014, -300 );
setTimeStretch( SE014, 0.8, 30, 4 );
SE015 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, 0.6);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-------------------------------------------------
-- カード前、敵より後
-------------------------------------------------
MAX_FRAME_2 = 626;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード前、敵より後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 14 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 18 );

setMoveKey( spep_2 + 0, 1, -233.9, 260.3 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -314.2, 334.2 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -314.2, 334.2 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -394.4, 408.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -394.4, 408.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -474.6, 482.2 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -474.6, 482.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -554.8, 556.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -554.8, 556.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -635.1, 630.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -635.1, 630.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -715.3, 704.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -715.3, 704.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 1 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.69, 6.69 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.69, 6.69 );

setRotateKey( spep_2 + 0, 1, 4 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, 4 );


--敵の動き2
setDisp( spep_2 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 148 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 56 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 56 + OFFSET_X, 1, -112.9, 19.5 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -112.9, 19.5 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -117.1, 21.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -117.1, 21.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -121.3, 23.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -121.3, 23.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -125.5, 25.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -125.5, 25.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -129.8, 28 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -129.8, 28 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -134, 30.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -134, 30.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -138.2, 32.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -138.2, 32.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -142.4, 34.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -142.4, 34.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -146.7, 36.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -146.7, 36.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -150.9, 38.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -150.9, 38.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -155.1, 40.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -155.1, 40.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -159.3, 42.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -159.3, 42.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -163.6, 44.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -163.6, 44.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -167.8, 46.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -167.8, 46.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -172, 49.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -172, 49.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -176.2, 51.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -176.2, 51.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -173, 101.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -173, 101.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -173.1, 96.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -173.1, 96.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -165, 70.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -165, 70.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -153.4, 69.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -153.4, 69.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -171.3, 72.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -171.3, 72.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -174.7, 73.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -174.7, 73.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -172.4, 72.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -172.4, 72.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -171.8, 77 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -171.8, 77 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -172.9, 77.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -172.9, 77.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -174.1, 78.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -174.1, 78.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -175.2, 79 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -175.2, 79 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -176.4, 79.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -176.4, 79.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -177.6, 80.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -177.6, 80.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -178.7, 80.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -178.7, 80.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -179.9, 81.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -179.9, 81.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -181, 82.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -181, 82.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -182.2, 82.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -182.2, 82.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -183.3, 83.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -183.3, 83.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -184.5, 84.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -184.5, 84.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -185.6, 84.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -185.6, 84.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -186.8, 85.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -186.8, 85.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -188, 86.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -188, 86.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -219.5, 100.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -219.5, 100.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -233.2, 78.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -233.2, 78.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -203.4, 117.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -203.4, 117.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -350.2, 96.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -350.2, 96.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -483.7, 80.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -483.7, 80.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -632, 64.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -632, 64.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -780.3, 47.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -780.3, 47.9 , 0 );

setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.02, 2.02 );

setRotateKey( spep_2 + 56 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 9.2 );


--敵の動き3
setDisp( spep_2 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 170 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 170 + OFFSET_X, 1, 240.7, 142.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 240.7, 142.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 146.7, 54.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 146.7, 54.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 94.6, 13.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 94.6, 13.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 61.2, -28.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 61.2, -28.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 26.8, -60.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 26.8, -60.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 3, -73.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 3, -73.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -12.4, -99.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -12.4, -99.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -29.2, -115.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -29.2, -115.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -43.5, -129 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -43.5, -129 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -55.7, -140.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -55.7, -140.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -66.2, -150.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -66.2, -150.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -75.3, -159.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -75.3, -159.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -83, -166.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -83, -166.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -89.7, -173.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -89.7, -173.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -95.4, -178.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -95.4, -178.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -100.2, -183.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -100.2, -183.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -104.4, -187.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -104.4, -187.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -109.4, -189 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -109.4, -189 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -110.8, -193.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -110.8, -193.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -114.9, -194.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -114.9, -194.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -115.4, -197.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -115.4, -197.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -117.2, -199.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -117.2, -199.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -118.9, -201.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -118.9, -201.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -120.6, -202.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -120.6, -202.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -122.1, -204.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -122.1, -204.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 144.4, -72.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 144.4, -72.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 144.1, 5.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 144.1, 5.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 144.4, -4.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 144.4, -4.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 144.4, 12.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 144.4, 12.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 163.6, 24 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 163.6, 24 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 147.6, 42 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 147.6, 42 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 141.2, 25.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 141.2, 25.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 141.2, 27.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 141.2, 27.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 162, 41.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 162, 41.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 146, 29.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 146, 29.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 149.2, 30 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 149.2, 30 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 149.2, 34.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 149.2, 34.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 146, 42.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 146, 42.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 146, 43.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 146, 43.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 146, 49.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 146, 49.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 126.4, 383.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 126.4, 383.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -36.7, 713.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -36.7, 713.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -175.8, 1098.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -175.8, 1098.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -315, 1482.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -315, 1482.9 , 0 );

setScaleKey( spep_2 + 170 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.3, 3.3 );

setRotateKey( spep_2 + 170 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 78 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 78 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 71 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 71 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 22 );

setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 0, 0, 0, 0.17 );


--敵の動き4
setDisp( spep_2 + 276 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 470 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 276 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 276 + OFFSET_X, 1, -142.9, 136.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -142.9, 136.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -113.4, 178.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -113.4, 178.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -71.6, 200.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -71.6, 200.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -51.4, 217.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -51.4, 217.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -40.1, 221.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -40.1, 221.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -29.9, 222.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -29.9, 222.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -21, 224.8 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -21, 224.8 , 0 );

setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 276 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 96 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 96 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 110 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 110 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 119 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 119 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 121 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 121 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 123 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 123 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 125 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, 125 );

setBlendColor( spep_2 + 276 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 358 + OFFSET_X, 1, 3, 1, 1, 1, 0.78 );
setBlendColor( spep_2 + 470 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--構える
SE017 = playSeVer2( spep_2 + 4, 1042, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 4, 1317, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 4, 1012, "", 0, 0, 0, -1);

--飛びかかる
SE020 = playSeVer2( spep_2 + 36, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 36, 1117, "",spep_2 + 98, 0, 30, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 10, SE020, 0);
    stopSe( SP_dodge - 10, SE021, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--槍光る
SE022 = playSeVer2( spep_2 + 56, 1254, "", 0, 0, 0, -1);

--斬りつける１
SE023 = playSeVer2( spep_2 + 56, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 72, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 78, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 78, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE026, 68 );
SE027 = playSeVer2( spep_2 + 78, 1032, "", 0, 0, 0, -1);

--斬りつける２
SE028 = playSeVer2( spep_2 + 118, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 124, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE029, 51 );
SE030 = playSeVer2( spep_2 + 124, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE030, 61 );
setPitch( spep_2 + 124, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_2 + 124, 1032, "", 0, 0, 0, -1);

--水にもぐる
SE032 = playSeVer2( spep_2 + 148, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE032, 141 );
SE033 = playSeVer2( spep_2 + 164, 1471, "",spep_2 + 354, 0, 22, -1);
SE034 = playSeVer2( spep_2 + 164, 1011, "", 0, 0, 0, -1);

--振りかぶる
SE035 = playSeVer2( spep_2 + 220, 1116, "",spep_2 + 260, 0, 20, -1);

--パンチ
SE036 = playSeVer2( spep_2 + 230, 1190, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 230, 1153, "", 0, 0, 0, -1);

--持ち上げる
SE039 = playSeVer2( spep_2 + 270, 1182, "", 0, 16, 0, -1);
setStartTimeMs( SE039,  33 );
SE040 = playSeVer2( spep_2 + 282, 8, "", 0, 0, 0, -1);

--溜め
SE038 = playSeVer2( spep_2 + 316, 1336, "",spep_2 + 586, 38, 100, -1);
setSeVolumeByWorkId( spep_2 + 316, SE038, 77 );
setStartTimeMs( SE038,  1167 );
SE041 = playSeVer2( spep_2 + 316, 1507, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 324, 1477, "",spep_2 + 540, 58, 50, -1);
setSeVolumeByWorkId( spep_2 + 324, SE042, 50 );
setStartTimeMs( SE042,  100 );
SE043 = playSeVer2( spep_2 + 318, 1191, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 318, 1441, "", 0, 38, 0, -1);
setTimeStretch( SE044, 1.1, 30, 4 );

--爆発
SE045 = playSeVer2( spep_2 + 500, 1166, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 510, 1188, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 510, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 510, SE047, 76 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 516); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 626f -0f

end