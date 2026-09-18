-- 1027040: LR_超一星龍_超必殺技_煉獄龍殺円舞
-- sp_effect_a9_00106
-- sp2576

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162046;  -- 開幕・カットイン　レンズを出す ef_001
SP_002 = 162047;  -- レンズを出す～フィニッシュ ef_002
SP_002b = 162048;  -- レンズを出す～フィニッシュ ef_002b

-- 敵側
SP_002r = 162049;  -- レンズを出す～フィニッシュ ef_002r
SP_002br = 162050;  -- レンズを出す～フィニッシュ ef_002br

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

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;


------------------------------------------------------
-- 開幕・カットイン　レンズを出す ef_001 (106F)
------------------------------------------------------
MAX_FRAME_0 = 106;

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
spep_x = spep_0 + 8;

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

-- ** 音 ** --
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
--気弾溜める
SE002 = playSeVer2( spep_0 + 34, 1417, "",spep_0 + 130, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 34, SE002, 40 );
setPitch( spep_0 + 34, SE002, -500 );
setTimeStretch( SE002, 0.67, 30, 4 );
SE003 = playSeVer2( spep_0 + 34, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 40 );
SE004 = playSeVer2( spep_0 + 34, 1353, "",spep_0 + 130, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 155 );
SE006 = playSeVer2( spep_0 + 54, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE006, 40 );
SE007 = playSeVer2( spep_0 + 78, 1354, "",spep_0 + 130, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 78, SE007, 42 );
--腕クロスにする
SE005 = playSeVer2( spep_0 + 42, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 106

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- レンズを出す～フィニッシュ ef_002 (960F)
------------------------------------------------------
MAX_FRAME_2 = 960;

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

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 199 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 134 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, 238.3, -125.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 238.3, -125.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 238.3, -125.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 281, -131.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 277.9, -131.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 277.9, -131.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 281, -137.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 277.9, -131.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 284.1, -134.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 281, -134.7 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.05, 1.05 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 10 );

--敵の動き2
setDisp( spep_2 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 252 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 252 + OFFSET_X, 1, 162.7, -168.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 162.7, -168.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 162.7, -168.2 , 0 );

setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.83, 0.83 );

setRotateKey( spep_2 + 252 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 10 );

--敵の動き3
setDisp( spep_2 + 392 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 472 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 392 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 392 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 158.3, -170.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 158.3, -170.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 158.3, -175.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 168, -170.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 158.3, -165.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 163.2, -175.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 168, -175.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 168, -170.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 158.3, -170.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 163.2, -175.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 168.2, -168.4 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 158.9, -163.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 174.1, -154.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 160.5, -136.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 171.5, -135.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 168.2, -101.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 170, -87.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 167.2, -56.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 179.2, -26.1 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 172.2, 7.7 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 179.9, 40.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 178.3, 86 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 191.4, 130.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 195.2, 178.6 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 189.5, 235.1 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 188.9, 280.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 203.2, 349.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 203.2, 411.4 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 213.2, 467.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 213.7, 542.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 219.4, 615.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 230.2, 696.7 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 236.4, 767.3 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 247.7, 856.1 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 249.6, 948.4 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 249.6, 948.4 , 0 );

setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.83, 0.83 );

setRotateKey( spep_2 + 392 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -11.4 );



--敵の動き4
setDisp( spep_2 + 582 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 658 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 582 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 584 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 590 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 594 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 598 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 602 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 606 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 612 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 582 + OFFSET_X, 1, 66.4, -9.9 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 66.4, -9.9 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 66.4, -9.9 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 66.6, -6.3 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 66.6, -6.3 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 66.6, -6.3 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 2.4, -2.9 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 2.4, -2.9 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 2.4, -2.9 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 66.9, -8.5 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 66.9, -8.5 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 66.9, -8.5 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 66.6, -9.7 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 66.6, -9.7 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 66.6, -9.7 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 2.4, -3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 2.4, -3 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 2.4, -3 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 67.3, -4.9 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 67.3, -4.9 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 67.3, -4.9 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 39.6, -32.7 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 39.6, -32.7 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 34.7, -27.7 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 34.7, -27.7 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 44.5, -37.5 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 44.5, -37.5 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 39.6, -25.3 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 39.6, -25.3 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 44.5, -40 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 44.5, -40 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 32.2, -39.9 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 32.2, -39.9 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 44.5, -25.2 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 44.5, -25.2 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 44.5, -32.6 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 44.5, -32.6 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 39.6, -27.7 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 39.6, -27.7 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 39.6, -37.5 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 39.6, -37.5 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 42.1, -32.6 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 42.1, -32.6 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 29.8, -22.7 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 29.8, -22.7 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 47, -42.3 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 47, -42.3 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 39.6, -42.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 39.6, -42.3 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 47, -32.5 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 47, -32.5 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 34.7, -32.5 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 34.7, -32.5 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 32.3, -27.6 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 32.3, -27.6 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 44.5, -37.4 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 44.5, -37.4 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 44.5, -37.4 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 44.5, -37.4 , 0 );

setScaleKey( spep_2 + 582 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 2.19, 2.19 );

setRotateKey( spep_2 + 582 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -91.1 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, -91.1 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 611 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 612 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 614 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 620 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, -2.9 );

setBlendColor( spep_2 + 612 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_2 + 678 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--サークルができる	
SE009 = playSeVer2( spep_2, 1127, "",spep_2 + 68, 0, 30, 0.6);
setSeVolumeByWorkId( spep_2, SE009, 69 );
SE010 = playSeVer2( spep_2, 1353, "",spep_2 + 88, 0, 18, -1);
setSeVolumeByWorkId( spep_2, SE010, 110 );
SE011 = playSeVer2( spep_2, 1417, "",spep_2 + 104, 0, 32, -1);
setSeVolumeByWorkId( spep_2, SE011, 33 );
setPitch( spep_2, SE011, -500 );
setTimeStretch( SE011, 0.67, 30, 4 );
SE012 = playSeVer2( spep_2, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2, SE012, 34 );

--気弾発射
SE013 = playSeVer2( spep_2 + 50, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE013, 69 );
SE014 = playSeVer2( spep_2 + 50, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE014, 117 );
setTimeStretch( SE014, 1.22, 30, 4 );
SE015 = playSeVer2( spep_2 + 50, 1177, "",spep_2 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 50, SE015, 69 );
setPitch( spep_2 + 50, SE015, 100 );
setTimeStretch( SE015, 1.07, 30, 4 );
SE016 = playSeVer2( spep_2 + 58, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE016, 80 );
setPitch( spep_2 + 58, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 130, 1145, "",spep_2 + 182, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 130, SE017, 71 );
setPitch( spep_2 + 130, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 4 );

--爆発
SE018 = playSeVer2( spep_2 + 150, 1023, "",spep_2 + 238, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 150, SE018, 82 );
SE019 = playSeVer2( spep_2 + 150, 1024, "",spep_2 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 150, SE019, 83 );

--目からビーム出る	
SE020 = playSeVer2( spep_2 + 204, 1296, "",spep_2 + 268, 10, 20, -1);
setStartTimeMs( SE020,  467 );
SE021 = playSeVer2( spep_2 + 198, 1338, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 198, 1021, "",spep_2 + 248, 0, 30, -1);
SE024 = playSeVer2( spep_2 + 210, 1326, "",spep_2 + 270, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 210, SE024, 114 );

--ガラスになる
SE023 = playSeVer2( spep_2 + 242, 1384, "",spep_2 + 320, 8, 44, -1);
setSeVolumeByWorkId( spep_2 + 242, SE023, 81 );
setStartTimeMs( SE023,  733 );
setPitch( spep_2 + 242, SE023, -600 );
setTimeStretch( SE023, 0.6, 30, 4 );
SE025 = playSeVer2( spep_2 + 244, 1340, "",spep_2 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 244, SE025, 129 );
SE026 = playSeVer2( spep_2 + 246, 1250, "",spep_2 + 302, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 246, SE026, 186 );
SE027 = playSeVer2( spep_2 + 246, 1041, "", 0, 0, 0, -1);

--飛び上がる
SE028 = playSeVer2( spep_2 + 294, 1207, "",spep_2 + 342, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 294, SE028, 79 );
SE029 = playSeVer2( spep_2 + 294, 1232, "", 0, 0, 0, -1);

--破片ビーム撃つ
SE030 = playSeVer2( spep_2 + 332, 1258, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 336, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE031, 73 );
SE032 = playSeVer2( spep_2 + 336, 1406, "",spep_2 + 498, 0, 28, -1);
SE033 = playSeVer2( spep_2 + 336, 1044, "",spep_2 + 506, 0, 32, -1);

--持ち上がる
SE034 = playSeVer2( spep_2 + 416, 1116, "",spep_2 + 472, 0, 30, -1);

--凄む
SE035 = playSeVer2( spep_2 + 468, 20, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 468, 1264, "",spep_2 + 574, 0, 68, -1);

--暗雲
SE037 = playSeVer2( spep_2 + 494, 1229, "",spep_2 + 614, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 494, SE037, 117 );

--雷落ちる
SE038 = playSeVer2( spep_2 + 528, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE038, 78 );
SE039 = playSeVer2( spep_2 + 528, 1145, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 528, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );
SE040 = playSeVer2( spep_2 + 528, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE040, 76 );
SE041 = playSeVer2( spep_2 + 536, 1249, "",spep_2 + 632, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 536, SE041, 136 );

--煙
SE042 = playSeVer2( spep_2 + 646, 1168, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 646, SE042, 66 );
setStartTimeMs( SE042,  1767 );

--敵巻き込まれる
SE043 = playSeVer2( spep_2 + 576, 1406, "",spep_2 + 634, 0, 28, -1);

--敵しびれる
SE044 = playSeVer2( spep_2 + 604, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 604, SE044, 155 );
SE045 = playSeVer2( spep_2 + 608, 1038, "",spep_2 + 668, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 608, SE045, 119 );
SE046 = playSeVer2( spep_2 + 608, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 608, SE046, 58 );

--降りてくる
SE047 = playSeVer2( spep_2 + 654, 63, "",spep_2 + 692, 0, 18, -1);

--着地
SE048 = playSeVer2( spep_2 + 668, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 668, SE048, 74 );
SE049 = playSeVer2( spep_2 + 668, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 668, SE049, 53 );

--画面遷移
SE050 = playSeVer2( spep_2 + 708, 1232, "", 0, 0, 0, -1);

--アップで気を発する
SE051 = playSeVer2( spep_2 + 726, 1014, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 726, 1190, "",spep_2 + 768, 0, 20, -1);
SE053 = playSeVer2( spep_2 + 726, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 726, SE053, 77 );
SE054 = playSeVer2( spep_2 + 726, 1179, "", 0, 0, 0, -1);

--ラスト爆発
SE055 = playSeVer2( spep_2 + 810, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 810, 1067, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 816, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 850 );
endPhase( spep_2 +  MAX_FRAME_2 - 2); --960

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;


------------------------------------------------------
-- 開幕・カットイン　レンズを出す ef_001 (106F)
------------------------------------------------------
MAX_FRAME_0 = 106;

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
spep_x = spep_0 + 8;

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

-- ** 音 ** --
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
--気弾溜める
SE002 = playSeVer2( spep_0 + 34, 1417, "",spep_0 + 130, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 34, SE002, 40 );
setPitch( spep_0 + 34, SE002, -500 );
setTimeStretch( SE002, 0.67, 30, 4 );
SE003 = playSeVer2( spep_0 + 34, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 40 );
SE004 = playSeVer2( spep_0 + 34, 1353, "",spep_0 + 130, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 155 );
SE006 = playSeVer2( spep_0 + 54, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE006, 40 );
SE007 = playSeVer2( spep_0 + 78, 1354, "",spep_0 + 130, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 78, SE007, 42 );
--腕クロスにする
SE005 = playSeVer2( spep_0 + 42, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 106

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- レンズを出す～フィニッシュ ef_002 (960F)
------------------------------------------------------
MAX_FRAME_2 = 960;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 199 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 134 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, 238.3, -125.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 238.3, -125.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 238.3, -125.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 281, -131.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 277.9, -131.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 277.9, -131.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 281, -137.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 281, -128.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 277.9, -131.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 284.1, -131.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 284.1, -134.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 277.9, -128.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 281, -134.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 281, -134.7 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.05, 1.05 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 10 );

--敵の動き2
setDisp( spep_2 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 252 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 252 + OFFSET_X, 1, 162.7, -168.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 162.7, -168.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 162.7, -168.2 , 0 );

setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.83, 0.83 );

setRotateKey( spep_2 + 252 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 10 );

--敵の動き3
setDisp( spep_2 + 392 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 472 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 392 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 392 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 158.3, -170.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 158.3, -170.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 158.3, -175.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 168, -170.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 158.3, -165.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 163.2, -175.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 168, -175.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 168, -170.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 158.3, -170.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 163.2, -175.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 163.2, -165.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 168.2, -168.4 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 158.9, -163.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 174.1, -154.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 160.5, -136.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 171.5, -135.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 168.2, -101.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 170, -87.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 167.2, -56.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 179.2, -26.1 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 172.2, 7.7 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 179.9, 40.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 178.3, 86 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 191.4, 130.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 195.2, 178.6 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 189.5, 235.1 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 188.9, 280.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 203.2, 349.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 203.2, 411.4 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 213.2, 467.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 213.7, 542.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 219.4, 615.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 230.2, 696.7 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 236.4, 767.3 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 247.7, 856.1 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 249.6, 948.4 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 249.6, 948.4 , 0 );

setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.83, 0.83 );

setRotateKey( spep_2 + 392 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -11.4 );



--敵の動き4
setDisp( spep_2 + 582 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 658 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 582 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 584 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 590 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 594 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 598 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 602 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 606 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 612 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 582 + OFFSET_X, 1, 66.4, -9.9 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 66.4, -9.9 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 66.4, -9.9 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 66.6, -6.3 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 66.6, -6.3 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 66.6, -6.3 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 2.4, -2.9 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 2.4, -2.9 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 2.4, -2.9 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 66.9, -8.5 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 66.9, -8.5 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 66.9, -8.5 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 66.6, -9.7 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 66.6, -9.7 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 66.6, -9.7 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 2.4, -3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 2.4, -3 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 2.4, -3 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 67.3, -4.9 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 67.3, -4.9 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 67.3, -4.9 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 39.6, -32.7 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 39.6, -32.7 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 34.7, -27.7 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 34.7, -27.7 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 44.5, -37.5 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 44.5, -37.5 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 39.6, -25.3 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 39.6, -25.3 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 44.5, -40 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 44.5, -40 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 32.2, -32.6 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 32.2, -39.9 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 32.2, -39.9 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 44.5, -25.2 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 44.5, -25.2 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 44.5, -32.6 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 44.5, -32.6 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 39.6, -27.7 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 39.6, -27.7 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 39.6, -37.5 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 39.6, -37.5 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 42.1, -32.6 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 42.1, -32.6 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 29.8, -22.7 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 29.8, -22.7 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 47, -42.3 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 47, -42.3 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 39.6, -42.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 39.6, -42.3 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 47, -32.5 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 47, -32.5 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 34.7, -27.6 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 34.7, -32.5 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 34.7, -32.5 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 32.3, -27.6 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 32.3, -27.6 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 44.5, -37.4 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 44.5, -37.4 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 44.5, -37.4 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 44.5, -37.4 , 0 );

setScaleKey( spep_2 + 582 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 2.19, 2.19 );

setRotateKey( spep_2 + 582 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -91.1 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, -91.1 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 611 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 612 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 614 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 620 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, -2.9 );

setBlendColor( spep_2 + 612 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_2 + 678 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--サークルができる	
SE009 = playSeVer2( spep_2, 1127, "",spep_2 + 68, 0, 30, 0.6);
setSeVolumeByWorkId( spep_2, SE009, 69 );
SE010 = playSeVer2( spep_2, 1353, "",spep_2 + 88, 0, 18, -1);
setSeVolumeByWorkId( spep_2, SE010, 110 );
SE011 = playSeVer2( spep_2, 1417, "",spep_2 + 104, 0, 32, -1);
setSeVolumeByWorkId( spep_2, SE011, 33 );
setPitch( spep_2, SE011, -500 );
setTimeStretch( SE011, 0.67, 30, 4 );
SE012 = playSeVer2( spep_2, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2, SE012, 34 );

--気弾発射
SE013 = playSeVer2( spep_2 + 50, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE013, 69 );
SE014 = playSeVer2( spep_2 + 50, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE014, 117 );
setTimeStretch( SE014, 1.22, 30, 4 );
SE015 = playSeVer2( spep_2 + 50, 1177, "",spep_2 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 50, SE015, 69 );
setPitch( spep_2 + 50, SE015, 100 );
setTimeStretch( SE015, 1.07, 30, 4 );
SE016 = playSeVer2( spep_2 + 58, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE016, 80 );
setPitch( spep_2 + 58, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 130, 1145, "",spep_2 + 182, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 130, SE017, 71 );
setPitch( spep_2 + 130, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 4 );

--爆発
SE018 = playSeVer2( spep_2 + 150, 1023, "",spep_2 + 238, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 150, SE018, 82 );
SE019 = playSeVer2( spep_2 + 150, 1024, "",spep_2 + 254, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 150, SE019, 83 );

--目からビーム出る	
SE020 = playSeVer2( spep_2 + 204, 1296, "",spep_2 + 268, 10, 20, -1);
setStartTimeMs( SE020,  467 );
SE021 = playSeVer2( spep_2 + 198, 1338, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 198, 1021, "",spep_2 + 248, 0, 30, -1);
SE024 = playSeVer2( spep_2 + 210, 1326, "",spep_2 + 270, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 210, SE024, 114 );

--ガラスになる
SE023 = playSeVer2( spep_2 + 242, 1384, "",spep_2 + 320, 8, 44, -1);
setSeVolumeByWorkId( spep_2 + 242, SE023, 81 );
setStartTimeMs( SE023,  733 );
setPitch( spep_2 + 242, SE023, -600 );
setTimeStretch( SE023, 0.6, 30, 4 );
SE025 = playSeVer2( spep_2 + 244, 1340, "",spep_2 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 244, SE025, 129 );
SE026 = playSeVer2( spep_2 + 246, 1250, "",spep_2 + 302, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 246, SE026, 186 );
SE027 = playSeVer2( spep_2 + 246, 1041, "", 0, 0, 0, -1);

--飛び上がる
SE028 = playSeVer2( spep_2 + 294, 1207, "",spep_2 + 342, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 294, SE028, 79 );
SE029 = playSeVer2( spep_2 + 294, 1232, "", 0, 0, 0, -1);

--破片ビーム撃つ
SE030 = playSeVer2( spep_2 + 332, 1258, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 336, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE031, 73 );
SE032 = playSeVer2( spep_2 + 336, 1406, "",spep_2 + 498, 0, 28, -1);
SE033 = playSeVer2( spep_2 + 336, 1044, "",spep_2 + 506, 0, 32, -1);

--持ち上がる
SE034 = playSeVer2( spep_2 + 416, 1116, "",spep_2 + 472, 0, 30, -1);

--凄む
SE035 = playSeVer2( spep_2 + 468, 20, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 468, 1264, "",spep_2 + 574, 0, 68, -1);

--暗雲
SE037 = playSeVer2( spep_2 + 494, 1229, "",spep_2 + 614, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 494, SE037, 117 );

--雷落ちる
SE038 = playSeVer2( spep_2 + 528, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE038, 78 );
SE039 = playSeVer2( spep_2 + 528, 1145, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 528, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );
SE040 = playSeVer2( spep_2 + 528, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE040, 76 );
SE041 = playSeVer2( spep_2 + 536, 1249, "",spep_2 + 632, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 536, SE041, 136 );

--煙
SE042 = playSeVer2( spep_2 + 646, 1168, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 646, SE042, 66 );
setStartTimeMs( SE042,  1767 );

--敵巻き込まれる
SE043 = playSeVer2( spep_2 + 576, 1406, "",spep_2 + 634, 0, 28, -1);

--敵しびれる
SE044 = playSeVer2( spep_2 + 604, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 604, SE044, 155 );
SE045 = playSeVer2( spep_2 + 608, 1038, "",spep_2 + 668, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 608, SE045, 119 );
SE046 = playSeVer2( spep_2 + 608, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 608, SE046, 58 );

--降りてくる
SE047 = playSeVer2( spep_2 + 654, 63, "",spep_2 + 692, 0, 18, -1);

--着地
SE048 = playSeVer2( spep_2 + 668, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 668, SE048, 74 );
SE049 = playSeVer2( spep_2 + 668, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 668, SE049, 53 );

--画面遷移
SE050 = playSeVer2( spep_2 + 708, 1232, "", 0, 0, 0, -1);

--アップで気を発する
SE051 = playSeVer2( spep_2 + 726, 1014, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 726, 1190, "",spep_2 + 768, 0, 20, -1);
SE053 = playSeVer2( spep_2 + 726, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 726, SE053, 77 );
SE054 = playSeVer2( spep_2 + 726, 1179, "", 0, 0, 0, -1);

--ラスト爆発
SE055 = playSeVer2( spep_2 + 810, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 810, 1067, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 816, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 850 );
endPhase( spep_2 +  MAX_FRAME_2 - 2); --960

end

