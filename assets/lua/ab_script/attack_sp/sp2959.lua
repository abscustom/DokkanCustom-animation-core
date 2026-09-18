--1032480:UR_超サイヤ人孫悟天(GT)(寄生)_必殺技：かめはめ波
--sp_effect_a1_00514
--sp2959

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164193; --通常姿勢から気を溜めるポーズへ ef_001
SP_02  = 164194; --かめはめ波を放つ～フィニッシュ ef_002
SP_02b = 164195; --かめはめ波を放つ～フィニッシュ ef_002b

--エフェクト(敵)
SP_01r  = 164208; --通常姿勢から気を溜めるポーズへ ef_001r
SP_02r  = 164196; --かめはめ波を放つ～フィニッシュ ef_002r
SP_02br = 164197; --かめはめ波を放つ～フィニッシュ ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 通常姿勢から気を溜めるポーズへ
-------------------------------------------------
MAX_FRAME_0 = 160;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 通常姿勢から気を溜めるポーズへ(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -91, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -91, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -91, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 20); --背景 少し暗め


-- ** 音 ** --
--気ダメ
SE002 = playSeVer2( spep_0 + 34, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 34, 1503, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 63 );
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 63 );
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 63 );
SE010 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE010, 63 );

--気弾溜め
SE001 = playSeVer2( spep_0 + 94, 1210, "",spep_0 + 188, 20, 20, -1);
setStartTimeMs( SE001,  1200 );
SE008 = playSeVer2( spep_0 + 96, 1209, "",spep_0 + 194, 0, 18, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 160f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


-- ** 音 ** --
--気弾発射
SE012 = playSeVer2( spep_1 + 82, 1146, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 82, 1022, "", 0, 0, 0, -1);


-------------------------------------------------
-- かめはめ波を放つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 144;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 80); --背景 少し暗め


-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 144 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 486, -163.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 486, -163.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 448.2, -147.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 448.2, -147.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 415, -137 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 415, -137 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 379.4, -121.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 379.4, -121.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 339.2, -111.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 339.2, -111.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 305.9, -98.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 305.9, -98.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 267.7, -83.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 267.7, -83.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 232.4, -69.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 232.4, -69.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 194.2, -58.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 194.2, -58.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 160, -45.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 160, -45.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 158.3, -44.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 158.3, -44.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 159.4, -43.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 159.4, -43.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 157.8, -45.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 157.8, -45.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 160, -45.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 160, -45.6 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 56; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
SE014 = playSeVer2( spep_2 + 84, 1021, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_2 + 132, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; -- 144f


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
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

-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 180);  --黒 背景

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
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 通常姿勢から気を溜めるポーズへ
-------------------------------------------------
MAX_FRAME_0 = 160;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 通常姿勢から気を溜めるポーズへ(ef_001r)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 91, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 91, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 91, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 20); --背景 少し暗め


-- ** 音 ** --
--気ダメ
SE002 = playSeVer2( spep_0 + 34, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 34, 1503, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 63 );
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 63 );
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 63 );
SE010 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE010, 63 );

--気弾溜め
SE001 = playSeVer2( spep_0 + 94, 1210, "",spep_0 + 188, 20, 20, -1);
setStartTimeMs( SE001,  1200 );
SE008 = playSeVer2( spep_0 + 96, 1209, "",spep_0 + 194, 0, 18, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 160f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


-- ** 音 ** --
--気弾発射
SE012 = playSeVer2( spep_1 + 82, 1146, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 82, 1022, "", 0, 0, 0, -1);


-------------------------------------------------
-- かめはめ波を放つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 144;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 80); --背景 少し暗め


-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 144 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 486, -163.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 486, -163.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 448.2, -147.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 448.2, -147.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 415, -137 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 415, -137 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 379.4, -121.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 379.4, -121.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 339.2, -111.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 339.2, -111.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 305.9, -98.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 305.9, -98.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 267.7, -83.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 267.7, -83.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 232.4, -69.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 232.4, -69.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 194.2, -58.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 194.2, -58.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 160, -45.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 160, -45.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 158.3, -44.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 158.3, -44.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 159.4, -43.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 159.4, -43.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 157.8, -45.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 157.8, -45.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 156.5, -42.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 159.7, -45.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 160.6, -43.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 156.9, -45.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 160, -45.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 160, -45.6 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 56; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
SE014 = playSeVer2( spep_2 + 84, 1021, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_2 + 132, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; -- 144f


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 ); --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 ); --爆発
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

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14, 906, 32, 0x100, -1, 0, 0, 0 ); --集中線白
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

shuchusen_bl = entryEffectLife( spep_N + 14, 1657, 98, 0x80, -1, 0, 0, 0 ); --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14, 10005, 98, 0x100, -1, 0, 3.9, 316.1 ); --ガッ
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

-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 180); --黒 背景

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
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム


end