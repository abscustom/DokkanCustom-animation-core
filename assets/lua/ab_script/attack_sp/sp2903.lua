--1031590:LR_超サイヤ人孫悟飯(青年期)+超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_必殺技：悪いヤツはゆるさない！！
--sp_effect_b1_00339
--sp2903

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164023; --カード前 ef_001
SP_02  = 164024; --カード後 敵より手前 ef_002
SP_02b = 164025; --カード後 敵より後ろ ef_002b

--エフェクト(敵)
SP_02r  = 164026; --カード後 敵より手前 敵側 ef_002r
SP_02br = 164027; --カード後 敵より後ろ 敵側 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 210;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 210);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 210, SP_01, spep_2 + 210 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前 ef_001
-------------------------------------------------
MAX_FRAME_0 = 210;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 122;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--気ダメ
SE001 = playSeVer2( spep_0 + 32, 1503, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
--気が弾ける
SE003 = playSeVer2( spep_0 + 62, 1216, "",spep_0 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 62, SE003, 68 );
SE004 = playSeVer2( spep_0 + 62, 1497, "", 0, 0, 0, -1);
--オーラ
SE005 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 63 );
SE006 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
SE007 = playSeVer2( spep_0 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE007, 63 );
--顔カットイン
--SE008 = playSeVer2( spep_0 + 132, 1018, "", 0, 0, 0, -1);
--気ダメ２
SE009 = playSeVer2( spep_0 + 132, 1503, "",spep_0 + 210, 0, 18, -1);
--オーラ
SE010 = playSeVer2( spep_0 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE010, 63 );
SE011 = playSeVer2( spep_0 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE011, 63 );
SE012 = playSeVer2( spep_0 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE012, 63 );

-- ** 白フェード ** --
entryFade( spep_0 + 208, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- フレーム数 208

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後 敵より手前 ef_002
-------------------------------------------------
MAX_FRAME_2 = 572;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後 敵より手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 60 + OFFSET_X, 1, 1);
setDisp( spep_2 + 116 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 60 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 463.5, -40.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 463.5, -40.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 436.9, -45 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 436.9, -45 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 412.1, -48.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 412.1, -48.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 388.5, -52.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 388.5, -52.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 366.1, -55.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 366.1, -55.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 344.8, -58.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 344.8, -58.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 324.6, -61.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 324.6, -61.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 305.6, -64.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 305.6, -64.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 287.8, -67.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 287.8, -67.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 271.2, -70 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 271.2, -70 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 255.8, -72.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 255.8, -72.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 241.8, -74.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 241.8, -74.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 229.2, -76.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 229.2, -76.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 218.2, -78 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 218.2, -78 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 208.7, -79.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 208.7, -79.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 201.1, -80.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 201.1, -80.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 195.3, -81.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 195.3, -81.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 191.7, -82.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 191.7, -82.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 190.4, -82.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 190.4, -82.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 123.6, -168.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 123.6, -168.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 107.6, -190.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 107.6, -190.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 105.6, -168.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 105.6, -168.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 186.4, -256.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 186.4, -256.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 182.4, -234.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 182.4, -234.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 166.4, -256.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 166.4, -256.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 231.2, -289.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 231.2, -289.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 253.2, -311.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 253.2, -311.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 243.2, -301.6 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 5.24, 5.25 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 5.24, 5.25 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 4.93, 4.91 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 4.93, 4.91 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 4.78, 4.76 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 4.78, 4.76 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 4.64, 4.61 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 4.64, 4.61 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.5, 4.47 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 4.5, 4.47 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 4.37, 4.33 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 4.37, 4.33 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 4.24, 4.2 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 4.24, 4.2 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 4.12, 4.08 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 4.12, 4.08 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.89, 3.86 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 3.89, 3.86 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.79, 3.76 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 3.79, 3.76 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.7, 3.67 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.7, 3.67 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.61, 3.59 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.61, 3.59 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.53, 3.52 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.53, 3.52 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.47, 3.46 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 3.47, 3.46 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.38, 3.39 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3.38, 3.39 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.37, 3.38 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.37, 3.38 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.42, 3.42 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 276 + OFFSET_X, 1, 1);
setDisp( spep_2 + 314 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 276 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 276 + OFFSET_X, 1, 118.1, -20.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 118.1, -20.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 106.1, -8.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 106.1, -8.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 128.1, -30.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 128.1, -30.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 441.1, -219 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 441.1, -219 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 425.1, -237 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 425.1, -237 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 441.1, -235 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 441.1, -235 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 687, -381.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 687, -381.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 703, -379.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 703, -379.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 687, -397.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 687, -397.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 964.7, -555.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 964.7, -555.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 948.7, -541.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 948.7, -541.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 1210.5, -702.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 1210.5, -702.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 1559.5, -916.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 1559.5, -916.1 , 0 );

setScaleKey( spep_2 + 276 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 8.25, 8.25 );

setRotateKey( spep_2 + 276 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 31.7 );

--敵の動き3
setDisp( spep_2 + 390 + OFFSET_X, 1, 1);
setDisp( spep_2 + 444 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 418 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 390 + OFFSET_X, 1, -503.1, 82.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -503.1, 82.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -383.3, 42 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -383.3, 42 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -263.5, 1.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -263.5, 1.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -143.6, -38.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -143.6, -38.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -38, -134.1 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -38, -134.1 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -17.3, -186.8 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -17.3, -186.8 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 3.4, -239.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 3.4, -239.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 24.1, -292.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 24.1, -292.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -27, -428.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -27, -428.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -25, -439.2 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -25, -439.2 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -23, -450.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -23, -450.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -38.2, -443.1 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -38.2, -443.1 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -75.6, -257.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -75.6, -257.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 22.9, -259.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 22.9, -259.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -53, -246.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -53, -246.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 15.4, -330.9 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 15.4, -330.9 , 0 );

setScaleKey( spep_2 + 390 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 390 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 72.4 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 72.4 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 83.2 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, 83.2 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 47.2 );


-- ** 音 ** --
--向かっていく
SE014 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 0, 1479, "",spep_2 + 78, 0, 32, -1);
SE016 = playSeVer2( spep_2 + 10, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 26, 1026, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 60, 1116, "",spep_2 + 102, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 60, SE018, 82 );


-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 84; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE014, 0);

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

--蹴り飛ばす
SE019 = playSeVer2( spep_2 + 88, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 96, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 96, 1009, "", 0, 0, 0, -1);
--瞬間移動
SE022 = playSeVer2( spep_2 + 124, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 168, 1109, "", 0, 0, 0, -1);
--体制変える
SE024 = playSeVer2( spep_2 + 188, 1004, "", 0, 0, 0, -1);
--ライダーキック
SE025 = playSeVer2( spep_2 + 214, 1116, "",spep_2 + 284, 0, 38, -1);
SE026 = playSeVer2( spep_2 + 220, 9, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 226, 1258, "",spep_2 + 324, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 226, SE027, 56 );
SE028 = playSeVer2( spep_2 + 240, 1118, "",spep_2 + 314, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 240, SE028, 63 );
--敵ヒット
SE029 = playSeVer2( spep_2 + 282, 1153, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 282, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE031 = playSeVer2( spep_2 + 306, 1183, "",spep_2 + 450, 0, 96, -1);
setSeVolumeByWorkId( spep_2 + 306, SE031, 65 );
--服なびく
SE032 = playSeVer2( spep_2 + 306, 1332, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 324, 1331, "", 0, 0, 0, -1);
--地面バウンド
SE034 = playSeVer2( spep_2 + 406, 1014, "", 0, 0, 0, -1);
--爆発
SE035 = playSeVer2( spep_2 + 440, 1061, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 440, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 448); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 572

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- カード前 ef_001
-------------------------------------------------
MAX_FRAME_0 = 210;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 122;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--気ダメ
SE001 = playSeVer2( spep_0 + 32, 1503, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
--気が弾ける
SE003 = playSeVer2( spep_0 + 62, 1216, "",spep_0 + 152, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 62, SE003, 68 );
SE004 = playSeVer2( spep_0 + 62, 1497, "", 0, 0, 0, -1);
--オーラ
SE005 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 63 );
SE006 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
SE007 = playSeVer2( spep_0 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE007, 63 );
--顔カットイン
--SE008 = playSeVer2( spep_0 + 132, 1018, "", 0, 0, 0, -1);
--気ダメ２
SE009 = playSeVer2( spep_0 + 132, 1503, "",spep_0 + 150, 0, 18, -1);
--オーラ
SE010 = playSeVer2( spep_0 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE010, 63 );
SE011 = playSeVer2( spep_0 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE011, 63 );
SE012 = playSeVer2( spep_0 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE012, 63 );

-- ** 白フェード ** --
entryFade( spep_0 + 208, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- フレーム数 208

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後 敵より手前 ef_002
-------------------------------------------------
MAX_FRAME_2 = 572;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後 敵より手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 60 + OFFSET_X, 1, 1);
setDisp( spep_2 + 116 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 60 + OFFSET_X, 1, 2 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, -463.5, -40.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -463.5, -40.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -436.9, -45 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -436.9, -45 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -412.1, -48.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -412.1, -48.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -388.5, -52.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -388.5, -52.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -366.1, -55.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -366.1, -55.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -344.8, -58.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -344.8, -58.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -324.6, -61.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -324.6, -61.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -305.6, -64.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -305.6, -64.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -287.8, -67.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -287.8, -67.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -271.2, -70 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -271.2, -70 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -255.8, -72.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -255.8, -72.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -241.8, -74.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -241.8, -74.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -229.2, -76.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -229.2, -76.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -218.2, -78 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -218.2, -78 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -208.7, -79.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -208.7, -79.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -201.1, -80.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -201.1, -80.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -195.3, -81.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -195.3, -81.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -191.7, -82.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -191.7, -82.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -190.4, -82.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -190.4, -82.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -123.6, -168.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -123.6, -168.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -107.6, -190.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -107.6, -190.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -105.6, -168.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -105.6, -168.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -186.4, -256.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -186.4, -256.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -182.4, -234.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -182.4, -234.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -166.4, -256.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -166.4, -256.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -231.2, -289.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -231.2, -289.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -253.2, -311.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -253.2, -311.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -243.2, -301.6 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 5.24, 5.25 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 5.24, 5.25 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 4.93, 4.91 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 4.93, 4.91 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 4.78, 4.76 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 4.78, 4.76 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 4.64, 4.61 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 4.64, 4.61 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.5, 4.47 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 4.5, 4.47 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 4.37, 4.33 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 4.37, 4.33 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 4.24, 4.2 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 4.24, 4.2 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 4.12, 4.08 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 4.12, 4.08 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.89, 3.86 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 3.89, 3.86 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.79, 3.76 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 3.79, 3.76 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.7, 3.67 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.7, 3.67 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.61, 3.59 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.61, 3.59 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.53, 3.52 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.53, 3.52 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.47, 3.46 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 3.47, 3.46 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.38, 3.39 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3.38, 3.39 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.37, 3.38 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.37, 3.38 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.42, 3.42 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 276 + OFFSET_X, 1, 1);
setDisp( spep_2 + 314 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 276 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 276 + OFFSET_X, 1, -118.1, -20.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -118.1, -20.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -106.1, -8.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -106.1, -8.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -128.1, -30.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -128.1, -30.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -441.1, -219 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -441.1, -219 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -425.1, -237 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -425.1, -237 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -441.1, -235 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -441.1, -235 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -687, -381.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -687, -381.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -703, -379.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -703, -379.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -687, -397.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -687, -397.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -964.7, -555.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -964.7, -555.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -948.7, -541.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -948.7, -541.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -1210.5, -702.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -1210.5, -702.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -1559.5, -916.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -1559.5, -916.1 , 0 );

setScaleKey( spep_2 + 276 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 8.25, 8.25 );

setRotateKey( spep_2 + 276 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -31.7 );

--敵の動き3
setDisp( spep_2 + 390 + OFFSET_X, 1, 1);
setDisp( spep_2 + 444 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 418 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 390 + OFFSET_X, 1, 503.1, 82.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 503.1, 82.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 383.3, 42 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 383.3, 42 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 263.5, 1.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 263.5, 1.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 143.6, -38.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 143.6, -38.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 38, -134.1 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 38, -134.1 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 17.3, -186.8 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 17.3, -186.8 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -3.4, -239.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -3.4, -239.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -24.1, -292.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -24.1, -292.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 27, -428.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 27, -428.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 25, -439.2 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 25, -439.2 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 23, -450.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 23, -450.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 38.2, -443.1 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 38.2, -443.1 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 75.6, -257.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 75.6, -257.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -22.9, -259.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -22.9, -259.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 53, -246.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 53, -246.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -15.4, -330.9 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -15.4, -330.9 , 0 );

setScaleKey( spep_2 + 390 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 390 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -47.2 );


-- ** 音 ** --

--向かっていく
SE014 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 0, 1479, "",spep_2 + 78, 0, 32, -1);
SE016 = playSeVer2( spep_2 + 10, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 26, 1026, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 60, 1116, "",spep_2 + 102, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 60, SE018, 82 );

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 84; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE014, 0);
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

--蹴り飛ばす
SE019 = playSeVer2( spep_2 + 96, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 104, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 104, 1009, "", 0, 0, 0, -1);
--瞬間移動
SE022 = playSeVer2( spep_2 + 128, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 172, 1109, "", 0, 0, 0, -1);
--体制変える
SE024 = playSeVer2( spep_2 + 188, 1004, "", 0, 0, 0, -1);
--ライダーキック
SE025 = playSeVer2( spep_2 + 214, 1116, "",spep_2 + 284, 0, 38, -1);
SE026 = playSeVer2( spep_2 + 220, 9, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 226, 1258, "",spep_2 + 324, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 226, SE027, 56 );
SE028 = playSeVer2( spep_2 + 240, 1118, "",spep_2 + 314, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 240, SE028, 63 );
--敵ヒット
SE029 = playSeVer2( spep_2 + 282, 1153, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 282, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE031 = playSeVer2( spep_2 + 306, 1183, "",spep_2 + 450, 0, 96, -1);
setSeVolumeByWorkId( spep_2 + 306, SE031, 65 );
--服なびく
SE032 = playSeVer2( spep_2 + 306, 1332, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 324, 1331, "", 0, 0, 0, -1);
--地面バウンド
SE034 = playSeVer2( spep_2 + 406, 1014, "", 0, 0, 0, -1);
--爆発
SE035 = playSeVer2( spep_2 + 440, 1061, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 440, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 448); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 572

end