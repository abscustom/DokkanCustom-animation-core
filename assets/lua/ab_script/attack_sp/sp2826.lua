--1030670:孫悟空_必殺技：伸びろ如意棒
--sp_effect_b4_00367
--sp2826

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163569;  -- 前半 ef_001
SP_02 = 163571;  -- 後半 ef_002
SP_02b = 163572;  -- 後半 ef_002b

--エフェクト(敵)
SP_01r = 163570;  -- 前半 ef_001r
SP_02r = 163573;  -- 後半 ef_002r
SP_02br = 163574;  -- 後半 ef_002br


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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 前半(ef_001)
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
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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

--如意棒回しながら降りてくる
SE001 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 78, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 73 );
SE002 = playSeVer2( spep_0 + 0, 1388, "",spep_0 + 78, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 66 );
setPitch( spep_0 + 0, SE002, -500 );
setTimeStretch( SE002, 0.67, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1151, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 4, 1151, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 12, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE005, 74 );
SE007 = playSeVer2( spep_0 + 20, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE007, 76 );
SE008 = playSeVer2( spep_0 + 30, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE008, 79 );
SE009 = playSeVer2( spep_0 + 40, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE009, 56 );
SE010 = playSeVer2( spep_0 + 48, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE010, 51 );

--着地
SE011 = playSeVer2( spep_0 + 58, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE011, 141 );
SE012 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE012, 155 );
SE013 = playSeVer2( spep_0 + 62, 1192, "",spep_0 + 78, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --104F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE015 = playSeVer2( spep_1 + 80, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 80, 1182, "", 0, 0, 0, -1);

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 280;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 後半(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 後半(ef_002b)
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

setDisp( spep_2 + 76 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 118 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 76 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 76 + OFFSET_X, 1, 336.6, -65.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 336.6, -65.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 343, -59.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 343, -59.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 221.2, -56.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 221.2, -56.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 125.4, -61.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 125.4, -61.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 32.6, -29.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 32.6, -29.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 23.1, -42.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 23.1, -42.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 34.5, -4.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 34.5, -4.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 37.9, -38.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 37.9, -38.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 33.1, -31.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 33.1, -31.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 108.8, 190.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 108.8, 190.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 129.5, 239.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 129.5, 239.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 155.6, 281 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 155.6, 281 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 182.5, 322.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 182.5, 322.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 209.2, 362.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 209.2, 362.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 223.2, 385.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 223.2, 385.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 236.8, 406.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 236.8, 406.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 251.6, 428.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 251.6, 428.4 , 0 );

setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.08, 0.08 );

setRotateKey( spep_2 + 76 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 13 );

-- ** 音 ** --

--振りかぶる
SE017 = playSeVer2( spep_2 + 38, 1116, "",spep_2 + 78, 0, 24, -1);
SE018 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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

--ヒット
SE019 = playSeVer2( spep_2 + 72, 1120, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 72, 412, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 78, 1110, "", 0, 0, 0, -1);

--構え直す
SE022 = playSeVer2( spep_2 + 116, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE022, 63 );
SE023 = playSeVer2( spep_2 + 142, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 150, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE024, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 170); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 276F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 前半(ef_001r)
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
spep_x = spep_0 + 16;

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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--如意棒回しながら降りてくる
SE001 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 78, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 73 );
SE002 = playSeVer2( spep_0 + 0, 1388, "",spep_0 + 78, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 66 );
setPitch( spep_0 + 0, SE002, -500 );
setTimeStretch( SE002, 0.67, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1151, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 4, 1151, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 12, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE005, 74 );
SE007 = playSeVer2( spep_0 + 20, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE007, 76 );
SE008 = playSeVer2( spep_0 + 30, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE008, 79 );
SE009 = playSeVer2( spep_0 + 40, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE009, 56 );
SE010 = playSeVer2( spep_0 + 48, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE010, 51 );

--着地
SE011 = playSeVer2( spep_0 + 58, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE011, 141 );
SE012 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE012, 155 );
SE013 = playSeVer2( spep_0 + 62, 1192, "",spep_0 + 78, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --104F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE015 = playSeVer2( spep_1 + 80, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 80, 1182, "", 0, 0, 0, -1);

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 280;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 後半(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 後半(ef_002rb)
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

setDisp( spep_2 + 76 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 118 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 76 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 76 + OFFSET_X, 1, 336.6, -65.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 336.6, -65.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 343, -59.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 343, -59.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 221.2, -56.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 221.2, -56.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 125.4, -61.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 125.4, -61.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 32.6, -29.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 32.6, -29.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 23.1, -42.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 23.1, -42.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 34.5, -4.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 34.5, -4.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 37.9, -38.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 37.9, -38.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 33.1, -31.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 33.1, -31.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 108.8, 190.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 108.8, 190.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 129.5, 239.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 129.5, 239.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 155.6, 281 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 155.6, 281 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 182.5, 322.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 182.5, 322.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 209.2, 362.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 209.2, 362.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 223.2, 385.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 223.2, 385.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 236.8, 406.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 236.8, 406.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 251.6, 428.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 251.6, 428.4 , 0 );

setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.08, 0.08 );

setRotateKey( spep_2 + 76 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 13 );

-- ** 音 ** --

--振りかぶる
SE017 = playSeVer2( spep_2 + 38, 1116, "",spep_2 + 78, 0, 24, -1);
SE018 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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

--ヒット
SE019 = playSeVer2( spep_2 + 72, 1120, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 72, 412, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 78, 1110, "", 0, 0, 0, -1);

--構え直す
SE022 = playSeVer2( spep_2 + 116, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE022, 63 );
SE023 = playSeVer2( spep_2 + 142, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 150, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE024, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 170); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 276F


end
