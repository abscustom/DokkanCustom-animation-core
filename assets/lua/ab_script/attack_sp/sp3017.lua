--1033700:UR_栽培マン_必殺技：栽培マンラッシュ
--sp_effect_a9_00166
--sp3017

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164462; --セリフカットイン〜飛びかかる ef_001
SP_02  = 164463; --格闘ラッシュ〜頭から液体 ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 288;
        spep_2 = spep_1 + 94;
        skipFrame(0, spep_2 + 314);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 314, SP_01, spep_2 + 314 + 2-1, 1);
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
-- セリフカットイン〜飛びかかる
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜飛びかかる(ef_001)
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
spep_x = spep_0 + 30;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -150, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -150, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 214, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 22, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 59 );
setTimeStretch( SE002, 1.41, 30, 4 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 40, 1018, "", 0, 0, 0, -1);
--飛びかかる
SE004 = playSeVer2( spep_0 + 182, 1452, "",spep_0 + 314, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 182, 1207, "",spep_0 + 312, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 222, 1508, "",spep_0 + 312, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 222, SE006, 61 );
SE007 = playSeVer2( spep_0 + 266, 1116, "",spep_0 + 314, 0, 16, -1);
--カードカットイン
--SE008 = playSeVer2( spep_1 + 4, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 288

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinOffset(spep_1, 0, -100);

-------------------------------------------------
-- 格闘ラッシュ〜頭から液体
-------------------------------------------------
MAX_FRAME_2 = 570;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 格闘ラッシュ〜頭から液体 (ef_002)
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
setDisp( spep_2 + 48 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 152 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 48 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 104 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 48 + OFFSET_X, 1, -172, -123.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -172, -123.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -38.5, -89.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -38.5, -89.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 41.6, -69.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 41.6, -69.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 68.3, -62.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 68.3, -62.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 177, 4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 177, 4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 36, -52 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 36, -52 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 17.1, -3.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 17.1, -3.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 94.2, -97.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 94.2, -97.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 117.3, -31.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 117.3, -31.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 76.3, -77.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 76.3, -77.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 113.4, -29.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 113.4, -29.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 94.5, -67.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 94.5, -67.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 83.6, -35.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 83.6, -35.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 80.6, -41.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 80.6, -41.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 83.7, -29.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 83.7, -29.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 94.8, -37.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 94.8, -37.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 87.9, -35.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 87.9, -35.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 85, -41.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 85, -41.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 165.5, 15.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 165.5, 15.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 245.7, 48.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 245.7, 48.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 299.7, 86.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 299.7, 86.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 349.4, 111.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 349.4, 111.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 396.9, 149.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 396.9, 149.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 444, 163.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 444, 163.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 473, 180.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 473, 180.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 493.6, 192.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 493.6, 192.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 506, 199.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 506, 199.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 510.2, 201.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 510.2, 201.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -277, -207.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -277, -207.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -209.3, -180.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -209.3, -180.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -145.1, -154.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -145.1, -154.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -87.4, -130.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -87.4, -130.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -39.3, -110.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -39.3, -110.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -3.1, -96.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -3.1, -96.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 19.4, -87 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 19.4, -87 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 27.1, -83.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 27.1, -83.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -67.2, -106.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -67.2, -106.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -72.2, -109.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -72.2, -109.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -121.2, -120 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -121.2, -120 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -154.2, -52.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -154.2, -52.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -81.2, -131.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -81.2, -131.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -54.3, -84.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -54.3, -84.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -93.3, -113.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -93.3, -113.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -82.3, -106.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -82.3, -106.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -83.3, -127.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -83.3, -127.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -98.3, -114.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -98.3, -114.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -107.3, -129.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -107.3, -129.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -102.3, -118 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -102.3, -118 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -122.1, -143.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -122.1, -143.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -155.8, -135.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -155.8, -135.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -183.5, -154.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -183.5, -154.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -207.2, -162.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -207.2, -162.2 , 0 );

setScaleKey( spep_2 + 48 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.7, 3.7 );

setRotateKey( spep_2 + 48 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -74.7 );


--敵の動き2
setDisp( spep_2 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 184 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 154 + OFFSET_X, 1, 213.1, 140.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 213.1, 140.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 189.7, 121.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 189.7, 121.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 168, 104.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 168, 104.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 148, 88.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 148, 88.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 129.8, 74.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 129.8, 74.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 113.3, 61.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 113.3, 61.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 98.5, 50 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 98.5, 50 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 85.5, 39.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 85.5, 39.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 74.2, 30.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 74.2, 30.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 64.7, 23.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 64.7, 23.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 56.9, 17.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 56.9, 17.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 50.8, 12.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 50.8, 12.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 46.5, 9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 46.5, 9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 43.9, 7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 43.9, 7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 43, 6.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 43, 6.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 141.1, 78.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 141.1, 78.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 81, 3.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 81, 3.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 61, 79.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 61, 79.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 147.1, -10.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 147.1, -10.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 143.1, 61.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 143.1, 61.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 99, 19.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 99, 19.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 105, 58.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 105, 58.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 134, 34.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 134, 34.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 124, 57.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 124, 57.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 110, 38.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 110, 38.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 109, 53.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 109, 53.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 121, 39.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 121, 39.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 120, 50.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 120, 50.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 113, 43.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 113, 43.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 189.5, 137.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 189.5, 137.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 266, 231.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 266, 231.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 342.4, 325.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 342.4, 325.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 418.9, 419.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 418.9, 419.3 , 0 );

setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.6, 3.6 );

setRotateKey( spep_2 + 154 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -14.6 );


--敵の動き3
setDisp( spep_2 + 434 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 594 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 450 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 434 + OFFSET_X, 1, -117.9, -71 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -117.9, -71 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -100, -77.6 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -100, -77.6 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -82, -84.1 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -82, -84.1 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -64, -90.7 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -64, -90.7 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -46, -97.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -46, -97.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -28, -103.9 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -28, -103.9 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -10, -110.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -10, -110.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 8, -117 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 8, -117 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 71.7, -136.7 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 71.7, -136.7 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 44.1, -118.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 44.1, -118.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 35.1, -113.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 35.1, -113.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 26.9, -109.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 26.9, -109.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 19.6, -106.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 19.6, -106.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 0.1, -82.2 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 0.1, -82.2 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 22.6, -114.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 22.6, -114.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 13.8, -86.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 13.8, -86.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -8.1, -107.3 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -8.1, -107.3 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -11.1, -85.9 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -11.1, -85.9 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 2.8, -107.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 2.8, -107.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 1.5, -87.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 1.5, -87.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -13.9, -100 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -13.9, -100 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -0.9, -87 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -0.9, -87 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -2.4, -102.6 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -2.4, -102.6 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -11.3, -87.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -11.3, -87.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -12.2, -95.9 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -12.2, -95.9 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -4.1, -90.1 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -4.1, -90.1 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -4.9, -97.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -4.9, -97.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -9.2, -91.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -9.2, -91.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -8.4, -97 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -8.4, -97 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -4.7, -93.4 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -4.7, -93.4 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -3.4, -96.9 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -3.4, -96.9 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -9, -93.9 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -9, -93.9 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -8.7, -96.4 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -8.7, -96.4 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -3.3, -95.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -3.3, -95.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -1.9, -99.1 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -1.9, -99.1 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -7.4, -96.3 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -7.4, -96.3 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -6.9, -99.1 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -6.9, -99.1 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -1.4, -98.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -1.4, -98.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 0.2, -102.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 0.2, -102.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -5.3, -99.5 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -5.3, -99.5 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -4.6, -102.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -4.6, -102.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 1, -101.9 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 1, -101.9 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 2.7, -105.9 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 2.7, -105.9 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -2.6, -103.5 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -2.6, -103.5 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -1.9, -106.6 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -1.9, -106.6 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 3.9, -106.3 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 3.9, -106.3 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 5.7, -110.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 5.7, -110.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 0.6, -108.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 0.6, -108.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 1.4, -111.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 1.4, -111.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 7.3, -111.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 7.3, -111.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 9.3, -115.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 9.3, -115.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 4.2, -113.7 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 4.2, -113.7 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 5.2, -117.2 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 5.2, -117.2 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 11.2, -117.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 11.2, -117.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 13.3, -121.8 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 13.3, -121.8 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 8.4, -120 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 8.4, -120 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 9.5, -123.6 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 9.5, -123.6 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 15.7, -123.9 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 15.7, -123.9 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 17.8, -128.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 17.8, -128.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 13.1, -126.9 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 13.1, -126.9 , 0 );

setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 434 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -9.9 );

-- ** 音 ** --

--ひっかく
SE009 = playSeVer2( spep_1 + 90, 1116, "",spep_2 + 58, 0, 32, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
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

-- ** 音 ** --
--ひっかく
SE010 = playSeVer2( spep_2 + 12, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 26, 1032, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 30, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
--飛行音
SE014 = playSeVer2( spep_2 + 30, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE014, 50 );
--タックル
SE015 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 60, 1153, "", 0, 0, 0, -1);
--飛行音
SE017 = playSeVer2( spep_2 + 94, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE017, 50 );
--蹴り
SE018 = playSeVer2( spep_2 + 114, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE018, 178 );
SE019 = playSeVer2( spep_2 + 122, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 124, 1110, "", 0, 0, 0, -1);
--殴り飛ばす
SE021 = playSeVer2( spep_2 + 148, 1508, "",spep_2 + 218, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 148, SE021, 79 );
--飛行音
SE022 = playSeVer2( spep_2 + 158, 1019, "",spep_2 + 210, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 158, SE022, 50 );
--殴り飛ばす
SE023 = playSeVer2( spep_2 + 190, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 190, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 190, 1170, "", 0, 0, 0, -1);
--翻って着地
SE026 = playSeVer2( spep_2 + 228, 1000, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 232, 1192, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 236, 1383, "",spep_2 + 262, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 236, SE028, 63 );
SE029 = playSeVer2( spep_2 + 248, 1117, "",spep_2 + 306, 0, 22, -1);
SE030 = playSeVer2( spep_2 + 294, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE030, 178 );
SE031 = playSeVer2( spep_2 + 294, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE031, 63 );
--頭開く
SE032 = playSeVer2( spep_2 + 318, 1506, "",spep_2 + 394, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 318, SE032, 46 );
setPitch( spep_2 + 318, SE032, 1100 );
setTimeStretch( SE032, 1.73, 30, 4 );
--液噴射
SE033 = playSeVer2( spep_2 + 386, 1165, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 386, SE033, 71 );
SE034 = playSeVer2( spep_2 + 386, 1177, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 386, 1178, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 386, 1424, "", 0, 0, 0, -1);
--敵ヒット
SE037 = playSeVer2( spep_2 + 450, 1024, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 466, 1470, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE038, 122 );
SE039 = playSeVer2( spep_2 + 466, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 452); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 570

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- セリフカットイン〜飛びかかる
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜飛びかかる(ef_001)
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
spep_x = spep_0 + 30;

-- -- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 150, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 150, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 214, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 22, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 59 );
setTimeStretch( SE002, 1.41, 30, 4 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 40, 1018, "", 0, 0, 0, -1);
--飛びかかる
SE004 = playSeVer2( spep_0 + 182, 1452, "",spep_0 + 314, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 182, 1207, "",spep_0 + 312, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 222, 1508, "",spep_0 + 312, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 222, SE006, 61 );
SE007 = playSeVer2( spep_0 + 266, 1116, "",spep_0 + 314, 0, 16, -1);
-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 288

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinOffset(spep_1, 0, -100);

-------------------------------------------------
-- 格闘ラッシュ〜頭から液体
-------------------------------------------------
MAX_FRAME_2 = 570;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 格闘ラッシュ〜頭から液体 (ef_002)
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
setDisp( spep_2 + 48 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 152 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 48 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 104 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 48 + OFFSET_X, 1, 172, -123.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 172, -123.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 38.5, -89.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 38.5, -89.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -41.6, -69.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -41.6, -69.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -68.3, -62.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -68.3, -62.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -177, 4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -177, 4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -36, -52 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -36, -52 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -17.1, -3.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -17.1, -3.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -94.2, -97.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -94.2, -97.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -117.3, -31.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -117.3, -31.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -76.3, -77.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -76.3, -77.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -113.4, -29.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -113.4, -29.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -94.5, -67.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -94.5, -67.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -83.6, -35.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -83.6, -35.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -80.6, -41.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -80.6, -41.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -83.7, -29.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -83.7, -29.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -94.8, -37.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -94.8, -37.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -87.9, -35.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -87.9, -35.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -85, -41.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -85, -41.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -165.5, 15.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -165.5, 15.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -245.7, 48.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -245.7, 48.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -299.7, 86.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -299.7, 86.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -349.4, 111.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -349.4, 111.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -396.9, 149.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -396.9, 149.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -444, 163.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -444, 163.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -473, 180.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -473, 180.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -493.6, 192.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -493.6, 192.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -506, 199.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -506, 199.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -510.2, 201.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -510.2, 201.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 277, -207.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 277, -207.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 209.3, -180.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 209.3, -180.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 145.1, -154.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 145.1, -154.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 87.4, -130.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 87.4, -130.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 39.3, -110.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 39.3, -110.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 3.1, -96.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 3.1, -96.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -19.4, -87 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -19.4, -87 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -27.1, -83.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -27.1, -83.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 67.2, -106.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 67.2, -106.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 72.2, -109.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 72.2, -109.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 121.2, -120 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 121.2, -120 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 154.2, -52.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 154.2, -52.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 81.2, -131.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 81.2, -131.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 54.3, -84.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 54.3, -84.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 93.3, -113.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 93.3, -113.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 82.3, -106.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 82.3, -106.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 83.3, -127.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 83.3, -127.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 98.3, -114.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 98.3, -114.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 107.3, -129.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 107.3, -129.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 102.3, -118 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 102.3, -118 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 122.1, -143.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 122.1, -143.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 155.8, -135.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 155.8, -135.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 183.5, -154.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 183.5, -154.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 207.2, -162.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 207.2, -162.2 , 0 );

setScaleKey( spep_2 + 48 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.7, 3.7 );

setRotateKey( spep_2 + 48 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 74.7 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 74.7 );


--敵の動き2
setDisp( spep_2 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 184 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 154 + OFFSET_X, 1, -213.1, 140.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -213.1, 140.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -189.7, 121.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -189.7, 121.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -168, 104.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -168, 104.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -148, 88.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -148, 88.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -129.8, 74.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -129.8, 74.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -113.3, 61.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -113.3, 61.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -98.5, 50 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -98.5, 50 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -85.5, 39.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -85.5, 39.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -74.2, 30.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -74.2, 30.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -64.7, 23.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -64.7, 23.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -56.9, 17.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -56.9, 17.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -50.8, 12.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -50.8, 12.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -46.5, 9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -46.5, 9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -43.9, 7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -43.9, 7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -43, 6.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -43, 6.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -141.1, 78.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -141.1, 78.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -81, 3.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -81, 3.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -61, 79.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -61, 79.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -147.1, -10.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -147.1, -10.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -143.1, 61.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -143.1, 61.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -99, 19.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -99, 19.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -105, 58.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -105, 58.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -134, 34.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -134, 34.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -124, 57.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -124, 57.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -110, 38.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -110, 38.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -109, 53.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -109, 53.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -121, 39.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -121, 39.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -120, 50.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -120, 50.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -113, 43.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -113, 43.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -189.5, 137.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -189.5, 137.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -266, 231.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -266, 231.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -342.4, 325.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -342.4, 325.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -418.9, 419.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -418.9, 419.3 , 0 );

setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.6, 3.6 );

setRotateKey( spep_2 + 154 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 14.6 );


--敵の動き3
setDisp( spep_2 + 434 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 594 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 450 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 434 + OFFSET_X, 1, 117.9, -71 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 117.9, -71 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 100, -77.6 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 100, -77.6 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 82, -84.1 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 82, -84.1 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 64, -90.7 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 64, -90.7 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 46, -97.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 46, -97.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 28, -103.9 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 28, -103.9 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 10, -110.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 10, -110.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -8, -117 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -8, -117 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -71.7, -136.7 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -71.7, -136.7 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -44.1, -118.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -44.1, -118.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -35.1, -113.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -35.1, -113.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -26.9, -109.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -26.9, -109.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -19.6, -106.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -19.6, -106.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -0.1, -82.2 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -0.1, -82.2 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -22.6, -114.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -22.6, -114.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -13.8, -86.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -13.8, -86.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 8.1, -107.3 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 8.1, -107.3 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 11.1, -85.9 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 11.1, -85.9 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -2.8, -107.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -2.8, -107.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -1.5, -87.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -1.5, -87.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 13.9, -100 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 13.9, -100 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 0.9, -87 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 0.9, -87 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 2.4, -102.6 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 2.4, -102.6 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 11.3, -87.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 11.3, -87.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 12.2, -95.9 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 12.2, -95.9 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 4.1, -90.1 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 4.1, -90.1 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 4.9, -97.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 4.9, -97.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 9.2, -91.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 9.2, -91.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 8.4, -97 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 8.4, -97 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 4.7, -93.4 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 4.7, -93.4 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 3.4, -96.9 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 3.4, -96.9 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 9, -93.9 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 9, -93.9 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 8.7, -96.4 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 8.7, -96.4 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 3.3, -95.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 3.3, -95.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 1.9, -99.1 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 1.9, -99.1 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 7.4, -96.3 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 7.4, -96.3 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 6.9, -99.1 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 6.9, -99.1 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 1.4, -98.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 1.4, -98.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -0.2, -102.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -0.2, -102.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 5.3, -99.5 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 5.3, -99.5 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 4.6, -102.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 4.6, -102.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -1, -101.9 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -1, -101.9 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -2.7, -105.9 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -2.7, -105.9 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 2.6, -103.5 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 2.6, -103.5 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 1.9, -106.6 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 1.9, -106.6 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -3.9, -106.3 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -3.9, -106.3 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -5.7, -110.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -5.7, -110.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -0.6, -108.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -0.6, -108.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -1.4, -111.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -1.4, -111.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -7.3, -111.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -7.3, -111.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -9.3, -115.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -9.3, -115.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -4.2, -113.7 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -4.2, -113.7 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -5.2, -117.2 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -5.2, -117.2 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -11.2, -117.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -11.2, -117.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -13.3, -121.8 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -13.3, -121.8 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -8.4, -120 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -8.4, -120 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -9.5, -123.6 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -9.5, -123.6 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -15.7, -123.9 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -15.7, -123.9 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -17.8, -128.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -17.8, -128.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -13.1, -126.9 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -13.1, -126.9 , 0 );

setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 434 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, 9.9 );

-- ** 音 ** --
--ひっかく
SE009 = playSeVer2( spep_1 + 90, 1116, "",spep_2 + 58, 0, 32, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
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

-- ** 音 ** --
--ひっかく
SE010 = playSeVer2( spep_2 + 12, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 26, 1032, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 30, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
--飛行音
SE014 = playSeVer2( spep_2 + 30, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE014, 50 );
--タックル
SE015 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 60, 1153, "", 0, 0, 0, -1);
--飛行音
SE017 = playSeVer2( spep_2 + 94, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE017, 50 );
--蹴り
SE018 = playSeVer2( spep_2 + 114, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE018, 178 );
SE019 = playSeVer2( spep_2 + 122, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 124, 1110, "", 0, 0, 0, -1);
--殴り飛ばす
SE021 = playSeVer2( spep_2 + 148, 1508, "",spep_2 + 218, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 148, SE021, 79 );
--飛行音
SE022 = playSeVer2( spep_2 + 158, 1019, "",spep_2 + 210, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 158, SE022, 50 );
--殴り飛ばす
SE023 = playSeVer2( spep_2 + 190, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 190, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 190, 1170, "", 0, 0, 0, -1);
--翻って着地
SE026 = playSeVer2( spep_2 + 228, 1000, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 232, 1192, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 236, 1383, "",spep_2 + 262, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 236, SE028, 63 );
SE029 = playSeVer2( spep_2 + 248, 1117, "",spep_2 + 306, 0, 22, -1);
SE030 = playSeVer2( spep_2 + 294, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE030, 178 );
SE031 = playSeVer2( spep_2 + 294, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE031, 63 );
--頭開く
SE032 = playSeVer2( spep_2 + 318, 1506, "",spep_2 + 394, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 318, SE032, 46 );
setPitch( spep_2 + 318, SE032, 1100 );
setTimeStretch( SE032, 1.73, 30, 4 );
--液噴射
SE033 = playSeVer2( spep_2 + 386, 1165, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 386, SE033, 71 );
SE034 = playSeVer2( spep_2 + 386, 1177, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 386, 1178, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 386, 1424, "", 0, 0, 0, -1);
--敵ヒット
SE037 = playSeVer2( spep_2 + 450, 1024, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 466, 1470, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE038, 122 );
SE039 = playSeVer2( spep_2 + 466, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 452); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 570


end