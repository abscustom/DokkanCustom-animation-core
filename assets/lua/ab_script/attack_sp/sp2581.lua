-- 1027180 : UR_マンバ_必殺技：妖鎌閃
-- sp_effect_a6_00020
-- sp2581

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 敵味方共通
SP_001 = 162115;  -- 登場から振り向き髪を振り乱す ef_001　256
SP_002 = 162116;  -- 敵を髪で縛り上げ鎌で斬撃 ef_002 275
SP_002b = 162117;  -- ↑↑↑↑敵を挟んで背景 ef_002b 275

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_2 = 510 + 94;

        timing_skip = 378;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --鎌で切る
        SE026 = playSeVer2( spep_2 + 376+3, 1172, "",spep_2 + 452, 0, 56, -1);
        setSeVolumeByWorkId( spep_2 + 376+3, SE026, 83 );
        SE027 = playSeVer2( spep_2 + 376+3, 1032, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 376+3, SE027, 77 );
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;


------------------------------------------------------
-- 登場から振り向き髪を振り乱す ef_001 (510F)
------------------------------------------------------
MAX_FRAME_0 = 510;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 426;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
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
shuchusen = entryEffectLife( spep_0 + 465, 906, MAX_FRAME_0 - 465, 0x100, -1, 0, 0, 0 );  -- 集中線
setEffShake( spep_0 + 465, shuchusen, 42, 20 );
setEffMoveKey( spep_0 + 465, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 465, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_0 + 465, shuchusen, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen, 0 );
setEffAlphaKey( spep_0 + 465, shuchusen, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen, 255 );

-- ** 音 ** --
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

---環境音
SE001 = playSeVer2( spep_0 + 0, 1308, "",spep_0 + 534, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--歩く音
SE002 = playSeVer2( spep_0 + 28, 1106, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 84, 1106, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 140, 1106, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える
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
-- ** 音 ** --

--不穏
SE005 = playSeVer2( spep_0 + 182, 1271, "",spep_0 + 354, 0, 74, 0.8);
setSeVolumeByWorkId( spep_0 + 182, SE005, 71 );
SE006 = playSeVer2( spep_0 + 182, 1319, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 182, SE006, 54 );

--振り返り変身
SE007 = playSeVer2( spep_0 + 332, 1374, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE007, 49 );
setStartTimeMs( SE007,  967 );
SE008 = playSeVer2( spep_0 + 322, 1275, "", spep_0 + 444, 0, 52, 0.6);
setSeVolumeByWorkId( spep_0 + 322, SE008, 80 );
SE009 = playSeVer2( spep_0 + 338, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE009, 83 );
SE010 = playSeVer2( spep_0 + 338, 1241, "",spep_0 + 444, 0, 52, -1);

--集中線
SE012 = playSeVer2( spep_0 + 466, 20, "",spep_0 + 534, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 510



--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 敵を髪で縛り上げ鎌で斬撃 ef_002 (548F)
------------------------------------------------------
MAX_FRAME_2 = 548;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 敵キャラクター ** --
OFFSET_Y = 90;--小さいキャラに合わせた位置調整

--敵の動き１
setDisp( spep_2 + 1 + OFFSET_X,1, 1 );
setDisp( spep_2 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 1 + OFFSET_X, 1, 37.9, -120 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 37.8, -112.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 37.8, -112.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 42.5, -107.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 42.5, -107.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 42.5, -99.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 42.5, -99.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 35.4, -94.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 35.4, -94.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 35.4, -86.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 35.4, -86.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 43.7, -79.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 43.7, -79.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 43.7, -72.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 43.7, -72.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 45.2, -70.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 45.2, -70.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 45.2, -62.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 45.2, -62.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 43.7, -52.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 43.7, -52.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 43.7, -47.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 43.7, -47.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 35.4, -41.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 35.4, -41.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 26+ OFFSET_X, 1, 35.4, -36.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 35.4, -36.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 42.5, -6.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 42.5, -6.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 35.4, 14.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 35.4, 14.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 35.4, 37 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 35.4, 37 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 43.7, 59.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 43.7, 59.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 43.7, 82.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 43.7, 82.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 45.2, 99.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 45.2, 99.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 45.2, 122.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 45.2, 122.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 43.7, 150.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 43.7, 150.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 43.7, 173.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 43.7, 173.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 35.4, 197.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 35.4, 197.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 35.4, 220.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 35.4, 220.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 42.5, 245.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 42.5, 245.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 42.5, 268.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 42.5, 268.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 37.8, 294 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 37.8, 294 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 37.8, 316.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 37.8, 316.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 42.5, 337.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 42.5, 337.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 42.5, 360.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 42.5, 360.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 35.4, 381 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 35.4, 381 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 35.4, 403.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 35.4, 403.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 43.7, 426.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 43.7, 426.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 43.7, 449 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 43.7, 449 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 45.2, 466.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 45.2, 466.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 45.2, 489.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 45.2, 489.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 43.7, 517.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 43.7, 517.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 43.7, 540.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 43.7, 540.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 35.4, 564.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 35.4, 564.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 35.4, 587.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 35.4, 587.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 42.5, 612.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 42.5, 612.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 42.5, 635.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 42.5, 635.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 45.2, 649.9 + OFFSET_Y , 0 );

setScaleKey( spep_2 + 1 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.15, 3.15 );

setRotateKey( spep_2 + 1 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -44.4 );

--敵の動き２
setDisp( spep_2 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 378 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 314 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -343.1, -34.9 + OFFSET_Y , 0 );

setScaleKey( spep_2 + 314 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 5, 5 );

setRotateKey( spep_2 + 314 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -37.9 );



-- ** 音 ** --
--髪でつかむ
SE014 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE014, 132 );
SE015 = playSeVer2( spep_2 + 6, 1330, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 6, 1153, "",spep_2 + 30, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 6, SE016, 65 );
SE017 = playSeVer2( spep_2 + 10, 1229, "", 0, 0, 0, -1);

--カメラパン
SE018 = playSeVer2( spep_2 + 64, 8, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 64, SE018, 68 );
setTimeStretch( SE018, 1.23, 30, 4 );
SE019 = playSeVer2( spep_2 + 86, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE019, 68 );
SE020 = playSeVer2( spep_2 + 108, 1331, "", 0, 0, 0, -1);

--鎌出現
SE021 = playSeVer2( spep_2 + 178, 1273, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 178, 1224, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE022, 46 );
SE023 = playSeVer2( spep_2 + 192, 1274, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 192, SE023, 110 );
SE024 = playSeVer2( spep_2 + 192, 1275, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 192, SE024, 138 );

--髪でしめつける
SE025 = playSeVer2( spep_2 + 314, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE025, 56 );

--鎌で切る
SE026 = playSeVer2( spep_2 + 376, 1172, "",spep_2 + 452, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 376, SE026, 83 );
SE027 = playSeVer2( spep_2 + 376, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 376, SE027, 77 );
SE028 = playSeVer2( spep_2 + 382, 1142, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 382, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE029, 293 );
setPitch( spep_2 + 382, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );
SE030 = playSeVer2( spep_2 + 386, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 386, SE030, 63 );
SE031 = playSeVer2( spep_2 + 392, 1238, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 392, SE031, 74 );
SE032 = playSeVer2( spep_2 + 406, 1134, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 406, SE032, 68 );

--環境音
SE033 = playSeVer2( spep_2 + 422, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE033, 61 );
SE034 = playSeVer2( spep_2 + 422, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE034, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 438 );
endPhase( spep_2 +  MAX_FRAME_2 - 2); --548

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;


------------------------------------------------------
-- 登場から振り向き髪を振り乱す ef_001 (510F)
------------------------------------------------------
MAX_FRAME_0 = 510;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );--反転対応
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );--反転対応
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 426;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
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
shuchusen = entryEffectLife( spep_0 + 465, 906, MAX_FRAME_0 - 465, 0x100, -1, 0, 0, 0 );  -- 集中線
setEffShake( spep_0 + 465, shuchusen, 42, 20 );
setEffMoveKey( spep_0 + 465, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 465, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_0 + 465, shuchusen, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen, 0 );
setEffAlphaKey( spep_0 + 465, shuchusen, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen, 255 );

-- ** 音 ** --
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

---環境音
SE001 = playSeVer2( spep_0 + 0, 1308, "",spep_0 + 534, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--歩く音
SE002 = playSeVer2( spep_0 + 28, 1106, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 84, 1106, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 140, 1106, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える
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
-- ** 音 ** --

--不穏
SE005 = playSeVer2( spep_0 + 182, 1271, "",spep_0 + 354, 0, 74, 0.8);
setSeVolumeByWorkId( spep_0 + 182, SE005, 71 );
SE006 = playSeVer2( spep_0 + 182, 1319, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 182, SE006, 54 );

--振り返り変身
SE007 = playSeVer2( spep_0 + 332, 1374, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE007, 49 );
setStartTimeMs( SE007,  967 );
SE008 = playSeVer2( spep_0 + 322, 1275, "", spep_0 + 444, 0, 52, 0.6);
setSeVolumeByWorkId( spep_0 + 322, SE008, 80 );
SE009 = playSeVer2( spep_0 + 338, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE009, 83 );
SE010 = playSeVer2( spep_0 + 338, 1241, "",spep_0 + 444, 0, 52, -1);

--集中線
SE012 = playSeVer2( spep_0 + 466, 20, "",spep_0 + 534, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 510



--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 敵を髪で縛り上げ鎌で斬撃 ef_002 (548F)
------------------------------------------------------
MAX_FRAME_2 = 548;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );--反転対応
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );--反転対応
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );--反転対応
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );--反転対応
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 敵キャラクター ** --
OFFSET_Y = 90;--小さいキャラに合わせた位置調整

--敵の動き１
setDisp( spep_2 + 1 + OFFSET_X,1, 1 );
setDisp( spep_2 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 1 + OFFSET_X, 1, -37.9, -120 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -37.8, -112.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -37.8, -112.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -42.5, -107.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -42.5, -107.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -42.5, -99.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -42.5, -99.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -35.4, -94.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -35.4, -94.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -35.4, -86.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -35.4, -86.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -43.7, -79.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -43.7, -79.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -43.7, -72.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -43.7, -72.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -45.2, -70.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -45.2, -70.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -45.2, -62.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -45.2, -62.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -43.7, -52.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -43.7, -52.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -43.7, -47.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -43.7, -47.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -35.4, -41.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -35.4, -41.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 26+ OFFSET_X, 1, -35.4, -36.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -35.4, -36.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -45.2, -38.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -43.7, -32.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -35.4, -31.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -37.8, -27.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -42.5, -29.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -42.5, -6.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -42.5, -6.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -35.4, 14.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -35.4, 14.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -35.4, 37 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -35.4, 37 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -43.7, 59.2  + OFFSET_Y , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -43.7, 59.2  + OFFSET_Y , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -43.7, 82.1  + OFFSET_Y , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -43.7, 82.1  + OFFSET_Y , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -45.2, 99.5  + OFFSET_Y , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -45.2, 99.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -45.2, 122.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -45.2, 122.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -43.7, 150.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -43.7, 150.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -43.7, 173.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -43.7, 173.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -35.4, 197.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -35.4, 197.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -35.4, 220.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -35.4, 220.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -42.5, 245.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -42.5, 245.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -42.5, 268.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -42.5, 268.6 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -37.8, 294 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -37.8, 294 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -37.8, 316.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -37.8, 316.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -42.5, 337.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -42.5, 337.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -42.5, 360.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -42.5, 360.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -35.4, 381 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -35.4, 381 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -35.4, 403.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -35.4, 403.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -43.7, 426.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -43.7, 426.1 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -43.7, 449 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -43.7, 449 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -45.2, 466.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -45.2, 466.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -45.2, 489.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -45.2, 489.3 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -43.7, 517.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -43.7, 517.8 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -43.7, 540.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -43.7, 540.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -35.4, 564.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -35.4, 564.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -35.4, 587.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -35.4, 587.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -42.5, 612.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -42.5, 612.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -42.5, 635.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -42.5, 635.5 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -37.8, 660.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -42.5, 658.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -35.4, 656.2 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -43.7, 655.4 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -45.2, 649.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -45.2, 649.9 + OFFSET_Y , 0 );

setScaleKey( spep_2 + 1 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.15, 3.15 );

setRotateKey( spep_2 + 1 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 44.4 );

--敵の動き２
setDisp( spep_2 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 378 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 314 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 356.9, -27.7 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 343.1, -34.9 + OFFSET_Y , 0 );

setScaleKey( spep_2 + 314 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 5, 5 );

setRotateKey( spep_2 + 314 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 37.9 );

-- ** 音 ** --
--髪でつかむ
SE014 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE014, 132 );
SE015 = playSeVer2( spep_2 + 6, 1330, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 6, 1153, "",spep_2 + 30, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 6, SE016, 65 );
SE017 = playSeVer2( spep_2 + 10, 1229, "", 0, 0, 0, -1);

--カメラパン
SE018 = playSeVer2( spep_2 + 64, 8, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 64, SE018, 68 );
setTimeStretch( SE018, 1.23, 30, 4 );
SE019 = playSeVer2( spep_2 + 86, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE019, 68 );
SE020 = playSeVer2( spep_2 + 108, 1331, "", 0, 0, 0, -1);

--鎌出現
SE021 = playSeVer2( spep_2 + 178, 1273, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 178, 1224, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE022, 46 );
SE023 = playSeVer2( spep_2 + 192, 1274, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 192, SE023, 110 );
SE024 = playSeVer2( spep_2 + 192, 1275, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 192, SE024, 138 );

--髪でしめつける
SE025 = playSeVer2( spep_2 + 314, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE025, 56 );

--鎌で切る
SE026 = playSeVer2( spep_2 + 376, 1172, "",spep_2 + 452, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 376, SE026, 83 );
SE027 = playSeVer2( spep_2 + 376, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 376, SE027, 77 );
SE028 = playSeVer2( spep_2 + 382, 1142, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 382, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE029, 293 );
setPitch( spep_2 + 382, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );
SE030 = playSeVer2( spep_2 + 386, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 386, SE030, 63 );
SE031 = playSeVer2( spep_2 + 392, 1238, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 392, SE031, 74 );
SE032 = playSeVer2( spep_2 + 406, 1134, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 406, SE032, 68 );

--環境音
SE033 = playSeVer2( spep_2 + 422, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE033, 61 );
SE034 = playSeVer2( spep_2 + 422, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE034, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 438 );
endPhase( spep_2 +  MAX_FRAME_2 - 2); --548

end
