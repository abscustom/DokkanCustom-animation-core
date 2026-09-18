--4030490:LR_超サイヤ人孫悟空(天使)+超サイヤ人ベジータ(天使)_必殺技：激烈連脚
--sp_effect_b1_00303
--sp2802

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163455; --敵と向かい合う～カットインまで ef_001
SP_02  = 163457; --連続回転蹴り～フィニッシュ ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]--

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 144;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;


        skipFrame(0, spep_2 + 110 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 110 , SP_01, spep_2 + 110 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

    else 

        setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 敵と向かい合う～カットインまで
-------------------------------------------------
MAX_FRAME_0 = 144;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と向かい合う～カットインまで(ef_001)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 143.8, -199.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 174.8, -199.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 174.8, -199.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 184, -199.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 184, -199.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 189.9, -199.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 189.9, -199.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 194.2, -199.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 194.2, -199.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 197.6, -199.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 197.6, -199.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 200.4, -199.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 200.4, -199.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 202.7, -199.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 202.7, -199.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 204.6, -199.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 204.6, -199.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 206.2, -199.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 206.2, -199.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 207.7, -199.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 207.7, -199.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 208.9, -199.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 208.9, -199.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 210, -199.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 210, -199.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 210.9, -199.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 210.9, -199.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 211.8, -199.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 211.8, -199.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 212.6, -199.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 212.6, -199.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 213.2, -199.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 213.2, -199.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 213.8, -199.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 213.8, -199.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 214.4, -199.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 214.4, -199.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 214.9, -199.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 214.9, -199.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 215.3, -199.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 215.3, -199.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 215.7, -199.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 215.7, -199.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 216.1, -199.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 216.1, -199.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 216.4, -199.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 216.4, -199.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 216.7, -199.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 216.7, -199.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 216.9, -199.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 216.9, -199.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 217.2, -199.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 217.2, -199.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 217.4, -199.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 217.4, -199.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 217.6, -199.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 217.6, -199.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 217.7, -199.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 217.7, -199.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 217.9, -199.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 217.9, -199.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 218, -199.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 218, -199.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 218.1, -199.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 218.1, -199.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 218.2, -199.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 218.2, -199.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 218.3, -199.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 218.3, -199.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 218.4, -199.6 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 218.4, -199.6 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 218.5, -199.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 218.5, -199.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 218.6, -199.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 218.6, -199.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 218.7, -199.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 218.7, -199.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 218.8, -199.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 218.8, -199.6 , 0 );

setScaleKey( spep_0 + 0, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 4.1, 4.1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE004 = playSeVer2( spep_0 + 102, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 110, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 76 );
SE006 = playSeVer2( spep_0 + 110, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE006, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 144f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--飛び上がる
SE008 = playSeVer2( spep_1 + 90, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE008, 72 );
SE009 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 77 );
SE010 = playSeVer2( spep_1 + 90, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 112 );


-------------------------------------------------
-- 連続回転蹴り～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 502;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連続回転蹴り～フィニッシュ(ef_002)
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
setDisp( spep_2 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 112 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 146 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 158 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 174 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 238 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 112 + OFFSET_X, 1, 74.7, -3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 74.7, -3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 101.4, -17.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 101.4, -17.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 78.5, -6.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 78.5, -6.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 76.8, -2.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 76.8, -2.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 74.7, -3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 74.7, -3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -2, -40.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -2, -40.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 2.8, -63.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 2.8, -63.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -1.5, -32.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -1.5, -32.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -4.8, -16.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -4.8, -16.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -9.7, 1.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -9.7, 1.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -0.1, -18.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -0.1, -18.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 45.7, 16.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 45.7, 16.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 25, -9.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 25, -9.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 125.9, -28.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 125.9, -28.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 124.6, -41.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 124.6, -41.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 107.5, -28.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 107.5, -28.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 15.6, -38.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 15.6, -38.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 18.2, -40 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 18.2, -40 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 79.9, -72.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 79.9, -72.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 64.3, -61 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 64.3, -61 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 61.5, -49 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 61.5, -49 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 58.9, -51.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 58.9, -51.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 2.7, -28.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 2.7, -28.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 2.7, -57.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 2.7, -57.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -1.6, -11 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -1.6, -11 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 2.5, 96.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 2.5, 96.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -16.3, 79.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -16.3, 79.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -3.1, 109.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -3.1, 109.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 26.4, 36 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 26.4, 36 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 37.7, 10.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 37.7, 10.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -23.1, -16.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -23.1, -16.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -19.3, -38.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -19.3, -38.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 1.4, -4.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 1.4, -4.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -1.2, 32.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -1.2, 32.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 31.3, 92.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 31.3, 92.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -16.5, 48.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -16.5, 48.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 33.3, 51.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 33.3, 51.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -23.8, 99.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -23.8, 99.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 21.4, 62 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 21.4, 62 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -15, 106.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -15, 106.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 18.5, 100.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 18.5, 100.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -8, 78.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -8, 78.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -1.1, 99.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -1.1, 99.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 6.2, 93.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 6.2, 93.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 2.2, 95.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 2.2, 95.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 2.5, 95.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 2.5, 95.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 3.1, 97.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 3.1, 97.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 2.4, 96 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 2.4, 96 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 4.1, 97.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 4.1, 97.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 2.4, 96.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 2.4, 96.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 3.6, 98.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 3.6, 98.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 3.6, 97.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 3.6, 97.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 2.6, 99.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 2.6, 99.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 3.7, 97.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 3.7, 97.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 2.7, 98.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 2.7, 98.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 3.3, 98.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 3.3, 98.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 3.5, 98.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 3.5, 98.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 2.7, 98.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 2.7, 98.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 3.6, 98.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 3.6, 98.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 2.7, 98.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 2.7, 98.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 3.2, 98.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 3.2, 98.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 2.9, 98.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 2.9, 98.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -606.2, 219.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -606.2, 219.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -597.3, 215.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -597.3, 215.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -587.3, 211.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -587.3, 211.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -576.1, 207.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -576.1, 207.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -563.3, 201.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -563.3, 201.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -548.8, 195.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -548.8, 195.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -532.2, 189 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -532.2, 189 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -513.1, 181.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -513.1, 181.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -491.3, 172.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -491.3, 172.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -466.1, 161.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -466.1, 161.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -437.2, 149.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -437.2, 149.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -403.7, 136.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -403.7, 136.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -364.9, 120.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -364.9, 120.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -319.5, 101.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -319.5, 101.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -266.1, 79.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -266.1, 79.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -204.2, 54 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -204.2, 54 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -139.5, 27.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -139.5, 27.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -72.9, -0.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -72.9, -0.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -4.5, -28.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -4.5, -28.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 65.6, -57.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 65.6, -57.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 137.3, -86.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 137.3, -86.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 210.6, -116.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 210.6, -116.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 285.4, -147.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 285.4, -147.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 361.6, -179 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 361.6, -179 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 439.3, -211 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 439.3, -211 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 518.3, -243.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 518.3, -243.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 598.8, -276.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 598.8, -276.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 680.7, -310.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 680.7, -310.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 764.2, -344.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 764.2, -344.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 849.3, -379.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 849.3, -379.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -434.6, -564.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -434.6, -564.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -404.6, -532.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -404.6, -532.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -358.6, -483.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -358.6, -483.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -277.2, -397 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -277.2, -397 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -139.1, -249.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -139.1, -249.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -45.4, -149.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -45.4, -149.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -5.5, -107.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -5.5, -107.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 16.4, -83.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 16.4, -83.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 30.7, -68.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 30.7, -68.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 40.9, -57.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 40.9, -57.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 48.5, -49.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 48.5, -49.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 54.3, -43.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 54.3, -43.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 59, -38.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 59, -38.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 62.7, -34.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 62.7, -34.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 65.8, -31.2 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 65.8, -31.2 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 68.3, -28.6 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 68.3, -28.6 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 70.4, -26.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 70.4, -26.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 72.1, -24.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 72.1, -24.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 73.6, -22.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 73.6, -22.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 74.8, -21.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 74.8, -21.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 75.9, -20.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 75.9, -20.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 76.8, -19.5 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 76.8, -19.5 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 77.6, -18.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 77.6, -18.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 78.2, -18 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 78.2, -18 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 78.7, -17.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 78.7, -17.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 79.2, -16.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 79.2, -16.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 79.6, -16.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 79.6, -16.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 79.9, -16.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 79.9, -16.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 80.2, -15.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 80.2, -15.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 80.4, -15.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 80.4, -15.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 80.6, -15.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 80.6, -15.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 80.8, -15.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 80.8, -15.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 80.9, -15.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 80.9, -15.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 81, -15 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 81, -15 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 81.1, -14.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 81.1, -14.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 81.2, -14.8 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 81.2, -14.8 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 81.2, -14.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 81.2, -14.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 81.3, -14.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 81.3, -14.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 81.3, -14.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 81.3, -14.6 , 0 );

setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 20 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 34; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
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
--回転蹴り
SE011 = playSeVer2( spep_2 + 40, 1032, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 40, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE012, 72 );
SE013 = playSeVer2( spep_2 + 40, 1009, "", 0, 0, 0, -1);

--回転蹴り2
SE014 = playSeVer2( spep_2 + 56, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE015, 78 );
SE016 = playSeVer2( spep_2 + 60, 1010, "", 0, 0, 0, -1);

--回転蹴り3
SE017 = playSeVer2( spep_2 + 74, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 78, 1178, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 78, 1010, "", 0, 0, 0, -1);

--回転蹴り4
SE020 = playSeVer2( spep_2 + 86, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 90, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 90, 1178, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 90, 1010, "", 0, 0, 0, -1);

--敵連続ヒット
SE024 = playSeVer2( spep_2 + 116, 1032, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 116, 1187, "",spep_2 + 168, 0, 36, -1);
SE026 = playSeVer2( spep_2 + 122, 1032, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 132, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 132, 1187, "",spep_2 + 186, 0, 36, -1);
SE029 = playSeVer2( spep_2 + 142, 1032, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 150, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 150, 1187, "",spep_2 + 202, 0, 36, -1);
SE032 = playSeVer2( spep_2 + 164, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 164, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE034 = playSeVer2( spep_2 + 174, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_2 + 204, 1121, "",spep_2 + 422, 0, 40, -1);
SE036 = playSeVer2( spep_2 + 204, 1183, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 204, 1019, "", 0, 0, 0, -1);

--画面遷移
SE038 = playSeVer2( spep_2 + 230, 1232, "", 0, 0, 0, -1);

--敵飛んでいく
SE039 = playSeVer2( spep_2 + 236, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE039, 50 );
setTimeStretch( SE039, 1.11, 30, 4 );
SE040 = playSeVer2( spep_2 + 268, 1019, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 292, 1304, "",spep_2 + 422, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 292, SE041, 78 );
SE042 = playSeVer2( spep_2 + 332, 1019, "", 0, 0, 0, -1);

--爆発
SE043 = playSeVer2( spep_2 + 374, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 384, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 384); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 502f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 敵と向かい合う～カットインまで
-------------------------------------------------
MAX_FRAME_0 = 144;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と向かい合う～カットインまで(ef_001)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 2 );

setMoveKey( spep_0 + 0, 1, -143.8, -199.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -174.8, -199.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -174.8, -199.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -184, -199.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -184, -199.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -189.9, -199.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -189.9, -199.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -194.2, -199.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -194.2, -199.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -197.6, -199.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -197.6, -199.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -200.4, -199.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -200.4, -199.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -202.7, -199.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -202.7, -199.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -204.6, -199.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -204.6, -199.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -206.2, -199.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -206.2, -199.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -207.7, -199.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -207.7, -199.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -208.9, -199.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -208.9, -199.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -210, -199.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -210, -199.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -210.9, -199.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -210.9, -199.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -211.8, -199.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -211.8, -199.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -212.6, -199.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -212.6, -199.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -213.2, -199.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -213.2, -199.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -213.8, -199.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -213.8, -199.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -214.4, -199.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -214.4, -199.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -214.9, -199.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -214.9, -199.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -215.3, -199.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -215.3, -199.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -215.7, -199.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -215.7, -199.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -216.1, -199.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -216.1, -199.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -216.4, -199.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -216.4, -199.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -216.7, -199.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -216.7, -199.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -216.9, -199.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -216.9, -199.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -217.2, -199.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -217.2, -199.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -217.4, -199.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -217.4, -199.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -217.6, -199.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -217.6, -199.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -217.7, -199.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -217.7, -199.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -217.9, -199.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -217.9, -199.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -218, -199.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -218, -199.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -218.1, -199.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -218.1, -199.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -218.2, -199.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -218.2, -199.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -218.3, -199.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -218.3, -199.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -218.4, -199.6 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -218.4, -199.6 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -218.5, -199.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -218.5, -199.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -218.6, -199.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -218.6, -199.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -218.7, -199.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -218.7, -199.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -218.8, -199.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -218.8, -199.6 , 0 );

setScaleKey( spep_0 + 0, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 4.1, 4.1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE004 = playSeVer2( spep_0 + 102, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 110, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 76 );
SE006 = playSeVer2( spep_0 + 110, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE006, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 144f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--飛び上がる
SE008 = playSeVer2( spep_1 + 90, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE008, 72 );
SE009 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 77 );
SE010 = playSeVer2( spep_1 + 90, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 112 );


-------------------------------------------------
-- 連続回転蹴り～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 502;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連続回転蹴り～フィニッシュ(ef_002)
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
setDisp( spep_2 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 112 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 146 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 158 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 174 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 238 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 112 + OFFSET_X, 1, -74.7, -3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -74.7, -3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -101.4, -17.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -101.4, -17.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -78.5, -6.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -78.5, -6.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -76.8, -2.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -76.8, -2.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -74.7, -3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -74.7, -3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 2, -40.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 2, -40.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -2.8, -63.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -2.8, -63.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 1.5, -32.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 1.5, -32.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 4.8, -16.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 4.8, -16.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 9.7, 1.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 9.7, 1.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 0.1, -18.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 0.1, -18.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -45.7, 16.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -45.7, 16.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -25, -9.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -25, -9.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -125.9, -28.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -125.9, -28.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -124.6, -41.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -124.6, -41.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -107.5, -28.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -107.5, -28.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -15.6, -38.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -15.6, -38.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -18.2, -40 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -18.2, -40 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -79.9, -72.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -79.9, -72.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -64.3, -61 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -64.3, -61 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -61.5, -49 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -61.5, -49 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -58.9, -51.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -58.9, -51.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -2.7, -28.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -2.7, -28.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -2.7, -57.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -2.7, -57.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 1.6, -11 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 1.6, -11 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -2.5, 96.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -2.5, 96.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 16.3, 79.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 16.3, 79.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 3.1, 109.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 3.1, 109.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -26.4, 36 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -26.4, 36 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -37.7, 10.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -37.7, 10.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 23.1, -16.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 23.1, -16.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 19.3, -38.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 19.3, -38.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -1.4, -4.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -1.4, -4.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 1.2, 32.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 1.2, 32.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -31.3, 92.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -31.3, 92.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 16.5, 48.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 16.5, 48.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -33.3, 51.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -33.3, 51.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 23.8, 99.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 23.8, 99.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -21.4, 62 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -21.4, 62 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 15, 106.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 15, 106.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -18.5, 100.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -18.5, 100.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 8, 78.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 8, 78.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 1.1, 99.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 1.1, 99.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -6.2, 93.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -6.2, 93.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -2.2, 95.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -2.2, 95.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -2.5, 95.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -2.5, 95.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -3.1, 97.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -3.1, 97.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -2.4, 96 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -2.4, 96 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -4.1, 97.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -4.1, 97.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -2.4, 96.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -2.4, 96.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -3.6, 98.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -3.6, 98.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -3.6, 97.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -3.6, 97.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -2.6, 99.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -2.6, 99.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -3.7, 97.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -3.7, 97.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -2.7, 98.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -2.7, 98.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -3.3, 98.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -3.3, 98.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -3.5, 98.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -3.5, 98.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -2.7, 98.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -2.7, 98.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -3.6, 98.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -3.6, 98.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -2.7, 98.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -2.7, 98.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -3.2, 98.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -3.2, 98.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -2.9, 98.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -2.9, 98.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 606.2, 219.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 606.2, 219.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 597.3, 215.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 597.3, 215.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 587.3, 211.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 587.3, 211.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 576.1, 207.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 576.1, 207.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 563.3, 201.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 563.3, 201.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 548.8, 195.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 548.8, 195.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 532.2, 189 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 532.2, 189 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 513.1, 181.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 513.1, 181.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 491.3, 172.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 491.3, 172.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 466.1, 161.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 466.1, 161.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 437.2, 149.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 437.2, 149.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 403.7, 136.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 403.7, 136.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 364.9, 120.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 364.9, 120.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 319.5, 101.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 319.5, 101.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 266.1, 79.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 266.1, 79.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 204.2, 54 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 204.2, 54 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 139.5, 27.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 139.5, 27.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 72.9, -0.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 72.9, -0.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 4.5, -28.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 4.5, -28.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -65.6, -57.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -65.6, -57.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -137.3, -86.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -137.3, -86.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -210.6, -116.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -210.6, -116.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -285.4, -147.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -285.4, -147.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -361.6, -179 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -361.6, -179 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -439.3, -211 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -439.3, -211 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -518.3, -243.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -518.3, -243.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -598.8, -276.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -598.8, -276.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -680.7, -310.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -680.7, -310.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -764.2, -344.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -764.2, -344.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -849.3, -379.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -849.3, -379.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 434.6, -564.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 434.6, -564.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 404.6, -532.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 404.6, -532.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 358.6, -483.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 358.6, -483.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 277.2, -397 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 277.2, -397 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 139.1, -249.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 139.1, -249.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 45.4, -149.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 45.4, -149.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 5.5, -107.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 5.5, -107.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -16.4, -83.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -16.4, -83.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -30.7, -68.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -30.7, -68.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -40.9, -57.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -40.9, -57.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -48.5, -49.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -48.5, -49.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -54.3, -43.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -54.3, -43.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -59, -38.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -59, -38.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -62.7, -34.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -62.7, -34.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -65.8, -31.2 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -65.8, -31.2 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -68.3, -28.6 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -68.3, -28.6 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -70.4, -26.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -70.4, -26.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -72.1, -24.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -72.1, -24.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -73.6, -22.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -73.6, -22.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -74.8, -21.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -74.8, -21.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -75.9, -20.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -75.9, -20.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -76.8, -19.5 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -76.8, -19.5 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -77.6, -18.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -77.6, -18.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -78.2, -18 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -78.2, -18 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -78.7, -17.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -78.7, -17.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -79.2, -16.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -79.2, -16.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -79.6, -16.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -79.6, -16.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -79.9, -16.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -79.9, -16.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -80.2, -15.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -80.2, -15.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -80.4, -15.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -80.4, -15.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -80.6, -15.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -80.6, -15.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -80.8, -15.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -80.8, -15.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -80.9, -15.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -80.9, -15.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -81, -15 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -81, -15 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -81.1, -14.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -81.1, -14.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -81.2, -14.8 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -81.2, -14.8 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -81.2, -14.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -81.2, -14.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -81.3, -14.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -81.3, -14.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -81.3, -14.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -81.3, -14.6 , 0 );

setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -20 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 34; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
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
--回転蹴り
SE011 = playSeVer2( spep_2 + 40, 1032, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 40, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE012, 72 );
SE013 = playSeVer2( spep_2 + 40, 1009, "", 0, 0, 0, -1);

--回転蹴り2
SE014 = playSeVer2( spep_2 + 56, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE015, 78 );
SE016 = playSeVer2( spep_2 + 60, 1010, "", 0, 0, 0, -1);

--回転蹴り3
SE017 = playSeVer2( spep_2 + 74, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 78, 1178, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 78, 1010, "", 0, 0, 0, -1);

--回転蹴り4
SE020 = playSeVer2( spep_2 + 86, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 90, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 90, 1178, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 90, 1010, "", 0, 0, 0, -1);

--敵連続ヒット
SE024 = playSeVer2( spep_2 + 116, 1032, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 116, 1187, "",spep_2 + 168, 0, 36, -1);
SE026 = playSeVer2( spep_2 + 122, 1032, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 132, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 132, 1187, "",spep_2 + 186, 0, 36, -1);
SE029 = playSeVer2( spep_2 + 142, 1032, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 150, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 150, 1187, "",spep_2 + 202, 0, 36, -1);
SE032 = playSeVer2( spep_2 + 164, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 164, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE034 = playSeVer2( spep_2 + 174, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_2 + 204, 1121, "",spep_2 + 422, 0, 40, -1);
SE036 = playSeVer2( spep_2 + 204, 1183, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 204, 1019, "", 0, 0, 0, -1);

--画面遷移
SE038 = playSeVer2( spep_2 + 230, 1232, "", 0, 0, 0, -1);

--敵飛んでいく
SE039 = playSeVer2( spep_2 + 236, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE039, 50 );
setTimeStretch( SE039, 1.11, 30, 4 );
SE040 = playSeVer2( spep_2 + 268, 1019, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 292, 1304, "",spep_2 + 422, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 292, SE041, 78 );
SE042 = playSeVer2( spep_2 + 332, 1019, "", 0, 0, 0, -1);

--爆発
SE043 = playSeVer2( spep_2 + 374, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 384, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 384); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 502f

end