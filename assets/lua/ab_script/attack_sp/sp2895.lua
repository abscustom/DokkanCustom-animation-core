--1031690:UR_ビーデル_必殺技：ビーデルラッシュ
--sp_effect_b1_00340
--sp2895

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164004;  --ef_001
SP_01b = 164006;  --ef_001b
SP_02 = 164007;  --ef_002
SP_02b = 164008;  --ef_002b


--エフェクト(敵)
SP_02r = 164009;  --ef_002r


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
ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 前
-------------------------------------------------
MAX_FRAME_0 = 180;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 前(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 94;

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

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 456.1, 24.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 455.1, 24.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 455.1, 24.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 454.2, 24.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 454.2, 24.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 453.3, 25 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 453.3, 25 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 452.5, 25.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 452.5, 25.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 451.6, 25.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 451.6, 25.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 450.8, 25.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 450.8, 25.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 450, 25.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 450, 25.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 449.2, 25.9 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 449.2, 25.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 448.4, 26.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 448.4, 26.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 447.6, 26.3 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 447.6, 26.3 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 446.8, 26.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 446.8, 26.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 446.1, 26.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 446.1, 26.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 445.3, 26.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 445.3, 26.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 444.6, 26.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 444.6, 26.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 443.9, 27 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 443.9, 27 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 443.1, 27.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 443.1, 27.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 442.5, 27.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 442.5, 27.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 441.8, 27.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 441.8, 27.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 441.1, 27.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 441.1, 27.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 440.4, 27.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 440.4, 27.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 439.8, 27.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 439.8, 27.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 439.2, 28 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 439.2, 28 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 438.5, 28.2 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 438.5, 28.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 437.9, 28.3 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 437.9, 28.3 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 437.4, 28.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 437.4, 28.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 436.8, 28.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 436.8, 28.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 436.2, 28.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 436.2, 28.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 435.7, 28.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 435.7, 28.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 435.2, 28.9 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 435.2, 28.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 434.7, 29 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 434.7, 29 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 434.2, 29.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 434.2, 29.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 433.8, 29.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 433.8, 29.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 433.4, 29.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 433.4, 29.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 433.4, 29.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 433.1, 29.3 , 0 );

setScaleKey( spep_0 + 0, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 4.06, 4.06 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 212, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE004 = playSeVer2( spep_0 + 92, 1233, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --180F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 後
-------------------------------------------------
MAX_FRAME_2 = 666;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 後(ef_002b)
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

setDisp( spep_2 + 54 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 54 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 54 + OFFSET_X, 1, 184.1, -113.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 184.1, -113.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 244.9, -47.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 244.9, -47.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 274.5, -40.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 274.5, -40.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 245.2, -32.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 245.2, -32.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 279, -24.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 279, -24.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 356.5, -15.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 356.5, -15.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 403.2, -4.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 403.2, -4.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 446.4, 10.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 446.4, 10.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 527.2, 30.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 527.2, 30.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 626.8, 54.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 626.8, 54.3 , 0 );

setScaleKey( spep_2 + 54 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.2, 3.2 );

setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -18 );

--敵の動き2

setDisp( spep_2 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 124 + OFFSET_X, 1, 525.2, -482.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 525.2, -482.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 484.4, -467.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 484.4, -467.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 361.9, -420.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 361.9, -420.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 157.5, -342.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 157.5, -342.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 65.8, -289 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 65.8, -289 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 10.8, -256.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 10.8, -256.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -7.5, -245.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -7.5, -245.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 94.4, -266 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 94.4, -266 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 90.5, -136.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 90.5, -136.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 90.5, -218.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 90.5, -218.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 90.5, -174.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 90.5, -174.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 116.2, -232 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 116.2, -232 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 157.4, -354.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 157.4, -354.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 212.7, -478.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 212.7, -478.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 279.7, -604.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 279.7, -604.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 354.8, -772.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 354.8, -772.4 , 0 );

setScaleKey( spep_2 + 124 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 4.87, 4.87 );

setRotateKey( spep_2 + 124 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 62 );

--敵の動き3

setDisp( spep_2 + 190 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 354 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 250 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 190 + OFFSET_X, 1, 110.3, -97.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 110.3, -97.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 112.6, -105.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 112.6, -105.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 115.2, -115.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 115.2, -115.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 118.5, -127.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 118.5, -127.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 122.7, -142.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 122.7, -142.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 127.9, -161.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 127.9, -161.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 149.1, -220.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 149.1, -220.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 144.8, -197.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 144.8, -197.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 122.9, -123.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 122.9, -123.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 127.3, -116.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 127.3, -116.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 131.3, -101.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 131.3, -101.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 135, -87.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 135, -87.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 137.4, -80.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 137.4, -80.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 139.5, -74.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 139.5, -74.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 141.4, -69.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 141.4, -69.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 143.6, -65.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 143.6, -65.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 145.7, -63.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 145.7, -63.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -145.4, -234.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -145.4, -234.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -49.4, -234.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -49.4, -234.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 46.6, -234.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 46.6, -234.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 142.7, -234.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 142.7, -234.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 325.7, -173.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 325.7, -173.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 248.7, -173.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 248.7, -173.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 293.7, -173.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 293.7, -173.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 306, -173.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 306, -173.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 316.9, -173.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 316.9, -173.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 295.2, -173.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 295.2, -173.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 357.2, -173.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 357.2, -173.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 288.7, -173.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 288.7, -173.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 309.1, -173.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 309.1, -173.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 278.1, -173.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 278.1, -173.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 300.9, -173.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 300.9, -173.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 252.2, -173.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 252.2, -173.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 318.4, -173.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 318.4, -173.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 271.9, -173.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 271.9, -173.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 314.6, -173.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 314.6, -173.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 351.8, -173.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 351.8, -173.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 299.8, -173.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 299.8, -173.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 330.8, -173.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 330.8, -173.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 357.6, -173.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 357.6, -173.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 339, -173.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 339, -173.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 301.9, -173.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 301.9, -173.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 306.5, -173.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 306.5, -173.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 343.6, -173.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 343.6, -173.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 300.2, -173.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 300.2, -173.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 270.2, -173.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 270.2, -173.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 295, -173.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 295, -173.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 307.6, -173.8 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 307.6, -173.8 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 346.4, -173.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 346.4, -173.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 349.5, -173.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 349.5, -173.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 306.9, -173.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 306.9, -173.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 260.4, -173.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 260.4, -173.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 294.5, -173.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 294.5, -173.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 345.6, -173.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 345.6, -173.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 309, -173.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 309, -173.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 257.9, -173.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 257.9, -173.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 296.2, -173.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 296.2, -173.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 339.6, -173.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 339.6, -173.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 292.6, -173.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 292.6, -173.8 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 5.75, 5.75 );

setRotateKey( spep_2 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 0 );

--敵の動き4

setDisp( spep_2 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 538 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 438 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 438 + OFFSET_X, 1, 313.9, 231 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 313.9, 231 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 314.1, 231.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 314.1, 231.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 226.6, 155.8 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 226.6, 155.8 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 227.7, 156.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 227.7, 156.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 315.1, 246.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 315.1, 246.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 317.1, 247.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 317.1, 247.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 251, 188.4 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 251, 188.4 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 254, 190.7 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 254, 190.7 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 299, 247.3 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 299, 247.3 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 302.9, 250.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 302.9, 250.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 282.8, 224.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 282.8, 224.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 287.6, 228.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 287.6, 228.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 292.8, 232.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 292.8, 232.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 298.5, 236.6 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 298.5, 236.6 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 304.7, 241.4 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 304.7, 241.4 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 311.3, 246.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 311.3, 246.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 318.3, 252.1 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 318.3, 252.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 325.8, 257.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 325.8, 257.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 333.7, 264.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 333.7, 264.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 342, 270.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 342, 270.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 350.8, 277.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 350.8, 277.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 359.9, 284.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 359.9, 284.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 369.4, 292.1 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 369.4, 292.1 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 379.4, 299.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 379.4, 299.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 389.7, 307.9 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 389.7, 307.9 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 400.3, 316.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 400.3, 316.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 411.3, 324.8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 411.3, 324.8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 422.6, 333.7 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 422.6, 333.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 434.3, 342.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 434.3, 342.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 446.2, 352.1 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 446.2, 352.1 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 458.5, 361.7 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 458.5, 361.7 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 471, 371.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 471, 371.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 483.7, 381.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 483.7, 381.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 496.7, 391.6 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 496.7, 391.6 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 509.9, 401.9 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 509.9, 401.9 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 523.3, 412.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 523.3, 412.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 536.8, 422.9 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 536.8, 422.9 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 550.5, 433.7 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 550.5, 433.7 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 564.3, 444.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 564.3, 444.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 578.3, 455.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 578.3, 455.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 592.3, 466.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 592.3, 466.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 606.4, 477.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 606.4, 477.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 620.5, 488.4 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 620.5, 488.4 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 634.6, 499.4 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 634.6, 499.4 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 648.8, 510.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 648.8, 510.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 662.9, 521.5 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 662.9, 521.5 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 676.9, 532.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 676.9, 532.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 690.9, 543.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 690.9, 543.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 704.8, 554.3 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 704.8, 554.3 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 718.7, 565.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 718.7, 565.1 , 0 );

setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 1.67, 1.67 );

setRotateKey( spep_2 + 438 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -38 );

--敵の動き5

setDisp( spep_2 + 548 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 667 + OFFSET_X, 1, 1 );

changeAnime( spep_2 + 548 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 548 + OFFSET_X, 1, 116.9, -104.9 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 116.9, -104.9 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 121.1, -127.9 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 121.1, -127.9 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 125.3, -151.3 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 125.3, -151.3 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 129.7, -175.1 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 129.7, -175.1 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 134.1, -199.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 134.1, -199.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 138.2, -223.8 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 138.2, -223.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 142.5, -248.8 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 142.5, -248.8 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 146.9, -274.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 146.9, -274.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 151.3, -300.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 151.3, -300.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 154.9, -328.6 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 154.9, -328.6 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 158.6, -357.4 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 158.6, -357.4 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 162.2, -386.9 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 162.2, -386.9 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 164, -386.3 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 164, -386.3 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 165.5, -385.8 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 165.5, -385.8 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 166.6, -385.4 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 166.6, -385.4 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 167.4, -385.1 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 167.4, -385.1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 167.9, -385 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 167.9, -385 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 168.1, -384.9 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 168.1, -384.9 , 0 );

setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 548 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 667 + OFFSET_X, 1, -32 );

-- ** 音 ** --

--向かってくる
SE006 = playSeVer2( spep_2 + 6, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE006, 89 );
SE007 = playSeVer2( spep_2 + 6, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 6, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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

--キック
SE009 = playSeVer2( spep_2 + 56, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 66, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 66, 1110, "", 0, 0, 0, -1);

--エルボー
SE012 = playSeVer2( spep_2 + 130, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 138, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE013, 69 );
SE014 = playSeVer2( spep_2 + 138, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE014, 77 );

--着地
SE015 = playSeVer2( spep_2 + 186, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE015, 191 );
SE017 = playSeVer2( spep_2 + 190, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE017, 174 );
SE018 = playSeVer2( spep_2 + 190, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE018, 178 );
SE019 = playSeVer2( spep_2 + 196, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE019, 209 );
SE020 = playSeVer2( spep_2 + 196, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE020, 193 );
SE032 = playSeVer2( spep_2 + 540, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 540, SE032, 172 );
SE033 = playSeVer2( spep_2 + 542, 1192, "",spep_2 + 560, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 542, SE033, 170 );
SE034 = playSeVer2( spep_2 + 546, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 546, SE034, 170 );
--敵地面落ちる
SE016 = playSeVer2( spep_2 + 190, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE016, 63 );
--向かっていく
SE021 = playSeVer2( spep_2 + 218, 1117, "",spep_2 + 270, 0, 30, -1);
--連続パンチ
SE022 = playSeVer2( spep_2 + 242, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 242, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE023, 76 );
SE024 = playSeVer2( spep_2 + 262, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 262, SE024, 83 );
SE025 = playSeVer2( spep_2 + 262, 1425, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 262, SE025, 79 );

--大きく振りかぶる
SE026 = playSeVer2( spep_2 + 352, 1264, "",spep_2 + 450, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 352, SE026, 67 );
SE027 = playSeVer2( spep_2 + 368, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE027, 63 );
--膝蹴り
SE028 = playSeVer2( spep_2 + 414, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 428, 1187, "", 0, 0, 0, -1);
--画面遷移
SE030 = playSeVer2( spep_2 + 500, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE030, 71 );
SE031 = playSeVer2( spep_2 + 504, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE031, 56 );
--地面落ちる
SE035 = playSeVer2( spep_2 + 560, 1012, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 560, 1008, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 560); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 662F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 前
-------------------------------------------------
MAX_FRAME_0 = 180;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 前(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 94;

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

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -456.1, 24.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -455.1, 24.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -455.1, 24.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -454.2, 24.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -454.2, 24.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -453.3, 25 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -453.3, 25 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -452.5, 25.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -452.5, 25.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -451.6, 25.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -451.6, 25.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -450.8, 25.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -450.8, 25.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -450, 25.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -450, 25.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -449.2, 25.9 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -449.2, 25.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -448.4, 26.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -448.4, 26.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -447.6, 26.3 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -447.6, 26.3 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -446.8, 26.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -446.8, 26.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -446.1, 26.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -446.1, 26.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -445.3, 26.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -445.3, 26.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -444.6, 26.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -444.6, 26.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -443.9, 27 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -443.9, 27 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -443.1, 27.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -443.1, 27.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -442.5, 27.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -442.5, 27.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -441.8, 27.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -441.8, 27.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -441.1, 27.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -441.1, 27.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -440.4, 27.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -440.4, 27.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -439.8, 27.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -439.8, 27.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -439.2, 28 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -439.2, 28 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -438.5, 28.2 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -438.5, 28.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -437.9, 28.3 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -437.9, 28.3 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -437.4, 28.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -437.4, 28.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -436.8, 28.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -436.8, 28.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -436.2, 28.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -436.2, 28.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -435.7, 28.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -435.7, 28.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -435.2, 28.9 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -435.2, 28.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -434.7, 29 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -434.7, 29 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -434.2, 29.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -434.2, 29.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -433.8, 29.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -433.8, 29.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -433.4, 29.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -433.4, 29.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -433.4, 29.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -433.1, 29.3 , 0 );

setScaleKey( spep_0 + 0, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 4.06, 4.06 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 212, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE004 = playSeVer2( spep_0 + 92, 1233, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --180F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 後
-------------------------------------------------
MAX_FRAME_2 = 666;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 後(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 後(ef_002b)
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

setDisp( spep_2 + 54 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 54 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 54 + OFFSET_X, 1, 184.1, -113.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 184.1, -113.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 244.9, -47.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 244.9, -47.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 274.5, -40.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 274.5, -40.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 245.2, -32.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 245.2, -32.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 279, -24.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 279, -24.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 356.5, -15.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 356.5, -15.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 403.2, -4.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 403.2, -4.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 446.4, 10.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 446.4, 10.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 527.2, 30.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 527.2, 30.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 626.8, 54.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 626.8, 54.3 , 0 );

setScaleKey( spep_2 + 54 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.2, 3.2 );

setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -18 );

--敵の動き2

setDisp( spep_2 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 124 + OFFSET_X, 1, 525.2, -482.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 525.2, -482.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 484.4, -467.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 484.4, -467.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 361.9, -420.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 361.9, -420.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 157.5, -342.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 157.5, -342.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 65.8, -289 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 65.8, -289 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 10.8, -256.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 10.8, -256.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -7.5, -245.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -7.5, -245.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 94.4, -266 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 94.4, -266 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 90.5, -136.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 90.5, -136.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 90.5, -218.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 90.5, -218.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 90.5, -174.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 90.5, -174.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 116.2, -232 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 116.2, -232 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 157.4, -354.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 157.4, -354.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 212.7, -478.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 212.7, -478.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 279.7, -604.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 279.7, -604.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 354.8, -772.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 354.8, -772.4 , 0 );

setScaleKey( spep_2 + 124 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 4.87, 4.87 );

setRotateKey( spep_2 + 124 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 62 );

--敵の動き3

setDisp( spep_2 + 190 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 354 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 250 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 190 + OFFSET_X, 1, 110.3, -97.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 110.3, -97.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 112.6, -105.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 112.6, -105.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 115.2, -115.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 115.2, -115.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 118.5, -127.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 118.5, -127.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 122.7, -142.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 122.7, -142.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 127.9, -161.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 127.9, -161.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 149.1, -220.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 149.1, -220.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 144.8, -197.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 144.8, -197.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 122.9, -123.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 122.9, -123.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 127.3, -116.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 127.3, -116.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 131.3, -101.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 131.3, -101.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 135, -87.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 135, -87.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 137.4, -80.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 137.4, -80.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 139.5, -74.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 139.5, -74.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 141.4, -69.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 141.4, -69.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 143.6, -65.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 143.6, -65.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 145.7, -63.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 145.7, -63.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -145.4, -234.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -145.4, -234.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -49.4, -234.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -49.4, -234.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 46.6, -234.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 46.6, -234.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 142.7, -234.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 142.7, -234.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 325.7, -173.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 325.7, -173.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 248.7, -173.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 248.7, -173.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 293.7, -173.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 293.7, -173.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 306, -173.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 306, -173.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 316.9, -173.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 316.9, -173.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 295.2, -173.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 295.2, -173.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 357.2, -173.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 357.2, -173.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 288.7, -173.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 288.7, -173.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 309.1, -173.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 309.1, -173.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 278.1, -173.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 278.1, -173.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 300.9, -173.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 300.9, -173.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 252.2, -173.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 252.2, -173.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 318.4, -173.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 318.4, -173.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 271.9, -173.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 271.9, -173.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 314.6, -173.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 314.6, -173.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 351.8, -173.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 351.8, -173.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 299.8, -173.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 299.8, -173.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 330.8, -173.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 330.8, -173.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 357.6, -173.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 357.6, -173.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 339, -173.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 339, -173.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 301.9, -173.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 301.9, -173.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 306.5, -173.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 306.5, -173.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 343.6, -173.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 343.6, -173.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 300.2, -173.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 300.2, -173.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 270.2, -173.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 270.2, -173.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 295, -173.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 295, -173.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 307.6, -173.8 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 307.6, -173.8 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 346.4, -173.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 346.4, -173.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 349.5, -173.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 349.5, -173.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 306.9, -173.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 306.9, -173.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 260.4, -173.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 260.4, -173.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 294.5, -173.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 294.5, -173.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 345.6, -173.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 345.6, -173.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 309, -173.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 309, -173.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 257.9, -173.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 257.9, -173.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 296.2, -173.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 296.2, -173.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 339.6, -173.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 339.6, -173.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 292.6, -173.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 292.6, -173.8 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 5.75, 5.75 );

setRotateKey( spep_2 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 0 );

--敵の動き4

setDisp( spep_2 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 538 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 438 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 438 + OFFSET_X, 1, 313.9, 231 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 313.9, 231 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 314.1, 231.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 314.1, 231.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 226.6, 155.8 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 226.6, 155.8 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 227.7, 156.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 227.7, 156.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 315.1, 246.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 315.1, 246.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 317.1, 247.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 317.1, 247.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 251, 188.4 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 251, 188.4 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 254, 190.7 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 254, 190.7 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 299, 247.3 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 299, 247.3 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 302.9, 250.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 302.9, 250.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 282.8, 224.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 282.8, 224.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 287.6, 228.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 287.6, 228.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 292.8, 232.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 292.8, 232.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 298.5, 236.6 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 298.5, 236.6 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 304.7, 241.4 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 304.7, 241.4 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 311.3, 246.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 311.3, 246.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 318.3, 252.1 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 318.3, 252.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 325.8, 257.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 325.8, 257.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 333.7, 264.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 333.7, 264.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 342, 270.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 342, 270.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 350.8, 277.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 350.8, 277.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 359.9, 284.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 359.9, 284.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 369.4, 292.1 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 369.4, 292.1 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 379.4, 299.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 379.4, 299.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 389.7, 307.9 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 389.7, 307.9 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 400.3, 316.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 400.3, 316.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 411.3, 324.8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 411.3, 324.8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 422.6, 333.7 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 422.6, 333.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 434.3, 342.8 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 434.3, 342.8 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 446.2, 352.1 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 446.2, 352.1 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 458.5, 361.7 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 458.5, 361.7 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 471, 371.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 471, 371.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 483.7, 381.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 483.7, 381.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 496.7, 391.6 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 496.7, 391.6 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 509.9, 401.9 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 509.9, 401.9 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 523.3, 412.3 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 523.3, 412.3 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 536.8, 422.9 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 536.8, 422.9 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 550.5, 433.7 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 550.5, 433.7 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 564.3, 444.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 564.3, 444.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 578.3, 455.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 578.3, 455.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 592.3, 466.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 592.3, 466.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 606.4, 477.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 606.4, 477.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 620.5, 488.4 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 620.5, 488.4 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 634.6, 499.4 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 634.6, 499.4 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 648.8, 510.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 648.8, 510.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 662.9, 521.5 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 662.9, 521.5 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 676.9, 532.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 676.9, 532.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 690.9, 543.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 690.9, 543.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 704.8, 554.3 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 704.8, 554.3 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 718.7, 565.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 718.7, 565.1 , 0 );

setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 1.67, 1.67 );

setRotateKey( spep_2 + 438 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -38 );

--敵の動き5

setDisp( spep_2 + 548 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 667 + OFFSET_X, 1, 1 );

changeAnime( spep_2 + 548 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 548 + OFFSET_X, 1, 116.9, -104.9 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 116.9, -104.9 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 121.1, -127.9 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 121.1, -127.9 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 125.3, -151.3 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 125.3, -151.3 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 129.7, -175.1 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 129.7, -175.1 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 134.1, -199.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 134.1, -199.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 138.2, -223.8 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 138.2, -223.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 142.5, -248.8 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 142.5, -248.8 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 146.9, -274.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 146.9, -274.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 151.3, -300.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 151.3, -300.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 154.9, -328.6 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 154.9, -328.6 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 158.6, -357.4 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 158.6, -357.4 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 162.2, -386.9 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 162.2, -386.9 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 164, -386.3 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 164, -386.3 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 165.5, -385.8 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 165.5, -385.8 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 166.6, -385.4 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 166.6, -385.4 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 167.4, -385.1 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 167.4, -385.1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 167.9, -385 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 167.9, -385 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 168.1, -384.9 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 168.1, -384.9 , 0 );

setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 559 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 560 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 565 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 566 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 567 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 569 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 570 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 548 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 667 + OFFSET_X, 1, -32 );

-- ** 音 ** --

--向かってくる
SE006 = playSeVer2( spep_2 + 6, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE006, 89 );
SE007 = playSeVer2( spep_2 + 6, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 6, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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

--キック
SE009 = playSeVer2( spep_2 + 56, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 66, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 66, 1110, "", 0, 0, 0, -1);

--エルボー
SE012 = playSeVer2( spep_2 + 130, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 138, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE013, 69 );
SE014 = playSeVer2( spep_2 + 138, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE014, 77 );

--着地
SE015 = playSeVer2( spep_2 + 186, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE015, 191 );
SE017 = playSeVer2( spep_2 + 190, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE017, 174 );
SE018 = playSeVer2( spep_2 + 190, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE018, 178 );
SE019 = playSeVer2( spep_2 + 196, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE019, 209 );
SE020 = playSeVer2( spep_2 + 196, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE020, 193 );
SE032 = playSeVer2( spep_2 + 540, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 540, SE032, 172 );
SE033 = playSeVer2( spep_2 + 542, 1192, "",spep_2 + 560, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 542, SE033, 170 );
SE034 = playSeVer2( spep_2 + 546, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 546, SE034, 170 );
--敵地面落ちる
SE016 = playSeVer2( spep_2 + 190, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE016, 63 );
--向かっていく
SE021 = playSeVer2( spep_2 + 218, 1117, "",spep_2 + 270, 0, 30, -1);
--連続パンチ
SE022 = playSeVer2( spep_2 + 242, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 242, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE023, 76 );
SE024 = playSeVer2( spep_2 + 262, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 262, SE024, 83 );
SE025 = playSeVer2( spep_2 + 262, 1425, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 262, SE025, 79 );

--大きく振りかぶる
SE026 = playSeVer2( spep_2 + 352, 1264, "",spep_2 + 450, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 352, SE026, 67 );
SE027 = playSeVer2( spep_2 + 368, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE027, 63 );
--膝蹴り
SE028 = playSeVer2( spep_2 + 414, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 428, 1187, "", 0, 0, 0, -1);
--画面遷移
SE030 = playSeVer2( spep_2 + 500, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 500, SE030, 71 );
SE031 = playSeVer2( spep_2 + 504, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE031, 56 );
--地面落ちる
SE035 = playSeVer2( spep_2 + 560, 1012, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 560, 1008, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 560); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 662F


end
