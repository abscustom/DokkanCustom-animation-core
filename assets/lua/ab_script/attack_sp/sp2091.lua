--1020910:魔神ダーブラ(ゼノ)_ヘルゲートスラッシャー
--sp_effect_a9_00068
--sp2091

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 156182;  --手を前に出す  ef_001
SP_02 = 156183;  --敵を囲うオーラーが_敵より手前 ef_002_front
SP_03 = 156184;  --敵を囲うオーラーが_敵より奥  ef_002_back
SP_04 = 156187;  --オーラーから剣が出てくる_敵より手前  ef_003
SP_05 = 156188;  --気ダメ ef_004
SP_06 = 156189;  --手を握る    ef_005
SP_07 = 156190;  --剣が突き刺さる_敵より手前   ef_006_front
SP_08 = 156191;  --剣が突き刺さる_敵より奥    ef_006_back
SP_09 = 156192;  --飛んでいく敵_敵より手前    ef_007_back
SP_10 = 156193;  --飛んでいく敵_敵より奥 ef_007_front

--敵側
SP_02r = 156185;  --敵を囲うオーラーが_敵より手前（反転） ef_002_front_r
SP_03r = 156186;  --敵を囲うオーラーが_敵より奥（反転）  ef_002_back_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 手を前に出す(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --手を前に出す(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 255 );

-- ** 音 ** --
--腕引く
SE001 = playSe( spep_0 + 32, 1004 );
setSeVolumeByWorkId( spep_0 + 32, SE001, 86 );
setPitch( spep_0 + 32, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--腕出す
SE002 = playSe( spep_0 + 68, 1003 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 86 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE03, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 0, 15 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 0.994, 1.008 );
    --setScaleKey( SP_dodge + 2, 1, 0.966, 0.966 );
    --setScaleKey( SP_dodge + 4, 1, 0.938, 0.938 );
    --setScaleKey( SP_dodge + 6, 1, 0.91, 0.91 );
    --setScaleKey( SP_dodge + 8, 1, 0.868, 0.882 );
    --setScaleKey( SP_dodge + 10, 1, 0.84, 0.854 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 2, 1, 0 );
    --setRotateKey( SP_dodge + 4, 1, 0 );
    --setRotateKey( SP_dodge + 6, 1, 0 );
    --setRotateKey( SP_dodge + 8, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );


    --キャラクターの固定

    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);

    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);


    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

--------------------------------------
--発射①(96F)
--------------------------------------
-- ** エフェクト等 ** --
aura_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --敵を囲うオーラーが_敵より手前(ef_002_front)
setEffMoveKey( spep_1 + 0, aura_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, aura_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, aura_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, aura_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, aura_f, 0 );
setEffRotateKey( spep_1 + 96, aura_f, 0 );
setEffAlphaKey( spep_1 + 0, aura_f, 255 );
setEffAlphaKey( spep_1 + 96, aura_f, 255 );

aura_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --敵を囲うオーラーが_敵より奥(ef_002_back)
setEffMoveKey( spep_1 + 0, aura_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, aura_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, aura_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, aura_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, aura_b, 0 );
setEffRotateKey( spep_1 + 96, aura_b, 0 );
setEffAlphaKey( spep_1 + 0, aura_b, 255 );
setEffAlphaKey( spep_1 + 96, aura_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 96, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 1, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 2, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 3, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 4, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 5, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 6, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 96, 1, 0, 15 , 0 );

setScaleKey( spep_1 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 1, 1, 1.386, 1.4 );
setScaleKey( spep_1 + 2, 1, 1.386, 1.386 );
setScaleKey( spep_1 -3 + 6, 1, 1.372, 1.386 );
setScaleKey( spep_1 -3 + 8, 1, 1.358, 1.3712 );
setScaleKey( spep_1 -3 + 10, 1, 1.33, 1.344 );
setScaleKey( spep_1 -3 + 12, 1, 1.302, 1.316 );
setScaleKey( spep_1 -3 + 14, 1, 1.274, 1.274 );
setScaleKey( spep_1 -3 + 16, 1, 1.246, 1.246 );
setScaleKey( spep_1 -3 + 18, 1, 1.204, 1.218 );
setScaleKey( spep_1 -3 + 20, 1, 1.176, 1.19 );
setScaleKey( spep_1 -3 + 22, 1, 1.148, 1.162 );
setScaleKey( spep_1 -3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 26, 1, 1.092, 1.092 );
setScaleKey( spep_1 -3 + 28, 1, 1.05, 1.064 );
setScaleKey( spep_1 -3 + 30, 1, 1.022, 1.036 );
setScaleKey( spep_1 -3 + 32, 1, 0.994, 1.008 );
setScaleKey( spep_1 -3 + 34, 1, 0.966, 0.966 );
setScaleKey( spep_1 -3 + 36, 1, 0.938, 0.938 );
setScaleKey( spep_1 -3 + 38, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 40, 1, 0.868, 0.882 );
setScaleKey( spep_1 -3 + 42, 1, 0.84, 0.854 );
setScaleKey( spep_1 -3 + 44, 1, 0.812, 0.812 );
setScaleKey( spep_1 -3 + 46, 1, 0.784, 0.784 );
setScaleKey( spep_1 -3 + 48, 1, 0.756, 0.756 );
setScaleKey( spep_1 -3 + 50, 1, 0.714, 0.728 );
setScaleKey( spep_1 -3 + 52, 1, 0.686, 0.686 );
setScaleKey( spep_1 -3 + 54, 1, 0.658, 0.658 );
setScaleKey( spep_1 -3 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 58, 1, 0.602, 0.602 );
setScaleKey( spep_1 -3 + 60, 1, 0.574, 0.574 );
setScaleKey( spep_1 -3 + 62, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 68, 1, 0.56, 0.556 );
setScaleKey( spep_1 -3 + 70, 1, 0.546, 0.546 );
setScaleKey( spep_1 -3 + 74, 1, 0.546, 0.546 );
setScaleKey( spep_1 -3 + 76, 1, 0.532, 0.532 );
setScaleKey( spep_1 -3 + 82, 1, 0.532, 0.532 );
setScaleKey( spep_1 -3 + 84, 1, 0.518, 0.518 );
setScaleKey( spep_1 -3 + 90, 1, 0.518, 0.518 );
setScaleKey( spep_1 -3 + 92, 1, 0.504, 0.504 );
setScaleKey( spep_1 -3 + 99, 1, 0.504, 0.504 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 + 96, 1, 0 );

-- ** 音 ** --
--次元ワープ出現1
SE003 = playSe( spep_1 + 4, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 4, SE003, 100 );
setTimeStretch( SE003, 0.77, 10, 1 );

--次元ワープ出現2
SE004 = playSe( spep_1 + 4, 1271 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 224 );
stopSe( spep_1 +96 +66 + 28, SE004, 30 );
setPitch( spep_1 + 4, SE004, -500 );
setTimeStretch( SE004, 0.67, 10, 1 );

--次元ワープ出現3
SE005 = playSe( spep_1 + 4, 1227 );
setSeVolumeByWorkId( spep_1 + 4, SE005, 191 );
stopSe( spep_1 +96 +66 + 26, SE005, 32 );

--次元ワープ出現4
SE006 = playSe( spep_1 + 22, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 22, SE006, 100 );
setTimeStretch( SE006, 0.77, 10, 1 );

--次元ワープ出現5
SE007 = playSe( spep_1 + 42, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 42, SE007, 110 );
setTimeStretch( SE007, 0.77, 10, 1 );

--次元ワープ出現6
SE008 = playSe( spep_1 + 62, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 120 );
setTimeStretch( SE008, 0.77, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


--------------------------------------
--オーラーから剣が出てくる(66F)
--------------------------------------
-- ** エフェクト等 ** --
aura_s = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --オーラーから剣が出てくる_敵より手前(ef_003)
setEffMoveKey( spep_2 + 0, aura_s, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, aura_s, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, aura_s, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, aura_s, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, aura_s, 0 );
setEffRotateKey( spep_2 + 66, aura_s, 0 );
setEffAlphaKey( spep_2 + 0, aura_s, 255 );
setEffAlphaKey( spep_2 + 66, aura_s, 255 );

-- ** 音 ** --
--剣出現1
SE009 = playSe( spep_2 + 18, 1196 );
setSeVolumeByWorkId( spep_2 + 18, SE009, 0 );
setSeVolumeByWorkId( spep_2 + 19, SE009, 10 );
setSeVolumeByWorkId( spep_2 + 20, SE009, 20 );
setSeVolumeByWorkId( spep_2 + 21, SE009, 30 );
setSeVolumeByWorkId( spep_2 + 22, SE009, 40 );
setSeVolumeByWorkId( spep_2 + 23, SE009, 50 );
setSeVolumeByWorkId( spep_2 + 24, SE009, 60 );
setSeVolumeByWorkId( spep_2 + 25, SE009, 70 );
setSeVolumeByWorkId( spep_2 + 26, SE009, 80 );
setSeVolumeByWorkId( spep_2 + 27, SE009, 90 );
setSeVolumeByWorkId( spep_2 + 28, SE009, 100 );
stopSe( spep_2 + 50, SE009, 12 );
setStartTimeMs( SE009,  367 );

--剣出現2
SE010 = playSe( spep_2 + 18, 33 );
stopSe( spep_2 +66 + 6, SE010, 0 );
setTimeStretch( SE010, 1.25, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


--------------------------------------
--気ダメ(114F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気ダメ(ef_004)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114 -2, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114 -2, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 114 -2, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 114 -2, tame, 255 );

spep_x = spep_3 + 8;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
SE011 = playSe( spep_3 + 14, 1018 );

--気弾溜め1
SE012 = playSe( spep_3 + 30, 1147 );
setSeVolumeByWorkId( spep_3 + 30, SE012, 22 );
stopSe( spep_3 +114 + 12, SE012, 0 );

--気弾溜め2
SE013 = playSe( spep_3 + 30, 49 );

--気弾溜め3
SE014 = playSe( spep_3 + 30, 1158 );
setSeVolumeByWorkId( spep_3 + 30, SE014, 75 );
stopSe( spep_3 +114 + 12, SE014, 0 );

--気弾溜め4
SE015 = playSe( spep_3 + 64, 49 );

--気弾溜め6
SE016 = playSe( spep_3 + 98, 49 );
stopSe( spep_3 +114 + 12, SE016, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 114, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 114 -2;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_05 );

--気弾溜め続き1
SE018 = playSe( spep_4 + 90, 49 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

--------------------------------------
--手を握る(56F)
--------------------------------------
-- ** エフェクト等 ** --
hand = entryEffectLife( spep_5 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --気ダメ(ef_004)
setEffMoveKey( spep_5 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hand, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hand, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hand, 0 );
setEffRotateKey( spep_5 + 56, hand, 0 );
setEffAlphaKey( spep_5 + 0, hand, 255 );
setEffAlphaKey( spep_5 + 56, hand, 255 );

-- ** 音 ** --
--気弾溜め続き2
SE019 = playSe( spep_5 + 30, 49 );
stopSe( spep_5 + 50, SE019, 0 );

--握りつぶす1
SE020 = playSe( spep_5 + 44, 1003 );

--握りつぶす2
SE021 = playSe( spep_5 + 44, 1026 );

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 57;


--------------------------------------
--剣が突き刺さる(60F)
--------------------------------------
-- ** エフェクト等 ** --
sword_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --剣が突き刺さる_敵より手前(ef_006_front)
setEffMoveKey( spep_6 + 0, sword_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, sword_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sword_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, sword_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sword_f, 0 );
setEffRotateKey( spep_6 + 60, sword_f, 0 );
setEffAlphaKey( spep_6 + 0, sword_f, 255 );
setEffAlphaKey( spep_6 + 60, sword_f, 255 );

sword_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --剣が突き刺さる_敵より奥(ef_006_back)
setEffMoveKey( spep_6 + 0, sword_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, sword_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sword_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, sword_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sword_b, 0 );
setEffRotateKey( spep_6 + 60, sword_b, 0 );
setEffAlphaKey( spep_6 + 0, sword_b, 255 );
setEffAlphaKey( spep_6 + 60, sword_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 60 +116, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 -3 + 52, 1, 106 );
changeAnime( spep_6 + 60, 1, 105 );

a1=30;
b1=60;

setMoveKey( spep_6 + 0, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 1, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 2, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 3, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 4, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 5, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 6, 1, 10, 0 , 0 );
setMoveKey( spep_6 -3 + 51, 1, 10, 0 , 0 );
setMoveKey( spep_6 -3 + 52, 1, -4.5 -a1, 7.5 +b1, 0 );
setMoveKey( spep_6 -3 + 54, 1, -4.5 -a1, 39.5 +b1, 0 );
setMoveKey( spep_6 -3 + 56, 1, -4.5 -a1, -28.5 +b1, 0 );
setMoveKey( spep_6 -3 + 58, 1, -30.5 -a1, 7.5 +b1, 0 );
setMoveKey( spep_6 -3 + 60, 1, 21.5 -a1, 7.5 +b1, 0 );
setMoveKey( spep_6 -3 + 62, 1, -4.5 -a1, -16.5 +b1, 0 );
--setMoveKey( spep_6 -3 + 63, 1, -4.5 -a1, -16.5 +b1, 0 );
--

a2=30;

setMoveKey( spep_6 +60 + 0, 1, 260 -a1, 10 , 0 );
setMoveKey( spep_6 +60 + 1, 1, 268 -a1, 122 , 0 );
setMoveKey( spep_6 +60 + 2, 1, 227 -a1, -66.1 , 0 );
setMoveKey( spep_6 +60 -3 + 6, 1, 268.1 -a1, 10 , 0 );
setMoveKey( spep_6 +60 -3 + 8, 1, 35 -a1, 10 , 0 );
setMoveKey( spep_6 +60 -3 + 10, 1, 204 -a1, 74 , 0 );
setMoveKey( spep_6 +60 -3 + 12, 1, 102 -a1, 54 , 0 );
setMoveKey( spep_6 +60 -3 + 14, 1, 92 -a1, -48 , 0 );
setMoveKey( spep_6 +60 -3 + 16, 1, 142 -a1, 28 , 0 );
setMoveKey( spep_6 +60 -3 + 18, 1, 18 -a1, 20 , 0 );
setMoveKey( spep_6 +60 -3 + 20, 1, 108 -a1, -60 , 0 );
setMoveKey( spep_6 +60 -3 + 22, 1, 66 -a1, 64 , 0 );
setMoveKey( spep_6 +60 -3 + 24, 1, 54 -a1, -46 , 0 );
setMoveKey( spep_6 +60 -3 + 26, 1, 30 -a1, 44 , 0 );
setMoveKey( spep_6 +60 -3 + 28, 1, 62 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 30, 1, 48 -a1, 8 , 0 );
setMoveKey( spep_6 +60 -3 + 32, 1, 48 -a1, -44 , 0 );
setMoveKey( spep_6 +60 -3 + 34, 1, 24 -a1, -8 , 0 );
setMoveKey( spep_6 +60 -3 + 36, 1, 48 -a1, -48 , 0 );
setMoveKey( spep_6 +60 -3 + 38, 1, 28 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 40, 1, 60 -a1, -35 , 0 );
setMoveKey( spep_6 +60 -3 + 42, 1, 36 -a1, -12 , 0 );
setMoveKey( spep_6 +60 -3 + 44, 1, 40 -a1, -44 , 0 );
setMoveKey( spep_6 +60 -3 + 46, 1, 24 -a1, -15 , 0 );
setMoveKey( spep_6 +60 -3 + 48, 1, 58 -a1, -36 , 0 );
setMoveKey( spep_6 +60 -3 + 50, 1, 32 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 52, 1, 34 -a1, -40 , 0 );
setMoveKey( spep_6 +60 -3 + 54, 1, 22 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 56, 1, 40 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 58, 1, 28 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 60, 1, 28 -a1, -40 , 0 );
setMoveKey( spep_6 +60 -3 + 62, 1, 14 -a1, -24 , 0 );
setMoveKey( spep_6 +60 -3 + 64, 1, 38 -a1, -24 , 0 );
setMoveKey( spep_6 +60 -3 + 66, 1, 26 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 68, 1, 24 -a1, -36 , 0 );
setMoveKey( spep_6 +60 -3 + 70, 1, 14 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 72, 1, 30 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 74, 1, 24 -a1, -24 , 0 );
setMoveKey( spep_6 +60 -3 + 76, 1, 24 -a1, -32 , 0 );
setMoveKey( spep_6 +60 -3 + 78, 1, 15 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 80, 1, 20 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 119, 1, 20 -a1, -28 , 0 );

setScaleKey( spep_6 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 59, 1, 1.5, 1.5 );
--setScaleKey( spep_6 + 60, 1, 1.5, 1.5 );
--
setScaleKey( spep_6 +60 + 0, 1, 10.17, 10.17 );
setScaleKey( spep_6 +60 + 1, 1, 9.36, 9.36 );
setScaleKey( spep_6 +60 + 2, 1, 8.55, 8.55 );
setScaleKey( spep_6 +60 -3 + 6, 1, 7.74, 7.74 );
setScaleKey( spep_6 +60 -3 + 8, 1, 6.93, 6.93 );
setScaleKey( spep_6 +60 -3 + 10, 1, 6.12, 6.12 );
setScaleKey( spep_6 +60 -3 + 12, 1, 5.435, 5.435 );
setScaleKey( spep_6 +60 -3 + 14, 1, 4.515, 4.515 );
setScaleKey( spep_6 +60 -3 + 16, 1, 3.705, 3.705 );
setScaleKey( spep_6 +60 -3 + 18, 1, 2.895, 2.895 );
setScaleKey( spep_6 +60 -3 + 20, 1, 2.085, 2.085 );
setScaleKey( spep_6 +60 -3 + 22, 1, 2.04, 2.04 );
setScaleKey( spep_6 +60 -3 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_6 +60 -3 + 26, 1, 1.965, 1.965 );
setScaleKey( spep_6 +60 -3 + 28, 1, 1.92, 1.92 );
setScaleKey( spep_6 +60 -3 + 30, 1, 1.875, 1.875 );
setScaleKey( spep_6 +60 -3 + 32, 1, 1.845, 1.845 );
setScaleKey( spep_6 +60 -3 + 34, 1, 1.80, 1.80 );
setScaleKey( spep_6 +60 -3 + 36, 1, 1.755, 1.755 );
setScaleKey( spep_6 +60 -3 + 38, 1, 1.725, 1.725 );
setScaleKey( spep_6 +60 -3 + 40, 1, 1.69, 1.69 );
setScaleKey( spep_6 +60 -3 + 42, 1, 1.635, 1.635 );
setScaleKey( spep_6 +60 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_6 +60 -3 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_6 +60 -3 + 48, 1, 1.515, 1.515 );
setScaleKey( spep_6 +60 -3 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_6 +60 -3 + 52, 1, 1.425, 1.425 );
setScaleKey( spep_6 +60 -3 + 54, 1, 1.395, 1.395 );
setScaleKey( spep_6 +60 -3 + 56, 1, 1.35, 1.35 );
setScaleKey( spep_6 +60 -3 + 58, 1, 1.305, 1.305 );
setScaleKey( spep_6 +60 -3 + 60, 1, 1.275, 1.275 );
setScaleKey( spep_6 +60 -3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_6 +60 -3 + 64, 1, 1.185, 1.185 );
setScaleKey( spep_6 +60 -3 + 66, 1, 1.14, 1.14 );
setScaleKey( spep_6 +60 -3 + 68, 1, 1.11, 1.11 );
setScaleKey( spep_6 +60 -3 + 70, 1, 1.065, 1.065 );
setScaleKey( spep_6 +60 -3 + 72, 1, 1.02, 1.02 );
setScaleKey( spep_6 +60 -3 + 74, 1, 0.975, 0.975 );
setScaleKey( spep_6 +60 -3 + 76, 1, 0.945, 0.945 );
setScaleKey( spep_6 +60 -3 + 78, 1, 0.9, 0.9 );
setScaleKey( spep_6 +60 -3 + 80, 1, 0.855, 0.855 );
setScaleKey( spep_6 +60 -3 + 82, 1, 0.84, 0.84 );
setScaleKey( spep_6 +60 -3 + 84, 1, 0.81, 0.81 );
setScaleKey( spep_6 +60 -3 + 86, 1, 0.78, 0.78 );
setScaleKey( spep_6 +60 -3 + 88, 1, 0.765, 0.765 );
setScaleKey( spep_6 +60 -3 + 90, 1, 0.735, 0.735 );
setScaleKey( spep_6 +60 -3 + 92, 1, 0.72, 0.72 );
setScaleKey( spep_6 +60 -3 + 94, 1, 0.69, 0.69 );
setScaleKey( spep_6 +60 -3 + 96, 1, 0.66, 0.66 );
setScaleKey( spep_6 +60 -3 + 98, 1, 0.645, 0.645 );
setScaleKey( spep_6 +60 -3 + 100, 1, 0.615, 0.615 );
setScaleKey( spep_6 +60 -3 + 102, 1, 0.585, 0.585 );
setScaleKey( spep_6 +60 -3 + 104, 1, 0.57, 0.57 );
setScaleKey( spep_6 +60 -3 + 106, 1, 0.54, 0.54 );
setScaleKey( spep_6 +60 -3 + 108, 1, 0.525, 0.525 );
setScaleKey( spep_6 +60 -3 + 110, 1, 0.495, 0.495 );
setScaleKey( spep_6 +60 -3 + 112, 1, 0.465, 0.465 );
setScaleKey( spep_6 +60 -3 + 114, 1, 0.45, 0.45 );
setScaleKey( spep_6 +60 -3 + 116, 1, 0.42, 0.42 );
setScaleKey( spep_6 +60 -3 + 118, 1, 0.39, 0.39 );
setScaleKey( spep_6 +60 -3 + 119, 1, 0.39, 0.39 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 1, 1, 0 );
setRotateKey( spep_6 + 2, 1, 0 );
setRotateKey( spep_6 + 3, 1, 0 );
setRotateKey( spep_6 + 4, 1, 0 );
setRotateKey( spep_6 + 5, 1, 0 );
setRotateKey( spep_6 + 6, 1, 0 );
setRotateKey( spep_6 -3 + 51, 1, 0 );
setRotateKey( spep_6 -3 + 52, 1, -42.6 );
setRotateKey( spep_6 -3 + 54, 1, -42.7 );
setRotateKey( spep_6 -3 + 62, 1, -42.7 );
--setRotateKey( spep_6 -3 + 63, 1, -42.7 );
--
setRotateKey( spep_6 +60 + 0, 1, 0 );
setRotateKey( spep_6 +60 + 116, 1, 0 );

-- ** 音 ** --
--剣突き刺さる1
SE022 = playSe( spep_6 + 40, 1189 );

--剣突き刺さる2
SE023 = playSe( spep_6 + 46, 1032 );

--剣突き刺さる3
SE024 = playSe( spep_6 + 46, 1061 );
setSeVolumeByWorkId( spep_6 + 46, SE024, 79 );

--爆発1
SE025 = playSe( spep_6 + 46, 1188 );

--剣突き刺さる4
SE026 = playSe( spep_6 + 54, 1031 );

--剣突き刺さる5
SE027 = playSe( spep_6 + 58, 1032 );

-- ** 黒背景 ** --
--entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;


--------------------------------------
--飛んでいく敵(116F)
--------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --飛んでいく敵_敵より奥(ef_007_front)
setEffMoveKey( spep_7 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, last_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, last_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_f, 0 );
setEffRotateKey( spep_7 + 116, last_f, 0 );
setEffAlphaKey( spep_7 + 0, last_f, 255 );
setEffAlphaKey( spep_7 + 116, last_f, 255 );

last_b = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --飛んでいく敵_敵より手前(ef_007_back)
setEffMoveKey( spep_7 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, last_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, last_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_b, 0 );
setEffRotateKey( spep_7 + 116, last_b, 0 );
setEffAlphaKey( spep_7 + 0, last_b, 255 );
setEffAlphaKey( spep_7 + 116, last_b, 255 );

-- ** 音 ** 
--剣突き刺さる6
SE028 = playSe( spep_7 + 4, 1031 );

--爆発1
SE029 = playSe( spep_7 + 4, 1024 );

--爆発2
SE030 = playSe( spep_7 + 16, 45 );
setSeVolumeByWorkId( spep_7 + 16, SE030, 141 );
setTimeStretch( SE030, 1.26, 10, 1 );

--爆発3
SE031 = playSe( spep_7 + 16, 1161 );
stopSe( spep_7 + 58, SE031, 46 );

-- ** 黒背景 ** --
--entryFadeBg( spep_7 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 );--38
endPhase( spep_7 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手を前に出す(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --手を前に出す(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 255 );

-- ** 音 ** --
--腕引く
SE001 = playSe( spep_0 + 32, 1004 );
setSeVolumeByWorkId( spep_0 + 32, SE001, 86 );
setPitch( spep_0 + 32, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--腕出す
SE002 = playSe( spep_0 + 68, 1003 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 86 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE03, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 0, 15 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 0, 15 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 0.994, 1.008 );
    --setScaleKey( SP_dodge + 2, 1, 0.966, 0.966 );
    --setScaleKey( SP_dodge + 4, 1, 0.938, 0.938 );
    --setScaleKey( SP_dodge + 6, 1, 0.91, 0.91 );
    --setScaleKey( SP_dodge + 8, 1, 0.868, 0.882 );
    --setScaleKey( SP_dodge + 10, 1, 0.84, 0.854 );
--
    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 2, 1, 0 );
    --setRotateKey( SP_dodge + 4, 1, 0 );
    --setRotateKey( SP_dodge + 6, 1, 0 );
    --setRotateKey( SP_dodge + 8, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );

    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

--------------------------------------
--発射①(96F)
--------------------------------------
-- ** エフェクト等 ** --
aura_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --敵を囲うオーラーが_敵より手前(ef_002_front)
setEffMoveKey( spep_1 + 0, aura_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, aura_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, aura_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, aura_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, aura_f, 0 );
setEffRotateKey( spep_1 + 96, aura_f, 0 );
setEffAlphaKey( spep_1 + 0, aura_f, 255 );
setEffAlphaKey( spep_1 + 96, aura_f, 255 );

aura_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --敵を囲うオーラーが_敵より奥(ef_002_back)
setEffMoveKey( spep_1 + 0, aura_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, aura_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, aura_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, aura_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, aura_b, 0 );
setEffRotateKey( spep_1 + 96, aura_b, 0 );
setEffAlphaKey( spep_1 + 0, aura_b, 255 );
setEffAlphaKey( spep_1 + 96, aura_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 96, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 1, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 2, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 3, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 4, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 5, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 6, 1, 0, 15 , 0 );
setMoveKey( spep_1 + 96, 1, 0, 15 , 0 );

setScaleKey( spep_1 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 1, 1, 1.386, 1.4 );
setScaleKey( spep_1 + 2, 1, 1.386, 1.386 );
setScaleKey( spep_1 -3 + 6, 1, 1.372, 1.386 );
setScaleKey( spep_1 -3 + 8, 1, 1.358, 1.3712 );
setScaleKey( spep_1 -3 + 10, 1, 1.33, 1.344 );
setScaleKey( spep_1 -3 + 12, 1, 1.302, 1.316 );
setScaleKey( spep_1 -3 + 14, 1, 1.274, 1.274 );
setScaleKey( spep_1 -3 + 16, 1, 1.246, 1.246 );
setScaleKey( spep_1 -3 + 18, 1, 1.204, 1.218 );
setScaleKey( spep_1 -3 + 20, 1, 1.176, 1.19 );
setScaleKey( spep_1 -3 + 22, 1, 1.148, 1.162 );
setScaleKey( spep_1 -3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 26, 1, 1.092, 1.092 );
setScaleKey( spep_1 -3 + 28, 1, 1.05, 1.064 );
setScaleKey( spep_1 -3 + 30, 1, 1.022, 1.036 );
setScaleKey( spep_1 -3 + 32, 1, 0.994, 1.008 );
setScaleKey( spep_1 -3 + 34, 1, 0.966, 0.966 );
setScaleKey( spep_1 -3 + 36, 1, 0.938, 0.938 );
setScaleKey( spep_1 -3 + 38, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 40, 1, 0.868, 0.882 );
setScaleKey( spep_1 -3 + 42, 1, 0.84, 0.854 );
setScaleKey( spep_1 -3 + 44, 1, 0.812, 0.812 );
setScaleKey( spep_1 -3 + 46, 1, 0.784, 0.784 );
setScaleKey( spep_1 -3 + 48, 1, 0.756, 0.756 );
setScaleKey( spep_1 -3 + 50, 1, 0.714, 0.728 );
setScaleKey( spep_1 -3 + 52, 1, 0.686, 0.686 );
setScaleKey( spep_1 -3 + 54, 1, 0.658, 0.658 );
setScaleKey( spep_1 -3 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 58, 1, 0.602, 0.602 );
setScaleKey( spep_1 -3 + 60, 1, 0.574, 0.574 );
setScaleKey( spep_1 -3 + 62, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 68, 1, 0.56, 0.556 );
setScaleKey( spep_1 -3 + 70, 1, 0.546, 0.546 );
setScaleKey( spep_1 -3 + 74, 1, 0.546, 0.546 );
setScaleKey( spep_1 -3 + 76, 1, 0.532, 0.532 );
setScaleKey( spep_1 -3 + 82, 1, 0.532, 0.532 );
setScaleKey( spep_1 -3 + 84, 1, 0.518, 0.518 );
setScaleKey( spep_1 -3 + 90, 1, 0.518, 0.518 );
setScaleKey( spep_1 -3 + 92, 1, 0.504, 0.504 );
setScaleKey( spep_1 -3 + 99, 1, 0.504, 0.504 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 + 96, 1, 0 );

-- ** 音 ** --
--次元ワープ出現1
SE003 = playSe( spep_1 + 4, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 4, SE003, 100 );
setTimeStretch( SE003, 0.77, 10, 1 );

--次元ワープ出現2
SE004 = playSe( spep_1 + 4, 1271 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 224 );
stopSe( spep_1 +96 +66 + 28, SE004, 30 );
setPitch( spep_1 + 4, SE004, -500 );
setTimeStretch( SE004, 0.67, 10, 1 );

--次元ワープ出現3
SE005 = playSe( spep_1 + 4, 1227 );
setSeVolumeByWorkId( spep_1 + 4, SE005, 191 );
stopSe( spep_1 +96 +66 + 26, SE005, 32 );

--次元ワープ出現4
SE006 = playSe( spep_1 + 22, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 22, SE006, 100 );
setTimeStretch( SE006, 0.77, 10, 1 );

--次元ワープ出現5
SE007 = playSe( spep_1 + 42, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 42, SE007, 110 );
setTimeStretch( SE007, 0.77, 10, 1 );

--次元ワープ出現6
SE008 = playSe( spep_1 + 62, 1235,"",0.6 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 120 );
setTimeStretch( SE008, 0.77, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


--------------------------------------
--オーラーから剣が出てくる(66F)
--------------------------------------
-- ** エフェクト等 ** --
aura_s = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --オーラーから剣が出てくる_敵より手前(ef_003)
setEffMoveKey( spep_2 + 0, aura_s, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, aura_s, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, aura_s, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, aura_s, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, aura_s, 0 );
setEffRotateKey( spep_2 + 66, aura_s, 0 );
setEffAlphaKey( spep_2 + 0, aura_s, 255 );
setEffAlphaKey( spep_2 + 66, aura_s, 255 );

-- ** 音 ** --
--剣出現1
SE009 = playSe( spep_2 + 18, 1196 );
setSeVolumeByWorkId( spep_2 + 18, SE009, 0 );
setSeVolumeByWorkId( spep_2 + 19, SE009, 10 );
setSeVolumeByWorkId( spep_2 + 20, SE009, 20 );
setSeVolumeByWorkId( spep_2 + 21, SE009, 30 );
setSeVolumeByWorkId( spep_2 + 22, SE009, 40 );
setSeVolumeByWorkId( spep_2 + 23, SE009, 50 );
setSeVolumeByWorkId( spep_2 + 24, SE009, 60 );
setSeVolumeByWorkId( spep_2 + 25, SE009, 70 );
setSeVolumeByWorkId( spep_2 + 26, SE009, 80 );
setSeVolumeByWorkId( spep_2 + 27, SE009, 90 );
setSeVolumeByWorkId( spep_2 + 28, SE009, 100 );
stopSe( spep_2 + 50, SE009, 12 );
setStartTimeMs( SE009,  367 );

--剣出現2
SE010 = playSe( spep_2 + 18, 33 );
stopSe( spep_2 +66 + 6, SE010, 0 );
setTimeStretch( SE010, 1.25, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


--------------------------------------
--気ダメ(114F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気ダメ(ef_004)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114 -2, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114 -2, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 114 -2, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 114 -2, tame, 255 );

spep_x = spep_3 + 8;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
SE011 = playSe( spep_3 + 14, 1018 );

--気弾溜め1
SE012 = playSe( spep_3 + 30, 1147 );
setSeVolumeByWorkId( spep_3 + 30, SE012, 22 );
stopSe( spep_3 +114 + 12, SE012, 0 );

--気弾溜め2
SE013 = playSe( spep_3 + 30, 49 );

--気弾溜め3
SE014 = playSe( spep_3 + 30, 1158 );
setSeVolumeByWorkId( spep_3 + 30, SE014, 75 );
stopSe( spep_3 +114 + 12, SE014, 0 );

--気弾溜め4
SE015 = playSe( spep_3 + 64, 49 );

--気弾溜め6
SE016 = playSe( spep_3 + 98, 49 );
stopSe( spep_3 +114 + 12, SE016, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 114, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 114 -2;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--気弾溜め続き1
SE018 = playSe( spep_4 + 90, 49 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


--------------------------------------
--手を握る(56F)
--------------------------------------
-- ** エフェクト等 ** --
hand = entryEffectLife( spep_5 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --気ダメ(ef_004)
setEffMoveKey( spep_5 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, hand, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hand, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hand, 0 );
setEffRotateKey( spep_5 + 56, hand, 0 );
setEffAlphaKey( spep_5 + 0, hand, 255 );
setEffAlphaKey( spep_5 + 56, hand, 255 );

-- ** 音 ** --
--気弾溜め続き2
SE019 = playSe( spep_5 + 30, 49 );
stopSe( spep_5 + 50, SE019, 0 );

--握りつぶす1
SE020 = playSe( spep_5 + 44, 1003 );

--握りつぶす2
SE021 = playSe( spep_5 + 44, 1026 );

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 57;


--------------------------------------
--剣が突き刺さる(60F)
--------------------------------------
-- ** エフェクト等 ** --
sword_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --剣が突き刺さる_敵より手前(ef_006_front)
setEffMoveKey( spep_6 + 0, sword_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, sword_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sword_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, sword_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sword_f, 0 );
setEffRotateKey( spep_6 + 60, sword_f, 0 );
setEffAlphaKey( spep_6 + 0, sword_f, 255 );
setEffAlphaKey( spep_6 + 60, sword_f, 255 );

sword_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --剣が突き刺さる_敵より奥(ef_006_back)
setEffMoveKey( spep_6 + 0, sword_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, sword_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, sword_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, sword_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sword_b, 0 );
setEffRotateKey( spep_6 + 60, sword_b, 0 );
setEffAlphaKey( spep_6 + 0, sword_b, 255 );
setEffAlphaKey( spep_6 + 60, sword_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 60 +116, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 -3 + 52, 1, 106 );
changeAnime( spep_6 + 60, 1, 105 );

a1=30;
b1=60;

setMoveKey( spep_6 + 0, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 1, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 2, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 3, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 4, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 5, 1, 10, 0 , 0 );
setMoveKey( spep_6 + 6, 1, 10, 0 , 0 );
setMoveKey( spep_6 -3 + 51, 1, 10, 0 , 0 );
setMoveKey( spep_6 -3 + 52, 1, -4.5 -a1, 7.5 +b1, 0 );
setMoveKey( spep_6 -3 + 54, 1, -4.5 -a1, 39.5 +b1, 0 );
setMoveKey( spep_6 -3 + 56, 1, -4.5 -a1, -28.5 +b1, 0 );
setMoveKey( spep_6 -3 + 58, 1, -30.5 -a1, 7.5 +b1, 0 );
setMoveKey( spep_6 -3 + 60, 1, 21.5 -a1, 7.5 +b1, 0 );
setMoveKey( spep_6 -3 + 62, 1, -4.5 -a1, -16.5 +b1, 0 );
--setMoveKey( spep_6 -3 + 63, 1, -4.5 -a1, -16.5 +b1, 0 );
--

a2=30;

setMoveKey( spep_6 +60 + 0, 1, 260 -a1, 10 , 0 );
setMoveKey( spep_6 +60 + 1, 1, 268 -a1, 122 , 0 );
setMoveKey( spep_6 +60 + 2, 1, 227 -a1, -66.1 , 0 );
setMoveKey( spep_6 +60 -3 + 6, 1, 268.1 -a1, 10 , 0 );
setMoveKey( spep_6 +60 -3 + 8, 1, 35 -a1, 10 , 0 );
setMoveKey( spep_6 +60 -3 + 10, 1, 204 -a1, 74 , 0 );
setMoveKey( spep_6 +60 -3 + 12, 1, 102 -a1, 54 , 0 );
setMoveKey( spep_6 +60 -3 + 14, 1, 92 -a1, -48 , 0 );
setMoveKey( spep_6 +60 -3 + 16, 1, 142 -a1, 28 , 0 );
setMoveKey( spep_6 +60 -3 + 18, 1, 18 -a1, 20 , 0 );
setMoveKey( spep_6 +60 -3 + 20, 1, 108 -a1, -60 , 0 );
setMoveKey( spep_6 +60 -3 + 22, 1, 66 -a1, 64 , 0 );
setMoveKey( spep_6 +60 -3 + 24, 1, 54 -a1, -46 , 0 );
setMoveKey( spep_6 +60 -3 + 26, 1, 30 -a1, 44 , 0 );
setMoveKey( spep_6 +60 -3 + 28, 1, 62 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 30, 1, 48 -a1, 8 , 0 );
setMoveKey( spep_6 +60 -3 + 32, 1, 48 -a1, -44 , 0 );
setMoveKey( spep_6 +60 -3 + 34, 1, 24 -a1, -8 , 0 );
setMoveKey( spep_6 +60 -3 + 36, 1, 48 -a1, -48 , 0 );
setMoveKey( spep_6 +60 -3 + 38, 1, 28 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 40, 1, 60 -a1, -35 , 0 );
setMoveKey( spep_6 +60 -3 + 42, 1, 36 -a1, -12 , 0 );
setMoveKey( spep_6 +60 -3 + 44, 1, 40 -a1, -44 , 0 );
setMoveKey( spep_6 +60 -3 + 46, 1, 24 -a1, -15 , 0 );
setMoveKey( spep_6 +60 -3 + 48, 1, 58 -a1, -36 , 0 );
setMoveKey( spep_6 +60 -3 + 50, 1, 32 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 52, 1, 34 -a1, -40 , 0 );
setMoveKey( spep_6 +60 -3 + 54, 1, 22 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 56, 1, 40 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 58, 1, 28 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 60, 1, 28 -a1, -40 , 0 );
setMoveKey( spep_6 +60 -3 + 62, 1, 14 -a1, -24 , 0 );
setMoveKey( spep_6 +60 -3 + 64, 1, 38 -a1, -24 , 0 );
setMoveKey( spep_6 +60 -3 + 66, 1, 26 -a1, -16 , 0 );
setMoveKey( spep_6 +60 -3 + 68, 1, 24 -a1, -36 , 0 );
setMoveKey( spep_6 +60 -3 + 70, 1, 14 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 72, 1, 30 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 74, 1, 24 -a1, -24 , 0 );
setMoveKey( spep_6 +60 -3 + 76, 1, 24 -a1, -32 , 0 );
setMoveKey( spep_6 +60 -3 + 78, 1, 15 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 80, 1, 20 -a1, -28 , 0 );
setMoveKey( spep_6 +60 -3 + 119, 1, 20 -a1, -28 , 0 );

setScaleKey( spep_6 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 59, 1, 1.5, 1.5 );
--setScaleKey( spep_6 + 60, 1, 1.5, 1.5 );
--
setScaleKey( spep_6 +60 + 0, 1, 10.17, 10.17 );
setScaleKey( spep_6 +60 + 1, 1, 9.36, 9.36 );
setScaleKey( spep_6 +60 + 2, 1, 8.55, 8.55 );
setScaleKey( spep_6 +60 -3 + 6, 1, 7.74, 7.74 );
setScaleKey( spep_6 +60 -3 + 8, 1, 6.93, 6.93 );
setScaleKey( spep_6 +60 -3 + 10, 1, 6.12, 6.12 );
setScaleKey( spep_6 +60 -3 + 12, 1, 5.435, 5.435 );
setScaleKey( spep_6 +60 -3 + 14, 1, 4.515, 4.515 );
setScaleKey( spep_6 +60 -3 + 16, 1, 3.705, 3.705 );
setScaleKey( spep_6 +60 -3 + 18, 1, 2.895, 2.895 );
setScaleKey( spep_6 +60 -3 + 20, 1, 2.085, 2.085 );
setScaleKey( spep_6 +60 -3 + 22, 1, 2.04, 2.04 );
setScaleKey( spep_6 +60 -3 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_6 +60 -3 + 26, 1, 1.965, 1.965 );
setScaleKey( spep_6 +60 -3 + 28, 1, 1.92, 1.92 );
setScaleKey( spep_6 +60 -3 + 30, 1, 1.875, 1.875 );
setScaleKey( spep_6 +60 -3 + 32, 1, 1.845, 1.845 );
setScaleKey( spep_6 +60 -3 + 34, 1, 1.80, 1.80 );
setScaleKey( spep_6 +60 -3 + 36, 1, 1.755, 1.755 );
setScaleKey( spep_6 +60 -3 + 38, 1, 1.725, 1.725 );
setScaleKey( spep_6 +60 -3 + 40, 1, 1.69, 1.69 );
setScaleKey( spep_6 +60 -3 + 42, 1, 1.635, 1.635 );
setScaleKey( spep_6 +60 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_6 +60 -3 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_6 +60 -3 + 48, 1, 1.515, 1.515 );
setScaleKey( spep_6 +60 -3 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_6 +60 -3 + 52, 1, 1.425, 1.425 );
setScaleKey( spep_6 +60 -3 + 54, 1, 1.395, 1.395 );
setScaleKey( spep_6 +60 -3 + 56, 1, 1.35, 1.35 );
setScaleKey( spep_6 +60 -3 + 58, 1, 1.305, 1.305 );
setScaleKey( spep_6 +60 -3 + 60, 1, 1.275, 1.275 );
setScaleKey( spep_6 +60 -3 + 62, 1, 1.23, 1.23 );
setScaleKey( spep_6 +60 -3 + 64, 1, 1.185, 1.185 );
setScaleKey( spep_6 +60 -3 + 66, 1, 1.14, 1.14 );
setScaleKey( spep_6 +60 -3 + 68, 1, 1.11, 1.11 );
setScaleKey( spep_6 +60 -3 + 70, 1, 1.065, 1.065 );
setScaleKey( spep_6 +60 -3 + 72, 1, 1.02, 1.02 );
setScaleKey( spep_6 +60 -3 + 74, 1, 0.975, 0.975 );
setScaleKey( spep_6 +60 -3 + 76, 1, 0.945, 0.945 );
setScaleKey( spep_6 +60 -3 + 78, 1, 0.9, 0.9 );
setScaleKey( spep_6 +60 -3 + 80, 1, 0.855, 0.855 );
setScaleKey( spep_6 +60 -3 + 82, 1, 0.84, 0.84 );
setScaleKey( spep_6 +60 -3 + 84, 1, 0.81, 0.81 );
setScaleKey( spep_6 +60 -3 + 86, 1, 0.78, 0.78 );
setScaleKey( spep_6 +60 -3 + 88, 1, 0.765, 0.765 );
setScaleKey( spep_6 +60 -3 + 90, 1, 0.735, 0.735 );
setScaleKey( spep_6 +60 -3 + 92, 1, 0.72, 0.72 );
setScaleKey( spep_6 +60 -3 + 94, 1, 0.69, 0.69 );
setScaleKey( spep_6 +60 -3 + 96, 1, 0.66, 0.66 );
setScaleKey( spep_6 +60 -3 + 98, 1, 0.645, 0.645 );
setScaleKey( spep_6 +60 -3 + 100, 1, 0.615, 0.615 );
setScaleKey( spep_6 +60 -3 + 102, 1, 0.585, 0.585 );
setScaleKey( spep_6 +60 -3 + 104, 1, 0.57, 0.57 );
setScaleKey( spep_6 +60 -3 + 106, 1, 0.54, 0.54 );
setScaleKey( spep_6 +60 -3 + 108, 1, 0.525, 0.525 );
setScaleKey( spep_6 +60 -3 + 110, 1, 0.495, 0.495 );
setScaleKey( spep_6 +60 -3 + 112, 1, 0.465, 0.465 );
setScaleKey( spep_6 +60 -3 + 114, 1, 0.45, 0.45 );
setScaleKey( spep_6 +60 -3 + 116, 1, 0.42, 0.42 );
setScaleKey( spep_6 +60 -3 + 118, 1, 0.39, 0.39 );
setScaleKey( spep_6 +60 -3 + 119, 1, 0.39, 0.39 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 1, 1, 0 );
setRotateKey( spep_6 + 2, 1, 0 );
setRotateKey( spep_6 + 3, 1, 0 );
setRotateKey( spep_6 + 4, 1, 0 );
setRotateKey( spep_6 + 5, 1, 0 );
setRotateKey( spep_6 + 6, 1, 0 );
setRotateKey( spep_6 -3 + 51, 1, 0 );
setRotateKey( spep_6 -3 + 52, 1, -42.6 );
setRotateKey( spep_6 -3 + 54, 1, -42.7 );
setRotateKey( spep_6 -3 + 62, 1, -42.7 );
--setRotateKey( spep_6 -3 + 63, 1, -42.7 );
--
setRotateKey( spep_6 +60 + 0, 1, 0 );
setRotateKey( spep_6 +60 + 116, 1, 0 );

-- ** 音 ** --
--剣突き刺さる1
SE022 = playSe( spep_6 + 40, 1189 );

--剣突き刺さる2
SE023 = playSe( spep_6 + 46, 1032 );

--剣突き刺さる3
SE024 = playSe( spep_6 + 46, 1061 );
setSeVolumeByWorkId( spep_6 + 46, SE024, 79 );

--爆発1
SE025 = playSe( spep_6 + 46, 1188 );

--剣突き刺さる4
SE026 = playSe( spep_6 + 54, 1031 );

--剣突き刺さる5
SE027 = playSe( spep_6 + 58, 1032 );

-- ** 黒背景 ** --
--entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;


--------------------------------------
--飛んでいく敵(116F)
--------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --飛んでいく敵_敵より奥(ef_007_front)
setEffMoveKey( spep_7 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, last_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, last_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_f, 0 );
setEffRotateKey( spep_7 + 116, last_f, 0 );
setEffAlphaKey( spep_7 + 0, last_f, 255 );
setEffAlphaKey( spep_7 + 116, last_f, 255 );

last_b = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --飛んでいく敵_敵より手前(ef_007_back)
setEffMoveKey( spep_7 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, last_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, last_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_b, 0 );
setEffRotateKey( spep_7 + 116, last_b, 0 );
setEffAlphaKey( spep_7 + 0, last_b, 255 );
setEffAlphaKey( spep_7 + 116, last_b, 255 );

-- ** 音 ** 
--剣突き刺さる6
SE028 = playSe( spep_7 + 4, 1031 );

--爆発1
SE029 = playSe( spep_7 + 4, 1024 );

--爆発2
SE030 = playSe( spep_7 + 16, 45 );
setSeVolumeByWorkId( spep_7 + 16, SE030, 141 );
setTimeStretch( SE030, 1.26, 10, 1 );

--爆発3
SE031 = playSe( spep_7 + 16, 1161 );
stopSe( spep_7 + 58, SE031, 46 );

-- ** 黒背景 ** --
--entryFadeBg( spep_7 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 );--38
endPhase( spep_7 + 106 );

end