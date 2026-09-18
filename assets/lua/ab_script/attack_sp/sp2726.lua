--9029220:SSR_ブラック参謀_必殺技：とっておきのミサイル
--sp_effect_a9_00130
--sp2726

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162880;  --ef_001  登場
SP_02  = 162882;  --ef_002  ミサイル攻撃
SP_02b = 162884;  --ef_002b  背景（集中線）

--エフェクト(敵)
SP_01r = 162881;  --ef_001r  登場
SP_02r = 162883;  --ef_002r  ミサイル攻撃

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 180);  --背景　暗め

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 108, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 2, 20, "", 0, 0, 0, 0.64);
SE002 = playSeVer2( spep_0 + 2, 1051, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 2, SE002, 75 );

--ミサイル構える
SE003 = playSeVer2( spep_0 + 50, 1150, "", 0, 4, 0, -1);
setStartTimeMs( SE003,  433 );
SE004 = playSeVer2( spep_0 + 28, 91, "",spep_0 + 92, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
spep_1 = spep_0 + MAX_FRAME_0;  --116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


-------------------------------------------------
-- ミサイル攻撃
-------------------------------------------------
MAX_FRAME_2 = 104;

-- ** エフェクト等 ** --
missile_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ミサイル攻撃(ef_002)
setEffMoveKey( spep_2 + 0, missile_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, missile_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, missile_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, missile_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, missile_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, missile_f, 0);
setEffAlphaKey( spep_2 + 0, missile_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, missile_f, 255);

missile_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背景（集中線）(ef_002b)
setEffMoveKey( spep_2 + 0, missile_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, missile_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, missile_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, missile_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, missile_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, missile_b, 0);
setEffAlphaKey( spep_2 + 0, missile_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, missile_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 0, 0, 0, 0, 0, 180);  --背景　暗め

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 62, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 36 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 36 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 36 + OFFSET_X, 1, 170.9, 0.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 170.9, 0.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 167.7, 2.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 167.7, 2.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 161.8, 0.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 161.8, 0.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 154.8, 2.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 154.8, 2.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 147.1, 0.4 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 147.1, 0.4 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 138.8, 2.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 138.8, 2.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 130.2, 0 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 130.2, 0 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 121.3, 2.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 121.3, 2.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 112.1, 0.2 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 112.1, 0.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 102.7, 2.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 102.7, 2.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 93.1, 0 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 93.1, 0 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 83.1, 2.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 83.1, 2.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 72.9, -0.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 72.9, -0.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 62.3, 3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 62.3, 3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 50.9, -2.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 50.9, -2.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 125.1, 5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 125.1, 5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 147, -3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 147, -3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 145.3, 5.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 145.3, 5.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 166.6, 2.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 166.6, 2.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 166.9, -2.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 166.9, -2.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 184.2, 4.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 184.2, 4.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 188.1, -4.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 188.1, -4.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 224.7, 6.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 224.7, 6.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 249.1, -0.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 249.1, -0.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 281.6, 8.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 281.6, 8.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 308.2, 4.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 308.2, 4.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 334.4, 10.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 334.4, 10.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 358.8, 6.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 358.8, 6.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 381.2, 12.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 381.2, 12.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 401.4, 9.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 401.4, 9.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 418.9, 13.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 418.9, 13.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 433.6, 11.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 433.6, 11.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 444.9, 14.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 444.9, 14.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 452.3, 12.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 452.3, 12.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 454.8, 14 , 0 );

setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 36 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 73.2 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 73.2 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 91.8 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 91.8 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 111.8 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 111.8 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 118.7 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 118.7 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 121.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 121.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 123.3 );

-- ** 音 ** --
--ミサイル発射
SE006 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE006, 81 );
SE007 = playSeVer2( spep_2 + 0, 1193, "",spep_2 + 74, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 0, SE007, 136 );
SE008 = playSeVer2( spep_2 + 0, 1030, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE009, 148 );
SE010 = playSeVer2( spep_2 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE010, 58 );

--敵ヒット
SE011 = playSeVer2( spep_2 + 58, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE011, 74 );
SE012 = playSeVer2( spep_2 + 58, 1023, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE013 = playSeVer2( spep_2 + 100, 1027, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --104f

---------------------------------------------------------------------------------------------------
-- ガッの背景爆発
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
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 180);  --背景　暗め

-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
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
--ここまで

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 10, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 10, 1054, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_N + 6 );
endPhase( spep_N + 108 );

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 登場(ef_001r)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 180);  --背景　暗め

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 108, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 2, 20, "", 0, 0, 0, 0.64);
SE002 = playSeVer2( spep_0 + 2, 1051, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 2, SE002, 75 );

--ミサイル構える
SE003 = playSeVer2( spep_0 + 50, 1150, "", 0, 4, 0, -1);
setStartTimeMs( SE003,  433 );
SE004 = playSeVer2( spep_0 + 28, 91, "",spep_0 + 92, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
spep_1 = spep_0 + MAX_FRAME_0;  --116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


-------------------------------------------------
-- ミサイル攻撃
-------------------------------------------------
MAX_FRAME_2 = 104;

-- ** エフェクト等 ** --
missile_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ミサイル攻撃(ef_002r)
setEffMoveKey( spep_2 + 0, missile_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, missile_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, missile_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, missile_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, missile_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, missile_f, 0);
setEffAlphaKey( spep_2 + 0, missile_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, missile_f, 255);

missile_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背景（集中線）(ef_002b)
setEffMoveKey( spep_2 + 0, missile_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, missile_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, missile_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, missile_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, missile_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, missile_b, 0);
setEffAlphaKey( spep_2 + 0, missile_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, missile_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 0, 0, 0, 0, 0, 180);  --背景　暗め

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 62, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_2 + 36 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 36 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 36 + OFFSET_X, 1, 170.9, 0.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 170.9, 0.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 167.7, 2.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 167.7, 2.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 161.8, 0.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 161.8, 0.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 154.8, 2.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 154.8, 2.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 147.1, 0.4 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 147.1, 0.4 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 138.8, 2.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 138.8, 2.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 130.2, 0 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 130.2, 0 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 121.3, 2.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 121.3, 2.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 112.1, 0.2 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 112.1, 0.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 102.7, 2.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 102.7, 2.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 93.1, 0 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 93.1, 0 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 83.1, 2.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 83.1, 2.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 72.9, -0.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 72.9, -0.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 62.3, 3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 62.3, 3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 50.9, -2.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 50.9, -2.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 125.1, 5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 125.1, 5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 147, -3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 147, -3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 145.3, 5.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 145.3, 5.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 166.6, 2.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 166.6, 2.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 166.9, -2.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 166.9, -2.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 184.2, 4.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 184.2, 4.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 188.1, -4.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 188.1, -4.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 224.7, 6.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 224.7, 6.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 249.1, -0.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 249.1, -0.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 281.6, 8.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 281.6, 8.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 308.2, 4.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 308.2, 4.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 334.4, 10.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 334.4, 10.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 358.8, 6.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 358.8, 6.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 381.2, 12.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 381.2, 12.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 401.4, 9.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 401.4, 9.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 418.9, 13.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 418.9, 13.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 433.6, 11.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 433.6, 11.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 444.9, 14.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 444.9, 14.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 452.3, 12.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 452.3, 12.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 454.8, 14 , 0 );

setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 36 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 73.2 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 73.2 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 91.8 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 91.8 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 97.5 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 111.8 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 111.8 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 118.7 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 118.7 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 121.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 121.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 123.3 );

-- ** 音 ** --
--ミサイル発射
SE006 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE006, 81 );
SE007 = playSeVer2( spep_2 + 0, 1193, "",spep_2 + 74, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 0, SE007, 136 );
SE008 = playSeVer2( spep_2 + 0, 1030, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE009, 148 );
SE010 = playSeVer2( spep_2 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE010, 58 );

--敵ヒット
SE011 = playSeVer2( spep_2 + 58, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE011, 74 );
SE012 = playSeVer2( spep_2 + 58, 1023, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE013 = playSeVer2( spep_2 + 100, 1027, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --104f

---------------------------------------------------------------------------------------------------
-- ガッの背景爆発
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
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 180);  --背景　暗め

-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
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
--ここまで

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 10, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 10, 1054, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_N + 6 );
endPhase( spep_N + 108 );


end
