--1032790:UR_孫悟空_EX必殺技：かめはめ波
--sp_effect_a1_00521
--sp2981

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164369; --カード前：動画より上 ef_001
SP_02  = 164370; --カード後：動画より上 ef_002

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

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;
ENABLE_AUTO_TIME_STRETCH(0.8);

--DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 +  198;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 102);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 102-1, SP_01, spep_2 + 102 + 2-1, 1);
        --かめはめ波発射
        SE020 = playSeVer2( spep_2 + 102, 1146, "",spep_2 + 212, 0, 22, -1);
        SE021 = playSeVer2( spep_2 + 102, 1213, "",spep_2 + 210, 0, 18, -1);

    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カード前：動画より上
-------------------------------------------------
MAX_FRAME_0 = 198;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前：動画より上(ef_001)
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
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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


-- ** 敵キャラクター ** --
-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 228, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--気ダメ
SE002 = playSeVer2( spep_0 + 22, 1035, "", 0, 0, 0, -1);
--顔カットイン
--SE003 = playSeVer2( spep_0 + 32, 1018, "", 0, 0, 0, -1);
--オーラ
SE004 = playSeVer2( spep_0 + 32, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE004, 63 );
SE005 = playSeVer2( spep_0 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 63 );
--ズーム
SE006 = playSeVer2( spep_0 + 62, 1072, "", 0, 0, 0, -1);
--オーラ
setSeVolumeByWorkId( spep_0 + 80, SE007, 63 );
SE007 = playSeVer2( spep_0 + 80, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE008, 63 );
--かめはめ波溜め
SE009 = playSeVer2( spep_0 + 106, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 106, 1209, "",spep_0 + 228, 0, 14, -1);
SE011 = playSeVer2( spep_0 + 106, 1210, "",spep_0 + 230, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 106, 1356, "",spep_0 + 232, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 106, SE012, 65 );
SE013 = playSeVer2( spep_0 + 106, 1176, "",spep_0 + 230, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 106, SE013, 72 );
--オーラ
SE014 = playSeVer2( spep_0 + 128, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE014, 63 );
SE015 = playSeVer2( spep_0 + 152, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE015, 63 );
SE016 = playSeVer2( spep_0 + 176, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE016, 63 );
SE017 = playSeVer2( spep_0 + 200, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE017, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 198

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

--カードカットイン
--SE018 = playSeVer2( spep_1 + 10, 1035, "", 0, 0, 0, -1);

-------------------------------------------------
-- カード後：動画より上
-------------------------------------------------
MAX_FRAME_2 = 382;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後：動画より上(ef_002)
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
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 158 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 83.8, 183.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 83.8, 183.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 79.8, 189.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 79.8, 189.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 87.8, 179.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 87.8, 179.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 85.7, 187.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 85.7, 187.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 81.6, 178.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 81.6, 178.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 87.5, 182.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 87.5, 182.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 83.4, 181.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 83.4, 181.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 79.2, 186.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 79.2, 186.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 87, 176 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 87, 176 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 84.7, 182.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 84.7, 182.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 80.4, 173.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 80.4, 173.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 86, 175.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 86, 175.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 81.6, 174.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 81.6, 174.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 77.1, 177.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 77.1, 177.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 84.5, 165.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 84.5, 165.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 81.9, 170.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 81.9, 170.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 77.1, 159 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 77.1, 159 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 82.1, 158.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 82.1, 158.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 77, 154 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 77, 154 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 71.6, 153.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 71.6, 153.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 77.8, 136.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 77.8, 136.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 73.5, 134.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 73.5, 134.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 65.9, 110.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 65.9, 110.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 64.2, 81.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 64.2, 81.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 51.4, 43.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 51.4, 43.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 55.7, 0.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 55.7, 0.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 63.7, 4.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 63.7, 4.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 59, 2.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 59, 2.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 39.8, -6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 39.8, -6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 45.8, -2.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 45.8, -2.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 45.3, -0.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 45.3, -0.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 44.9, 8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 44.9, 8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 56.5, 0.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 56.5, 0.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 58.1, 10.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 58.1, 10.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 57.7, 4.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 57.7, 4.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 67.3, 10.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 67.3, 10.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 62.8, 18.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 62.8, 18.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 74.4, 11 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 74.4, 11 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 76, 21.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 76, 21.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 75.6, 15.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 75.6, 15.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 87.8, 179.6 , 0 );


setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.3, 3.3 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 0 );


-- ** 音 ** --

--かめはめ波発射
SE019 = playSeVer2( spep_2 + 4, 1133, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 4, 1146, "",spep_2 + 212, 0, 22, -1);
SE021 = playSeVer2( spep_2 + 4, 1213, "",spep_2 + 210, 0, 18, -1);

--かめはめ波中
SE022 = playSeVer2( spep_2 + 36, 1211, "",spep_2 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 36, SE022, 251 );

--かめはめ波飛んでいく
SE023 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 138; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--かめはめ波飛んでいく
SE024 = playSeVer2( spep_2 + 130, 1157, "",spep_2 + 232, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 130, SE024, 75 );

--敵ヒット
SE025 = playSeVer2( spep_2 + 182, 1011, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 184, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE026, 75 );

--爆発
SE027 = playSeVer2( spep_2 + 260, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 260, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 254); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 382-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- カード前：動画より上
-------------------------------------------------
MAX_FRAME_0 = 198;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前：動画より上(ef_001)
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
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
-- -- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 228, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--気ダメ
SE002 = playSeVer2( spep_0 + 22, 1035, "", 0, 0, 0, -1);
--顔カットイン
--SE003 = playSeVer2( spep_0 + 32, 1018, "", 0, 0, 0, -1);
--オーラ
SE004 = playSeVer2( spep_0 + 32, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE004, 63 );
SE005 = playSeVer2( spep_0 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 63 );
--ズーム
SE006 = playSeVer2( spep_0 + 62, 1072, "", 0, 0, 0, -1);
--オーラ
setSeVolumeByWorkId( spep_0 + 80, SE007, 63 );
SE007 = playSeVer2( spep_0 + 80, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE008, 63 );
--かめはめ波溜め
SE009 = playSeVer2( spep_0 + 106, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 106, 1209, "",spep_0 + 228, 0, 14, -1);
SE011 = playSeVer2( spep_0 + 106, 1210, "",spep_0 + 230, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 106, 1356, "",spep_0 + 232, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 106, SE012, 65 );
SE013 = playSeVer2( spep_0 + 106, 1176, "",spep_0 + 230, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 106, SE013, 72 );
--オーラ
SE014 = playSeVer2( spep_0 + 128, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE014, 63 );
SE015 = playSeVer2( spep_0 + 152, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE015, 63 );
SE016 = playSeVer2( spep_0 + 176, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE016, 63 );
SE017 = playSeVer2( spep_0 + 200, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE017, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 198

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

--カードカットイン
--SE018 = playSeVer2( spep_1 + 10, 1035, "", 0, 0, 0, -1);

-------------------------------------------------
-- カード後：動画より上
-------------------------------------------------
MAX_FRAME_2 = 382;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後：動画より上(ef_002)
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
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 158 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, -83.8, 183.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -83.8, 183.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -79.8, 189.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -79.8, 189.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -87.8, 179.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -87.8, 179.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -85.7, 187.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -85.7, 187.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -81.6, 178.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -81.6, 178.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -87.5, 182.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -87.5, 182.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -83.4, 181.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -83.4, 181.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -79.2, 186.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -79.2, 186.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -87, 176 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -87, 176 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -84.7, 182.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -84.7, 182.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -80.4, 173.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -80.4, 173.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -86, 175.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -86, 175.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -81.6, 174.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -81.6, 174.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -77.1, 177.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -77.1, 177.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -84.5, 165.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -84.5, 165.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -81.9, 170.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -81.9, 170.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -77.1, 159 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -77.1, 159 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -82.1, 158.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -82.1, 158.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -77, 154 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -77, 154 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -71.6, 153.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -71.6, 153.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -77.8, 136.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -77.8, 136.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -73.5, 134.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -73.5, 134.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -65.9, 110.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -65.9, 110.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -64.2, 81.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -64.2, 81.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -51.4, 43.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -51.4, 43.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -55.7, 0.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -55.7, 0.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -63.7, 4.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -63.7, 4.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -59, 2.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -59, 2.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -39.8, -6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -39.8, -6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -45.8, -2.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -45.8, -2.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -45.3, -0.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -45.3, -0.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -44.9, 8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -44.9, 8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -56.5, 0.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -56.5, 0.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -58.1, 10.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -58.1, 10.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -57.7, 4.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -57.7, 4.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -67.3, 10.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -67.3, 10.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -62.8, 18.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -62.8, 18.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -74.4, 11 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -74.4, 11 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -76, 21.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -76, 21.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -75.6, 15.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -75.6, 15.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -87.8, 179.6 , 0 );


setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.3, 3.3 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 0 );


-- ** 音 ** --

--かめはめ波発射
SE019 = playSeVer2( spep_2 + 4, 1133, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 4, 1146, "",spep_2 + 212, 0, 22, -1);
SE021 = playSeVer2( spep_2 + 4, 1213, "",spep_2 + 210, 0, 18, -1);

--かめはめ波中
SE022 = playSeVer2( spep_2 + 36, 1211, "",spep_2 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 36, SE022, 251 );

--かめはめ波飛んでいく
SE023 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 138; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--かめはめ波飛んでいく
SE024 = playSeVer2( spep_2 + 130, 1157, "",spep_2 + 232, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 130, SE024, 75 );

--敵ヒット
SE025 = playSeVer2( spep_2 + 182, 1011, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 184, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE026, 75 );

--爆発
SE027 = playSeVer2( spep_2 + 260, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 260, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 254); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 382-2


end