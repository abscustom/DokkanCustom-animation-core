--1032960:UR_レジック_必殺技：バウンサーアタック
--sp_effect_b2_00069
--sp2999

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164394; --カード前 ef_001
SP_02  = 164395; --カード後〜フィニッシュまで ef_002
SP_02b = 164396; --カード後〜フィニッシュまで ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 +  130;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 468);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 468, SP_01, spep_2 + 468 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --槍で突く
        SE041 = playSeVer2( spep_2 + 468 + 3, 1500, "", 0, 0, 0, -1);
    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 130;

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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -100, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -100, 515.5 , 0 );
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


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
--剣抜き出す
SE001 = playSeVer2( spep_0 + 8, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 20, 1061, "", 0, 0, 0, -1);
--顔カットイン
--SE003 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);
--剣出現する
SE004 = playSeVer2( spep_0 + 58, 1275, "",spep_0 + 150, 8, 40, -1);
setStartTimeMs( SE004, 333 );
setPitch( spep_0 + 58, SE004, -1000 );
setTimeStretch( SE004, 0.33, 30, 4 );
SE005 = playSeVer2( spep_0 + 62, 1426, "",spep_0 + 84, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 129 );
SE006 = playSeVer2( spep_0 + 62, 1240, "",spep_0 + 144, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 62, SE006, 138 );
setPitch( spep_0 + 62, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 64, 1026, "", 0, 0, 0, -1);
--瞬間移動
SE008 = playSeVer2( spep_0 + 112, 1245, "",spep_0 + 154, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 112, SE008, 56 );
SE009 = playSeVer2( spep_0 + 116, 1207, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 116, SE009, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 130  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
entryFade(spep_1-1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 694;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 18 );
changeAnime( spep_2 + 22 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 44 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 130 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 0, 1, -130.7, -3.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -130.7, -3.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -121.6, 6.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -121.6, 6.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -139.4, 2 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -139.4, 2 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -116, 8.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -116, 8.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -119.2, 18.5 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -119.2, 18.5 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -115, 24 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -115, 24 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -116.6, -10.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -116.6, -10.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -96.4, 26.4 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -96.4, 26.4 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -130.2, -3.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -130.2, -3.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -107.8, 13.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -107.8, 13.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -119.1, 9.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -119.1, 9.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -111.2, 14.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -111.2, 14.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -113, 10.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -113, 10.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -113, 10.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -113, 10.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -113.1, 10.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -113.1, 10.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -188.6, -40.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -188.6, -40.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -100.9, 14 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -100.9, 14 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -150.1, -14.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -150.1, -14.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -99.4, -27.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -99.4, -27.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -115.8, 41.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -115.8, 41.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -121.1, -3.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -121.1, -3.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -100.5, 4.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -100.5, 4.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -173.4, -47.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -173.4, -47.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -124.1, -6.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -124.1, -6.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -112.1, 27.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -112.1, 27.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -130.7, -19.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -130.7, -19.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -117.1, 28.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -117.1, 28.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -155.4, -34.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -155.4, -34.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -108.8, 4.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -108.8, 4.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -148.1, -31.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -148.1, -31.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -119.5, 3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -119.5, 3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -106, 21.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -106, 21.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -102.1, -2.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -102.1, -2.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -127.1, -7.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -127.1, -7.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 341.1, 62.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 341.1, 62.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 216.7, 24.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 216.7, 24.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 142.1, 1.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 142.1, 1.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 117.3, -6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 117.3, -6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 111.7, -7.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 111.7, -7.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 106.1, -9.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 106.1, -9.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 100.4, -11.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 100.4, -11.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 94.8, -12.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 94.8, -12.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 89.2, -14.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 89.2, -14.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 83.6, -16.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 83.6, -16.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 78, -18.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 78, -18.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 5.3, -27.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 5.3, -27.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -89.7, -97.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -89.7, -97.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -84.7, -80.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -84.7, -80.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -107.7, -38.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -107.7, -38.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -80.7, -79.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -80.7, -79.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -73.7, -72.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -73.7, -72.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -95.7, -48.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -95.7, -48.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -87.7, -77.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -87.7, -77.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -85.7, -48.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -85.7, -48.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -93.7, -75.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -93.7, -75.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 22.7, 231.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 22.7, 231.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 22.1, 231.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 22.1, 231.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 20.4, 230.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 20.4, 230.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 16.8, 228.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 16.8, 228.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 10.7, 226 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 10.7, 226 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 0.8, 221.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 0.8, 221.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -14.6, 214.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -14.6, 214.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -38.7, 204.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -38.7, 204.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -77.4, 187.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -77.4, 187.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -143.9, 157.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -143.9, 157.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -278.6, 98.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -278.6, 98.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -1389.3, -393.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -1389.3, -393.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.61, 1.61 );

--ここから一回り大きく
add_Scale_rate = 1;
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.05 + add_Scale_rate, 2.05 + add_Scale_rate );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.05 + add_Scale_rate, 2.05 + add_Scale_rate );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.02 + add_Scale_rate, 2.02 + add_Scale_rate );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.02 + add_Scale_rate, 2.02 + add_Scale_rate );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.01 + add_Scale_rate, 2.01 + add_Scale_rate );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.01 + add_Scale_rate, 2.01 + add_Scale_rate );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2 + add_Scale_rate, 2 + add_Scale_rate );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2 + add_Scale_rate, 2 + add_Scale_rate );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.47  + add_Scale_rate, 2.47 + add_Scale_rate );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.47  + add_Scale_rate, 2.47 + add_Scale_rate );
--ここまで

setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 4.99, 4.99 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -35.3 );

--敵の動き2
setDisp( spep_2 + 196 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 196 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 228 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 196 + OFFSET_X, 1, 416.6, 265.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 416.6, 265.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 412.9, 263.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 412.9, 263.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 409.3, 261.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 409.3, 261.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 405.7, 260.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 405.7, 260.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 402.1, 258.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 402.1, 258.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 398.4, 256.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 398.4, 256.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 394.8, 254.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 394.8, 254.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 391.2, 253.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 391.2, 253.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 387.6, 251.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 387.6, 251.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 348.4, 222.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 348.4, 222.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 309.3, 192.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 309.3, 192.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 270.1, 163.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 270.1, 163.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 231, 134.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 231, 134.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 191.8, 105 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 191.8, 105 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 152.7, 75.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 152.7, 75.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 113.5, 46.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 113.5, 46.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 113.4, 24.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 113.4, 24.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 127.6, 41.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 127.6, 41.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 171.7, 100.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 171.7, 100.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 171.2, 134.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 171.2, 134.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 277.2, 281.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 277.2, 281.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 363.3, 336.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 363.3, 336.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 415.3, 468 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 415.3, 468 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 492.3, 538.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 492.3, 538.3 , 0 );

setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.26, 1.26 );

setRotateKey( spep_2 + 196 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -70.4 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -70.4 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -21.5 );

--敵の動き3
setDisp( spep_2 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 296 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 258 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 258 + OFFSET_X, 1, -155, -325.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -155, -325.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 66.5, 61.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 66.5, 61.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 105.4, 129.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 105.4, 129.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 128.4, 169.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 128.4, 169.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 144.2, 197.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 144.2, 197.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 155.8, 217.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 155.8, 217.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 164.7, 232.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 164.7, 232.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 171.6, 245.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 171.6, 245.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 177.2, 254.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 177.2, 254.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 181.6, 262.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 181.6, 262.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 185.1, 268.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 185.1, 268.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 188, 273.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 188, 273.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 190.2, 277.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 190.2, 277.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 192, 280.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 192, 280.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 193.3, 282.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 193.3, 282.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 194.2, 284.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 194.2, 284.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 194.9, 285.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 194.9, 285.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 195.2, 286.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 195.2, 286.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 195.2, 286.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 195.2, 286.4 , 0 );

setScaleKey( spep_2 + 258 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 258 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 19.5 );

--敵の動き4
setDisp( spep_2 + 444 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 524 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 444 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 476 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 514 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 444 + OFFSET_X, 1, -61.7, 130.3 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -61.7, 130.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -60.5, 131.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -60.5, 131.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -59.2, 131.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -59.2, 131.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -58, 132.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -58, 132.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -56.8, 133.4 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -56.8, 133.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -55.5, 134.1 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -55.5, 134.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -54.3, 134.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -54.3, 134.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -53.1, 135.7 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -53.1, 135.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -51.8, 136.5 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -51.8, 136.5 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -50.6, 137.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -50.6, 137.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -49.4, 138 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -49.4, 138 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -48.1, 138.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -48.1, 138.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -46.9, 139.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -46.9, 139.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -45.6, 140.3 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -45.6, 140.3 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -32.7, 151.4 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -32.7, 151.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -7.8, 168.3 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -7.8, 168.3 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 17.2, 144.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 17.2, 144.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 23.4, 170.3 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 23.4, 170.3 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 44.5, 145.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 44.5, 145.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 40.7, 169.5 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 40.7, 169.5 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 24.9, 154.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 24.9, 154.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 33, 160.8 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 33, 160.8 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 33.2, 160.9 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 33.2, 160.9 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 33.4, 161.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 33.4, 161.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 33.5, 161.2 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 33.5, 161.2 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 33.7, 161.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 33.7, 161.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 33.9, 161.4 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 33.9, 161.4 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 34, 161.5 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 34, 161.5 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 34.2, 161.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 34.2, 161.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 34.4, 161.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 34.4, 161.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 34.5, 161.9 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 34.5, 161.9 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 34.7, 162 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 34.7, 162 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 34.9, 162.1 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 34.9, 162.1 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 35, 162.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 35, 162.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 35.2, 162.3 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 35.2, 162.3 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 83.7, -35.6 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 83.7, -35.6 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 127.7, -129.2 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 127.7, -129.2 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 179.7, -308.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 179.7, -308.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 280.7, -399.2 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 280.7, -399.2 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 295.8, -534.7 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 295.8, -534.7 , 0 );

--ここから一回り大きく
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.86, 0.86 );
--ここまで

setRotateKey( spep_2 + 444 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 481 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 485 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 499 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_2 + 501 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_2 + 502 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 503 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 505 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, 90.8 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 90.8 );

--敵の動き5
setDisp( spep_2 + 544 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 558 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 544 + OFFSET_X, 1, -46.3, 56.9 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -46.3, 56.9 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -47.2, 54.4 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -47.2, 54.4 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -48.2, 51.8 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -48.2, 51.8 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -49.1, 49.3 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -49.1, 49.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -50, 46.7 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -50, 46.7 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -51, 44.2 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -51, 44.2 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -51.9, 41.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -51.9, 41.6 , 0 );

setScaleKey( spep_2 + 544 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 544 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 52.1 );

--敵の動き6
setDisp( spep_2 + 564 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 590 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 564 + OFFSET_X, 1, 112.5, -78.4 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 112.5, -78.4 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 92.2, -106.7 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 92.2, -106.7 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 215.7, -141.9 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 215.7, -141.9 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 182.4, -120.2 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 182.4, -120.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 319.8, -208.4 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 319.8, -208.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 313.5, -182.7 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 313.5, -182.7 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 413, -265.9 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 413, -265.9 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 423.7, -255.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 423.7, -255.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 499.2, -306.4 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 499.2, -306.4 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 535.1, -320.7 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 535.1, -320.7 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 596, -363.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 596, -363.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 641.9, -387.4 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 641.9, -387.4 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 697.8, -423.8 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 697.8, -423.8 , 0 );

setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 564 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, 52.1 );

-- ** 音 ** --

--瞬間移動
SE011 = playSeVer2( spep_2 + 2, 1245, "",spep_2 + 46, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 2, SE011, 56 );
SE012 = playSeVer2( spep_2 + 8, 1207, "",spep_2 + 44, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 8, SE012, 78 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--- ** 音 ** --
--突き
SE013 = playSeVer2( spep_2 + 38, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 46, 1032, "", 0, 0, 0, -1);
--連続突き
SE016 = playSeVer2( spep_2 + 68, 1425, "",spep_2 + 124, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 68, 1031, "",spep_2 + 84, 0, 2, -1);
SE018 = playSeVer2( spep_2 + 76, 1031, "",spep_2 + 92, 0, 2, -1);
SE019 = playSeVer2( spep_2 + 86, 1031, "",spep_2 + 102, 0, 4, -1);
SE020 = playSeVer2( spep_2 + 94, 1031, "",spep_2 + 110, 0, 4, -1);
SE021 = playSeVer2( spep_2 + 104, 1031, "",spep_2 + 120, 0, 4, -1);
--画面遷移
SE022 = playSeVer2( spep_2 + 108, 1232, "", 0, 0, 0, -1);
--蹴り飛ばす
SE023 = playSeVer2( spep_2 + 134, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE023, 92 );
SE024 = playSeVer2( spep_2 + 134, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE024, 77 );
SE025 = playSeVer2( spep_2 + 134, 1121, "", 0, 0, 0, -1);
--瞬間移動
SE026 = playSeVer2( spep_2 + 182, 1245, "",spep_2 + 226, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 182, SE026, 65 );
SE027 = playSeVer2( spep_2 + 188, 1207, "",spep_2 + 224, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 188, SE027, 69 );
SE028 = playSeVer2( spep_2 + 210, 1245, "",spep_2 + 254, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 68 );
--殴り飛ばす
SE029 = playSeVer2( spep_2 + 230, 1120, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 232, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE030, 68 );
--飛行音
SE031 = playSeVer2( spep_2 + 262, 1019, "", 0, 0, 0, -1);
--槍抜く
SE032 = playSeVer2( spep_2 + 318, 1061, "", 0, 0, 0, -1);
--飛行音
SE033 = playSeVer2( spep_2 + 326, 1019, "", 0, 0, 0, -1);
--槍伸びる
SE034 = playSeVer2( spep_2 + 338, 1426, "",spep_2 + 360, 0, 4, -1);
SE035 = playSeVer2( spep_2 + 340, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE035, 71 );
SE036 = playSeVer2( spep_2 + 340, 1154, "",spep_2 + 432, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 340, SE036, 130 );
setPitch( spep_2 + 340, SE036, -800 );
setTimeStretch( SE036, 0.47, 30, 4 );
SE037 = playSeVer2( spep_2 + 340, 1152, "", 0, 0, 0, -1);
--飛行音
SE038 = playSeVer2( spep_2 + 390, 1019, "", 0, 0, 0, -1);
--向かってくる
SE039 = playSeVer2( spep_2 + 400, 1117, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 402, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 402, SE040, 56 );
--槍で突く
SE041 = playSeVer2( spep_2 + 460, 1500, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 466, 1189, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 476, 1153, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 476, 1110, "", 0, 0, 0, -1);
--叩き落とす
SE045 = playSeVer2( spep_2 + 512, 1123, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 516, 1162, "", 0, 0, 0, -1);
--ビル激突
SE047 = playSeVer2( spep_2 + 560, 1024, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 564, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 574); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 694-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 130;

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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 16;

-- -- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 100, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 100, 515.5 , 0 );
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

-- --顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
--剣抜き出す
SE001 = playSeVer2( spep_0 + 8, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 20, 1061, "", 0, 0, 0, -1);
--顔カットイン
--SE003 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);
--剣出現する
SE004 = playSeVer2( spep_0 + 58, 1275, "",spep_0 + 150, 8, 40, -1);
setStartTimeMs( SE004, 333 );
setPitch( spep_0 + 58, SE004, -1000 );
setTimeStretch( SE004, 0.33, 30, 4 );
SE005 = playSeVer2( spep_0 + 62, 1426, "",spep_0 + 84, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 129 );
SE006 = playSeVer2( spep_0 + 62, 1240, "",spep_0 + 144, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 62, SE006, 138 );
setPitch( spep_0 + 62, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 64, 1026, "", 0, 0, 0, -1);
--瞬間移動
SE008 = playSeVer2( spep_0 + 112, 1245, "",spep_0 + 154, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 112, SE008, 56 );
SE009 = playSeVer2( spep_0 + 116, 1207, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 116, SE009, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 130  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
entryFade(spep_1-1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 694;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 22 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 44 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 130 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 130.7, -3.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 130.7, -3.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 121.6, 6.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 121.6, 6.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 139.4, 2 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 139.4, 2 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 116, 8.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 116, 8.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 119.2, 18.5 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 119.2, 18.5 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 115, 24 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 115, 24 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 116.6, -10.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 116.6, -10.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 96.4, 26.4 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 96.4, 26.4 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 130.2, -3.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 130.2, -3.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 107.8, 13.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 107.8, 13.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 119.1, 9.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 119.1, 9.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 111.2, 14.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 111.2, 14.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 113, 10.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 113, 10.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 113, 10.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 113, 10.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 113.1, 10.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 113.1, 10.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 188.6, -40.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 188.6, -40.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 100.9, 14 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 100.9, 14 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 150.1, -14.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 150.1, -14.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 99.4, -27.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 99.4, -27.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 115.8, 41.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 115.8, 41.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 121.1, -3.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 121.1, -3.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 100.5, 4.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 100.5, 4.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 173.4, -47.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 173.4, -47.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 124.1, -6.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 124.1, -6.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 112.1, 27.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 112.1, 27.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 130.7, -19.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 130.7, -19.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 117.1, 28.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 117.1, 28.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 155.4, -34.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 155.4, -34.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 108.8, 4.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 108.8, 4.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 148.1, -31.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 148.1, -31.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 119.5, 3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 119.5, 3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 106, 21.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 106, 21.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 102.1, -2.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 102.1, -2.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 127.1, -7.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 127.1, -7.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -341.1, 62.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -341.1, 62.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -216.7, 24.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -216.7, 24.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -142.1, 1.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -142.1, 1.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -117.3, -6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -117.3, -6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -111.7, -7.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -111.7, -7.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -106.1, -9.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -106.1, -9.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -100.4, -11.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -100.4, -11.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -94.8, -12.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -94.8, -12.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -89.2, -14.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -89.2, -14.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -83.6, -16.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -83.6, -16.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -78, -18.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -78, -18.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -5.3, -27.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -5.3, -27.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 89.7, -97.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 89.7, -97.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 84.7, -80.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 84.7, -80.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 107.7, -38.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 107.7, -38.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 80.7, -79.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 80.7, -79.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 73.7, -72.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 73.7, -72.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 95.7, -48.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 95.7, -48.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 87.7, -77.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 87.7, -77.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 85.7, -48.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 85.7, -48.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 93.7, -75.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 93.7, -75.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -22.7, 231.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -22.7, 231.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -22.1, 231.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -22.1, 231.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -20.4, 230.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -20.4, 230.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -16.8, 228.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -16.8, 228.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -10.7, 226 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -10.7, 226 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -0.8, 221.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -0.8, 221.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 14.6, 214.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 14.6, 214.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 38.7, 204.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 38.7, 204.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 77.4, 187.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 77.4, 187.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 143.9, 157.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 143.9, 157.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 278.6, 98.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 278.6, 98.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 1389.3, -393.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1389.3, -393.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 4.99, 4.99 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 35.3 );

--敵の動き2
setDisp( spep_2 + 196 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 196 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 228 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 196 + OFFSET_X, 1, -416.6, 265.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -416.6, 265.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -412.9, 263.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -412.9, 263.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -409.3, 261.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -409.3, 261.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -405.7, 260.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -405.7, 260.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -402.1, 258.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -402.1, 258.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -398.4, 256.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -398.4, 256.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -394.8, 254.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -394.8, 254.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -391.2, 253.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -391.2, 253.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -387.6, 251.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -387.6, 251.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -348.4, 222.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -348.4, 222.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -309.3, 192.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -309.3, 192.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -270.1, 163.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -270.1, 163.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -231, 134.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -231, 134.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -191.8, 105 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -191.8, 105 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -152.7, 75.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -152.7, 75.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -113.5, 46.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -113.5, 46.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -113.4, 24.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -113.4, 24.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -127.6, 41.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -127.6, 41.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -171.7, 100.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -171.7, 100.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -171.2, 134.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -171.2, 134.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -277.2, 281.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -277.2, 281.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -363.3, 336.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -363.3, 336.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -415.3, 468 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -415.3, 468 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -492.3, 538.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -492.3, 538.3 , 0 );

setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.26, 1.26 );

setRotateKey( spep_2 + 196 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 70.4 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 70.4 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 21.5 );

--敵の動き3
setDisp( spep_2 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 296 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 258 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 258 + OFFSET_X, 1, 155, -325.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 155, -325.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -66.5, 61.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -66.5, 61.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -105.4, 129.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -105.4, 129.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -128.4, 169.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -128.4, 169.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -144.2, 197.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -144.2, 197.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -155.8, 217.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -155.8, 217.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -164.7, 232.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -164.7, 232.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -171.6, 245.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -171.6, 245.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -177.2, 254.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -177.2, 254.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -181.6, 262.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -181.6, 262.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -185.1, 268.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -185.1, 268.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -188, 273.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -188, 273.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -190.2, 277.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -190.2, 277.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -192, 280.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -192, 280.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -193.3, 282.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -193.3, 282.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -194.2, 284.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -194.2, 284.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -194.9, 285.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -194.9, 285.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -195.2, 286.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -195.2, 286.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -195.2, 286.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -195.2, 286.4 , 0 );

setScaleKey( spep_2 + 258 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 258 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -19.5 );

--敵の動き4
setDisp( spep_2 + 444 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 524 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 444 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 476 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 514 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 444 + OFFSET_X, 1, 61.7, 130.3 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 61.7, 130.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 60.5, 131.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 60.5, 131.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 59.2, 131.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 59.2, 131.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 58, 132.6 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 58, 132.6 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 56.8, 133.4 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 56.8, 133.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 55.5, 134.1 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 55.5, 134.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 54.3, 134.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 54.3, 134.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 53.1, 135.7 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 53.1, 135.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 51.8, 136.5 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 51.8, 136.5 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 50.6, 137.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 50.6, 137.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 49.4, 138 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 49.4, 138 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 48.1, 138.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 48.1, 138.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 46.9, 139.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 46.9, 139.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 45.6, 140.3 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 45.6, 140.3 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 32.7, 151.4 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 32.7, 151.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 7.8, 168.3 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 7.8, 168.3 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -17.2, 144.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -17.2, 144.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -23.4, 170.3 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -23.4, 170.3 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -44.5, 145.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -44.5, 145.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -40.7, 169.5 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -40.7, 169.5 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -24.9, 154.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -24.9, 154.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -33, 160.8 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -33, 160.8 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -33.2, 160.9 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -33.2, 160.9 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -33.4, 161.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -33.4, 161.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -33.5, 161.2 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -33.5, 161.2 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -33.7, 161.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -33.7, 161.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -33.9, 161.4 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -33.9, 161.4 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -34, 161.5 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -34, 161.5 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -34.2, 161.6 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -34.2, 161.6 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -34.4, 161.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -34.4, 161.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -34.5, 161.9 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -34.5, 161.9 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -34.7, 162 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -34.7, 162 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -34.9, 162.1 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -34.9, 162.1 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -35, 162.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -35, 162.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -35.2, 162.3 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -35.2, 162.3 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -83.7, -35.6 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -83.7, -35.6 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -127.7, -129.2 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -127.7, -129.2 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -179.7, -308.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -179.7, -308.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -280.7, -399.2 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -280.7, -399.2 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -295.8, -534.7 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -295.8, -534.7 , 0 );

setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.86, 0.86 );

setRotateKey( spep_2 + 444 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 481 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 485 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 499 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_2 + 501 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_2 + 502 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 503 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 505 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, -90.8 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -90.8 );

--敵の動き5
setDisp( spep_2 + 544 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 558 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 544 + OFFSET_X, 1, 46.3, 56.9 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 46.3, 56.9 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 47.2, 54.4 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 47.2, 54.4 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 48.2, 51.8 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 48.2, 51.8 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 49.1, 49.3 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 49.1, 49.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 50, 46.7 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 50, 46.7 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 51, 44.2 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 51, 44.2 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 51.9, 41.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 51.9, 41.6 , 0 );

setScaleKey( spep_2 + 544 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 544 + OFFSET_X, 1, -52.1 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -52.1 );

--敵の動き6
setDisp( spep_2 + 564 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 590 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 564 + OFFSET_X, 1, -112.5, -78.4 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -112.5, -78.4 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -92.2, -106.7 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -92.2, -106.7 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -215.7, -141.9 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -215.7, -141.9 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -182.4, -120.2 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -182.4, -120.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -319.8, -208.4 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -319.8, -208.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -313.5, -182.7 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -313.5, -182.7 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -413, -265.9 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -413, -265.9 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -423.7, -255.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -423.7, -255.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -499.2, -306.4 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -499.2, -306.4 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -535.1, -320.7 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -535.1, -320.7 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -596, -363.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -596, -363.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -641.9, -387.4 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -641.9, -387.4 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -697.8, -423.8 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -697.8, -423.8 , 0 );

setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 564 + OFFSET_X, 1, -52.1 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -52.1 );

-- ** 音 ** --

--瞬間移動
SE011 = playSeVer2( spep_2 + 2, 1245, "",spep_2 + 46, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 2, SE011, 56 );
SE012 = playSeVer2( spep_2 + 8, 1207, "",spep_2 + 44, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 8, SE012, 78 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--- ** 音 ** --
--突き
SE013 = playSeVer2( spep_2 + 38, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 46, 1032, "", 0, 0, 0, -1);
--連続突き
SE016 = playSeVer2( spep_2 + 68, 1425, "",spep_2 + 124, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 68, 1031, "",spep_2 + 84, 0, 2, -1);
SE018 = playSeVer2( spep_2 + 76, 1031, "",spep_2 + 92, 0, 2, -1);
SE019 = playSeVer2( spep_2 + 86, 1031, "",spep_2 + 102, 0, 4, -1);
SE020 = playSeVer2( spep_2 + 94, 1031, "",spep_2 + 110, 0, 4, -1);
SE021 = playSeVer2( spep_2 + 104, 1031, "",spep_2 + 120, 0, 4, -1);
--画面遷移
SE022 = playSeVer2( spep_2 + 108, 1232, "", 0, 0, 0, -1);
--蹴り飛ばす
SE023 = playSeVer2( spep_2 + 134, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE023, 92 );
SE024 = playSeVer2( spep_2 + 134, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE024, 77 );
SE025 = playSeVer2( spep_2 + 134, 1121, "", 0, 0, 0, -1);
--瞬間移動
SE026 = playSeVer2( spep_2 + 182, 1245, "",spep_2 + 226, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 182, SE026, 65 );
SE027 = playSeVer2( spep_2 + 188, 1207, "",spep_2 + 224, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 188, SE027, 69 );
SE028 = playSeVer2( spep_2 + 210, 1245, "",spep_2 + 254, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 68 );
--殴り飛ばす
SE029 = playSeVer2( spep_2 + 230, 1120, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 232, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE030, 68 );
--飛行音
SE031 = playSeVer2( spep_2 + 262, 1019, "", 0, 0, 0, -1);
--槍抜く
SE032 = playSeVer2( spep_2 + 318, 1061, "", 0, 0, 0, -1);
--飛行音
SE033 = playSeVer2( spep_2 + 326, 1019, "", 0, 0, 0, -1);
--槍伸びる
SE034 = playSeVer2( spep_2 + 338, 1426, "",spep_2 + 360, 0, 4, -1);
SE035 = playSeVer2( spep_2 + 340, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE035, 71 );
SE036 = playSeVer2( spep_2 + 340, 1154, "",spep_2 + 432, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 340, SE036, 130 );
setPitch( spep_2 + 340, SE036, -800 );
setTimeStretch( SE036, 0.47, 30, 4 );
SE037 = playSeVer2( spep_2 + 340, 1152, "", 0, 0, 0, -1);
--飛行音
SE038 = playSeVer2( spep_2 + 390, 1019, "", 0, 0, 0, -1);
--向かってくる
SE039 = playSeVer2( spep_2 + 400, 1117, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 402, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 402, SE040, 56 );
--槍で突く
SE041 = playSeVer2( spep_2 + 460, 1500, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 466, 1189, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 476, 1153, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 476, 1110, "", 0, 0, 0, -1);
--叩き落とす
SE045 = playSeVer2( spep_2 + 512, 1123, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 516, 1162, "", 0, 0, 0, -1);
--ビル激突
SE047 = playSeVer2( spep_2 + 560, 1024, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 564, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 574); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 694-2


end