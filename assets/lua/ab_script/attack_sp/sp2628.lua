--1027880:SSR_孫悟空(少年期)_ジャン拳
--sp_effect_b1_00267
--sp2628

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162277; --悟空（少年）が敵と対峙する～走ってジャンプ	ef_003r
SP_01b = 162274; --悟空（少年）が敵と対峙する～走ってジャンプ	ef_001b
SP_02 = 162278; --月をバックにジャンプした悟空（少年）～パーで叩く	ef_004r
SP_02b = 162276; --月をバックにジャンプした悟空（少年）～パーで叩いて敵が吹っ飛ぶ	ef_002b
SP_03 = 162285; --敵が吹っ飛ぶ	ef_003

--エフェクト(てき)

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 悟空（少年）が敵と対峙する～走ってジャンプ（198F）
-------------------------------------------------

MAX_FRAME_0 = 198;

-- ** エフェクト等 ** --
-- ** 例外的に背景と前景エフェクトの順番を入れ替えてプライオリティを同一にしています ** --
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

base_0f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_003r
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
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 79 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 408.4, -135 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 404.9, -134.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 404.9, -134.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 401.7, -134.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 401.7, -134.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 398.7, -134.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 398.7, -134.9 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 395.8, -134.9 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 393.1, -134.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 390.5, -134.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 388, -134.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 385.7, -134.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 383.5, -134.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 381.4, -134.9 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 379.3, -134.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 377.4, -134.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 375.5, -134.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 373.7, -134.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 372, -134.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 370.3, -134.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 368.7, -134.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 367.2, -134.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 365.8, -134.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 364.4, -134.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 363, -134.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 361.8, -134.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 360.6, -134.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 359.5, -134.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 358.4, -134.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 357.4, -134.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 356.6, -134.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 355.9, -134.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 355.7, -134.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 364.4, -142.3 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 387.8, -162.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 426.1, -195.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 479.6, -241.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 548.6, -301.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 632.7, -378 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 731.3, -470.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 842.9, -579.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 964.6, -703.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 1092.6, -838.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 1092.6, -838.4 , 0 );

setScaleKey( spep_0 + 0, 1, 4, 4 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 8.05, 8.05 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 8.05, 8.05 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--ズーム
SE002 = playSeVer2( spep_0 + 58, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE002, 71 );

--走る
SE004 = playSeVer2( spep_0 + 150, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE004, 88 );
SE005 = playSeVer2( spep_0 + 150, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 158, 1108, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 178; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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
--走る
SE007 = playSeVer2( spep_0 + 168, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE008 = playSeVer2( spep_0 + 168, 1207, "",spep_0 + 216, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 168, SE008, 82 );
SE009 = playSeVer2( spep_0 + 168, 1117, "",spep_0 + 216, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--ジャンプ中
SE011 = playSeVer2( spep_c + 88, 44, "", 0, 0, 0, 0.6);

-------------------------------------------------
-- 月をバックにジャンプした悟空（少年）～パーで叩いて敵が吹っ飛ぶ（190F）
-------------------------------------------------

MAX_FRAME_1 = 190;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_004r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_1 + 22, 1003, "", 0, 0, 0, -1);

--向かってくる
SE013 = playSeVer2( spep_1 + 56, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 56, 9, "",spep_1 + 110, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 56, SE014, 82 );
SE015 = playSeVer2( spep_1 + 56, 1019, "",spep_1 + 102, 0, 10, -1);

--グー
SE016 = playSeVer2( spep_1 + 92, 1169, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 92, 1153, "",spep_1 + 126, 0, 16, -1);

--チョキ
SE018 = playSeVer2( spep_1 + 120, 1001, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 126, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 126, 1110, "", 0, 0, 0, -1);

--パー
SE021 = playSeVer2( spep_1 + 164, 1120, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;

-------------------------------------------------
-- 敵が吹っ飛ぶ（112F）
-------------------------------------------------

MAX_FRAME_2 = 112;

-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_2, 255);

-- ** ひび割れ ** --
finish_f = entryEffect( spep_2 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_2 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 8, finish_f, 0 );
setEffRotateKey( spep_2 + 112, finish_f, 0 );
setEffAlphaKey( spep_2 + 8, finish_f, 255 );
setEffAlphaKey( spep_2 + 112, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_2 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_2 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_2 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_2 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_2 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_2 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_2 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_2 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_2 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_2 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_2 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_2 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_2 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_2 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_2 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_2 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_2 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_2 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_2 + 14, ctga, 14, 20 );

setEffMoveKey( spep_2 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_2 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_2 + 14, ctga, -10.9 );
setEffRotateKey( spep_2 + 15, ctga, -10.9 );
setEffRotateKey( spep_2 + 16, ctga, -14.9 );
setEffRotateKey( spep_2 + 17, ctga, -14.9 );
setEffRotateKey( spep_2 + 18, ctga, -10.9 );
setEffRotateKey( spep_2 + 19, ctga, -10.9 );
setEffRotateKey( spep_2 + 20, ctga, -14.9 );
setEffRotateKey( spep_2 + 21, ctga, -14.9 );
setEffRotateKey( spep_2 + 22, ctga, -10.9 );
setEffRotateKey( spep_2 + 23, ctga, -10.9 );
setEffRotateKey( spep_2 + 24, ctga, -14.9 );
setEffRotateKey( spep_2 + 25, ctga, -14.9 );
setEffRotateKey( spep_2 + 26, ctga, -10.9 );
setEffRotateKey( spep_2 + 27, ctga, -10.9 );
setEffRotateKey( spep_2 + 28, ctga, -14.9 );
setEffRotateKey( spep_2 + 112, ctga, -14.9 );

setEffAlphaKey( spep_2 + 14, ctga, 255 );
setEffAlphaKey( spep_2 + 112, ctga, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112, 1, 0 );

changeAnime( spep_2 + 0, 1, 107 );

setMoveKey( spep_2 + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_2 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_2 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_2 + 0, 1, -354.8 );
setRotateKey( spep_2 + 2, 1, -122.8 );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_2 + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_2 + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_2 + 4, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 8); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 悟空（少年）が敵と対峙する～走ってジャンプ（198F）
-------------------------------------------------

MAX_FRAME_0 = 198;

-- ** エフェクト等 ** --
-- ** 例外的に背景と前景エフェクトの順番を入れ替えてプライオリティを同一にしています ** --
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

base_0f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_003r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 79 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, -408.4, -135 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -404.9, -134.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -404.9, -134.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -401.7, -134.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -401.7, -134.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -398.7, -134.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -398.7, -134.9 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -395.8, -134.9 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -393.1, -134.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -390.5, -134.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -388, -134.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -385.7, -134.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -383.5, -134.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -381.4, -134.9 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -379.3, -134.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -377.4, -134.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -375.5, -134.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -373.7, -134.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -372, -134.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -370.3, -134.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -368.7, -134.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -367.2, -134.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -365.8, -134.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -364.4, -134.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -363, -134.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -361.8, -134.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -360.6, -134.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -359.5, -134.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -358.4, -134.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -357.4, -134.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -356.6, -134.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -355.9, -134.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -355.7, -134.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -364.4, -142.3 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -387.8, -162.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -426.1, -195.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -479.6, -241.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -548.6, -301.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -632.7, -378 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -731.3, -470.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -842.9, -579.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -964.6, -703.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -1092.6, -838.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -1092.6, -838.4 , 0 );

setScaleKey( spep_0 + 0, 1, 4, 4 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 8.05, 8.05 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 8.05, 8.05 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--ズーム
SE002 = playSeVer2( spep_0 + 58, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE002, 71 );

--走る
SE004 = playSeVer2( spep_0 + 150, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE004, 88 );
SE005 = playSeVer2( spep_0 + 150, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 158, 1108, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 178; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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
--走る
SE007 = playSeVer2( spep_0 + 168, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE008 = playSeVer2( spep_0 + 168, 1207, "",spep_0 + 216, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 168, SE008, 82 );
SE009 = playSeVer2( spep_0 + 168, 1117, "",spep_0 + 216, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--ジャンプ中
SE011 = playSeVer2( spep_c + 88, 44, "", 0, 0, 0, 0.6);

-------------------------------------------------
-- 月をバックにジャンプした悟空（少年）～パーで叩いて敵が吹っ飛ぶ（190F）
-------------------------------------------------

MAX_FRAME_1 = 190;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_004r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_1 + 22, 1003, "", 0, 0, 0, -1);

--向かってくる
SE013 = playSeVer2( spep_1 + 56, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 56, 9, "",spep_1 + 110, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 56, SE014, 82 );
SE015 = playSeVer2( spep_1 + 56, 1019, "",spep_1 + 102, 0, 10, -1);

--グー
SE016 = playSeVer2( spep_1 + 92, 1169, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 92, 1153, "",spep_1 + 126, 0, 16, -1);

--チョキ
SE018 = playSeVer2( spep_1 + 120, 1001, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 126, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 126, 1110, "", 0, 0, 0, -1);

--パー
SE021 = playSeVer2( spep_1 + 164, 1120, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;

-------------------------------------------------
-- 敵が吹っ飛ぶ（112F）
-------------------------------------------------

MAX_FRAME_2 = 112;

-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_2, 255);

-- ** ひび割れ ** --
finish_f = entryEffect( spep_2 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_2 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 8, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 112, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 8, finish_f, 0 );
setEffRotateKey( spep_2 + 112, finish_f, 0 );
setEffAlphaKey( spep_2 + 8, finish_f, 255 );
setEffAlphaKey( spep_2 + 112, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_2 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_2 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_2 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_2 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_2 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_2 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_2 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_2 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_2 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_2 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_2 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_2 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_2 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_2 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_2 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_2 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_2 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_2 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_2 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_2 + 14, ctga, 14, 20 );

setEffMoveKey( spep_2 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_2 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_2 + 14, ctga, 10.9 );
setEffRotateKey( spep_2 + 15, ctga, 10.9 );
setEffRotateKey( spep_2 + 16, ctga, 14.9 );
setEffRotateKey( spep_2 + 17, ctga, 14.9 );
setEffRotateKey( spep_2 + 18, ctga, 10.9 );
setEffRotateKey( spep_2 + 19, ctga, 10.9 );
setEffRotateKey( spep_2 + 20, ctga, 14.9 );
setEffRotateKey( spep_2 + 21, ctga, 14.9 );
setEffRotateKey( spep_2 + 22, ctga, 10.9 );
setEffRotateKey( spep_2 + 23, ctga, 10.9 );
setEffRotateKey( spep_2 + 24, ctga, 14.9 );
setEffRotateKey( spep_2 + 25, ctga, 14.9 );
setEffRotateKey( spep_2 + 26, ctga, 10.9 );
setEffRotateKey( spep_2 + 27, ctga, 10.9 );
setEffRotateKey( spep_2 + 28, ctga, 14.9 );
setEffRotateKey( spep_2 + 112, ctga, 14.9 );

setEffAlphaKey( spep_2 + 14, ctga, 255 );
setEffAlphaKey( spep_2 + 112, ctga, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112, 1, 0 );

changeAnime( spep_2 + 0, 1, 7 );

setMoveKey( spep_2 + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_2 + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_2 + 112, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_2 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_2 + 0, 1, 354.8 );
setRotateKey( spep_2 + 2, 1, 122.8 );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_2 + 112, 1, -729.5 );

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_2 + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_2 + 4, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 8); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム

end