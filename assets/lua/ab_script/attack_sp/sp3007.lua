--1033030:UR_プイプイ_必殺技：スナイプショット
--sp_effect_b1_00364
--sp3007

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164426;  -- 敵より前 ef_001
SP_02 = 164427;  -- 敵より後 ef_002



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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 304;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 102);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 102, SP_02, spep_2 + 102 -1 + 2, 1);
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
-- 敵より前
-------------------------------------------------
MAX_FRAME_0 = 304;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵より前(ef_001)
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
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 0 ); --カットイン(セリフ)
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

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 128 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 80 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 96 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, 292.3, 117.5 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 292.3, 117.5 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 266.8, 71.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 266.8, 71.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 241.1, 25.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 241.1, 25.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 215.4, -20 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 215.4, -20 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 189.7, -65.8 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 189.7, -65.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 256.4, -59.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 256.4, -59.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 189.2, -94.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 189.2, -94.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 219.9, -103.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 219.9, -103.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 228.3, -106.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 228.3, -106.4 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 233.3, -107.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 233.3, -107.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 236.6, -109 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 236.6, -109 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 238.9, -109.7 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 238.9, -109.7 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 240.7, -110.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 240.7, -110.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 241.9, -110.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 241.9, -110.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 242.9, -110.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 242.9, -110.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 243.6, -111.1 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 243.6, -111.1 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 244.1, -111.3 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 244.1, -111.3 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 244.5, -111.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 244.5, -111.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 244.7, -111.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 244.7, -111.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 244.9, -111.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 244.9, -111.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 245.1, -111.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 245.1, -111.6 , 0 );

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 56.8 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 56.8 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 63.1 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 63.1 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 63.6 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, 63.6 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 64.3 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 64.3 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 64.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 64.8 );

--敵の動き2

setDisp( spep_0 + 188 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 188 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 240 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 188 + OFFSET_X, 1, 180.9, 2.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 180.9, 2.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 175.1, 3.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 175.1, 3.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 174.6, 3.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 174.6, 3.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 174.2, 3.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 174.2, 3.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 173.5, 3.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 173.5, 3.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 172.7, 3.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 172.7, 3.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 172, 4.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 172, 4.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 171.2, 4.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 171.2, 4.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 184.2, -9.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 184.2, -9.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 158, 10.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 158, 10.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 176.8, 8.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 176.8, 8.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 155.7, 0.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 155.7, 0.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 171.4, 10.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 171.4, 10.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 151.8, 12.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 151.8, 12.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 167.5, 2.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 167.5, 2.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 156.6, 28.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 156.6, 28.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 174.2, 34 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 174.2, 34 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 160.5, 22.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 160.5, 22.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 202.4, 110 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 202.4, 110 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 263.7, 488.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 263.7, 488.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 311.7, 683.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 311.7, 683.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 359.8, 878.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 359.8, 878.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 407.8, 1073 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 407.8, 1073 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 455.8, 1268 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 455.8, 1268 , 0 );

setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.85, 2.85 );

setRotateKey( spep_0 + 188 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -36.2 );

--敵の動き3

setDisp( spep_0 + 260 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 306 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 260 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 260 + OFFSET_X, 1, -138.4, -830.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -138.4, -830.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 17.4, 82 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 17.4, 82 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 38.8, 207.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 38.8, 207.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 50.2, 273.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 50.2, 273.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 57.3, 315.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 57.3, 315.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 62.2, 344.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 62.2, 344.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 65.7, 364.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 65.7, 364.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 68.3, 379.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 68.3, 379.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 70.2, 391 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 70.2, 391 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 71.7, 399.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 71.7, 399.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 72.8, 405.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 72.8, 405.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 73.6, 410.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 73.6, 410.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 74.2, 414.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 74.2, 414.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 74.7, 417.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 74.7, 417.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 75.1, 419.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 75.1, 419.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 75.3, 420.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 75.3, 420.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 75.5, 421.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 75.5, 421.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 75.6, 422.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 75.6, 422.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 75.7, 423.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 75.7, 423.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 75.8, 423.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 75.8, 423.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 75.8, 423.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 75.8, 423.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 75.8, 423.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 75.8, 423.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 75.7, 423.6 , 0 );

setScaleKey( spep_0 + 260 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.49, 0.49 );

setRotateKey( spep_0 + 260 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 51 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 51 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 53.7 );

-- ** 音 ** --

--ジャンプ
SE001 = playSeVer2( spep_0 + 0, 37, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1207, "",spep_0 + 28, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
setPitch( spep_0 + 0, SE002, -300 );
setTimeStretch( SE002, 0.8, 30, 4 );

--回転する
SE004 = playSeVer2( spep_0 + 30, 1278, "",spep_0 + 104, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 50 );
SE005 = playSeVer2( spep_0 + 32, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

--回転する
SE006 = playSeVer2( spep_0 + 40, 1116, "",spep_0 + 98, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 52, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE007, 68 );
SE008 = playSeVer2( spep_0 + 82, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE008, 73 );

--キック
SE009 = playSeVer2( spep_0 + 90, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE010 = playSeVer2( spep_0 + 118, 9, "", 0, 26, 0, -1);
SE011 = playSeVer2( spep_0 + 138, 1117, "", 0, 0, 0, -1);

--腹パン
SE012 = playSeVer2( spep_0 + 170, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE012, 71 );
SE013 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE014 = playSeVer2( spep_0 + 230, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 230, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 230, 1179, "",spep_0 + 316, 0, 18, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 236, 1121, "",spep_0 + 318, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --304F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;

-- ** 音 ** --

--気弾溜め
SE018 = playSeVer2( spep_1 + 88, 1204, "",spep_1 + 188, 8, 18, -1);
setSeVolumeByWorkId( spep_1 + 88, SE018, 300 );
setStartTimeMs( SE018,  1733 );
setPitch( spep_1 + 88, SE018, -100 );
setTimeStretch( SE018, 0.93, 30, 4 );
SE020 = playSeVer2( spep_1 + 52, 1442, "",spep_1 + 180, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 52, SE020, 120 );
SE021 = playSeVer2( spep_1 + 92, 1282, "",spep_1 + 174, 30, 16, -1);
setSeVolumeByWorkId( spep_1 + 92, SE021, 40 );
setPitch( spep_1 + 92, SE021, -500 );
setTimeStretch( SE021, 0.67, 30, 4 );

-------------------------------------------------
-- 敵より後
-------------------------------------------------
MAX_FRAME_2 = 384;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵より後(エフェクト名)
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
setDisp( spep_2 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 114.2, 376.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 114.2, 376.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 114.1, 376.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 114.1, 376.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 114, 375.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 114, 375.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 113.6, 374.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 113.6, 374.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 113.1, 372.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 113.1, 372.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 112.4, 369.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 112.4, 369.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 111.4, 366.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 111.4, 366.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 110.1, 361.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 110.1, 361.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 108.3, 354.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 108.3, 354.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 105.7, 345 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 105.7, 345 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 102.1, 331.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 102.1, 331.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 96.6, 311.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 96.6, 311.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 86.7, 274.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 86.7, 274.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 35.5, 85.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 35.5, 85.8 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 5.68, 5.68 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 53.9 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 53.9 );

-- ** 音 ** --

--気弾発射
SE022 = playSeVer2( spep_2 + 66, 1145, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 66, 1130, "", 0, 0, 0, -1);

--気弾飛んでいく
SE024 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 116, 1202, "",spep_2 + 182, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 116, SE025, 148 );

--爆発
SE026 = playSeVer2( spep_2 + 152, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 162, 1024, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 162, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE028, 58 );

--画面遷移
SE029 = playSeVer2( spep_2 + 250, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE029, 50 );

--炎
SE030 = playSeVer2( spep_2 + 260, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE030, 54 );

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 384F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 敵より前
-------------------------------------------------
MAX_FRAME_0 = 304;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵より前(ef_001)
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

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 128 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 80 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 90 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 96 + OFFSET_X, 1,105 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, -292.3, 117.5 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -292.3, 117.5 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -266.8, 71.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -266.8, 71.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -241.1, 25.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -241.1, 25.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -215.4, -20 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -215.4, -20 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -189.7, -65.8 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -189.7, -65.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -256.4, -59.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -256.4, -59.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -189.2, -94.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -189.2, -94.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -219.9, -103.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -219.9, -103.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -228.3, -106.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -228.3, -106.4 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -233.3, -107.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -233.3, -107.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -236.6, -109 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -236.6, -109 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -238.9, -109.7 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -238.9, -109.7 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -240.7, -110.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -240.7, -110.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -241.9, -110.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -241.9, -110.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -242.9, -110.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -242.9, -110.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -243.6, -111.1 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -243.6, -111.1 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -244.1, -111.3 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -244.1, -111.3 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -244.5, -111.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -244.5, -111.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -244.7, -111.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -244.7, -111.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -244.9, -111.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -244.9, -111.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -245.1, -111.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -245.1, -111.6 , 0 );

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -63.1 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -63.1 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -64.8 );

--敵の動き2

setDisp( spep_0 + 188 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 188 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 240 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 188 + OFFSET_X, 1, -180.9, 2.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -180.9, 2.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -175.1, 3.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -175.1, 3.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -174.6, 3.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -174.6, 3.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -174.2, 3.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -174.2, 3.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -173.5, 3.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -173.5, 3.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -172.7, 3.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -172.7, 3.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -172, 4.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -172, 4.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -171.2, 4.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -171.2, 4.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -184.2, -9.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -184.2, -9.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -158, 10.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -158, 10.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -176.8, 8.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -176.8, 8.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -155.7, 0.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -155.7, 0.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -171.4, 10.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -171.4, 10.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -151.8, 12.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -151.8, 12.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -167.5, 2.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -167.5, 2.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -156.6, 28.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -156.6, 28.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -174.2, 34 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -174.2, 34 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -160.5, 22.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -160.5, 22.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -202.4, 110 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -202.4, 110 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -263.7, 488.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -263.7, 488.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -311.7, 683.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -311.7, 683.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -359.8, 878.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -359.8, 878.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -407.8, 1073 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -407.8, 1073 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -455.8, 1268 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -455.8, 1268 , 0 );

setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.85, 2.85 );

setRotateKey( spep_0 + 188 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 36.2 );

--敵の動き3

setDisp( spep_0 + 260 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 306 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 260 + OFFSET_X, 1,105 );

setMoveKey( spep_0 + 260 + OFFSET_X, 1, 138.4, -830.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 138.4, -830.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -17.4, 82 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -17.4, 82 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -38.8, 207.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -38.8, 207.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -50.2, 273.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -50.2, 273.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -57.3, 315.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -57.3, 315.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -62.2, 344.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -62.2, 344.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -65.7, 364.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -65.7, 364.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -68.3, 379.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -68.3, 379.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -70.2, 391 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -70.2, 391 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -71.7, 399.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -71.7, 399.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -72.8, 405.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -72.8, 405.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -73.6, 410.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -73.6, 410.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -74.2, 414.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -74.2, 414.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -74.7, 417.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -74.7, 417.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -75.1, 419.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -75.1, 419.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -75.3, 420.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -75.3, 420.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -75.5, 421.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -75.5, 421.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -75.6, 422.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -75.6, 422.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -75.7, 423.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -75.7, 423.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -75.8, 423.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -75.8, 423.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -75.8, 423.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -75.8, 423.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -75.8, 423.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -75.8, 423.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -75.7, 423.6 , 0 );

setScaleKey( spep_0 + 260 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.49, 0.49 );

setRotateKey( spep_0 + 260 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -51 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -51 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -51.7 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -51.7 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -53.7 );

-- ** 音 ** --

--ジャンプ
SE001 = playSeVer2( spep_0 + 0, 37, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1207, "",spep_0 + 28, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
setPitch( spep_0 + 0, SE002, -300 );
setTimeStretch( SE002, 0.8, 30, 4 );

--回転する
SE004 = playSeVer2( spep_0 + 30, 1278, "",spep_0 + 104, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 50 );
SE005 = playSeVer2( spep_0 + 32, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

--回転する
SE006 = playSeVer2( spep_0 + 40, 1116, "",spep_0 + 98, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 52, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE007, 68 );
SE008 = playSeVer2( spep_0 + 82, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE008, 73 );

--キック
SE009 = playSeVer2( spep_0 + 90, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE010 = playSeVer2( spep_0 + 118, 9, "", 0, 26, 0, -1);
SE011 = playSeVer2( spep_0 + 138, 1117, "", 0, 0, 0, -1);

--腹パン
SE012 = playSeVer2( spep_0 + 170, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE012, 71 );
SE013 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE014 = playSeVer2( spep_0 + 230, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 230, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 230, 1179, "",spep_0 + 316, 0, 18, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 236, 1121, "",spep_0 + 318, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --304F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;

-- ** 音 ** --

--気弾溜め
SE018 = playSeVer2( spep_1 + 88, 1204, "",spep_1 + 188, 8, 18, -1);
setSeVolumeByWorkId( spep_1 + 88, SE018, 300 );
setStartTimeMs( SE018,  1733 );
setPitch( spep_1 + 88, SE018, -100 );
setTimeStretch( SE018, 0.93, 30, 4 );
SE020 = playSeVer2( spep_1 + 52, 1442, "",spep_1 + 180, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 52, SE020, 120 );
SE021 = playSeVer2( spep_1 + 92, 1282, "",spep_1 + 174, 30, 16, -1);
setSeVolumeByWorkId( spep_1 + 92, SE021, 40 );
setPitch( spep_1 + 92, SE021, -500 );
setTimeStretch( SE021, 0.67, 30, 4 );

-------------------------------------------------
-- 敵より後
-------------------------------------------------
MAX_FRAME_2 = 384;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵より後(エフェクト名)
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
setDisp( spep_2 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1,105 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, -114.2, 376.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -114.2, 376.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -114.1, 376.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -114.1, 376.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -114, 375.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -114, 375.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -113.6, 374.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -113.6, 374.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -113.1, 372.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -113.1, 372.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -112.4, 369.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -112.4, 369.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -111.4, 366.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -111.4, 366.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -110.1, 361.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -110.1, 361.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -108.3, 354.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -108.3, 354.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -105.7, 345 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -105.7, 345 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -102.1, 331.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -102.1, 331.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -96.6, 311.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -96.6, 311.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -86.7, 274.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -86.7, 274.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -35.5, 85.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -35.5, 85.8 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 5.68, 5.68 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, -53.9 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -53.9 );

-- ** 音 ** --

--気弾発射
SE022 = playSeVer2( spep_2 + 66, 1145, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 66, 1130, "", 0, 0, 0, -1);

--気弾飛んでいく
SE024 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 116, 1202, "",spep_2 + 182, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 116, SE025, 148 );

--爆発
SE026 = playSeVer2( spep_2 + 152, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 162, 1024, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 162, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE028, 58 );

--画面遷移
SE029 = playSeVer2( spep_2 + 250, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE029, 50 );

--炎
SE030 = playSeVer2( spep_2 + 260, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE030, 54 );

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 384F


end
