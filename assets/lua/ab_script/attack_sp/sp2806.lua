--1030480:LR_超サイヤ人ベジータ(天使)+超サイヤ人孫悟空(天使)_必殺技：ファイナルブリッドアタック
--sp_effect_a2_00253
--sp2806

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02 = 163471;  -- 気合を入れる～爆発・フィニッシュ ef_002

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
]]

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_2 = 146 + 4 + 94;

        skipFrame(0, spep_2 + 0);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 0, SP_02, spep_2 + 0 - 2, 1)

        --オーラ
        SE012 = playSeVer2( spep_2 + 0 + 3, 1036, "", 0, 0, 0, -1);

    else
      setupMovie(0, SP_02, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 敵と向かい合う～表情アップ
-------------------------------------------------
MAX_FRAME_0 = 146;

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
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
setDisp( spep_0 + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 141, -195.5 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, 141, -195.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 164.7, -195.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 164.7, -195.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 178.6, -195.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 178.6, -195.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 187.2, -195.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 187.2, -195.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 193, -195.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 193, -195.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 197.3, -195.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 197.3, -195.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 200.5, -195.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 200.5, -195.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 203, -195.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 203, -195.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 205, -195.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 205, -195.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 206.6, -195.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 206.6, -195.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 207.9, -195.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 207.9, -195.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 209, -195.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 209, -195.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 209.9, -195.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 209.9, -195.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 210.7, -195.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 210.7, -195.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 211.3, -195.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 211.3, -195.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 211.9, -195.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 211.9, -195.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 212.3, -195.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 212.3, -195.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 213.1, -195.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 213.1, -195.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 213.8, -195.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 213.8, -195.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 214.5, -195.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 214.5, -195.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 215.1, -195.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 215.1, -195.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 215.6, -195.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 215.6, -195.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 216.1, -195.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 216.1, -195.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 216.5, -195.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 216.5, -195.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 217, -195.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 217, -195.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 217.3, -195.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 217.3, -195.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 217.7, -195.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 217.7, -195.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 218, -195.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 218, -195.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 218.2, -195.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 218.2, -195.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 218.5, -195.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 218.5, -195.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 218.7, -195.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 218.7, -195.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 218.9, -195.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 218.9, -195.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 219, -195.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 219, -195.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 219.1, -195.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 219.1, -195.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 219.2, -195.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 219.2, -195.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 219.3, -195.4 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 219.3, -195.4 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 219.4, -195.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 219.4, -195.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 219.4, -195.5 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 219.4, -195.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4, 4 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 168, 0, 24, -1);
SE005 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 50 );
SE006 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 50 );
SE007 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 50 );
SE008 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE008, 50 );
SE009 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 50 );
SE010 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE010, 50 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0+4; --146F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)-2;

-- ** 音 ** --
--オーラ
SE012 = playSeVer2( spep_1 + 80, 1036, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気合を入れる～爆発・フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 586;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気合を入れる～爆発・フィニッシュ(ef_002)
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

-- ** 音 ** --

--気ダメ
SE013 = playSeVer2( spep_2 + 6, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE013, 71 );
SE014 = playSeVer2( spep_2 + 6, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE014, 133 );

--オーラ
SE015 = playSeVer2( spep_2 + 10, 1036, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

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

--オーラ
SE016 = playSeVer2( spep_2 + 34, 1036, "", 0, 0, 0, -1);

--連続気弾
SE017 = playSeVer2( spep_2 + 48, 1133, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 48, SE017, 76 );
SE018 = playSeVer2( spep_2 + 50, 1403, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 50, SE018, 138 );
SE019 = playSeVer2( spep_2 + 50, 1406, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_2 + 76, 1356, "",spep_2 + 474, 68, 36, 0.5);
setSeVolumeByWorkId( spep_2 + 76, SE020, 116 );
setStartTimeMs( SE020,  433 );
SE021 = playSeVer2( spep_2 + 50, 1401, "",spep_2 + 110, 0, 34, 0.5);
SE022 = playSeVer2( spep_2 + 60, 1401, "",spep_2 + 118, 0, 32, 0.5);
SE023 = playSeVer2( spep_2 + 72, 1401, "",spep_2 + 132, 0, 34, 0.5);
SE024 = playSeVer2( spep_2 + 82, 1401, "",spep_2 + 142, 0, 34, 0.5);
setSeVolumeByWorkId( spep_2 + 82, SE024, 87 );
setPitch( spep_2 + 82, SE024, 100 );
setTimeStretch( SE024, 1.07, 30, 4 );
SE025 = playSeVer2( spep_2 + 102, 1401, "",spep_2 + 162, 0, 32, 0.5);
SE026 = playSeVer2( spep_2 + 116, 1401, "",spep_2 + 174, 0, 34, 0.5);
setSeVolumeByWorkId( spep_2 + 116, SE026, 114 );
SE027 = playSeVer2( spep_2 + 132, 1401, "",spep_2 + 196, 0, 38, 0.5);
SE028 = playSeVer2( spep_2 + 146, 1401, "",spep_2 + 206, 0, 32, 0.5);
setPitch( spep_2 + 146, SE028, -100 );
setTimeStretch( SE028, 0.93, 30, 4 );
SE029 = playSeVer2( spep_2 + 162, 1401, "",spep_2 + 220, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 162, SE029, 81 );
SE030 = playSeVer2( spep_2 + 178, 1401, "",spep_2 + 238, 0, 32, 0.5);
SE031 = playSeVer2( spep_2 + 186, 1406, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 196, 1401, "",spep_2 + 248, 0, 26, 0.5);
setSeVolumeByWorkId( spep_2 + 196, SE032, 110 );
SE033 = playSeVer2( spep_2 + 212, 1401, "",spep_2 + 262, 0, 30, 0.5);
setPitch( spep_2 + 212, SE033, 100 );
setTimeStretch( SE033, 1.07, 30, 4 );
SE034 = playSeVer2( spep_2 + 226, 1401, "",spep_2 + 284, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 226, SE034, 76 );
SE035 = playSeVer2( spep_2 + 240, 1401, "",spep_2 + 296, 0, 30, 0.5);

--爆発
SE036 = playSeVer2( spep_2 + 240, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE036, 91 );

--連続気弾
SE037 = playSeVer2( spep_2 + 254, 1401, "",spep_2 + 310, 0, 32, 0.5);
SE038 = playSeVer2( spep_2 + 266, 1401, "",spep_2 + 320, 0, 28, 0.5);
setSeVolumeByWorkId( spep_2 + 266, SE038, 119 );
setPitch( spep_2 + 266, SE038, -100 );
setTimeStretch( SE038, 0.93, 30, 4 );
SE039 = playSeVer2( spep_2 + 280, 1401, "",spep_2 + 338, 0, 32, 0.5);
SE040 = playSeVer2( spep_2 + 292, 1401, "",spep_2 + 354, 0, 34, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE040, 65 );

--爆発
SE041 = playSeVer2( spep_2 + 304, 1024, "", 0, 0, 0, -1);

--連続気弾
SE042 = playSeVer2( spep_2 + 308, 1401, "",spep_2 + 364, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 308, SE042, 111 );
SE043 = playSeVer2( spep_2 + 320, 1406, "",spep_2 + 464, 0, 26, 0.5);
SE044 = playSeVer2( spep_2 + 320, 1401, "",spep_2 + 376, 0, 30, 0.5);
setSeVolumeByWorkId( spep_2 + 320, SE044, 112 );
setPitch( spep_2 + 320, SE044, 100 );
setTimeStretch( SE044, 1.07, 30, 4 );
SE045 = playSeVer2( spep_2 + 334, 1401, "",spep_2 + 394, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 334, SE045, 85 );
SE046 = playSeVer2( spep_2 + 352, 1401, "",spep_2 + 412, 0, 32, 0.5);
SE047 = playSeVer2( spep_2 + 368, 1401, "",spep_2 + 424, 0, 34, 0.5);
SE048 = playSeVer2( spep_2 + 380, 1401, "",spep_2 + 436, 0, 32, 0.5);
setPitch( spep_2 + 380, SE048, -100 );
setTimeStretch( SE048, 0.93, 30, 4 );
SE049 = playSeVer2( spep_2 + 394, 1401, "",spep_2 + 452, 0, 30, 0.5);
SE050 = playSeVer2( spep_2 + 404, 1401, "",spep_2 + 460, 0, 32, 0.5);
SE051 = playSeVer2( spep_2 + 416, 1401, "",spep_2 + 472, 0, 30, 0.5);

--爆発
SE052 = playSeVer2( spep_2 + 428, 1159, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 428, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 442); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 584F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 敵と向かい合う～表情アップ
-------------------------------------------------
MAX_FRAME_0 = 146;

setupMovie(0, SP_02, 0, 1);

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
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
setDisp( spep_0 + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 2 );

setMoveKey( spep_0 + 0, 1, -141, -195.5 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, -141, -195.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -164.7, -195.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -164.7, -195.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -178.6, -195.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -178.6, -195.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -187.2, -195.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -187.2, -195.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -193, -195.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -193, -195.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -197.3, -195.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -197.3, -195.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -200.5, -195.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -200.5, -195.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -203, -195.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -203, -195.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -205, -195.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -205, -195.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -206.6, -195.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -206.6, -195.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -207.9, -195.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -207.9, -195.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -209, -195.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -209, -195.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -209.9, -195.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -209.9, -195.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -210.7, -195.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -210.7, -195.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -211.3, -195.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -211.3, -195.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -211.9, -195.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -211.9, -195.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -212.3, -195.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -212.3, -195.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -213.1, -195.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -213.1, -195.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -213.8, -195.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -213.8, -195.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -214.5, -195.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -214.5, -195.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -215.1, -195.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -215.1, -195.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -215.6, -195.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -215.6, -195.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -216.1, -195.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -216.1, -195.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -216.5, -195.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -216.5, -195.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -217, -195.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -217, -195.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -217.3, -195.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -217.3, -195.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -217.7, -195.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -217.7, -195.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -218, -195.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -218, -195.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -218.2, -195.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -218.2, -195.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -218.5, -195.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -218.5, -195.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -218.7, -195.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -218.7, -195.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -218.9, -195.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -218.9, -195.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -219, -195.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -219, -195.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -219.1, -195.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -219.1, -195.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -219.2, -195.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -219.2, -195.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -219.3, -195.4 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -219.3, -195.4 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -219.4, -195.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -219.4, -195.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -219.4, -195.5 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -219.4, -195.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4, 4 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 168, 0, 24, -1);
SE005 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 50 );
SE006 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 50 );
SE007 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 50 );
SE008 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE008, 50 );
SE009 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 50 );
SE010 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE010, 50 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0+4; --146F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)-2;

-- ** 音 ** --

--オーラ
SE012 = playSeVer2( spep_1 + 84, 1036, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気合を入れる～爆発・フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 586;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 気合を入れる～爆発・フィニッシュ(ef_002r)
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

-- ** 音 ** --

--気ダメ
SE013 = playSeVer2( spep_2 + 6, 1068, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 6, 1035, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_2 + 10, 1036, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

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

--オーラ
SE016 = playSeVer2( spep_2 + 34, 1036, "", 0, 0, 0, -1);

--連続気弾
SE017 = playSeVer2( spep_2 + 48, 1133, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 48, SE017, 76 );
SE018 = playSeVer2( spep_2 + 50, 1403, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 50, SE018, 138 );
SE019 = playSeVer2( spep_2 + 50, 1406, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_2 + 76, 1356, "",spep_2 + 474, 68, 36, 0.5);
setSeVolumeByWorkId( spep_2 + 76, SE020, 116 );
setStartTimeMs( SE020,  433 );
SE021 = playSeVer2( spep_2 + 50, 1401, "",spep_2 + 110, 0, 34, 0.5);
SE022 = playSeVer2( spep_2 + 60, 1401, "",spep_2 + 118, 0, 32, 0.5);
SE023 = playSeVer2( spep_2 + 72, 1401, "",spep_2 + 132, 0, 34, 0.5);
SE024 = playSeVer2( spep_2 + 82, 1401, "",spep_2 + 142, 0, 34, 0.5);
setSeVolumeByWorkId( spep_2 + 82, SE024, 87 );
setPitch( spep_2 + 82, SE024, 100 );
setTimeStretch( SE024, 1.07, 30, 4 );
SE025 = playSeVer2( spep_2 + 102, 1401, "",spep_2 + 162, 0, 32, 0.5);
SE026 = playSeVer2( spep_2 + 116, 1401, "",spep_2 + 174, 0, 34, 0.5);
setSeVolumeByWorkId( spep_2 + 116, SE026, 114 );
SE027 = playSeVer2( spep_2 + 132, 1401, "",spep_2 + 196, 0, 38, 0.5);
SE028 = playSeVer2( spep_2 + 146, 1401, "",spep_2 + 206, 0, 32, 0.5);
setPitch( spep_2 + 146, SE028, -100 );
setTimeStretch( SE028, 0.93, 30, 4 );
SE029 = playSeVer2( spep_2 + 162, 1401, "",spep_2 + 220, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 162, SE029, 81 );
SE030 = playSeVer2( spep_2 + 178, 1401, "",spep_2 + 238, 0, 32, 0.5);
SE031 = playSeVer2( spep_2 + 186, 1406, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 196, 1401, "",spep_2 + 248, 0, 26, 0.5);
setSeVolumeByWorkId( spep_2 + 196, SE032, 110 );
SE033 = playSeVer2( spep_2 + 212, 1401, "",spep_2 + 262, 0, 30, 0.5);
setPitch( spep_2 + 212, SE033, 100 );
setTimeStretch( SE033, 1.07, 30, 4 );
SE034 = playSeVer2( spep_2 + 226, 1401, "",spep_2 + 284, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 226, SE034, 76 );
SE035 = playSeVer2( spep_2 + 240, 1401, "",spep_2 + 296, 0, 30, 0.5);

--爆発
SE036 = playSeVer2( spep_2 + 240, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE036, 91 );

--連続気弾
SE037 = playSeVer2( spep_2 + 254, 1401, "",spep_2 + 310, 0, 32, 0.5);
SE038 = playSeVer2( spep_2 + 266, 1401, "",spep_2 + 320, 0, 28, 0.5);
setSeVolumeByWorkId( spep_2 + 266, SE038, 119 );
setPitch( spep_2 + 266, SE038, -100 );
setTimeStretch( SE038, 0.93, 30, 4 );
SE039 = playSeVer2( spep_2 + 280, 1401, "",spep_2 + 338, 0, 32, 0.5);
SE040 = playSeVer2( spep_2 + 292, 1401, "",spep_2 + 354, 0, 34, 0.5);
setSeVolumeByWorkId( spep_2 + 292, SE040, 65 );

--爆発
SE041 = playSeVer2( spep_2 + 304, 1024, "", 0, 0, 0, -1);

--連続気弾
SE042 = playSeVer2( spep_2 + 308, 1401, "",spep_2 + 364, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 308, SE042, 111 );
SE043 = playSeVer2( spep_2 + 320, 1406, "",spep_2 + 464, 0, 26, 0.5);
SE044 = playSeVer2( spep_2 + 320, 1401, "",spep_2 + 376, 0, 30, 0.5);
setSeVolumeByWorkId( spep_2 + 320, SE044, 112 );
setPitch( spep_2 + 320, SE044, 100 );
setTimeStretch( SE044, 1.07, 30, 4 );
SE045 = playSeVer2( spep_2 + 334, 1401, "",spep_2 + 394, 0, 32, 0.5);
setSeVolumeByWorkId( spep_2 + 334, SE045, 85 );
SE046 = playSeVer2( spep_2 + 352, 1401, "",spep_2 + 412, 0, 32, 0.5);
SE047 = playSeVer2( spep_2 + 368, 1401, "",spep_2 + 424, 0, 34, 0.5);
SE048 = playSeVer2( spep_2 + 380, 1401, "",spep_2 + 436, 0, 32, 0.5);
setPitch( spep_2 + 380, SE048, -100 );
setTimeStretch( SE048, 0.93, 30, 4 );
SE049 = playSeVer2( spep_2 + 394, 1401, "",spep_2 + 452, 0, 30, 0.5);
SE050 = playSeVer2( spep_2 + 404, 1401, "",spep_2 + 460, 0, 32, 0.5);
SE051 = playSeVer2( spep_2 + 416, 1401, "",spep_2 + 472, 0, 30, 0.5);

--爆発
SE052 = playSeVer2( spep_2 + 428, 1159, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 428, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 442); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 584F


end
