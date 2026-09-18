--1031430:LR_ゴクウブラック(超サイヤ人ロゼ)+ザマス_必殺技：神裂演武斬
--sp_effect_b2_00064
--sp2875

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163865; --ソードを出して突進 ef_001
SP_02  = 163866; --敵に近づく〜フィニッシュ--ef_002
--SP_02b = 163867; --敵に近づく〜フィニッシュ--ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 206;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 230);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 230, SP_01, spep_2 + 236 -1 + 2, 1);
        
        --斬り飛ばす
        SE031 = playSeVer2( spep_2 + 230 +3, 1032, "",spep_2 + 236, 0, 6, -1);
        SE032 = playSeVer2( spep_2 + 230 +3, 1187, "",spep_2 + 296, 0, 28, -1);
        --爆発
        SE034 = playSeVer2( spep_2 + 230 +3, 1024, "", 0, 0, 0, -1);

    else

        setupMovie(0 , SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- ソードを出して突進(212)
-------------------------------------------------
MAX_FRAME_0 = 212;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ソードを出して突進(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 150.0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 150.0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 150.0, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0, 1269, "",spep_0 + 210, 0, 46, -1);
setSeVolumeByWorkId( spep_0, SE001, 25 );
--剣出す
SE003 = playSeVer2( spep_0 + 26, 1374, "",spep_0 + 164, 0, 52, -1);
SE004 = playSeVer2( spep_0 + 74, 1145, "", 0, 4, 0, -1);
setStartTimeMs( SE004, 500);
SE005 = playSeVer2( spep_0 + 64, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 82, 1026, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 88, 1354, "", 0, 0, 0, -1);

--向かってくる
SE008 = playSeVer2( spep_0 + 150, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE008, 81 );
SE009 = playSeVer2( spep_0 + 150, 1182, "",spep_0 + 230, 0, 18, -1);
SE010 = playSeVer2( spep_0 + 150, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE010, 63 );
SE011 = playSeVer2( spep_0 + 156, 1117, "",spep_0 + 228, 0, 20, -1);

entryFade( spep_0 + 208, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 212f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0) -4;--94f

-- ** 音 ** --
--敵に近づく
SE013 = playSeVer2( spep_1 + 88, 1116, "",spep_1 + 154, 0, 34, -1);
SE014 = playSeVer2( spep_1 + 88, 1019, "", 0, 0, 0, -1);

entryFade( spep_1 + 92, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- 敵に近づく〜フィニッシュ(390f)
-------------------------------------------------
MAX_FRAME_2 = 390;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵に近づく〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵に近づく〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2, 1, 1);
setDisp( spep_2 + 40 + OFFSET_X, 1, 0);

changeAnime( spep_2, 1, 117 );
changeAnime( spep_2 + 32 + OFFSET_X, 1, 104 );

setMoveKey( spep_2, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 6, 2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 6, 2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 8, -4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 8, -4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 0, 0 , 0 );

setScaleKey( spep_2, 1, 1, 1 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 4.5, 4.5 );

setRotateKey( spep_2, 1, -179 );
setRotateKey( spep_2 + 2 + OFFSET_X, 1, -178.7 );
setRotateKey( spep_2 + 3 + OFFSET_X, 1, -178.7 );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, -177.6 );
setRotateKey( spep_2 + 5 + OFFSET_X, 1, -177.6 );
setRotateKey( spep_2 + 6 + OFFSET_X, 1, -175.6 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, -175.6 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -172.7 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -172.7 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -168.7 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -168.7 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -163.3 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -163.3 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -156.2 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -156.2 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -147.3 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -147.3 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -121.6 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -121.6 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 46 + OFFSET_X, 1, 1);
setDisp( spep_2 + 96 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 46 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 46 + OFFSET_X, 1, 154.1, 39.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 154.1, 39.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 154.1, 39.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 164.1, 43.9 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 164.1, 43.9 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 162.1, 37.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 162.1, 37.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 152.7, 44.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 152.7, 44.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 162.1, 37.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 162.1, 37.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 166.6, 40 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 166.6, 40 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 160.3, 30.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 160.3, 30.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 168.8, 36 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 168.8, 36 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 183.7, 26.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 183.7, 26.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 197.6, 19.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 197.6, 19.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 207.5, 15.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 207.5, 15.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 215, 11.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 215, 11.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 220.8, 8.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 220.8, 8.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 225.3, 6.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 225.3, 6.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 228.9, 5.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 228.9, 5.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 231.7, 3.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 231.7, 3.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 233.9, 2.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 233.9, 2.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 235.7, 2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 235.7, 2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 237, 1.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 237, 1.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 238.1, 0.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 238.1, 0.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 238.9, 0.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 238.9, 0.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 239.5, 0.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 239.5, 0.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 240, -0.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 240, -0.1 , 0 );

setScaleKey( spep_2 + 46 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 46 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 216 + OFFSET_X, 1, 1);
setDisp( spep_2 + 264 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 216 + OFFSET_X, 1, 106 );

--setMoveKey( spep_2 + 214 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -5, -3.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -5, -3.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -3, -2.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -3, -2.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -3.2, -10.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -3.2, -10.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -1.2, 10 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -1.2, 10 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 1.5, -5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 1.5, -5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 2.3, -1.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 2.3, -1.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -0.2, 15.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -0.2, 15.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -0.5, -4.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -0.5, -4.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 4.5, 10.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 4.5, 10.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -3, -17.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -3, -17.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 9.5, 0.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 9.5, 0.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -0.5, -19.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -0.5, -19.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -10.5, -29.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -10.5, -29.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 4.5, 17.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 4.5, 17.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -3, -24.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -3, -24.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -3, 20.3 , 0 );

--setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.5, 0.5 );

--setRotateKey( spep_2 + 214 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -45 );

setBlendColor( spep_2 + 252 + OFFSET_X, 1, 3, 0.592, 0.505, 0.000, 0.5);
setBlendColor( spep_2 + 262 + OFFSET_X, 1, 3, 0.592, 0.505, 0.000, 1);
setBlendColor( spep_2 + 264 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 32; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
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

--斬る１
SE015 = playSeVer2( spep_2 + 30, 1142, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 34, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE016, 71 );
setPitch( spep_2 + 34, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_2 + 34, 1032, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 34, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE018, 66 );
SE019 = playSeVer2( spep_2 + 38, 1172, "",spep_2 + 140, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 38, SE019, 71 );
setPitch( spep_2 + 38, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );

--敵吹き飛ぶ
SE020 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);

--連続斬り１
SE021 = playSeVer2( spep_2 + 100, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 100, 1141, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 100, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE023, 74 );

--連続斬り２
SE024 = playSeVer2( spep_2 + 126, 1031, "",spep_2 + 148, 0, 6, -1);
SE025 = playSeVer2( spep_2 + 126, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE025, 79 );
SE026 = playSeVer2( spep_2 + 128, 1143, "", 0, 0, 0, -1);

--振りかぶる
SE027 = playSeVer2( spep_2 + 146, 1116, "",spep_2 + 190, 0, 22, -1);
SE028 = playSeVer2( spep_2 + 152, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE028, 191 );
SE029 = playSeVer2( spep_2 + 156, 1354, "",spep_2 + 206, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 156, SE029, 76 );

--斬り飛ばす
SE030 = playSeVer2( spep_2 + 194, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 206, 1032, "",spep_2 + 236, 0, 6, -1);
SE032 = playSeVer2( spep_2 + 206, 1187, "",spep_2 + 296, 0, 28, -1);
SE033 = playSeVer2( spep_2 + 206, 1120, "", 0, 0, 0, -1);

--爆発
SE034 = playSeVer2( spep_2 + 224, 1024, "", 0, 0, 0, -1);

--連続斬りつけ
SE035 = playSeVer2( spep_2 + 240, 1141, "",spep_2 + 312, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 240, SE035, 69 );
SE036 = playSeVer2( spep_2 + 246, 1032, "",spep_2 + 282, 0, 12, -1);
SE037 = playSeVer2( spep_2 + 274, 1143, "",spep_2 + 328, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 274, SE037, 68 );
SE038 = playSeVer2( spep_2 + 280, 1032, "",spep_2 + 314, 0, 10, -1);

--爆発
SE039 = playSeVer2( spep_2 + 288, 1188, "", 0, 0, 0, -1);

--連続斬りつけ
SE040 = playSeVer2( spep_2 + 302, 1141, "",spep_2 + 374, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 302, SE040, 84 );
SE041 = playSeVer2( spep_2 + 302, 1009, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 308, 1032, "",spep_2 + 336, 0, 6, -1);
SE043 = playSeVer2( spep_2 + 322, 1143, "",spep_2 + 376, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 322, SE043, 74 );
SE044 = playSeVer2( spep_2 + 328, 1032, "",spep_2 + 358, 0, 6, -1);
SE045 = playSeVer2( spep_2 + 340, 1141, "",spep_2 + 406, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 340, SE045, 72 );
SE046 = playSeVer2( spep_2 + 340, 1009, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 348, 1032, "",spep_2 + 378, 0, 8, -1);
SE048 = playSeVer2( spep_2 + 366, 1143, "",spep_2 + 410, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 366, SE048, 68 );
SE049 = playSeVer2( spep_2 + 370, 1032, "",spep_2 +398, 0, 6, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 266); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); --390f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- ソードを出して突進(212)
-------------------------------------------------
MAX_FRAME_0 = 212;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ソードを出して突進(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 150.0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 150.0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 150.0, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0, 1269, "",spep_0 + 210, 0, 46, -1);
setSeVolumeByWorkId( spep_0, SE001, 25 );
--剣出す
SE003 = playSeVer2( spep_0 + 26, 1374, "",spep_0 + 164, 0, 52, -1);
SE004 = playSeVer2( spep_0 + 74, 1145, "", 0, 4, 0, -1);
setStartTimeMs( SE004, 500);
SE005 = playSeVer2( spep_0 + 64, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 82, 1026, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 88, 1354, "", 0, 0, 0, -1);

--向かってくる
SE008 = playSeVer2( spep_0 + 150, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE008, 81 );
SE009 = playSeVer2( spep_0 + 150, 1182, "",spep_0 + 230, 0, 18, -1);
SE010 = playSeVer2( spep_0 + 150, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE010, 63 );
SE011 = playSeVer2( spep_0 + 156, 1117, "",spep_0 + 228, 0, 20, -1);

entryFade( spep_0 + 208, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 212f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0) -4;--94f

-- ** 音 ** --
--敵に近づく
SE013 = playSeVer2( spep_1 + 88, 1116, "",spep_1 + 154, 0, 34, -1);
SE014 = playSeVer2( spep_1 + 88, 1019, "", 0, 0, 0, -1);

entryFade( spep_1 + 92, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- 敵に近づく〜フィニッシュ(390f)
-------------------------------------------------
MAX_FRAME_2 = 390;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵に近づく〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵に近づく〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2, 1, 1);
setDisp( spep_2 + 40 + OFFSET_X, 1, 0);

changeAnime( spep_2, 1, 17 );
changeAnime( spep_2 + 32 + OFFSET_X, 1, 4 );

setMoveKey( spep_2, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -6, 2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -6, 2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -8, -4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -8, -4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 0, 0 , 0 );

setScaleKey( spep_2, 1, 1, 1 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 4.5, 4.5 );

setRotateKey( spep_2, 1, 179 );
setRotateKey( spep_2 + 2 + OFFSET_X, 1, 178.7 );
setRotateKey( spep_2 + 3 + OFFSET_X, 1, 178.7 );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, 177.6 );
setRotateKey( spep_2 + 5 + OFFSET_X, 1, 177.6 );
setRotateKey( spep_2 + 6 + OFFSET_X, 1, 175.6 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, 175.6 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, 172.7 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, 172.7 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, 168.7 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, 168.7 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 163.3 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, 163.3 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, 156.2 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, 156.2 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, 147.3 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, 147.3 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, 135.9 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 135.9 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, 121.6 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 121.6 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 103.2 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, 103.2 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 46 + OFFSET_X, 1, 1);
setDisp( spep_2 + 96 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 46 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 46 + OFFSET_X, 1, -154.1, 39.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -154.1, 39.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -154.1, 39.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -164.1, 43.9 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -164.1, 43.9 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -162.1, 37.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -162.1, 37.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -152.7, 44.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -152.7, 44.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -162.1, 37.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -162.1, 37.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -166.6, 40 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -166.6, 40 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -160.3, 30.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -160.3, 30.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -168.8, 36 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -168.8, 36 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -183.7, 26.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -183.7, 26.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -197.6, 19.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -197.6, 19.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -207.5, 15.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -207.5, 15.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -215, 11.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -215, 11.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -220.8, 8.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -220.8, 8.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -225.3, 6.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -225.3, 6.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -228.9, 5.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -228.9, 5.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -231.7, 3.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -231.7, 3.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -233.9, 2.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -233.9, 2.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -235.7, 2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -235.7, 2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -237, 1.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -237, 1.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -238.1, 0.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -238.1, 0.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -238.9, 0.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -238.9, 0.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -239.5, 0.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -239.5, 0.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -240, -0.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -240, -0.1 , 0 );

setScaleKey( spep_2 + 46 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 46 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 216 + OFFSET_X, 1, 1);
setDisp( spep_2 + 264 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 216 + OFFSET_X, 1, 6 );

--setMoveKey( spep_2 + 214 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 5, -3.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 5, -3.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 3, -2.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 3, -2.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 3.2, -10.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 3.2, -10.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 1.2, 10 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 1.2, 10 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -1.5, -5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -1.5, -5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -2.3, -1.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -2.3, -1.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 0.2, 15.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 0.2, 15.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 0.5, -4.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 0.5, -4.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -4.5, 10.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -4.5, 10.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 3, -17.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 3, -17.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -9.5, 0.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -9.5, 0.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 0.5, -19.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 0.5, -19.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 10.5, -29.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 10.5, -29.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -4.5, 17.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -4.5, 17.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 3, -24.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 3, -24.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 3, 20.3 , 0 );

--setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.5, 0.5 );

--setRotateKey( spep_2 + 214 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 45 );

setBlendColor( spep_2 + 252 + OFFSET_X, 1, 3, 0.592, 0.505, 0.000, 0.5);
setBlendColor( spep_2 + 262 + OFFSET_X, 1, 3, 0.592, 0.505, 0.000, 1);
setBlendColor( spep_2 + 264 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 32; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
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

--斬る１
SE015 = playSeVer2( spep_2 + 30, 1142, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 34, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE016, 71 );
setPitch( spep_2 + 34, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_2 + 34, 1032, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 34, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE018, 66 );
SE019 = playSeVer2( spep_2 + 38, 1172, "",spep_2 + 140, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 38, SE019, 71 );
setPitch( spep_2 + 38, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );

--敵吹き飛ぶ
SE020 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);

--連続斬り１
SE021 = playSeVer2( spep_2 + 100, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 100, 1141, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 100, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE023, 74 );

--連続斬り２
SE024 = playSeVer2( spep_2 + 126, 1031, "",spep_2 + 148, 0, 6, -1);
SE025 = playSeVer2( spep_2 + 126, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE025, 79 );
SE026 = playSeVer2( spep_2 + 128, 1143, "", 0, 0, 0, -1);

--振りかぶる
SE027 = playSeVer2( spep_2 + 146, 1116, "",spep_2 + 190, 0, 22, -1);
SE028 = playSeVer2( spep_2 + 152, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE028, 191 );
SE029 = playSeVer2( spep_2 + 156, 1354, "",spep_2 + 206, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 156, SE029, 76 );

--斬り飛ばす
SE030 = playSeVer2( spep_2 + 194, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 206, 1032, "",spep_2 + 236, 0, 6, -1);
SE032 = playSeVer2( spep_2 + 206, 1187, "",spep_2 + 296, 0, 28, -1);
SE033 = playSeVer2( spep_2 + 206, 1120, "", 0, 0, 0, -1);

--爆発
SE034 = playSeVer2( spep_2 + 224, 1024, "", 0, 0, 0, -1);

--連続斬りつけ
SE035 = playSeVer2( spep_2 + 240, 1141, "",spep_2 + 312, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 240, SE035, 69 );
SE036 = playSeVer2( spep_2 + 246, 1032, "",spep_2 + 282, 0, 12, -1);
SE037 = playSeVer2( spep_2 + 274, 1143, "",spep_2 + 328, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 274, SE037, 68 );
SE038 = playSeVer2( spep_2 + 280, 1032, "",spep_2 + 314, 0, 10, -1);

--爆発
SE039 = playSeVer2( spep_2 + 288, 1188, "", 0, 0, 0, -1);

--連続斬りつけ
SE040 = playSeVer2( spep_2 + 302, 1141, "",spep_2 + 374, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 302, SE040, 84 );
SE041 = playSeVer2( spep_2 + 302, 1009, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 308, 1032, "",spep_2 + 336, 0, 6, -1);
SE043 = playSeVer2( spep_2 + 322, 1143, "",spep_2 + 376, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 322, SE043, 74 );
SE044 = playSeVer2( spep_2 + 328, 1032, "",spep_2 + 358, 0, 6, -1);
SE045 = playSeVer2( spep_2 + 340, 1141, "",spep_2 + 406, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 340, SE045, 72 );
SE046 = playSeVer2( spep_2 + 340, 1009, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 348, 1032, "",spep_2 + 378, 0, 8, -1);
SE048 = playSeVer2( spep_2 + 366, 1143, "",spep_2 + 410, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 366, SE048, 68 );
SE049 = playSeVer2( spep_2 + 370, 1032, "",spep_2 +398, 0, 6, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 266); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); --390f

end