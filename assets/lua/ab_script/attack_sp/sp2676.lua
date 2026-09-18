-- 1028370: LR_ガンマ1号&ガンマ2号/ガンマ1号_必殺技：ビクトリーコンビネーション
-- sp_effect_a9_00125
-- sp2676

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162723;  -- １号と２号登場～１号ブラスタ　味方側	ef_001
SP_002 = 162724;  -- １号と２号登場～１号ブラスタ　味方側後ろ	ef_001b
SP_003 = 162727;  -- ２号キック～フィニッシュ	ef_002
SP_004 = 162728;  -- ２号キック～フィニッシュ	ef_002b

-- 敵側
SP_001r = 162725;  -- １号と２号登場～１号ブラスタ　敵側	ef_001r
SP_002r = 162726;  -- １号と２号登場～１号ブラスタ　敵側後ろ	ef_001br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 390;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 216;

        skipFrame(0, spep_2 + timing_skip );

        -- ** 音 ** --
        --ライダーキック
        SE033 = playSeVer2( spep_2 + 216 + 3, 1314, "",spep_2 + 400, 0, 44, -1);
        SE034 = playSeVer2( spep_2 + 216 + 3, 1227, "",spep_2 + 400, 0, 44, -1);

        --敵ヒット
        SE035 = playSeVer2( spep_2 + 216 + 3, 1120, "", 0, 0, 0, -1);
        SE036 = playSeVer2( spep_2 + 216 + 3, 1187, "", 0, 0, 0, -1);
        SE037 = playSeVer2( spep_2 + 216 + 3, 1359, "", 0, 0, 0, -1);
        SE038 = playSeVer2( spep_2 + 216 + 3, 1443, "", 0, 0, 0, 0.5);
        --飛行音
        SE039 = playSeVer2( spep_2 + 216 + 3, 1019, "", 0, 0, 0, -1);
        setPitch( spep_2 + 216 + 3, SE039, 400 );
        setTimeStretch( SE039, 1.27, 30, 4 );

    else
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- １号と２号登場～１号ブラスタ　	ef_001
------------------------------------------------------
MAX_FRAME_0 = 390;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );-- １号と２号登場～１号ブラスタ ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002, 0x80, -1, 0, 0, 0 );-- １号と２号登場～１号ブラスタ　裏 ef_001b
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 232 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 194 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, 0.4, 1 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 0.4, 1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 0.3, 1.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 0.3, 1.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 0.3, 1.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 0.3, 1.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 0.3, 1.3 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 0.3, 1.3 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 0.3, 1.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 0.3, 1.4 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 0.3, 1.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 0.3, 1.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 0.3, 1.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 0.3, 1.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 0.3, 1.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 0.3, 1.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 0.2, 2.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 0.2, 2.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 0.2, 2.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 0.2, 2.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 0.2, 2.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 0.2, 2.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 0.1, 3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 0.1, 3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 0.1, 3.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 0.1, 3.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 0, 4.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 0, 4.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -0.1, 5.1 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -0.1, 5.1 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -0.3, 5.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -0.3, 5.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -0.4, 7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -0.4, 7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -1, 9.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -1, 9.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -0.2, 8.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -0.2, 8.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 0.4, 7.4 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 0.4, 7.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 0.9, 6.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 0.9, 6.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 1.2, 6.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 1.2, 6.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 1.4, 5.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 1.4, 5.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 1.6, 5.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 1.6, 5.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 1.7, 5.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 1.7, 5.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 1.7, 5.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 1.7, 5.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 117.9, 73.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 117.9, 73.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 99.4, 73.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 99.4, 73.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 117.7, 73.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 117.7, 73.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 117.2, 94.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 117.2, 94.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 115.9, 72.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 115.9, 72.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 129.5, 87.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 129.5, 87.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 107.7, 67.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 107.7, 67.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 77.7, 61.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 77.7, 61.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 85.8, 52.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 85.8, 52.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 69.5, 26.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 69.5, 26.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 46, 25.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 46, 25.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 144.5, 56.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 144.5, 56.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 154.7, 68.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 154.7, 68.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 175.1, 76.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 175.1, 76.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 190.3, 82.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 190.3, 82.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 202, 86.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 202, 86.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 210.7, 89.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 210.7, 89.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 217.1, 92.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 217.1, 92.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 221.4, 94.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 221.4, 94.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 223.8, 95 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 223.8, 95 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 224.4, 95.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 224.4, 95.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -390.6, -368.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -390.6, -368.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -244, -290.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -244, -290.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -105.7, -217 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -105.7, -217 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 24.3, -147.8 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 24.3, -147.8 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 145.8, -83 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 145.8, -83 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 259.4, -22.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 259.4, -22.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 364.6, 33.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 364.6, 33.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 461.8, 85.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 461.8, 85.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 551, 132.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 551, 132.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 632, 176.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 632, 176.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 704.9, 215.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 704.9, 215.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 770, 250 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 770, 250 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 827, 280.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 827, 280.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 876.1, 306.9 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 876.1, 306.9 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 917.2, 329 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 917.2, 329 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 950.6, 346.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 950.6, 346.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 996.2, 360.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 996.2, 360.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 1053.9, 370.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 1053.9, 370.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 1203.9, 376 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 1203.9, 376 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 1306.2, 377.5 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 4.82, 4.15 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 4.82, 4.15 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 4.79, 4.13 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 4.79, 4.13 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.73, 4.08 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 4.73, 4.08 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 4.6, 3.97 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 4.6, 3.97 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.37, 3.79 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 4.37, 3.79 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 3.99, 3.48 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 3.99, 3.48 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3.4, 3 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 3.4, 3 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.65, 2.41 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 2.65, 2.41 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.28, 2.28 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 88 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 232 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- 敵の動き2
setDisp( spep_0 + 318 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 318 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 340 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 318 + OFFSET_X, 1, 234.1, 189.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 234.1, 189.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 228.1, 184.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 228.1, 184.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 220.8, 178.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 220.8, 178.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 215.1, 173.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 215.1, 173.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 184.8, 148.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 184.8, 148.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 161.6, 129.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 161.6, 129.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 166, 132.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 166, 132.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 148.6, 118.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 148.6, 118.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 158.6, 125.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 158.6, 125.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 147.4, 115.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 147.4, 115.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 163.6, 127.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 163.6, 127.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 156.8, 121 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 156.8, 121 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 178.5, 136.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 178.5, 136.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 172.5, 131.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 172.5, 131.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 194, 146.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 194, 146.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 175.3, 126.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 175.3, 126.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 201.3, 149.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 201.3, 149.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 216.6, 139.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 216.6, 139.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 206.2, 153.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 206.2, 153.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 195.5, 166.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 195.5, 166.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 210.3, 155.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 210.3, 155.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 232.4, 156.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 232.4, 156.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 214.4, 157.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 214.4, 157.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 203.1, 158.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 203.1, 158.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 219, 158.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 219, 158.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 210.5, 149.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 210.5, 149.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 224.6, 162 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 224.6, 162 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 214.9, 174 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 214.9, 174 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 226.9, 165.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 226.9, 165.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 230.7, 153.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 230.7, 153.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 232.9, 165.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 232.9, 165.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 244.7, 155.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 244.7, 155.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 236.2, 166.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 236.2, 166.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 245.5, 173.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 245.5, 173.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 241.9, 169 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 241.9, 169 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 235.8, 177.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 235.8, 177.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 244.6, 171.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 244.6, 171.7 , 0 );

setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 318 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -43 );

setBlendColor( spep_0 + 328 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 392 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--構える
SE003 = playSeVer2( spep_0 + 4, 1233, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 14, 1012, "", 0, 0, 0, -1);
--向かっていく
SE005 = playSeVer2( spep_0 + 78, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1117, "",spep_0 + 164, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 78, 1183, "",spep_0 + 164, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 78, SE007, 82 );
SE008 = playSeVer2( spep_0 + 78, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE008, 85 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );--setBlendColor解除

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
--二人パンチ
SE009 = playSeVer2( spep_0 + 134, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 134, 1359, "", 0, 0, 0, -1);
--敵飛んでいく
SE012 = playSeVer2( spep_0 + 154, 1121, "",spep_0 + 322, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 154, SE012, 54 );
--瞬間移動
SE013 = playSeVer2( spep_0 + 184, 1109, "", 0, 0, 0, -1);
--1号銃光る
SE014 = playSeVer2( spep_0 + 208, 1042, "", 0, 0, 0, -1);
setPitch( spep_0 + 208, SE014, 400 );
setTimeStretch( SE014, 1.27, 30, 4 );
SE015 = playSeVer2( spep_0 + 208, 1221, "", 0, 0, 0, -1);
setPitch( spep_0 + 208, SE015, 700 );
setTimeStretch( SE015, 1.47, 30, 4 );
--銃溜める
SE011 = playSeVer2( spep_0 + 248, 1210, "",spep_0 + 340, 10, 18, -1);
setSeVolumeByWorkId( spep_0 + 248, SE011, 65 );
setStartTimeMs( SE011,  1900 );
SE016 = playSeVer2( spep_0 + 248, 1227, "",spep_0 + 334, 12, 12, -1);
setStartTimeMs( SE016,  460 );
SE017 = playSeVer2( spep_0 + 248, 1262, "",spep_0 + 334, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 248, SE017, 164 );
setPitch( spep_0 + 248, SE017, 500 );
setTimeStretch( SE017, 1.33, 30, 4 );
--銃発射
SE018 = playSeVer2( spep_0 + 300, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE018, 126 );
SE019 = playSeVer2( spep_0 + 302, 1028, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 302, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE020, 141 );
--爆発
SE021 = playSeVer2( spep_0 + 324, 1024, "",spep_0 + 402, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 324, SE021, 78 );
SE022 = playSeVer2( spep_0 + 326, 1011, "",spep_0 + 402, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 390

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--2号舞い上がる
SE024 = playSeVer2( spep_1 + 90, 1119, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE024, 138 );
setStartTimeMs( SE024,  600 );

------------------------------------------------------
-- ２号キック～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 532;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );-- ２号キック～フィニッシュ	 ef_002
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004, 0x80, -1, 0, 0, 0 );-- ２号キック～フィニッシュ　裏 ef_002b
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --

setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, -335.1, 345.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -335.1, 345.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 13.4, -14.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 13.4, -14.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 47.2, -49.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 47.2, -49.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 61.8, -64.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 61.8, -64.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 68.4, -59.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 68.4, -59.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 72.3, -63.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 72.3, -63.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 109.1, -30.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 109.1, -30.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 121.6, -99.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 121.6, -99.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 77.1, -68.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 77.1, -68.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 77.1, -28.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 77.1, -28.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 76.9, -66.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 76.9, -66.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 49.3, -94 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 49.3, -94 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 75.7, -67.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 75.7, -67.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 92, -51.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 92, -51.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 75.6, -68 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 75.6, -68 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 89.6, -68.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 89.6, -68.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 75.8, -68.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 75.8, -68.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 62.3, -55.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 62.3, -55.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 74.9, -67.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 74.9, -67.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 75.6, -68.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 75.6, -68.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 75.6, -54.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 75.6, -54.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 75.5, -69 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 75.5, -69 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 85, -59.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 85, -59.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 75.4, -69.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 75.4, -69.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 83.6, -77.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 83.6, -77.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 74.9, -69.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 74.9, -69.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 65.6, -78.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 65.6, -78.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 74.7, -69.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 74.7, -69.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 63.8, -69.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 63.8, -69.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 75.6, -70.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 75.6, -70.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 83.5, -62.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 83.5, -62.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 75, -70.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 75, -70.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 75, -60.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 75, -60.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 75, -70.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 75, -70.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 83.8, -79.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 83.8, -79.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 75.1, -71.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 75.1, -71.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 75, -81.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 75, -81.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 75, -71 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 75, -71 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 84.5, -71.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 84.5, -71.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 74.4, -71.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 74.4, -71.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 64.7, -81.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 64.7, -81.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 74.3, -71.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 74.3, -71.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 65.5, -63.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 65.5, -63.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 74.4, -72.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 74.4, -72.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 63.4, -72.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 63.4, -72.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 74.4, -72.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 74.4, -72.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 74.4, -63.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 74.4, -63.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 74.3, -73.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 74.3, -73.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 65.5, -82.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 65.5, -82.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 74.5, -73.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 74.5, -73.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 83.4, -82.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 83.4, -82.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 74.3, -73.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 74.3, -73.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 74.3, -84.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 74.3, -84.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 74.3, -74.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 74.3, -74.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 65.3, -74.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 65.3, -74.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 73.9, -74.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 73.9, -74.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 82, -66.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 82, -66.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 73.8, -74.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 73.8, -74.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 83.2, -75 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 83.2, -75 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 73.7, -75.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 73.7, -75.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 64.7, -66.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 64.7, -66.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 73.6, -75.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 73.6, -75.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 62.2, -75.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 62.2, -75.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 73.4, -75.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 73.4, -75.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 73.3, -87.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 73.3, -87.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 73.3, -76.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 73.3, -76.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 83.4, -86.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 83.4, -86.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 73.3, -76.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 73.3, -76.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 84.1, -76.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 84.1, -76.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 73.1, -77 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 73.1, -77 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 73.1, -69 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 73.1, -69 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 85.3, -77.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 85.3, -77.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 73.6, -77.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 73.6, -77.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 53.7, -97.8 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 53.7, -97.8 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 73.8, -77.9 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 73.8, -77.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 73.7, -78.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 73.7, -78.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 73.6, -78.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 73.6, -78.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 91.9, -51 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 91.9, -51 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 98.9, -41.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 98.9, -41.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 103.8, -35.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 103.8, -35.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 107.8, -30.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 107.8, -30.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 111.1, -27.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 111.1, -27.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 113.9, -24 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 113.9, -24 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 116.3, -21.5 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 116.3, -21.5 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 118.4, -19.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 118.4, -19.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 120.2, -17.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 120.2, -17.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 121.8, -16.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 121.8, -16.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 123.2, -14.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 123.2, -14.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 124.5, -13.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 124.5, -13.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 125.5, -12.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 125.5, -12.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 126.4, -12 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 126.4, -12 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 127.2, -11.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 127.2, -11.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 127.8, -10.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 127.8, -10.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 128.3, -10.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 128.3, -10.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 128.7, -10 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 128.7, -10 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 128.9, -9.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 128.9, -9.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 129.1, -9.7 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 129.1, -9.7 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 129.1, -9.6 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 129.1, -9.6 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.13, 0.15 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.13, 0.15 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 32 );

-- ** 音 ** --
--2号舞い上がる
SE025 = playSeVer2( spep_2 + 2, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  100 );
SE026 = playSeVer2( spep_2 + 2, 1117, "",spep_2 + 88, 0, 36, -1);
SE027 = playSeVer2( spep_2 + 2, 44, "", 0, 0, 0, -1);
--2号光る
SE028 = playSeVer2( spep_2 + 28, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE028, 136 );
setPitch( spep_2 + 28, SE028, 100 );
setTimeStretch( SE028, 1.07, 30, 4 );
SE029 = playSeVer2( spep_2 + 36, 1303, "",spep_2 + 138, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 36, SE029, 46 );
--ライダーキック
SE030 = playSeVer2( spep_2 + 80, 1258, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 84, 1182, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 84, 9, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 84, 1314, "",spep_2 + 400, 0, 44, -1);
SE034 = playSeVer2( spep_2 + 84, 1227, "",spep_2 + 400, 0, 44, -1);
--敵ヒット
SE035 = playSeVer2( spep_2 + 198, 1120, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 198, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 200, 1359, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 200, 1443, "", 0, 0, 0, 0.5);
--飛行音
SE039 = playSeVer2( spep_2 + 200, 1019, "", 0, 0, 0, -1);
setPitch( spep_2 + 200, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );
SE040 = playSeVer2( spep_2 + 264, 1019, "", 0, 0, 0, -1);
setPitch( spep_2 + 258, SE040, 400 );
setTimeStretch( SE040, 1.27, 30, 4 );
SE041 = playSeVer2( spep_2 + 328, 1019, "",spep_2 + 400, 0, 40, -1);
setPitch( spep_2 + 328, SE041, 400 );
setTimeStretch( SE041, 1.27, 30, 4 );
--敵吹き飛ぶ
SE042 = playSeVer2( spep_2 + 340, 1027, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 340, 1121, "",spep_2 + 446, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 340, SE043, 73 );
SE044 = playSeVer2( spep_2 + 340, 1183, "",spep_2 + 446, 0, 30, -1);
SE045 = playSeVer2( spep_2 + 340, 1068, "", 0, 0, 0, -1);
--地面激突
SE046 = playSeVer2( spep_2 + 400, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 406, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 428 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 532 - 4

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- １号と２号登場～１号ブラスタ　	ef_001r
------------------------------------------------------
MAX_FRAME_0 = 390;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );-- １号と２号登場～１号ブラスタ ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002r, 0x80, -1, 0, 0, 0 );-- １号と２号登場～１号ブラスタ　裏 ef_001rb
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 232 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 194 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, -0.4, 1 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -0.4, 1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -0.3, 1.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -0.3, 1.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -0.3, 1.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -0.3, 1.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -0.3, 1.3 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -0.3, 1.3 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -0.3, 1.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -0.3, 1.4 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -0.3, 1.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -0.3, 1.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -0.3, 1.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -0.3, 1.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -0.3, 1.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -0.3, 1.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -0.2, 2.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -0.2, 2.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -0.2, 2.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -0.2, 2.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -0.2, 2.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -0.2, 2.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -0.1, 3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -0.1, 3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -0.1, 3.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -0.1, 3.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 0, 4.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 0, 4.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 0.1, 5.1 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 0.1, 5.1 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 0.3, 5.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 0.3, 5.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 0.4, 7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 0.4, 7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 1, 9.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 1, 9.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 0.2, 8.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 0.2, 8.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -0.4, 7.4 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -0.4, 7.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -0.9, 6.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -0.9, 6.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -1.2, 6.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -1.2, 6.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -1.4, 5.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -1.4, 5.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -1.6, 5.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -1.6, 5.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -1.7, 5.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -1.7, 5.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -1.7, 5.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -1.7, 5.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -117.9, 73.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -117.9, 73.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -99.4, 73.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -99.4, 73.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -117.7, 73.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -117.7, 73.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -117.2, 94.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -117.2, 94.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -115.9, 72.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -115.9, 72.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -129.5, 87.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -129.5, 87.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -107.7, 67.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -107.7, 67.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -77.7, 61.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -77.7, 61.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -85.8, 52.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -85.8, 52.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -69.5, 26.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -69.5, 26.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -46, 25.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -46, 25.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -144.5, 56.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -144.5, 56.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -154.7, 68.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -154.7, 68.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -175.1, 76.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -175.1, 76.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -190.3, 82.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -190.3, 82.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -202, 86.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -202, 86.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -210.7, 89.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -210.7, 89.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -217.1, 92.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -217.1, 92.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -221.4, 94.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -221.4, 94.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -223.8, 95 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -223.8, 95 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -224.4, 95.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -224.4, 95.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -390.6, -368.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -390.6, -368.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -244, -290.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -244, -290.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -105.7, -217 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -105.7, -217 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 24.3, -147.8 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 24.3, -147.8 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 145.8, -83 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 145.8, -83 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 259.4, -22.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 259.4, -22.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 364.6, 33.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 364.6, 33.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 461.8, 85.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 461.8, 85.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 551, 132.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 551, 132.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 632, 176.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 632, 176.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 704.9, 215.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 704.9, 215.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 770, 250 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 770, 250 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 827, 280.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 827, 280.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 876.1, 306.9 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 876.1, 306.9 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 917.2, 329 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 917.2, 329 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 950.6, 346.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 950.6, 346.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 996.2, 360.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 996.2, 360.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 1053.9, 370.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 1053.9, 370.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 1203.9, 376 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 1203.9, 376 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 1306.2, 377.5 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 4.82, 4.15 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 4.82, 4.15 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 4.79, 4.13 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 4.79, 4.13 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.73, 4.08 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 4.73, 4.08 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 4.6, 3.97 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 4.6, 3.97 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.37, 3.79 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 4.37, 3.79 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 3.99, 3.48 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 3.99, 3.48 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3.4, 3 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 3.4, 3 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.65, 2.41 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 2.65, 2.41 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.28, 2.28 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 88 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 232 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- 敵の動き2
setDisp( spep_0 + 318 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 318 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 340 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 318 + OFFSET_X, 1, 234.1, 189.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 234.1, 189.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 228.1, 184.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 228.1, 184.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 220.8, 178.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 220.8, 178.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 215.1, 173.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 215.1, 173.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 184.8, 148.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 184.8, 148.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 161.6, 129.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 161.6, 129.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 166, 132.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 166, 132.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 148.6, 118.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 148.6, 118.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 158.6, 125.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 158.6, 125.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 147.4, 115.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 147.4, 115.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 163.6, 127.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 163.6, 127.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 156.8, 121 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 156.8, 121 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 178.5, 136.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 178.5, 136.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 172.5, 131.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 172.5, 131.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 194, 146.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 194, 146.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 175.3, 126.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 175.3, 126.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 201.3, 149.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 201.3, 149.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 216.6, 139.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 216.6, 139.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 206.2, 153.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 206.2, 153.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 195.5, 166.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 195.5, 166.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 210.3, 155.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 210.3, 155.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 232.4, 156.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 232.4, 156.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 214.4, 157.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 214.4, 157.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 203.1, 158.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 203.1, 158.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 219, 158.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 219, 158.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 210.5, 149.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 210.5, 149.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 224.6, 162 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 224.6, 162 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 214.9, 174 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 214.9, 174 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 226.9, 165.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 226.9, 165.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 230.7, 153.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 230.7, 153.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 232.9, 165.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 232.9, 165.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 244.7, 155.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 244.7, 155.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 236.2, 166.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 236.2, 166.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 245.5, 173.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 245.5, 173.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 241.9, 169 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 241.9, 169 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 235.8, 177.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 235.8, 177.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 244.6, 171.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 244.6, 171.7 , 0 );

setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 318 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -43 );

setBlendColor( spep_0 + 328 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 392 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--構える
SE003 = playSeVer2( spep_0 + 4, 1233, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 14, 1012, "", 0, 0, 0, -1);
--向かっていく
SE005 = playSeVer2( spep_0 + 78, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1117, "",spep_0 + 164, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 78, 1183, "",spep_0 + 164, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 78, SE007, 82 );
SE008 = playSeVer2( spep_0 + 78, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE008, 85 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );--setBlendColor解除

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
--二人パンチ
SE009 = playSeVer2( spep_0 + 134, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 134, 1359, "", 0, 0, 0, -1);
--敵飛んでいく
SE012 = playSeVer2( spep_0 + 154, 1121, "",spep_0 + 322, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 154, SE012, 54 );
--瞬間移動
SE013 = playSeVer2( spep_0 + 184, 1109, "", 0, 0, 0, -1);
--1号銃光る
SE014 = playSeVer2( spep_0 + 208, 1042, "", 0, 0, 0, -1);
setPitch( spep_0 + 208, SE014, 400 );
setTimeStretch( SE014, 1.27, 30, 4 );
SE015 = playSeVer2( spep_0 + 208, 1221, "", 0, 0, 0, -1);
setPitch( spep_0 + 208, SE015, 700 );
setTimeStretch( SE015, 1.47, 30, 4 );
--銃溜める
SE011 = playSeVer2( spep_0 + 248, 1210, "",spep_0 + 340, 10, 18, -1);
setSeVolumeByWorkId( spep_0 + 248, SE011, 65 );
setStartTimeMs( SE011,  1900 );
SE016 = playSeVer2( spep_0 + 248, 1227, "",spep_0 + 334, 12, 12, -1);
setStartTimeMs( SE016,  460 );
SE017 = playSeVer2( spep_0 + 248, 1262, "",spep_0 + 334, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 248, SE017, 164 );
setPitch( spep_0 + 248, SE017, 500 );
setTimeStretch( SE017, 1.33, 30, 4 );
--銃発射
SE018 = playSeVer2( spep_0 + 300, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE018, 126 );
SE019 = playSeVer2( spep_0 + 302, 1028, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 302, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE020, 141 );
--爆発
SE021 = playSeVer2( spep_0 + 324, 1024, "",spep_0 + 402, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 324, SE021, 78 );
SE022 = playSeVer2( spep_0 + 326, 1011, "",spep_0 + 402, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 390

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--2号舞い上がる
SE024 = playSeVer2( spep_1 + 90, 1119, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE024, 138 );
setStartTimeMs( SE024,  600 );

------------------------------------------------------
-- ２号キック～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 532;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );-- ２号キック～フィニッシュ	 ef_002
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004, 0x80, -1, 0, 0, 0 );-- ２号キック～フィニッシュ　裏 ef_002b
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, 335.1, 345.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 335.1, 345.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -13.4, -14.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -13.4, -14.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -47.2, -49.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -47.2, -49.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -61.8, -64.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -61.8, -64.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -68.4, -59.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -68.4, -59.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -72.3, -63.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -72.3, -63.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -109.1, -30.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -109.1, -30.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -121.6, -99.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -121.6, -99.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -77.1, -68.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -77.1, -68.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -77.1, -28.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -77.1, -28.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -76.9, -66.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -76.9, -66.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -49.3, -94 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -49.3, -94 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -75.7, -67.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -75.7, -67.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -92, -51.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -92, -51.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -75.6, -68 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -75.6, -68 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -89.6, -68.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -89.6, -68.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -75.8, -68.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -75.8, -68.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -62.3, -55.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -62.3, -55.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -74.9, -67.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -74.9, -67.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -75.6, -68.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -75.6, -68.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -75.6, -54.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -75.6, -54.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -75.5, -69 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -75.5, -69 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -85, -59.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -85, -59.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -75.4, -69.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -75.4, -69.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -83.6, -77.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -83.6, -77.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -74.9, -69.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -74.9, -69.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -65.6, -78.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -65.6, -78.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -74.7, -69.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -74.7, -69.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -63.8, -69.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -63.8, -69.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -75.6, -70.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -75.6, -70.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -83.5, -62.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -83.5, -62.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -75, -70.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -75, -70.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -75, -60.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -75, -60.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -75, -70.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -75, -70.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -83.8, -79.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -83.8, -79.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -75.1, -71.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -75.1, -71.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -75, -81.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -75, -81.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -75, -71 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -75, -71 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -84.5, -71.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -84.5, -71.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -74.4, -71.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -74.4, -71.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -64.7, -81.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -64.7, -81.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -74.3, -71.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -74.3, -71.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -65.5, -63.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -65.5, -63.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -74.4, -72.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -74.4, -72.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -63.4, -72.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -63.4, -72.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -74.4, -72.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -74.4, -72.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -74.4, -63.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -74.4, -63.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -74.3, -73.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -74.3, -73.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -65.5, -82.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -65.5, -82.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -74.5, -73.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -74.5, -73.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -83.4, -82.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -83.4, -82.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -74.3, -73.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -74.3, -73.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -74.3, -84.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -74.3, -84.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -74.3, -74.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -74.3, -74.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -65.3, -74.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -65.3, -74.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -73.9, -74.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -73.9, -74.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -82, -66.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -82, -66.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -73.8, -74.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -73.8, -74.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -83.2, -75 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -83.2, -75 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -73.7, -75.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -73.7, -75.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -64.7, -66.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -64.7, -66.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -73.6, -75.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -73.6, -75.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -62.2, -75.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -62.2, -75.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -73.4, -75.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -73.4, -75.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -73.3, -87.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -73.3, -87.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -73.3, -76.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -73.3, -76.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -83.4, -86.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -83.4, -86.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -73.3, -76.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -73.3, -76.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -84.1, -76.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -84.1, -76.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -73.1, -77 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -73.1, -77 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -73.1, -69 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -73.1, -69 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -85.3, -77.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -85.3, -77.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -73.6, -77.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -73.6, -77.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -53.7, -97.8 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -53.7, -97.8 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -73.8, -77.9 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -73.8, -77.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -73.7, -78.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -73.7, -78.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -73.6, -78.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -73.6, -78.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -91.9, -51 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -91.9, -51 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -98.9, -41.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -98.9, -41.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -103.8, -35.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -103.8, -35.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -107.8, -30.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -107.8, -30.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -111.1, -27.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -111.1, -27.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -113.9, -24 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -113.9, -24 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -116.3, -21.5 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -116.3, -21.5 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -118.4, -19.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -118.4, -19.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -120.2, -17.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -120.2, -17.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -121.8, -16.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -121.8, -16.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -123.2, -14.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -123.2, -14.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -124.5, -13.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -124.5, -13.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -125.5, -12.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -125.5, -12.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -126.4, -12 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -126.4, -12 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -127.2, -11.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -127.2, -11.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -127.8, -10.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -127.8, -10.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -128.3, -10.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -128.3, -10.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -128.7, -10 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -128.7, -10 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -128.9, -9.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -128.9, -9.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -129.1, -9.7 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -129.1, -9.7 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -129.1, -9.6 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -129.1, -9.6 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.13, 0.15 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.13, 0.15 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -32 );

-- ** 音 ** --
--2号舞い上がる
SE025 = playSeVer2( spep_2 + 2, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  100 );
SE026 = playSeVer2( spep_2 + 2, 1117, "",spep_2 + 88, 0, 36, -1);
SE027 = playSeVer2( spep_2 + 2, 44, "", 0, 0, 0, -1);
--2号光る
SE028 = playSeVer2( spep_2 + 28, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE028, 136 );
setPitch( spep_2 + 28, SE028, 100 );
setTimeStretch( SE028, 1.07, 30, 4 );
SE029 = playSeVer2( spep_2 + 36, 1303, "",spep_2 + 138, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 36, SE029, 46 );
--ライダーキック
SE030 = playSeVer2( spep_2 + 80, 1258, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 84, 1182, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 84, 9, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 84, 1314, "",spep_2 + 400, 0, 44, -1);
SE034 = playSeVer2( spep_2 + 84, 1227, "",spep_2 + 400, 0, 44, -1);
--敵ヒット
SE035 = playSeVer2( spep_2 + 198, 1120, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 198, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 200, 1359, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 200, 1443, "", 0, 0, 0, 0.5);
--飛行音
SE039 = playSeVer2( spep_2 + 200, 1019, "", 0, 0, 0, -1);
setPitch( spep_2 + 200, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );
SE040 = playSeVer2( spep_2 + 264, 1019, "", 0, 0, 0, -1);
setPitch( spep_2 + 258, SE040, 400 );
setTimeStretch( SE040, 1.27, 30, 4 );
SE041 = playSeVer2( spep_2 + 328, 1019, "",spep_2 + 400, 0, 40, -1);
setPitch( spep_2 + 328, SE041, 400 );
setTimeStretch( SE041, 1.27, 30, 4 );
--敵吹き飛ぶ
SE042 = playSeVer2( spep_2 + 340, 1027, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 340, 1121, "",spep_2 + 446, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 340, SE043, 73 );
SE044 = playSeVer2( spep_2 + 340, 1183, "",spep_2 + 446, 0, 30, -1);
SE045 = playSeVer2( spep_2 + 340, 1068, "", 0, 0, 0, -1);
--地面激突
SE046 = playSeVer2( spep_2 + 400, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 406, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 428 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 532 - 4

end
