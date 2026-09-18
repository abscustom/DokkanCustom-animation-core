--4031730:LR_ゴジータ+ゴールデンフリーザ_必殺技：メトロアタック
--sp_effect_b1_00341
--sp2910

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164010;  --ef_001 開幕、山間から飛行
SP_02  = 164011;  --ef_002 格闘→構えて殴り込んでフィニッシュ
SP_02b = 164012;  --ef_002_b ↑敵挟んだ背景

--エフェクト(敵)
SP_02r = 164013;  --ef_002_r 格闘→構えて殴り込んでフィニッシュ（敵側）


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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 156;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 580;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --パンチヒット
        SE050 = playSeVer2( spep_2 + 580 + 3, 1187, "", 0, 0, 0, -1);
        SE051 = playSeVer2( spep_2 + 580 + 3, 1120, "", 0, 0, 0, -1);
        SE052 = playSeVer2( spep_2 + 580 + 3, 1188, "", 0, 0, 0, -1);
    else end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕、山間から飛行
-------------------------------------------------
MAX_FRAME_0 = 156;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕、山間から飛行(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 46;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 165, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 165, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 165, 515.5 , 0 );
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
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1183, "",spep_0 + 144, 0, 8, -1);
setTimeStretch( SE002, 1.24, 30, 4 );
SE003 = playSeVer2( spep_0 + 16, 1304, "",spep_0 + 180, 0, 10, -1);
SE004 = playSeVer2( spep_0 + 30, 1072, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 40 );
SE007 = playSeVer2( spep_0 + 58, 1019, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 122, 1019, "",spep_0 + 176, 0, 8, -1);

--加速する
SE009 = playSeVer2( spep_0 + 138, 1182, "",spep_0 + 184, 0, 14, -1);
SE010 = playSeVer2( spep_0 + 142, 1277, "",spep_0 + 186, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --156f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE013 = playSeVer2( spep_1 + 78, 1232, "", 0, 0, 0, -1);


-------------------------------------------------
-- 格闘→構えて殴り込んでフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 822;


-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 格闘→構えて殴り込んでフィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ↑敵挟んだ背景(ef_002_b)
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
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 66 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 132 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 146 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 176 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 192 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 320 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 322 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 324 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 326 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 336 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 340 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 342 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 354 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, 363.9, -8.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 363.9, -8.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 273.9, -38.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 273.9, -38.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 320.4, -76.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 320.4, -76.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 375.6, -89.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 375.6, -89.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 117.9, -122.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 117.9, -122.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 171.9, -143.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 171.9, -143.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 174.3, -112.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 174.3, -112.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 176.7, -80.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 176.7, -80.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 179, -47.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 179, -47.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 136.5, 7.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 136.5, 7.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 91.1, 46.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 91.1, 46.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 14.5, 58.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 14.5, 58.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -133.1, 18.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -133.1, 18.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -185.2, 20.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -185.2, 20.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -237.3, 22.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -237.3, 22.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -139.3, 6.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -139.3, 6.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -68.3, -86.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -68.3, -86.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 2.5, -179.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 2.5, -179.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 132, -129.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 132, -129.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 201, -107.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 201, -107.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 286, -75.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 286, -75.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 211, 20.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 211, 20.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 130.2, 135.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 130.2, 135.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 141.7, -44.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 141.7, -44.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 136.4, -86.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 136.4, -86.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 164.2, -192.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 164.2, -192.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -3.3, -99.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -3.3, -99.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -33.6, -3.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -33.6, -3.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -135.4, 120.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -135.4, 120.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -5.6, 48.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -5.6, 48.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 56.2, -7.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 56.2, -7.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 116.2, -69.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 116.2, -69.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -53.9, -57.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -53.9, -57.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -147.8, -37.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -147.8, -37.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -229.7, -53.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -229.7, -53.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -41.6, -135.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -41.6, -135.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 56.2, -183.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 56.2, -183.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 156.1, -205.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 156.1, -205.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 206.1, -191.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 206.1, -191.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 277.7, -181.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 277.7, -181.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 327.8, -163.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 327.8, -163.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 288.1, -138.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 288.1, -138.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 295, -147.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 295, -147.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 238, -76.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 238, -76.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 43.9, -19.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 43.9, -19.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -150, 37.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -150, 37.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -343.7, 94 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -343.7, 94 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -537.2, 149.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -537.2, 149.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -200.1, 112.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -200.1, 112.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -67.4, 80.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -67.4, 80.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 65.1, 48.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 65.1, 48.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 160.3, -68.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 160.3, -68.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 82.7, -34.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 82.7, -34.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 25.2, 9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 25.2, 9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -90.4, 51.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -90.4, 51.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -90.4, 51.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -21, -2.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -21, -2.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 122.3, 57.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 122.3, 57.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 164.4, 61.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 164.4, 61.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 234.3, 159.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 234.3, 159.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 236.1, 160.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 236.1, 160.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 237.9, 160.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 237.9, 160.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 239.8, 161.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 239.8, 161.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 241.6, 162.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 241.6, 162.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 243.4, 163.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 243.4, 163.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 245.3, 164 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 245.3, 164 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 247.1, 164.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 247.1, 164.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 248.9, 165.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 248.9, 165.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 250.8, 166.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 250.8, 166.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 252.6, 167.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 252.6, 167.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 242.7, 165.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 242.7, 165.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 240.6, 164.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 240.6, 164.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 225.5, 161.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 225.5, 161.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 184.6, 153.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 184.6, 153.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 105, 138 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 105, 138 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 71.7, 49.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 71.7, 49.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 108.3, 50.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 108.3, 50.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 134.7, 25.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 134.7, 25.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 157, 4.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 157, 4.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 175.6, -13.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 175.6, -13.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 190.8, -27.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 190.8, -27.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 203, -39 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 203, -39 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 212.5, -48 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 212.5, -48 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 219.6, -54.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 219.6, -54.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 224.7, -59.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 224.7, -59.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 228.2, -62.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 228.2, -62.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 230.2, -64.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 230.2, -64.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 231.3, -65.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 231.3, -65.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 231.7, -66.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 231.7, -66.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 231.7, -66.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 231.7, -66.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 192.3, -29.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 192.3, -29.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 151.8, 6.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 151.8, 6.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 83, 40.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 83, 40.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 33.9, 90 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 33.9, 90 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 51.9, 90.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 51.9, 90.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 69.8, 90.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 69.8, 90.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 87.8, 91.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 87.8, 91.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 30.1, 88.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 30.1, 88.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 37.7, 80.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 37.7, 80.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 45.3, 72.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 45.3, 72.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 64.2, 65.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 64.2, 65.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 46.1, 77.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 46.1, 77.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 62, 84.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 62, 84.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 36, 92.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 36, 92.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 9.2, 83.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 9.2, 83.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 16.9, 83.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 16.9, 83.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 23.9, 82 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 23.9, 82 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 51.2, 60.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 51.2, 60.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 21, 68.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 21, 68.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 44.2, 67 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 44.2, 67 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 10.3, 89.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 10.3, 89.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 18, 98.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 18, 98.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 57, 57.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 57, 57.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 63, 52.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 63, 52.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 57, 67.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 57, 67.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 67.8, 73.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 67.8, 73.9 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.39, 0.42 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.39, 0.42 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.49, 0.53 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.49, 0.53 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.3, 0.32 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.3, 0.32 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.37, 0.39 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.37, 0.39 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.96, 1.02 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.96, 1.02 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.22, 1.31 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.22, 1.31 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.53, 2.7 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.53, 2.7 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 6.28, 6.71 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 6.28, 6.71 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 10.03, 10.71 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 10.03, 10.71 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 13.77, 14.71 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 13.77, 14.71 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 17.52, 18.72 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 17.52, 18.72 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 6.45, 6.89 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 6.45, 6.89 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.88, 5.21 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.88, 5.21 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.3, 3.52 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 3.3, 3.52 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.73, 1.84 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.73, 1.84 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.5, 1.61 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.5, 1.61 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.32, 1.41 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.32, 1.41 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.03, 1.11 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.03, 1.11 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.03, 1.11 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.94, 1.01 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.94, 1.01 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.93, 0.99 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.93, 0.99 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.68, 0.73 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.68, 0.73 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.56, 0.6 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.56, 0.6 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.49, 0.52 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.49, 0.52 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.46, 0.49 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.46, 0.49 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.42, 0.45 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.42, 0.45 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.35, 0.38 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.35, 0.38 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.32, 0.34 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.32, 0.34 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.29, 0.31 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.29, 0.31 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.22, 0.23 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.22, 0.23 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.22, 0.24 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.22, 0.24 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.23, 0.24 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.23, 0.24 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.31, 0.33 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.31, 0.33 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.47, 0.5 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.47, 0.5 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.64, 0.69 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.64, 0.69 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.79, 0.84 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.79, 0.84 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.01, 1.08 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.01, 1.08 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.09, 1.16 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.09, 1.16 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.15, 1.23 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.15, 1.23 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.2, 1.28 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.2, 1.28 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.23, 1.32 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.23, 1.32 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.26, 1.34 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.26, 1.34 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.27, 1.36 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.27, 1.36 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.28, 1.36 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.28, 1.36 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.28, 1.37 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.28, 1.37 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.73, 0.78 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.73, 0.78 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.28, 0.29 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.28, 0.29 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.55, 0.68 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.55, 0.68 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.54, 0.57 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.54, 0.57 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.52, 0.55 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.52, 0.55 );


setRotateKey( spep_2 + 66 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 107.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 107.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 163.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 163.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 109.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 109.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 142.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 142.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 135.9 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 135.9 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 128.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 128.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 235.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 235.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 265 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 265 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 244.9 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 244.9 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 320 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 320 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 353.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 353.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 429.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 429.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 444 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 444 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 419.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 419.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 488.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 488.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 543.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 543.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 531.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 531.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 566.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 566.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 587.8 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 587.8 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 585.2 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 585.2 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 667.6 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 667.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 624.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 624.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 560.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 560.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 518.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 518.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 508.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 508.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 497.9 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 497.9 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 442.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 442.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 387 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 387 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 433.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 433.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 408.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 408.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 439.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 439.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 448 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 448 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 452.3 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 452.3 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 456.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 456.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 460.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 460.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 465 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 465 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 412 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 412 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 416.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 416.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 420.6 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 420.6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 402.7 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 402.7 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 402.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 402.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 388 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 388 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 386.9 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 386.9 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 386.9 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 316.3 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 316.3 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 401.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 401.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 393.8 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 393.8 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 383.1 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 383.1 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 383.2 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 383.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 383.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 383.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 383.4 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 383.4 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 383.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 383.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 383.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 383.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 383.7 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 383.7 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 383.8 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 383.8 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 383.9 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 383.9 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 384 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 384 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 384.1 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 384.1 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 408.1 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 408.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 408.4 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 408.4 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 410.2 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 410.2 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 415.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 415.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 424.8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 424.8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 350.9 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 350.9 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 348.1 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 348.1 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 347.5 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 347.5 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 347 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 347 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 346.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 346.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 346.2 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 346.2 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 345.9 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 345.9 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 345.7 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 345.7 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 345.5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 345.5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 345.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 345.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 345.3 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 345.3 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 345.2 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 345.2 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 344.3 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 344.3 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 341.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 341.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 334.4 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 334.4 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 359.5 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 359.5 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 360.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 360.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 362.3 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 362.3 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 363.7 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 363.7 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 336.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 336.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 350.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 350.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 365.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 365.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 379.2 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 379.2 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 337.2 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 337.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 357.9 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 357.9 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 342.9 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 342.9 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 323.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 323.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 349.9 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 349.9 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 357.9 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 357.9 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 390.4 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 390.4 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 340.5 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 340.5 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 382.5 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 382.5 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 313.5 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 313.5 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 337.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 337.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 396.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 396.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 340.7 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 340.7 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 351.2 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 351.2 );

--敵の動き2
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 664 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 550 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 650 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, 25.2, -532.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 25.2, -532.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 228.7, -310.6 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 228.7, -310.6 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 231.1, -313 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 231.1, -313 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 300.1, -351.8 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 300.1, -351.8 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 430.7, -414.7 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 430.7, -414.7 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 440.4, -429.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 440.4, -429.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 474.4, -497.2 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 474.4, -497.2 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 195.8, -188.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 195.8, -188.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 150.8, 40.2 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 150.8, 40.2 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 144.4, 38.4 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 144.4, 38.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 144.2, 8.2 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 144.2, 8.2 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 133.4, 3.7 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 133.4, 3.7 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 120.1, -8.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 120.1, -8.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 104.3, -1 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 104.3, -1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 94, -24.8 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 94, -24.8 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 95.9, 3.6 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 95.9, 3.6 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 89.3, -28.8 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 89.3, -28.8 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 82.7, 5.2 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 82.7, 5.2 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 83.5, -33.6 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 83.5, -33.6 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 79.4, -10.2 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 79.4, -10.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 84.1, -35.2 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 84.1, -35.2 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 85.8, -6.8 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 85.8, -6.8 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 77, -35.4 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 77, -35.4 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 89.2, -20.8 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 89.2, -20.8 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 72, -44.3 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 72, -44.3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 71.3, -26 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 71.3, -26 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 57.2, -50.2 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 57.2, -50.2 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 61.8, -33.5 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 61.8, -33.5 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 60.4, -54.9 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 60.4, -54.9 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 51.1, -35.2 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 51.1, -35.2 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 53.9, -63.6 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 53.9, -63.6 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 45.1, -42.3 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 45.1, -42.3 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 48.4, -58.9 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 48.4, -58.9 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 51.1, -38.8 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 51.1, -38.8 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 52, -58.1 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 52, -58.1 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 61.5, -37.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 61.5, -37.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 69.2, -68.8 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 69.2, -68.8 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 135.6, -47.6 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 135.6, -47.6 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 111.3, -71.9 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 111.3, -71.9 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 340.9, -175 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 340.9, -175 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 686.3, -317.3 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 686.3, -317.3 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 1031.7, -459.5 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 1031.7, -459.5 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 1391.6, -606.6 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 1391.6, -606.6 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 1747.7, -763.4 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 1747.7, -763.4 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 2092.1, -910.5 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 2092.1, -910.5 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 2457, -1072.1 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 2457, -1072.1 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -140.9, -12.9 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -140.9, -12.9 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -53, -75.2 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -53, -75.2 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 47.6, -146.4 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 47.6, -146.4 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 139.8, -211.6 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 139.8, -211.6 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 215.7, -265.4 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 215.7, -265.4 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 271.5, -304.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 271.5, -304.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 301.5, -324.6 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 301.5, -324.6 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 15.51, 15.51 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 15.51, 15.51 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 18.97, 18.97 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 18.97, 18.97 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 18.94, 18.94 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 18.94, 18.94 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 607 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 608 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 609 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 610 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 615 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 0.23, 0.23 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 50.7 );
setRotateKey( spep_2 + 664 + OFFSET_X, 1, 50.7 );

-- ** 音 ** --
--飛んでいく
SE012 = playSeVer2( spep_2 + 0, 1121, "",spep_2 + 70, 2, 42, -1);
setStartTimeMs( SE012,  333 );
SE014 = playSeVer2( spep_2 + 2, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 2, 1183, "",spep_2 + 70, 0, 20, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--頭突き
SE016 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 52, 1190, "",spep_2 + 136, 0, 58, -1);
SE018 = playSeVer2( spep_2 + 52, 1414, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 60, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE019, 89 );

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 60, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE020, 126 );
SE021 = playSeVer2( spep_2 + 60, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE021, 40 );

--追い討ち
SE022 = playSeVer2( spep_2 + 192, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 192, 1182, "",spep_2 + 238, 0, 20, -1);
SE024 = playSeVer2( spep_2 + 192, 1047, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 192, 1359, "", 0, 0, 0, -1);

--飛び込む
SE026 = playSeVer2( spep_2 + 236, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 236, 1277, "", 0, 0, 0, -1);

--追い討ち２
SE028 = playSeVer2( spep_2 + 250, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 250, 1182, "",spep_2 + 298, 0, 20, -1);
SE030 = playSeVer2( spep_2 + 250, 1047, "", 0, 0, 0, -1);

--ラッシュ
SE031 = playSeVer2( spep_2 + 282, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 282, SE031, 120 );
SE032 = playSeVer2( spep_2 + 290, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE032, 110 );
SE033 = playSeVer2( spep_2 + 300, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE033, 90 );
SE034 = playSeVer2( spep_2 + 300, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE034, 120 );
SE035 = playSeVer2( spep_2 + 306, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE035, 120 );
SE036 = playSeVer2( spep_2 + 310, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE036, 110 );
SE037 = playSeVer2( spep_2 + 310, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE037, 110 );
SE038 = playSeVer2( spep_2 + 320, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 320, SE038, 90 );
SE039 = playSeVer2( spep_2 + 328, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 328, SE039, 120 );
SE041 = playSeVer2( spep_2 + 336, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE041, 120 );

--空気音
SE040 = playSeVer2( spep_2 + 328, 1227, "",spep_2 + 556, 0, 68, -1);

--拳握る
SE042 = playSeVer2( spep_2 + 356, 1233, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 368, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE043, 79 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 390, 1116, "",spep_2 + 436, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 390, 1215, "",spep_2 + 626, 0, 110, -1);
SE046 = playSeVer2( spep_2 + 422, 1443, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE046, 126 );
setStartTimeMs( SE046,  467 );
SE047 = playSeVer2( spep_2 + 422, 1264, "",spep_2 + 582, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 422, SE047, 60 );	

--向かってくる
SE048 = playSeVer2( spep_2 + 476, 1182, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 476, 9, "", 0, 0, 0, -1);

--パンチヒット
SE050 = playSeVer2( spep_2 + 530, 1187, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 530, 1120, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 538, 1188, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE053 = playSeVer2( spep_2 + 618, 1126, "",spep_2 + 706, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 618, SE053, 56 );
SE054 = playSeVer2( spep_2 + 618, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 618, 1049, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 626, 1277, "",spep_2 + 680, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 626, SE056, 164 );

--壁激突
SE057 = playSeVer2( spep_2 + 646, 1159, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 658, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 704 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --822f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕、山間から飛行
-------------------------------------------------
MAX_FRAME_0 = 156;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕、山間から飛行(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 46;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 165, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 165, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 165, 515.5 , 0 );
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
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1183, "",spep_0 + 144, 0, 8, -1);
setTimeStretch( SE002, 1.24, 30, 4 );
SE003 = playSeVer2( spep_0 + 16, 1304, "",spep_0 + 180, 0, 10, -1);
SE004 = playSeVer2( spep_0 + 30, 1072, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 40 );
SE007 = playSeVer2( spep_0 + 58, 1019, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 122, 1019, "",spep_0 + 176, 0, 8, -1);

--加速する
SE009 = playSeVer2( spep_0 + 138, 1182, "",spep_0 + 184, 0, 14, -1);
SE010 = playSeVer2( spep_0 + 142, 1277, "",spep_0 + 186, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --156f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE013 = playSeVer2( spep_1 + 78, 1232, "", 0, 0, 0, -1);

-------------------------------------------------
-- 格闘→構えて殴り込んでフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 822;


-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 格闘→構えて殴り込んでフィニッシュ 敵側(ef_002_r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ↑敵挟んだ背景(ef_002_b)
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
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 66 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 132 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 146 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 176 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 192 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 218 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 320 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 322 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 324 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 326 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 336 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 340 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 342 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 354 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, -363.9, -8.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -363.9, -8.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -273.9, -38.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -273.9, -38.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -320.4, -76.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -320.4, -76.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -375.6, -89.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -375.6, -89.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -117.9, -122.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -117.9, -122.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -171.9, -143.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -171.9, -143.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -174.3, -112.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -174.3, -112.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -176.7, -80.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -176.7, -80.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -179, -47.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -179, -47.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -136.5, 7.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -136.5, 7.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -91.1, 46.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -91.1, 46.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -14.5, 58.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -14.5, 58.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 133.1, 18.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 133.1, 18.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 185.2, 20.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 185.2, 20.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 237.3, 22.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 237.3, 22.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 139.3, 6.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 139.3, 6.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 68.3, -86.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 68.3, -86.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -2.5, -179.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -2.5, -179.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -132, -129.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -132, -129.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -201, -107.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -201, -107.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -286, -75.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -286, -75.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -211, 20.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -211, 20.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -130.2, 135.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -130.2, 135.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -141.7, -44.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -141.7, -44.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -136.4, -86.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -136.4, -86.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -164.2, -192.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -164.2, -192.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 3.3, -99.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 3.3, -99.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 33.6, -3.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 33.6, -3.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 135.4, 120.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 135.4, 120.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 5.6, 48.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 5.6, 48.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -56.2, -7.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -56.2, -7.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -116.2, -69.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -116.2, -69.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 53.9, -57.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 53.9, -57.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 147.8, -37.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 147.8, -37.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 229.7, -53.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 229.7, -53.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 41.6, -135.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 41.6, -135.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -56.2, -183.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -56.2, -183.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -156.1, -205.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -156.1, -205.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -206.1, -191.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -206.1, -191.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -277.7, -181.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -277.7, -181.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -327.8, -163.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -327.8, -163.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -288.1, -138.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -288.1, -138.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -295, -147.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -295, -147.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -238, -76.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -238, -76.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -43.9, -19.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -43.9, -19.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 150, 37.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 150, 37.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 343.7, 94 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 343.7, 94 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 537.2, 149.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 537.2, 149.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 200.1, 112.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 200.1, 112.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 67.4, 80.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 67.4, 80.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -65.1, 48.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -65.1, 48.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -160.3, -68.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -160.3, -68.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -82.7, -34.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -82.7, -34.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -25.2, 9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -25.2, 9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 90.4, 51.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 90.4, 51.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 90.4, 51.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 21, -2.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 21, -2.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -122.3, 57.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -122.3, 57.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -164.4, 61.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -164.4, 61.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -234.3, 159.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -234.3, 159.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -236.1, 160.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -236.1, 160.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -237.9, 160.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -237.9, 160.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -239.8, 161.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -239.8, 161.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -241.6, 162.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -241.6, 162.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -243.4, 163.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -243.4, 163.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -245.3, 164 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -245.3, 164 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -247.1, 164.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -247.1, 164.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -248.9, 165.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -248.9, 165.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -250.8, 166.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -250.8, 166.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -252.6, 167.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -252.6, 167.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -242.7, 165.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -242.7, 165.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -240.6, 164.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -240.6, 164.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -225.5, 161.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -225.5, 161.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -184.6, 153.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -184.6, 153.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -105, 138 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -105, 138 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -71.7, 49.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -71.7, 49.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -108.3, 50.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -108.3, 50.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -134.7, 25.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -134.7, 25.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -157, 4.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -157, 4.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -175.6, -13.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -175.6, -13.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -190.8, -27.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -190.8, -27.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -203, -39 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -203, -39 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -212.5, -48 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -212.5, -48 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -219.6, -54.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -219.6, -54.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -224.7, -59.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -224.7, -59.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -228.2, -62.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -228.2, -62.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -230.2, -64.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -230.2, -64.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -231.3, -65.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -231.3, -65.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -231.7, -66.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -231.7, -66.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -231.7, -66.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -231.7, -66.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -192.3, -29.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -192.3, -29.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -151.8, 6.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -151.8, 6.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -83, 40.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -83, 40.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -33.9, 90 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -33.9, 90 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -51.9, 90.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -51.9, 90.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -69.8, 90.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -69.8, 90.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -87.8, 91.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -87.8, 91.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -30.1, 88.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -30.1, 88.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -37.7, 80.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -37.7, 80.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -45.3, 72.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -45.3, 72.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -64.2, 65.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -64.2, 65.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -46.1, 77.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -46.1, 77.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -62, 84.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -62, 84.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -36, 92.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -36, 92.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -9.2, 83.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -9.2, 83.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -16.9, 83.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -16.9, 83.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -23.9, 82 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -23.9, 82 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -51.2, 60.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -51.2, 60.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -21, 68.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -21, 68.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -44.2, 67 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -44.2, 67 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -10.3, 89.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -10.3, 89.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -18, 98.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -18, 98.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -57, 57.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -57, 57.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -63, 52.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -63, 52.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -57, 67.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -57, 67.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -67.8, 73.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -67.8, 73.9 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.39, 0.42 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.39, 0.42 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.44, 0.47 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.49, 0.53 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.49, 0.53 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.3, 0.32 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.3, 0.32 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.37, 0.39 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.37, 0.39 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.96, 1.02 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.96, 1.02 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.22, 1.31 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.22, 1.31 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.53, 2.7 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.53, 2.7 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 6.28, 6.71 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 6.28, 6.71 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 10.03, 10.71 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 10.03, 10.71 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 13.77, 14.71 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 13.77, 14.71 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 17.52, 18.72 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 17.52, 18.72 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 6.45, 6.89 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 6.45, 6.89 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.88, 5.21 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.88, 5.21 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.3, 3.52 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 3.3, 3.52 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.73, 1.84 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.73, 1.84 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.5, 1.61 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.5, 1.61 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.32, 1.41 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.32, 1.41 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.03, 1.11 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.03, 1.11 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.03, 1.11 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.94, 1.01 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.94, 1.01 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.93, 0.99 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.93, 0.99 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.68, 0.73 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.68, 0.73 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.56, 0.6 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.56, 0.6 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.49, 0.52 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.49, 0.52 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.46, 0.49 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.46, 0.49 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.42, 0.45 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.42, 0.45 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.39, 0.41 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.35, 0.38 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.35, 0.38 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.32, 0.34 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.32, 0.34 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.29, 0.31 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.29, 0.31 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.22, 0.23 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.22, 0.23 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.22, 0.24 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.22, 0.24 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.23, 0.24 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.23, 0.24 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.25, 0.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.31, 0.33 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.31, 0.33 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.47, 0.5 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.47, 0.5 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.64, 0.69 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.64, 0.69 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.79, 0.84 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.79, 0.84 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.91, 0.97 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.01, 1.08 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.01, 1.08 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.09, 1.16 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.09, 1.16 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.15, 1.23 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.15, 1.23 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.2, 1.28 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.2, 1.28 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.23, 1.32 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.23, 1.32 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.26, 1.34 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.26, 1.34 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.27, 1.36 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.27, 1.36 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.28, 1.36 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.28, 1.36 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.28, 1.37 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.28, 1.37 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.73, 0.78 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.73, 0.78 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.43, 0.46 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.28, 0.29 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.28, 0.29 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.55, 0.68 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.55, 0.68 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.54, 0.57 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.54, 0.57 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.53, 0.56 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.52, 0.55 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.52, 0.55 );

setRotateKey( spep_2 + 66 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -51 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -51 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -107.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -107.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -163.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -163.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -109.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -109.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -142.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -142.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -128.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -128.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -235.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -235.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -265 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -265 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -244.9 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -244.9 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -320 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -320 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -353.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -353.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -429.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -429.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -444 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -444 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -419.9 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -419.9 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -488.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -488.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -543.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -543.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -531.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -531.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -566.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -566.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -587.8 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -587.8 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -585.2 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -585.2 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -667.6 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -667.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -624.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -624.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -560.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -560.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -518.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -518.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -508.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -508.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -497.9 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -497.9 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -442.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -442.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -387 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -387 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -433.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -433.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -408.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -408.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -439.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -439.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -448 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -448 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -452.3 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -452.3 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -456.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -456.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -460.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -460.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -465 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -465 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -412 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -412 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -416.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -416.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -420.6 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -420.6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -402.7 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -402.7 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -402.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -402.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -388 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -388 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -386.9 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -386.9 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -386.9 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -316.3 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -316.3 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -401.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -401.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -393.8 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -393.8 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -383.1 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -383.1 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -383.2 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -383.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -383.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -383.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -383.4 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -383.4 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -383.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -383.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -383.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -383.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -383.7 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -383.7 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -383.8 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -383.8 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -383.9 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -383.9 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -384 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -384 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -384.1 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -384.1 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -408.1 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -408.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -408.4 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -408.4 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -410.2 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -410.2 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -415.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -415.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -424.8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -424.8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -350.9 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -350.9 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -348.1 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -348.1 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -347.5 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -347.5 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -347 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -347 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -346.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -346.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -346.2 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -346.2 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -345.9 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -345.9 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -345.7 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -345.7 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -345.5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -345.5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -345.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -345.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -345.3 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -345.3 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -345.2 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -345.2 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -344.3 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -344.3 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -341.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -341.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -334.4 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -334.4 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -359.5 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -359.5 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -360.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -360.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -362.3 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -362.3 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -363.7 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -363.7 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -336.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -336.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -350.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -350.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -365.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -365.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -379.2 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -379.2 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -337.2 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -337.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -357.9 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -357.9 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -342.9 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -342.9 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -323.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -323.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -349.9 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -349.9 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -357.9 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -357.9 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -390.4 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -390.4 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -340.5 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -340.5 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -382.5 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -382.5 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -313.5 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -313.5 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -337.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -337.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -396.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -396.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -340.7 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -340.7 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -351.2 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -351.2 );

--敵の動き2
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 664 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 550 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 650 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, 25.2, -532.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 25.2, -532.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 228.7, -310.6 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 228.7, -310.6 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 231.1, -313 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 231.1, -313 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 300.1, -351.8 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 300.1, -351.8 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 430.7, -414.7 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 430.7, -414.7 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 440.4, -429.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 440.4, -429.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 474.4, -497.2 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 474.4, -497.2 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 195.8, -188.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 195.8, -188.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 150.8, 40.2 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 150.8, 40.2 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 144.4, 38.4 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 144.4, 38.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 144.2, 8.2 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 144.2, 8.2 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 133.4, 3.7 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 133.4, 3.7 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 120.1, -8.1 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 120.1, -8.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 104.3, -1 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 104.3, -1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 94, -24.8 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 94, -24.8 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 95.9, 3.6 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 95.9, 3.6 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 89.3, -28.8 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 89.3, -28.8 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 82.7, 5.2 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 82.7, 5.2 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 83.5, -33.6 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 83.5, -33.6 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 79.4, -10.2 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 79.4, -10.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 84.1, -35.2 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 84.1, -35.2 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 85.8, -6.8 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 85.8, -6.8 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 77, -35.4 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 77, -35.4 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 89.2, -20.8 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 89.2, -20.8 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 72, -44.3 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 72, -44.3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 71.3, -26 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 71.3, -26 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 57.2, -50.2 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 57.2, -50.2 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 61.8, -33.5 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 61.8, -33.5 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 60.4, -54.9 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 60.4, -54.9 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 51.1, -35.2 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 51.1, -35.2 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 53.9, -63.6 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 53.9, -63.6 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 45.1, -42.3 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 45.1, -42.3 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 48.4, -58.9 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 48.4, -58.9 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 51.1, -38.8 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 51.1, -38.8 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 52, -58.1 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 52, -58.1 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 61.5, -37.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 61.5, -37.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 69.2, -68.8 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 69.2, -68.8 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 135.6, -47.6 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 135.6, -47.6 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 111.3, -71.9 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 111.3, -71.9 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 340.9, -175 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 340.9, -175 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 686.3, -317.3 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 686.3, -317.3 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 1031.7, -459.5 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 1031.7, -459.5 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 1391.6, -606.6 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 1391.6, -606.6 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 1747.7, -763.4 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 1747.7, -763.4 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 2092.1, -910.5 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 2092.1, -910.5 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 2457, -1072.1 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 2457, -1072.1 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -140.9, -12.9 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -140.9, -12.9 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -53, -75.2 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -53, -75.2 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 47.6, -146.4 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 47.6, -146.4 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 139.8, -211.6 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 139.8, -211.6 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 215.7, -265.4 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 215.7, -265.4 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 271.5, -304.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 271.5, -304.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 301.5, -324.6 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 301.5, -324.6 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 15.51, 15.51 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 15.51, 15.51 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 19, 19 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 18.97, 18.97 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 18.97, 18.97 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 18.94, 18.94 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 18.94, 18.94 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_2 + 573 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_2 + 574 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 575 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_2 + 576 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 607 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 608 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 609 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 610 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 615 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 0.23, 0.23 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 50.7 );
setRotateKey( spep_2 + 664 + OFFSET_X, 1, 50.7 );

-- ** 音 ** --
--飛んでいく
SE012 = playSeVer2( spep_2 + 0, 1121, "",spep_2 + 70, 2, 42, -1);
setStartTimeMs( SE012,  333 );
SE014 = playSeVer2( spep_2 + 2, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 2, 1183, "",spep_2 + 70, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--頭突き
SE016 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 52, 1190, "",spep_2 + 136, 0, 58, -1);
SE018 = playSeVer2( spep_2 + 52, 1414, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 60, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE019, 89 );

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 60, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE020, 126 );
SE021 = playSeVer2( spep_2 + 60, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE021, 40 );

--追い討ち
SE022 = playSeVer2( spep_2 + 192, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 192, 1182, "",spep_2 + 238, 0, 20, -1);
SE024 = playSeVer2( spep_2 + 192, 1047, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 192, 1359, "", 0, 0, 0, -1);

--飛び込む
SE026 = playSeVer2( spep_2 + 236, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 236, 1277, "", 0, 0, 0, -1);

--追い討ち２
SE028 = playSeVer2( spep_2 + 250, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 250, 1182, "",spep_2 + 298, 0, 20, -1);
SE030 = playSeVer2( spep_2 + 250, 1047, "", 0, 0, 0, -1);

--ラッシュ
SE031 = playSeVer2( spep_2 + 282, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 282, SE031, 120 );
SE032 = playSeVer2( spep_2 + 290, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE032, 110 );
SE033 = playSeVer2( spep_2 + 300, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE033, 90 );
SE034 = playSeVer2( spep_2 + 300, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE034, 120 );
SE035 = playSeVer2( spep_2 + 306, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE035, 120 );
SE036 = playSeVer2( spep_2 + 310, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE036, 110 );
SE037 = playSeVer2( spep_2 + 310, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE037, 110 );
SE038 = playSeVer2( spep_2 + 320, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 320, SE038, 90 );
SE039 = playSeVer2( spep_2 + 328, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 328, SE039, 120 );
SE041 = playSeVer2( spep_2 + 336, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE041, 120 );

--空気音
SE040 = playSeVer2( spep_2 + 328, 1227, "",spep_2 + 556, 0, 68, -1);

--拳握る
SE042 = playSeVer2( spep_2 + 356, 1233, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 368, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE043, 79 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 390, 1116, "",spep_2 + 436, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 390, 1215, "",spep_2 + 626, 0, 110, -1);
SE046 = playSeVer2( spep_2 + 422, 1443, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE046, 126 );
setStartTimeMs( SE046,  467 );
SE047 = playSeVer2( spep_2 + 422, 1264, "",spep_2 + 582, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 422, SE047, 60 );	

--向かってくる
SE048 = playSeVer2( spep_2 + 476, 1182, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 476, 9, "", 0, 0, 0, -1);

--パンチヒット
SE050 = playSeVer2( spep_2 + 530, 1187, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 530, 1120, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 538, 1188, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE053 = playSeVer2( spep_2 + 618, 1126, "",spep_2 + 706, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 618, SE053, 56 );
SE054 = playSeVer2( spep_2 + 618, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 618, 1049, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 626, 1277, "",spep_2 + 680, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 626, SE056, 164 );

--壁激突
SE057 = playSeVer2( spep_2 + 646, 1159, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 658, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 704 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --822f -4

end
