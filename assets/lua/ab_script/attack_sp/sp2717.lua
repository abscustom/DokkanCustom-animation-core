-- 1028960: LR_セルマックス_超必殺技：マキシマムディザスター
-- sp_effect_a7_00068
-- sp2717

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(味方)
SP_01  = 162959;  --セリフカットイン	ef_001
SP_02  = 162961;  --ビーム発射からフィニッシュまで	ef_002
SP_03  = 162964;  --全体攻撃	ef_003
 
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
--「1体目（初回時）の演出」で冒頭に敵表示なし、
--「2体目以降の演出」では冒頭に敵が表示されている場合は
--こちらの敵側の動きはコメントアウトする
 
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
]]--
 
ENABLE_AUTO_TIME_STRETCH(0.78);
 
OFFSET_X = -1;
 
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
 
--テンプレ構文(敵の初期化)
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
 
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
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;

 
-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 118;

setupMovie(0, SP_01, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--入り咆哮
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1321, "",spep_0 + 138, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 138, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 75 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0-2; --118

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
 
spep_2 = showCardCutin(spep_1, 0)+2;

entryFade( spep_1 + 92, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade

-- ** 音 ** --
--尻尾振る
SE006 = playSeVer2( spep_1 + 92, 1190, "", 0, 14, 0, -1);
setStartTimeMs( SE006,  33 );
SE007 = playSeVer2( spep_1 + 94, 1173, "",spep_2 + 74, 0, 36, -1);
 
-------------------------------------------------
-- ビーム発射からフィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 604;
  
-- ** エフェクト等 ** --
base_f2 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム発射からフィニッシュまで	ef_002
setEffMoveKey( spep_2 + 0, base_f2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_f2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_f2, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_f2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_f2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_f2, 0);
setEffAlphaKey( spep_2 + 0, base_f2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_f2, 255);
 
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 496 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 568 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 496 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 548 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 556 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 496 + OFFSET_X, 1, 114.7, -238 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 114.7, -238 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 114.7, -251 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 114.7, -251 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 101.7, -238 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 101.7, -238 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 125.1, -247.1 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 125.1, -247.1 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 121.2, -232.8 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 121.2, -232.8 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 114.7, -247.1 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 114.7, -247.1 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 114.7, -234.1 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 114.7, -234.1 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 118.6, -247.1 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 118.6, -247.1 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 110.8, -247.1 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 110.8, -247.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 110.8, -235.4 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 110.8, -235.4 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 122.5, -239.3 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 122.5, -239.3 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 121.2, -248.4 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 121.2, -248.4 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 117.3, -235.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 117.3, -235.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 112.1, -247.1 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 112.1, -247.1 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 52, -174.4 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 52, -174.4 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 44.5, -159.8 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 44.5, -159.8 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 12.5, -168.4 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 12.5, -168.4 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -129.4, -137.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -129.4, -137.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 116.2, -163.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 116.2, -163.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 140.1, -174.9 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 140.1, -174.9 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 197.2, -156.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 197.2, -156.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 332.9, -150.4 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 332.9, -150.4 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 531.3, -126.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 531.3, -126.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 646, -134.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 646, -134.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 686.3, -119.2 , 0 );

setScaleKey( spep_2 + 496 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 496 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -70.5 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -70.5 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, 16.3 );

setBlendColor( spep_2 + 540 + OFFSET_X, 1, 3, 1, 1, 1, 0.2 );
setBlendColor( spep_2 + 542 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_2 + 548 + OFFSET_X, 1, 3, 1, 0.7, 1, 0.6 );
setBlendColor( spep_2 + 568 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--尻尾からビーム放つ
SE008 = playSeVer2( spep_2 + 36, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 42, SE008, 100 );
setTimeStretch( SE008, 1.07, 30, 4 );

SE009 = playSeVer2( spep_2 + 38, 1423, "",spep_2 + 124, 0, 24, -1);
SE010 = playSeVer2( spep_2 + 38, 1306, "",spep_2 + 126, 0, 24, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );
 
do return end
else end
 
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 音 ** --
--指からビーム放つ
SE011 = playSeVer2( spep_2 + 88, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 94, SE011, 100 );
setTimeStretch( SE011, 1.07, 30, 4 );
SE012 = playSeVer2( spep_2 + 90, 1423, "",spep_2 + 190, 0, 22, -1);
SE013 = playSeVer2( spep_2 + 90, 1306, "",spep_2 + 190, 0, 20, -1);
--身体からビーム放つ
SE014 = playSeVer2( spep_2 + 160, 1423, "",spep_2 + 336, 0, 26, -1);
SE015 = playSeVer2( spep_2 + 160, 1306, "",spep_2 + 334, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 160, SE015, 83 );
SE016 = playSeVer2( spep_2 + 160, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 160, SE016, 100 );
setTimeStretch( SE016, 1.07, 30, 4 );
SE017 = playSeVer2( spep_2 + 160, 1371, "",spep_2 + 332, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 160, SE017, 74 );
SE018 = playSeVer2( spep_2 + 160, 1213, "",spep_2 + 350, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 160, SE018, 58 );
--全体広がる
SE019 = playSeVer2( spep_2 + 210, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE019, 71 );
--ビーム分散する
SE020 = playSeVer2( spep_2 + 300, 1446, "",spep_2 + 630, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 300, SE020, 172 );
SE021 = playSeVer2( spep_2 + 300, 1409, "",spep_2 + 630, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 300, SE021, 158 );
SE022 = playSeVer2( spep_2 + 300, 1406, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 434, 1406, "", 0, 0, 0, -1);
--連続爆発
SE024 = playSeVer2( spep_2 + 504, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 532, 1159, "",spep_2 + 630, 0, 32, -1);
SE026 = playSeVer2( spep_2 + 538, 1024, "",spep_2 + 630, 0, 28, -1);
SE027 = playSeVer2( spep_2 + 570, 1067, "",spep_2 + 630, 0, 28, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 520 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 604 

else
 
------------------------------------------------------
-- 敵側
------------------------------------------------------
 
 
spep_0 = 0;
 
 
-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 118;

setupMovie(0, SP_01, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--入り咆哮
E001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1321, "",spep_0 + 138, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 138, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 75 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0-2; --118
 
--------------------------------------
-- カードカットイン(94F)
--------------------------------------
 
spep_2 = showCardCutin(spep_1, 0)+2;

entryFade( spep_1 + 92, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade

-- ** 音 ** --
--尻尾振る
SE006 = playSeVer2( spep_1 + 92, 1190, "", 0, 14, 0, -1);
setStartTimeMs( SE006,  33 );
SE007 = playSeVer2( spep_1 + 94, 1173, "",spep_2 + 74, 0, 36, -1);
 
-------------------------------------------------
-- ビーム発射からフィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 604;
  
-- ** エフェクト等 ** --
base_f2 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム発射からフィニッシュまで	ef_002
setEffMoveKey( spep_2 + 0, base_f2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_f2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_f2, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_f2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_f2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_f2, 0);
setEffAlphaKey( spep_2 + 0, base_f2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_f2, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 496 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 568 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 496 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 548 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 556 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 496 + OFFSET_X, 1, -114.7, -238 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -114.7, -238 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -114.7, -251 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -114.7, -251 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -101.7, -238 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -101.7, -238 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -125.1, -247.1 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -125.1, -247.1 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -121.2, -232.8 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -121.2, -232.8 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -114.7, -247.1 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -114.7, -247.1 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -114.7, -234.1 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -114.7, -234.1 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -118.6, -247.1 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -118.6, -247.1 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -110.8, -247.1 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -110.8, -247.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -110.8, -235.4 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -110.8, -235.4 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -122.5, -239.3 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -122.5, -239.3 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -121.2, -248.4 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -121.2, -248.4 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -117.3, -235.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -117.3, -235.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -112.1, -247.1 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -112.1, -247.1 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -52, -174.4 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -52, -174.4 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -44.5, -159.8 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -44.5, -159.8 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -12.5, -168.4 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -12.5, -168.4 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 129.4, -137.9 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 129.4, -137.9 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -116.2, -163.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -116.2, -163.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -140.1, -174.9 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -140.1, -174.9 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -197.2, -156.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -197.2, -156.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -332.9, -150.4 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -332.9, -150.4 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -531.3, -126.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -531.3, -126.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -646, -134.4 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -646, -134.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -686.3, -119.2 , 0 );

setScaleKey( spep_2 + 496 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 561 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 568 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 496 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, 67.3 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, 67.3 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -16.3 );

setBlendColor( spep_2 + 540 + OFFSET_X, 1, 3, 1, 1, 1, 0.2 );
setBlendColor( spep_2 + 542 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_2 + 548 + OFFSET_X, 1, 3, 1, 0.7, 1, 0.6 );
setBlendColor( spep_2 + 568 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--尻尾からビーム放つ
SE008 = playSeVer2( spep_2 + 36, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 42, SE008, 100 );
setTimeStretch( SE008, 1.07, 30, 4 );

SE009 = playSeVer2( spep_2 + 38, 1423, "",spep_2 + 124, 0, 24, -1);
SE010 = playSeVer2( spep_2 + 38, 1306, "",spep_2 + 126, 0, 24, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示
 
    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );
 
do return end
else end
 
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 音 ** --
--指からビーム放つ	
SE011 = playSeVer2( spep_2 + 88, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 94, SE011, 100 );
setTimeStretch( SE011, 1.07, 30, 4 );
SE012 = playSeVer2( spep_2 + 90, 1423, "",spep_2 + 190, 0, 22, -1);
SE013 = playSeVer2( spep_2 + 90, 1306, "",spep_2 + 190, 0, 20, -1);
--身体からビーム放つ
SE014 = playSeVer2( spep_2 + 160, 1423, "",spep_2 + 336, 0, 26, -1);
SE015 = playSeVer2( spep_2 + 160, 1306, "",spep_2 + 334, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 160, SE015, 83 );
SE016 = playSeVer2( spep_2 + 160, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 160, SE016, 100 );
setTimeStretch( SE016, 1.07, 30, 4 );
SE017 = playSeVer2( spep_2 + 160, 1371, "",spep_2 + 332, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 160, SE017, 74 );
SE018 = playSeVer2( spep_2 + 160, 1213, "",spep_2 + 350, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 160, SE018, 58 );
--全体広がる
SE019 = playSeVer2( spep_2 + 210, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE019, 71 );
--ビーム分散する
SE020 = playSeVer2( spep_2 + 300, 1446, "",spep_2 + 630, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 300, SE020, 172 );
SE021 = playSeVer2( spep_2 + 300, 1409, "",spep_2 + 630, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 300, SE021, 158 );
SE022 = playSeVer2( spep_2 + 300, 1406, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 434, 1406, "", 0, 0, 0, -1);
--連続爆発
SE024 = playSeVer2( spep_2 + 504, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 532, 1159, "",spep_2 + 630, 0, 32, -1);
SE026 = playSeVer2( spep_2 + 538, 1024, "",spep_2 + 630, 0, 28, -1);
SE027 = playSeVer2( spep_2 + 570, 1067, "",spep_2 + 630, 0, 28, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 520 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 604 

end
end
 
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------
 
if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
 
spep_z = 0;
 
setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
 
------------------------------------------------------
-- 回避　　2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
 
    if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);
 
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
 
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
 
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
 
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
 
MAX_FRAME_Z = 80;

setupMovie(0, SP_01, 820-2, 1)

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃	ef_003
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);
 
-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 118 );
changeAnime( spep_z + 30 + OFFSET_X, 1, 108 );

setMoveKey( spep_z + 0, 1, 23.9, -259.1 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 21.4, -253.5 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 21.4, -253.5 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 22, -250.4 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 22, -250.4 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 17.2, -261.7 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 17.2, -261.7 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 27.2, -258.6 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 27.2, -258.6 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 16.9, -258.9 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, 16.9, -258.9 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 26.9, -259.7 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 26.9, -259.7 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 17.1, -267.1 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 17.1, -267.1 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 26.5, -261.9 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 26.5, -261.9 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 17.3, -268.8 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 17.3, -268.8 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 21.2, -260.2 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 21.2, -260.2 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 24.7, -268.7 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 24.7, -268.7 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 22.6, -261.9 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 22.6, -261.9 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 25.3, -270.1 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 25.3, -270.1 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 22, -261.3 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 22, -261.3 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 74.6, -221.7 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 74.6, -221.7 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 134.4, -201.9 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 134.4, -201.9 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 210.9, -202.2 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 210.9, -202.2 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 273.2, -180.9 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 273.2, -180.9 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 320.3, -180.9 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 320.3, -180.9 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 373.9, -165.5 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 373.9, -165.5 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 413.5, -167.8 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 413.5, -167.8 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 453.1, -151.5 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 453.1, -151.5 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 475, -150.8 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 475, -150.8 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 504.5, -152.9 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 504.5, -152.9 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 510.9, -145.1 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 510.9, -145.1 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 526.2, -148.7 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 526.2, -148.7 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 521.7, -143.8 , 0 );
setMoveKey( spep_z + 79 + OFFSET_X, 1, 521.7, -143.8 , 0 );
setMoveKey( spep_z + 80 + OFFSET_X, 1, 23.9, -259.1 , 0 );

setScaleKey( spep_z + 0, 1, 1.6, 1.6 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_z + 8 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_z + 9 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_z + 10 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_z + 11 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_z + 12 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_z + 13 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_z + 14 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_z + 15 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_z + 16 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_z + 17 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_z + 18 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_z + 19 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_z + 21 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_z + 22 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_z + 23 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_z + 24 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_z + 79 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_z + 80 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 31 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 32 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_z + 33 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_z + 34 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_z + 35 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_z + 36 + OFFSET_X, 1, 7 );
setRotateKey( spep_z + 37 + OFFSET_X, 1, 7 );
setRotateKey( spep_z + 38 + OFFSET_X, 1, 9 );
setRotateKey( spep_z + 39 + OFFSET_X, 1, 9 );
setRotateKey( spep_z + 40 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_z + 41 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_z + 42 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_z + 43 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_z + 44 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_z + 45 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_z + 46 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_z + 47 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_z + 48 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_z + 49 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_z + 50 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_z + 51 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_z + 52 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_z + 53 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_z + 54 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_z + 79 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_z + 80 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--【全体】ビーム放たれる
SE028 = playSeVer2( spep_z + 0, 1446, "",spep_z + 90, 0, 38, -1);
setSeVolumeByWorkId( spep_z + 0, SE028, 172 );
SE029 = playSeVer2( spep_z + 0, 1409, "",spep_z + 90, 0, 32, -1);
setSeVolumeByWorkId( spep_z + 0, SE029, 158 );
SE030 = playSeVer2( spep_z + 0, 1406, "",spep_z + 90, 0, 36, -1);
--【全体】爆発
SE031 = playSeVer2( spep_z + 40, 1159, "",spep_z + 90, 0, 22, -1);
SE032 = playSeVer2( spep_z + 46, 1024, "",spep_z + 90, 0, 18, -1);
 
-- ** ダメージ表示 ** --
dealDamage( spep_z + 10 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 80

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
 
spep_z = 0;
 
setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
 
------------------------------------------------------
-- 回避　　2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
 
    if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える
 
    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);
 
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
 
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
 
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
 
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
 
MAX_FRAME_Z = 80;

setupMovie(0, SP_01, 820-2, 1)
 
-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃	ef_003
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 118 );
changeAnime( spep_z + 30 + OFFSET_X, 1, 108 );

setMoveKey( spep_z + 0, 1, 23.9, -259.1 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 21.4, -253.5 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 21.4, -253.5 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 22, -250.4 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 22, -250.4 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 17.2, -261.7 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 17.2, -261.7 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 27.2, -258.6 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 27.2, -258.6 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 16.9, -258.9 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, 16.9, -258.9 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 26.9, -259.7 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 26.9, -259.7 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 17.1, -267.1 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 17.1, -267.1 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 26.5, -261.9 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 26.5, -261.9 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 17.3, -268.8 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 17.3, -268.8 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 21.2, -260.2 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 21.2, -260.2 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 24.7, -268.7 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 24.7, -268.7 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 22.6, -261.9 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 22.6, -261.9 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 25.3, -270.1 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 25.3, -270.1 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 22, -261.3 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 22, -261.3 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 74.6, -221.7 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 74.6, -221.7 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 134.4, -201.9 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 134.4, -201.9 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 210.9, -202.2 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 210.9, -202.2 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 273.2, -180.9 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 273.2, -180.9 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 320.3, -180.9 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 320.3, -180.9 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 373.9, -165.5 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 373.9, -165.5 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 413.5, -167.8 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 413.5, -167.8 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 453.1, -151.5 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 453.1, -151.5 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 475, -150.8 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 475, -150.8 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 504.5, -152.9 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 504.5, -152.9 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 510.9, -145.1 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 510.9, -145.1 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 526.2, -148.7 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 526.2, -148.7 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 521.7, -143.8 , 0 );
setMoveKey( spep_z + 79 + OFFSET_X, 1, 521.7, -143.8 , 0 );
setMoveKey( spep_z + 80 + OFFSET_X, 1, 23.9, -259.1 , 0 );

setScaleKey( spep_z + 0, 1, 1.6, 1.6 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_z + 8 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_z + 9 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_z + 10 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_z + 11 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_z + 12 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_z + 13 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_z + 14 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_z + 15 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_z + 16 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_z + 17 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_z + 18 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_z + 19 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_z + 21 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_z + 22 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_z + 23 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_z + 24 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_z + 79 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_z + 80 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 31 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 32 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_z + 33 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_z + 34 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_z + 35 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_z + 36 + OFFSET_X, 1, 7 );
setRotateKey( spep_z + 37 + OFFSET_X, 1, 7 );
setRotateKey( spep_z + 38 + OFFSET_X, 1, 9 );
setRotateKey( spep_z + 39 + OFFSET_X, 1, 9 );
setRotateKey( spep_z + 40 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_z + 41 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_z + 42 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_z + 43 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_z + 44 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_z + 45 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_z + 46 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_z + 47 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_z + 48 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_z + 49 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_z + 50 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_z + 51 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_z + 52 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_z + 53 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_z + 54 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_z + 79 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_z + 80 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--【全体】ビーム放たれる
SE028 = playSeVer2( spep_z + 0, 1446, "",spep_z + 90, 0, 38, -1);
setSeVolumeByWorkId( spep_z + 0, SE028, 172 );
SE029 = playSeVer2( spep_z + 0, 1409, "",spep_z + 90, 0, 32, -1);
setSeVolumeByWorkId( spep_z + 0, SE029, 158 );
SE030 = playSeVer2( spep_z + 0, 1406, "",spep_z + 90, 0, 36, -1);
--【全体】爆発
SE031 = playSeVer2( spep_z + 40, 1159, "",spep_z + 90, 0, 22, -1);
SE032 = playSeVer2( spep_z + 46, 1024, "",spep_z + 90, 0, 18, -1);
 
-- ** ダメージ表示 ** --
dealDamage( spep_z + 10 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 80

end
end