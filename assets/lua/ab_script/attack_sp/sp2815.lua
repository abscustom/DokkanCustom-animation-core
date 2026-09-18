--1030340:LR_超サイヤ人3孫悟空(GT)(黄金大猿)_必殺技：超龍撃拳
--sp_effect_b1_00305
--sp2815

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163499;  --ef_001 構え〜ダッシュ
SP_02  = 163501;  --ef_002 連打〜パンチ〜爆発
SP_02b = 163503;  --ef_002b 連打〜パンチ〜爆発

--エフェクト(敵)
SP_01r = 163500;  --ef_001r 構え〜ダッシュ
SP_02r = 163502;  --ef_002r 連打〜パンチ〜爆発
SP_02br = 163581;  --ef_002br 連打〜パンチ〜爆発

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 128;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 336;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --ラストパンチ
        SE039 = playSeVer2( spep_2 + 336+3, 1189, "", 0, 0, 0, 0.5);

    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構え〜ダッシュ
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え〜ダッシュ(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 156, 0, 26, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 158, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 60 );
SE005 = playSeVer2( spep_0 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE005, 56 );
SE006 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE006, 56 );
SE007 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE007, 56 );
SE009 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE009, 56 );
SE010 = playSeVer2( spep_0 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE010, 56 );

--構える
SE008 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);

--飛び込んでいく
SE011 = playSeVer2( spep_0 + 110, 1182, "",spep_0 + 148, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 110, 1277, "",spep_0 + 148, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --128f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--飛び込んでくる
SE014 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

--オーラ
SE016 = playSeVer2( spep_1 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 79 );

-------------------------------------------------
-- 連打〜パンチ〜爆発
-------------------------------------------------
MAX_FRAME_2 = 654;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連打〜パンチ〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連打〜パンチ〜爆発(ef_002b)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 263.5, -167.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 263.5, -167.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 263.5, -195.4 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 263.5, -195.4 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 263.5, -255.4 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 263.5, -255.4 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 263.5, -311.4 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 263.5, -311.4 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 263.5, -311 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 263.5, -311 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 263.5, -310.6 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 263.5, -310.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 263.5, -310.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 263.5, -310.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 263.5, -309.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 263.5, -309.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 263.5, -309.4 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 263.5, -309.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 263.5, -309 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 263.5, -309 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 263.5, -308.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 263.5, -308.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 263.5, -308.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 263.5, -308.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 263.5, -307.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 263.5, -307.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 263.5, -307.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 263.5, -307.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 263.5, -307 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 263.5, -307 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 263.5, -306.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 263.5, -306.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 263.5, -306.2 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 263.5, -306.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 263.5, -305.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 263.5, -305.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 263.5, -305.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 263.5, -305.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 263.5, -305 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 263.5, -305 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 263.5, -304.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 263.5, -304.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 263.5, -304.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 263.5, -304.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 263.5, -303.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 263.5, -303.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 263.5, -303.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 263.5, -303.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 263.5, -167.4 , 0 );

setScaleKey( spep_2 + 0, 1, 4.8, 4.8 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 4.8, 4.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 434 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 442 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 468 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 200 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 236 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 250 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 262 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 278 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 282 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 294 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 300 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 322 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 326 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 346 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 436 + OFFSET_X, 1, 107 );

--敵の動き調整
a = -20;

setMoveKey( spep_2 + 186 + OFFSET_X, 1, 99.7, -21.2 + a, 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 99.7, -21.2 + a, 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 132.5, -3.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 132.5, -3.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 133.7, 0.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 133.7, 0.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 77.9, -23.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 77.9, -23.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 80.7, -19.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 80.7, -19.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 79.7, -43.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 79.7, -43.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 126.5, -19.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 126.5, -19.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 148, -22.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 148, -22.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 101.9, -20.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 101.9, -20.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 99.9, -23.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 99.9, -23.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 109.2, -19.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 109.2, -19.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 80.5, -23.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 80.5, -23.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 103.7, -29.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 103.7, -29.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 99.7, -32.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 99.7, -32.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 103.6, -31.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 103.6, -31.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 101.6, -22.6 + a, 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 101.6, -22.6 + a, 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 125, 0.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 125, 0.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 122.5, -2.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 122.5, -2.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 122.1, -19 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 122.1, -19 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 88.8, 18.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 88.8, 18.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 72.3, -18.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 72.3, -18.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 68.8, -21.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 68.8, -21.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 102.1, -20.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 102.1, -20.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 136, -28.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 136, -28.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 119.2, 0.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 119.2, 0.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 119.9, -3.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 119.9, -3.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 119.1, -19.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 119.1, -19.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 126.9, -3.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 126.9, -3.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 129.1, -19.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 129.1, -19.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 129.6, -23.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 129.6, -23.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 110.6, -7.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 110.6, -7.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 122.7, -19.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 122.7, -19.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 146.9, 0.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 146.9, 0.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 141.9, 1.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 141.9, 1.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 101.9, -39.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 101.9, -39.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 79.9, -3.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 79.9, -3.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 81.4, 0.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 81.4, 0.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 106.4, -27.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 106.4, -27.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 109.9, -26.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 109.9, -26.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 126.3, -5.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 126.3, -5.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 149.9, 14.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 149.9, 14.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 101.9, -22.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 101.9, -22.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 104.9, -20.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 104.9, -20.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 98.9, 0 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 98.9, 0 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 113.8, -21.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 113.8, -21.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 109.3, -1.8 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 109.3, -1.8 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 112.4, -0.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 112.4, -0.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 100.1, -22.8 + a , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 100.1, -22.8 + a , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 137.8, 13 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 137.8, 13 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 134.9, 11.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 134.9, 11.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 138.4, 12.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 138.4, 12.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 78.5, -1.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 78.5, -1.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 83.1, 1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 83.1, 1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 116.1, -23.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 116.1, -23.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 139.1, -0.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 139.1, -0.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 116.3, -21.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 116.3, -21.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 140.9, 9.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 140.9, 9.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 137.6, 6.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 137.6, 6.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 160.3, -11.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 160.3, -11.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 78, -1 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 78, -1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 102, -19.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 102, -19.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 97.5, -22.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 97.5, -22.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 139.5, -4.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 139.5, -4.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 160.5, -28.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 160.5, -28.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 140, 15.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 140, 15.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 158.1, -28.4 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 158.1, -28.4 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 160.8, -25.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 160.8, -25.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 103.2, -3.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 103.2, -3.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 102.2, 1.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 102.2, 1.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 111.2, -18.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 111.2, -18.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 117.3, -12.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 117.3, -12.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 122.3, -7.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 122.3, -7.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 126.2, -3.6 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 126.2, -3.6 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 129, -0.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 129, -0.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 130.7, 0.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 130.7, 0.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 131.2, 1.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 131.2, 1.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 182, -21.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 182, -21.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 131.3, -19.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 131.3, -19.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 172.9, -18.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 172.9, -18.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 162.2, -24.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 162.2, -24.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 173.5, -21.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 173.5, -21.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 148.6, -31.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 148.6, -31.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 152.5, -21.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 152.5, -21.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 143.5, -25.9 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 143.5, -25.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 157.1, -24.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 157.1, -24.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 144.8, -30.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 144.8, -30.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 153.6, -20.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 153.6, -20.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 149.7, -31.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 149.7, -31.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 149.7, -21.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 149.7, -21.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 151.1, -32.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 151.1, -32.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 151, -19.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 151, -19.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 145.2, -29.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 145.2, -29.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 151, -18.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 151, -18.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 150.4, -30.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 150.4, -30.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 156.9, -21.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 156.9, -21.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 146.2, -27 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 146.2, -27 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 153, -19.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 153, -19.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 150.5, -30.5 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 150.5, -30.5 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 145.2, -21.8 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 145.2, -21.8 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 151.6, -32 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 151.6, -32 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 148.1, -21.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 148.1, -21.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 150.3, -30.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 150.3, -30.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 150.2, -20.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 150.2, -20.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 152.8, -32 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 152.8, -32 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 153.4, -18.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 153.4, -18.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 147.2, -32.9 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 147.2, -32.9 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 150.4, -20.6 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 150.4, -20.6 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 147.2, -30.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 147.2, -30.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 149.6, -20.8 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 149.6, -20.8 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 152.2, -32.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 152.2, -32.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 152.3, -21.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 152.3, -21.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 149.9, -30.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 149.9, -30.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 151.7, -21.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 151.7, -21.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 153, -33.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 153, -33.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 153.1, -21 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 153.1, -21 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 153, -31.8 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 153, -31.8 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 145, -21.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 145, -21.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 149.5, -33.7 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 149.5, -33.7 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -159.7, -2.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -159.7, -2.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -165.5, 1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -165.5, 1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -165.3, 1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -165.3, 1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -165, 1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -165, 1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -164.5, 1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -164.5, 1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -163.6, 0.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -163.6, 0.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -162.1, 0.9 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -162.1, 0.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -159.8, 0.8 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -159.8, 0.8 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -156, 0.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -156, 0.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -150, 0.5 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -150, 0.5 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -140, 0.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -140, 0.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -121.9, -0.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -121.9, -0.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -82.4, -1.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -82.4, -1.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 164.9, -9.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 164.9, -9.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 1394.4, 4 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 1394.4, 4 , 0 );

setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 7.4, 7.4 );

setRotateKey( spep_2 + 186 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 372 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 1.0 );
setBlendColor( spep_2 + 429 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 1.0 );
setBlendColor( spep_2 + 430 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 0.8 );
setBlendColor( spep_2 + 467 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 0.8 );
setBlendColor( spep_2 + 468 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き3
setDisp( spep_2 + 474 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 532 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 474 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 474 + OFFSET_X, 1, -270, -156.4 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -270, -156.4 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -269.9, -156.4 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -269.9, -156.4 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -269.9, -156.3 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -269.9, -156.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -269.8, -156.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -269.8, -156.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -269.7, -156.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -269.7, -156.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -269.5, -156.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -269.5, -156.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -269.2, -156.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -269.2, -156.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -268.9, -156 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -268.9, -156 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -268.4, -155.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -268.4, -155.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -267.8, -155.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -267.8, -155.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -267.1, -155.3 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -267.1, -155.3 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -266.2, -155 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -266.2, -155 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -265, -154.6 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -265, -154.6 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -263.6, -154.1 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -263.6, -154.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -261.7, -153.4 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -261.7, -153.4 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -259.4, -152.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -259.4, -152.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -256.4, -151.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -256.4, -151.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -252.7, -150.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -252.7, -150.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -247.7, -148.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -247.7, -148.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -241.2, -146.1 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -241.2, -146.1 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -232.2, -142.9 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -232.2, -142.9 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -219.2, -138.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -219.2, -138.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -199, -131.1 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -199, -131.1 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -161.1, -117.7 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -161.1, -117.7 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -9.9, -63.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -9.9, -63.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -4.8, -67.3 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -4.8, -67.3 , 0 );

setScaleKey( spep_2 + 474 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_2 + 474 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 474 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 1.0 );
setBlendColor( spep_2 + 507 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 1.0 );
setBlendColor( spep_2 + 508 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.9 );
setBlendColor( spep_2 + 515 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.9 );
setBlendColor( spep_2 + 516 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.7 );
setBlendColor( spep_2 + 517 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.7 );
setBlendColor( spep_2 + 518 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.6 );
setBlendColor( spep_2 + 519 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.6 );
setBlendColor( spep_2 + 520 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.5 );
setBlendColor( spep_2 + 521 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.5 );
setBlendColor( spep_2 + 522 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.4 );
setBlendColor( spep_2 + 523 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.4 );
setBlendColor( spep_2 + 524 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.3 );
setBlendColor( spep_2 + 525 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.3 );
setBlendColor( spep_2 + 526 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 532 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--オーラ
SE017 = playSeVer2( spep_2 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE017, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);

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
--オーラ
SE018 = playSeVer2( spep_2 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE018, 79 );

--連打
SE019 = playSeVer2( spep_2 + 44, 1035, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_2 + 54, 1425, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 54, SE020, -300 );
setTimeStretch( SE020, 0.8, 30, 4 );
SE021 = playSeVer2( spep_2 + 54, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 54, SE021, 82 );
SE022 = playSeVer2( spep_2 + 64, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 64, SE022, 69 );
SE023 = playSeVer2( spep_2 + 72, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 72, SE023, 83 );
SE024 = playSeVer2( spep_2 + 90, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 90, SE024, 67 );
SE025 = playSeVer2( spep_2 + 110, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 110, SE025, 79 );
SE026 = playSeVer2( spep_2 + 118, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 118, SE026, 65 );
SE027 = playSeVer2( spep_2 + 138, 1425, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 138, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );
SE028 = playSeVer2( spep_2 + 152, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 152, SE028, 71 );
SE029 = playSeVer2( spep_2 + 170, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 170, SE029, 74 );
SE030 = playSeVer2( spep_2 + 178, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 178, SE030, 63 );
SE031 = playSeVer2( spep_2 + 206, 1009, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_2 + 224, 1425, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 224, SE032, -300 );
setTimeStretch( SE032, 0.8, 30, 4 );
SE033 = playSeVer2( spep_2 + 224, 1010, "", 0, 0, 0, 0.5);
SE034 = playSeVer2( spep_2 + 232, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 232, SE034, 59 );
SE035 = playSeVer2( spep_2 + 244, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 244, SE035, 88 );
SE036 = playSeVer2( spep_2 + 262, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 262, SE036, 68 );
SE037 = playSeVer2( spep_2 + 288, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 288, SE037, 79 );
SE038 = playSeVer2( spep_2 + 308, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 308, SE038, 73 );

--ラストパンチ
SE039 = playSeVer2( spep_2 + 332, 1189, "", 0, 0, 0, 0.5);
SE040 = playSeVer2( spep_2 + 340, 1359, "", 0, 0, 0, 0.5);
SE041 = playSeVer2( spep_2 + 340, 1187, "", 0, 0, 0, 0.5);
SE042 = playSeVer2( spep_2 + 340, 1049, "", 0, 0, 0, 0.5);
SE044 = playSeVer2( spep_2 + 348, 1120, "", 0, 0, 0, 0.5);
SE045 = playSeVer2( spep_2 + 348, 1024, "", 0, 0, 0, 0.5);

--敵のみこまれる
SE043 = playSeVer2( spep_2 + 344, 1215, "",spep_2 + 546, 0, 64, -1);

--敵吹き飛ぶ
SE046 = playSeVer2( spep_2 + 436, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE046, 71 );
SE047 = playSeVer2( spep_2 + 436, 1121, "",spep_2 + 546, 0, 18, -1);

--岩激突
SE048 = playSeVer2( spep_2 + 520, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 520, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 532 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  654f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 構え〜ダッシュ
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 構え〜ダッシュ(ef_001r)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 156, 0, 26, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 158, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 60 );
SE005 = playSeVer2( spep_0 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE005, 56 );
SE006 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE006, 56 );
SE007 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE007, 56 );
SE009 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE009, 56 );
SE010 = playSeVer2( spep_0 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE010, 56 );

--構える
SE008 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);

--飛び込んでいく
SE011 = playSeVer2( spep_0 + 110, 1182, "",spep_0 + 148, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 110, 1277, "",spep_0 + 148, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --128f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--飛び込んでくる
SE014 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

--オーラ
SE016 = playSeVer2( spep_1 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 79 );

-------------------------------------------------
-- 連打〜パンチ〜爆発
-------------------------------------------------
MAX_FRAME_2 = 654;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 連打〜パンチ〜爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 連打〜パンチ〜爆発(ef_002b)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 263.5, -167.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 263.5, -167.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 263.5, -195.4 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 263.5, -195.4 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 263.5, -255.4 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 263.5, -255.4 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 263.5, -311.4 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 263.5, -311.4 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 263.5, -311 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 263.5, -311 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 263.5, -310.6 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 263.5, -310.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 263.5, -310.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 263.5, -310.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 263.5, -309.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 263.5, -309.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 263.5, -309.4 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 263.5, -309.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 263.5, -309 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 263.5, -309 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 263.5, -308.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 263.5, -308.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 263.5, -308.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 263.5, -308.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 263.5, -307.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 263.5, -307.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 263.5, -307.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 263.5, -307.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 263.5, -307 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 263.5, -307 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 263.5, -306.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 263.5, -306.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 263.5, -306.2 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 263.5, -306.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 263.5, -305.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 263.5, -305.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 263.5, -305.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 263.5, -305.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 263.5, -305 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 263.5, -305 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 263.5, -304.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 263.5, -304.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 263.5, -304.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 263.5, -304.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 263.5, -303.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 263.5, -303.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 263.5, -303.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 263.5, -303.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 263.5, -167.4 , 0 );

setScaleKey( spep_2 + 0, 1, 4.8, 4.8 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 4.8, 4.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 434 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 442 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 468 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 200 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 236 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 250 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 262 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 278 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 282 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 294 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 300 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 322 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 326 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 346 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 436 + OFFSET_X, 1, 107 );

--敵の動き調整
a = -20;

setMoveKey( spep_2 + 186 + OFFSET_X, 1, 99.7, -21.2 + a, 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 99.7, -21.2 + a, 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 132.5, -3.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 132.5, -3.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 133.7, 0.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 133.7, 0.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 77.9, -23.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 77.9, -23.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 80.7, -19.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 80.7, -19.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 79.7, -43.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 79.7, -43.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 126.5, -19.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 126.5, -19.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 148, -22.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 148, -22.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 101.9, -20.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 101.9, -20.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 99.9, -23.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 99.9, -23.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 109.2, -19.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 109.2, -19.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 80.5, -23.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 80.5, -23.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 103.7, -29.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 103.7, -29.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 99.7, -32.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 99.7, -32.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 103.6, -31.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 103.6, -31.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 101.6, -22.6 + a, 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 101.6, -22.6 + a, 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 125, 0.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 125, 0.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 122.5, -2.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 122.5, -2.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 122.1, -19 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 122.1, -19 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 88.8, 18.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 88.8, 18.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 72.3, -18.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 72.3, -18.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 68.8, -21.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 68.8, -21.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 102.1, -20.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 102.1, -20.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 136, -28.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 136, -28.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 119.2, 0.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 119.2, 0.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 119.9, -3.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 119.9, -3.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 119.1, -19.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 119.1, -19.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 126.9, -3.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 126.9, -3.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 129.1, -19.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 129.1, -19.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 129.6, -23.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 129.6, -23.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 110.6, -7.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 110.6, -7.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 122.7, -19.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 122.7, -19.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 146.9, 0.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 146.9, 0.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 141.9, 1.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 141.9, 1.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 101.9, -39.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 101.9, -39.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 79.9, -3.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 79.9, -3.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 81.4, 0.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 81.4, 0.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 106.4, -27.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 106.4, -27.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 109.9, -26.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 109.9, -26.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 126.3, -5.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 126.3, -5.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 149.9, 14.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 149.9, 14.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 101.9, -22.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 101.9, -22.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 104.9, -20.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 104.9, -20.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 98.9, 0 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 98.9, 0 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 113.8, -21.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 113.8, -21.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 109.3, -1.8 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 109.3, -1.8 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 112.4, -0.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 112.4, -0.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 100.1, -22.8 + a , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 100.1, -22.8 + a , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 137.8, 13 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 137.8, 13 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 134.9, 11.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 134.9, 11.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 138.4, 12.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 138.4, 12.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 78.5, -1.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 78.5, -1.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 83.1, 1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 83.1, 1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 116.1, -23.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 116.1, -23.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 139.1, -0.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 139.1, -0.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 116.3, -21.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 116.3, -21.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 140.9, 9.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 140.9, 9.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 137.6, 6.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 137.6, 6.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 160.3, -11.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 160.3, -11.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 78, -1 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 78, -1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 102, -19.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 102, -19.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 97.5, -22.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 97.5, -22.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 139.5, -4.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 139.5, -4.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 160.5, -28.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 160.5, -28.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 140, 15.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 140, 15.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 158.1, -28.4 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 158.1, -28.4 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 160.8, -25.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 160.8, -25.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 103.2, -3.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 103.2, -3.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 102.2, 1.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 102.2, 1.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 111.2, -18.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 111.2, -18.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 117.3, -12.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 117.3, -12.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 122.3, -7.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 122.3, -7.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 126.2, -3.6 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 126.2, -3.6 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 129, -0.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 129, -0.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 130.7, 0.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 130.7, 0.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 131.2, 1.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 131.2, 1.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 182, -21.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 182, -21.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 131.3, -19.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 131.3, -19.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 172.9, -18.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 172.9, -18.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 162.2, -24.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 162.2, -24.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 173.5, -21.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 173.5, -21.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 148.6, -31.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 148.6, -31.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 152.5, -21.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 152.5, -21.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 143.5, -25.9 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 143.5, -25.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 157.1, -24.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 157.1, -24.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 144.8, -30.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 144.8, -30.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 153.6, -20.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 153.6, -20.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 149.7, -31.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 149.7, -31.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 149.7, -21.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 149.7, -21.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 151.1, -32.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 151.1, -32.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 151, -19.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 151, -19.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 145.2, -29.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 145.2, -29.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 151, -18.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 151, -18.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 150.4, -30.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 150.4, -30.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 156.9, -21.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 156.9, -21.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 146.2, -27 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 146.2, -27 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 153, -19.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 153, -19.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 150.5, -30.5 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 150.5, -30.5 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 145.2, -21.8 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 145.2, -21.8 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 151.6, -32 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 151.6, -32 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 148.1, -21.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 148.1, -21.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 150.3, -30.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 150.3, -30.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 150.2, -20.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 150.2, -20.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 152.8, -32 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 152.8, -32 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 153.4, -18.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 153.4, -18.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 147.2, -32.9 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 147.2, -32.9 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 150.4, -20.6 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 150.4, -20.6 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 147.2, -30.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 147.2, -30.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 149.6, -20.8 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 149.6, -20.8 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 152.2, -32.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 152.2, -32.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 152.3, -21.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 152.3, -21.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 149.9, -30.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 149.9, -30.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 151.7, -21.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 151.7, -21.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 153, -33.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 153, -33.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 153.1, -21 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 153.1, -21 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 153, -31.8 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 153, -31.8 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 145, -21.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 145, -21.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 149.5, -33.7 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 149.5, -33.7 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -159.7, -2.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -159.7, -2.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -165.5, 1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -165.5, 1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -165.3, 1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -165.3, 1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -165, 1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -165, 1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -164.5, 1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -164.5, 1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -163.6, 0.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -163.6, 0.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -162.1, 0.9 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -162.1, 0.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -159.8, 0.8 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -159.8, 0.8 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -156, 0.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -156, 0.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -150, 0.5 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -150, 0.5 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -140, 0.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -140, 0.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -121.9, -0.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -121.9, -0.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -82.4, -1.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -82.4, -1.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 164.9, -9.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 164.9, -9.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 1394.4, 4 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 1394.4, 4 , 0 );

setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 7.4, 7.4 );

setRotateKey( spep_2 + 186 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 372 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 1.0 );
setBlendColor( spep_2 + 429 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 1.0 );
setBlendColor( spep_2 + 430 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 0.8 );
setBlendColor( spep_2 + 467 + OFFSET_X, 1, 3, 0.84, 0.75, 0.34, 0.8 );
setBlendColor( spep_2 + 468 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き3
setDisp( spep_2 + 474 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 532 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 474 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 474 + OFFSET_X, 1, -270, -156.4 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -270, -156.4 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -269.9, -156.4 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -269.9, -156.4 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -269.9, -156.3 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -269.9, -156.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -269.8, -156.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -269.8, -156.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -269.7, -156.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -269.7, -156.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -269.5, -156.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -269.5, -156.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -269.2, -156.1 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -269.2, -156.1 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -268.9, -156 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -268.9, -156 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -268.4, -155.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -268.4, -155.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -267.8, -155.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -267.8, -155.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -267.1, -155.3 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -267.1, -155.3 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -266.2, -155 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -266.2, -155 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -265, -154.6 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -265, -154.6 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -263.6, -154.1 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -263.6, -154.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -261.7, -153.4 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -261.7, -153.4 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -259.4, -152.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -259.4, -152.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -256.4, -151.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -256.4, -151.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -252.7, -150.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -252.7, -150.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -247.7, -148.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -247.7, -148.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -241.2, -146.1 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -241.2, -146.1 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -232.2, -142.9 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -232.2, -142.9 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -219.2, -138.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -219.2, -138.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -199, -131.1 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -199, -131.1 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -161.1, -117.7 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -161.1, -117.7 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -9.9, -63.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -9.9, -63.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -4.8, -67.3 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -4.8, -67.3 , 0 );

setScaleKey( spep_2 + 474 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_2 + 474 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 474 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 1.0 );
setBlendColor( spep_2 + 507 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 1.0 );
setBlendColor( spep_2 + 508 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.9 );
setBlendColor( spep_2 + 515 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.9 );
setBlendColor( spep_2 + 516 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.7 );
setBlendColor( spep_2 + 517 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.7 );
setBlendColor( spep_2 + 518 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.6 );
setBlendColor( spep_2 + 519 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.6 );
setBlendColor( spep_2 + 520 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.5 );
setBlendColor( spep_2 + 521 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.5 );
setBlendColor( spep_2 + 522 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.4 );
setBlendColor( spep_2 + 523 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.4 );
setBlendColor( spep_2 + 524 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.3 );
setBlendColor( spep_2 + 525 + OFFSET_X, 1, 3, 1.00, 0.97, 0.78, 0.3 );
setBlendColor( spep_2 + 526 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 532 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--オーラ
SE017 = playSeVer2( spep_2 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE017, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);

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
--オーラ
SE018 = playSeVer2( spep_2 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE018, 79 );

--連打
SE019 = playSeVer2( spep_2 + 44, 1035, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_2 + 54, 1425, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 54, SE020, -300 );
setTimeStretch( SE020, 0.8, 30, 4 );
SE021 = playSeVer2( spep_2 + 54, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 54, SE021, 82 );
SE022 = playSeVer2( spep_2 + 64, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 64, SE022, 69 );
SE023 = playSeVer2( spep_2 + 72, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 72, SE023, 83 );
SE024 = playSeVer2( spep_2 + 90, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 90, SE024, 67 );
SE025 = playSeVer2( spep_2 + 110, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 110, SE025, 79 );
SE026 = playSeVer2( spep_2 + 118, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 118, SE026, 65 );
SE027 = playSeVer2( spep_2 + 138, 1425, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 138, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );
SE028 = playSeVer2( spep_2 + 152, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 152, SE028, 71 );
SE029 = playSeVer2( spep_2 + 170, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 170, SE029, 74 );
SE030 = playSeVer2( spep_2 + 178, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 178, SE030, 63 );
SE031 = playSeVer2( spep_2 + 206, 1009, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_2 + 224, 1425, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 224, SE032, -300 );
setTimeStretch( SE032, 0.8, 30, 4 );
SE033 = playSeVer2( spep_2 + 224, 1010, "", 0, 0, 0, 0.5);
SE034 = playSeVer2( spep_2 + 232, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 232, SE034, 59 );
SE035 = playSeVer2( spep_2 + 244, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 244, SE035, 88 );
SE036 = playSeVer2( spep_2 + 262, 1414, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 262, SE036, 68 );
SE037 = playSeVer2( spep_2 + 288, 1009, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 288, SE037, 79 );
SE038 = playSeVer2( spep_2 + 308, 1010, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 308, SE038, 73 );

--ラストパンチ
SE039 = playSeVer2( spep_2 + 332, 1189, "", 0, 0, 0, 0.5);
SE040 = playSeVer2( spep_2 + 340, 1359, "", 0, 0, 0, 0.5);
SE041 = playSeVer2( spep_2 + 340, 1187, "", 0, 0, 0, 0.5);
SE042 = playSeVer2( spep_2 + 340, 1049, "", 0, 0, 0, 0.5);
SE044 = playSeVer2( spep_2 + 348, 1120, "", 0, 0, 0, 0.5);
SE045 = playSeVer2( spep_2 + 348, 1024, "", 0, 0, 0, 0.5);

--敵のみこまれる
SE043 = playSeVer2( spep_2 + 344, 1215, "",spep_2 + 546, 0, 64, -1);

--敵吹き飛ぶ
SE046 = playSeVer2( spep_2 + 436, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE046, 71 );
SE047 = playSeVer2( spep_2 + 436, 1121, "",spep_2 + 546, 0, 18, -1);

--岩激突
SE048 = playSeVer2( spep_2 + 520, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 520, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 532 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  654f -4

end
