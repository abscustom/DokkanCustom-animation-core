--1032880:LR_超サイヤ人4べジータ+超サイヤ人4孫悟空_必殺技：スピリットブレイクキャノン
--sp_effect_b4_00424
--sp2985

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方/敵共通)
SP_01 = 164418;  --ef_001 カードカットイン後

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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 92;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 748);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 748, SP_01, spep_2 + 748 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --気弾溜め
        SE047 = playSeVer2( spep_2 + 748 +3, 1505, "",spep_2 + 838, 12, 14, -1);
        setSeVolumeByWorkId( spep_2 + 748 +3, SE047, 45 );
        setStartTimeMs( SE047,  300 );
        setPitch( spep_2 + 748 +3, SE047, 200 );
        setTimeStretch( SE047, 1.13, 30, 4 );
        SE049 = playSeVer2( spep_2 + 748 +3, 1394, "",spep_2 + 838, 0, 16, -1);
        SE050 = playSeVer2( spep_2 + 748 +3, 1513, "",spep_2 + 838, 0, 14, -1);
        SE051 = playSeVer2( spep_2 + 748 +3, 1341, "",spep_2 + 842, 0, 20, -1);
    else
        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 50 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 50 );
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 50 );
SE007 = playSeVer2( spep_0 + 98, 1036, "",spep_0 + 116, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 50 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --94f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 996;

-- ** エフェクト等 ** --
--[[
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
]]


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, 216.1, 435.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 216.1, 435.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 205.6, 440.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 205.6, 440.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 209.2, 445.7 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 209.2, 445.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 215.1, 440.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 215.1, 440.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 208.6, 432.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 208.6, 432.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 205.3, 428.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 205.3, 428.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 214.4, 435.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 214.4, 435.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 207.9, 432.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 207.9, 432.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 205.9, 427.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 205.9, 427.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 205.9, 419.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 205.9, 419.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 208.2, 426.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 208.2, 426.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 202.9, 426.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 202.9, 426.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 204.2, 429.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 204.2, 429.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 200.6, 435.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 200.6, 435.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 202.6, 424.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 202.6, 424.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 206.8, 417.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 206.8, 417.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 208.1, 418.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 208.1, 418.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 211.4, 425.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 211.4, 425.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 204.7, 417.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 204.7, 417.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 217, 424.9 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.86, 0.86 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 28.2 );

--敵の動き2
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 126 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 114 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, 375.1, -61.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 375.1, -61.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 348.1, -92.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 348.1, -92.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 129.5, -296.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 129.5, -296.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 384.4, -279.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 384.4, -279.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 578.7, -282.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 578.7, -282.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 615.3, -312.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 615.3, -312.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 657, -291.1 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.92, 1.92 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -11 );

--敵の動き3
setDisp( spep_2 + 190 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 254 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 190 + OFFSET_X, 1, 199, 58.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 199, 58.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 199, 57 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 199, 57 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 198.1, 55.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 198.1, 55.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 199, 55.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 199, 55.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 200.3, 59.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 200.3, 59.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 201.2, 63.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 201.2, 63.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 201.2, 66.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 201.2, 66.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 204.6, 62.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 204.6, 62.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 211.5, 57.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 211.5, 57.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 214.5, 56.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 214.5, 56.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 213.2, 58.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 213.2, 58.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 209.8, 60.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 209.8, 60.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 209.8, 63.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 209.8, 63.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 212.3, 65.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 212.3, 65.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 216.6, 65.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 216.6, 65.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 219.6, 63.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 219.6, 63.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 221.3, 62.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 221.3, 62.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 221.3, 65.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 221.3, 65.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 223, 63.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 223, 63.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 225.2, 62.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 225.2, 62.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 223.9, 59.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 223.9, 59.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 227.8, 58.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 227.8, 58.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 229, 62.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 229, 62.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 230.7, 67.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 230.7, 67.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 227.7, 67.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 227.7, 67.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 224.3, 60.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 224.3, 60.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 223, 59.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 223, 59.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 226.9, 61.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 226.9, 61.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 231.7, 59.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 231.7, 59.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 235.5, 57.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 235.5, 57.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 229.8, 59.5 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.1, 2.1 );

setRotateKey( spep_2 + 190 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -23.9 );

--敵の動き4
setDisp( spep_2 + 360 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 366 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 360 + OFFSET_X, 1, -822.8, 1207.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -822.8, 1207.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -829.1, 1191.8 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -829.1, 1191.8 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -725.8, 1001.8 , 0 );

setScaleKey( spep_2 + 360 + OFFSET_X, 1, 15.74, 15.74 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 15.74, 15.74 );

setRotateKey( spep_2 + 360 + OFFSET_X, 1, -131.9 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -131.9 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -133.4 );

--敵の動き5
setDisp( spep_2 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 368 + OFFSET_X, 1, -472.8, 761.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -472.8, 761.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -367.5, 677.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -367.5, 677.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -95.4, 557.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -95.4, 557.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -222.5, 680.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -222.5, 680.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -135, 600.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -135, 600.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -283.8, 719.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -283.8, 719.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -228.1, 675.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -228.1, 675.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -272.6, 727.9 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -272.6, 727.9 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -222, 676.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -222, 676.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -322.6, 740.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -322.6, 740.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -299.1, 716.6 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -299.1, 716.6 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -314.8, 732.8 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -314.8, 732.8 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -329.3, 742.8 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -329.3, 742.8 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -322.3, 738 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -322.3, 738 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -321.1, 742.3 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -321.1, 742.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -325, 741.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -325, 741.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -323.4, 743.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -323.4, 743.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -325, 741.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -325, 741.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -327.3, 743.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -327.3, 743.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -326.6, 739.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -326.6, 739.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -325.9, 735.3 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -325.9, 735.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -329.3, 742.8 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -329.3, 742.8 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -324.6, 739.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -324.6, 739.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -325.7, 745.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -325.7, 745.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -330.5, 738.5 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -330.5, 738.5 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -327.3, 743.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -327.3, 743.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -325.4, 743.6 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -325.4, 743.6 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -324.6, 739.6 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -324.6, 739.6 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -328.6, 738.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -328.6, 738.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -327.8, 735 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -327.8, 735 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -323.9, 735.7 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -323.9, 735.7 , 0 );

setScaleKey( spep_2 + 368 + OFFSET_X, 1, 10.73, 10.73 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 10.73, 10.73 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 9, 9 );

setRotateKey( spep_2 + 368 + OFFSET_X, 1, -133.9 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -133.9 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -122.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -122.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -126.8 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -126.8 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -125.2 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -125.2 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -125.4 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -125.4 );

--敵の動き6
setDisp( spep_2 + 446 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 482 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 446 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 446 + OFFSET_X, 1, -359.3, -968.9 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -359.3, -968.9 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -361.1, -998.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -361.1, -998.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -362.9, -1027.3 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -362.9, -1027.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -364.7, -1056.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -364.7, -1056.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -366.5, -1085.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -366.5, -1085.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -368.3, -1114.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -368.3, -1114.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -370.1, -1144.1 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -370.1, -1144.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -371.9, -1173.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -371.9, -1173.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -373.7, -1202.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -373.7, -1202.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -375.5, -1231.7 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -375.5, -1231.7 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -377.3, -1260.9 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -377.3, -1260.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -379.1, -1290.1 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -379.1, -1290.1 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -380.9, -1319.3 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -380.9, -1319.3 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -382.7, -1348.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -382.7, -1348.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -384.5, -1377.7 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -384.5, -1377.7 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -386.3, -1406.9 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -386.3, -1406.9 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -388.1, -1436.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -388.1, -1436.1 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -389.9, -1465.3 , 0 );

setScaleKey( spep_2 + 446 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 9, 9 );

setRotateKey( spep_2 + 446 + OFFSET_X, 1, -161.6 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -161.6 );

setBlendColor(spep_2 + 446 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 )
setBlendColor(spep_2 + 481 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 )
setBlendColor(spep_2 + 482 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 )

--敵の動き7
setDisp( spep_2 + 570 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 594 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 570 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 570 + OFFSET_X, 1, -689, -1392.8 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -689, -1392.8 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -683.9, -1426 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -683.9, -1426 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -681.3, -1390.2 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -681.3, -1390.2 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -691.6, -1408.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -691.6, -1408.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -681.3, -1420.9 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -681.3, -1420.9 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -683.9, -1428.6 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -683.9, -1428.6 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -709.4, -1420.9 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -709.4, -1420.9 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -699.2, -1415.8 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -699.2, -1415.8 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -689, -1446.5 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -689, -1446.5 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -709.4, -1464.4 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -709.4, -1464.4 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -681.3, -1441.4 , 0 );

setScaleKey( spep_2 + 570 + OFFSET_X, 1, 15.98, 15.98 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 15.98, 15.98 );

setRotateKey( spep_2 + 570 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -77.9 );

-- ** 音 ** --
--オーラ
SE009 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 50 );
SE011 = playSeVer2( spep_2 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE011, 50 );

--構える
SE010 = playSeVer2( spep_2 + 0, 1233, "", 0, 0, 0, -1); 

--飛び立つ
SE012 = playSeVer2( spep_2 + 34, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 34, 1117, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 48, 1183, "",spep_2 + 156, 0, 46, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--殴り飛ばす
SE016 = playSeVer2( spep_2 + 96, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 104, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 104, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 108, 1179, "", 0, 0, 0, -1);

--追いかける
SE020 = playSeVer2( spep_2 + 146, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 154, 1277, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 154, 1497, "",spep_2 + 222, 0, 20, -1);
SE023 = playSeVer2( spep_2 + 190, 1245, "", 0, 0, 0, -1);

--アッパー
SE024 = playSeVer2( spep_2 + 244, 1116, "",spep_2 + 300, 0, 22, -1);
SE025 = playSeVer2( spep_2 + 270, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 270, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE027 = playSeVer2( spep_2 + 290, 1121, "",spep_2 + 394, 0, 58, -1);

--振りかぶる
SE028 = playSeVer2( spep_2 + 318, 1188, "",spep_2 + 392, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 318, SE028, 74 );
SE029 = playSeVer2( spep_2 + 326, 1452, "", 0, 0, 0, -1);

--蹴り上げ
SE030 = playSeVer2( spep_2 + 358, 1049, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 362, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 368, 1190, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 374, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 374, SE033, 126 );

--上昇する
SE034 = playSeVer2( spep_2 + 442, 44, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 442, 1508, "",spep_2 + 528, 0, 18, -1);
SE036 = playSeVer2( spep_2 + 468, 63, "",spep_2 + 522, 0, 16, -1);
setPitch( spep_2 + 470, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );
SE037 = playSeVer2( spep_2 + 474, 1004, "", 0, 0, 0, -1);

--拳にぎる
SE038 = playSeVer2( spep_2 + 494, 1233, "", 0, 0, 0, -1);

--背景音
SE039 = playSeVer2( spep_2 + 518, 1264, "",spep_2 + 604, 0, 44, -1);

--叩きつける
SE040 = playSeVer2( spep_2 + 552, 1003, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 560, 1153, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 560, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE043 = playSeVer2( spep_2 + 586, 1422, "",spep_2 + 682, 0, 28, -1);
SE044 = playSeVer2( spep_2 + 586, 1304, "",spep_2 + 678, 0, 24, -1);

--地面激突
SE045 = playSeVer2( spep_2 + 638, 1168, "",spep_2 + 804, 0, 98, -1);
SE046 = playSeVer2( spep_2 + 638, 1159, "", 0, 0, 0, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 696, 1505, "",spep_2 + 838, 12, 14, -1);
setSeVolumeByWorkId( spep_2 + 696, SE047, 45 );
setStartTimeMs( SE047,  300 );
setPitch( spep_2 + 696, SE047, 200 );
setTimeStretch( SE047, 1.13, 30, 4 );
SE049 = playSeVer2( spep_2 + 696, 1394, "",spep_2 + 838, 0, 16, -1);
SE050 = playSeVer2( spep_2 + 696, 1513, "",spep_2 + 838, 0, 14, -1);
SE051 = playSeVer2( spep_2 + 696, 1341, "",spep_2 + 842, 0, 20, -1);

--オーラ
SE048 = playSeVer2( spep_2 + 694, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 694, SE048, 50 );
SE052 = playSeVer2( spep_2 + 718, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 718, SE052, 50 );
SE053 = playSeVer2( spep_2 + 742, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 742, SE053, 50 );
SE054 = playSeVer2( spep_2 + 766, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 766, SE054, 50 );
SE055 = playSeVer2( spep_2 + 790, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 790, SE055, 50 );
SE056 = playSeVer2( spep_2 + 816, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 816, SE056, 50 );

--気弾発射
SE057 = playSeVer2( spep_2 + 818, 1027, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 818, 1146, "",spep_2 + 938, 0, 26, -1);
SE059 = playSeVer2( spep_2 + 818, 1304, "",spep_2 + 940, 0, 26, -1);

--爆発
SE060 = playSeVer2( spep_2 + 878, 1159, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 882, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 876); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム  996f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 50 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 50 );
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 50 );
SE007 = playSeVer2( spep_0 + 98, 1036, "",spep_0 + 116, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 50 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --94f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 996;

-- ** エフェクト等 ** --
--[[
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
]]


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1,4 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -216.1, 435.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -216.1, 435.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -205.6, 440.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -205.6, 440.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -209.2, 445.7 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -209.2, 445.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -215.1, 440.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -215.1, 440.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -208.6, 432.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -208.6, 432.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -205.3, 428.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -205.3, 428.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -214.4, 435.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -214.4, 435.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -207.9, 432.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -207.9, 432.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -205.9, 427.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -205.9, 427.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -205.9, 419.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -205.9, 419.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -208.2, 426.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -208.2, 426.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -202.9, 426.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -202.9, 426.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -204.2, 429.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -204.2, 429.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -200.6, 435.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -200.6, 435.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -202.6, 424.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -202.6, 424.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -206.8, 417.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -206.8, 417.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -208.1, 418.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -208.1, 418.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -211.4, 425.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -211.4, 425.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -204.7, 417.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -204.7, 417.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -217, 424.9 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.86, 0.86 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -28.2 );

--敵の動き2
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 126 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1,7 );
changeAnime( spep_2 + 114 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, -375.1, -61.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -375.1, -61.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -348.1, -92.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -348.1, -92.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -129.5, -296.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -129.5, -296.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -384.4, -279.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -384.4, -279.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -578.7, -282.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -578.7, -282.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -615.3, -312.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -615.3, -312.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -657, -291.1 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.92, 1.92 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, 56.3 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 56.3 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 11 );

--敵の動き3
setDisp( spep_2 + 190 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 254 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 190 + OFFSET_X, 1, -199, 58.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -199, 58.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -199, 57 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -199, 57 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -198.1, 55.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -198.1, 55.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -199, 55.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -199, 55.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -200.3, 59.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -200.3, 59.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -201.2, 63.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -201.2, 63.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -201.2, 66.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -201.2, 66.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -204.6, 62.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -204.6, 62.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -211.5, 57.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -211.5, 57.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -214.5, 56.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -214.5, 56.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -213.2, 58.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -213.2, 58.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -209.8, 60.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -209.8, 60.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -209.8, 63.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -209.8, 63.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -212.3, 65.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -212.3, 65.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -216.6, 65.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -216.6, 65.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -219.6, 63.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -219.6, 63.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -221.3, 62.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -221.3, 62.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -221.3, 65.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -221.3, 65.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -223, 63.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -223, 63.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -225.2, 62.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -225.2, 62.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -223.9, 59.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -223.9, 59.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -227.8, 58.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -227.8, 58.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -229, 62.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -229, 62.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -230.7, 67.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -230.7, 67.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -227.7, 67.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -227.7, 67.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -224.3, 60.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -224.3, 60.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -223, 59.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -223, 59.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -226.9, 61.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -226.9, 61.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -231.7, 59.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -231.7, 59.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -235.5, 57.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -235.5, 57.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -229.8, 59.5 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.1, 2.1 );

setRotateKey( spep_2 + 190 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 23.9 );

--敵の動き4
setDisp( spep_2 + 360 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 366 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 360 + OFFSET_X, 1, 822.8, 1207.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 822.8, 1207.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 829.1, 1191.8 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 829.1, 1191.8 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 725.8, 1001.8 , 0 );

setScaleKey( spep_2 + 360 + OFFSET_X, 1, 15.74, 15.74 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 15.74, 15.74 );

setRotateKey( spep_2 + 360 + OFFSET_X, 1, 131.9 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 131.9 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 133.4 );

--敵の動き5
setDisp( spep_2 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 368 + OFFSET_X, 1, 472.8, 761.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 472.8, 761.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 367.5, 677.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 367.5, 677.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 95.4, 557.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 95.4, 557.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 222.5, 680.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 222.5, 680.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 135, 600.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 135, 600.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 283.8, 719.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 283.8, 719.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 228.1, 675.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 228.1, 675.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 272.6, 727.9 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 272.6, 727.9 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 222, 676.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 222, 676.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 322.6, 740.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 322.6, 740.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 299.1, 716.6 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 299.1, 716.6 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 314.8, 732.8 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 314.8, 732.8 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 329.3, 742.8 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 329.3, 742.8 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 322.3, 738 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 322.3, 738 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 321.1, 742.3 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 321.1, 742.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 325, 741.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 325, 741.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 323.4, 743.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 323.4, 743.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 325, 741.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 325, 741.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 327.3, 743.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 327.3, 743.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 326.6, 739.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 326.6, 739.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 325.9, 735.3 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 325.9, 735.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 329.3, 742.8 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 329.3, 742.8 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 324.6, 739.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 324.6, 739.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 325.7, 745.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 325.7, 745.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 330.5, 738.5 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 330.5, 738.5 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 327.3, 743.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 327.3, 743.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 325.4, 743.6 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 325.4, 743.6 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 324.6, 739.6 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 324.6, 739.6 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 328.6, 738.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 328.6, 738.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 327.8, 735 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 327.8, 735 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 323.9, 735.7 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 323.9, 735.7 , 0 );

setScaleKey( spep_2 + 368 + OFFSET_X, 1, 10.73, 10.73 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 10.73, 10.73 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 11.01, 11.01 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 9, 9 );

setRotateKey( spep_2 + 368 + OFFSET_X, 1, 133.9 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 133.9 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 126.8 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 126.8 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 125.2 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 125.2 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 125.4 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 125.4 );

--敵の動き6
setDisp( spep_2 + 446 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 482 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 446 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 446 + OFFSET_X, 1, 359.3, -968.9 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 359.3, -968.9 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 361.1, -998.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 361.1, -998.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 362.9, -1027.3 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 362.9, -1027.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 364.7, -1056.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 364.7, -1056.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 366.5, -1085.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 366.5, -1085.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 368.3, -1114.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 368.3, -1114.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 370.1, -1144.1 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 370.1, -1144.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 371.9, -1173.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 371.9, -1173.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 373.7, -1202.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 373.7, -1202.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 375.5, -1231.7 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 375.5, -1231.7 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 377.3, -1260.9 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 377.3, -1260.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 379.1, -1290.1 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 379.1, -1290.1 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 380.9, -1319.3 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 380.9, -1319.3 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 382.7, -1348.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 382.7, -1348.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 384.5, -1377.7 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 384.5, -1377.7 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 386.3, -1406.9 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 386.3, -1406.9 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 388.1, -1436.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 388.1, -1436.1 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 389.9, -1465.3 , 0 );

setScaleKey( spep_2 + 446 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 9, 9 );

setRotateKey( spep_2 + 446 + OFFSET_X, 1, 161.6 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, 161.6 );

setBlendColor(spep_2 + 446 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 )
setBlendColor(spep_2 + 481 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 )
setBlendColor(spep_2 + 482 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 )

--敵の動き7
setDisp( spep_2 + 570 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 594 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 570 + OFFSET_X, 1, 108  );

setMoveKey( spep_2 + 570 + OFFSET_X, 1, 689, -1392.8 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 689, -1392.8 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 683.9, -1426 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 683.9, -1426 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 681.3, -1390.2 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 681.3, -1390.2 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 691.6, -1408.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 691.6, -1408.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 681.3, -1420.9 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 681.3, -1420.9 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 683.9, -1428.6 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 683.9, -1428.6 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 709.4, -1420.9 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 709.4, -1420.9 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 699.2, -1415.8 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 699.2, -1415.8 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 689, -1446.5 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 689, -1446.5 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 709.4, -1464.4 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 709.4, -1464.4 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 681.3, -1441.4 , 0 );

setScaleKey( spep_2 + 570 + OFFSET_X, 1, 15.98, 15.98 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 15.98, 15.98 );

setRotateKey( spep_2 + 570 + OFFSET_X, 1, 77.9 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, 77.9 );

-- ** 音 ** --
--オーラ
SE009 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 50 );
SE011 = playSeVer2( spep_2 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE011, 50 );

--構える
SE010 = playSeVer2( spep_2 + 0, 1233, "", 0, 0, 0, -1); 

--飛び立つ
SE012 = playSeVer2( spep_2 + 34, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 34, 1117, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 48, 1183, "",spep_2 + 156, 0, 46, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--殴り飛ばす
SE016 = playSeVer2( spep_2 + 96, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 104, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 104, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 108, 1179, "", 0, 0, 0, -1);

--追いかける
SE020 = playSeVer2( spep_2 + 146, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 154, 1277, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 154, 1497, "",spep_2 + 222, 0, 20, -1);
SE023 = playSeVer2( spep_2 + 190, 1245, "", 0, 0, 0, -1);

--アッパー
SE024 = playSeVer2( spep_2 + 244, 1116, "",spep_2 + 300, 0, 22, -1);
SE025 = playSeVer2( spep_2 + 270, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 270, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE027 = playSeVer2( spep_2 + 290, 1121, "",spep_2 + 394, 0, 58, -1);

--振りかぶる
SE028 = playSeVer2( spep_2 + 318, 1188, "",spep_2 + 392, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 318, SE028, 74 );
SE029 = playSeVer2( spep_2 + 326, 1452, "", 0, 0, 0, -1);

--蹴り上げ
SE030 = playSeVer2( spep_2 + 358, 1049, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 362, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 368, 1190, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 374, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 374, SE033, 126 );

--上昇する
SE034 = playSeVer2( spep_2 + 442, 44, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 442, 1508, "",spep_2 + 528, 0, 18, -1);
SE036 = playSeVer2( spep_2 + 468, 63, "",spep_2 + 522, 0, 16, -1);
setPitch( spep_2 + 470, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );
SE037 = playSeVer2( spep_2 + 474, 1004, "", 0, 0, 0, -1);

--拳にぎる
SE038 = playSeVer2( spep_2 + 494, 1233, "", 0, 0, 0, -1);

--背景音
SE039 = playSeVer2( spep_2 + 518, 1264, "",spep_2 + 604, 0, 44, -1);

--叩きつける
SE040 = playSeVer2( spep_2 + 552, 1003, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 560, 1153, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 560, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE043 = playSeVer2( spep_2 + 586, 1422, "",spep_2 + 682, 0, 28, -1);
SE044 = playSeVer2( spep_2 + 586, 1304, "",spep_2 + 678, 0, 24, -1);

--地面激突
SE045 = playSeVer2( spep_2 + 638, 1168, "",spep_2 + 804, 0, 98, -1);
SE046 = playSeVer2( spep_2 + 638, 1159, "", 0, 0, 0, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 696, 1505, "",spep_2 + 838, 12, 14, -1);
setSeVolumeByWorkId( spep_2 + 696, SE047, 45 );
setStartTimeMs( SE047,  300 );
setPitch( spep_2 + 696, SE047, 200 );
setTimeStretch( SE047, 1.13, 30, 4 );
SE049 = playSeVer2( spep_2 + 696, 1394, "",spep_2 + 838, 0, 16, -1);
SE050 = playSeVer2( spep_2 + 696, 1513, "",spep_2 + 838, 0, 14, -1);
SE051 = playSeVer2( spep_2 + 696, 1341, "",spep_2 + 842, 0, 20, -1);

--オーラ
SE048 = playSeVer2( spep_2 + 694, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 694, SE048, 50 );
SE052 = playSeVer2( spep_2 + 718, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 718, SE052, 50 );
SE053 = playSeVer2( spep_2 + 742, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 742, SE053, 50 );
SE054 = playSeVer2( spep_2 + 766, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 766, SE054, 50 );
SE055 = playSeVer2( spep_2 + 790, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 790, SE055, 50 );
SE056 = playSeVer2( spep_2 + 816, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 816, SE056, 50 );

--気弾発射
SE057 = playSeVer2( spep_2 + 818, 1027, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 818, 1146, "",spep_2 + 938, 0, 26, -1);
SE059 = playSeVer2( spep_2 + 818, 1304, "",spep_2 + 940, 0, 26, -1);

--爆発
SE060 = playSeVer2( spep_2 + 878, 1159, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 882, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 876); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム  996f



end
