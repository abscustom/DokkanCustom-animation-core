--1029580:SSR_キュイ_必殺技：ダスタードインパクト
--sp_effect_a2_00245
--sp2759

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163256;  --ef_003  対峙〜敵の後ろに声かける
SP_01b = 163257;  --ef_003b 対峙〜敵の後ろに声かける
SP_02  = 163260;  --ef_004  連射〜爆発
SP_02b = 163261;  --ef_004b 連射〜爆発

--エフェクト(敵)
SP_01r  = 163259;  --ef_003r  対峙〜敵の後ろに声かける
SP_01br = 163258;  --ef_003br 対峙〜敵の後ろに声かける
SP_02r  = 163263;  --ef_004r  連射〜爆発
SP_02br = 163262;  --ef_004br 連射〜爆発


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙〜敵の後ろに声かける
-------------------------------------------------
MAX_FRAME_0 = 358;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙〜敵の後ろに声かける(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 対峙〜敵の後ろに声かける(ef_001_b)
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
spep_x = spep_0 + 172;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -235, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -235, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -235, 515.5 , 0 );
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
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1 , 440, -189.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 435.5, -189, 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 435.5, -189, 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 430.1, -188.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 430.1, -188.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 424.6, -187.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 424.6, -187.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 419.2, -187.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 419.2, -187.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 413.8, -186.7 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 413.8, -186.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 408.3, -186.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 408.3, -186.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 402.9, -185.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 402.9, -185.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 397.5, -184.9 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 397.5, -184.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 392, -184.3 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 392, -184.3 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 386.6, -183.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 386.6, -183.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 381.2, -183.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 381.2, -183.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 375.8, -182.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 375.8, -182.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 370.3, -181.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 370.3, -181.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 364.9, -181.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 364.9, -181.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 359.5, -180.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 359.5, -180.7 , 0 );

setScaleKey( spep_0 + 0, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 3.31, 3.31 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 324 + OFFSET_X, 1, 0 );

--changeAnime( spep_0 + 150 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 290 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 599.6, -245.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 599.6, -245.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -45.9, -144 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -45.9, -144 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 50, -140 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 50, -140 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 87.9, -145.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 87.9, -145.9 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 382, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--後ずさる
SE002 = playSeVer2( spep_0 + 10, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 178 );
SE003 = playSeVer2( spep_0 + 20, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 184 );
SE005 = playSeVer2( spep_0 + 96, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE005, 174 );
SE006 = playSeVer2( spep_0 + 142, 1108, "", 0, 0, 0, -1);

--汗
SE004 = playSeVer2( spep_0 + 80, 1280, "", 0, 0, 0, -1);

--画面遷移
SE007 = playSeVer2( spep_0 + 148, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE007, 63 );

--敵振り返る
SE009 = playSeVer2( spep_0 + 274, 1003, "", 0, 0, 0, -1);

--！？
SE010 = playSeVer2( spep_0 + 286, 48, "", 0, 0, 0, -1);

--ニヤリ
SE011 = playSeVer2( spep_0 + 316, 37, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 316, 34, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE012, 138 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --358f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 連射〜爆発
-------------------------------------------------
MAX_FRAME_2 = 476;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連射〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連射〜爆発(ef_002_b)
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
setDisp( spep_2 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 108 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 40 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 46 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 50 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 40 + OFFSET_X, 1, 188.3, -181 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 188.3, -181 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 155, -181 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 155, -181 , 0 );

setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.85, 1.85 );

setRotateKey( spep_2 + 40 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 56 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.1 );
setBlendColor( spep_2 + 62 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.2 );
setBlendColor( spep_2 + 68 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.3 );
setBlendColor( spep_2 + 74 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.4 );
setBlendColor( spep_2 + 80 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.6 );
setBlendColor( spep_2 + 86 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.7 );
setBlendColor( spep_2 + 92 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.8 );
setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.9 );
setBlendColor( spep_2 + 96 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 1.0 );
setBlendColor( spep_2 + 107 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 1.0 );
setBlendColor( spep_2 + 108 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 14, 1145, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 14, 1179, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 14, 1177, "",spep_2 + 174, 0, 42, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 8, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--気弾発射
SE017 = playSeVer2( spep_2 + 50, 1202, "", 0, 0, 0, -1);

--連続気弾発射
SE018 = playSeVer2( spep_2 + 100, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE018, 47 );
SE019 = playSeVer2( spep_2 + 100, 1406, "",spep_2 + 252, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 100, SE019, 141 );
SE020 = playSeVer2( spep_2 + 132, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE020, 50 );
SE021 = playSeVer2( spep_2 + 146, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE021, 47 );

--連続爆発
SE022 = playSeVer2( spep_2 + 178, 1023, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 196, 1014, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 218, 1024, "", 0, 0, 0, -1);

--遠方で爆発
SE025 = playSeVer2( spep_2 + 274, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE025, 79 );

--画面遷移
SE026 = playSeVer2( spep_2 + 324, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 260); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 476f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 対峙〜敵の後ろに声かける
-------------------------------------------------
MAX_FRAME_0 = 358;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 対峙〜敵の後ろに声かける(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 対峙〜敵の後ろに声かける(ef_001_b)
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
spep_x = spep_0 + 172;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 235, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 235, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 235, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1 , 440, -189.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 435.5, -189, 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 435.5, -189, 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 430.1, -188.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 430.1, -188.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 424.6, -187.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 424.6, -187.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 419.2, -187.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 419.2, -187.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 413.8, -186.7 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 413.8, -186.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 408.3, -186.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 408.3, -186.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 402.9, -185.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 402.9, -185.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 397.5, -184.9 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 397.5, -184.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 392, -184.3 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 392, -184.3 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 386.6, -183.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 386.6, -183.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 381.2, -183.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 381.2, -183.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 375.8, -182.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 375.8, -182.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 370.3, -181.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 370.3, -181.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 364.9, -181.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 364.9, -181.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 359.5, -180.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 359.5, -180.7 , 0 );

setScaleKey( spep_0 + 0, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 3.31, 3.31 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 324 + OFFSET_X, 1, 0 );

--changeAnime( spep_0 + 150 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 290 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 599.6, -245.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 599.6, -245.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -45.9, -144 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -45.9, -144 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 50, -140 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 50, -140 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 87.9, -145.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 87.9, -145.9 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 382, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--後ずさる
SE002 = playSeVer2( spep_0 + 10, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 178 );
SE003 = playSeVer2( spep_0 + 20, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 184 );
SE005 = playSeVer2( spep_0 + 96, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE005, 174 );
SE006 = playSeVer2( spep_0 + 142, 1108, "", 0, 0, 0, -1);

--汗
SE004 = playSeVer2( spep_0 + 80, 1280, "", 0, 0, 0, -1);

--画面遷移
SE007 = playSeVer2( spep_0 + 148, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE007, 63 );

--敵振り返る
SE009 = playSeVer2( spep_0 + 274, 1003, "", 0, 0, 0, -1);

--！？
SE010 = playSeVer2( spep_0 + 286, 48, "", 0, 0, 0, -1);

--ニヤリ
SE011 = playSeVer2( spep_0 + 316, 37, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 316, 34, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE012, 138 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --358f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 連射〜爆発
-------------------------------------------------
MAX_FRAME_2 = 476;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 連射〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 連射〜爆発(ef_002_b)
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
setDisp( spep_2 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 108 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 40 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 46 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 50 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 40 + OFFSET_X, 1, 188.3, -181 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 188.3, -181 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 155, -181 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 155, -181 , 0 );

setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.85, 1.85 );

setRotateKey( spep_2 + 40 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 56 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.1 );
setBlendColor( spep_2 + 62 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.2 );
setBlendColor( spep_2 + 68 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.3 );
setBlendColor( spep_2 + 74 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.4 );
setBlendColor( spep_2 + 80 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.6 );
setBlendColor( spep_2 + 86 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.7 );
setBlendColor( spep_2 + 92 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.8 );
setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 0.9 );
setBlendColor( spep_2 + 96 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 1.0 );
setBlendColor( spep_2 + 107 + OFFSET_X, 1, 3, 1.0, 0.44, 0.22, 1.0 );
setBlendColor( spep_2 + 108 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 14, 1145, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 14, 1179, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 14, 1177, "",spep_2 + 174, 0, 42, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 8, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--気弾発射
SE017 = playSeVer2( spep_2 + 50, 1202, "", 0, 0, 0, -1);

--連続気弾発射
SE018 = playSeVer2( spep_2 + 100, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE018, 47 );
SE019 = playSeVer2( spep_2 + 100, 1406, "",spep_2 + 252, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 100, SE019, 141 );
SE020 = playSeVer2( spep_2 + 132, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE020, 50 );
SE021 = playSeVer2( spep_2 + 146, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE021, 47 );

--連続爆発
SE022 = playSeVer2( spep_2 + 178, 1023, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 196, 1014, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 218, 1024, "", 0, 0, 0, -1);

--遠方で爆発
SE025 = playSeVer2( spep_2 + 274, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE025, 79 );

--画面遷移
SE026 = playSeVer2( spep_2 + 324, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 260); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 476f


end
