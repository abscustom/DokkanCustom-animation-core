--1032460:LR_スーパーガーリックJr._必殺技：デストレイン
--sp_effect_a7_00076
--sp2956

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164297;  -- 開幕ダッシュ ef_001
SP_02 = 164299;  -- つかみ〜叩きつけ ef_002
SP_02b = 164300;  -- つかみ〜叩きつけ ef_002b


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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕ダッシュ
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕ダッシュ(ef_001)
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

--走る
SE002 = playSeVer2( spep_0 + 6, 1111, "",spep_0 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 126 );
SE003 = playSeVer2( spep_0 + 6, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 79 );
setPitch( spep_0 + 6, SE003, -200 );
setTimeStretch( SE003, 0.87, 30, 4 );
SE004 = playSeVer2( spep_0 + 24, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );
setPitch( spep_0 + 24, SE004, -200 );
setTimeStretch( SE004, 0.87, 30, 4 );
SE005 = playSeVer2( spep_0 + 42, 1111, "",spep_0 + 74, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 126 );
SE006 = playSeVer2( spep_0 + 42, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 79 );
setPitch( spep_0 + 42, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );
SE007 = playSeVer2( spep_0 + 62, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 79 );
setPitch( spep_0 + 62, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 78, 1111, "",spep_0 + 110, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 78, SE008, 126 );
SE009 = playSeVer2( spep_0 + 78, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 79 );
setPitch( spep_0 + 78, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--走る
SE010 = playSeVer2( spep_0 + 96, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 79 );
setPitch( spep_0 + 96, SE010, -200 );
setTimeStretch( SE010, 0.87, 30, 4 );
SE011 = playSeVer2( spep_0 + 110, 1111, "",spep_0 + 128, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 126 );
SE012 = playSeVer2( spep_0 + 110, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE012, 79 );
setPitch( spep_0 + 110, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --116F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- つかみ〜叩きつけ
-------------------------------------------------
MAX_FRAME_2 = 522;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- つかみ〜叩きつけ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- つかみ〜叩きつけ(ef_002b)
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
setDisp( spep_2 + 102 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 16 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, -27.2, -250.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -27.4, -251 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -27.4, -251 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -28.4, -251.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -28.4, -251.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -31.3, -254.2 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -31.3, -254.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -37, -258.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -37, -258.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -46.3, -266.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -46.3, -266.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -60.2, -277.3 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -60.2, -277.3 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -79.6, -292.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -79.6, -292.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -129.8, 17.2 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -129.8, 17.2 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -135.2, 33 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -135.2, 33 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -108.5, 30.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -108.5, 30.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -75.4, 16.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -75.4, 16.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -3.9, 27.2 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -3.9, 27.2 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 99.8, 26.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 99.8, 26.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 266, 26.5 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 266, 26.5 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 502.9, 28.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 502.9, 28.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 817.8, 30.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 817.8, 30.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 1209.4, 33.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 1209.4, 33.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 1670.8, 37.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 1670.8, 37.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 50.9, -37.2 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 50.9, -37.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 51.8, -36.4 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 51.8, -36.4 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 53, -35.5 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 53, -35.5 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 54.4, -34.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 54.4, -34.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 56.1, -32.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 56.1, -32.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 58, -31.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 58, -31.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 60.3, -29.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 60.3, -29.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 62.9, -26.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 62.9, -26.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 65.9, -24.1 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 65.9, -24.1 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 69.3, -20.9 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 69.3, -20.9 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 73.3, -17.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 73.3, -17.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 77.8, -12.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 77.8, -12.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 83.1, -7.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 83.1, -7.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 89.2, -2.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 89.2, -2.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 96.3, 4.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 96.3, 4.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 104.8, 13 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 104.8, 13 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 115, 22.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 115, 22.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 127.5, 35 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 127.5, 35 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 143.9, 50.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 143.9, 50.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 196.5, 19.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 196.5, 19.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 238.6, 33.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 238.6, 33.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 346.8, 63.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 346.8, 63.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 393.8, 70.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 393.8, 70.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 491.6, 75.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 491.6, 75.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 568.7, 116.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 568.7, 116.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 630.8, 132.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 630.8, 132.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 719.9, 128.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 719.9, 128.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 786.9, 152 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 786.9, 152 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 880.9, 182.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 880.9, 182.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 945.8, 197.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 945.8, 197.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 1027.9, 205.1 , 0 );
setMoveKey( spep_2 + 102+ OFFSET_X, 1, 1027.9, 205.1 , 0 );

setScaleKey( spep_2 + 0, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.71, 3.71 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -68.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -68.5 );

--敵の動き2

setDisp( spep_2 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 238 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 156 + OFFSET_X, 1, 92.5, 48.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 92.5, 48.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 89.5, -5.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 89.5, -5.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 48.6, 36.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 48.6, 36.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 80.7, 4.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 80.7, 4.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 128.8, 45 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 128.8, 45 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 162, 15.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 162, 15.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 138.3, 36.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 138.3, 36.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 160.3, 3.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 160.3, 3.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 185.4, 46 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 185.4, 46 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 180.8, 46.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 180.8, 46.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 191.6, 17.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 191.6, 17.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 213.8, 41.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 213.8, 41.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 201.5, 45.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 201.5, 45.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 223.4, 28.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 223.4, 28.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 216.6, 30.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 216.6, 30.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 219, 50.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 219, 50.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 232.1, 31.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 232.1, 31.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 222.3, 38 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 222.3, 38 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 223.2, 57.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 223.2, 57.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 228, 27.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 228, 27.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 245, 50.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 245, 50.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 228.3, 53.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 228.3, 53.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 246.6, 36.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 246.6, 36.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 236.8, 38.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 236.8, 38.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 238.1, 55.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 238.1, 55.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 246.4, 40.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 246.4, 40.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 239.4, 44.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 239.4, 44.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 247.7, 54.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 247.7, 54.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 244.8, 48.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 244.8, 48.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 250.4, 51.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 250.4, 51.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 247.5, 53.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 247.5, 53.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 250.3, 52.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 250.3, 52.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 251.8, 52.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 251.8, 52.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 253.3, 53.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 253.3, 53.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 254.8, 53.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 254.8, 53.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 256.4, 54.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 256.4, 54.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 258.1, 54.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 258.1, 54.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 259.8, 54.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 259.8, 54.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 261.6, 55.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 261.6, 55.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 263.5, 55.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 263.5, 55.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 265.6, 56 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 265.6, 56 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_2 + 156 + OFFSET_X, 1, 121.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 121.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 126.1 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 126.1 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 124.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 124.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 123.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 123.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 122 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 122 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 121.4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 121.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 120.9 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 120.9 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 120.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 120.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 119.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 119.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 119.3 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 119.3 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 119 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 119 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 118.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 118.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 118.5 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 118.5 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 118.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 118.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 117.8 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 117.8 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 117.6 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 117.6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 117.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 117.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 117.2 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 117.2 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 117.1 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 117.1 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 116.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 116.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 116.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 116.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 116.6 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 116.6 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 116.5 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 116.5 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 116.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 116.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 116.2 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 116.2 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 116.1 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 116.1 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 115.9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 115.9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 115.8 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 115.8 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 115.7 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 115.7 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 115.4 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 115.4 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 115.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 115.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 115.2 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 115.2 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 115.1 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 115.1 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 115 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 115 );

--敵の動き3

setDisp( spep_2 + 244 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 404 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 244 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 244 + OFFSET_X, 1, -487.8, 659.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -487.8, 659.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -363.3, 496.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -363.3, 496.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -289.4, 399.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -289.4, 399.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -236.3, 329.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -236.3, 329.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -195.1, 275.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -195.1, 275.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -161.7, 230.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -161.7, 230.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -134, 194 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -134, 194 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -110.4, 162.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -110.4, 162.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -90.2, 135.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -90.2, 135.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -72.6, 111.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -72.6, 111.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -57.2, 90.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -57.2, 90.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -43.5, 72.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -43.5, 72.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -31.3, 55.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -31.3, 55.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -20.4, 40.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -20.4, 40.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -10.5, 26.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -10.5, 26.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -1.6, 14.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -1.6, 14.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 6.6, 2.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 6.6, 2.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 14, -7.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 14, -7.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 20.9, -17.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 20.9, -17.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 27.2, -26.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 27.2, -26.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 33.1, -35.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 33.1, -35.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 38.7, -43.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 38.7, -43.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 43.8, -51 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 43.8, -51 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 48.8, -58.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 48.8, -58.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 53.4, -65.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 53.4, -65.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 57.9, -71.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 57.9, -71.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 62.2, -78.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 62.2, -78.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 66.3, -84.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 66.3, -84.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 70.3, -90.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 70.3, -90.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 74.2, -96.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 74.2, -96.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 78.1, -102.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 78.1, -102.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 81.9, -108.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 81.9, -108.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 85.7, -114 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 85.7, -114 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 89.4, -119.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 89.4, -119.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 88.1, -118.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 88.1, -118.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 84.7, 530.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 84.7, 530.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 84.3, 487.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 84.3, 487.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 83.9, 442.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 83.9, 442.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 83.5, 394.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 83.5, 394.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 83, 344.6 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 83, 344.6 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 82.6, 290.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 82.6, 290.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 82, 232 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 82, 232 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 81.5, 166.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 81.5, 166.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 80.8, 90.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 80.8, 90.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 80.1, 8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 80.1, 8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 85.3, -67.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 85.3, -67.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 67, -18.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 67, -18.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 100.5, -33.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 100.5, -33.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 61.3, -55 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 61.3, -55 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 90.6, -59.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 90.6, -59.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 86.4, -47.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 86.4, -47.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 73.7, -78.3 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 73.7, -78.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 94.5, -72.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 94.5, -72.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 76.2, -83.6 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 76.2, -83.6 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 67.6, -120.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 67.6, -120.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 96.8, -116.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 96.8, -116.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 84, -158.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 84, -158.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 71.1, -156.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 71.1, -156.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 86.3, -180.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 86.3, -180.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 70.6, -217.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 70.6, -217.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 74.5, -231.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 74.5, -231.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 78.3, -264.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 78.3, -264.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 76.6, -293 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 76.6, -293 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 76.2, -325.3 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 76.2, -325.3 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 75.8, -359.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 75.8, -359.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 75.3, -395.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 75.3, -395.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 74.9, -433.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 74.9, -433.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -11.5, 147.3 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -11.5, 147.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -11.6, 130 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -11.6, 130 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -11.7, 111.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -11.7, 111.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -11.8, 92.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -11.8, 92.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -11.9, 70.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -11.9, 70.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -11.9, 47.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -11.9, 47.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -12, 21.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -12, 21.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -12.2, -7.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -12.2, -7.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -12.3, -41.5 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -12.3, -41.5 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -12.4, -80.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -12.4, -80.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -12.6, -123.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -12.6, -123.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -12.8, -170.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -12.8, -170.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -13, -217.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -13, -217.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 8.8, -310.9 , 0 );

setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 244 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 86.2 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 86.2 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 87.5 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 87.5 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 88.4 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 88.4 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 89.1 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 89.1 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 89.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 89.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 90.2 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 90.2 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 90.6 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 90.6 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 90.9 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 90.9 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 91.2 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 91.2 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 91.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 91.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 91.8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 91.8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 92 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 92 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 92.2 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 92.2 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 92.4 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 92.4 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 92.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 92.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 92.7 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 92.7 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 92.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 92.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 93.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 93.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 93.2 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 93.2 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 93.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 93.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 93.4 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 93.4 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 93.5 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 93.5 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 93.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 93.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 93.7 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 93.7 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 93.8 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 93.8 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 93.9 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 93.9 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 94 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 94 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 94.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 94.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 94.2 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 94.2 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 94.3 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 94.3 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 94.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 94.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 127.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 127.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 128.5 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 128.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 129.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 129.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 131.1 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 131.1 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 132.5 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 132.5 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 134 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 134 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 135.6 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 135.6 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 137.4 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 137.4 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 139.5 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 139.5 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 141.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 141.8 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 143 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 143 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 143.2 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 143.2 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 143.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 143.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 143.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 143.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 143.6 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 143.6 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 143.7 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 143.7 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 143.9 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 143.9 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 144 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 144 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 144.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 144.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 144.5 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 144.5 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 144.8 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 144.8 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 145 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 145 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 145.4 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 145.4 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 145.7 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 145.7 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 146.1 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 146.1 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 146.4 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 146.4 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 147.3 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 147.3 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 147.8 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 147.8 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 148.3 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 148.3 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 134.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 134.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 135.5 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 135.5 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 136.7 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, 136.7 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 137.9 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 137.9 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 139.2 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 139.2 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 140.7 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 140.7 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 142.3 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 142.3 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 144.2 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 144.2 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 146.3 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, 146.3 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 148.7 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 148.7 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 151.4 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 151.4 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 154.3 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, 154.3 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, 157.3 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 157.3 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 160.2 );

-- ** 音 ** --

--敵つかむ
SE014 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 10, 1006, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 10, 1153, "", 0, 0, 0, -1);

--走ってくる
SE017 = playSeVer2( spep_2 + 28, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 32, 1111, "",spep_2 + 66, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 32, SE018, 45 );
SE019 = playSeVer2( spep_2 + 32, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE019, 40 );
setPitch( spep_2 + 32, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );
SE020 = playSeVer2( spep_2 + 42, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE020, 46 );
setTimeStretch( SE020, 1.65, 30, 4 );
SE021 = playSeVer2( spep_2 + 52, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE021, 50 );
setPitch( spep_2 + 52, SE021, -200 );
setTimeStretch( SE021, 0.87, 30, 4 );
SE024 = playSeVer2( spep_2 + 70, 1111, "",spep_2 + 104, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 70, SE024, 82 );
SE025 = playSeVer2( spep_2 + 70, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE025, 71 );
setPitch( spep_2 + 70, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_2 + 90, 1472, "", 0, 0, 0, -1);
setPitch( spep_2 + 90, SE026, -200 );
setTimeStretch( SE026, 0.87, 30, 4 );
SE027 = playSeVer2( spep_2 + 104, 1111, "",spep_2 + 138, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 104, SE027, 112 );
SE028 = playSeVer2( spep_2 + 106, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE028, 122 );
setPitch( spep_2 + 106, SE028, -200 );
setTimeStretch( SE028, 0.87, 30, 4 );

--柱ぶつける
SE022 = playSeVer2( spep_2 + 70, 1068, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 70, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE023, 116 );

--天井破る
SE029 = playSeVer2( spep_2 + 140, 1024, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 140, 1067, "", 0, 0, 0, -1);

--落ちていく
SE031 = playSeVer2( spep_2 + 230, 1278, "",spep_2 + 370, 0, 56, -1);
SE032 = playSeVer2( spep_2 + 230, 1497, "",spep_2 + 310, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 230, SE032, 71 );
SE033 = playSeVer2( spep_2 + 230, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE033, 73 );
SE034 = playSeVer2( spep_2 + 242, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE034, 58 );

--梁に当てる
SE035 = playSeVer2( spep_2 + 324, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 324, 1168, "", 0, 0, 0, -1);

--地面激突
SE037 = playSeVer2( spep_2 + 398, 1067, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 398, 1188, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 442, 1160, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 404); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 522F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕ダッシュ
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕ダッシュ(ef_001)
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

-- ** 音 ** --

--走る
SE002 = playSeVer2( spep_0 + 6, 1111, "",spep_0 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 126 );
SE003 = playSeVer2( spep_0 + 6, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 79 );
setPitch( spep_0 + 6, SE003, -200 );
setTimeStretch( SE003, 0.87, 30, 4 );
SE004 = playSeVer2( spep_0 + 24, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );
setPitch( spep_0 + 24, SE004, -200 );
setTimeStretch( SE004, 0.87, 30, 4 );
SE005 = playSeVer2( spep_0 + 42, 1111, "",spep_0 + 74, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 126 );
SE006 = playSeVer2( spep_0 + 42, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 79 );
setPitch( spep_0 + 42, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );
SE007 = playSeVer2( spep_0 + 62, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 79 );
setPitch( spep_0 + 62, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 78, 1111, "",spep_0 + 110, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 78, SE008, 126 );
SE009 = playSeVer2( spep_0 + 78, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 79 );
setPitch( spep_0 + 78, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--走る
SE010 = playSeVer2( spep_0 + 96, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 79 );
setPitch( spep_0 + 96, SE010, -200 );
setTimeStretch( SE010, 0.87, 30, 4 );
SE011 = playSeVer2( spep_0 + 110, 1111, "",spep_0 + 128, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 126 );
SE012 = playSeVer2( spep_0 + 110, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE012, 79 );
setPitch( spep_0 + 110, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --116F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- つかみ〜叩きつけ
-------------------------------------------------
MAX_FRAME_2 = 522;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- つかみ〜叩きつけ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- つかみ〜叩きつけ(ef_002b)
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

--敵の動き1

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 102 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 + 16 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 0, 1, 27.2, -250.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 27.4, -251 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 27.4, -251 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 28.4, -251.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 28.4, -251.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 31.3, -254.2 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 31.3, -254.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 37, -258.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 37, -258.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 46.3, -266.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 46.3, -266.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 60.2, -277.3 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 60.2, -277.3 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 79.6, -292.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 79.6, -292.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 129.8, 17.2 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 129.8, 17.2 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 135.2, 33 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 135.2, 33 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 108.5, 30.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 108.5, 30.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 75.4, 16.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 75.4, 16.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 3.9, 27.2 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 3.9, 27.2 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -99.8, 26.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -99.8, 26.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -266, 26.5 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -266, 26.5 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -502.9, 28.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -502.9, 28.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -817.8, 30.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -817.8, 30.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -1209.4, 33.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -1209.4, 33.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -1670.8, 37.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -1670.8, 37.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -50.9, -37.2 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -50.9, -37.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -51.8, -36.4 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -51.8, -36.4 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -53, -35.5 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -53, -35.5 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -54.4, -34.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -54.4, -34.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -56.1, -32.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -56.1, -32.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -58, -31.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -58, -31.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -60.3, -29.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -60.3, -29.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -62.9, -26.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -62.9, -26.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -65.9, -24.1 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -65.9, -24.1 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -69.3, -20.9 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -69.3, -20.9 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -73.3, -17.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -73.3, -17.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -77.8, -12.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -77.8, -12.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -83.1, -7.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -83.1, -7.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -89.2, -2.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -89.2, -2.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -96.3, 4.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -96.3, 4.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -104.8, 13 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -104.8, 13 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -115, 22.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -115, 22.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -127.5, 35 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -127.5, 35 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -143.9, 50.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -143.9, 50.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -196.5, 19.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -196.5, 19.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -238.6, 33.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -238.6, 33.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -346.8, 63.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -346.8, 63.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -393.8, 70.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -393.8, 70.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -491.6, 75.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -491.6, 75.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -568.7, 116.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -568.7, 116.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -630.8, 132.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -630.8, 132.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -719.9, 128.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -719.9, 128.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -786.9, 152 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -786.9, 152 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -880.9, 182.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -880.9, 182.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -945.8, 197.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -945.8, 197.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -1027.9, 205.1 , 0 );
setMoveKey( spep_2 + 102+ OFFSET_X, 1, -1027.9, 205.1 , 0 );

setScaleKey( spep_2 + 0, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 6.96, 6.96 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.71, 3.71 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 68.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 68.5 );

--敵の動き2

setDisp( spep_2 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 238 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 156 + OFFSET_X, 1, -92.5, 48.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -92.5, 48.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -89.5, -5.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -89.5, -5.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -48.6, 36.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -48.6, 36.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -80.7, 4.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -80.7, 4.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -128.8, 45 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -128.8, 45 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -162, 15.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -162, 15.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -138.3, 36.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -138.3, 36.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -160.3, 3.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -160.3, 3.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -185.4, 46 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -185.4, 46 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -180.8, 46.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -180.8, 46.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -191.6, 17.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -191.6, 17.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -213.8, 41.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -213.8, 41.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -201.5, 45.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -201.5, 45.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -223.4, 28.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -223.4, 28.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -216.6, 30.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -216.6, 30.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -219, 50.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -219, 50.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -232.1, 31.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -232.1, 31.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -222.3, 38 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -222.3, 38 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -223.2, 57.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -223.2, 57.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -228, 27.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -228, 27.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -245, 50.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -245, 50.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -228.3, 53.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -228.3, 53.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -246.6, 36.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -246.6, 36.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -236.8, 38.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -236.8, 38.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -238.1, 55.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -238.1, 55.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -246.4, 40.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -246.4, 40.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -239.4, 44.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -239.4, 44.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -247.7, 54.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -247.7, 54.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -244.8, 48.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -244.8, 48.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -250.4, 51.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -250.4, 51.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -247.5, 53.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -247.5, 53.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -250.3, 52.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -250.3, 52.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -251.8, 52.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -251.8, 52.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -253.3, 53.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -253.3, 53.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -254.8, 53.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -254.8, 53.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -256.4, 54.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -256.4, 54.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -258.1, 54.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -258.1, 54.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -259.8, 54.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -259.8, 54.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -261.6, 55.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -261.6, 55.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -263.5, 55.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -263.5, 55.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -265.6, 56 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -265.6, 56 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_2 + 156 + OFFSET_X, 1, -121.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -121.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -126.1 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -126.1 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -124.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -124.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -123.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -123.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -122.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -122.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -122 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -122 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -121.4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -121.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -120.9 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -120.9 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -120.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -120.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -119.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -119.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -119.3 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -119.3 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -119 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -119 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -118.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -118.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -118.5 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -118.5 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -118.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -118.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -118 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -118 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -117.8 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -117.8 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -117.6 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -117.6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -117.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -117.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -117.2 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -117.2 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -117.1 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -117.1 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -116.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -116.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -116.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -116.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -116.6 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -116.6 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -116.5 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -116.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -116.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -116.2 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -116.2 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -116.1 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -116.1 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -115.9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -115.9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -115.7 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -115.7 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -115.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -115.5 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -115.5 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -115.4 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -115.4 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -115.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -115.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -115.2 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -115.2 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -115.1 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -115.1 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -115 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -115 );

--敵の動き3

setDisp( spep_2 + 244 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 404 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 244 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 244 + OFFSET_X, 1, 487.8, 659.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 487.8, 659.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 363.3, 496.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 363.3, 496.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 289.4, 399.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 289.4, 399.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 236.3, 329.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 236.3, 329.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 195.1, 275.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 195.1, 275.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 161.7, 230.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 161.7, 230.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 134, 194 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 134, 194 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 110.4, 162.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 110.4, 162.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 90.2, 135.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 90.2, 135.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 72.6, 111.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 72.6, 111.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 57.2, 90.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 57.2, 90.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 43.5, 72.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 43.5, 72.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 31.3, 55.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 31.3, 55.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 20.4, 40.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 20.4, 40.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 10.5, 26.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 10.5, 26.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 1.6, 14.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 1.6, 14.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -6.6, 2.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -6.6, 2.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -14, -7.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -14, -7.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -20.9, -17.6 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -20.9, -17.6 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -27.2, -26.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -27.2, -26.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -33.1, -35.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -33.1, -35.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -38.7, -43.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -38.7, -43.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -43.8, -51 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -43.8, -51 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -48.8, -58.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -48.8, -58.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -53.4, -65.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -53.4, -65.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -57.9, -71.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -57.9, -71.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -62.2, -78.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -62.2, -78.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -66.3, -84.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -66.3, -84.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -70.3, -90.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -70.3, -90.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -74.2, -96.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -74.2, -96.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -78.1, -102.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -78.1, -102.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -81.9, -108.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -81.9, -108.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -85.7, -114 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -85.7, -114 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -89.4, -119.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -89.4, -119.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -88.1, -118.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -88.1, -118.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -84.7, 530.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -84.7, 530.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -84.3, 487.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -84.3, 487.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -83.9, 442.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -83.9, 442.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -83.5, 394.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -83.5, 394.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -83, 344.6 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -83, 344.6 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -82.6, 290.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -82.6, 290.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -82, 232 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -82, 232 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -81.5, 166.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -81.5, 166.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -80.8, 90.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -80.8, 90.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -80.1, 8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -80.1, 8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -85.3, -67.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -85.3, -67.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -67, -18.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -67, -18.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -100.5, -33.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -100.5, -33.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -61.3, -55 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -61.3, -55 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -90.6, -59.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -90.6, -59.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -86.4, -47.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -86.4, -47.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -73.7, -78.3 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -73.7, -78.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -94.5, -72.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -94.5, -72.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -76.2, -83.6 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -76.2, -83.6 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -67.6, -120.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -67.6, -120.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -96.8, -116.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -96.8, -116.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -84, -158.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -84, -158.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -71.1, -156.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -71.1, -156.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -86.3, -180.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -86.3, -180.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -70.6, -217.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -70.6, -217.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -74.5, -231.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -74.5, -231.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -78.3, -264.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -78.3, -264.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -76.6, -293 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -76.6, -293 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -76.2, -325.3 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -76.2, -325.3 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -75.8, -359.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -75.8, -359.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -75.3, -395.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -75.3, -395.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -74.9, -433.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -74.9, -433.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 11.5, 147.3 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 11.5, 147.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 11.6, 130 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 11.6, 130 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 11.7, 111.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 11.7, 111.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 11.8, 92.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 11.8, 92.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 11.9, 70.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 11.9, 70.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 11.9, 47.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 11.9, 47.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 12, 21.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 12, 21.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 12.2, -7.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 12.2, -7.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 12.3, -41.5 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 12.3, -41.5 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 12.4, -80.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 12.4, -80.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 12.6, -123.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 12.6, -123.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 12.8, -170.3 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 12.8, -170.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 13, -217.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 13, -217.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -8.8, -310.9 , 0 );

setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 244 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -86.2 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -86.2 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -87.5 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -87.5 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -88.4 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -88.4 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -89.1 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -89.1 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -89.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -89.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -90.2 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -90.2 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -90.9 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -90.9 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -91.2 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -91.2 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -91.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -91.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -91.8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -91.8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -92 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -92 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -92.2 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -92.2 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -92.4 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -92.4 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -92.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -92.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -92.7 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -92.7 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -92.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -92.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -93.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -93.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -93.2 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -93.2 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -93.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -93.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -93.4 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -93.4 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -93.5 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -93.5 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -93.7 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -93.7 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -93.8 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -93.8 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -93.9 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -93.9 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -94 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -94 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -94.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -94.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -94.2 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -94.2 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -94.3 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -94.3 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -94.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -94.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -127.3 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -127.3 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -128.5 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -128.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -129.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -129.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -131.1 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -131.1 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -132.5 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -132.5 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -134 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -134 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -135.6 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -135.6 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -137.4 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -137.4 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -139.5 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -139.5 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -141.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -141.8 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -143 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -143 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -143.2 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -143.2 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -143.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -143.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -143.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -143.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -143.6 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -143.6 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -143.7 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -143.7 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -143.9 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -143.9 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -144 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -144 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -144.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -144.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -144.5 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -144.5 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -144.8 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -144.8 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -145 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -145 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -145.4 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -145.4 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -145.7 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -145.7 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -146.1 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -146.1 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -146.4 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -146.4 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -146.9 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -146.9 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -147.3 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -147.3 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -147.8 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -147.8 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -148.3 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -148.3 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -134.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -134.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -135.5 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -135.5 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -136.7 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -136.7 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -137.9 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -137.9 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -139.2 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -139.2 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -140.7 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -140.7 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -142.3 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, -142.3 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -144.2 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -144.2 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -146.3 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, -146.3 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -148.7 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -148.7 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -151.4 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -151.4 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -154.3 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -154.3 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -157.3 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -157.3 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -160.2 );

-- ** 音 ** --

--敵つかむ
SE014 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 10, 1006, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 10, 1153, "", 0, 0, 0, -1);

--走ってくる
SE017 = playSeVer2( spep_2 + 28, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 32, 1111, "",spep_2 + 66, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 32, SE018, 45 );
SE019 = playSeVer2( spep_2 + 32, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE019, 40 );
setPitch( spep_2 + 32, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );
SE020 = playSeVer2( spep_2 + 42, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE020, 46 );
setTimeStretch( SE020, 1.65, 30, 4 );
SE021 = playSeVer2( spep_2 + 52, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE021, 50 );
setPitch( spep_2 + 52, SE021, -200 );
setTimeStretch( SE021, 0.87, 30, 4 );
SE024 = playSeVer2( spep_2 + 70, 1111, "",spep_2 + 104, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 70, SE024, 82 );
SE025 = playSeVer2( spep_2 + 70, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE025, 71 );
setPitch( spep_2 + 70, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_2 + 90, 1472, "", 0, 0, 0, -1);
setPitch( spep_2 + 90, SE026, -200 );
setTimeStretch( SE026, 0.87, 30, 4 );
SE027 = playSeVer2( spep_2 + 104, 1111, "",spep_2 + 138, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 104, SE027, 112 );
SE028 = playSeVer2( spep_2 + 106, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE028, 122 );
setPitch( spep_2 + 106, SE028, -200 );
setTimeStretch( SE028, 0.87, 30, 4 );

--柱ぶつける
SE022 = playSeVer2( spep_2 + 70, 1068, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 70, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE023, 116 );

--天井破る
SE029 = playSeVer2( spep_2 + 140, 1024, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 140, 1067, "", 0, 0, 0, -1);

--落ちていく
SE031 = playSeVer2( spep_2 + 230, 1278, "",spep_2 + 370, 0, 56, -1);
SE032 = playSeVer2( spep_2 + 230, 1497, "",spep_2 + 310, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 230, SE032, 71 );
SE033 = playSeVer2( spep_2 + 230, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE033, 73 );
SE034 = playSeVer2( spep_2 + 242, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE034, 58 );

--梁に当てる
SE035 = playSeVer2( spep_2 + 324, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 324, 1168, "", 0, 0, 0, -1);

--地面激突
SE037 = playSeVer2( spep_2 + 398, 1067, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 398, 1188, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 442, 1160, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 404); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 522F


end
