--4029860:UR_クウラ(最終形態)_必殺技：デスクラッシャー
--sp_effect_a2_00248
--sp2793

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163404; --突進 ef_001
SP_02  = 163405; --ラッシュ→つかみ→気弾→爆発 ef_002
SP_02b = 163406; --ラッシュ→つかみ→気弾→爆発 ef_002b

--エフェクト(敵)
SP_02r  = 163407; --ラッシュ→つかみ→気弾→爆発 ef_002r
SP_02br = 163408; --ラッシュ→つかみ→気弾→爆発 ef_002br

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


-------------------------------------------------
-- 突進
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 突進 (ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, 0.6);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 114, 0, 110, 0.6);
setPitch( spep_0 + 0, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 2, 1167, "", 0, 0, 0, 0.6);
setTimeStretch( SE005, 1.4, 30, 4 );

--向かってくる
SE007 = playSeVer2( spep_0 + 56, 1019, "",spep_0 + 114, 0, 18, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 8, SE007, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ボディブロウ
SE009 = playSeVer2( spep_1 + 88, 1189, "", 0, 0, 0, -1);

-------------------------------------------------
-- ラッシュ→つかみ→気弾→爆発
-------------------------------------------------
MAX_FRAME_2 = 622;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ラッシュ→つかみ→気弾→爆発 (ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ラッシュ→つかみ→気弾→爆発 (ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 8 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 78 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 24.2, -113.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 24.2, -113.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 60.5, -103.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 60.5, -103.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 67.1, -121.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 67.1, -121.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 191.3, -101.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 191.3, -101.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 62.8, -101.5 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 62.8, -101.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 63.7, -104.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 63.7, -104.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 64.6, -106.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 64.6, -106.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 65.5, -109.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 65.5, -109.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 66.4, -111.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 66.4, -111.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 67.3, -114.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 67.3, -114.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 68.1, -117.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 68.1, -117.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 69, -119.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 69, -119.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 69.9, -122.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 69.9, -122.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 70.5, -116.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 70.5, -116.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 71, -111.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 71, -111.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 71.6, -105.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 71.6, -105.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 71.6, -100.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 71.6, -100.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 71.6, -95.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 71.6, -95.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 71.8, -95 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 71.8, -95 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 72, -94.7 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 72, -94.7 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 72.3, -94.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 72.3, -94.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 72.6, -94 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 72.6, -94 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 72.9, -93.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 72.9, -93.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 73.2, -93.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 73.2, -93.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 73.6, -92.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 73.6, -92.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 74, -92 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 74, -92 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 74.4, -91.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 74.4, -91.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 74.9, -90.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 74.9, -90.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 75.5, -90 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 75.5, -90 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 76, -89.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 76, -89.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 76.6, -88.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 76.6, -88.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 92.5, -81.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 92.5, -81.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 109.5, -33.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 109.5, -33.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 127.7, -25.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 127.7, -25.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 147.2, -16.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 147.2, -16.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 168.1, -7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 168.1, -7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 251.8, 68.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 251.8, 68.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 261.4, 116.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 261.4, 116.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 280.1, 75.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 280.1, 75.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 256.4, 68.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 256.4, 68.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 258, 68.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 258, 68.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 259.6, 68.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 259.6, 68.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 261.2, 68.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 261.2, 68.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 262.8, 68.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 262.8, 68.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 264.4, 68.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 264.4, 68.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -21.9, -44.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -21.9, -44.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -3.7, -39 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -3.7, -39 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 14.4, -33.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 14.4, -33.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 32.6, -27.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 32.6, -27.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 50.8, -22 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 50.8, -22 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 68.9, -16.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 68.9, -16.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 87.1, 20.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 87.1, 20.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 119.1, -6.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 119.1, -6.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 120.5, -1.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 120.5, -1.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 115.6, 0.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 115.6, 0.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 117.8, 6.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 117.8, 6.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 125.5, 15.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 125.5, 15.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 130.4, 24.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 130.4, 24.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 130.7, 23.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 130.7, 23.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 129.7, 25.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 129.7, 25.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 129.7, 24.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 129.7, 24.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 135.4, 30.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 135.4, 30.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 135.4, 28.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 135.4, 28.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 190.7, -22.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 190.7, -22.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 190.9, -20 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 190.9, -20 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 191.4, -13.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 191.4, -13.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 192.3, -0.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 192.3, -0.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 193.5, 15.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 193.5, 15.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 194.8, 33.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 194.8, 33.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 196.1, 50.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 196.1, 50.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 197.2, 65.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 197.2, 65.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 198.1, 77.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 198.1, 77.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 198.9, 87.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 198.9, 87.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 199.5, 95.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 199.5, 95.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 200, 102.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 200, 102.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 200.4, 107.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 200.4, 107.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 200.7, 111.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 200.7, 111.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 200.9, 115 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 200.9, 115 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 201.1, 117.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 201.1, 117.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 201.2, 118.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 201.2, 118.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 201.3, 119.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 201.3, 119.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 199.7, 119.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 201.2, 120 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 191.7, 107.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 191.7, 107.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 228.5, 31.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 228.5, 31.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 265, -44.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 265, -44.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 301.5, -120.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 301.5, -120.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 337.9, -195.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 337.9, -195.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 374.4, -270.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 374.4, -270.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 163.8, -50.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 163.8, -50.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 240.1, -136.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 240.1, -136.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 316.5, -223.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 316.5, -223.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 392.8, -309.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 392.8, -309.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 469.1, -396.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 469.1, -396.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 545.4, -482.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 545.4, -482.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 621.8, -569.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 621.8, -569.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 698.1, -656 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 698.1, -656 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 774.4, -742.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 774.4, -742.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 850.7, -829.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 850.7, -829.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 927, -915.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 927, -915.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 1003.3, -1002.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 1003.3, -1002.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 1081.7, -1088.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 1081.7, -1088.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 1164.4, -1174.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 1164.4, -1174.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 1248.2, -1257.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 1248.2, -1257.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 1323.5, -1341.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 1323.5, -1341.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 1401.8, -1426.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 1401.8, -1426.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 4.90, 4.90 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.90, 4.90 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 5.12, 5.12 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 61 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 61 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 58.8 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 58.8 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 57.7 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 57.7 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 45.0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 45.0 );

--敵の動き2
setDisp( spep_2 + 426 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 494 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 426 + OFFSET_X, 1, -44.8, 83.1 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -44.8, 83.1 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -37.4, 76.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -37.4, 76.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -30.1, 69.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -30.1, 69.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -22.7, 62.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -22.7, 62.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -15.3, 55.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -15.3, 55.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -7.8, 48.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -7.8, 48.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -0.3, 41.5 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -0.3, 41.5 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 7.3, 34.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 7.3, 34.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 15, 27.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 15, 27.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 22.8, 20.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 22.8, 20.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 30.6, 12.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 30.6, 12.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 38.6, 5.5 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 38.6, 5.5 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 46.7, -2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 46.7, -2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 54.9, -9.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 54.9, -9.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 63.2, -17.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 63.2, -17.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 71.7, -25 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 71.7, -25 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 80.3, -32.9 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 80.3, -32.9 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 89.1, -41 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 89.1, -41 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 98, -49.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 98, -49.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 107.1, -57.6 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 107.1, -57.6 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 116.4, -66.1 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 116.4, -66.1 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 126, -74.8 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 126, -74.8 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 135.7, -83.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 135.7, -83.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 145.6, -92.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 145.6, -92.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 155.7, -102 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 155.7, -102 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 166.1, -111.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 166.1, -111.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 176.7, -121.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 176.7, -121.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 187.6, -131 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 187.6, -131 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 198.7, -141.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 198.7, -141.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 210.1, -151.6 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 210.1, -151.6 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 221.8, -162.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 221.8, -162.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 233.8, -173.1 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 233.8, -173.1 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 246, -184.2 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 246, -184.2 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 258.6, -195.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 258.6, -195.7 , 0 );

setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 426 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 473 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 474 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 481 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 485 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 40.7 );


-- ** 音 ** --
--ボディブロウ
SE010 = playSeVer2( spep_2 + 2, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 4, 1153, "", 0, 0, 0, -1);

--尻尾振る
SE012 = playSeVer2( spep_2 + 44, 1004, "", 0, 0, 0, -1);

--尻尾アタック
SE013 = playSeVer2( spep_2 + 66, 1003, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 74, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE014, 140 );
SE015 = playSeVer2( spep_2 + 74, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE015, 140 );

--敵つかむ
SE016 = playSeVer2( spep_2 + 104, 1006, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 104, 1012, "", 0, 0, 0, -1);

--敵持ち上がる
SE018 = playSeVer2( spep_2 + 148, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 148, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_2 + 148, 1344, "",spep_2 + 224, 0, 40, -1);

--離す
SE020 = playSeVer2( spep_2 + 226, 1013, "", 0, 0, 0, -1);

--敵落ちていく
SE021 = playSeVer2( spep_2 + 226, 1116, "",spep_2 + 312, 0, 40, -1);

--気弾溜め
SE022 = playSeVer2( spep_2 + 288, 49, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 288, 1154, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 320, 1224, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 320, 1199, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 320, 1158, "",spep_2 + 440, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 320, SE026, 78 );

--気弾発射
SE027 = playSeVer2( spep_2 + 366, 1226, "", 0, 48, 0, -1);

--気弾溜め
SE028 = playSeVer2( spep_2 + 392, 1199, "",spep_2 + 444, 0, 24, -1);

--気弾発射
SE029 = playSeVer2( spep_2 + 404, 1193, "",spep_2 + 538, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 404, SE029, 141 );
SE030 = playSeVer2( spep_2 + 404, 1027, "", 0, 0, 0, -1);

--地面激突
SE031 = playSeVer2( spep_2 + 506, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 506, 1168, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 522); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 622f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 突進
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 突進 (ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;

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
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, 0.6);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 114, 0, 110, 0.6);
setPitch( spep_0 + 0, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 2, 1167, "", 0, 0, 0, 0.6);
setTimeStretch( SE005, 1.4, 30, 4 );

--向かってくる
SE007 = playSeVer2( spep_0 + 56, 1019, "",spep_0 + 114, 0, 18, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 8, SE007, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ボディブロウ
SE009 = playSeVer2( spep_1 + 88, 1189, "", 0, 0, 0, -1);

-------------------------------------------------
-- ラッシュ→つかみ→気弾→爆発
-------------------------------------------------
MAX_FRAME_2 = 622;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ラッシュ→つかみ→気弾→爆発 (ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ラッシュ→つかみ→気弾→爆発 (ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 8 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 78 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 0, 1, 24.2, -113.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 24.2, -113.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 60.5, -103.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 60.5, -103.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 67.1, -121.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 67.1, -121.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 191.3, -101.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 191.3, -101.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 62.8, -101.5 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 62.8, -101.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 63.7, -104.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 63.7, -104.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 64.6, -106.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 64.6, -106.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 65.5, -109.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 65.5, -109.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 66.4, -111.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 66.4, -111.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 67.3, -114.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 67.3, -114.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 68.1, -117.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 68.1, -117.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 69, -119.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 69, -119.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 69.9, -122.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 69.9, -122.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 70.5, -116.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 70.5, -116.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 71, -111.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 71, -111.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 71.6, -105.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 71.6, -105.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 71.6, -100.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 71.6, -100.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 71.6, -95.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 71.6, -95.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 71.8, -95 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 71.8, -95 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 72, -94.7 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 72, -94.7 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 72.3, -94.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 72.3, -94.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 72.6, -94 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 72.6, -94 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 72.9, -93.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 72.9, -93.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 73.2, -93.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 73.2, -93.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 73.6, -92.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 73.6, -92.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 74, -92 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 74, -92 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 74.4, -91.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 74.4, -91.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 74.9, -90.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 74.9, -90.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 75.5, -90 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 75.5, -90 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 76, -89.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 76, -89.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 76.6, -88.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 76.6, -88.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 92.5, -81.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 92.5, -81.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 109.5, -33.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 109.5, -33.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 127.7, -25.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 127.7, -25.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 147.2, -16.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 147.2, -16.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 168.1, -7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 168.1, -7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 251.8, 68.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 251.8, 68.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 261.4, 116.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 261.4, 116.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 280.1, 75.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 280.1, 75.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 256.4, 68.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 256.4, 68.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 258, 68.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 258, 68.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 259.6, 68.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 259.6, 68.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 261.2, 68.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 261.2, 68.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 262.8, 68.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 262.8, 68.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 264.4, 68.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 264.4, 68.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 21.9, -44.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 21.9, -44.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 3.7, -39 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 3.7, -39 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -14.4, -33.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -14.4, -33.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -32.6, -27.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -32.6, -27.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -50.8, -22 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -50.8, -22 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -68.9, -16.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -68.9, -16.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -87.1, 20.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -87.1, 20.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -119.1, -6.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -119.1, -6.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -120.5, -1.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -120.5, -1.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -115.6, 0.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -115.6, 0.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -117.8, 6.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -117.8, 6.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -125.5, 15.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -125.5, 15.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -130.4, 24.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -130.4, 24.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -130.7, 23.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -130.7, 23.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -129.7, 25.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -129.7, 25.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -129.7, 24.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -129.7, 24.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -135.4, 30.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -135.4, 30.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -135.4, 28.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -135.4, 28.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -190.7, -22.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -190.7, -22.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -190.9, -20 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -190.9, -20 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -191.4, -13.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -191.4, -13.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -192.3, -0.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -192.3, -0.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -193.5, 15.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -193.5, 15.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -194.8, 33.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -194.8, 33.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -196.1, 50.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -196.1, 50.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -197.2, 65.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -197.2, 65.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -198.1, 77.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -198.1, 77.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -198.9, 87.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -198.9, 87.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -199.5, 95.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -199.5, 95.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -200, 102.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -200, 102.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -200.4, 107.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -200.4, 107.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -200.7, 111.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -200.7, 111.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -200.9, 115 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -200.9, 115 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -201.1, 117.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -201.1, 117.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -201.2, 118.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -201.2, 118.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -201.3, 119.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -201.3, 119.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -199.7, 119.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -201.2, 120 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -191.7, 107.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -191.7, 107.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -228.5, 31.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -228.5, 31.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -265, -44.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -265, -44.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -301.5, -120.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -301.5, -120.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -337.9, -195.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -337.9, -195.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -374.4, -270.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -374.4, -270.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -163.8, -50.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -163.8, -50.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -240.1, -136.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -240.1, -136.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -316.5, -223.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -316.5, -223.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -392.8, -309.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -392.8, -309.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -469.1, -396.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -469.1, -396.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -545.4, -482.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -545.4, -482.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -621.8, -569.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -621.8, -569.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -698.1, -656 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -698.1, -656 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -774.4, -742.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -774.4, -742.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -850.7, -829.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -850.7, -829.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -927, -915.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -927, -915.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -1003.3, -1002.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -1003.3, -1002.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -1081.7, -1088.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -1081.7, -1088.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -1164.4, -1174.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -1164.4, -1174.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -1248.2, -1257.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -1248.2, -1257.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -1323.5, -1341.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -1323.5, -1341.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -1401.8, -1426.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -1401.8, -1426.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 4.90, 4.90 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.90, 4.90 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 5.12, 5.12 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -61 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -61 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -45.0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -45.0 );


--敵の動き2
setDisp( spep_2 + 426 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 494 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 426 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 426 + OFFSET_X, 1, -44.8, 83.1 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -44.8, 83.1 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -37.4, 76.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -37.4, 76.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -30.1, 69.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -30.1, 69.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -22.7, 62.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -22.7, 62.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -15.3, 55.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -15.3, 55.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -7.8, 48.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -7.8, 48.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -0.3, 41.5 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -0.3, 41.5 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 7.3, 34.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 7.3, 34.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 15, 27.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 15, 27.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 22.8, 20.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 22.8, 20.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 30.6, 12.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 30.6, 12.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 38.6, 5.5 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 38.6, 5.5 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 46.7, -2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 46.7, -2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 54.9, -9.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 54.9, -9.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 63.2, -17.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 63.2, -17.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 71.7, -25 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 71.7, -25 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 80.3, -32.9 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 80.3, -32.9 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 89.1, -41 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 89.1, -41 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 98, -49.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 98, -49.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 107.1, -57.6 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 107.1, -57.6 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 116.4, -66.1 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 116.4, -66.1 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 126, -74.8 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 126, -74.8 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 135.7, -83.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 135.7, -83.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 145.6, -92.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 145.6, -92.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 155.7, -102 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 155.7, -102 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 166.1, -111.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 166.1, -111.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 176.7, -121.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 176.7, -121.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 187.6, -131 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 187.6, -131 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 198.7, -141.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 198.7, -141.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 210.1, -151.6 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 210.1, -151.6 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 221.8, -162.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 221.8, -162.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 233.8, -173.1 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 233.8, -173.1 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 246, -184.2 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 246, -184.2 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 258.6, -195.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 258.6, -195.7 , 0 );

setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 426 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 469 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 473 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 474 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 481 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 485 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 40.7 );


-- ** 音 ** --
--ボディブロウ
SE010 = playSeVer2( spep_2 + 2, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 4, 1153, "", 0, 0, 0, -1);

--尻尾振る
SE012 = playSeVer2( spep_2 + 44, 1004, "", 0, 0, 0, -1);

--尻尾アタック
SE013 = playSeVer2( spep_2 + 66, 1003, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 74, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE014, 140 );
SE015 = playSeVer2( spep_2 + 74, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE015, 140 );

--敵つかむ
SE016 = playSeVer2( spep_2 + 104, 1006, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 104, 1012, "", 0, 0, 0, -1);

--敵持ち上がる
SE018 = playSeVer2( spep_2 + 148, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 148, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_2 + 148, 1344, "",spep_2 + 224, 0, 40, -1);

--離す
SE020 = playSeVer2( spep_2 + 226, 1013, "", 0, 0, 0, -1);

--敵落ちていく
SE021 = playSeVer2( spep_2 + 226, 1116, "",spep_2 + 312, 0, 40, -1);

--気弾溜め
SE022 = playSeVer2( spep_2 + 288, 49, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 288, 1154, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 320, 1224, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 320, 1199, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 320, 1158, "",spep_2 + 440, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 320, SE026, 78 );

--気弾発射
SE027 = playSeVer2( spep_2 + 366, 1226, "", 0, 48, 0, -1);

--気弾溜め
SE028 = playSeVer2( spep_2 + 392, 1199, "",spep_2 + 444, 0, 24, -1);

--気弾発射
SE029 = playSeVer2( spep_2 + 404, 1193, "",spep_2 + 538, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 404, SE029, 141 );
SE030 = playSeVer2( spep_2 + 404, 1027, "", 0, 0, 0, -1);

--地面激突
SE031 = playSeVer2( spep_2 + 506, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 506, 1168, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 522); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 622f

end