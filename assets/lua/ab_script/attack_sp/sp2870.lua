--4031400:LR_超サイヤ人ゴッドSSベジータ+超サイヤ人ゴッドSS孫悟空_必殺技：戦闘民族の怒り
--sp_effect_b1_00334
--sp2870

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163934;  --ef_001  セリフ オーラため
SP_02  = 163935;  --ef_002  パンチ〜地面叩きつけ〜ラッシュ〜フィニッシュ
SP_02b = 163937;  --ef_002b パンチ〜地面叩きつけ〜ラッシュ〜フィニッシュ

--エフェクト(敵)
SP_02r = 163936;  --ef_002r パンチ〜地面叩きつけ〜ラッシュ〜フィニッシュ



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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 168;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 392);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 392, SP_01, spep_2 + 392 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --顔アップ
SE034 = playSeVer2( spep_2 + 394, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE034, 79 );
setStartTimeMs( SE034,  100 );
SE038 = playSeVer2( spep_2 + 394, 8, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_2 + 394, 1474, "",spep_2 + 604, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 394, SE035, 1009 );
SE036 = playSeVer2( spep_2 + 394, 1181, "",spep_2 + 588, 0, 56, -1);
SE037 = playSeVer2( spep_2 + 394, 1176, "",spep_2 + 596, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 394, SE037, 72 );
    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフ オーラため
-------------------------------------------------
MAX_FRAME_0 = 168;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1474, "",spep_0 + 192, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 1000 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 194, 0, 22, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 86, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 106, 1035, "",spep_0 + 172, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 68 );
SE006 = playSeVer2( spep_0 + 106, 1226, "",spep_0 + 192, 0, 18, -1);
SE007 = playSeVer2( spep_0 + 106, 1503, "", 0, 0, 0, -1);

--向かっていく
SE008 = playSeVer2( spep_0 + 128, 1504, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 158; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --168f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--初手パンチ
SE011 = playSeVer2( spep_1 + 92, 1277, "", 0, 0, 0, -1);

-------------------------------------------------
-- パンチ〜地面叩きつけ〜ラッシュ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 740;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- パンチ〜地面叩きつけ〜ラッシュ〜フィニッシュ(ef_002)
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
setDisp( spep_2 + 18 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 18 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 22 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 52 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 18 + OFFSET_X, 1, 133.2, 47.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 133.2, 47.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 167.5, 112.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 167.5, 112.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 164.2, 110.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 164.2, 110.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 177.9, 124.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 177.9, 124.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 152.8, 119.7 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 152.8, 119.7 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 153.9, 126.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 153.9, 126.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 141.4, 128.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 141.4, 128.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 142, 130.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 142, 130.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 129.6, 134.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 129.6, 134.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 123.2, 130.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 123.2, 130.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 117.1, 138.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 117.1, 138.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 113.4, 137.1 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 113.4, 137.1 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 105.2, 142.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 105.2, 142.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 104.5, 139.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 104.5, 139.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 104.9, 142.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 104.9, 142.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 41.4, 102.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 41.4, 102.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 40, 106 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 40, 106 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 39.3, 102.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 39.3, 102.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 48.5, 107.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 48.5, 107.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 49.5, 104.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 49.5, 104.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 48.1, 107.6 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 48.1, 107.6 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 47.4, 103.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 47.4, 103.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 48.5, 107.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 48.5, 107.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 49.5, 104.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 49.5, 104.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 70.5, 189.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 70.5, 189.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 7, 0.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 7, 0.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 8.1, 3.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 8.1, 3.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 9.1, 1.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 9.1, 1.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 7.7, 4.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 7.7, 4.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 7, 0.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 7, 0.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 6, -329.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 6, -329.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 5.3, -614.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 5.3, -614.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 2.4, -841.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 2.4, -841.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 0.6, -1025.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 0.6, -1025.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 0.9, -1150 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 0.9, -1150 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 1.4, -1229.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 1.4, -1229.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -0.1, -1252.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -0.1, -1252.2 , 0 );

setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 18 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 94.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 94.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 97.9 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 97.9 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 100.8 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 100.8 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 103.1 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 103.1 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 105 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 105 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 106.3 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 106.3 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 107.1 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 107.1 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 107.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 107.3 );

--敵の動き2
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 118 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 178 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, -29.4, 410.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -29.4, 410.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -29.4, 321.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -29.4, 321.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -29.4, 232.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -29.4, 232.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -29.4, 143.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -29.4, 143.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -29.4, 54.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -29.4, 54.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -29.5, -116.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -29.5, -116.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -35.6, -87.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -35.6, -87.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -29.7, -105.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -29.7, -105.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -32.6, -95.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -32.6, -95.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -29.6, -39.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -29.6, -39.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -31.1, -30.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -31.1, -30.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -29.6, -33.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -29.6, -33.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -29.6, 47.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -29.6, 47.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -29.6, 38.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -29.6, 38.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -29.7, 92.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -29.7, 92.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -29.7, 137.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -29.7, 137.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -29.8, 159.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -29.8, 159.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -29.7, 176.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -29.7, 176.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -29.7, 180.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -29.7, 180.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -29.7, 184.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -29.7, 184.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -29.7, 185.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -29.7, 185.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -29.6, 186.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -29.6, 186.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -29.6, 80.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -29.6, 80.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -35.5, -118.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -35.5, -118.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -29.6, -137.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -29.6, -137.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -32.6, -131.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -32.6, -131.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -29.6, -137.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -29.6, -137.9 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, 100 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 100 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 68.2 );

--敵の動き3
setDisp( spep_2 + 274 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 274 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 282 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 322 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 330 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 338 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 346 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 354 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 360 + OFFSET_X, 1, 107 );

--敵位置調整用
a = -120;

setMoveKey( spep_2 + 274 + OFFSET_X, 1, 22.5 + a, -128 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 22.5 + a, -128 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 14.8 + a, -146 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 14.8 + a, -146 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 30.1 + a, -136 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 30.1 + a, -136 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 14.3 + a, -135.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 14.3 + a, -135.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 168.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 168.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 163.7 + a, -147.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 163.7 + a, -147.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 155.9 + a, -166.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 155.9 + a, -166.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 170.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 170.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 27 + a, -100.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 27 + a, -100.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 40.6 + a, -110.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 40.6 + a, -110.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 170.9 + a, -37.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 170.9 + a, -37.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 168.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 168.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 42.3 + a, -100.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 42.3 + a, -100.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 27.2 + a, -100.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 27.2 + a, -100.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 40.4 + a, -110.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 40.4 + a, -110.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 155.9 + a, -47.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 155.9 + a, -47.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 170.8 + a, -37.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 170.8 + a, -37.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 155.4 + a, -37.6 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 155.4 + a, -37.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 40.6 + a, -110.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 40.6 + a, -110.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 42.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 42.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 168.7 + a, -47.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 168.7 + a, -47.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 155.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 155.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 29.5 + a, -136 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 29.5 + a, -136 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 13.7 + a, -136 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 13.7 + a, -136 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 27.5 + a, -145.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 27.5 + a, -145.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 22.5 + a, -127.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 22.5 + a, -127.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 155.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 155.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 171 + a, -156.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 171 + a, -156.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 154.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 154.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 168.6 + a, -165.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 168.6 + a, -165.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 27.6 + a, -110.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 27.6 + a, -110.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 42.9 + a, -100.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 42.9 + a, -100.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 107.3, -4.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 107.3, -4.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 142.4, -29.3 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 142.4, -29.3 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 220.4, -122.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 220.4, -122.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 246.1, -153.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 246.1, -153.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 325, -252.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 325, -252.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 600.9, -525.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 600.9, -525.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 1047.9, -1121.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 1047.9, -1121.3 , 0 );

setScaleKey( spep_2 + 274 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 6.08, 6.08 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 6.08, 6.08 );

setRotateKey( spep_2 + 274 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 7.8 );

--敵の動き4
setDisp( spep_2 + 488 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 620 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 488 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 498 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 488 + OFFSET_X, 1, 64.5, -1145.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 64.5, -1145.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 64.4, -922.3 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 64.4, -922.3 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 64.4, -699.4 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 64.4, -699.4 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 64.3, -476.5 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 64.3, -476.5 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 64.1, -253.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 64.1, -253.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 95.4, -281 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 95.4, -281 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 82.6, -294 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 82.6, -294 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 90.6, -336.6 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 90.6, -336.6 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 69.3, -295.6 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 69.3, -295.6 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 91.1, -364.6 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 91.1, -364.6 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 81.1, -291.5 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 81.1, -291.5 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 75, -241.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 75, -241.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 85.3, -300.3 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 85.3, -300.3 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 84.5, -313.3 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 84.5, -313.3 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 84.2, -289.3 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 84.2, -289.3 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 76.5, -330.4 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 76.5, -330.4 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 77.8, -306.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 77.8, -306.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 84.5, -336.5 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 84.5, -336.5 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 76.2, -311.8 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 76.2, -311.8 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 78.1, -344.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 78.1, -344.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 84.2, -357.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 84.2, -357.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 27.1, -319.9 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 27.1, -319.9 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 39.8, -296.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 39.8, -296.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 22.1, -311.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 22.1, -311.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 9.4, -290.3 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 9.4, -290.3 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 21.8, -301.6 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 13, -314.5 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 4.7, -293.1 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 13.1, -313.5 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 13.1, -313.5 , 0 );

setScaleKey( spep_2 + 488 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 10.51, 10.51 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 10.51, 10.51 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 11.89, 11.89 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 11.89, 11.89 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 17.25, 17.25 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 17.25, 17.25 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 16.59, 16.59 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 16.59, 16.59 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 16.31, 16.31 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 16.31, 16.31 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 488 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 503 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 505 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 515 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 516 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 517 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 518 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 519 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 521 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 522 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, 62.3 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, 83.3 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, 83.3 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, 79.3 );
setRotateKey( spep_2 + 620 + OFFSET_X, 1, 79.3 );


-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_2 + 2, 1182, "",spep_2 + 78, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 2, SE010, 153 );

--初手パンチ
SE012 = playSeVer2( spep_2 + 24, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 24, 1009, "", 0, 0, 0, -1);

--殴り落とす
SE014 = playSeVer2( spep_2 + 28, 1359, "",spep_2 + 92, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 28, SE014, 65 );
SE015 = playSeVer2( spep_2 + 72, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 72, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 80, 1277, "", 0, 0, 0, -1);

--地面激突
SE017 = playSeVer2( spep_2 + 66, 1121, "",spep_2 + 224, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 66, SE017, 120 );
setPitch( spep_2 + 66, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );

--ラッシュ
SE019 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE019, 86 );
SE020 = playSeVer2( spep_2 + 178, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE020, 86 );
SE021 = playSeVer2( spep_2 + 182, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE021, 85 );
SE022 = playSeVer2( spep_2 + 188, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE022, 84 );
SE023 = playSeVer2( spep_2 + 202, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE023, 71 );
SE024 = playSeVer2( spep_2 + 218, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE024, 81 );
SE025 = playSeVer2( spep_2 + 234, 1010, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 248, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 268, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE027, 79 );
SE028 = playSeVer2( spep_2 + 280, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE028, 83 );
SE029 = playSeVer2( spep_2 + 298, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE029, 89 );
setPitch( spep_2 + 298, SE029, -500 );
setTimeStretch( SE029, 0.67, 30, 4 );
SE030 = playSeVer2( spep_2 + 312, 1414, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 320, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 338, 1009, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 352, 1010, "", 0, 0, 0, -1);

--顔アップ
SE034 = playSeVer2( spep_2 + 362, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_2 + 362, SE034, 79 );
setStartTimeMs( SE034,  100 );
SE038 = playSeVer2( spep_2 + 364, 8, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 430, 1116, "",spep_2 + 490, 0, 24, -1);

--オーラ
SE035 = playSeVer2( spep_2 + 366, 1474, "",spep_2 + 604, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 366, SE035, 1009 );
SE036 = playSeVer2( spep_2 + 366, 1181, "",spep_2 + 588, 0, 56, -1);
SE037 = playSeVer2( spep_2 + 366, 1176, "",spep_2 + 596, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 366, SE037, 72 );

--ラストパンチ
SE040 = playSeVer2( spep_2 + 472, 1004, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 496, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE041, 188 );
SE042 = playSeVer2( spep_2 + 500, 1123, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 502, 1187, "", 0, 0, 0, -1);

--爆発
SE044 = playSeVer2( spep_2 + 538, 1068, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 538, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE045, 81 );
SE046 = playSeVer2( spep_2 + 620, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 634, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 630 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  740f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- セリフ オーラため
-------------------------------------------------
MAX_FRAME_0 = 168;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1474, "",spep_0 + 192, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 1000 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 194, 0, 22, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 86, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 106, 1035, "",spep_0 + 172, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 68 );
SE006 = playSeVer2( spep_0 + 106, 1226, "",spep_0 + 192, 0, 18, -1);
SE007 = playSeVer2( spep_0 + 106, 1503, "", 0, 0, 0, -1);

--向かっていく
SE008 = playSeVer2( spep_0 + 128, 1504, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 158; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --168f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--初手パンチ
SE011 = playSeVer2( spep_1 + 92, 1277, "", 0, 0, 0, -1);

-------------------------------------------------
-- パンチ〜地面叩きつけ〜ラッシュ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 740;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- パンチ〜地面叩きつけ〜ラッシュ〜フィニッシュ(ef_002r)
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
setDisp( spep_2 + 18 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 18 + OFFSET_X, 1,4 );
changeAnime( spep_2 + 22 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 52 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 18 + OFFSET_X, 1, -133.2, 47.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -133.2, 47.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -167.5, 112.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -167.5, 112.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -164.2, 110.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -164.2, 110.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -177.9, 124.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -177.9, 124.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -152.8, 119.7 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -152.8, 119.7 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -153.9, 126.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -153.9, 126.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -141.4, 128.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -141.4, 128.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -142, 130.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -142, 130.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -129.6, 134.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -129.6, 134.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -123.2, 130.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -123.2, 130.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -117.1, 138.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -117.1, 138.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -113.4, 137.1 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -113.4, 137.1 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -105.2, 142.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -105.2, 142.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -104.5, 139.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -104.5, 139.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -104.9, 142.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -104.9, 142.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -41.4, 102.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -41.4, 102.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -40, 106 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -40, 106 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -39.3, 102.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -39.3, 102.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -48.5, 107.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -48.5, 107.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -49.5, 104.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -49.5, 104.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -48.1, 107.6 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -48.1, 107.6 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -47.4, 103.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -47.4, 103.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -48.5, 107.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -48.5, 107.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -49.5, 104.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -49.5, 104.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -70.5, 189.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -70.5, 189.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -7, 0.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -7, 0.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -8.1, 3.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -8.1, 3.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -9.1, 1.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -9.1, 1.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -7.7, 4.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -7.7, 4.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -7, 0.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -7, 0.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -6, -329.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -6, -329.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -5.3, -614.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -5.3, -614.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -2.4, -841.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -2.4, -841.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -0.6, -1025.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -0.6, -1025.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -0.9, -1150 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -0.9, -1150 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -1.4, -1229.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -1.4, -1229.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 0.1, -1252.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 0.1, -1252.2 , 0 );

setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 18 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -87.7 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -87.7 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -94.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -94.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -97.9 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -97.9 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -103.1 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -103.1 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -105 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -105 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -106.3 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -106.3 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -107.1 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -107.1 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -107.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -107.3 );

--敵の動き2
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 118 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 120 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 178 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, 29.4, 410.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 29.4, 410.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 29.4, 321.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 29.4, 321.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 29.4, 232.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 29.4, 232.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 29.4, 143.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 29.4, 143.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 29.4, 54.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 29.4, 54.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 29.5, -116.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 29.5, -116.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 35.6, -87.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 35.6, -87.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 29.7, -105.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 29.7, -105.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 32.6, -95.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 32.6, -95.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 29.6, -39.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 29.6, -39.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 31.1, -30.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 31.1, -30.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 29.6, -33.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 29.6, -33.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 29.6, 47.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 29.6, 47.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 29.6, 38.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 29.6, 38.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 29.7, 92.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 29.7, 92.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 29.7, 137.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 29.7, 137.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 29.8, 159.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 29.8, 159.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 29.7, 176.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 29.7, 176.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 29.7, 180.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 29.7, 180.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 29.7, 184.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 29.7, 184.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 29.7, 185.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 29.7, 185.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 29.6, 186.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 29.6, 186.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 29.6, 80.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 29.6, 80.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 35.5, -118.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 35.5, -118.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 29.6, -137.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 29.6, -137.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 32.6, -131.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 32.6, -131.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 29.6, -137.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 29.6, -137.9 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, -100 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -100 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -92.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -92.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -68.2 );

--敵の動き3
setDisp( spep_2 + 274 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 274 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 282 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 290 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 298 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 306 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 314 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 322 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 330 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 338 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 346 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 354 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 360 + OFFSET_X, 1,7 );

--敵位置調整用
a = -120;

setMoveKey( spep_2 + 274 + OFFSET_X, 1, -22.5 + a, -128 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -22.5 + a, -128 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -14.8 + a, -146 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -14.8 + a, -146 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -30.1 + a, -136 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -30.1 + a, -136 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -14.3 + a, -135.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -14.3 + a, -135.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -168.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -168.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -163.7 + a, -147.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -163.7 + a, -147.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -155.9 + a, -166.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -155.9 + a, -166.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -170.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -170.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -27 + a, -100.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -27 + a, -100.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -40.6 + a, -110.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -40.6 + a, -110.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -170.9 + a, -37.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -170.9 + a, -37.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -168.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -168.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -42.3 + a, -100.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -42.3 + a, -100.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -27.2 + a, -100.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -27.2 + a, -100.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -40.4 + a, -110.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -40.4 + a, -110.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -155.9 + a, -47.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -155.9 + a, -47.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -170.8 + a, -37.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -170.8 + a, -37.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -155.4 + a, -37.6 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -155.4 + a, -37.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -40.6 + a, -110.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -40.6 + a, -110.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -27.9 + a, -110.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -42.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -42.5 + a, -100.3 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -155.2 + a, -37.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -168.7 + a, -47.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -168.7 + a, -47.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -163.7 + a, -29.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -155.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -155.7 + a, -47.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -29.5 + a, -136 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -29.5 + a, -136 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -13.7 + a, -136 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -13.7 + a, -136 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -27.5 + a, -145.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -27.5 + a, -145.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -22.5 + a, -127.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -22.5 + a, -127.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -155.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -155.7 + a, -166.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -171 + a, -156.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -171 + a, -156.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -154.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -154.9 + a, -156.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -168.6 + a, -165.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -168.6 + a, -165.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -35.6 + a, -92.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -27.6 + a, -110.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -27.6 + a, -110.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -42.9 + a, -100.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -42.9 + a, -100.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -107.3, -4.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -107.3, -4.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -142.4, -29.3 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -142.4, -29.3 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -220.4, -122.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -220.4, -122.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -246.1, -153.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -246.1, -153.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -325, -252.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -325, -252.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -600.9, -525.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -600.9, -525.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -1047.9, -1121.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -1047.9, -1121.3 , 0 );

setScaleKey( spep_2 + 274 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 6.08, 6.08 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 6.08, 6.08 );

setRotateKey( spep_2 + 274 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -7.8 );

--敵の動き4
setDisp( spep_2 + 488 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 620 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 488 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 498 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 488 + OFFSET_X, 1, -64.5, -1145.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -64.5, -1145.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -64.4, -922.3 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -64.4, -922.3 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -64.4, -699.4 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -64.4, -699.4 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -64.3, -476.5 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -64.3, -476.5 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -64.1, -253.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -64.1, -253.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -95.4, -281 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -95.4, -281 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -82.6, -294 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -82.6, -294 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -90.6, -336.6 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -90.6, -336.6 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -69.3, -295.6 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -69.3, -295.6 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -91.1, -364.6 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -91.1, -364.6 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -81.1, -291.5 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -81.1, -291.5 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -75, -241.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -75, -241.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -85.3, -300.3 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -85.3, -300.3 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -84.5, -313.3 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -84.5, -313.3 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -84.2, -289.3 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -84.2, -289.3 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -76.5, -330.4 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -76.5, -330.4 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -77.8, -306.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -77.8, -306.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -84.5, -336.5 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -84.5, -336.5 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -76.2, -311.8 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -76.2, -311.8 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -78.1, -344.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -78.1, -344.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -84.2, -357.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -84.2, -357.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -27.1, -319.9 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -27.1, -319.9 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -39.8, -296.4 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -39.8, -296.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -22.1, -311.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -22.1, -311.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -9.4, -290.3 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -9.4, -290.3 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -21.8, -301.6 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -13, -314.5 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -4.7, -293.1 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -13.1, -313.5 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -13.1, -313.5 , 0 );

setScaleKey( spep_2 + 488 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 10.51, 10.51 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 10.51, 10.51 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 11.89, 11.89 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 11.89, 11.89 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 17.25, 17.25 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 17.25, 17.25 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 16.59, 16.59 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 16.59, 16.59 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 16.31, 16.31 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 16.31, 16.31 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 15.96, 15.96 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 14.6, 14.6 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 15.27, 15.27 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 488 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 503 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 505 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 515 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 516 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 517 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 518 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 519 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 521 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 522 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, -83.3 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, -83.3 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -79.3 );
setRotateKey( spep_2 + 620 + OFFSET_X, 1, -79.3 );


-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_2 + 2, 1182, "",spep_2 + 78, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 2, SE010, 153 );

--初手パンチ
SE012 = playSeVer2( spep_2 + 24, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 24, 1009, "", 0, 0, 0, -1);

--殴り落とす
SE014 = playSeVer2( spep_2 + 28, 1359, "",spep_2 + 92, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 28, SE014, 65 );
SE015 = playSeVer2( spep_2 + 72, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 72, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 80, 1277, "", 0, 0, 0, -1);

--地面激突
SE017 = playSeVer2( spep_2 + 66, 1121, "",spep_2 + 224, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 66, SE017, 120 );
setPitch( spep_2 + 66, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );

--ラッシュ
SE019 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE019, 86 );
SE020 = playSeVer2( spep_2 + 178, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE020, 86 );
SE021 = playSeVer2( spep_2 + 182, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE021, 85 );
SE022 = playSeVer2( spep_2 + 188, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE022, 84 );
SE023 = playSeVer2( spep_2 + 202, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE023, 71 );
SE024 = playSeVer2( spep_2 + 218, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE024, 81 );
SE025 = playSeVer2( spep_2 + 234, 1010, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 248, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 268, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE027, 79 );
SE028 = playSeVer2( spep_2 + 280, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE028, 83 );
SE029 = playSeVer2( spep_2 + 298, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE029, 89 );
setPitch( spep_2 + 298, SE029, -500 );
setTimeStretch( SE029, 0.67, 30, 4 );
SE030 = playSeVer2( spep_2 + 312, 1414, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 320, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 338, 1009, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 352, 1010, "", 0, 0, 0, -1);

--顔アップ
SE034 = playSeVer2( spep_2 + 362, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_2 + 362, SE034, 79 );
setStartTimeMs( SE034,  100 );
SE038 = playSeVer2( spep_2 + 364, 8, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 430, 1116, "",spep_2 + 490, 0, 24, -1);

--オーラ
SE035 = playSeVer2( spep_2 + 366, 1474, "",spep_2 + 604, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 366, SE035, 1009 );
SE036 = playSeVer2( spep_2 + 366, 1181, "",spep_2 + 588, 0, 56, -1);
SE037 = playSeVer2( spep_2 + 366, 1176, "",spep_2 + 596, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 366, SE037, 72 );

--ラストパンチ
SE040 = playSeVer2( spep_2 + 472, 1004, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 496, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE041, 188 );
SE042 = playSeVer2( spep_2 + 500, 1123, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 502, 1187, "", 0, 0, 0, -1);

--爆発
SE044 = playSeVer2( spep_2 + 538, 1068, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 538, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE045, 81 );
SE046 = playSeVer2( spep_2 + 620, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 634, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 630 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  740f -4


end
