--1031470:LR_超サイヤ人4ゴジータ_必殺技：アルティメットインパクト
--sp_effect_b1_00342
--sp2876

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164000;  -- ダッシュ〜落下 ef_001
SP_02 = 164002;  -- 飛び上がり〜フィニッシュ ef_002
SP_02b = 164003;  -- 飛び上がり〜フィニッシュ ef_002b



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
        spep_1 = spep_0 + 308;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 234 );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --飛び上がる
        SE032 = playSeVer2( spep_2 + 234 + 3, 1167, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 234 + 3, SE032, 56 );

    else 
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- ダッシュ〜落下
-------------------------------------------------
MAX_FRAME_0 = 308;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ダッシュ〜落下(ef_001)
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
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 73 );
SE004 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 79 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 64, 1109, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 64, 1277, "", 0, 0, 0, -1);

--後煙
SE007 = playSeVer2( spep_0 + 88, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 88, 1188, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 88, 1043, "",spep_0 + 162, 0, 40, -1);

--移動中
SE010 = playSeVer2( spep_0 + 140, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 140, 1117, "",spep_0 + 232, 0, 36, -1);

--気ダメ
SE012 = playSeVer2( spep_0 + 180, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE012, 86 );
SE013 = playSeVer2( spep_0 + 180, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE013, 78 );
SE014 = playSeVer2( spep_0 + 190, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE014, 73 );

--飛び上がる
SE015 = playSeVer2( spep_0 + 232, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE015, 74 );
SE016 = playSeVer2( spep_0 + 234, 1452, "",spep_0 + 300, 0, 40, -1);
SE017 = playSeVer2( spep_0 + 234, 1207, "",spep_0 + 322, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 234, SE017, 68 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --308F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--回転して飛んでくる
SE019 = playSeVer2( spep_1 + 84, 1119, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 62 );
setStartTimeMs( SE019,  467 );
SE020 = playSeVer2( spep_1 + 86, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 146, 0, 38, -1);

-------------------------------------------------
-- 飛び上がり〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 486;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 飛び上がり〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 飛び上がり〜フィニッシュ(ef_002b)
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

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 120 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, -95.9, 226.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -95.9, 226.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -135.6, -102.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -135.6, -102.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -94.9, -99.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -94.9, -99.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -78.8, -114.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -78.8, -114.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -83.9, -111.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -83.9, -111.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -88, -133.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -88, -133.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -84, -135.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -84, -135.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -86, -131.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -86, -131.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -73.8, -135.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -73.8, -135.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -73.5, -136.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -73.5, -136.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -49.4, -132.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -49.4, -132.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -52.5, -132 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -52.5, -132 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -53.1, -131.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -53.1, -131.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -49.6, -133.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -49.6, -133.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -50.2, -133.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -50.2, -133.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -50.8, -133.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -50.8, -133.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -47.4, -135.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -47.4, -135.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -48, -135.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -48, -135.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -48.6, -135.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -48.6, -135.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -49.1, -135.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -49.1, -135.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -45.7, -137.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -45.7, -137.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -46.3, -137 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -46.3, -137 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -46.9, -136.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -46.9, -136.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -47.5, -136.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -47.5, -136.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -46.1, -138.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -46.1, -138.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -46.6, -138.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -46.6, -138.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -47.2, -138.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -47.2, -138.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -47.8, -138.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -47.8, -138.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -48.4, -138.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -48.4, -138.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -49, -138.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -49, -138.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -42.8, -138.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -42.8, -138.1 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.01, 2.01 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 86 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 86 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 85 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 85 );

--敵の動き2

setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 290.7, -156 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 290.7, -156 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 357.9, -209.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 357.9, -209.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 327.6, -283.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 327.6, -283.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 253.5, -268.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 253.5, -268.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 205.4, -214.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 205.4, -214.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 177.9, -152.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 177.9, -152.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 175.3, -166.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 175.3, -166.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 175.2, -174.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 175.2, -174.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 172.4, -228.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 172.4, -228.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 165.7, -238.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 165.7, -238.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 148.2, -256.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 148.2, -256.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 195.2, -216.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 195.2, -216.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 200.3, -228 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 200.3, -228 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 205.3, -239 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 205.3, -239 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 204.9, -240.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 204.9, -240.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 204.5, -241.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 204.5, -241.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 204.1, -243.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 204.1, -243.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 203.7, -244.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 203.7, -244.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 203.3, -246.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 203.3, -246.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 202.9, -247.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 202.9, -247.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 202.5, -248.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 202.5, -248.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 202.1, -250.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 202.1, -250.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 201.7, -251.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 201.7, -251.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 201.3, -253.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 201.3, -253.1 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 11.46, 11.46 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 11.46, 11.46 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 6.28, 6.28 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 6.28, 6.28 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 77.3 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 77.3 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 80 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 80 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 28.8 );

--敵の動き3

setDisp( spep_2 + 236 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 236 + OFFSET_X, 1, 19, -15.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 19, -15.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 16.4, -16.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 16.4, -16.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 13.9, -17 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 13.9, -17 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 11.3, -17.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 11.3, -17.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 8.7, -18.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 8.7, -18.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 6.2, -19.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 6.2, -19.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 3.6, -20.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 3.6, -20.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 1, -21.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 1, -21.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -1.5, -22.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -1.5, -22.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -4.1, -23.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -4.1, -23.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -5, -25.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -5, -25.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -5.8, -26.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -5.8, -26.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -6.4, -28.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -6.4, -28.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -6.8, -29.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -6.8, -29.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -7.2, -30.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -7.2, -30.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -7.5, -30.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -7.5, -30.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -7.8, -31.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -7.8, -31.4 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -7.8, -31.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -7.8, -31.9 , 0 );

setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 236 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -66.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -66.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -74.1 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -74.1 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -78.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -78.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -80.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -80.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -82.9 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -82.9 );

--敵の動き4

setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 288 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 284 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, -39.6, -579.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -39.6, -579.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -39.6, -497.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -39.6, -497.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -37.6, -803.6 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 80.7 );

-- ** 音 ** --

--回転して飛んでくる
SE022 = playSeVer2( spep_2 + 6, 1499, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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

--かかと落とし
SE023 = playSeVer2( spep_2 + 46, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 46, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 46, 1049, "", 0, 0, 0, -1);

--敵落とす
SE026 = playSeVer2( spep_2 + 96, 1072, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 96, 1278, "",spep_2 + 180, 0, 18, -1);
SE028 = playSeVer2( spep_2 + 102, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE028, 75 );

--飛び上がる
SE029 = playSeVer2( spep_2 + 162, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE029, 130 );
SE030 = playSeVer2( spep_2 + 168, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE030, 130 );
SE031 = playSeVer2( spep_2 + 196, 1117, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 224, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE032, 56 );

--殴りつける
SE033 = playSeVer2( spep_2 + 272, 1123, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);

--爆発
SE035 = playSeVer2( spep_2 + 322, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 332, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 366); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 486F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- ダッシュ〜落下
-------------------------------------------------
MAX_FRAME_0 = 308;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ダッシュ〜落下(ef_001)
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
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 73 );
SE004 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 79 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 64, 1109, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 64, 1277, "", 0, 0, 0, -1);

--後煙
SE007 = playSeVer2( spep_0 + 88, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 88, 1188, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 88, 1043, "",spep_0 + 162, 0, 40, -1);

--移動中
SE010 = playSeVer2( spep_0 + 140, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 140, 1117, "",spep_0 + 232, 0, 36, -1);

--気ダメ
SE012 = playSeVer2( spep_0 + 180, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE012, 86 );
SE013 = playSeVer2( spep_0 + 180, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE013, 78 );
SE014 = playSeVer2( spep_0 + 190, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE014, 73 );

--飛び上がる
SE015 = playSeVer2( spep_0 + 232, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE015, 74 );
SE016 = playSeVer2( spep_0 + 234, 1452, "",spep_0 + 300, 0, 40, -1);
SE017 = playSeVer2( spep_0 + 234, 1207, "",spep_0 + 322, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 234, SE017, 68 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --308F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--回転して飛んでくる
SE019 = playSeVer2( spep_1 + 84, 1119, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 62 );
setStartTimeMs( SE019,  467 );
SE020 = playSeVer2( spep_1 + 86, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 146, 0, 38, -1);

-------------------------------------------------
-- 飛び上がり〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 486;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 飛び上がり〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 飛び上がり〜フィニッシュ(ef_002b)
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

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 120 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 95.9, 226.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 95.9, 226.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 135.6, -102.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 135.6, -102.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 94.9, -99.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 94.9, -99.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 78.8, -114.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 78.8, -114.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 83.9, -111.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 83.9, -111.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 88, -133.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 88, -133.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 84, -135.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 84, -135.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 86, -131.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 86, -131.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 73.8, -135.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 73.8, -135.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 73.5, -136.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 73.5, -136.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 49.4, -132.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 49.4, -132.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 52.5, -132 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 52.5, -132 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 53.1, -131.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 53.1, -131.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 49.6, -133.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 49.6, -133.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 50.2, -133.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 50.2, -133.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 50.8, -133.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 50.8, -133.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 47.4, -135.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 47.4, -135.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 48, -135.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 48, -135.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 48.6, -135.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 48.6, -135.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 49.1, -135.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 49.1, -135.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 45.7, -137.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 45.7, -137.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 46.3, -137 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 46.3, -137 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 46.9, -136.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 46.9, -136.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 47.5, -136.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 47.5, -136.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 46.1, -138.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 46.1, -138.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 46.6, -138.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 46.6, -138.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 47.2, -138.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 47.2, -138.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 47.8, -138.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 47.8, -138.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 48.4, -138.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 48.4, -138.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 49, -138.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 49, -138.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 42.8, -138.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 42.8, -138.1 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.01, 2.01 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -85 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -85 );

--敵の動き2

setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, -290.7, -156 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -290.7, -156 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -357.9, -209.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -357.9, -209.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -327.6, -283.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -327.6, -283.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -253.5, -268.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -253.5, -268.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -205.4, -214.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -205.4, -214.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -177.9, -152.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -177.9, -152.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -175.3, -166.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -175.3, -166.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -175.2, -174.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -175.2, -174.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -172.4, -228.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -172.4, -228.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -165.7, -238.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -165.7, -238.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -148.2, -256.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -148.2, -256.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -195.2, -216.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -195.2, -216.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -200.3, -228 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -200.3, -228 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -205.3, -239 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -205.3, -239 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -204.9, -240.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -204.9, -240.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -204.5, -241.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -204.5, -241.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -204.1, -243.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -204.1, -243.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -203.7, -244.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -203.7, -244.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -203.3, -246.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -203.3, -246.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -202.9, -247.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -202.9, -247.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -202.5, -248.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -202.5, -248.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -202.1, -250.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -202.1, -250.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -201.7, -251.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -201.7, -251.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -201.3, -253.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -201.3, -253.1 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 11.46, 11.46 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 11.46, 11.46 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 6.28, 6.28 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 6.28, 6.28 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -28.8 );

--敵の動き3

setDisp( spep_2 + 236 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 236 + OFFSET_X, 1, -19, -15.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -19, -15.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -16.4, -16.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -16.4, -16.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -13.9, -17 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -13.9, -17 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -11.3, -17.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -11.3, -17.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -8.7, -18.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -8.7, -18.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -6.2, -19.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -6.2, -19.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -3.6, -20.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -3.6, -20.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -1, -21.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -1, -21.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 1.5, -22.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 1.5, -22.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 4.1, -23.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 4.1, -23.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 5, -25.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 5, -25.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 5.8, -26.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 5.8, -26.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 6.4, -28.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 6.4, -28.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 6.8, -29.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 6.8, -29.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 7.2, -30.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 7.2, -30.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 7.5, -30.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 7.5, -30.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 7.8, -31.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 7.8, -31.4 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 7.8, -31.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 7.8, -31.9 , 0 );

setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 236 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 70 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 70 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 74.1 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 74.1 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 76.3 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 76.3 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 80.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 80.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 82.9 );

--敵の動き4

setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 288 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 284 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, 39.6, -579.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 39.6, -579.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 39.6, -497.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 39.6, -497.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 37.6, -803.6 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -80.7 );

-- ** 音 ** --

--回転して飛んでくる
SE022 = playSeVer2( spep_2 + 6, 1499, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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

--かかと落とし
SE023 = playSeVer2( spep_2 + 46, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 46, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 46, 1049, "", 0, 0, 0, -1);

--敵落とす
SE026 = playSeVer2( spep_2 + 96, 1072, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 96, 1278, "",spep_2 + 180, 0, 18, -1);
SE028 = playSeVer2( spep_2 + 102, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE028, 75 );

--飛び上がる
SE029 = playSeVer2( spep_2 + 162, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE029, 130 );
SE030 = playSeVer2( spep_2 + 168, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE030, 130 );
SE031 = playSeVer2( spep_2 + 196, 1117, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 224, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE032, 56 );

--殴りつける
SE033 = playSeVer2( spep_2 + 272, 1123, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);

--爆発
SE035 = playSeVer2( spep_2 + 322, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 332, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 366); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 486F

end
