--1032580:LR_超サイヤ人3ベジータ(DAIMA)_EX必殺技：ファイナルバーストキャノン
--sp_effect_b1_00354
--sp2971

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164382; --対峙から移動 ef_001
SP_02  = 164383; --アッパー→着弾発射→フィニッシュ ef_002

--エフェクト(敵側)
SP_02r  = 164399; --アッパー→着弾発射→フィニッシュ ef_002r


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

ENABLE_AUTO_TIME_STRETCH(0.9);

DISABLE_VOICE_IF_DOUBLE_SPEED();

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 0, 1, 198.6, 0 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 198.6, 0 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 198.7, 0 , 0 );
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
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
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

-- ** 音 ** --
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

spep_2 = showCardCutinEx(spep_1, 0);

--初手アッパー
SE009 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);	
SE010 = playSeVer2( spep_1 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 68 );
SE011 = playSeVer2( spep_1 + 90, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 82 );

-------------------------------------------------
-- アッパー→着弾発射→フィニッシュ ef_002
-------------------------------------------------
MAX_FRAME_2 = 870;

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
setDisp( spep_2 + 426 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 380 + OFFSET_X, 1, 5 );

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
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -291.5, 169.3 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -291.5, 169.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -295.5, 141.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -295.5, 141.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -292.5, 141.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -292.5, 141.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -294.4, 111.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -294.4, 111.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -291.9, 110.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -291.9, 110.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -289.4, 110.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -289.4, 110.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -293.3, 82.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -293.3, 82.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -291.3, 83.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -291.3, 83.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -295.4, 25.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -295.4, 25.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -284.5, 8.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -284.5, 8.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -283.5, 10.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -283.5, 10.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -282.5, 12.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -282.5, 12.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -257.7, 9.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -257.7, 9.1 , 0 );

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
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.15, 0.15 );

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
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -20 );

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

--追いかける
SE027 = playSeVer2( spep_2 + 380, 1035, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 380, 1503, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 394, 1277, "", 0, 0, 0, -1);

--背景音
SE030 = playSeVer2( spep_2 + 418, 1264, "",spep_2 + 618, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 418, SE030, 71 );

--気弾溜め
SE031 = playSeVer2( spep_2 + 478, 1394, "",spep_2 + 616, 0, 28, -1);
SE032 = playSeVer2( spep_2 + 492, 1441, "",spep_2 + 618, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 492, SE032, 76 );
SE033 = playSeVer2( spep_2 + 492, 1191, "",spep_2 + 616, 0, 26, -1);
SE034 = playSeVer2( spep_2 + 492, 1489, "", 0, 0, 0, -1);

--気弾発射
SE035 = playSeVer2( spep_2 + 594, 1146, "",spep_2 + 750, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 594, SE035, 81 );
SE036 = playSeVer2( spep_2 + 594, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 594, SE036, 63 );
SE037 = playSeVer2( spep_2 + 594, 1177, "",spep_2 + 744, 0, 20, -1);
SE038 = playSeVer2( spep_2 + 594, 1193, "",spep_2 + 752, 0, 30, -1);

--爆発
SE039 = playSeVer2( spep_2 + 718, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 718, 1067, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 718, 1044, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「くらえー！！」
playVoice( spep_2 + 418, 1142 );
setVoiceVolume( spep_2 + 418, 1142, 128 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 750); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 870F

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 0, 1, -198.6, 0 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -198.6, 0 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -198.7, 0 , 0 );
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
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
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

-- ** 音 ** --
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

spep_2 = showCardCutinEx(spep_1, 0);

--初手アッパー
SE009 = playSeVer2( spep_1 + 82, 1189, "", 0, 0, 0, -1);	
SE010 = playSeVer2( spep_1 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 68 );
SE011 = playSeVer2( spep_1 + 90, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 82 );

-------------------------------------------------
-- アッパー→着弾発射→フィニッシュ ef_002
-------------------------------------------------
MAX_FRAME_2 = 870;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- アッパー→着弾発射→フィニッシュ(ef_002)
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
setDisp( spep_2 + 426 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 380 + OFFSET_X, 1, 105 );

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
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 291.5, 169.3 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 291.5, 169.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 295.5, 141.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 295.5, 141.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 292.5, 141.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 292.5, 141.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 294.4, 111.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 294.4, 111.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 291.9, 110.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 291.9, 110.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 289.4, 110.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 289.4, 110.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 293.3, 82.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 293.3, 82.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 291.3, 83.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 291.3, 83.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 295.4, 25.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 295.4, 25.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 284.5, 8.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 284.5, 8.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 283.5, 10.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 283.5, 10.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 282.5, 12.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 282.5, 12.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 257.7, 9.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 257.7, 9.1 , 0 );

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
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.15, 0.15 );

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
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 70 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 70 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 20 );

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

--追いかける
SE027 = playSeVer2( spep_2 + 380, 1035, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 380, 1503, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 394, 1277, "", 0, 0, 0, -1);

--背景音
SE030 = playSeVer2( spep_2 + 418, 1264, "",spep_2 + 618, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 418, SE030, 71 );

--気弾溜め
SE031 = playSeVer2( spep_2 + 478, 1394, "",spep_2 + 616, 0, 28, -1);
SE032 = playSeVer2( spep_2 + 492, 1441, "",spep_2 + 618, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 492, SE032, 76 );
SE033 = playSeVer2( spep_2 + 492, 1191, "",spep_2 + 616, 0, 26, -1);
SE034 = playSeVer2( spep_2 + 492, 1489, "", 0, 0, 0, -1);

--気弾発射
SE035 = playSeVer2( spep_2 + 594, 1146, "",spep_2 + 750, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 594, SE035, 81 );
SE036 = playSeVer2( spep_2 + 594, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 594, SE036, 63 );
SE037 = playSeVer2( spep_2 + 594, 1177, "",spep_2 + 744, 0, 20, -1);
SE038 = playSeVer2( spep_2 + 594, 1193, "",spep_2 + 752, 0, 30, -1);

--爆発
SE039 = playSeVer2( spep_2 + 718, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 718, 1067, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 718, 1044, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「くらえー！！」
-- playVoice( spep_2 + 418, 1142 );
-- setVoiceVolume( spep_2 + 418, 1142, 100 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 750); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 870F

end