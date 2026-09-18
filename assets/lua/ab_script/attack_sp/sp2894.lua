--1031620:UR_スポポビッチ_必殺技：バーサーカークラッシュ
--sp_effect_a2_00265
--sp2894

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163983; --セリフカットイン正面走り～カードカットイン ef_001
SP_02 = 163984; --蹴り上げ～フィニッシュ ef_002
SP_02b  = 163985; --蹴り上げ～フィニッシュ ef_002b

--エフェクト(敵)
SP_02r  = 163986; --蹴り上げ～フィニッシュ ef_002r
SP_02br = 163987; --蹴り上げ～フィニッシュ ef_002br

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
-- セリフカットイン正面走り～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 124;

-- ** エフェクト等 ** --

start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- セリフカットイン正面走り～カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--顔カットイン
--SE002 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);
--走ってくる
SE003 = playSeVer2( spep_0 + 88, 1117, "",spep_0 + 138, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 88, SE003, 52 );
SE004 = playSeVer2( spep_0 + 96, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE004, 184 );
SE005 = playSeVer2( spep_0 + 96, 1111, "",spep_0 + 128, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 96, SE005, 170 );

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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

--走ってくる
SE006 = playSeVer2( spep_0 + 114, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE006, 191 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- フレーム数

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--カードカットイン
--SE007 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);
--蹴り上げる
SE008 = playSeVer2( spep_1 + 84, 1004, "", 0, 0, 0, -1);


-------------------------------------------------
-- 蹴り上げ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 588;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 蹴り上げ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 蹴り上げ～フィニッシュ(ef_002_back)
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

setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 42 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 12 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, 225.9, -337.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 160.3, -410.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 160.3, -410.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 241.5, -318.3 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 241.5, -318.3 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 209.9, -321.6 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 209.9, -321.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 250.5, -388.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 250.5, -388.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 158.7, -397.3 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 158.7, -397.3 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 246.2, -41.4 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 246.2, -41.4 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 250.1, 64.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 250.1, 64.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 253.9, 168.5 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 253.9, 168.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 257.7, 271.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 257.7, 271.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 269.8, 499.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 269.8, 499.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 280.5, 703.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 280.5, 703.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 289.8, 884.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 289.8, 884.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 297.8, 1043.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 297.8, 1043.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 304.5, 1180.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 304.5, 1180.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 309.8, 1295 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 309.8, 1295 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 313.9, 1388.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 313.9, 1388.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 316.8, 1461.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 316.8, 1461.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 318.4, 1513.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 318.4, 1513.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 318.8, 1545.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 318.8, 1545.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 318.1, 1558.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 318.1, 1558.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 316.2, 1552 , 0 );

setScaleKey( spep_2 + 0, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -32.9 );

--敵の動き2

setDisp( spep_2 + 78 + OFFSET_X, 1, 1);
setDisp( spep_2 + 178 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 78 + OFFSET_X, 1, 164.2, -395.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 164.2, -395.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 164.2, -361.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 164.2, -361.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 164.2, -329 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 164.2, -329 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 164.2, -297.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 164.2, -297.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 164.2, -267.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 164.2, -267.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 164.2, -238.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 164.2, -238.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 164.2, -210.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 164.2, -210.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 164.2, -184.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 164.2, -184.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 164.2, -158.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 164.2, -158.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 164.2, -134.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 164.2, -134.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 164.2, -111.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 164.2, -111.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 164.2, -90.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 164.2, -90.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 164.2, -70 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 164.2, -70 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 164.2, -50.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 164.2, -50.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 164.2, -33 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 164.2, -33 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 164.2, -16.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 164.2, -16.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 164.2, -0.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 164.2, -0.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 164.2, 13.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 164.2, 13.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 164.2, 26.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 164.2, 26.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 164.2, 37.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 164.2, 37.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 164.2, 48.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 164.2, 48.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 164.2, 57.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 164.2, 57.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 164.2, 65.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 164.2, 65.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 164.2, 72.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 164.2, 72.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 164.2, 78 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 164.2, 78 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 164.2, 82.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 164.2, 82.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 164.2, 85.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 164.2, 85.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 164.2, 87.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 164.2, 87.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 164.2, 87.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 164.2, 87.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 164.2, 89.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 164.2, 89.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 164.2, 90.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 164.2, 90.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 164.2, 92.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 164.2, 92.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 164.2, 93.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 164.2, 93.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 164.2, 95.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 164.2, 95.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 164.2, 97 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 164.2, 97 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 164.2, 98.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 164.2, 98.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 164.2, 100 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 164.2, 100 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 164.2, 101.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 164.2, 101.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 164.2, 103.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 164.2, 103.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 164.2, 104.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 164.2, 104.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 164.2, 106.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 164.2, 106.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 164.2, 107.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 164.2, 107.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 164.2, 109.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 164.2, 109.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 164.2, 110.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 164.2, 110.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 164.2, 112.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 164.2, 112.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 164.2, 113.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 164.2, 113.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 164.2, 115.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 164.2, 115.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 164.2, 116.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 164.2, 116.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 164.2, 118.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 164.2, 118.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 164.2, 119.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 164.2, 119.8 , 0 );

setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.03, 2.03 );

setRotateKey( spep_2 + 78 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -44.1 );

--敵の動き3

setDisp( spep_2 +190 + OFFSET_X, 1, 1);
setDisp( spep_2 + 200 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 190 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 190 + OFFSET_X, 1, 266.3, -200.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 266.3, -200.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 307.3, -129.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 307.3, -129.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 296.3, -131.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 296.3, -131.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 357.4, -201.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 357.4, -201.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 346.3, -195.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 346.3, -195.2 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_2 + 190 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 38.9 );

--敵の動き4

setDisp( spep_2 +230 + OFFSET_X, 1, 1);
setDisp( spep_2 + 262 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 254 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 230 + OFFSET_X, 1, -187.9, 442.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -187.9, 442.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -176, 430.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -176, 430.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -140, 397.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -140, 397.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -80, 341.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -80, 341.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 4, 262.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 4, 262.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 111.9, 161.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 111.9, 161.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 243.9, 38.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 243.9, 38.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 399.8, -107.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 399.8, -107.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 566.4, -267.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 566.4, -267.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 794, -474.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 794, -474.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 1028.6, -669.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 1028.6, -669.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 1240.2, -937.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 1240.2, -937.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -338, 660 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -338, 660 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -251.1, 455.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -251.1, 455.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -165.6, 257.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -165.6, 257.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -85.5, 30.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -85.5, 30.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 9.1, -185.8 , 0 );

setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.44, 2.44 );

setRotateKey( spep_2 + 230 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 118 );

--敵の動き5

setDisp( spep_2 +398 + OFFSET_X, 1, 1);
setDisp( spep_2 + 434 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 398 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 398 + OFFSET_X, 1, 2142.1, -4181.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 2142.1, -4181.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 2126.4, -4149.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 2126.4, -4149.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 2079.3, -4051.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 2079.3, -4051.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 2000.8, -3889.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 2000.8, -3889.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 1890.9, -3661.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 1890.9, -3661.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 1749.6, -3368.9 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 1749.6, -3368.9 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 1576.8, -3011.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 1576.8, -3011.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 1372.6, -2588.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 1372.6, -2588.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 1136.8, -2100.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 1136.8, -2100.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 869.6, -1547.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 869.6, -1547.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 570.9, -929.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 570.9, -929.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 240.6, -246.1 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 240.6, -246.1 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 237.9, -241.5 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 237.9, -241.5 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 235.5, -237.4 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 235.5, -237.4 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 233.5, -233.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 233.5, -233.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 231.7, -230.8 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 231.7, -230.8 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 230.3, -228.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 230.3, -228.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 229.1, -226.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 229.1, -226.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 228.3, -224.8 , 0 );

setScaleKey( spep_2 + 398 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 8.12, 8.12 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 8.12, 8.12 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 7.61, 7.61 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 7.61, 7.61 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 398 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--蹴り上げる
SE009 = playSeVer2( spep_2 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 84 );
SE010 = playSeVer2( spep_2 + 0, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 68 );
--飛び上がる
SE011 = playSeVer2( spep_2 + 54, 1207, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 54, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE012, 65 );
SE013 = playSeVer2( spep_2 + 100, 1117, "", 0, 0, 0, -1);
--はたく
SE014 = playSeVer2( spep_2 + 162, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 174, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE015, 79 );
--敵落ちていく
SE016 = playSeVer2( spep_2 + 198, 1121, "",spep_2 + 280, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 198, SE016, 56 );
--地面激突
SE017 = playSeVer2( spep_2 + 258, 1159, "",spep_2 + 400, 0, 98, -1);
--気弾溜め
SE018 = playSeVer2( spep_2 + 308, 1278, "",spep_2 + 420, 0, 36, -1);
SE019 = playSeVer2( spep_2 + 336, 1204, "",spep_2 + 418, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 336, SE019, 200 );
setPitch( spep_2 + 336, SE019, -1200 );
setTimeStretch( SE019, 0.2, 30, 4 );
SE020 = playSeVer2( spep_2 + 336, 1191, "",spep_2 + 420, 0, 26, -1);
SE021 = playSeVer2( spep_2 + 336, 1204, "",spep_2 + 414, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 336, SE021, 126 );
--気弾発射
SE022 = playSeVer2( spep_2 + 394, 1145, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 394, 1022, "", 0, 0, 0, -1);
--爆発
SE024 = playSeVer2( spep_2 + 436, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 436, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 440); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 588

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン正面走り～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 124;

-- ** エフェクト等 ** --

start_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- セリフカットイン正面走り～カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--顔カットイン
--SE002 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);
--走ってくる
SE003 = playSeVer2( spep_0 + 88, 1117, "",spep_0 + 138, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 88, SE003, 52 );
SE004 = playSeVer2( spep_0 + 96, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE004, 184 );
SE005 = playSeVer2( spep_0 + 96, 1111, "",spep_0 + 128, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 96, SE005, 170 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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

--走ってくる
SE006 = playSeVer2( spep_0 + 114, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE006, 191 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- フレーム数

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--カードカットイン
--SE007 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);
--蹴り上げる
SE008 = playSeVer2( spep_1 + 84, 1004, "", 0, 0, 0, -1);

-------------------------------------------------
-- 蹴り上げ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 588;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 蹴り上げ～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 蹴り上げ～フィニッシュ(ef_002br)
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

setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 42 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 0, 1, 18 );
changeAnime( spep_2 + 12 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 0, 1, -225.9, -337.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -160.3, -410.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -160.3, -410.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -241.5, -318.3 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -241.5, -318.3 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -209.9, -321.6 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -209.9, -321.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -250.5, -388.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -250.5, -388.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -158.7, -397.3 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -158.7, -397.3 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -246.2, -41.4 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -246.2, -41.4 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -250.1, 64.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -250.1, 64.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -253.9, 168.5 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -253.9, 168.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -257.7, 271.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -257.7, 271.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -269.8, 499.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -269.8, 499.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -280.5, 703.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -280.5, 703.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -289.8, 884.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -289.8, 884.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -297.8, 1043.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -297.8, 1043.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -304.5, 1180.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -304.5, 1180.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -309.8, 1295 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -309.8, 1295 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -313.9, 1388.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -313.9, 1388.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -316.8, 1461.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -316.8, 1461.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -318.4, 1513.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -318.4, 1513.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -318.8, 1545.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -318.8, 1545.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -318.1, 1558.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -318.1, 1558.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -316.2, 1552 , 0 );

setScaleKey( spep_2 + 0, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, 32.9 );

--敵の動き2

setDisp( spep_2 + 78 + OFFSET_X, 1, 1);
setDisp( spep_2 + 178 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 78 + OFFSET_X, 1, -164.2, -395.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -164.2, -395.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -164.2, -361.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -164.2, -361.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -164.2, -329 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -164.2, -329 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -164.2, -297.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -164.2, -297.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -164.2, -267.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -164.2, -267.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -164.2, -238.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -164.2, -238.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -164.2, -210.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -164.2, -210.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -164.2, -184.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -164.2, -184.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -164.2, -158.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -164.2, -158.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -164.2, -134.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -164.2, -134.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -164.2, -111.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -164.2, -111.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -164.2, -90.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -164.2, -90.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -164.2, -70 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -164.2, -70 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -164.2, -50.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -164.2, -50.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -164.2, -33 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -164.2, -33 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -164.2, -16.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -164.2, -16.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -164.2, -0.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -164.2, -0.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -164.2, 13.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -164.2, 13.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -164.2, 26.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -164.2, 26.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -164.2, 37.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -164.2, 37.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -164.2, 48.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -164.2, 48.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -164.2, 57.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -164.2, 57.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -164.2, 65.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -164.2, 65.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -164.2, 72.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -164.2, 72.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -164.2, 78 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -164.2, 78 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -164.2, 82.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -164.2, 82.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -164.2, 85.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -164.2, 85.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -164.2, 87.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -164.2, 87.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -164.2, 87.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -164.2, 87.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -164.2, 89.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -164.2, 89.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -164.2, 90.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -164.2, 90.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -164.2, 92.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -164.2, 92.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -164.2, 93.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -164.2, 93.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -164.2, 95.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -164.2, 95.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -164.2, 97 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -164.2, 97 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -164.2, 98.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -164.2, 98.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -164.2, 100 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -164.2, 100 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -164.2, 101.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -164.2, 101.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -164.2, 103.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -164.2, 103.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -164.2, 104.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -164.2, 104.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -164.2, 106.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -164.2, 106.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -164.2, 107.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -164.2, 107.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -164.2, 109.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -164.2, 109.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -164.2, 110.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -164.2, 110.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -164.2, 112.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -164.2, 112.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -164.2, 113.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -164.2, 113.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -164.2, 115.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -164.2, 115.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -164.2, 116.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -164.2, 116.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -164.2, 118.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -164.2, 118.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -164.2, 119.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -164.2, 119.8 , 0 );

setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.03, 2.03 );

setRotateKey( spep_2 + 78 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 44.1 );

--敵の動き3

setDisp( spep_2 +190 + OFFSET_X, 1, 1);
setDisp( spep_2 + 200 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 190 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 190 + OFFSET_X, 1, -266.3, -200.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -266.3, -200.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -307.3, -129.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -307.3, -129.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -296.3, -131.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -296.3, -131.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -357.4, -201.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -357.4, -201.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -346.3, -195.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -346.3, -195.2 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_2 + 190 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -38.9 );

--敵の動き4
setDisp( spep_2 +230 + OFFSET_X, 1, 1);
setDisp( spep_2 + 262 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 230 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 254 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 230 + OFFSET_X, 1, -187.9, 442.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -187.9, 442.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -176, 430.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -176, 430.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -140, 397.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -140, 397.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -80, 341.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -80, 341.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 4, 262.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 4, 262.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 111.9, 161.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 111.9, 161.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 243.9, 38.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 243.9, 38.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 399.8, -107.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 399.8, -107.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 566.4, -267.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 566.4, -267.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 794, -474.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 794, -474.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 1028.6, -669.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 1028.6, -669.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 1240.2, -937.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 1240.2, -937.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -338, 660 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -338, 660 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -251.1, 455.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -251.1, 455.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -165.6, 257.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -165.6, 257.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -85.5, 30.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -85.5, 30.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 9.1, -185.8 , 0 );

setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.44, 2.44 );

setRotateKey( spep_2 + 230 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 118 );

--敵の動き5

setDisp( spep_2 +398 + OFFSET_X, 1, 1);
setDisp( spep_2 + 434 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 398 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 398 + OFFSET_X, 1, -2142.1, -4181.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -2142.1, -4181.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -2126.4, -4149.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -2126.4, -4149.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -2079.3, -4051.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -2079.3, -4051.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -2000.8, -3889.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -2000.8, -3889.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -1890.9, -3661.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -1890.9, -3661.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -1749.6, -3368.9 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -1749.6, -3368.9 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -1576.8, -3011.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -1576.8, -3011.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -1372.6, -2588.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -1372.6, -2588.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -1136.8, -2100.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -1136.8, -2100.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -869.6, -1547.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -869.6, -1547.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -570.9, -929.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -570.9, -929.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -240.6, -246.1 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -240.6, -246.1 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -237.9, -241.5 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -237.9, -241.5 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -235.5, -237.4 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -235.5, -237.4 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -233.5, -233.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -233.5, -233.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -231.7, -230.8 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -231.7, -230.8 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -230.3, -228.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -230.3, -228.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -229.1, -226.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -229.1, -226.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -228.3, -224.8 , 0 );

setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 8.18, 8.18 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 8.12, 8.12 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 8.12, 8.12 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 7.61, 7.61 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 7.61, 7.61 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 398 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 0 );
-- ** 音 ** --

--蹴り上げる
SE009 = playSeVer2( spep_2 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 84 );
SE010 = playSeVer2( spep_2 + 0, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 68 );
--飛び上がる
SE011 = playSeVer2( spep_2 + 54, 1207, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 54, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE012, 65 );
SE013 = playSeVer2( spep_2 + 100, 1117, "", 0, 0, 0, -1);
--はたく
SE014 = playSeVer2( spep_2 + 162, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 174, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE015, 79 );
--敵落ちていく
SE016 = playSeVer2( spep_2 + 198, 1121, "",spep_2 + 280, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 198, SE016, 56 );
--地面激突
SE017 = playSeVer2( spep_2 + 258, 1159, "",spep_2 + 400, 0, 98, -1);
--気弾溜め
SE018 = playSeVer2( spep_2 + 308, 1278, "",spep_2 + 420, 0, 36, -1);
SE019 = playSeVer2( spep_2 + 336, 1204, "",spep_2 + 418, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 336, SE019, 200 );
setPitch( spep_2 + 336, SE019, -1200 );
setTimeStretch( SE019, 0.2, 30, 4 );
SE020 = playSeVer2( spep_2 + 336, 1191, "",spep_2 + 420, 0, 26, -1);
SE021 = playSeVer2( spep_2 + 336, 1204, "",spep_2 + 414, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 336, SE021, 126 );
--気弾発射
SE022 = playSeVer2( spep_2 + 394, 1145, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 394, 1022, "", 0, 0, 0, -1);
--爆発
SE024 = playSeVer2( spep_2 + 436, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 436, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 440); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 588


end