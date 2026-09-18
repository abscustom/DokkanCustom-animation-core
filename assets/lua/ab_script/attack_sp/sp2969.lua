--1032580:LR_超サイヤ人3ベジータ(DAIMA)_必殺技：ライトニングバースト
--sp_effect_b1_00353
--sp2969

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164380; --対峙から移動 ef_001
SP_02  = 164381; --アッパー→着弾発射→フィニッシュ ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.68);

OFFSET_X = -1;

MAX_FRAME_0 = 154;

if (_IS_PLAYER_SIDE_ == 1) then
   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_2 = MAX_FRAME_0 + 94;

        skipFrame(0, spep_2 + 364);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 364, SP_01, spep_2 + 364-2, 1);

        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --殴り飛ばす
        SE023 = playSeVer2( spep_2 + 364+3, 1189, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 364+3, SE023, 166 );
        SE024 = playSeVer2( spep_2 + 372+3, 1187, "", 0, 0, 0, -1);
        SE025 = playSeVer2( spep_2 + 372+3, 1359, "", 0, 0, 0, -1);
        SE026 = playSeVer2( spep_2 + 388+3, 1190, "", 0, 12, 0, -1);
        setStartTimeMs( SE026,  33 );

    else 
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙から移動 ef_001
-------------------------------------------------
--MAX_FRAME_0 = 154;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙から移動 (ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 66;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 198.6, 0 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 198.6, 0 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 198.6, 0 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 198.7, 0 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 198.7, 0 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 198.7, 0 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 198.7, 0 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 198.8, 0 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 198.8, 0 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 198.9, 0 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 198.9, 0 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 199, 0 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 199, 0 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 199.1, 0 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 199.1, 0 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 199.2, 0 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 199.2, 0 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 199.3, 0 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 199.3, 0 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 199.4, 0 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 199.4, 0 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 199.5, 0 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 199.5, 0 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 199.6, 0 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 199.6, 0 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 199.7, 0 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 199.7, 0 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 199.8, 0 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 199.8, 0 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 199.9, 0 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 199.9, 0 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 200, 0 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 200, 0 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 200.1, 0 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 200.1, 0 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 200.2, 0 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 200.2, 0 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 200.3, 0 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 200.3, 0 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 200.4, 0 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 200.4, 0 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 200.5, 0 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 58 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 178, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
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

--空気音
SE003 = playSeVer2( spep_0 + 36, 1427, "",spep_0 + 146, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 63 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 126, 1245, "",spep_0 + 166, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 126, SE005, 50 );
SE006 = playSeVer2( spep_0 + 126, 1109, "",spep_0 + 168, 0, 14, -1);	

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 154F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--初手アッパー
SE009 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);	
SE010 = playSeVer2( spep_1 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 68 );
SE011 = playSeVer2( spep_1 + 90, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 82 );

-------------------------------------------------
-- アッパー→着弾発射→フィニッシュ ef_002
-------------------------------------------------
MAX_FRAME_2 = 948;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- アッパー→着弾発射→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 8 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 88 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 8 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 8 + OFFSET_X, 1, -19.9, 38.4 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -19.9, 38.4 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -12.8, 52 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -12.8, 52 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -10, 64.2 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -10, 64.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -3.3, 68.5 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -3.3, 68.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -3.8, 67.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -3.8, 67.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -6.4, 71.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -6.4, 71.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -4.5, 69.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -4.5, 69.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -6.3, 72 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -6.3, 72 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -4.1, 71.3 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -4.1, 71.3 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -5.8, 74.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -5.8, 74.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -2.6, 77.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -2.6, 77.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -2.5, 78 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -2.5, 78 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -2.4, 78.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -2.4, 78.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -2.3, 79.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -2.3, 79.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -2.2, 79.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -2.2, 79.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -2.1, 80.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -2.1, 80.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -2, 80.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -2, 80.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -1.9, 81.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -1.9, 81.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -1.8, 81.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -1.8, 81.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -1.8, 82 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -1.8, 82 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -1.7, 82.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -1.7, 82.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -1.6, 82.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -1.6, 82.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -1.5, 83.2 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -1.5, 83.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -1.5, 83.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -1.5, 83.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -1.4, 84 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -1.4, 84 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -1.3, 84.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -1.3, 84.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -1.2, 84.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -1.2, 84.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -1.2, 85.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -1.2, 85.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -1.1, 85.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -1.1, 85.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -1, 85.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -1, 85.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -1, 86.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -1, 86.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -0.9, 86.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -0.9, 86.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -0.8, 86.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -0.8, 86.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -0.8, 87.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -0.8, 87.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -0.7, 87.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -0.7, 87.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -0.7, 87.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -0.7, 87.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -0.6, 88.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -0.6, 88.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -0.5, 88.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -0.5, 88.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -0.5, 88.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -0.5, 88.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -0.4, 89 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -0.4, 89 , 0 );

setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 8 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -63.2 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -63.2 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -61 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -61 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -60.4 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -60.4 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -60.2 );

--敵の動き2
setDisp( spep_2 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 180 + OFFSET_X, 1, -9.7, -114.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -9.7, -114.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -9.7, -114.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -9.7, -114.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -9.7, -115.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -9.7, -115.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -9.7, -115.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -9.7, -115.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -9.7, -116 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -9.7, -116 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -9.7, -116.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -9.7, -116.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -9.7, -117 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -9.7, -117 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -9.7, -117.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -9.7, -117.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -9.7, -117.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -9.7, -117.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -9.7, -118.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -9.7, -118.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -9.7, -118.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -9.7, -118.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 36.8, -149.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 36.8, -149.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 124.1, -191.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 124.1, -191.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 211.4, -232.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 211.4, -232.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 298.7, -273.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 298.7, -273.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 376.2, -312.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 376.2, -312.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 453.7, -351.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 453.7, -351.2 , 0 );

setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 180 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -58 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -58 );

--敵の動き3
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 262 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, 422.6, -180.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 422.6, -180.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 413.8, -172 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 413.8, -172 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 404.9, -163.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 404.9, -163.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 396, -154.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 396, -154.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 391.6, -149.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 391.6, -149.7 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -80 );

--敵の動き4
setDisp( spep_2 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 268 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 268 + OFFSET_X, 1, 57.4, 43.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 57.4, 43.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 99.4, 7.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 99.4, 7.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 120.4, 27.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 120.4, 27.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 140.4, 6.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 140.4, 6.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 143.9, -14.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 143.9, -14.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 128.4, 5.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 128.4, 5.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 92.9, 26.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 92.9, 26.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 131.4, 4.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 131.4, 4.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 102.9, 15.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 102.9, 15.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 131.9, 6.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 131.9, 6.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 130.9, 7.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 130.9, 7.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 228.9, -16.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 228.9, -16.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 237.2, -28.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 237.2, -28.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 245.3, -40.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 245.3, -40.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 253.5, -52.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 253.5, -52.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 261.5, -64.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 261.5, -64.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 269.8, -76.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 269.8, -76.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 273.8, -82.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 273.8, -82.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 277.9, -88.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 277.9, -88.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 282, -94.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 282, -94.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 285.2, -99.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 285.2, -99.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 288.6, -105.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 288.6, -105.6 , 0 );

setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_2 + 268 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 25 );

--敵の動き5
setDisp( spep_2 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 326 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 326 + OFFSET_X, 1, -360.3, 256.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -360.3, 256.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -343.1, 252.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -343.1, 252.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -317.3, 245.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -317.3, 245.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -300.2, 241.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -300.2, 241.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -274.3, 234.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -274.3, 234.6 , 0 );

setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 326 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 25 );

--敵の動き6
setDisp( spep_2 + 358 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 360 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 358 + OFFSET_X, 1, -226.6, 175.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -226.6, 175.5 , 0 );

setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.49, 0.49 );

setRotateKey( spep_2 + 358 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 25 );

--敵の動き7
setDisp( spep_2 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 450 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 380 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 396 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 364 + OFFSET_X, 1, -28.2, 142.7 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -28.2, 142.7 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -43.7, 142.6 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -43.7, 142.6 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -43.7, 142.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -43.7, 142.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -43.7, 127.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -43.7, 127.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -43.7, 142.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -43.7, 142.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -43.7, 121 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -43.7, 121 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -43.6, 105.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -43.6, 105.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -43.6, 121 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -43.6, 121 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -200.8, 264.5 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -200.8, 264.5 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -209.1, 262.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -209.1, 262.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -225.6, 258.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -225.6, 258.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -242.2, 254.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -242.2, 254.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -258.7, 250.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -258.7, 250.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 14.1, -318 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 14.1, -318 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 14.2, -308.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 14.2, -308.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 14.2, -303.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 14.2, -303.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 14.2, -300.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 14.2, -300.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 14.2, -297.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 14.2, -297.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 14.2, -295.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 14.2, -295.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 14.2, -293.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 14.2, -293.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 14.2, -291.5 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 14.2, -291.5 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 14.2, -289.7 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 14.2, -289.7 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 14.2, -288 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 14.2, -288 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 14.2, -286.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 14.2, -286.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 14.2, -285 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 14.2, -285 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 14.2, -283.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 14.2, -283.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 14.2, -282.3 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 14.2, -282.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 14.2, -281.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 14.2, -281.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 14.2, -279.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 14.2, -279.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 14.2, -278.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 14.2, -278.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 14.2, -277.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 14.2, -277.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 14.2, -276.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 14.2, -276.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 14.2, -275.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 14.2, -275.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 14.2, -274.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 14.2, -274.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 14.2, -273.4 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 14.2, -273.4 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 14.2, -272.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 14.2, -272.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 14.2, -271.4 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 14.2, -271.4 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 14.2, -270.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 14.2, -270.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 14.2, -269.6 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 14.2, -269.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 14.1, -268.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 14.1, -268.7 , 0 );

setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 364 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 89 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 89 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 88 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 88 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 91 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 91 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 83 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 83 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -17 );


--敵の動き8
setDisp( spep_2 + 620 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 878 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 620 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 620 + OFFSET_X, 1, 30.4, 9.6 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 30.4, 9.6 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 47.4, -52.4 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 47.4, -52.4 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 64.4, -98.4 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 64.4, -98.4 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 6.9, -71.8 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 6.9, -71.8 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 51.5, -114.5 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 51.5, -114.5 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 62, -73.4 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 62, -73.4 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 24.9, -121 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 24.9, -121 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -4.2, -83.8 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -4.2, -83.8 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 40, -117 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 40, -117 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 20.9, -86.3 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 20.9, -86.3 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 7.4, -122.3 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 7.4, -122.3 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 15.9, -88.3 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 15.9, -88.3 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -3.1, -132.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -3.1, -132.3 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 45.4, -103.8 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 45.4, -103.8 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 42.4, -129.8 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 42.4, -129.8 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 22.9, -119.8 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 22.9, -119.8 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 33.9, -136.8 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 33.9, -136.8 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 46.4, -124.8 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 46.4, -124.8 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 36.4, -147.3 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 36.4, -147.3 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 43.9, -137.8 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 43.9, -137.8 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 36.4, -144.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 36.4, -144.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 36.9, -138.3 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 36.9, -138.3 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 42.9, -144.3 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 42.9, -144.3 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 41.4, -136.3 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 41.4, -136.3 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 45.4, -145.3 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 45.4, -145.3 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 43.9, -138.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 43.9, -138.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 42.4, -142.3 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, 42.4, -142.3 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, 35.4, -166.8 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 35.4, -166.8 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 32.4, -169.8 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 32.4, -169.8 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 30.9, -169.8 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, 30.9, -169.8 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, 31.9, -177.8 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, 31.9, -177.8 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, 25.4, -182.8 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, 25.4, -182.8 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, 24.9, -184.3 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, 24.9, -184.3 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, 24.9, -187.8 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, 24.9, -187.8 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, 27.9, -193.8 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, 27.9, -193.8 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 26.9, -194.3 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, 26.9, -194.3 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 24.9, -197.3 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 24.9, -197.3 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 25.4, -195.8 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, 25.4, -195.8 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, 27.9, -196.8 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 27.9, -196.8 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 27.9, -194.3 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, 27.9, -194.3 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, 32.4, -195.8 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 32.4, -195.8 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 33.9, -194.3 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 33.9, -194.3 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 30.4, -185.3 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, 30.4, -185.3 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, 33.9, -163.3 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 33.9, -163.3 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 21.4, -131.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 21.4, -131.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 6.4, -58.8 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 6.4, -58.8 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, -1.1, -71.8 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -1.1, -71.8 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -1.1, 52.3 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -1.1, 52.3 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -1.1, -136.8 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, -1.1, -136.8 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, -1.1, -33.8 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, -1.1, -33.8 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -4.1, -2.8 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, -4.1, -2.8 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, -1.1, -58.5 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, -1.1, -58.5 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, -0.7, -53.9 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, -0.7, -53.9 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, -0.7, -26.9 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, -0.7, -26.9 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, -0.9, -65.9 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, -0.9, -65.9 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, -1.5, -52.1 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, -1.5, -52.1 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, -2.4, -34.7 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, -2.4, -34.7 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, -3.2, -85.8 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, -3.2, -85.8 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, -3.7, -91.9 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, -3.7, -91.9 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, -4.1, -89.1 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, -4.1, -89.1 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, -4.8, -89.6 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, -4.8, -89.6 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, -4.6, -95 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, -4.6, -95 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, -3.1, -99.2 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, -3.1, -99.2 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, -2, -104 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, -2, -104 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, -0.7, -110.1 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, -0.7, -110.1 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, 0.5, -109.6 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, 0.5, -109.6 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, -2.5, -117.1 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, -2.5, -117.1 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, 0.5, -121.6 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, 0.5, -121.6 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, -0.1, 521.1 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, -0.1, 521.1 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, -0.1, 315.8 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, -0.1, 315.8 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, -0.1, 110.5 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -0.1, 110.5 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -0.1, -94.8 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -0.1, -94.8 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, 39.7, -64.3 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, 39.7, -64.3 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -21.2, -128.3 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, -21.2, -128.3 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, -9, -134.4 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, -9, -134.4 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, 9.2, -116.2 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, 9.2, -116.2 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 0, -57.8 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 0, -57.8 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, -2.3, -61.7 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, -2.3, -61.7 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 4.1, -61.7 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 4.1, -61.7 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 12.4, -58.5 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 12.4, -58.5 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 15.6, -52.1 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 15.6, -52.1 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 2.8, -65.5 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 2.8, -65.5 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, 5.3, -66.8 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, 5.3, -66.8 , 0 );
setMoveKey( spep_2 + 800 + OFFSET_X, 1, 9.2, -63 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, 9.2, -63 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, 7.3, -59.1 , 0 );
setMoveKey( spep_2 + 803 + OFFSET_X, 1, 7.3, -59.1 , 0 );
setMoveKey( spep_2 + 804 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 805 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 806 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 809 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 810 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 811 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 812 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 815 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 817 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 818 + OFFSET_X, 1, -2.3, -61.7 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, -2.3, -61.7 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, 4.1, -61.7 , 0 );
setMoveKey( spep_2 + 821 + OFFSET_X, 1, 4.1, -61.7 , 0 );
setMoveKey( spep_2 + 822 + OFFSET_X, 1, 12.4, -58.5 , 0 );
setMoveKey( spep_2 + 823 + OFFSET_X, 1, 12.4, -58.5 , 0 );
setMoveKey( spep_2 + 824 + OFFSET_X, 1, 15.6, -52.1 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, 15.6, -52.1 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, 2.8, -65.5 , 0 );
setMoveKey( spep_2 + 827 + OFFSET_X, 1, 2.8, -65.5 , 0 );
setMoveKey( spep_2 + 828 + OFFSET_X, 1, 5.3, -66.8 , 0 );
setMoveKey( spep_2 + 829 + OFFSET_X, 1, 5.3, -66.8 , 0 );
setMoveKey( spep_2 + 830 + OFFSET_X, 1, 9.2, -63 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, 9.2, -63 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, 7.3, -59.1 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, 7.3, -59.1 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, -2.3, -61.7 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, -2.3, -61.7 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 4.1, -61.7 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, 4.1, -61.7 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, 12.4, -58.5 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, 12.4, -58.5 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, 15.6, -52.1 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, 15.6, -52.1 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, 2.8, -65.5 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 2.8, -65.5 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 5.3, -66.8 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 5.3, -66.8 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 9.2, -63 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 9.2, -63 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 7.3, -59.1 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, 7.3, -59.1 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, 7.9, -53.4 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, 9.8, -66.8 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, 16.3, -71.9 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, 2.8, -54.6 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, 10.5, -57.2 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, 0.9, -58.5 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, 0.2, -63 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, -2.3, -101.7 , 0 );

setScaleKey( spep_2 + 620 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 681 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 682 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 693 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 707 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 708 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 715 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 716 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 719 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 723 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 724 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 729 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 731 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 732 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 744 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 749 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 750 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 751 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 755 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 756 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 878 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 620 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 623 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 627 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 631 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 755 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 756 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 757 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 758 + OFFSET_X, 1, -88.3 );
setRotateKey( spep_2 + 759 + OFFSET_X, 1, -88.3 );
setRotateKey( spep_2 + 760 + OFFSET_X, 1, -90.5 );
setRotateKey( spep_2 + 761 + OFFSET_X, 1, -90.5 );
setRotateKey( spep_2 + 762 + OFFSET_X, 1, -92.8 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, -92.8 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 807 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 808 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 821 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 822 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 837 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 838 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 851 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 852 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 867 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 868 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 878 + OFFSET_X, 1, -90 );

-- ** 音 ** --
--初手アッパー
SE008 = playSeVer2( spep_2 + 8, 1278, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE008, 50 );
setStartTimeMs( SE008,  900 );
SE012 = playSeVer2( spep_2 + 8, 1190, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 14, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE013, 67 );

--画面遷移
SE014 = playSeVer2( spep_2 + 74, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE014, 79 );

--気ダメ
SE015 = playSeVer2( spep_2 + 172, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 172, 1503, "", 0, 0, 0, -1);

--敵向かっていく
SE017 = playSeVer2( spep_2 + 194, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE017, 148 );
setPitch( spep_2 + 194, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 4 );

--パンチ
SE018 = playSeVer2( spep_2 + 246, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 254, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 254, 1414, "", 0, 0, 0, -1);

--追いかける
SE021 = playSeVer2( spep_2 + 304, 1109, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 306, 1277, "", 0, 0, 0, -1);

--殴り飛ばす
SE023 = playSeVer2( spep_2 + 336, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE023, 166 );
SE024 = playSeVer2( spep_2 + 344, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 344, 1359, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 360, 1190, "", 0, 12, 0, -1);
setStartTimeMs( SE026,  33 );

--ベジータ浮かび上がる
SE027 = playSeVer2( spep_2 + 384, 1183, "",spep_2 + 534, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 384, SE027, 60 );
SE028 = playSeVer2( spep_2 + 384, 1227, "",spep_2 + 614, 0, 134, -1);
SE029 = playSeVer2( spep_2 + 384, 1508, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE029, 67 );
SE030 = playSeVer2( spep_2 + 440, 44, "", 0, 0, 0, -1);

--回転
SE031 = playSeVer2( spep_2 + 544, 1117, "",spep_2 + 616, 0, 52, -1);
SE032 = playSeVer2( spep_2 + 560, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE032, 158 );
SE033 = playSeVer2( spep_2 + 560, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE033, 112 );
SE035 = playSeVer2( spep_2 + 594, 1504, "", 0, 0, 0, -1);

--気ダメ
SE034 = playSeVer2( spep_2 + 582, 1035, "", 0, 0, 0, -1);

--敵ヒット
SE036 = playSeVer2( spep_2 + 612, 1153, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 612, 1120, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 624, 1187, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 628, 1148, "",spep_2 + 710, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 628, SE039, 43 );

--敵吹き飛ぶ
SE040 = playSeVer2( spep_2 + 696, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 696, 1121, "",spep_2 + 808, 0, 54, -1);

--岩激突
SE042 = playSeVer2( spep_2 + 746, 1010, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 748, 1168, "",spep_2 + 896, 0, 28, -1);
SE044 = playSeVer2( spep_2 + 748, 1044, "",spep_2 + 908, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 748, SE044, 76 );
SE045 = playSeVer2( spep_2 + 748, 1423, "",spep_2 + 904, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 748, SE045, 63 );
setPitch( spep_2 + 748, SE045, -600 );
setTimeStretch( SE045, 0.6, 30, 4 );

--爆発
SE046 = playSeVer2( spep_2 + 870, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 870, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 750); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 948F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 対峙から移動 ef_001
-------------------------------------------------
--MAX_FRAME_0 = 154;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙から移動 (ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 66;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -198.6, 0 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -198.6, 0 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -198.6, 0 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -198.7, 0 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -198.6, 0 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -198.6, 0 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -198.7, 0 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -198.8, 0 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -198.8, 0 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -198.9, 0 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -198.9, 0 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -199, 0 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -199, 0 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -199.1, 0 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -199.1, 0 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -199.2, 0 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -199.2, 0 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -199.3, 0 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -199.3, 0 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -199.4, 0 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -199.4, 0 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -199.5, 0 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -199.5, 0 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -199.6, 0 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -199.6, 0 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -199.7, 0 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -199.7, 0 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -199.8, 0 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -199.8, 0 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -199.9, 0 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -199.9, 0 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -200, 0 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -200, 0 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -200.1, 0 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -200.1, 0 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -200.2, 0 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -200.2, 0 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -200.3, 0 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -200.3, 0 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -200.4, 0 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -200.4, 0 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -200.5, 0 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 58 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 178, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
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

--空気音
SE003 = playSeVer2( spep_0 + 36, 1427, "",spep_0 + 146, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 63 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 126, 1245, "",spep_0 + 166, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 126, SE005, 50 );
SE006 = playSeVer2( spep_0 + 126, 1109, "",spep_0 + 168, 0, 14, -1);	

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 154F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--初手アッパー
SE009 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);	
SE010 = playSeVer2( spep_1 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 68 );
SE011 = playSeVer2( spep_1 + 90, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 82 );

-------------------------------------------------
-- アッパー→着弾発射→フィニッシュ ef_002
-------------------------------------------------
MAX_FRAME_2 = 948;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- アッパー→着弾発射→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 8 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 88 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 8 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 8 + OFFSET_X, 1, 19.9, 38.4 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 19.9, 38.4 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 12.8, 52 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 12.8, 52 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 10, 64.2 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 10, 64.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 3.3, 68.5 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 3.3, 68.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 3.8, 67.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 3.8, 67.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 6.4, 71.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 6.4, 71.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 4.5, 69.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 4.5, 69.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 6.3, 72 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 6.3, 72 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 4.1, 71.3 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 4.1, 71.3 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 5.8, 74.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 5.8, 74.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 2.6, 77.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 2.6, 77.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 2.5, 78 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 2.5, 78 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 2.4, 78.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 2.4, 78.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 2.3, 79.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 2.3, 79.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 2.2, 79.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 2.2, 79.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 2.1, 80.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 2.1, 80.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 2, 80.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 2, 80.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 1.9, 81.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 1.9, 81.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 1.8, 81.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 1.8, 81.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 1.8, 82 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 1.8, 82 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 1.7, 82.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 1.7, 82.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 1.6, 82.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 1.6, 82.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 1.5, 83.2 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 1.5, 83.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 1.5, 83.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 1.5, 83.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 1.4, 84 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 1.4, 84 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 1.3, 84.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 1.3, 84.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 1.2, 84.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 1.2, 84.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 1.2, 85.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 1.2, 85.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 1.1, 85.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 1.1, 85.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 1, 85.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 1, 85.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 1, 86.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 1, 86.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 0.9, 86.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 0.9, 86.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 0.8, 86.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 0.8, 86.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 0.8, 87.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 0.8, 87.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 0.7, 87.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 0.7, 87.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 0.7, 87.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 0.7, 87.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 0.6, 88.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 0.6, 88.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 0.5, 88.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 0.5, 88.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 0.5, 88.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 0.5, 88.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 0.4, 89 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 0.4, 89 , 0 );

setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 8 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, 61.6 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, 61.6 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, 61.5 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 61.5 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 61 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 61 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 60.7 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 60.7 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 60.6 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 60.6 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 60.4 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 60.4 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 60.2 );

--敵の動き2
setDisp( spep_2 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 180 + OFFSET_X, 1, 9.7, -114.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 9.7, -114.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 9.7, -114.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 9.7, -114.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 9.7, -115.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 9.7, -115.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 9.7, -115.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 9.7, -115.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 9.7, -116 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 9.7, -116 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 9.7, -116.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 9.7, -116.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 9.7, -117 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 9.7, -117 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 9.7, -117.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 9.7, -117.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 9.7, -117.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 9.7, -117.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 9.7, -118.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 9.7, -118.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 9.7, -118.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 9.7, -118.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -36.8, -149.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -36.8, -149.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -124.1, -191.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -124.1, -191.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -211.4, -232.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -211.4, -232.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -298.7, -273.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -298.7, -273.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -376.2, -312.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -376.2, -312.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -453.7, -351.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -453.7, -351.2 , 0 );

setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 180 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 58 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 58 );

--敵の動き3
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 262 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, -422.6, -180.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -422.6, -180.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -413.8, -172 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -413.8, -172 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -404.9, -163.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -404.9, -163.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -396, -154.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -396, -154.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -391.6, -149.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -391.6, -149.7 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, 80 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 80 );

--敵の動き4
setDisp( spep_2 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 268 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 268 + OFFSET_X, 1, -57.4, 43.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -57.4, 43.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -99.4, 7.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -99.4, 7.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -120.4, 27.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -120.4, 27.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -140.4, 6.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -140.4, 6.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -143.9, -14.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -143.9, -14.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -128.4, 5.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -128.4, 5.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -92.9, 26.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -92.9, 26.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -131.4, 4.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -131.4, 4.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -102.9, 15.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -102.9, 15.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -131.9, 6.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -131.9, 6.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -130.9, 7.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -130.9, 7.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -228.9, -16.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -228.9, -16.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -237.2, -28.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -237.2, -28.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -245.3, -40.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -245.3, -40.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -253.5, -52.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -253.5, -52.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -261.5, -64.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -261.5, -64.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -269.8, -76.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -269.8, -76.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -273.8, -82.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -273.8, -82.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -277.9, -88.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -277.9, -88.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -282, -94.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -282, -94.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -285.2, -99.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -285.2, -99.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -288.6, -105.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -288.6, -105.6 , 0 );

setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_2 + 268 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -25 );

--敵の動き5
setDisp( spep_2 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 326 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 326 + OFFSET_X, 1, 360.3, 256.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 360.3, 256.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 343.1, 252.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 343.1, 252.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 317.3, 245.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 317.3, 245.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 300.2, 241.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 300.2, 241.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 274.3, 234.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 274.3, 234.6 , 0 );

setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 326 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -25 );

--敵の動き6
setDisp( spep_2 + 358 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 360 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 358 + OFFSET_X, 1, 226.6, 175.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 226.6, 175.5 , 0 );

setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.49, 0.49 );

setRotateKey( spep_2 + 358 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -25 );

--敵の動き7
setDisp( spep_2 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 450 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 380 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 396 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 364 + OFFSET_X, 1, 28.2, 142.7 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 28.2, 142.7 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 43.7, 142.6 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 43.7, 142.6 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 43.7, 142.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 43.7, 142.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 43.7, 127.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 43.7, 127.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 43.7, 142.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 43.7, 142.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 43.7, 121 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 43.7, 121 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 43.6, 105.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 43.6, 105.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 43.6, 121 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 43.6, 121 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 200.8, 264.5 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 200.8, 264.5 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 209.1, 262.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 209.1, 262.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 225.6, 258.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 225.6, 258.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 242.2, 254.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 242.2, 254.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 258.7, 250.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 258.7, 250.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -14.1, -318 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -14.1, -318 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -14.2, -308.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -14.2, -308.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -14.2, -303.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -14.2, -303.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -14.2, -300.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -14.2, -300.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -14.2, -297.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -14.2, -297.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -14.2, -295.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -14.2, -295.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -14.2, -293.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -14.2, -293.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -14.2, -291.5 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -14.2, -291.5 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -14.2, -289.7 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -14.2, -289.7 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -14.2, -288 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -14.2, -288 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -14.2, -286.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -14.2, -286.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -14.2, -285 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -14.2, -285 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -14.2, -283.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -14.2, -283.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -14.2, -282.3 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -14.2, -282.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -14.2, -281.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -14.2, -281.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -14.2, -279.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -14.2, -279.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -14.2, -278.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -14.2, -278.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -14.2, -277.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -14.2, -277.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -14.2, -276.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -14.2, -276.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -14.2, -275.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -14.2, -275.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -14.2, -274.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -14.2, -274.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -14.2, -273.4 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -14.2, -273.4 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -14.2, -272.4 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -14.2, -272.4 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -14.2, -271.4 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -14.2, -271.4 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -14.2, -270.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -14.2, -270.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -14.2, -269.6 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -14.2, -269.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -14.1, -268.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -14.1, -268.7 , 0 );

setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 364 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -89 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -89 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -84 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -91 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -91 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 17 );


--敵の動き8
setDisp( spep_2 + 620 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 878 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 620 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 620 + OFFSET_X, 1, -30.4, 9.6 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -30.4, 9.6 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -47.4, -52.4 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -47.4, -52.4 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -64.4, -98.4 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -64.4, -98.4 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -6.9, -71.8 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -6.9, -71.8 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -51.5, -114.5 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -51.5, -114.5 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -62, -73.4 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -62, -73.4 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -24.9, -121 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -24.9, -121 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 4.2, -83.8 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 4.2, -83.8 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -40, -117 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -40, -117 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -20.9, -86.3 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -20.9, -86.3 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -7.4, -122.3 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -7.4, -122.3 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -15.9, -88.3 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -15.9, -88.3 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 3.1, -132.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 3.1, -132.3 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -45.4, -103.8 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -45.4, -103.8 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -42.4, -129.8 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -42.4, -129.8 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -22.9, -119.8 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -22.9, -119.8 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -33.9, -136.8 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -33.9, -136.8 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, -46.4, -124.8 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -46.4, -124.8 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -36.4, -147.3 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -36.4, -147.3 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, -43.9, -137.8 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -43.9, -137.8 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, -36.4, -144.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -36.4, -144.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -36.9, -138.3 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -36.9, -138.3 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -42.9, -144.3 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -42.9, -144.3 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -41.4, -136.3 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -41.4, -136.3 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -45.4, -145.3 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -45.4, -145.3 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -43.9, -138.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -43.9, -138.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -42.4, -142.3 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -42.4, -142.3 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -35.4, -166.8 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, -35.4, -166.8 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, -32.4, -169.8 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, -32.4, -169.8 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, -30.9, -169.8 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -30.9, -169.8 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -31.9, -177.8 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -31.9, -177.8 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -25.4, -182.8 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -25.4, -182.8 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -24.9, -184.3 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -24.9, -184.3 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -24.9, -187.8 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -24.9, -187.8 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -27.9, -193.8 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -27.9, -193.8 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -26.9, -194.3 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -26.9, -194.3 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -24.9, -197.3 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, -24.9, -197.3 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, -25.4, -195.8 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, -25.4, -195.8 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, -27.9, -196.8 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, -27.9, -196.8 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, -27.9, -194.3 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, -27.9, -194.3 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, -32.4, -195.8 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, -32.4, -195.8 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, -33.9, -194.3 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -33.9, -194.3 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -30.4, -185.3 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -30.4, -185.3 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -33.9, -163.3 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, -33.9, -163.3 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -21.4, -131.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, -21.4, -131.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, -6.4, -58.8 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, -6.4, -58.8 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 1.1, -71.8 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 1.1, -71.8 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 1.1, 52.3 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 1.1, 52.3 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 1.1, -136.8 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 1.1, -136.8 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 1.1, -33.8 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 1.1, -33.8 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 4.1, -2.8 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 4.1, -2.8 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 1.1, -58.5 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 1.1, -58.5 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 0.7, -53.9 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 0.7, -53.9 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 0.7, -26.9 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 0.7, -26.9 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 0.9, -65.9 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 0.9, -65.9 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 1.5, -52.1 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 1.5, -52.1 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 2.4, -34.7 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 2.4, -34.7 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 3.2, -85.8 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 3.2, -85.8 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 3.7, -91.9 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, 3.7, -91.9 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, 4.1, -89.1 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 4.1, -89.1 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 4.8, -89.6 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 4.8, -89.6 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 4.6, -95 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, 4.6, -95 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 3.1, -99.2 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, 3.1, -99.2 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, 2, -104 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, 2, -104 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, 0.7, -110.1 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, 0.7, -110.1 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, -0.5, -109.6 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, -0.5, -109.6 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, 2.5, -117.1 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, 2.5, -117.1 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, -0.5, -121.6 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, -0.5, -121.6 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, 0.1, 521.1 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, 0.1, 521.1 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, 0.1, 315.8 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, 0.1, 315.8 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, 0.1, 110.5 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, 0.1, 110.5 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, 0.1, -94.8 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, 0.1, -94.8 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -39.7, -64.3 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, -39.7, -64.3 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 21.2, -128.3 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, 21.2, -128.3 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, 9, -134.4 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, 9, -134.4 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, -9.2, -116.2 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, -9.2, -116.2 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 0, -57.8 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 0, -57.8 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, 2.3, -61.7 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, 2.3, -61.7 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, -4.1, -61.7 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, -4.1, -61.7 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, -12.4, -58.5 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, -12.4, -58.5 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, -15.6, -52.1 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, -15.6, -52.1 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, -2.8, -65.5 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, -2.8, -65.5 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, -5.3, -66.8 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, -5.3, -66.8 , 0 );
setMoveKey( spep_2 + 800 + OFFSET_X, 1, -9.2, -63 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, -9.2, -63 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, -7.3, -59.1 , 0 );
setMoveKey( spep_2 + 803 + OFFSET_X, 1, -7.3, -59.1 , 0 );
setMoveKey( spep_2 + 804 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 805 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 806 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 809 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 810 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 811 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 812 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 815 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 817 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 818 + OFFSET_X, 1, 2.3, -61.7 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, 2.3, -61.7 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, -4.1, -61.7 , 0 );
setMoveKey( spep_2 + 821 + OFFSET_X, 1, -4.1, -61.7 , 0 );
setMoveKey( spep_2 + 822 + OFFSET_X, 1, -12.4, -58.5 , 0 );
setMoveKey( spep_2 + 823 + OFFSET_X, 1, -12.4, -58.5 , 0 );
setMoveKey( spep_2 + 824 + OFFSET_X, 1, -15.6, -52.1 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, -15.6, -52.1 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, -2.8, -65.5 , 0 );
setMoveKey( spep_2 + 827 + OFFSET_X, 1, -2.8, -65.5 , 0 );
setMoveKey( spep_2 + 828 + OFFSET_X, 1, -5.3, -66.8 , 0 );
setMoveKey( spep_2 + 829 + OFFSET_X, 1, -5.3, -66.8 , 0 );
setMoveKey( spep_2 + 830 + OFFSET_X, 1, -9.2, -63 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, -9.2, -63 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, -7.3, -59.1 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, -7.3, -59.1 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, 2.3, -61.7 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, 2.3, -61.7 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, -4.1, -61.7 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, -4.1, -61.7 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, -12.4, -58.5 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, -12.4, -58.5 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, -15.6, -52.1 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, -15.6, -52.1 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, -2.8, -65.5 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, -2.8, -65.5 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, -5.3, -66.8 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, -5.3, -66.8 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, -9.2, -63 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, -9.2, -63 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, -7.3, -59.1 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, -7.3, -59.1 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, -7.9, -53.4 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, -9.8, -66.8 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, -16.3, -71.9 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, -2.8, -54.6 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, -10.5, -57.2 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, -0.9, -58.5 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, -0.2, -63 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, 2.3, -101.7 , 0 );

setScaleKey( spep_2 + 620 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 681 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 682 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 693 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 707 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 708 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 715 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 716 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 719 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 723 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 724 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 729 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 731 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 732 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 744 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 749 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 750 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 751 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 755 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 756 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 878 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 620 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 623 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, 65 );
setRotateKey( spep_2 + 627 + OFFSET_X, 1, 65 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, 57 );
setRotateKey( spep_2 + 631 + OFFSET_X, 1, 57 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, 59 );
setRotateKey( spep_2 + 755 + OFFSET_X, 1, 59 );
setRotateKey( spep_2 + 756 + OFFSET_X, 1, 86 );
setRotateKey( spep_2 + 757 + OFFSET_X, 1, 86 );
setRotateKey( spep_2 + 758 + OFFSET_X, 1, 88.3 );
setRotateKey( spep_2 + 759 + OFFSET_X, 1, 88.3 );
setRotateKey( spep_2 + 760 + OFFSET_X, 1, 90.5 );
setRotateKey( spep_2 + 761 + OFFSET_X, 1, 90.5 );
setRotateKey( spep_2 + 762 + OFFSET_X, 1, 92.8 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, 92.8 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 807 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 808 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 821 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 822 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 837 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 838 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 851 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 852 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 867 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 868 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 878 + OFFSET_X, 1, 90 );

-- ** 音 ** --
--初手アッパー
SE008 = playSeVer2( spep_2 + 8, 1278, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE008, 50 );
setStartTimeMs( SE008,  900 );
SE012 = playSeVer2( spep_2 + 8, 1190, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 14, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE013, 67 );

--画面遷移
SE014 = playSeVer2( spep_2 + 74, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE014, 79 );

--気ダメ
SE015 = playSeVer2( spep_2 + 172, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 172, 1503, "", 0, 0, 0, -1);

--敵向かっていく
SE017 = playSeVer2( spep_2 + 194, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE017, 148 );
setPitch( spep_2 + 194, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 4 );

--パンチ
SE018 = playSeVer2( spep_2 + 246, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 254, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 254, 1414, "", 0, 0, 0, -1);

--追いかける
SE021 = playSeVer2( spep_2 + 304, 1109, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 306, 1277, "", 0, 0, 0, -1);

--殴り飛ばす
SE023 = playSeVer2( spep_2 + 336, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE023, 166 );
SE024 = playSeVer2( spep_2 + 344, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 344, 1359, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 360, 1190, "", 0, 12, 0, -1);
setStartTimeMs( SE026,  33 );

--ベジータ浮かび上がる
SE027 = playSeVer2( spep_2 + 384, 1183, "",spep_2 + 534, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 384, SE027, 60 );
SE028 = playSeVer2( spep_2 + 384, 1227, "",spep_2 + 614, 0, 134, -1);
SE029 = playSeVer2( spep_2 + 384, 1508, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE029, 67 );
SE030 = playSeVer2( spep_2 + 440, 44, "", 0, 0, 0, -1);

--回転
SE031 = playSeVer2( spep_2 + 544, 1117, "",spep_2 + 616, 0, 52, -1);
SE032 = playSeVer2( spep_2 + 560, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE032, 158 );
SE033 = playSeVer2( spep_2 + 560, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE033, 112 );
SE035 = playSeVer2( spep_2 + 594, 1504, "", 0, 0, 0, -1);

--気ダメ
SE034 = playSeVer2( spep_2 + 582, 1035, "", 0, 0, 0, -1);

--敵ヒット
SE036 = playSeVer2( spep_2 + 612, 1153, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 612, 1120, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 624, 1187, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 628, 1148, "",spep_2 + 710, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 628, SE039, 43 );

--敵吹き飛ぶ
SE040 = playSeVer2( spep_2 + 696, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 696, 1121, "",spep_2 + 808, 0, 54, -1);

--岩激突
SE042 = playSeVer2( spep_2 + 746, 1010, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 748, 1168, "",spep_2 + 896, 0, 28, -1);
SE044 = playSeVer2( spep_2 + 748, 1044, "",spep_2 + 908, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 748, SE044, 76 );
SE045 = playSeVer2( spep_2 + 748, 1423, "",spep_2 + 904, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 748, SE045, 63 );
setPitch( spep_2 + 748, SE045, -600 );
setTimeStretch( SE045, 0.6, 30, 4 );

--爆発
SE046 = playSeVer2( spep_2 + 870, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 870, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 750); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 948F

end