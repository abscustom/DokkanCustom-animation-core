--1033060:LR_魔人ベジータ+超サイヤ人2孫悟空(天使)_EX必殺技：ファイナルバーストキャノン
--sp_effect_a9_00168
--sp3006

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164453; --カード前 ef_001
SP_02  = 164454; --カード後 ef_002
SP_03  = 164455; --全体攻撃 前面 ef_003
SP_03b = 164456; --全体攻撃 背面 ef_003b

--エフェクト(敵)
SP_01r = 164460;--カード前　敵側 ef_001r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

--------------------------

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

ENABLE_AUTO_TIME_STRETCH(0.9);

DISABLE_VOICE_IF_DOUBLE_SPEED();

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 +  496;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 184);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 184-1, SP_01, spep_2 + 184 + 2-1, 1);
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
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 496;

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

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 168 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 66 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 92 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 28.4, 3.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 28.4, 3.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 42.5, 3.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 42.5, 3.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 114.8, -11 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 114.8, -11 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 90.7, 11.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 90.7, 11.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 130.8, -49.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 130.8, -49.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 136.9, 29.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 136.9, 29.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 140.9, 7.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 140.9, 7.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 100.7, -6.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 100.7, -6.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 122.8, -51 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 122.8, -51 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 134.9, -6.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 134.9, -6.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 128.8, -42.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 128.8, -42.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 151.2, -51.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 151.2, -51.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 169.4, -101.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 169.4, -101.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 201.5, -137.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 201.5, -137.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 189.5, -109.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 189.5, -109.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 187.5, -123.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 215.6, -101 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 215.6, -101 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 201.6, -80.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 201.6, -80.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 235.7, -125.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 235.7, -125.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 219.7, -76.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 219.7, -76.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 215.6, -117 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 215.6, -117 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 219.6, -93 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 219.6, -93 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 57, -131.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 57, -131.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 50.5, -183.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 50.5, -183.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 60.5, -217.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 60.5, -217.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 70.5, -195.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 70.5, -195.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 56.5, -209.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 56.5, -209.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 60.5, -201.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 65, -109.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 65, -109.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 55, -91.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 55, -91.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 87.2, -173 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 87.2, -173 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 97.2, -151 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 97.2, -151 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 83.2, -165 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 83.2, -165 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 87.2, -157 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 87.2, -157 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 32.2 );


--敵の動き2
setDisp( spep_0 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 198 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 198 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -124.8, -371.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -124.8, -371.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 331.8, -24.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 42.3, -276.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 102.3, -102.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 102.3, -102.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 85.2, -85.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 66, -138 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 66, -138 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 319.7, -258.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 319.7, -258.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -26.7, -432.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -26.7, -432.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 14.6, -403.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 14.6, -403.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 127.9, -63.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 127.9, -63.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 86.4, -117.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 86.4, -117.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 57.8, -131.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 167, -103 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 167, -103 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 6.5, -611.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 6.5, -611.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 5.2, -615.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 5.2, -615.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 4, -619.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 4, -619.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 2.8, -623.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 2.8, -623.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 224.7, -537.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 224.7, -537.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 308.9, -662 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 308.9, -662 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 308.9, -561.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 308.9, -561.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 303.6, -645.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 303.6, -645.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 408.5, -703.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 408.5, -703.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 469.4, -749 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 469.4, -749 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 542.3, -790.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 542.3, -790.6 , 0 );

setScaleKey( spep_0 + 198 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 198 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -21.5 );

-- ** 音 ** --

--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--ラッシュ
SE004 = playSeVer2( spep_0 + 62, 1049, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1187, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 86, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 98, 1414, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 98, 1009, "",spep_0 + 126, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 98, 1110, "",spep_0 + 126, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 104, 1010, "",spep_0 + 132, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 104, 1110, "",spep_0 + 132, 0, 8, -1);
--気ダメ
SE012 = playSeVer2( spep_0 + 122, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE012, 120 );
SE013 = playSeVer2( spep_0 + 122, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE013, 130 );
--ラッシュ
SE014 = playSeVer2( spep_0 + 120, 1009, "", spep_0 + 150, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 130, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 130, 1110, "", 0 + 148, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 136, 1414, "", 0, 0, 0, -1);
--SE018 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 152, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, -1);
--振りかぶる
SE022 = playSeVer2( spep_0 + 180, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 180, 1116, "",spep_0 + 220, 0, 18, -1);
--膝蹴り
SE024 = playSeVer2( spep_0 + 196, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 200, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 214, 1190, "", 0, 0, 0, -1);
--蹴り飛ばす
SE027 = playSeVer2( spep_0 + 276, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE027, 158 );
SE028 = playSeVer2( spep_0 + 284, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 140 );
--気を高める
SE029 = playSeVer2( spep_0 + 316, 1222, "",spep_0 + 398, 0, 34, -1);
SE030 = playSeVer2( spep_0 + 320, 1356, "",spep_0 + 428, 0, 18, -1);
SE031 = playSeVer2( spep_0 + 324, 1265, "",spep_0 + 530, 0, 24, -1);
--顔カットイン
SE032 = playSeVer2( spep_0 + 350, 1018, "", 0, 0, 0, -1);
--気ダメ
SE033 = playSeVer2( spep_0 + 406, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE033, 89 );
SE034 = playSeVer2( spep_0 + 406, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE034, 77 );
SE035 = playSeVer2( spep_0 + 406, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE035, 73 );
SE036 = playSeVer2( spep_0 + 410, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE036, 71 );
--オーラ
SE037 = playSeVer2( spep_0 + 414, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE037, 50 );
SE038 = playSeVer2( spep_0 + 438, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE038, 50 );
SE039 = playSeVer2( spep_0 + 462, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE039, 50 );
SE040 = playSeVer2( spep_0 + 486, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE040, 50 );
--カードカットイン
--SE041 = playSeVer2( spep_1 + 14, 1035, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「ジャマをするな！！」
playVoice( spep_0 + 318, 1171 );
setVoiceVolume( spep_0 + 318, 1171, 122 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 496

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 654;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
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
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, -154.9, -205.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -154.9, -205.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -111.5, -159 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -111.5, -159 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -68.1, -112.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -68.1, -112.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -24.6, -65.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -24.6, -65.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 18.8, -18.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 18.8, -18.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 62.2, 27.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 62.2, 27.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 105.7, 74.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 105.7, 74.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 106.6, 75.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 106.6, 75.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 107.5, 75.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 107.5, 75.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 108.4, 76.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 108.4, 76.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 109.3, 76.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 109.3, 76.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 110.2, 77.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 110.2, 77.2 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.03, 1.03 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 64 );


--敵の動き2
setDisp( spep_2 + 362 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 406 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 362 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 378 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 362 + OFFSET_X, 1, -238.1, 456.5 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -238.1, 456.5 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -230.7, 442.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -230.7, 442.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -223.2, 427.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -223.2, 427.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -215.8, 413.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -215.8, 413.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -208.4, 398.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -208.4, 398.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -201, 384.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -201, 384.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -193.5, 369.9 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -193.5, 369.9 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -186.1, 355.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -186.1, 355.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -149.7, 300.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -149.7, 300.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -100.9, 215.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -100.9, 215.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -65.1, 167.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -65.1, 167.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -24.9, 84 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -24.9, 84 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 11, 37.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 11, 37.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 59.7, -47.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 59.7, -47.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 95.6, -96.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 95.6, -96.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 135.8, -179.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 135.8, -179.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 171.7, -225.9 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 171.7, -225.9 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 220.4, -311.1 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 220.4, -311.1 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 256.3, -359.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 256.3, -359.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 296.5, -442.8 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 296.5, -442.8 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 332.3, -489.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 332.3, -489.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 381.1, -574.5 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 381.1, -574.5 , 0 );

setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.19, 1.19 );

setRotateKey( spep_2 + 362 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 54 );

-- ** 音 ** --

--オーラ
SE042 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE042, 79 );
--気弾溜め
SE043 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 100, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 0, SE043, 50 );
SE044 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 4, 1116, "",spep_2 + 74, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 4, SE045, 79 );
--オーラ
SE046 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE046, 79 );
SE047 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE047, 79 );
--連続気弾発射
SE048 = playSeVer2( spep_2 + 62, 1406, "",spep_2 + 194, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 62, SE048, 130 );
SE049 = playSeVer2( spep_2 + 62, 1463, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 62, SE049, 112 );
SE050 = playSeVer2( spep_2 + 62, 1021, "", 0, 0, 0, -1);
--オーラ
SE051 = playSeVer2( spep_2 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE051, 79 );
--連続爆発
SE052 = playSeVer2( spep_2 + 146, 1023, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 146, 1188, "",spep_2 + 224, 0, 42, -1);
SE054 = playSeVer2( spep_2 + 162, 1024, "",spep_2 + 252, 0, 50, -1);
--オーラ
SE055 = playSeVer2( spep_2 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE055, 79 );
SE056 = playSeVer2( spep_2 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 208, SE056, 79 );
--気弾溜め２
SE057 = playSeVer2( spep_2 + 220, 1255, "",spep_2 + 270, 0, 22, -1);
SE058 = playSeVer2( spep_2 + 220, 1214, "",spep_2 + 276, 0, 16, -1);
SE059 = playSeVer2( spep_2 + 220, 1262, "",spep_2 + 272, 0, 16, -1);
--オーラ
SE060 = playSeVer2( spep_2 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE060, 79 );
--ラスト気弾発射
SE061 = playSeVer2( spep_2 + 254, 1109, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 254, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE062, 75 );
SE063 = playSeVer2( spep_2 + 254, 1423, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 254, 1193, "",spep_2 + 508, 0, 56, 0.5);
--オーラ
SE065 = playSeVer2( spep_2 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE065, 79 );
--敵ヒット
SE066 = playSeVer2( spep_2 + 370, 1021, "", 0, 0, 0, -1);
--爆発
SE067 = playSeVer2( spep_2 + 408, 1188, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 436, 1069, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 444, 1174, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE069, 200 );
SE070 = playSeVer2( spep_2 + 444, 1159, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 444, 1226, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 448, 1044, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 476, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE073, 71 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 596); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 654

else
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);
spep_0 = 0;

-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 496;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カード前(ef_001r)
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

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 168 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 66 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 86 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 92 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, -28.4, 3.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -28.4, 3.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -42.5, 3.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -42.5, 3.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -114.8, -11 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -114.8, -11 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -90.7, 11.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -90.7, 11.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -130.8, -49.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -130.8, -49.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -136.9, 29.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -136.9, 29.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -140.9, 7.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -140.9, 7.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -100.7, -6.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -100.7, -6.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -122.8, -51 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -122.8, -51 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -134.9, -6.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -134.9, -6.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -128.8, -42.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -128.8, -42.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -151.2, -51.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -151.2, -51.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -169.4, -101.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -169.4, -101.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -201.5, -137.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -201.5, -137.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -189.5, -109.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -189.5, -109.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -187.5, -123.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -215.6, -101 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -215.6, -101 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -201.6, -80.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -201.6, -80.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -235.7, -125.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -235.7, -125.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -219.7, -76.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -219.7, -76.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -215.6, -117 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -215.6, -117 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -219.6, -93 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -219.6, -93 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -57, -131.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -57, -131.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -50.5, -183.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -50.5, -183.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -60.5, -217.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -60.5, -217.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -70.5, -195.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -70.5, -195.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -56.5, -209.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -56.5, -209.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -60.5, -201.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -65, -109.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -65, -109.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -55, -91.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -55, -91.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -87.2, -173 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -87.2, -173 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -97.2, -151 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -97.2, -151 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -83.2, -165 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -83.2, -165 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -87.2, -157 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -87.2, -157 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -32.2 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -32.2 );


--敵の動き2
setDisp( spep_0 + 198 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 198 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 198 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 124.8, -371.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 124.8, -371.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -331.8, -24.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -42.3, -276.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -102.3, -102.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -102.3, -102.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -85.2, -85.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -66, -138 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -66, -138 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -319.7, -258.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -319.7, -258.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 26.7, -432.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 26.7, -432.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -14.6, -403.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -14.6, -403.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -127.9, -63.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -127.9, -63.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -86.4, -117.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -86.4, -117.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -57.8, -131.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -167, -103 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -167, -103 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -6.5, -611.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -6.5, -611.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -5.2, -615.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -5.2, -615.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -4, -619.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -4, -619.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -2.8, -623.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -2.8, -623.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -224.7, -537.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -224.7, -537.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -308.9, -662 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -308.9, -662 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -308.9, -561.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -308.9, -561.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -303.6, -645.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -303.6, -645.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -408.5, -703.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -408.5, -703.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -469.4, -749 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -469.4, -749 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -542.3, -790.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -542.3, -790.6 , 0 );

setScaleKey( spep_0 + 198 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 14.39, 14.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 13.2, 13.2 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 15.59, 15.59 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 198 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 21.5 );

-- ** 音 ** --

--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--ラッシュ
SE004 = playSeVer2( spep_0 + 62, 1049, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1187, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 86, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 98, 1414, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 98, 1009, "",spep_0 + 126, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 98, 1110, "",spep_0 + 126, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 104, 1010, "",spep_0 + 132, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 104, 1110, "",spep_0 + 132, 0, 8, -1);
--気ダメ
SE012 = playSeVer2( spep_0 + 122, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE012, 120 );
SE013 = playSeVer2( spep_0 + 122, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE013, 130 );
--ラッシュ
SE014 = playSeVer2( spep_0 + 120, 1009, "", spep_0 + 150, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 130, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 130, 1110, "", 0 + 148, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 136, 1414, "", 0, 0, 0, -1);
--SE018 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 152, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, -1);
--振りかぶる
SE022 = playSeVer2( spep_0 + 180, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 180, 1116, "",spep_0 + 220, 0, 18, -1);
--膝蹴り
SE024 = playSeVer2( spep_0 + 196, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 200, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 214, 1190, "", 0, 0, 0, -1);
--蹴り飛ばす
SE027 = playSeVer2( spep_0 + 276, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE027, 158 );
SE028 = playSeVer2( spep_0 + 284, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 140 );
--気を高める
SE029 = playSeVer2( spep_0 + 316, 1222, "",spep_0 + 398, 0, 34, -1);
SE030 = playSeVer2( spep_0 + 320, 1356, "",spep_0 + 428, 0, 18, -1);
SE031 = playSeVer2( spep_0 + 324, 1265, "",spep_0 + 530, 0, 24, -1);
-- --顔カットイン
-- SE032 = playSeVer2( spep_0 + 350, 1018, "", 0, 0, 0, -1);
--気ダメ
SE033 = playSeVer2( spep_0 + 406, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE033, 89 );
SE034 = playSeVer2( spep_0 + 406, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE034, 77 );
SE035 = playSeVer2( spep_0 + 406, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE035, 73 );
SE036 = playSeVer2( spep_0 + 410, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE036, 71 );
--オーラ
SE037 = playSeVer2( spep_0 + 414, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE037, 50 );
SE038 = playSeVer2( spep_0 + 438, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE038, 50 );
SE039 = playSeVer2( spep_0 + 462, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE039, 50 );
SE040 = playSeVer2( spep_0 + 486, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE040, 50 );
--カードカットイン
--SE041 = playSeVer2( spep_1 + 14, 1035, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「ジャマをするな！！」
--playVoice( spep_0 + 308, 1171 );
--setVoiceVolume( spep_0 + 308, 1171, 100 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 496

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 654;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
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
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 154.9, -205.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 154.9, -205.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 111.5, -159 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 111.5, -159 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 68.1, -112.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 68.1, -112.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 24.6, -65.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 24.6, -65.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -18.8, -18.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -18.8, -18.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -62.2, 27.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -62.2, 27.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -105.7, 74.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -105.7, 74.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -106.6, 75.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -106.6, 75.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -107.5, 75.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -107.5, 75.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -108.4, 76.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -108.4, 76.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -109.3, 76.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -109.3, 76.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -110.2, 77.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -110.2, 77.2 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.03, 1.03 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -64 );


--敵の動き2
setDisp( spep_2 + 362 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 406 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 362 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 378 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 362 + OFFSET_X, 1, 238.1, 456.5 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 238.1, 456.5 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 230.7, 442.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 230.7, 442.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 223.2, 427.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 223.2, 427.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 215.8, 413.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 215.8, 413.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 208.4, 398.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 208.4, 398.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 201, 384.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 201, 384.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 193.5, 369.9 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 193.5, 369.9 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 186.1, 355.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 186.1, 355.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 149.7, 300.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 149.7, 300.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 100.9, 215.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 100.9, 215.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 65.1, 167.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 65.1, 167.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 24.9, 84 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 24.9, 84 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -11, 37.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -11, 37.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -59.7, -47.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -59.7, -47.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -95.6, -96.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -95.6, -96.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -135.8, -179.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -135.8, -179.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -171.7, -225.9 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -171.7, -225.9 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -220.4, -311.1 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -220.4, -311.1 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -256.3, -359.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -256.3, -359.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -296.5, -442.8 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -296.5, -442.8 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -332.3, -489.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -332.3, -489.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -381.1, -574.5 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -381.1, -574.5 , 0 );

setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.19, 1.19 );

setRotateKey( spep_2 + 362 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -54 );

-- ** 音 ** --

--オーラ
SE042 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE042, 79 );
--気弾溜め
SE043 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 100, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 0, SE043, 50 );
SE044 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 4, 1116, "",spep_2 + 74, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 4, SE045, 79 );
--オーラ
SE046 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE046, 79 );
SE047 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE047, 79 );
--連続気弾発射
SE048 = playSeVer2( spep_2 + 62, 1406, "",spep_2 + 194, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 62, SE048, 130 );
SE049 = playSeVer2( spep_2 + 62, 1463, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 62, SE049, 112 );
SE050 = playSeVer2( spep_2 + 62, 1021, "", 0, 0, 0, -1);
--オーラ
SE051 = playSeVer2( spep_2 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE051, 79 );
--連続爆発
SE052 = playSeVer2( spep_2 + 146, 1023, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 146, 1188, "",spep_2 + 224, 0, 42, -1);
SE054 = playSeVer2( spep_2 + 162, 1024, "",spep_2 + 252, 0, 50, -1);
--オーラ
SE055 = playSeVer2( spep_2 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE055, 79 );
SE056 = playSeVer2( spep_2 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 208, SE056, 79 );
--気弾溜め２
SE057 = playSeVer2( spep_2 + 220, 1255, "",spep_2 + 270, 0, 22, -1);
SE058 = playSeVer2( spep_2 + 220, 1214, "",spep_2 + 276, 0, 16, -1);
SE059 = playSeVer2( spep_2 + 220, 1262, "",spep_2 + 272, 0, 16, -1);
--オーラ
SE060 = playSeVer2( spep_2 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE060, 79 );
--ラスト気弾発射
SE061 = playSeVer2( spep_2 + 254, 1109, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 254, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE062, 75 );
SE063 = playSeVer2( spep_2 + 254, 1423, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 254, 1193, "",spep_2 + 508, 0, 56, 0.5);
--オーラ
SE065 = playSeVer2( spep_2 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE065, 79 );
--敵ヒット
SE066 = playSeVer2( spep_2 + 370, 1021, "", 0, 0, 0, -1);
--爆発
SE067 = playSeVer2( spep_2 + 408, 1188, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 436, 1069, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 444, 1174, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 444, SE069, 200 );
SE070 = playSeVer2( spep_2 + 444, 1159, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 444, 1226, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 448, 1044, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 476, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE073, 71 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 596); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 654

end

else
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_z = 0;

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge - 12, 1042);
	pauseAll( SP_dodge, 67);

	speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

	kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

	entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
	endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
--回避しなかった場合
------------------------------------------------------

MAX_FRAME_z = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃 前面(ef_003)
setEffMoveKey( spep_z + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_z, start_f, 0, 0 , 0);
setEffScaleKey( spep_z + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_z, start_f, 1.0, 1.0);
setEffRotateKey( spep_z + 0, start_f, 0);
setEffRotateKey( spep_z + MAX_FRAME_z, start_f, 0);
setEffAlphaKey( spep_z + 0, start_f, 255);
setEffAlphaKey( spep_z + MAX_FRAME_z, start_f, 255);

start_b = entryEffect( spep_z + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 全体攻撃 背面(ef_003b)
setEffMoveKey( spep_z + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_z, start_b, 0, 0 , 0);
setEffScaleKey( spep_z + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_z, start_b, 1.0, 1.0);
setEffRotateKey( spep_z + 0, start_b, 0);
setEffRotateKey( spep_z + MAX_FRAME_z, start_b, 0);
setEffAlphaKey( spep_z + 0, start_b, 255);
setEffAlphaKey( spep_z + MAX_FRAME_z, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_z +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_z + 0, 1, 1);
setDisp( spep_z + 96 + OFFSET_X, 1, 0);

changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z + 12 + OFFSET_X, 1, 106 );

setMoveKey( spep_z + 0, 1, 5, -287.7 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, -2, -294.7 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, -2, -294.7 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 5, -294.7 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 5, -294.7 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, -1, -287.7 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, -1, -287.7 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 5, -287.7 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 5, -287.7 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, -2, -294.7 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, -2, -294.7 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 2.8, -294 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 2.8, -294 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, -3.1, -286.7 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, -3.1, -286.7 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 3, -286 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 3, -286 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, -3.7, -291.7 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, -3.7, -291.7 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 3.7, -289.9 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 3.7, -289.9 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, -1.8, -280.6 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, -1.8, -280.6 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, -4.2, -274.9 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, -4.2, -274.9 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 10.5, -284.6 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 10.5, -284.6 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, -4.7, -284.9 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, -4.7, -284.9 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 13.2, -254.8 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 13.2, -254.8 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, -0.8, -259.2 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, -0.8, -259.2 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 14.3, -267.1 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 14.3, -267.1 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, -0.5, -265.7 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, -0.5, -265.7 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 17.8, -233.7 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 17.8, -233.7 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 4.2, -236.3 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 4.2, -236.3 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 19.6, -242.5 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 19.6, -242.5 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 5.2, -239.2 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 5.2, -239.2 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 23.9, -205.5 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 23.9, -205.5 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 10.7, -206.3 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 10.7, -206.3 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 26.6, -210.7 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 26.6, -210.7 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 12.6, -205.5 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 12.6, -205.5 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 31.7, -169.9 , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, 31.7, -169.9 , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, 18.9, -168.6 , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, 18.9, -168.6 , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, 35.2, -170.8 , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, 35.2, -170.8 , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, 38.8, -137 , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, 38.8, -137 , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, 38.8, -137 , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, 38.8, -137 , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 73 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 74 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 75 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 76 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 77 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 78 + OFFSET_X, 1, 38.8, -137 , 0 );
setMoveKey( spep_z + 79 + OFFSET_X, 1, 38.8, -137 , 0 );
setMoveKey( spep_z + 80 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 81 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 82 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 83 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 84 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 85 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 86 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 87 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 88 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 89 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 90 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 91 + OFFSET_X, 1, 21.8, -163 , 0 );
setMoveKey( spep_z + 92 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 93 + OFFSET_X, 1, 23.8, -146 , 0 );
setMoveKey( spep_z + 94 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 95 + OFFSET_X, 1, 37.8, -159 , 0 );
setMoveKey( spep_z + 96 + OFFSET_X, 1, 21.8, -163 , 0 );

setScaleKey( spep_z + 0, 1, 2, 2 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 96 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 11 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 12 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_z + 96 + OFFSET_X, 1, -29.7 );

-- ** 音 ** --
--【連続攻撃】爆発
SE074 = playSeVer2( spep_z + 4, 1068, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_z + 4, 1024, "",spep_z + 124, 0, 28, -1);
SE076 = playSeVer2( spep_z + 4, 1174, "",spep_z + 128, 0, 30, -1);
setSeVolumeByWorkId( spep_z + 4, SE076, 209 );
SE077 = playSeVer2( spep_z + 8, 1044, "",spep_z + 120, 0, 18, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 10); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_z -2); -- 96

else
------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_z = 0;

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge - 12, 1042);
	pauseAll( SP_dodge, 67);

	speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

	kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

	entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
	endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
--回避しなかった場合
------------------------------------------------------

MAX_FRAME_z = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃 前面(ef_003)
setEffMoveKey( spep_z + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_z, start_f, 0, 0 , 0);
setEffScaleKey( spep_z + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_z, start_f, -1.0, 1.0);
setEffRotateKey( spep_z + 0, start_f, 0);
setEffRotateKey( spep_z + MAX_FRAME_z, start_f, 0);
setEffAlphaKey( spep_z + 0, start_f, 255);
setEffAlphaKey( spep_z + MAX_FRAME_z, start_f, 255);

start_b = entryEffect( spep_z + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 全体攻撃 背面(ef_003b)
setEffMoveKey( spep_z + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_z, start_b, 0, 0 , 0);
setEffScaleKey( spep_z + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_z, start_b, -1.0, 1.0);
setEffRotateKey( spep_z + 0, start_b, 0);
setEffRotateKey( spep_z + MAX_FRAME_z, start_b, 0);
setEffAlphaKey( spep_z + 0, start_b, 255);
setEffAlphaKey( spep_z + MAX_FRAME_z, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_z +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_z + 0, 1, 1);
setDisp( spep_z + 96 + OFFSET_X, 1, 0);

changeAnime( spep_z + 0, 1,4 );
changeAnime( spep_z + 12 + OFFSET_X, 1,6 );

setMoveKey( spep_z + 0, 1, -5, -287.7 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 2, -294.7 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 2, -294.7 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -5, -294.7 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -5, -294.7 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 1, -287.7 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 1, -287.7 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, -5, -287.7 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, -5, -287.7 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 2, -294.7 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, 2, -294.7 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, -2.8, -294 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, -2.8, -294 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 3.1, -286.7 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 3.1, -286.7 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, -3, -286 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, -3, -286 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 3.7, -291.7 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 3.7, -291.7 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, -3.7, -289.9 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, -3.7, -289.9 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 1.8, -280.6 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 1.8, -280.6 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 4.2, -274.9 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 4.2, -274.9 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, -10.5, -284.6 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, -10.5, -284.6 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 4.7, -284.9 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 4.7, -284.9 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, -13.2, -254.8 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, -13.2, -254.8 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 0.8, -259.2 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 0.8, -259.2 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, -14.3, -267.1 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, -14.3, -267.1 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 0.5, -265.7 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 0.5, -265.7 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, -17.8, -233.7 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, -17.8, -233.7 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, -4.2, -236.3 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, -4.2, -236.3 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, -19.6, -242.5 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, -19.6, -242.5 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, -5.2, -239.2 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, -5.2, -239.2 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, -23.9, -205.5 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, -23.9, -205.5 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, -10.7, -206.3 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, -10.7, -206.3 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, -26.6, -210.7 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, -26.6, -210.7 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, -12.6, -205.5 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, -12.6, -205.5 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, -31.7, -169.9 , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, -31.7, -169.9 , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, -18.9, -168.6 , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, -18.9, -168.6 , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, -35.2, -170.8 , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, -35.2, -170.8 , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, -38.8, -137 , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, -38.8, -137 , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, -38.8, -137 , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, -38.8, -137 , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 73 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 74 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 75 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 76 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 77 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 78 + OFFSET_X, 1, -38.8, -137 , 0 );
setMoveKey( spep_z + 79 + OFFSET_X, 1, -38.8, -137 , 0 );
setMoveKey( spep_z + 80 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 81 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 82 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 83 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 84 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 85 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 86 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 87 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 88 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 89 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 90 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 91 + OFFSET_X, 1, -21.8, -163 , 0 );
setMoveKey( spep_z + 92 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 93 + OFFSET_X, 1, -23.8, -146 , 0 );
setMoveKey( spep_z + 94 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 95 + OFFSET_X, 1, -37.8, -159 , 0 );
setMoveKey( spep_z + 96 + OFFSET_X, 1, -21.8, -163 , 0 );

setScaleKey( spep_z + 0, 1, 2, 2 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_z + 96 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 11 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 12 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_z + 96 + OFFSET_X, 1, 29.7 );

-- ** 音 ** --
--【連続攻撃】爆発
SE074 = playSeVer2( spep_z + 4, 1068, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_z + 4, 1024, "",spep_z + 124, 0, 28, -1);
SE076 = playSeVer2( spep_z + 4, 1174, "",spep_z + 128, 0, 30, -1);
setSeVolumeByWorkId( spep_z + 4, SE076, 209 );
SE077 = playSeVer2( spep_z + 8, 1044, "",spep_z + 120, 0, 18, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 10); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_z -2); -- 96


end
end