--1031160:タマガミ・ナンバー・ツー_必殺技：クロスウェイブスラッシュ_クロスゲイルスラッシュ
--sp_effect_a9_00143
--sp2846

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵)
SP_01r = 163732;  -- カードカットイン前 ef_001r
SP_02r = 163733;  -- カードカットイン後からヒットまで ef_002r
SP_02br = 163734;  -- カードカットイン後からヒットまで ef_002br
SP_03b = 163735;  -- 「ガッ」フィニッシュ背面 風のエフェクト ef_003br


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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 114;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- カードカットイン前(ef_001r)
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
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

--構える
SE001 = playSeVer2( spep_0 + 12, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 71 );
SE004 = playSeVer2( spep_0 + 22, 13, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 66 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --114F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --

--振りかぶる
SE006 = playSeVer2( spep_1 + 80, 1313, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE006, 74 );
setStartTimeMs( SE006,  400 );
SE007 = playSeVer2( spep_1 + 78, 1116, "",spep_1 + 112, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 78, SE007, 85 );

-------------------------------------------------
-- カードカットイン後からヒットまで
-------------------------------------------------
MAX_FRAME_2 = 172;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン後からヒットまで(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カードカットイン後からヒットまで(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --

setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 128 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 1.4, -92 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 1.4, -92 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 8, -80.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 8, -80.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 15, -68.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 15, -68.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 22.5, -55.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 22.5, -55.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 30.5, -41.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 30.5, -41.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 38.9, -27.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 38.9, -27.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 47.8, -12.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 47.8, -12.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 57.1, 4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 57.1, 4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 66.9, 20.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 66.9, 20.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 77.1, 38.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 77.1, 38.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 87.8, 56.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 87.8, 56.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 98.9, 76.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 98.9, 76.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 110.5, 96.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 110.5, 96.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 119.8, 111 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 119.8, 111 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 129.3, 126.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 129.3, 126.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 138.7, 141.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 138.7, 141.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 147.5, 155.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 147.5, 155.5 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--斬撃１
SE008 = playSeVer2( spep_2 + 8, 1142, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 12, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 12, 1026, "", 0, 0, 0, -1);

--斬撃２
SE011 = playSeVer2( spep_2 + 46, 1142, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 50, 1032, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 50, 1026, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 54, 1027, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 102; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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

--敵ヒット
SE015 = playSeVer2( spep_2 + 96, 1011, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 96, 1178, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 96, 1177, "",spep_2 + 188, 0, 12, -1);
SE018 = playSeVer2( spep_2 + 110, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE018, 153 );

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; --172F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
 
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_03b , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 風のエフェクト(ef003br)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
 ]]
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
 
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  
 
 
  -- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 108F

end
