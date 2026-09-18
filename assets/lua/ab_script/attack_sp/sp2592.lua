-- 4027230: LR_無限ザマス_超必殺技　ザマスの正義と秩序
-- sp_effect_a3_00103
-- sp2592

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_02 = 162160;  -- ビーム〜引きの爆発〜手前ビーム〜爆発 ef_002
SP_04 = 162163;  -- 全体攻撃　手前爆発 ef_004

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

--------------------------

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 地球を覆うザマス ef_001 (298F)
------------------------------------------------------
MAX_FRAME_0 = 298;

setupMovie(0, SP_02, 0, 0);

-- ** エフェクト等 ** --
spep_x = spep_0 + 180;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 音 ** --
--地球飲まれる
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 334, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 336, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE003 = playSeVer2( spep_0 + 10, 1214, "",spep_0 + 330, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 162 );
setPitch( spep_0 + 10, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 10, 1398, "",spep_0 + 332, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 10, SE004, 146 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

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
--顔現れる
SE005 = playSeVer2( spep_0 + 156, 1264, "",spep_0 + 332, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 156, SE005, 82 );
setPitch( spep_0 + 156, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 156, 1265, "",spep_0 + 330, 0, 24, -1);
SE007 = playSeVer2( spep_0 + 164, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE007, 71 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 7, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 289, 9, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 298

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0)+2;
entryFade(spep_1+90, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- ビーム〜引きの爆発〜手前ビーム〜爆発 ef_002 (638F)
------------------------------------------------------
MAX_FRAME_2 = 638;

-- ** エフェクト等 ** --
entry_SP_02 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02, 255 );

-- ** 敵キャラクター ** --
setDisp(spep_2 + 410 + OFFSET_X, 1, 1);
setDisp(spep_2 + 439 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 410 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 432 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 410 + OFFSET_X, 1, 0, 1.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 0, 1.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 0, 0.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 0, 0.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 0, 0.6 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 0, 0.6 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 0, 2.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 0, 2.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 0, -0.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 0, -0.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 0, 3.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 0, 3.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 0, -0.5 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 0, -0.5 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 0, 4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 0, 4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 0, -1.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 0, -1.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 7.9, -58.1 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 7.9, -58.1 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 45.9, -120.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 45.9, -120.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 95.6, -145.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 95.6, -145.6 , 0 );

setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_2 + 410 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 52.9 );

setBlendColor( spep_2 + 410 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.3);
setBlendColor( spep_2 + 438 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.3);
setBlendColor( spep_2 + 439 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--顔光る
SE011 = playSeVer2( spep_2 + 16, 1255, "",spep_2 + 98, 14, 18, -1);
setSeVolumeByWorkId( spep_2 + 16, SE011, 63 );
setStartTimeMs( SE011,  500 );
setPitch( spep_2 + 16, SE011, -900 );
setTimeStretch( SE011, 0.4, 30, 4 );
SE012 = playSeVer2( spep_2 + 16, 1240, "",spep_2 + 98, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 117 );
setPitch( spep_2 + 16, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );
SE013 = playSeVer2( spep_2 + 16, 1391, "",spep_2 + 88, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 16, SE013, 85 );

--発射前溜め
SE010 = playSeVer2( spep_2 + 42, 1374, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE010, 71 );
setStartTimeMs( SE010,  1100 );
SE014 = playSeVer2( spep_2 + 46, 1274, "",spep_2 + 98, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 46, SE014, 86 );

--気弾発射１
SE015 = playSeVer2( spep_2 + 80, 1423, "",spep_2 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 80, SE015, 138 );
SE016 = playSeVer2( spep_2 + 80, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE016, 136 );
SE017 = playSeVer2( spep_2 + 80, 1027, "", 0, 0, 0, -1);

--気弾発射２
SE018 = playSeVer2( spep_2 + 166, 1423, "",spep_2 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 166, SE018, 129 );
SE019 = playSeVer2( spep_2 + 166, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE019, 130 );
SE020 = playSeVer2( spep_2 + 166, 1027, "", 0, 0, 0, -1);

--気弾発射３
SE021 = playSeVer2( spep_2 + 240, 1423, "",spep_2 + 408, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 240, SE021, 129 );
SE022 = playSeVer2( spep_2 + 240, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE022, 130 );
SE023 = playSeVer2( spep_2 + 240, 1027, "", 0, 0, 0, -1);

--連続爆発
SE024 = playSeVer2( spep_2 + 310, 1024, "", 0, 0, 0, -1);

--連続気弾発射
SE025 = playSeVer2( spep_2 + 320, 1423, "",spep_2 + 408, 0, 42, -1);

--連続爆発
SE026 = playSeVer2( spep_2 + 340, 1014, "", 0, 0, 0, -1);

--連続気弾発射
SE027 = playSeVer2( spep_2 + 354, 1423, "",spep_2 + 454, 0, 36, -1);

--連続爆発
SE028 = playSeVer2( spep_2 + 374, 1011, "", 0, 0, 0, -1);

--画面遷移
SE029 = playSeVer2( spep_2 + 400, 8, "", 0, 0, 0, -1);

--大気弾発射
SE030 = playSeVer2( spep_2 + 424, 1213, "", 1042 , 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 424, SE030, 72 );
SE031 = playSeVer2( spep_2 + 424, 1423, "", 1046 , 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 424, SE031, 140 );
SE032 = playSeVer2( spep_2 + 424, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE032, 129 );

--気弾ヒット
SE033 = playSeVer2( spep_2 + 436, 1021, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 436, 1023, "", 0, 0, 0, -1);

--連続気弾発射
SE035 = playSeVer2( spep_2 + 486, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE035, 135 );

--爆発
SE036 = playSeVer2( spep_2 + 504, 1159, "", 0, 0, 0, -1);

--連続気弾発射
SE037 = playSeVer2( spep_2 + 526, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 526, SE037, 151 );

--爆発
SE038 = playSeVer2( spep_2 + 522, 1068, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 522, 1044, "", 1032 , 0, 20, -1);
SE040 = playSeVer2( spep_2 + 544, 1188, "", 0, 0, 0, -1);

--連続気弾発射
SE041 = playSeVer2( spep_2 + 560, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE041, 132 );

--爆発
SE042 = playSeVer2( spep_2 + 556, 1067, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 273, 15, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 401, 7, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 471, 7, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 500);
pauseMovie( spep_2 +  MAX_FRAME_2 -4, 1 );   -- 一時停止
endPhase( spep_2 +  MAX_FRAME_2 -2);  -- 638

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 地球を覆うザマス ef_001 (298F)
------------------------------------------------------
MAX_FRAME_0 = 298;

setupMovie(0, SP_02, 0, 0);

-- ** エフェクト等 ** --
spep_x = spep_0 + 180;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 音 ** --
--地球飲まれる
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 334, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 336, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE003 = playSeVer2( spep_0 + 10, 1214, "",spep_0 + 330, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 162 );
setPitch( spep_0 + 10, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 10, 1398, "",spep_0 + 332, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 10, SE004, 146 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

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
--顔現れる
SE005 = playSeVer2( spep_0 + 156, 1264, "",spep_0 + 332, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 156, SE005, 82 );
setPitch( spep_0 + 156, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 156, 1265, "",spep_0 + 330, 0, 24, -1);
SE007 = playSeVer2( spep_0 + 164, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE007, 71 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 7, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 289, 9, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 298

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0)+2;
entryFade(spep_1+90, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- ビーム〜引きの爆発〜手前ビーム〜爆発 ef_002 (638F)
------------------------------------------------------
MAX_FRAME_2 = 638;

-- ** エフェクト等 ** --
entry_SP_02 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02, 255 );

-- ** 敵キャラクター ** --
setDisp(spep_2 + 410 + OFFSET_X, 1, 1);
setDisp(spep_2 + 439 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 410 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 432 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 410 + OFFSET_X, 1, 0, 1.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 0, 1.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 0, 0.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 0, 0.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 0, 2.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 0, 0.6 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 0, 0.6 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 0, 2.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 0, 2.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 0, -0.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 0, -0.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 0, 3.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 0, 3.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 0, -0.5 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 0, -0.5 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 0, 4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 0, 4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 0, -1.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 0, -1.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -7.9, -58.1 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -7.9, -58.1 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -45.9, -120.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -45.9, -120.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -95.6, -145.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -95.6, -145.6 , 0 );

setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_2 + 410 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -52.9 );

setBlendColor( spep_2 + 410 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.3);
setBlendColor( spep_2 + 438 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.3);
setBlendColor( spep_2 + 439 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--顔光る
SE011 = playSeVer2( spep_2 + 16, 1255, "",spep_2 + 98, 14, 18, -1);
setSeVolumeByWorkId( spep_2 + 16, SE011, 63 );
setStartTimeMs( SE011,  500 );
setPitch( spep_2 + 16, SE011, -900 );
setTimeStretch( SE011, 0.4, 30, 4 );
SE012 = playSeVer2( spep_2 + 16, 1240, "",spep_2 + 98, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 117 );
setPitch( spep_2 + 16, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );
SE013 = playSeVer2( spep_2 + 16, 1391, "",spep_2 + 88, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 16, SE013, 85 );

--発射前溜め
SE010 = playSeVer2( spep_2 + 42, 1374, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE010, 71 );
setStartTimeMs( SE010,  1100 );
SE014 = playSeVer2( spep_2 + 46, 1274, "",spep_2 + 98, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 46, SE014, 86 );

--気弾発射１
SE015 = playSeVer2( spep_2 + 80, 1423, "",spep_2 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 80, SE015, 138 );
SE016 = playSeVer2( spep_2 + 80, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE016, 136 );
SE017 = playSeVer2( spep_2 + 80, 1027, "", 0, 0, 0, -1);

--気弾発射２
SE018 = playSeVer2( spep_2 + 166, 1423, "",spep_2 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 166, SE018, 129 );
SE019 = playSeVer2( spep_2 + 166, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE019, 130 );
SE020 = playSeVer2( spep_2 + 166, 1027, "", 0, 0, 0, -1);

--気弾発射３
SE021 = playSeVer2( spep_2 + 240, 1423, "",spep_2 + 408, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 240, SE021, 129 );
SE022 = playSeVer2( spep_2 + 240, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE022, 130 );
SE023 = playSeVer2( spep_2 + 240, 1027, "", 0, 0, 0, -1);

--連続爆発
SE024 = playSeVer2( spep_2 + 310, 1024, "", 0, 0, 0, -1);

--連続気弾発射
SE025 = playSeVer2( spep_2 + 320, 1423, "",spep_2 + 408, 0, 42, -1);

--連続爆発
SE026 = playSeVer2( spep_2 + 340, 1014, "", 0, 0, 0, -1);

--連続気弾発射
SE027 = playSeVer2( spep_2 + 354, 1423, "",spep_2 + 454, 0, 36, -1);

--連続爆発
SE028 = playSeVer2( spep_2 + 374, 1011, "", 0, 0, 0, -1);

--画面遷移
SE029 = playSeVer2( spep_2 + 400, 8, "", 0, 0, 0, -1);

--大気弾発射
SE030 = playSeVer2( spep_2 + 424, 1213, "", 1042 , 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 424, SE030, 72 );
SE031 = playSeVer2( spep_2 + 424, 1423, "", 1046 , 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 424, SE031, 140 );
SE032 = playSeVer2( spep_2 + 424, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE032, 129 );

--気弾ヒット
SE033 = playSeVer2( spep_2 + 436, 1021, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 436, 1023, "", 0, 0, 0, -1);

--連続気弾発射
SE035 = playSeVer2( spep_2 + 486, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE035, 135 );

--爆発
SE036 = playSeVer2( spep_2 + 504, 1159, "", 0, 0, 0, -1);

--連続気弾発射
SE037 = playSeVer2( spep_2 + 526, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 526, SE037, 151 );

--爆発
SE038 = playSeVer2( spep_2 + 522, 1068, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 522, 1044, "", 1032 , 0, 20, -1);
SE040 = playSeVer2( spep_2 + 544, 1188, "", 0, 0, 0, -1);

--連続気弾発射
SE041 = playSeVer2( spep_2 + 560, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE041, 132 );

--爆発
SE042 = playSeVer2( spep_2 + 556, 1067, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 273, 15, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 401, 7, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 471, 7, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 500);
pauseMovie( spep_2 +  MAX_FRAME_2 -4, 1 );   -- 一時停止
endPhase( spep_2 +  MAX_FRAME_2 -2);  -- 638

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
-- 全体攻撃 ef_004 (88F)
------------------------------------------------------

MAX_FRAME_3 = 88;
spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
if (_IS_PLAYER_SIDE_ == 1) then

setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

else

setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

setupMovie(spep_z + 0, SP_02, 1032, 1);

-- ** エフェクト等 ** --
entry_SP_04 = entryEffect( spep_z + 0, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_z + 0, entry_SP_04, 0, 0 , 0 );
setEffMoveKey( spep_z + MAX_FRAME_3, entry_SP_04, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, entry_SP_04, 1.0, 1.0 );
setEffScaleKey( spep_z + MAX_FRAME_3, entry_SP_04, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, entry_SP_04, 0 );
setEffRotateKey( spep_z + MAX_FRAME_3, entry_SP_04, 0 );
setEffAlphaKey( spep_z + 0, entry_SP_04, 255 );
setEffAlphaKey( spep_z + MAX_FRAME_3, entry_SP_04, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0 , 1, 1 );
setDisp( spep_z + 29 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0 , 1, 104 );
changeAnime( spep_z + 18 + OFFSET_X, 1,108 );

setMoveKey( spep_z + 0 , 1, -89.9, 45.7 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, -91.1, 45.7 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, -91.1, 45.7 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -92.2, 45.7 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -92.2, 45.7 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, -93.3, 45.7 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, -93.3, 45.7 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, -94.5, 45.7 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, -95.6, 45.7 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, -96.7, 45.7 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, -97.9, 45.7 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, -99, 45.7 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, -99, 45.7 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, -105, 11.5 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, -105, 11.5 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, -79.4, -28 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, -79.4, -28 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, -60.5, -77.1 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, -60.5, -77.1 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, -24.9, -125 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, -24.9, -125 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 2.1, -170 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 2.1, -170 , 0 );

setScaleKey( spep_z + 0 , 1, 0.8, 0.8 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_z + 0 , 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 17 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 18 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_z + 29 + OFFSET_X, 1, 52.9 );

-- ** 音 ** --
--【全体】気弾発射
SE043 = playSeVer2( spep_z + 6, 1423, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_z + 6, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 6, SE044, 151 );

--【全体】気弾ヒット
SE045 = playSeVer2( spep_z + 14, 1021, "", 0, 0, 0, -1);

--【全体】爆発
SE046 = playSeVer2( spep_z + 32, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 32, SE046, 81 );
SE047 = playSeVer2( spep_z + 32, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_z + 0 );
endPhase( spep_z +  MAX_FRAME_3 );  -- 88

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 全体攻撃 ef_004 (88F)
------------------------------------------------------

MAX_FRAME_3 = 88;
spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
if (_IS_PLAYER_SIDE_ == 1) then

setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

else

setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

setupMovie(spep_z + 0, SP_02, 1032, 1);

-- ** エフェクト等 ** --
entry_SP_04 = entryEffect( spep_z + 0, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_z + 0, entry_SP_04, 0, 0 , 0 );
setEffMoveKey( spep_z + MAX_FRAME_3, entry_SP_04, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, entry_SP_04, -1.0, 1.0 );
setEffScaleKey( spep_z + MAX_FRAME_3, entry_SP_04, -1.0, 1.0 );
setEffRotateKey( spep_z + 0, entry_SP_04, 0 );
setEffRotateKey( spep_z + MAX_FRAME_3, entry_SP_04, 0 );
setEffAlphaKey( spep_z + 0, entry_SP_04, 255 );
setEffAlphaKey( spep_z + MAX_FRAME_3, entry_SP_04, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0 , 1, 1 );
setDisp( spep_z + 29 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0 , 1, 4 );
changeAnime( spep_z + 18 + OFFSET_X, 1,8 );

setMoveKey( spep_z + 0 , 1, 89.9, 45.7 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 91.1, 45.7 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 91.1, 45.7 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 92.2, 45.7 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 92.2, 45.7 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 93.3, 45.7 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 93.3, 45.7 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 94.5, 45.7 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 95.6, 45.7 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 96.7, 45.7 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 97.9, 45.7 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 99, 45.7 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 99, 45.7 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 105, 11.5 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 105, 11.5 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 79.4, -28 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 79.4, -28 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 60.5, -77.1 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 60.5, -77.1 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 24.9, -125 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 24.9, -125 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, -2.1, -170 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, -2.1, -170 , 0 );

setScaleKey( spep_z + 0 , 1, 0.8, 0.8 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_z + 0 , 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 17 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 18 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_z + 29 + OFFSET_X, 1, -52.9 );

-- ** 音 ** --
--【全体】気弾発射
SE043 = playSeVer2( spep_z + 6, 1423, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_z + 6, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 6, SE044, 151 );

--【全体】気弾ヒット
SE045 = playSeVer2( spep_z + 14, 1021, "", 0, 0, 0, -1);

--【全体】爆発
SE046 = playSeVer2( spep_z + 32, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 32, SE046, 81 );
SE047 = playSeVer2( spep_z + 32, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_z + 0 );
endPhase( spep_z +  MAX_FRAME_3 );  -- 88

end
end