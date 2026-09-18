--4027230：LR_無限ザマス_必殺技：終焉の光
--sp_effect_a3_00102
--sp2591

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162168;   --顔アップ	ef_001
SP_02 = 162169;  -- ビーム＆爆発	ef_002
SP_02b = 162171;  -- 敵ヒット時　背景	ef_003

--エフェクト(てき)
SP_02r = 162170;  -- ビーム＆爆発	ef_002r



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
-- 顔アップ	ef_001（96F）
-------------------------------------------------

MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
--shuchusen = entryEffectLife( spep_0 + 465, 906, MAX_FRAME_0 - 465, 0x100, -1, 0, 0, 0 );  -- 集中線
--setEffShake( spep_0 + 465, shuchusen, 42, 20 );
--setEffMoveKey( spep_0 + 465, shuchusen, 0, 0 , 0 );
--setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen, 0, 0 , 0 );
--setEffScaleKey( spep_0 + 465, shuchusen, 1.6, 1.6 );
--setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen, 1.6, 1.6 );
--setEffRotateKey( spep_0 + 465, shuchusen, 0 );
--setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen, 0 );
--setEffAlphaKey( spep_0 + 465, shuchusen, 255 );
--setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen, 255 );


--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 白フェード ** --
entryFade( spep_0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 86, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 122, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 116, SE010, 75 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 120, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 37 );
--顔光る
SE003 = playSeVer2( spep_0 + 28, 1255, "",spep_0 + 110, 16, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 28, SE003, 100 );
setStartTimeMs( SE003,  467 );
setPitch( spep_0 + 28, SE003, -900 );
setTimeStretch( SE003, 0.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 28, 1240, "",spep_0 + 112, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 28, SE005, 130 );
setPitch( spep_0 + 28, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE006 = playSeVer2( spep_0 + 28, 1391, "",spep_0 + 100, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 28, SE006, 100 );


-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- ビーム＆爆発	ef_002（298F）
-------------------------------------------------

MAX_FRAME_1 = 298;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_1 + 100 + OFFSET_X, 1, 1);
setDisp( spep_1 + 120 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 100 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 112 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 100 + OFFSET_X, 1, 0, 2.3 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 0, 1.7 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 0, 2.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 0, 1.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 0, 1.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 7.9, -12 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 7.9, -12 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 44.9, -31 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 44.9, -31 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 75.6, -90.9 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 75.6, -90.9 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 75.6, -90.9 , 0 );

setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_1 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, 52.9 );

setBlendColor( spep_1 + 102 + OFFSET_X, 1, 3, 1, 0, 0, 0.05 );
setBlendColor( spep_1 + 104 + OFFSET_X, 1, 3, 1, 0, 0, 0.1 );
setBlendColor( spep_1 + 106 + OFFSET_X, 1, 3, 1, 0, 0, 0.15 );
setBlendColor( spep_1 + 116 + OFFSET_X, 1, 3, 1, 0, 0, 0.2 );
setBlendColor( spep_1 + 118 + OFFSET_X, 1, 3, 1, 0, 0, 0.2 );
setBlendColor( spep_1 + 120 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 白フェード ** --
entryFade( spep_1 + 92, 8, 1, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 152, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--発射前溜め
SE008 = playSeVer2( spep_1 + 12, 1374, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE008, 102 );
setStartTimeMs( SE008,  1100 );
SE009 = playSeVer2( spep_1 + 16, 1274, "",spep_1 + 68, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 16, SE009, 126 );
SE010 = playSeVer2( spep_1 + 20, 1371, "",spep_1 + 218, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 20, SE010, 55 );
--気弾発射
SE011 = playSeVer2( spep_1 + 48, 1423, "",spep_1 + 218, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 48, SE011, 150 );
SE012 = playSeVer2( spep_1 + 48, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE012, 107 );
SE013 = playSeVer2( spep_1 + 48, 1022, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 48, 1213, "",spep_1 + 202, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 48, SE014, 75 );
--敵ヒット
SE015 = playSeVer2( spep_1 + 112, 1021, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 112, 1017, "", 0, 0, 0, -1);
--爆発
SE017 = playSeVer2( spep_1 + 180, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 180, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 222, 1067, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 222, 1188, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_1 + 190); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- --298

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 顔アップ	ef_001（96F）
-------------------------------------------------

MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
--shuchusen = entryEffectLife( spep_0 + 465, 906, MAX_FRAME_0 - 465, 0x100, -1, 0, 0, 0 );  -- 集中線
--setEffShake( spep_0 + 465, shuchusen, 42, 20 );
--setEffMoveKey( spep_0 + 465, shuchusen, 0, 0 , 0 );
--setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen, 0, 0 , 0 );
--setEffScaleKey( spep_0 + 465, shuchusen, 1.6, 1.6 );
--setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen, 1.6, 1.6 );
--setEffRotateKey( spep_0 + 465, shuchusen, 0 );
--setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen, 0 );
--setEffAlphaKey( spep_0 + 465, shuchusen, 255 );
--setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen, 255 );


--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 白フェード ** --
entryFade( spep_0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 90, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 122, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 116, SE010, 75 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 120, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 37 );
--顔光る
SE003 = playSeVer2( spep_0 + 28, 1255, "",spep_0 + 110, 16, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 28, SE003, 100 );
setStartTimeMs( SE003,  467 );
setPitch( spep_0 + 28, SE003, -900 );
setTimeStretch( SE003, 0.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 28, 1240, "",spep_0 + 112, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 28, SE005, 130 );
setPitch( spep_0 + 28, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE006 = playSeVer2( spep_0 + 28, 1391, "",spep_0 + 100, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 28, SE006, 100 );


-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- ビーム＆爆発	ef_002r（298F）
-------------------------------------------------

MAX_FRAME_1 = 298;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 100 + OFFSET_X, 1, 1);
setDisp( spep_1 + 120 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 100 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 112 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 100 + OFFSET_X, 1, 0, 2.3 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 0, 1.7 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 0, 2.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 0, 1.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 0, 1.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 0, 3.9 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 7.9, -12 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 7.9, -12 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 44.9, -31 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 44.9, -31 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 75.6, -90.9 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 75.6, -90.9 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 75.6, -90.9 , 0 );

setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_1 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, 52.9 );

setBlendColor( spep_1 + 102 + OFFSET_X, 1, 3, 1, 0, 0, 0.05 );
setBlendColor( spep_1 + 104 + OFFSET_X, 1, 3, 1, 0, 0, 0.1 );
setBlendColor( spep_1 + 106 + OFFSET_X, 1, 3, 1, 0, 0, 0.15 );
setBlendColor( spep_1 + 116 + OFFSET_X, 1, 3, 1, 0, 0, 0.2 );
setBlendColor( spep_1 + 118 + OFFSET_X, 1, 3, 1, 0, 0, 0.2 );
setBlendColor( spep_1 + 120 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 白フェード ** --
entryFade( spep_1 + 92, 8, 1, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 152, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--発射前溜め
SE008 = playSeVer2( spep_1 + 12, 1374, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE008, 102 );
setStartTimeMs( SE008,  1100 );
SE009 = playSeVer2( spep_1 + 16, 1274, "",spep_1 + 68, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 16, SE009, 126 );
SE010 = playSeVer2( spep_1 + 20, 1371, "",spep_1 + 218, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 20, SE010, 55 );
--気弾発射
SE011 = playSeVer2( spep_1 + 48, 1423, "",spep_1 + 218, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 48, SE011, 150 );
SE012 = playSeVer2( spep_1 + 48, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE012, 107 );
SE013 = playSeVer2( spep_1 + 48, 1022, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 48, 1213, "",spep_1 + 202, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 48, SE014, 75 );
--敵ヒット
SE015 = playSeVer2( spep_1 + 112, 1021, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 112, 1017, "", 0, 0, 0, -1);
--爆発
SE017 = playSeVer2( spep_1 + 180, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 180, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 222, 1067, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 222, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 190); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- --298

end
