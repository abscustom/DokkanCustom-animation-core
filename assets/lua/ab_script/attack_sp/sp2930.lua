--1032330:UR_ガンマ2号+ピッコロ(潜在能力解放)_必殺技：ガンマ・ブラスター
--sp_effect_b4_00409
--sp2930

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164322;  -- クラウチングスタート〜構え ef_001
SP_01b = 164323;  -- クラウチングスタート〜構え ef_001b
SP_02 = 164324;  -- 発射〜命中〜爆発 ef_002
SP_02b = 164325;  -- 発射〜命中〜爆発 ef_002b


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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 422;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 90- 1);  -- スキップ先フレーム指定
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名

    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- クラウチングスタート〜構え
-------------------------------------------------
MAX_FRAME_0 = 422;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- クラウチングスタート〜構え(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- クラウチングスタート〜構え(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

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
setEffMoveKey( spep_x + 16, ctgogo, 155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 155, 515.5 , 0 );
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

--敵の動き1

setDisp( spep_0 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 152 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 122 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 122 + OFFSET_X, 1, 114.3, 87.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 114.3, 87.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 114.1, 86.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 114.1, 86.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 113.8, 86.4 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 113.8, 86.4 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 113.4, 85.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 113.4, 85.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 112.9, 84.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 112.9, 84.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 112.2, 83.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 112.2, 83.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 111.1, 82 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 111.1, 82 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 109.6, 79.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 109.6, 79.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 107.4, 75.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 107.4, 75.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 103.7, 69.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 103.7, 69.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 96.9, 58.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 96.9, 58.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 83.7, 37.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 83.7, 37.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 83.9, 34.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 83.9, 34.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 86.3, -9.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 86.3, -9.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 101.4, -193.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 101.4, -193.4 , 0 );

setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 7.5, 7.5 );

setRotateKey( spep_0 + 122 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 9.9 );

setBlendColor( spep_0 + 122 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );

--敵の動き2

y = -100;

setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 162 + OFFSET_X, 1, -27.5, 68.8 + y , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -27.5, 68.8 + y , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 23.5, 177.8 + y , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 23.5, 177.8 + y , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -79.3, -44.1 + y , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -79.3, -44.1 + y , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 6.9, 122.5 + y , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 6.9, 122.5 + y , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 25.1, 7.1 + y , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 25.1, 7.1 + y , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 1.2, 109.6 + y , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 1.2, 109.6 + y , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 55.3, 38.2 + y , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 55.3, 38.2 + y , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 71.5, 122.8 + y , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 71.5, 122.8 + y , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 68.7, 103.4 + y , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 68.7, 103.4 + y , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 69.8, 115.9 + y , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 69.8, 115.9 + y , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 73.1, 106.3 + y , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 73.1, 106.3 + y , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 76.3, 98.8 + y , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 76.3, 98.8 + y , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 75.6, 86.2 + y , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 75.6, 86.2 + y , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 59.9, 94.6 + y , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 59.9, 94.6 + y , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 70.2, 89 + y , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 70.2, 89 + y , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 60.5, 78.4 + y , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 60.5, 78.4 + y , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 59.8, 91.8 + y , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 59.8, 91.8 + y , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 68, 95.3 + y , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 68, 95.3 + y , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 61.9, 87.7 + y , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 61.9, 87.7 + y , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 70.6, 75 + y , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 70.6, 75 + y , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 53.5, 92.8 + y , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 53.5, 92.8 + y , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 65.2, 77.9 + y , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 65.2, 77.9 + y , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 55.6, 87.3 + y , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 55.6, 87.3 + y , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 63.7, 85.8 + y , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 63.7, 85.8 + y , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 55, 78.1 + y , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 55, 78.1 + y , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 59.4, 91.2 + y , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 59.4, 91.2 + y , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 52, 77.1 + y , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 52, 77.1 + y , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 75.8, -25.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 75.8, -25.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 279.7, -13.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 279.7, -13.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 225.6, -68.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 225.6, -68.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 299.4, -51.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 299.4, -51.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 271.7, -77.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 271.7, -77.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 320.7, -59.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 320.7, -59.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 295.8, -88.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 295.8, -88.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 327.8, -76.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 327.8, -76.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 307.7, -100.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 307.7, -100.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 332.7, -90.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 332.7, -90.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 316.7, -111.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 316.7, -111.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 335.8, -96.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 335.8, -96.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 324.8, -113.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 324.8, -113.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 336.8, -102.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 336.8, -102.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 483.3, -113.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 483.3, -113.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 635.5, -105.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 635.5, -105.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 787.6, -98.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 787.6, -98.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 939.8, -90.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 939.8, -90.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 1091.9, -82.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 1091.9, -82.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 1244.1, -75.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 1244.1, -75.1 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.78, 3.78 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 0 );

--敵の動き3

setDisp( spep_0 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 316 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 262 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 262 + OFFSET_X, 1, 23.4, -2.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 23.4, -2.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 23.6, -2.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 23.6, -2.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 24.4, -3.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 24.4, -3.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 25.6, -5.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 25.6, -5.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 27.3, -8.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 27.3, -8.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 29.4, -11.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 29.4, -11.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 32.1, -15.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 32.1, -15.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 35.2, -20.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 35.2, -20.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 38.8, -25.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 38.8, -25.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 42.9, -31.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 42.9, -31.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 47.5, -38.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 47.5, -38.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 52.6, -46.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 52.6, -46.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 58.2, -55 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 58.2, -55 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 64.2, -64.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 64.2, -64.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 70.8, -74.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 70.8, -74.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 77.8, -84.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 77.8, -84.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 85.3, -96.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 85.3, -96.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 93.4, -108.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 93.4, -108.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 101.9, -121.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 101.9, -121.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 110.9, -135 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 110.9, -135 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 120.5, -149.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 120.5, -149.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 130.5, -164.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 130.5, -164.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 141.1, -180.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 141.1, -180.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 152.2, -197.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 152.2, -197.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 163.8, -215.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 163.8, -215.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 176, -233.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 176, -233.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 188.6, -252.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 188.6, -252.9 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 262 + OFFSET_X, 1, 78 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 78 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 77.9 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 77.9 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 77.8 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 77.8 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 77.7 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 77.7 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 77.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 77.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 77.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 77.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 76.6 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 76.6 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 76.3 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 76.3 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 76.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 76.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 75.4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 75.4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 75.1 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 75.1 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 74.7 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 74.7 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 74.3 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 74.3 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 73.8 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 73.8 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 73.4 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 73.4 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 72.9 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 72.9 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 72.4 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 72.4 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 71.9 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 71.9 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 71.4 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 71.4 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 70.8 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 70.8 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 70.2 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 70.2 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 204, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構え
SE003 = playSeVer2( spep_0 + 2, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 85 );
SE004 = playSeVer2( spep_0 + 56, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 65 );

--向かっていく
SE005 = playSeVer2( spep_0 + 90, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 6, 1, 3, 0, 0, 0, 0 );

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

--パンチ
SE008 = playSeVer2( spep_0 + 140, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 146, 1187, "", 0, 0, 0, -1);

--パンチ２
SE010 = playSeVer2( spep_0 + 210, 1114, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 210, 1049, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 210, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_0 + 250, 1121, "",spep_0 + 374, 0, 64, -1);

--銃構える
SE014 = playSeVer2( spep_0 + 280, 1332, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 306, 1389, "", 0, 0, 0, -1);

--ブラスター溜め
SE017 = playSeVer2( spep_0 + 314, 1257, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 314, 1356, "",spep_0 + 434, 0, 18, -1);
SE019 = playSeVer2( spep_0 + 318, 1157, "",spep_0 + 434, 0, 16, -1);
SE020 = playSeVer2( spep_0 + 318, 1282, "",spep_0 + 434, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --422F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射〜命中〜爆発
-------------------------------------------------
MAX_FRAME_2 = 234;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 発射〜命中〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 発射〜命中〜爆発(ef_002b)
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

setDisp( spep_2 + 68 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 68 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 68 + OFFSET_X, 1, -329.4, 91.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -329.4, 91.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -315.3, 87.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -315.3, 87.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -299.6, 82.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -299.6, 82.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -282.3, 76.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -282.3, 76.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -263.4, 70.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -263.4, 70.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -242.8, 64.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -242.8, 64.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -220.7, 57.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -220.7, 57.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -197, 49.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -197, 49.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -171.6, 41.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -171.6, 41.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -144.7, 33.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -144.7, 33.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -116.1, 24.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -116.1, 24.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -85.9, 14.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -85.9, 14.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -54.1, 4.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -54.1, 4.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -20.8, -5.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -20.8, -5.8 , 0 );

setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 68 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 48 );

setBlendColor( spep_2 + 68 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 98 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--ブラスター発射
SE022 = playSeVer2( spep_2 + 12, 1512, "",spep_2 + 126, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 12, SE022, 68 );
SE023 = playSeVer2( spep_2 + 12, 1027, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 12, 1145, "",spep_2 + 126, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 12, SE024, 78 );
SE025 = playSeVer2( spep_2 + 12, 1312, "",spep_2 + 122, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 12, SE025, 140 );

--爆発
SE026 = playSeVer2( spep_2 + 96, 1067, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 104, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 130); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 232F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- クラウチングスタート〜構え
-------------------------------------------------
MAX_FRAME_0 = 422;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- クラウチングスタート〜構え(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- クラウチングスタート〜構え(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

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

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 155, 515.5 , 0 );
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

--敵の動き1

setDisp( spep_0 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 152 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 122 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 122 + OFFSET_X, 1, -114.3, 87.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -114.3, 87.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -114.1, 86.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -114.1, 86.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -113.8, 86.4 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -113.8, 86.4 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -113.4, 85.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -113.4, 85.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -112.9, 84.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -112.9, 84.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -112.2, 83.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -112.2, 83.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -111.1, 82 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -111.1, 82 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -109.6, 79.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -109.6, 79.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -107.4, 75.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -107.4, 75.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -103.7, 69.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -103.7, 69.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -96.9, 58.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -96.9, 58.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -83.7, 37.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -83.7, 37.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -83.9, 34.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -83.9, 34.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -86.3, -9.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -86.3, -9.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -101.4, -193.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -101.4, -193.4 , 0 );

setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 7.5, 7.5 );

setRotateKey( spep_0 + 122 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -9.9 );

setBlendColor( spep_0 + 122 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );

--敵の動き2

y = -100;

setDisp( spep_0 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 162 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 162 + OFFSET_X, 1, 27.5, 68.8 + y , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 27.5, 68.8 + y , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -23.5, 177.8 + y , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -23.5, 177.8 + y , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 79.3, -44.1 + y , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 79.3, -44.1 + y , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -6.9, 122.5 + y , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -6.9, 122.5 + y , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -25.1, 7.1 + y , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -25.1, 7.1 + y , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -1.2, 109.6 + y , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -1.2, 109.6 + y , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -55.3, 38.2 + y , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -55.3, 38.2 + y , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -71.5, 122.8 + y , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -71.5, 122.8 + y , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -68.7, 103.4 + y , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -68.7, 103.4 + y , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -69.8, 115.9 + y , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -69.8, 115.9 + y , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -73.1, 106.3 + y , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -73.1, 106.3 + y , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -76.3, 98.8 + y , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -76.3, 98.8 + y , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -75.6, 86.2 + y , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -75.6, 86.2 + y , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -59.9, 94.6 + y , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -59.9, 94.6 + y , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -70.2, 89 + y , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -70.2, 89 + y , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -60.5, 78.4 + y , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -60.5, 78.4 + y , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -59.8, 91.8 + y , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -59.8, 91.8 + y , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -68, 95.3 + y , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -68, 95.3 + y , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -61.9, 87.7 + y , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -61.9, 87.7 + y , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -70.6, 75 + y , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -70.6, 75 + y , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -53.5, 92.8 + y , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -53.5, 92.8 + y , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -65.2, 77.9 + y , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -65.2, 77.9 + y , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -55.6, 87.3 + y , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -55.6, 87.3 + y , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -63.7, 85.8 + y , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -63.7, 85.8 + y , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -55, 78.1 + y , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -55, 78.1 + y , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -59.4, 91.2 + y , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -59.4, 91.2 + y , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -52, 77.1 + y , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -52, 77.1 + y , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -75.8, -25.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -75.8, -25.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -279.7, -13.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -279.7, -13.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -225.6, -68.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -225.6, -68.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -299.4, -51.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -299.4, -51.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -271.7, -77.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -271.7, -77.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -320.7, -59.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -320.7, -59.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -295.8, -88.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -295.8, -88.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -327.8, -76.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -327.8, -76.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -307.7, -100.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -307.7, -100.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -332.7, -90.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -332.7, -90.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -316.7, -111.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -316.7, -111.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -335.8, -96.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -335.8, -96.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -324.8, -113.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -324.8, -113.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -336.8, -102.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -336.8, -102.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -483.3, -113.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -483.3, -113.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -635.5, -105.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -635.5, -105.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -787.6, -98.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -787.6, -98.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -939.8, -90.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -939.8, -90.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -1091.9, -82.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -1091.9, -82.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -1244.1, -75.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -1244.1, -75.1 , 0 );

setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.78, 3.78 );

setRotateKey( spep_0 + 162 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 0 );

--敵の動き3

setDisp( spep_0 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 316 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 262 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 262 + OFFSET_X, 1, -23.4, -2.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -23.4, -2.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -23.6, -2.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -23.6, -2.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -24.4, -3.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -24.4, -3.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -25.6, -5.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -25.6, -5.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -27.3, -8.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -27.3, -8.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -29.4, -11.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -29.4, -11.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -32.1, -15.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -32.1, -15.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -35.2, -20.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -35.2, -20.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -38.8, -25.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -38.8, -25.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -42.9, -31.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -42.9, -31.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -47.5, -38.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -47.5, -38.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -52.6, -46.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -52.6, -46.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -58.2, -55 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -58.2, -55 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -64.2, -64.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -64.2, -64.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -70.8, -74.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -70.8, -74.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -77.8, -84.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -77.8, -84.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -85.3, -96.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -85.3, -96.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -93.4, -108.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -93.4, -108.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -101.9, -121.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -101.9, -121.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -110.9, -135 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -110.9, -135 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -120.5, -149.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -120.5, -149.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -130.5, -164.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -130.5, -164.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -141.1, -180.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -141.1, -180.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -152.2, -197.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -152.2, -197.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -163.8, -215.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -163.8, -215.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -176, -233.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -176, -233.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -188.6, -252.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -188.6, -252.9 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 262 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -76.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -76.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -75.4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -75.4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -74.3 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -74.3 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -71.9 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -71.9 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -70.2 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -70.2 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 204, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構え
SE003 = playSeVer2( spep_0 + 2, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 85 );
SE004 = playSeVer2( spep_0 + 56, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 65 );

--向かっていく
SE005 = playSeVer2( spep_0 + 90, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 6, 1, 3, 0, 0, 0, 0 );

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

--パンチ
SE008 = playSeVer2( spep_0 + 140, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 146, 1187, "", 0, 0, 0, -1);

--パンチ２
SE010 = playSeVer2( spep_0 + 210, 1114, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 210, 1049, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 210, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_0 + 250, 1121, "",spep_0 + 374, 0, 64, -1);

--銃構える
SE014 = playSeVer2( spep_0 + 280, 1332, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 306, 1389, "", 0, 0, 0, -1);

--ブラスター溜め
SE017 = playSeVer2( spep_0 + 314, 1257, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 314, 1356, "",spep_0 + 434, 0, 18, -1);
SE019 = playSeVer2( spep_0 + 318, 1157, "",spep_0 + 434, 0, 16, -1);
SE020 = playSeVer2( spep_0 + 318, 1282, "",spep_0 + 434, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --422F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射〜命中〜爆発
-------------------------------------------------
MAX_FRAME_2 = 234;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 発射〜命中〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 発射〜命中〜爆発(ef_002b)
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

setDisp( spep_2 + 68 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 68 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 68 + OFFSET_X, 1, 329.4, 91.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 329.4, 91.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 315.3, 87.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 315.3, 87.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 299.6, 82.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 299.6, 82.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 282.3, 76.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 282.3, 76.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 263.4, 70.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 263.4, 70.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 242.8, 64.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 242.8, 64.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 220.7, 57.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 220.7, 57.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 197, 49.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 197, 49.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 171.6, 41.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 171.6, 41.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 144.7, 33.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 144.7, 33.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 116.1, 24.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 116.1, 24.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 85.9, 14.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 85.9, 14.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 54.1, 4.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 54.1, 4.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 20.8, -5.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 20.8, -5.8 , 0 );

setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 68 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -48 );

setBlendColor( spep_2 + 68 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 98 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--ブラスター発射
SE022 = playSeVer2( spep_2 + 12, 1512, "",spep_2 + 126, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 12, SE022, 68 );
SE023 = playSeVer2( spep_2 + 12, 1027, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 12, 1145, "",spep_2 + 126, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 12, SE024, 78 );
SE025 = playSeVer2( spep_2 + 12, 1312, "",spep_2 + 122, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 12, SE025, 140 );

--爆発
SE026 = playSeVer2( spep_2 + 96, 1067, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 104, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 130); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 232F

end
