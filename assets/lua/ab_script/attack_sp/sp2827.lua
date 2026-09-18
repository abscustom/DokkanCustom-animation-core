--4030540:LR_孫悟空+フリーザ(最終形態)(天使)_必殺技：かめはめ波
--sp_effect_a1_00475
--sp2827

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163530;  -- カードカットイン前 ef_001
SP_02 = 163531;  -- カードカットイン後1 ef_002
SP_03 = 163532;  -- カードカットイン後2 前面 ef_003
SP_03b = 163533;  -- カードカットイン後2 背面 ef_003b

--エフェクト(敵)
SP_03r = 163534;  -- カードカットイン後2 前面 ef_003r


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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

adjustAttackerLabel( 0, 205);


if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 108;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 98;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --かめはめ波発射
        SE009 = playSeVer2( spep_2 + 98 + 3, 1133, "", 0, 0, 0, -1);
        SE010 = playSeVer2( spep_2 + 98 + 3, 1146, "", 0, 0, 0, -1);
    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カードカットイン前(ef_001)
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
spep_x = spep_0 + 10;

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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 138, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 132 );
SE004 = playSeVer2( spep_0 + 26, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 85 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --108F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--かめはめ波溜め
SE005 = playSeVer2( spep_1 + 92, 1210, "",spep_1 + 202, 14, 30, -1);
setStartTimeMs( SE005,  3867 );
setTimeStretch( SE005, 0.71, 30, 4 );
SE007 = playSeVer2( spep_1 + 84, 1209, "", 0, 0, 0, -1);

-------------------------------------------------
-- カードカットイン後1
-------------------------------------------------
MAX_FRAME_2 = 98;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- カードカットイン後1(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白 背景

-- ** 音 ** --

--カメラの動き
SE008 = playSeVer2( spep_2 + 18, 1116, "",spep_2 + 64, 0, 22, -1);

--かめはめ波発射
SE009 = playSeVer2( spep_2 + 54, 1133, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 56, 1146, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, SE001, 0);
-- stopSe( SP_dodge - 12, SE002, 0);
-- stopSe( SP_dodge - 12, SE003, 0);
-- stopSe( SP_dodge - 12, SE004, 0);
-- stopSe( SP_dodge - 12, SE005, 0);
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

--気弾飛んでいく
SE011 = playSeVer2( spep_2 + 76, 1211, "",spep_2 + 210, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 76, SE011, 209 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; --98F

-------------------------------------------------
-- カードカットイン後2
-------------------------------------------------
MAX_FRAME_3 = 278;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); -- カードカットイン後2 前面(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- カードカットイン後2 背面(ef_003b)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 38 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 14 + OFFSET_X, 1, 108 );

setMoveKey( spep_3 + 0 , 1, 131.5, -124.1 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 131.5, -124.1 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 183.1, -152.7 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 183.1, -152.7 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 157.1, -171.9 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 157.1, -171.9 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 151, -137 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_X, 1, 151, -137 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, 130.4, -125.6 , 0 );
setMoveKey( spep_3 + 21 + OFFSET_X, 1, 130.4, -125.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, 221.1, -83.3 , 0 );
setMoveKey( spep_3 + 23 + OFFSET_X, 1, 221.1, -83.3 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, 203.1, -94.2 , 0 );
setMoveKey( spep_3 + 25 + OFFSET_X, 1, 203.1, -94.2 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, 245.2, -0.1 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_X, 1, 245.2, -0.1 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, 239.3, 14.3 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_X, 1, 239.3, 14.3 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, 233.6, 93.7 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, 233.6, 93.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 0, 1, -16 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, -16 );

-- ** 音 ** --

--気弾飛んでいく
SE012 = playSeVer2( spep_3 + 4, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 20, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE013, 202 );
SE014 = playSeVer2( spep_3 + 28, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE014, 81 );

--海面に落ちる
SE015 = playSeVer2( spep_3 + 42, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE015, 188 );
SE016 = playSeVer2( spep_3 + 70, 1159, "", 0, 0, 0, -1);

--爆発前予兆
SE017 = playSeVer2( spep_3 + 116, 1307, "",spep_3 + 188, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 116, SE017, 158 );

--爆発
SE018 = playSeVer2( spep_3 + 144, 1067, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 150, 1296, "",spep_3 + 276, 0, 94, -1);
setSeVolumeByWorkId( spep_3 + 150, SE019, 66 );
setPitch( spep_3 + 150, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_3 + 162, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 162, SE020, 81 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 160); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -4); -- 278F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カードカットイン前(ef_001)
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
spep_x = spep_0 + 10;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 138, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 132 );
SE004 = playSeVer2( spep_0 + 26, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 85 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --108F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--かめはめ波溜め
SE005 = playSeVer2( spep_1 + 92, 1210, "",spep_1 + 202, 14, 30, -1);
setStartTimeMs( SE005,  3867 );
setTimeStretch( SE005, 0.71, 30, 4 );
SE007 = playSeVer2( spep_1 + 84, 1209, "", 0, 0, 0, -1);

-------------------------------------------------
-- カードカットイン後1
-------------------------------------------------
MAX_FRAME_2 = 98;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- カードカットイン後1(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白 背景

-- ** 音 ** --

--カメラの動き
SE008 = playSeVer2( spep_2 + 18, 1116, "",spep_2 + 64, 0, 22, -1);

--かめはめ波発射
SE009 = playSeVer2( spep_2 + 54, 1133, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 56, 1146, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, SE001, 0);
-- stopSe( SP_dodge - 12, SE002, 0);
-- stopSe( SP_dodge - 12, SE003, 0);
-- stopSe( SP_dodge - 12, SE004, 0);
-- stopSe( SP_dodge - 12, SE005, 0);
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

--気弾飛んでいく
SE011 = playSeVer2( spep_2 + 76, 1211, "",spep_2 + 210, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 76, SE011, 209 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; --98F

-------------------------------------------------
-- カードカットイン後2
-------------------------------------------------
MAX_FRAME_3 = 278;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- カードカットイン後2 前面(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- カードカットイン後2 背面(ef_003b)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 38 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 14 + OFFSET_X, 1, 108 );

setMoveKey( spep_3 + 0 , 1, 131.5, -124.1 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 131.5, -124.1 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 183.1, -152.7 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 183.1, -152.7 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 157.1, -171.9 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 157.1, -171.9 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 151, -137 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_X, 1, 151, -137 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, 130.4, -125.6 , 0 );
setMoveKey( spep_3 + 21 + OFFSET_X, 1, 130.4, -125.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, 221.1, -83.3 , 0 );
setMoveKey( spep_3 + 23 + OFFSET_X, 1, 221.1, -83.3 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, 203.1, -94.2 , 0 );
setMoveKey( spep_3 + 25 + OFFSET_X, 1, 203.1, -94.2 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, 245.2, -0.1 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_X, 1, 245.2, -0.1 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, 239.3, 14.3 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_X, 1, 239.3, 14.3 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, 233.6, 93.7 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, 233.6, 93.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 0, 1, -16 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, -16 );

-- ** 音 ** --

--気弾飛んでいく
SE012 = playSeVer2( spep_3 + 4, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 20, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE013, 202 );
SE014 = playSeVer2( spep_3 + 28, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE014, 81 );

--海面に落ちる
SE015 = playSeVer2( spep_3 + 42, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE015, 188 );
SE016 = playSeVer2( spep_3 + 70, 1159, "", 0, 0, 0, -1);

--爆発前予兆
SE017 = playSeVer2( spep_3 + 116, 1307, "",spep_3 + 188, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 116, SE017, 158 );

--爆発
SE018 = playSeVer2( spep_3 + 144, 1067, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 150, 1296, "",spep_3 + 276, 0, 94, -1);
setSeVolumeByWorkId( spep_3 + 150, SE019, 66 );
setPitch( spep_3 + 150, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_3 + 162, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 162, SE020, 81 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 160); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -4); -- 278F

end
