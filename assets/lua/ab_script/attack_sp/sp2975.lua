--4032780:LR_超サイヤ人孫悟空_超必殺技：超かめはめ波
--sp_effect_a1_00523
--sp2975

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02 = 164401;  -- カードカットイン後 ef_002


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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_02, 0, 1);
-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 178;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

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

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
--オーラ
SE003 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 63 );
SE004 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 63 );
--構える
SE005 = playSeVer2( spep_0 + 46, 1072, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 58, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 83 );
--オーラ
SE007 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 63 );
SE008 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE008, 63 );
--構える
SE009 = playSeVer2( spep_0 + 94, 1233, "", 0, 0, 0, -1);
--オーラ
SE010 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE010, 63 );
SE011 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE011, 63 );
--構える
SE012 = playSeVer2( spep_0 + 134, 1004, "", 0, 0, 0, -1);
--オーラ
SE013 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE013, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --178F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE015 = playSeVer2( spep_1 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 63 );

-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 506;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後(ef_002)
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

setDisp( spep_2 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 386 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 384 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 364 + OFFSET_X, 1, 181.6, -232.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 181.6, -232.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 265.1, -310.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 265.1, -310.9 , 0 );

setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 364 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -34.3 );

setBlendColor( spep_2 + 364 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 384 + OFFSET_X, 1, 3, 0, 1, 1, 1 );
setBlendColor( spep_2 + 386 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--かめはめ波溜め
SE016 = playSeVer2( spep_2 + 14, 1209, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 14, 1210, "",spep_2 + 330, 0, 40, -1);
--オーラ
SE018 = playSeVer2( spep_2 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE018, 63 );
SE019 = playSeVer2( spep_2 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE019, 63 );
--かめはめ波溜め２
SE020 = playSeVer2( spep_2 + 64, 1489, "", 0, 0, 0, -1);
--オーラ
SE021 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE021, 63 );
SE022 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE022, 63 );
SE023 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE023, 63 );
--かめはめ波溜め２
SE024 = playSeVer2( spep_2 + 132, 1394, "",spep_2 + 330, 0, 40, -1);
SE025 = playSeVer2( spep_2 + 134, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE025, 70 );
--オーラ
SE026 = playSeVer2( spep_2 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE026, 63 );
SE027 = playSeVer2( spep_2 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE027, 63 );
SE028 = playSeVer2( spep_2 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE028, 63 );
SE029 = playSeVer2( spep_2 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE029, 63 );
SE030 = playSeVer2( spep_2 + 234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE030, 63 );
--画面遷移
SE031 = playSeVer2( spep_2 + 242, 1072, "", 0, 0, 0, -1);
--オーラ
SE032 = playSeVer2( spep_2 + 258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE032, 63 );
SE033 = playSeVer2( spep_2 + 282, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 282, SE033, 63 );
--かめはめ波発射
SE034 = playSeVer2( spep_2 + 288, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE034, 45 );
SE035 = playSeVer2( spep_2 + 288, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE035, 58 );
SE036 = playSeVer2( spep_2 + 288, 1133, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 316, 1258, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 316, 1161, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 350; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
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

--爆発
SE039 = playSeVer2( spep_2 + 374, 1067, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 374, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 506F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_02, 0, 1);
-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 178;

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

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
--オーラ
SE003 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 63 );
SE004 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 63 );
--構える
SE005 = playSeVer2( spep_0 + 46, 1072, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 58, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 83 );
--オーラ
SE007 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 63 );
SE008 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE008, 63 );
--構える
SE009 = playSeVer2( spep_0 + 94, 1233, "", 0, 0, 0, -1);
--オーラ
SE010 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE010, 63 );
SE011 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE011, 63 );
--構える
SE012 = playSeVer2( spep_0 + 134, 1004, "", 0, 0, 0, -1);
--オーラ
SE013 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE013, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --178F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE015 = playSeVer2( spep_1 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 63 );

-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 506;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後(ef_002)
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

setDisp( spep_2 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 386 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1,18 );
changeAnime( spep_2 + 384 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 364 + OFFSET_X, 1, -181.6, -232.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -181.6, -232.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -265.1, -310.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -265.1, -310.9 , 0 );

setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 364 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 34.3 );

setBlendColor( spep_2 + 364 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 384 + OFFSET_X, 1, 3, 0, 1, 1, 1 );
setBlendColor( spep_2 + 386 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--かめはめ波溜め
SE016 = playSeVer2( spep_2 + 14, 1209, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 14, 1210, "",spep_2 + 330, 0, 40, -1);
--オーラ
SE018 = playSeVer2( spep_2 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE018, 63 );
SE019 = playSeVer2( spep_2 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE019, 63 );
--かめはめ波溜め２
SE020 = playSeVer2( spep_2 + 64, 1489, "", 0, 0, 0, -1);
--オーラ
SE021 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE021, 63 );
SE022 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE022, 63 );
SE023 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE023, 63 );
--かめはめ波溜め２
SE024 = playSeVer2( spep_2 + 132, 1394, "",spep_2 + 330, 0, 40, -1);
SE025 = playSeVer2( spep_2 + 134, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE025, 70 );
--オーラ
SE026 = playSeVer2( spep_2 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE026, 63 );
SE027 = playSeVer2( spep_2 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE027, 63 );
SE028 = playSeVer2( spep_2 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE028, 63 );
SE029 = playSeVer2( spep_2 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE029, 63 );
SE030 = playSeVer2( spep_2 + 234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE030, 63 );
--画面遷移
SE031 = playSeVer2( spep_2 + 242, 1072, "", 0, 0, 0, -1);
--オーラ
SE032 = playSeVer2( spep_2 + 258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE032, 63 );
SE033 = playSeVer2( spep_2 + 282, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 282, SE033, 63 );
--かめはめ波発射
SE034 = playSeVer2( spep_2 + 288, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE034, 45 );
SE035 = playSeVer2( spep_2 + 288, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE035, 58 );
SE036 = playSeVer2( spep_2 + 288, 1133, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 316, 1258, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 316, 1161, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 350; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
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

--爆発
SE039 = playSeVer2( spep_2 + 374, 1067, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 374, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 506F


end
