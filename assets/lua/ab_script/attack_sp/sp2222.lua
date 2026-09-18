--1022590:スーパージャネンバ_地獄門_sp2222
--sp_effect_a1_00303
--sp2222

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
SP_01 = 157623; --敵に向かうスーパージャネンバ　手前 ef_001
SP_02 = 157624; --敵に向かうスーパージャネンバ　奥 ef_002
SP_03 = 157625; --蹴りを放つスーパージャネンバ ef_003
SP_04 = 157627; --蹴りがヒットする　手前 ef_004
SP_05 = 157629; --蹴りがヒットする　奥 ef_005
SP_06 = 157630; --蹴られて体勢を崩す敵　手前 ef_006
SP_07 = 157631; --蹴られて体勢を崩す敵　奥 ef_007
SP_08 = 157632; --気を溜めるジャネンバとカットイン 手前 ef_008
SP_09 = 157634; --気を溜めるジャネンバとカットイン　奥 ef_009
SP_10 = 157635; --気を溜めワープホールを展開するジャネンバ　手前 ef_010
SP_11 = 157637; --気を溜めワープホールを展開するジャネンバ　奥 ef_011
SP_12 = 157638; --ジャネンバ　画面手前に接近　 ef_012
SP_13 = 157639; --ワープして敵の背後に回り込む　手前 ef_013
SP_14 = 157641; --ワープして敵の背後に回り込む　奥 ef_014
SP_15 = 157642; --敵を拳で挟み気弾を溜める　手前 ef_015
SP_16 = 157644; --敵を拳で挟み気弾を溜める　奥 ef_016
SP_17 = 157645; --気弾を放つ　手前 ef_017
SP_18 = 157647; --気弾を放つ　奥 ef_018
SP_19 = 157648; --フィニッシュ　光球が拡がる ef_019

--敵側
SP_03r = 157626; --蹴りを放つスーパージャネンバ ef_003r
SP_04r = 157628; --蹴りがヒットする　手前 ef_004r
SP_08r = 157633; --気を溜めるジャネンバとカットイン　手前 ef_008r
SP_10r = 157636; --気を溜めワープホールを展開するジャネンバ　手前 ef_010r
SP_13r = 157640; --ワープして敵の背後に回り込む　手前 ef_013r
SP_15r = 157643; --敵を拳で挟み気弾を溜める　手前 ef_015r
SP_17r = 157646; --気弾を放つ　手前 ef_017r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵に向かうスーパージャネンバ(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  --敵に向かうスーパージャネンバ　手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 56, 0x80, -1, 0, 0, 0 );  --敵に向かうスーパージャネンバ　奥 ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 56, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 56, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 175, 18.2 , 0 );
setMoveKey( spep_0 + 1, 1, 178.5, 14.7 , 0 );
setMoveKey( spep_0 + 2, 1, 181.2, 13.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 181.4, 20.1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 181.4, 20.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 171, 16.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 171, 16.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 179.2, 14.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 182.2, 14.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 182.6, 20.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 172.5, 16.8 , 0 );

s0 = 0.1;
setScaleKey( spep_0 + 0, 1, 0.63 +s0, 0.63 +s0 );
setScaleKey( spep_0 + 1, 1, 0.64 +s0, 0.64 +s0 );
setScaleKey( spep_0 + 2, 1, 0.64 +s0, 0.64 +s0 );
setScaleKey( spep_0 -3 + 6, 1, 0.65 +s0, 0.65 +s0 );
setScaleKey( spep_0 -3 + 7, 1, 0.65 +s0, 0.65 +s0 );
setScaleKey( spep_0 -3 + 8, 1, 0.66 +s0, 0.66 +s0 );
setScaleKey( spep_0 -3 + 9, 1, 0.66 +s0, 0.66 +s0 );
setScaleKey( spep_0 -3 + 10, 1, 0.68 +s0, 0.68 +s0 );
setScaleKey( spep_0 -3 + 12, 1, 0.7 +s0, 0.7 +s0 );
setScaleKey( spep_0 -3 + 14, 1, 0.72 +s0, 0.72 +s0 );
setScaleKey( spep_0 -3 + 16, 1, 0.75 +s0, 0.75 +s0 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--向かっていく
SE001 = playSe( spep_0 + 0, 1182 );

--向かっていく
SE002 = playSe( spep_0 + 0, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 172.5, 16.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 180.9, 15.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 184.1, 14.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 184.8, 20.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 174.9, 17.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 183, 15.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.75 +s0, 0.75 +s0 );
    setScaleKey( SP_dodge + 2, 1, 0.78 +s0, 0.78 +s0 );
    setScaleKey( SP_dodge + 4, 1, 0.82 +s0, 0.82 +s0 );
    setScaleKey( SP_dodge + 6, 1, 0.86 +s0, 0.86 +s0 );
    setScaleKey( SP_dodge + 8, 1, 0.9 +s0, 0.9 +s0 );
    setScaleKey( SP_dodge + 10, 1, 0.9 +s0, 0.9 +s0 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

setDisp( spep_0 + 56, 1, 0 );
changeAnime( spep_0 -3 + 26, 1, 104 );

setMoveKey( spep_0 -3 + 18, 1, 180.9, 15.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 184.1, 14.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 184.8, 20.6 , 0 );
setMoveKey( spep_0 -3 + 25, 1, 174.9, 17.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 183, 15.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 185.9, 14.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 186, 20.3 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 175.7, 16.4 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 183.8, 14.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 186.6, 13.3 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 186.8, 19.1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 187, 18.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 187.2, 18.6 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 187.4, 18.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 187.6, 18 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 187.8, 17.7 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 188, 17.5 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 188.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 188.4, 16.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 188.5, 16.6 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 188.7, 16.3 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 188.7, 16.3 , 0 );

setScaleKey( spep_0 -3 + 18, 1, 0.78 +s0, 0.78 +s0 );
setScaleKey( spep_0 -3 + 20, 1, 0.82 +s0, 0.82 +s0 );
setScaleKey( spep_0 -3 + 22, 1, 0.86 +s0, 0.86 +s0 );
setScaleKey( spep_0 -3 + 25, 1, 0.9 +s0, 0.9 +s0 );
setScaleKey( spep_0 -3 + 26, 1, 0.9 +s0, 0.9 +s0 );
setScaleKey( spep_0 -3 + 28, 1, 0.91 +s0, 0.91 +s0 );
setScaleKey( spep_0 -3 + 30, 1, 0.92 +s0, 0.92 +s0 );
setScaleKey( spep_0 -3 + 32, 1, 0.94 +s0, 0.94 +s0 );
setScaleKey( spep_0 -3 + 34, 1, 0.95 +s0, 0.95 +s0 );
setScaleKey( spep_0 -3 + 36, 1, 0.96 +s0, 0.96 +s0 );
setScaleKey( spep_0 -3 + 38, 1, 0.97 +s0, 0.97 +s0 );
setScaleKey( spep_0 -3 + 40, 1, 0.98 +s0, 0.98 +s0 );
setScaleKey( spep_0 -3 + 42, 1, 0.99 +s0, 0.99 +s0 );
setScaleKey( spep_0 -3 + 44, 1, 1 +s0, 1 +s0 );
setScaleKey( spep_0 -3 + 46, 1, 1.01 +s0, 1.01 +s0 );
setScaleKey( spep_0 -3 + 48, 1, 1.02 +s0, 1.02 +s0 );
setScaleKey( spep_0 -3 + 50, 1, 1.03 +s0, 1.03 +s0 );
setScaleKey( spep_0 -3 + 52, 1, 1.04 +s0, 1.04 +s0 );
setScaleKey( spep_0 -3 + 54, 1, 1.05 +s0, 1.05 +s0 );
setScaleKey( spep_0 -3 + 56, 1, 1.06 +s0, 1.06 +s0 );
setScaleKey( spep_0 -3 + 58, 1, 1.08 +s0, 1.08 +s0 );
setScaleKey( spep_0 -3 + 59, 1, 1.08 +s0, 1.08 +s0 );

setRotateKey( spep_0 -3 + 59, 1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 蹴りを放つスーパージャネンバ(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
jkick = entryEffectLife( spep_1 + 0, SP_03, 86, 0x100, -1, 0, 0, 0 );  --蹴りを放つスーパージャネンバ ef_003
setEffMoveKey( spep_1 + 0, jkick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, jkick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jkick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, jkick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jkick, 0 );
setEffRotateKey( spep_1 + 86, jkick, 0 );
setEffAlphaKey( spep_1 + 0, jkick, 255 );
setEffAlphaKey( spep_1 + 86 -1, jkick, 255 );
setEffAlphaKey( spep_1 + 86, jkick, 0 );

-- ** 音 ** --
--向かってきて振りかぶる
SE003 = playSe( spep_1 + 0, 1314 );
setSeVolumeByWorkId( spep_1 + 0, SE003, 67 );
stopSe( spep_1 + 76, SE003, 32 );

--向かってきて振りかぶる
SE004 = playSe( spep_1 + 0, 1278 );
setSeVolumeByWorkId( spep_1 + 0, SE004, 70 );
stopSe( spep_1 + 76, SE004, 32 );

--向かってきて振りかぶる
SE005 = playSe( spep_1 + 0, 1167 );
setSeVolumeByWorkId( spep_1 + 0, SE005, 65 );
setPitch( spep_1 + 0, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );

--向かってきて振りかぶる
SE006 = playSe( spep_1 + 40, 1116 );
setSeVolumeByWorkId( spep_1 + 40, SE006, 143 );
stopSe( spep_1 + 74, SE006, 16 );

--向かってきて振りかぶる
SE007 = playSe( spep_1 + 62, 1004 );
setSeVolumeByWorkId( spep_1 + 62, SE007, 207 );
setPitch( spep_1 + 62, SE007, -400 );
setTimeStretch( SE007, 0.73, 40, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 蹴りがヒットする(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
jkhit_f = entryEffectLife( spep_2 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --蹴りがヒットする　手前 ef_004
setEffMoveKey( spep_2 + 0, jkhit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, jkhit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jkhit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, jkhit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jkhit_f, 0 );
setEffRotateKey( spep_2 + 56, jkhit_f, 0 );
setEffAlphaKey( spep_2 + 0, jkhit_f, 255 );
setEffAlphaKey( spep_2 + 56 -1, jkhit_f, 255 );
setEffAlphaKey( spep_2 + 56, jkhit_f, 0 );

jkhit_b = entryEffectLife( spep_2 + 0, SP_05, 56, 0x80, -1, 0, 0, 0 );  --蹴りがヒットする　奥 ef_005
setEffMoveKey( spep_2 + 0, jkhit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, jkhit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jkhit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, jkhit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jkhit_b, 0 );
setEffRotateKey( spep_2 + 56, jkhit_b, 0 );
setEffAlphaKey( spep_2 + 0, jkhit_b, 255 );
setEffAlphaKey( spep_2 + 56 -1, jkhit_b, 255 );
setEffAlphaKey( spep_2 + 56, jkhit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 56, 1, 0 );
changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 -3 + 8, 1, 7 );

a2 = 10;
b2 = 10;
setMoveKey( spep_2 + 0, 1, 185 +a2, -199.4 -b2 , 0 );
setMoveKey( spep_2 + 1, 1, 167.5 +a2, -203.8 -b2 , 0 );
setMoveKey( spep_2 + 2, 1, 149.8 +a2, -208.3 -b2 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 131.8 +a2, -212.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 408 +a2, -137.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 274.7 +a2, -125.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 168.8 +a2, -141.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 166 +a2, -130.3 -b2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 140.3 +a2, -143.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 132.8 +a2, -130.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 145.2 +a2, -151.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 142.4 +a2, -140.4 -b2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 116.6 +a2, -153.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 109.2 +a2, -140.9 -b2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 121.5 +a2, -161.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 118.7 +a2, -150.4 -b2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 93 +a2, -163.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 85.5 +a2, -150.9 -b2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 97.9 +a2, -171.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 95.1 +a2, -160.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 69.3 +a2, -173.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 61.9 +a2, -161 -b2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 74.3 +a2, -181.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 71.5 +a2, -170.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 65.5 +a2, -173.1 -b2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 59.6 +a2, -175.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 53.7 +a2, -178.1 -b2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 47.8 +a2, -180.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 41.9 +a2, -183.2 -b2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 36 +a2, -185.7 -b2 , 0 );
--setMoveKey( spep_2 -3 + 59, 1, 36 +a2, -185.7 -b2 , 0 );

s1 = 0.6;
s2 = 0.2;
setScaleKey( spep_2 + 0, 1, 5.81 +s1, 5.81 +s1 );
setScaleKey( spep_2 + 1, 1, 5.85 +s1, 5.85 +s1 );
setScaleKey( spep_2 + 2, 1, 5.89 +s1, 5.89 +s1 );
setScaleKey( spep_2 -3 + 7, 1, 5.93 +s1, 5.93 +s1 );
setScaleKey( spep_2 -3 + 8, 1, 2.8362 +s2, 2.8362 +s2 );
setScaleKey( spep_2 -3 + 10, 1, 2.4534 +s2, 2.4534 +s2 );
setScaleKey( spep_2 -3 + 12, 1, 2.0706 +s2, 2.0706 +s2 );
setScaleKey( spep_2 -3 + 58, 1, 2.0706 +s2, 2.0706 +s2 );
--setScaleKey( spep_2 -3 + 59, 1, 2.0706, 2.0706 );

setRotateKey( spep_2 + 0, 1, -11.9 );
setRotateKey( spep_2 -3 + 7, 1, -11.9 );
setRotateKey( spep_2 -3 + 8, 1, 63.3 );
setRotateKey( spep_2 -3 + 58, 1, 63.3 );
--setRotateKey( spep_2 -3 + 59, 1, 63.3 );

-- ** 音 ** --
--キック
SE008 = playSe( spep_2 + 2, 1187 );

--キック
SE009 = playSe( spep_2 + 2, 1010 );

--キック
SE010 = playSe( spep_2 + 2, 1110 );

--敵飛んでいく
SE011 = playSe( spep_2 + 52, 1183 );
setSeVolumeByWorkId( spep_2 + 52, SE011, 81 );

--敵飛んでいく
SE012 = playSe( spep_2 + 52, 1027 );
setSeVolumeByWorkId( spep_2 + 52, SE012, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 蹴られて体勢を崩す敵(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
emove_f = entryEffectLife( spep_3 + 0, SP_06, 46, 0x100, -1, 0, 0, 0 );  --蹴られて体勢を崩す敵　手前 ef_006
setEffMoveKey( spep_3 + 0, emove_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, emove_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, emove_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, emove_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, emove_f, 0 );
setEffRotateKey( spep_3 + 46, emove_f, 0 );
setEffAlphaKey( spep_3 + 0, emove_f, 255 );
setEffAlphaKey( spep_3 + 46 -1, emove_f, 255 );
setEffAlphaKey( spep_3 + 46, emove_f, 0 );

emove_b = entryEffectLife( spep_3 + 0, SP_07, 46, 0x80, -1, 0, 0, 0 );  --蹴られて体勢を崩す敵　奥 ef_007
setEffMoveKey( spep_3 + 0, emove_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, emove_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, emove_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, emove_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, emove_b, 0 );
setEffRotateKey( spep_3 + 46, emove_b, 0 );
setEffAlphaKey( spep_3 + 0, emove_b, 255 );
setEffAlphaKey( spep_3 + 46 -1, emove_b, 255 );
setEffAlphaKey( spep_3 + 46, emove_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 + 46, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 85.9, 9.9 , 0 );
setMoveKey( spep_3 + 1, 1, 113.9, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 100.1, -14.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 137.1, -21.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 123.7, -11.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 143.6, -7.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 121.9, -20.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 141.7, -23.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 128.3, -13.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 129.5, -13.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 130.6, -13.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 131.7, -14.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 132.8, -14.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 133.9, -15.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 135, -15.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 136.1, -15.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 137.1, -16.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 138.3, -16.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 139.3, -17.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 140.4, -17.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 141.4, -17.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 142.4, -18.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 143.4, -18.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 144.4, -18.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 145.4, -19.3 , 0 );
--setMoveKey( spep_3 -3 + 49, 1, 145.4, -19.3 , 0 );

s3 = 0.05;
setScaleKey( spep_3 + 0, 1, 0.9164 +s3, 0.9164 +s3 );
--setScaleKey( spep_3 + 0, 1, 0.87 +s3, 0.87 +s3 );
setScaleKey( spep_3 + 1, 1, 0.7888 +s3, 0.7888 +s3 );
setScaleKey( spep_3 + 2, 1, 0.7888 +s3, 0.7888 +s3 );
setScaleKey( spep_3 -3 + 6, 1, 0.8642 +s3, 0.8642 +s3 );
setScaleKey( spep_3 -3 + 8, 1, 0.87 +s3, 0.87 +s3 );
setScaleKey( spep_3 -3 + 10, 1, 0.87 +s3, 0.87 +s3 );
setScaleKey( spep_3 -3 + 12, 1, 0.8758 +s3, 0.8758 +s3 );
setScaleKey( spep_3 -3 + 14, 1, 0.8816 +s3, 0.8816 +s3 );
setScaleKey( spep_3 -3 + 16, 1, 0.8816 +s3, 0.8816 +s3 );
setScaleKey( spep_3 -3 + 18, 1, 0.8874 +s3, 0.8874 +s3 );
setScaleKey( spep_3 -3 + 20, 1, 0.8874 +s3, 0.8874 +s3 );
setScaleKey( spep_3 -3 + 22, 1, 0.8932 +s3, 0.8932 +s3 );
setScaleKey( spep_3 -3 + 24, 1, 0.8932 +s3, 0.8932 +s3 );
setScaleKey( spep_3 -3 + 26, 1, 0.899 +s3, 0.899 +s3 );
setScaleKey( spep_3 -3 + 28, 1, 0.9048 +s3, 0.9048 +s3 );
setScaleKey( spep_3 -3 + 30, 1, 0.9048 +s3, 0.9048 +s3 );
setScaleKey( spep_3 -3 + 32, 1, 0.9106 +s3, 0.9106 +s3 );
setScaleKey( spep_3 -3 + 34, 1, 0.9106 +s3, 0.9106 +s3 );
setScaleKey( spep_3 -3 + 36, 1, 0.9164 +s3, 0.9164 +s3 );
setScaleKey( spep_3 -3 + 38, 1, 0.9164 +s3, 0.9164 +s3 );
setScaleKey( spep_3 -3 + 40, 1, 0.9222 +s3, 0.9222 +s3 );
setScaleKey( spep_3 -3 + 42, 1, 0.9222 +s3, 0.9222 +s3 );
setScaleKey( spep_3 -3 + 44, 1, 0.928 +s3, 0.928 +s3 );
setScaleKey( spep_3 -3 + 46, 1, 0.928 +s3, 0.928 +s3 );
setScaleKey( spep_3 -3 + 48, 1, 0.9338 +s3, 0.9338 +s3 );
--setScaleKey( spep_3 -3 + 49, 1, 0.9338, 0.9338 );

setRotateKey( spep_3 + 0, 1, -58.1 );
setRotateKey( spep_3 + 1, 1, -57.9 );
setRotateKey( spep_3 + 2, 1, -57.7 );
setRotateKey( spep_3 -3 + 6, 1, -57.4 );
setRotateKey( spep_3 -3 + 10, 1, -57.4 );
setRotateKey( spep_3 -3 + 12, 1, -57.3 );
setRotateKey( spep_3 -3 + 14, 1, -57.3 );
setRotateKey( spep_3 -3 + 16, 1, -57.2 );
setRotateKey( spep_3 -3 + 18, 1, -57.2 );
setRotateKey( spep_3 -3 + 20, 1, -57.1 );
setRotateKey( spep_3 -3 + 22, 1, -57.1 );
setRotateKey( spep_3 -3 + 24, 1, -57 );
setRotateKey( spep_3 -3 + 28, 1, -57 );
setRotateKey( spep_3 -3 + 30, 1, -56.9 );
setRotateKey( spep_3 -3 + 32, 1, -56.9 );
setRotateKey( spep_3 -3 + 34, 1, -56.8 );
setRotateKey( spep_3 -3 + 36, 1, -56.8 );
setRotateKey( spep_3 -3 + 38, 1, -56.7 );
setRotateKey( spep_3 -3 + 42, 1, -56.7 );
setRotateKey( spep_3 -3 + 44, 1, -56.6 );
setRotateKey( spep_3 -3 + 46, 1, -56.6 );
setRotateKey( spep_3 -3 + 48, 1, -56.5 );
--setRotateKey( spep_3 -3 + 49, 1, -56.5 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;

------------------------------------------------------
-- 気を溜めるジャネンバとカットイン(146F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_4 + 0, SP_08, 146, 0x100, -1, 0, 0, 0 );  --気を溜めるジャネンバとカットイン 手前 ef_008
setEffMoveKey( spep_4 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 146, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 146 -1, tame_f, 255 );
setEffAlphaKey( spep_4 + 146, tame_f, 0 );

tame_b = entryEffectLife( spep_4 + 0, SP_09, 146, 0x80, -1, 0, 0, 0 );  --気を溜めるジャネンバとカットイン　奥 ef_009
setEffMoveKey( spep_4 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 146, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 146 -1, tame_b, 255 );
setEffAlphaKey( spep_4 + 146, tame_b, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 90, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 90, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 90, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 146, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 139.5, -17.4 , 0 );
setMoveKey( spep_4 + 1, 1, 149.6, -18.1 , 0 );
setMoveKey( spep_4 + 2, 1, 160.1, -19 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 171, -19.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 174.9, -20.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 178.7, -21 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 182.6, -21.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 186.4, -22.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 190.3, -22.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 194.2, -23.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 194.6, -23.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 195, -23.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 195.4, -23.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 195.8, -23.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 196.2, -23.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 196.6, -23.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 197, -23.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 197.4, -23.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 197.8, -23.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 198.2, -23.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 198.6, -23.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 199, -24 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 199.4, -24 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 199.8, -24.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 200.2, -24.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 200.6, -24.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 201, -24.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 201.4, -24.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 201.8, -24.4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 202.3, -24.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 202.6, -24.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 203, -24.6 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 203.5, -24.6 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 203.8, -24.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 204.2, -24.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 204.6, -24.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 205.1, -24.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 205.4, -24.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 205.8, -25 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 206.3, -25 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 206.7, -25.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 207, -25.1 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 207.5, -25.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 207.9, -25.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 208.3, -25.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 208.6, -25.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 209.1, -25.4 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 209.5, -25.5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 209.8, -25.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 210.3, -25.6 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 210.7, -25.7 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 211.1, -25.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 211.4, -25.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 211.9, -25.8 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 212.3, -25.9 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 212.7, -25.9 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 205.5, -17.5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 221.9, -27.2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 220.2, -20.4 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 210.7, -27.3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 208.1, -19.5 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 208.3, -18.2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 223.2, -27.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 223.3, -20.6 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 223.7, -20.7 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 224.1, -20.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 224.5, -20.8 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 225, -20.8 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 225.4, -20.9 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 225.8, -20.9 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 226.2, -21 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 226.6, -21.1 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 227, -21.1 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 227.4, -21.2 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 227.9, -21.2 , 0 );
--setMoveKey( spep_4 -3 + 149, 1, 227.9, -21.2 , 0 );

setScaleKey( spep_4 + 0, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 1, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 6, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 8, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 12, 1, 1, 1 );
setScaleKey( spep_4 -3 + 14, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 16, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 20, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 22, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 28, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 30, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 34, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 36, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 38, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 40, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 42, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 46, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 50, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 52, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 58, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 60, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 62, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 64, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 66, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 68, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 70, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 72, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 74, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 76, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 78, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 80, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 82, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 84, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 86, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 88, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 90, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 92, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 94, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 96, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 98, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 100, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 102, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 104, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 106, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 108, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 112, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 114, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 116, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 118, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 120, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 122, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 124, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 126, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 128, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 130, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 132, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 134, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 136, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 138, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 140, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 144, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 146, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 148, 1, 0.51, 0.51 );
--setScaleKey( spep_4 -3 + 149, 1, 0.51, 0.51 );

setRotateKey( spep_4 + 0, 1, 21.1 );
setRotateKey( spep_4 + 1, 1, 21.1 );
setRotateKey( spep_4 -3 + 6, 1, 21.2 );
setRotateKey( spep_4 -3 + 12, 1, 21.2 );
setRotateKey( spep_4 -3 + 14, 1, 21.3 );
setRotateKey( spep_4 -3 + 40, 1, 21.3 );
setRotateKey( spep_4 -3 + 42, 1, 21.4 );
setRotateKey( spep_4 -3 + 92, 1, 21.4 );
setRotateKey( spep_4 -3 + 94, 1, 21.5 );
setRotateKey( spep_4 -3 + 146, 1, 21.5 );
setRotateKey( spep_4 -3 + 148, 1, 21.6 );
--setRotateKey( spep_4 -3 + 149, 1, 21.6 );

-- ** 音 ** --
--気弾溜め
SE013 = playSe( spep_4 + 6, 1296 );
stopSe( spep_4 + 100, SE013, 18 );

--気弾溜め
SE014 = playSe( spep_4 + 6, 1222 );
stopSe( spep_4 + 52, SE014, 26 );

--顔カットイン
SE015 = playSe( spep_4 + 8, 1018 );

--気弾ワープする
SE016 = playSe( spep_4 + 100, 1235 );
setSeVolumeByWorkId( spep_4 + 100, SE016, 126 );
setPitch( spep_4 + 100, SE016, -600 );
setTimeStretch( SE016, 0.6, 40, 4 );

--気弾ワープする
SE017 = playSe( spep_4 + 100, 1003 );

--気弾ワープする
SE018 = playSe( spep_4 + 102, 1291 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 146;

------------------------------------------------------
-- 気を溜めワープホールを展開するジャネンバ(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
warphole_f = entryEffectLife( spep_5 + 0, SP_10, 146, 0x100, -1, 0, 0, 0 );  --気を溜めワープホールを展開するジャネンバ　手前 ef_010
setEffMoveKey( spep_5 + 0,warphole_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146,warphole_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0,warphole_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146,warphole_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,warphole_f, 0 );
setEffRotateKey( spep_5 + 146,warphole_f, 0 );
setEffAlphaKey( spep_5 + 0,warphole_f, 255 );
setEffAlphaKey( spep_5 + 146 -1,warphole_f, 255 );
setEffAlphaKey( spep_5 + 146,warphole_f, 0 );

warphole_b = entryEffectLife( spep_5 + 0, SP_11, 146, 0x80, -1, 0, 0, 0 );  --気を溜めワープホールを展開するジャネンバ　奥 ef_011
setEffMoveKey( spep_5 + 0, warphole_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, warphole_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, warphole_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146, warphole_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, warphole_b, 0 );
setEffRotateKey( spep_5 + 146, warphole_b, 0 );
setEffAlphaKey( spep_5 + 0, warphole_b, 255 );
setEffAlphaKey( spep_5 + 146 -1, warphole_b, 255 );
setEffAlphaKey( spep_5 + 146, warphole_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 146, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 + 0, 1, -87.5, 109.2 , 0 );
setMoveKey( spep_5 + 0, 1, -89, 134.9 , 0 );
setMoveKey( spep_5 + 1, 1, -89.1, 159 , 0 );
setMoveKey( spep_5 + 2, 1, -89.1, 159 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -88.8, 182.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -80.2, 172.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -67.5, 157.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -50.9, 138.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -30.4, 114 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -6, 85.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -4.4, 83.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -2.7, 81.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -1.2, 80.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 0.3, 78.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 1.9, 77.1 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 3.4, 75.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 4.9, 74.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 16.1, 71.2 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 0.4, 72.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 3.8, 68.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 11.8, 62.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 16.4, 61.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 10.5, 74.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 14.4, 64.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 15.6, 63.8 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 26.7, 60.1 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 10.7, 64.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 14, 58.1 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 22.1, 52.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 26.1, 52.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 21.4, 64.8 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 22.8, 53.2 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 19.4, 54.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 31.6, 42.2 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 19.4, 58 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 33, 56.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 28.6, 49.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 29.3, 43.2 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 24.4, 48.2 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 31.4, 49.4 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 41.6, 56.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 26.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 33.1, 40.9 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 29.4, 45.2 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 35.3, 46.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 45.9, 53.6 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 29, 40.9 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 37.2, 37.2 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 30.8, 44.2 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 38.7, 43.4 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 49.2, 50.7 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 33, 38.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 41.2, 34.5 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 34.6, 41.2 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 41.6, 41.5 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 51.5, 48.9 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 34.7, 35.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 42.8, 33.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 37.8, 39.4 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 43.8, 40.2 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 53.6, 47.7 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 37.3, 34.9 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 45.2, 32.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 39.7, 38.5 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 45.5, 39.5 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 55.7, 48 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 38.8, 34 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 46.2, 32.1 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 40.6, 38.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 46.8, 39.4 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 54.7, 45.5 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 44.6, 39.8 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 51.9, 34.2 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 45.3, 47.9 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 42.7, 38.2 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 53.1, 39 , 0 );
setMoveKey( spep_5 -3 + 149, 1, 53.1, 39 , 0 );

s5 = 0.05;
--setScaleKey( spep_5 + 0, 1, 0.5568 +s5, 0.5568 +s5 );
setScaleKey( spep_5 + 0, 1, 0.4814 +s5, 0.4814 +s5 );
setScaleKey( spep_5 + 1, 1, 0.4118 +s5, 0.4118 +s5 );
setScaleKey( spep_5 + 2, 1, 0.4118 +s5, 0.4118 +s5 );
setScaleKey( spep_5 -3 + 6, 1, 0.3422 +s5, 0.3422 +s5 );
setScaleKey( spep_5 -3 + 8, 1, 0.3596 +s5, 0.3596 +s5 );
setScaleKey( spep_5 -3 + 10, 1, 0.3886 +s5, 0.3886 +s5 );
setScaleKey( spep_5 -3 + 12, 1, 0.4292 +s5, 0.4292 +s5 );
setScaleKey( spep_5 -3 + 14, 1, 0.4756 +s5, 0.4814 +s5 );
setScaleKey( spep_5 -3 + 16, 1, 0.5336 +s5, 0.5336 +s5 );
setScaleKey( spep_5 -3 + 18, 1, 0.5394 +s5, 0.5394 +s5 );
setScaleKey( spep_5 -3 + 28, 1, 0.5394 +s5, 0.5394 +s5 );
setScaleKey( spep_5 -3 + 30, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 42, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 44, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 70, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 72, 1, 0.551 +s5, 0.5568 +s5 );
setScaleKey( spep_5 -3 + 74, 1, 0.5568 +s5, 0.5568 +s5 );
setScaleKey( spep_5 -3 + 90, 1, 0.5568 +s5, 0.5568 +s5 );
setScaleKey( spep_5 -3 + 92, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 120, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 122, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 136, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 138, 1, 0.5394 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 140, 1, 0.5394 +s5, 0.5394 +s5 );
setScaleKey( spep_5 -3 + 149, 1, 0.5394 +s5, 0.5394 +s5 );

setRotateKey( spep_5 + 0, 1, 16 );
setRotateKey( spep_5 + 146, 1, 16 );

-- ** 音 ** --
--ワープから気弾発射
SE019 = playSe( spep_5 + 10, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 10, SE019,20 );
setSeVolumeByWorkId( spep_5 + 12, SE019,40 );
setSeVolumeByWorkId( spep_5 + 14, SE019,60 );
setSeVolumeByWorkId( spep_5 + 16, SE019,80 );
--setSeVolumeByWorkId( spep_5 + 18, SE019,100 );
stopSe( spep_5 + 46, SE019, 8 );
setStartTimeMs( SE019,  450 );

--ワープから気弾発射
SE020 = playSe( spep_5 + 24, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 24, SE020,26 );
setSeVolumeByWorkId( spep_5 + 26, SE020,52 );
setSeVolumeByWorkId( spep_5 + 28, SE020,80 );
--setSeVolumeByWorkId( spep_5 + 30, SE020,100 );
stopSe( spep_5 + 66, SE020, 8 );
setStartTimeMs( SE020,  467 );

--ワープから気弾発射
SE021 = playSe( spep_5 + 0, 1235,"",0.6 );
setSeVolumeByWorkId( spep_5 + 0, SE021, 68 );

--ワープから気弾発射
SE022 = playSe( spep_5 + 2, 1291,"",0.6 );
setSeVolumeByWorkId( spep_5 + 2, SE022, 122 );

--ワープから気弾発射
SE023 = playSe( spep_5 + 36, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 36, SE023,26 );
setSeVolumeByWorkId( spep_5 + 38, SE023,52 );
setSeVolumeByWorkId( spep_5 + 40, SE023,80 );
--setSeVolumeByWorkId( spep_5 + 42, SE023,100 );
stopSe( spep_5 + 80, SE023, 8 );
setStartTimeMs( SE023,  467 );

--ワープから気弾発射
SE024 = playSe( spep_5 + 14, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 14, SE024, 130 );
setPitch( spep_5 + 14, SE024, -400 );
setTimeStretch( SE024, 0.73, 40, 4 );

--連続爆発
SE025 = playSe( spep_5 + 14, 1023,"",0.6 );
stopSe( spep_5 +38, SE025, 16 );

--ワープから気弾発射
SE026 = playSe( spep_5 + 24, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 24, SE026, 130 );
setPitch( spep_5 + 24, SE026, -400 );
setTimeStretch( SE026, 0.73, 40, 4 );

--ワープから気弾発射
SE027 = playSe( spep_5 + 60, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 60, SE027,20 );
setSeVolumeByWorkId( spep_5 + 62, SE027,40 );
setSeVolumeByWorkId( spep_5 + 64, SE027,60 );
setSeVolumeByWorkId( spep_5 + 66, SE027,80 );
--setSeVolumeByWorkId( spep_5 + 68, SE027,100 );
stopSe( spep_5 + 90, SE027, 8 );
setStartTimeMs( SE027,  450 );

--ワープから気弾発射
SE028 = playSe( spep_5 + 34, 1016,"",0.6 );
stopSe( spep_5 + 68, SE028, 6 );

--連続爆発
SE029 = playSe( spep_5 + 34, 1023,"",0.6 );
stopSe( spep_5 + 64, SE029, 20 );

--ワープから気弾発射
SE030 = playSe( spep_5 + 70, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 70, SE030,20 );
setSeVolumeByWorkId( spep_5 + 72, SE030,40 );
setSeVolumeByWorkId( spep_5 + 74, SE030,60 );
setSeVolumeByWorkId( spep_5 + 76, SE030,80 );
--setSeVolumeByWorkId( spep_5 + 78, SE030,100 );
stopSe( spep_5 + 104, SE030, 8 );
setStartTimeMs( SE030,  450 );

--ワープから気弾発射
SE031 = playSe( spep_5 + 44, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 44, SE031, 130 );
setPitch( spep_5 + 44, SE031, -400 );
setTimeStretch( SE031, 0.73, 40, 4 );

--連続爆発
SE032 = playSe( spep_5 + 54, 1023,"",0.6 );
stopSe( spep_5 + 94, SE032, 18 );

--ワープから気弾発射
SE033 = playSe( spep_5 + 56, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 56, SE033, 130 );
setPitch( spep_5 + 56, SE033, -400 );
setTimeStretch( SE033, 0.73, 40, 4 );

--ワープから気弾発射
SE034 = playSe( spep_5 + 64, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 64, SE034, 130 );
stopSe( spep_5 + 80, SE034, 4 );
setPitch( spep_5 + 64, SE034, -400 );
setTimeStretch( SE034, 0.73, 40, 4 );

--ワープから気弾発射
SE035 = playSe( spep_5 + 74, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 74, SE035, 130 );
stopSe( spep_5 + 94, SE035, 4 );
setPitch( spep_5 + 74, SE035, -400 );
setTimeStretch( SE035, 0.73, 40, 4 );

--ワープから気弾発射
SE036 = playSe( spep_5 + 84, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 84, SE036, 130 );
stopSe( spep_5 + 100, SE036, 6 );
setPitch( spep_5 + 84, SE036, -400 );
setTimeStretch( SE036, 0.73, 40, 4 );

--ワープから気弾発射
SE037 = playSe( spep_5 + 94, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 94, SE037, 130 );
stopSe( spep_5 + 110, SE037, 4 );
setPitch( spep_5 + 94, SE037, -400 );
setTimeStretch( SE037, 0.73, 40, 4 );

--連続爆発
SE038 = playSe( spep_5 + 90, 1024,"",0.6 );
stopSe( spep_5 +126 + 18, SE038, 10 );

--連続爆発
SE039 = playSe( spep_5 + 90, 1023,"",0.6 );
stopSe( spep_5 +126 + 20, SE039, 8 );

--ワープから気弾発射
SE040 = playSe( spep_5 + 104, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 104, SE040, 130 );
setPitch( spep_5 + 104, SE040, -400 );
setTimeStretch( SE040, 0.73, 40, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 144, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_6 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_6 + 0, SE_05 );

--爆煙
SE042 = playSe( spep_6 + 90, 1011 );
setSeVolumeByWorkId( spep_6 + 90, SE042, 132 );
setBandpassFilter( spep_6 + 90, SE042, 24, 900 );

--爆煙
SE043 = playSe( spep_6 + 90, 1024 );
setSeVolumeByWorkId( spep_6 + 90, SE043, 53 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- ジャネンバ　画面手前に接近(106F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
jmove = entryEffectLife( spep_7 + 0, SP_12, 106, 0x100, -1, 0, 0, 0 );  --ジャネンバ　画面手前に接近　 ef_012
setEffMoveKey( spep_7 + 0, jmove, 0, 0 , 0 );
setEffMoveKey( spep_7 + 106, jmove, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, jmove, 1.0, 1.0 );
setEffScaleKey( spep_7 + 106, jmove, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, jmove, 0 );
setEffRotateKey( spep_7 + 106, jmove, 0 );
setEffAlphaKey( spep_7 + 0, jmove, 255 );
setEffAlphaKey( spep_7 + 106 -1, jmove, 255 );
setEffAlphaKey( spep_7 + 106, jmove, 0 );

-- ** 音 ** --
--向かってくる
SE044 = playSe( spep_7 + 8, 1167 );
setSeVolumeByWorkId( spep_7 + 8, SE044, 84 );
setPitch( spep_7 + 8, SE044, -400 );
setTimeStretch( SE044, 0.73, 40, 4 );

--バラバラになってワープする
SE045 = playSe( spep_7 + 40, 1337,"",0.6 );
setSeVolumeByWorkId( spep_7 + 40, SE045, 18 );
setSeVolumeByWorkId( spep_7 + 43, SE045, 36 );
setSeVolumeByWorkId( spep_7 + 46, SE045, 54 );
setSeVolumeByWorkId( spep_7 + 49, SE045, 72 );
setSeVolumeByWorkId( spep_7 + 52, SE045, 90 );
setSeVolumeByWorkId( spep_7 + 55, SE045, 108 );
setSeVolumeByWorkId( spep_7 + 57, SE045, 147 );
stopSe( spep_7 +106 +36, SE045, 14 );
setStartTimeMs( SE045,  533 );
setPitch( spep_7 + 40, SE045, 200 );
setTimeStretch( SE045, 1.13, 40, 4 );

--バラバラから現れる
SE046 = playSe( spep_7 + 68, 1336,"",0.6 );
setSeVolumeByWorkId( spep_7 + 68, SE046, 7 );
setSeVolumeByWorkId( spep_7 + 72, SE046, 14 );
setSeVolumeByWorkId( spep_7 + 76, SE046, 21 );
setSeVolumeByWorkId( spep_7 + 80, SE046, 28 );
setSeVolumeByWorkId( spep_7 + 84, SE046, 35 );
setSeVolumeByWorkId( spep_7 + 88, SE046, 42 );
setSeVolumeByWorkId( spep_7 + 90, SE046, 49 );
setSeVolumeByWorkId( spep_7 + 94, SE046, 56 );
setSeVolumeByWorkId( spep_7 + 98, SE046, 63 );
setSeVolumeByWorkId( spep_7 + 102, SE046, 70 );
setSeVolumeByWorkId( spep_7 + 106, SE046, 77 );
setSeVolumeByWorkId( spep_7 + 110, SE046, 84 );
setSeVolumeByWorkId( spep_7 + 114, SE046, 91 );
setSeVolumeByWorkId( spep_7 + 118, SE046, 120 );
stopSe( spep_7 +106 +42, SE046, 28 );
setStartTimeMs( SE046,  800 );

--バラバラになってワープする
SE047 = playSe( spep_7 + 50, 1335 );
setSeVolumeByWorkId( spep_7 + 50, SE047, 130 );
setPitch( spep_7 + 50, SE047, -400 );
setTimeStretch( SE047, 0.73, 40, 4 );

--バラバラになってワープする
SE048 = playSe( spep_7 + 56, 1232 );
setSeVolumeByWorkId( spep_7 + 56, SE048, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 106;

------------------------------------------------------
-- ワープして敵の背後に回り込む(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
jwarp_f = entryEffectLife( spep_8 + 0, SP_13, 56, 0x100, -1, 0, 0, 0 );  --ワープして敵の背後に回り込む　手前 ef_013
setEffMoveKey( spep_8 + 0, jwarp_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, jwarp_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, jwarp_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, jwarp_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, jwarp_f, 0 );
setEffRotateKey( spep_8 + 56, jwarp_f, 0 );
setEffAlphaKey( spep_8 + 0, jwarp_f, 255 );
setEffAlphaKey( spep_8 + 56 -1, jwarp_f, 255 );
setEffAlphaKey( spep_8 + 56, jwarp_f, 0 );

jwarp_b = entryEffectLife( spep_8 + 0, SP_14, 56, 0x80, -1, 0, 0, 0 );  --ワープして敵の背後に回り込む　奥 ef_014
setEffMoveKey( spep_8 + 0, jwarp_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, jwarp_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, jwarp_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, jwarp_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, jwarp_b, 0 );
setEffRotateKey( spep_8 + 56, jwarp_b, 0 );
setEffAlphaKey( spep_8 + 0, jwarp_b, 255 );
setEffAlphaKey( spep_8 + 56 -1, jwarp_b, 255 );
setEffAlphaKey( spep_8 + 56, jwarp_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 + 56, 1, 0 );
changeAnime( spep_8 + 0, 1, 5 );

a8 = 20;
b8 = 20;
setMoveKey( spep_8 + 0, 1, -454 +a8, -179.3 -b8 , 0 );
setMoveKey( spep_8 + 1, 1, -451.9 +a8, -178.4 -b8 , 0 );
setMoveKey( spep_8 + 2, 1, -445.7 +a8, -175.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -435.4 +a8, -171.5 -b8 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -420.9 +a8, -165.5 -b8 , 0 );
setMoveKey( spep_8 -3 + 10, 1, -402.3 +a8, -157.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -379.5 +a8, -148.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -352.7 +a8, -137 -b8 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -321.6 +a8, -124.1 -b8 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -286.5 +a8, -109.4 -b8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -247.2 +a8, -93 -b8 , 0 );
setMoveKey( spep_8 -3 + 22, 1, -203.7 +a8, -74.9 -b8 , 0 );
setMoveKey( spep_8 -3 + 24, 1, -156.2 +a8, -55 -b8 , 0 );
setMoveKey( spep_8 -3 + 26, 1, -104.5 +a8, -33.4 -b8 , 0 );
setMoveKey( spep_8 -3 + 28, 1, -101.4 +a8, -32.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 30, 1, -98.5 +a8, -30.9 -b8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, -95.8 +a8, -29.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 34, 1, -93.2 +a8, -28.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 36, 1, -90.8 +a8, -27.6 -b8 , 0 );
setMoveKey( spep_8 -3 + 38, 1, -88.5 +a8, -26.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -86.4 +a8, -25.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -84.4 +a8, -24.9 -b8 , 0 );
setMoveKey( spep_8 -3 + 44, 1, -82.6 +a8, -24.1 -b8 , 0 );
setMoveKey( spep_8 -3 + 46, 1, -80.9 +a8, -23.4 -b8 , 0 );
setMoveKey( spep_8 -3 + 48, 1, -79.4 +a8, -22.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 50, 1, -78 +a8, -22.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 52, 1, -76.7 +a8, -21.6 -b8 , 0 );
setMoveKey( spep_8 -3 + 54, 1, -75.7 +a8, -21.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 56, 1, -74.7 +a8, -20.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 58, 1, -74 +a8, -20.4 -b8 , 0 );
--setMoveKey( spep_8 -3 + 59, 1, -74, -20.4 , 0 );

setScaleKey( spep_8 + 0, 1, 8.58, 8.58 );
setScaleKey( spep_8 + 1, 1, 8.54, 8.54 );
setScaleKey( spep_8 + 2, 1, 8.44, 8.44 );
setScaleKey( spep_8 -3 + 6, 1, 8.26, 8.26 );
setScaleKey( spep_8 -3 + 8, 1, 8.01, 8.01 );
setScaleKey( spep_8 -3 + 10, 1, 7.7, 7.7 );
setScaleKey( spep_8 -3 + 12, 1, 7.31, 7.31 );
setScaleKey( spep_8 -3 + 14, 1, 6.85, 6.85 );
setScaleKey( spep_8 -3 + 16, 1, 6.33, 6.33 );
setScaleKey( spep_8 -3 + 18, 1, 5.73, 5.73 );
setScaleKey( spep_8 -3 + 20, 1, 5.06, 5.06 );
setScaleKey( spep_8 -3 + 22, 1, 4.32, 4.32 );
setScaleKey( spep_8 -3 + 24, 1, 3.52, 3.52 );
setScaleKey( spep_8 -3 + 26, 1, 2.64, 2.64 );
setScaleKey( spep_8 -3 + 28, 1, 2.58, 2.58 );
setScaleKey( spep_8 -3 + 30, 1, 2.52, 2.52 );
setScaleKey( spep_8 -3 + 32, 1, 2.46, 2.46 );
setScaleKey( spep_8 -3 + 34, 1, 2.41, 2.41 );
setScaleKey( spep_8 -3 + 36, 1, 2.36, 2.36 );
setScaleKey( spep_8 -3 + 38, 1, 2.31, 2.31 );
setScaleKey( spep_8 -3 + 40, 1, 2.27, 2.27 );
setScaleKey( spep_8 -3 + 42, 1, 2.23, 2.23 );
setScaleKey( spep_8 -3 + 44, 1, 2.19, 2.19 );
setScaleKey( spep_8 -3 + 46, 1, 2.16, 2.16 );
setScaleKey( spep_8 -3 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_8 -3 + 50, 1, 2.1, 2.1 );
setScaleKey( spep_8 -3 + 52, 1, 2.08, 2.08 );
setScaleKey( spep_8 -3 + 54, 1, 2.05, 2.05 );
setScaleKey( spep_8 -3 + 56, 1, 2.04, 2.04 );
setScaleKey( spep_8 -3 + 58, 1, 2.02, 2.02 );
--setScaleKey( spep_8 -3 + 59, 1, 2.02, 2.02 );

setRotateKey( spep_8 + 0, 1, 70 );
setRotateKey( spep_8 + 55, 1, 70 );
--setRotateKey( spep_8 + 56, 1, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;

------------------------------------------------------
-- 敵の背後に瞬間移動(146F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
jpunch_f = entryEffectLife( spep_9 + 0, SP_15, 146, 0x100, -1, 0, 0, 0 );  --敵を拳で挟み気弾を溜める　手前 ef_015
setEffMoveKey( spep_9 + 0, jpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 146, jpunch_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, jpunch_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, jpunch_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, jpunch_f, 0 );
setEffRotateKey( spep_9 + 146, jpunch_f, 0 );
setEffAlphaKey( spep_9 + 0, jpunch_f, 255 );
setEffAlphaKey( spep_9 + 146 -1, jpunch_f, 255 );
setEffAlphaKey( spep_9 + 146, jpunch_f, 0 );

jpunch_b = entryEffectLife( spep_9 + 0, SP_16, 146, 0x80, -1, 0, 0, 0 );  --敵を拳で挟み気弾を溜める　奥 ef_016
setEffMoveKey( spep_9 + 0, jpunch_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 146, jpunch_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, jpunch_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, jpunch_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, jpunch_b, 0 );
setEffRotateKey( spep_9 + 146, jpunch_b, 0 );
setEffAlphaKey( spep_9 + 0, jpunch_b, 255 );
setEffAlphaKey( spep_9 + 146 -1, jpunch_b, 255 );
setEffAlphaKey( spep_9 + 146, jpunch_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_9 + 0, 1, 1 );
--setDisp( spep_9 + 146, 1, 0 );
changeAnime( spep_9 + 0, 1, 5 );
changeAnime( spep_9 -3 + 32, 1, 7 );

a9 = 190;
b9 = 240;
setMoveKey( spep_9 + 0, 1, -606.4 -a9, 101 -b9 , 0 );
setMoveKey( spep_9 + 1, 1, -602.1 -a9, 101 -b9 , 0 );
setMoveKey( spep_9 + 2, 1, -590.1 -a9, 100.6 -b9 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -570.4 -a9, 99.9 -b9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -543 -a9, 98.9 -b9 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -508 -a9, 97.5 -b9 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -465.3 -a9, 95.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -414.9 -a9, 93.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -356.8 -a9, 91.4 -b9 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -291 -a9, 88.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -278.9 -a9, 88.4 -b9 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -266.6 -a9, 88 -b9 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -254.1 -a9, 87.6 -b9 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -241.4 -a9, 87.2 -b9 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -228.4 -a9, 86.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 31, 1, -215.4 -a9, 86.6 -b9 , 0 );

a10 = 250;
b10 = 100;
setMoveKey( spep_9 -3 + 32, 1, -420.8 +a10, -23.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 34, 1, -406.6 +a10, -27.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 36, 1, -388.9 +a10, -36.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -410.9 +a10, -36.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 40, 1, -388.8 +a10, -50.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 42, 1, -413.6 +a10, -38 -b10 , 0 );
setMoveKey( spep_9 -3 + 44, 1, -402.2 +a10, -64.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 46, 1, -388 +a10, -28 -b10 , 0 );
setMoveKey( spep_9 -3 + 48, 1, -403.1 +a10, -45.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 50, 1, -389.4 +a10, -55.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 52, 1, -400.8 +a10, -40 -b10 , 0 );
setMoveKey( spep_9 -3 + 54, 1, -404.6 +a10, -50 -b10 , 0 );
setMoveKey( spep_9 -3 + 56, 1, -380.3 +a10, -36.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 58, 1, -395.3 +a10, -52.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 60, 1, -376.6 +a10, -57.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 62, 1, -396.5 +a10, -40.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 64, 1, -388.1 +a10, -61.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 66, 1, -385.8 +a10, -55.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 68, 1, -389.9 +a10, -70.9 -b10 , 0 );

setMoveKey( spep_9 -3 + 70, 1, -430.6 +a10 +29, -101.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 72, 1, -488.2 +a10 +58, -160.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 74, 1, -568.3 +a10 +87, -244.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 76, 1, -624.3 +a10 +116, -300 -b10 , 0 );
setMoveKey( spep_9 -3 + 78, 1, -669.8 +a10 +145, -346.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 80, 1, -705 +a10 +174, -382.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 82, 1, -730.1 +a10 +190, -408 -b10 , 0 );

setMoveKey( spep_9 -3 + 84, 1, -745.1 +a10 +190, -423.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 86, 1, -750.1 +a10 +190, -428.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 88, 1, -750.5 +a10 +192, -428.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 90, 1, -751.8 +a10 +194, -429.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 92, 1, -753.8 +a10 +196, -430.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 94, 1, -756.7 +a10 +198, -431.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 96, 1, -760.4 +a10 +200, -433.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 98, 1, -764.9 +a10 +202, -435.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 100, 1, -770.3 +a10 +204, -438 -b10 , 0 );
setMoveKey( spep_9 -3 + 102, 1, -776.5 +a10 +206, -440.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 104, 1, -783.5 +a10 +208, -444.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 106, 1, -782.5 +a10 +210, -442.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 108, 1, -806.9 +a10 +212, -458.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 110, 1, -819.8 +a10 +214, -449.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 112, 1, -812.6 +a10 +216, -466.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 114, 1, -822 +a10 +218, -460.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 116, 1, -849.6 +a10 +220, -478.6 -b10 , 0 );
setMoveKey( spep_9 -3 + 118, 1, -865.8 +a10 +222, -470.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 120, 1, -861.8 +a10 +224, -489.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 122, 1, -874.5 +a10 +226, -485.3 -b10 , 0 );
setMoveKey( spep_9 -3 + 124, 1, -905.4 +a10 +228, -504.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 126, 1, -924.8 +a10 +230, -498.3 -b10 , 0 );
setMoveKey( spep_9 -3 + 128, 1, -924.1 +a10 +232, -518.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 130, 1, -939.9 +a10 +234, -516.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 132, 1, -974.1 +a10 +236, -537.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 134, 1, -996.7 +a10 +238, -532.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 136, 1, -999.2 +a10 +240, -554.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 138, 1, -1012.9 +a10 +242, -546.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 140, 1, -1062.5 +a10 +244, -581.6 -b10 , 0 );
setMoveKey( spep_9 -3 + 142, 1, -1086.6 +a10 +246, -569.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 144, 1, -1081.7 +a10 +248, -603.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 146, 1, -1104 +a10 +250, -590.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 148, 1, -1156.6 +a10 +252, -627.4 -b10 , 0 );
--setMoveKey( spep_9 -3 + 149, 1, -1156.6, -627.4 , 0 );

s9 = 1.8;
setScaleKey( spep_9 + 0, 1, 7.41 +s9, 7.41 +s9 );
setScaleKey( spep_9 + 1, 1, 7.38 +s9, 7.38 +s9 );
setScaleKey( spep_9 + 2, 1, 7.28 +s9, 7.28 +s9 );
setScaleKey( spep_9 -3 + 6, 1, 7.11 +s9, 7.11 +s9 );
setScaleKey( spep_9 -3 + 8, 1, 6.88 +s9, 6.88 +s9 );
setScaleKey( spep_9 -3 + 10, 1, 6.58 +s9, 6.58 +s9 );
setScaleKey( spep_9 -3 + 12, 1, 6.21 +s9, 6.21 +s9 );
setScaleKey( spep_9 -3 + 14, 1, 5.78 +s9, 5.78 +s9 );
setScaleKey( spep_9 -3 + 16, 1, 5.28 +s9, 5.28 +s9 );
setScaleKey( spep_9 -3 + 18, 1, 4.71 +s9, 4.71 +s9 );
setScaleKey( spep_9 -3 + 20, 1, 4.61 +s9, 4.61 +s9 );
setScaleKey( spep_9 -3 + 22, 1, 4.51 +s9, 4.51 +s9 );
setScaleKey( spep_9 -3 + 24, 1, 4.4 +s9, 4.4 +s9 );
setScaleKey( spep_9 -3 + 26, 1, 4.29 +s9, 4.29 +s9 );
setScaleKey( spep_9 -3 + 28, 1, 4.19 +s9, 4.19 +s9 );
setScaleKey( spep_9 -3 + 31, 1, 4.08 +s9, 4.08 +s9 );

s10 = 0.2;
setScaleKey( spep_9 -3 + 32, 1, 1.8924 +s10, 1.8924 +s10 );
setScaleKey( spep_9 -3 + 34, 1, 1.7784 +s10, 1.7784 +s10 );
setScaleKey( spep_9 -3 + 36, 1, 1.6644 +s10, 1.6644 +s10 );
setScaleKey( spep_9 -3 + 66, 1, 1.6644 +s10, 1.6644 +s10 );
setScaleKey( spep_9 -3 + 68, 1, 1.6986 +s10, 1.6986 +s10 );
setScaleKey( spep_9 -3 + 70, 1, 1.8012 +s10, 1.8012 +s10 );
setScaleKey( spep_9 -3 + 72, 1, 1.9779 +s10, 1.9779 +s10 );
setScaleKey( spep_9 -3 + 74, 1, 2.2173 +s10, 2.2173 +s10 );
setScaleKey( spep_9 -3 + 76, 1, 2.3769 +s10, 2.3769 +s10 );
setScaleKey( spep_9 -3 + 78, 1, 2.508 +s10, 2.508 +s10 );
setScaleKey( spep_9 -3 + 80, 1, 2.6106 +s10, 2.6106 +s10 );
setScaleKey( spep_9 -3 + 82, 1, 2.6847 +s10, 2.6847 +s10 );
setScaleKey( spep_9 -3 + 84, 1, 2.7303 +s10, 2.7303 +s10 );
setScaleKey( spep_9 -3 + 86, 1, 2.7417 +s10, 2.7417 +s10 );
setScaleKey( spep_9 -3 + 88, 1, 2.7417 +s10, 2.7417 +s10 );
setScaleKey( spep_9 -3 + 90, 1, 2.7474 +s10, 2.7474 +s10 );
setScaleKey( spep_9 -3 + 92, 1, 2.7474 +s10, 2.7531 +s10 );
setScaleKey( spep_9 -3 + 94, 1, 2.7531 +s10, 2.7588 +s10 );
setScaleKey( spep_9 -3 + 96, 1, 2.7645 +s10, 2.7645 +s10 );
setScaleKey( spep_9 -3 + 98, 1, 2.7702 +s10, 2.7702 +s10 );
setScaleKey( spep_9 -3 + 100, 1, 2.7816 +s10, 2.7816 +s10 );
setScaleKey( spep_9 -3 + 102, 1, 2.793 +s10, 2.793 +s10 );
setScaleKey( spep_9 -3 + 104, 1, 2.8101 +s10, 2.8101 +s10 );
setScaleKey( spep_9 -3 + 106, 1, 2.8215 +s10, 2.8215 +s10 );
setScaleKey( spep_9 -3 + 108, 1, 2.8386 +s10, 2.8386 +s10 );
setScaleKey( spep_9 -3 + 110, 1, 2.8557 +s10, 2.8614 +s10 );
setScaleKey( spep_9 -3 + 112, 1, 2.8785 +s10, 2.8785 +s10 );
setScaleKey( spep_9 -3 + 114, 1, 2.9013 +s10, 2.9013 +s10 );
setScaleKey( spep_9 -3 + 116, 1, 2.9241 +s10, 2.9241 +s10 );
setScaleKey( spep_9 -3 + 118, 1, 2.9469 +s10, 2.9469 +s10 );
setScaleKey( spep_9 -3 + 120, 1, 2.9754 +s10, 2.9754 +s10 );
setScaleKey( spep_9 -3 + 122, 1, 3.0039 +s10, 3.0039 +s10 );
setScaleKey( spep_9 -3 + 124, 1, 3.0324 +s10, 3.0324 +s10 );
setScaleKey( spep_9 -3 + 126, 1, 3.0609 +s10, 3.0609 +s10 );
setScaleKey( spep_9 -3 + 128, 1, 3.0951 +s10, 3.0951 +s10 );
setScaleKey( spep_9 -3 + 130, 1, 3.1293 +s10, 3.1293 +s10 );
setScaleKey( spep_9 -3 + 132, 1, 3.1692 +s10, 3.1692 +s10 );
setScaleKey( spep_9 -3 + 134, 1, 3.2034 +s10, 3.2034 +s10 );
setScaleKey( spep_9 -3 + 136, 1, 3.2433 +s10, 3.2433 +s10 );
setScaleKey( spep_9 -3 + 138, 1, 3.2832 +s10, 3.2832 +s10 );
setScaleKey( spep_9 -3 + 140, 1, 3.3288 +s10, 3.3288 +s10 );
setScaleKey( spep_9 -3 + 142, 1, 3.3687 +s10, 3.3687 +s10 );
setScaleKey( spep_9 -3 + 144, 1, 3.4143 +s10, 3.42 +s10 );
setScaleKey( spep_9 -3 + 146, 1, 3.4656 +s10, 3.4656 +s10 );
setScaleKey( spep_9 -3 + 148, 1, 3.5112 +s10, 3.5112 +s10 );
--setScaleKey( spep_9 -3 + 149, 1, 6.16, 6.16 );

setRotateKey( spep_9 + 0, 1, 95 );
setRotateKey( spep_9 -3 + 31, 1, 95 );

r10 = 70;
setRotateKey( spep_9 -3 + 32, 1, 193 -r10 );
setRotateKey( spep_9 -3 + 66, 1, 193 -r10 );
setRotateKey( spep_9 -3 + 68, 1, 192.9 -r10 );
setRotateKey( spep_9 -3 + 70, 1, 192.7 -r10 );
setRotateKey( spep_9 -3 + 72, 1, 192.3 -r10 );
setRotateKey( spep_9 -3 + 74, 1, 191.8 -r10 );
setRotateKey( spep_9 -3 + 76, 1, 191.4 -r10 );
setRotateKey( spep_9 -3 + 78, 1, 191.1 -r10 );
setRotateKey( spep_9 -3 + 80, 1, 190.9 -r10 );
setRotateKey( spep_9 -3 + 82, 1, 190.7 -r10 );
setRotateKey( spep_9 -3 + 84, 1, 190.6 -r10 );
setRotateKey( spep_9 -3 + 96, 1, 190.6 -r10 );
setRotateKey( spep_9 -3 + 98, 1, 190.5 -r10 );
setRotateKey( spep_9 -3 + 104, 1, 190.5 -r10 );
setRotateKey( spep_9 -3 + 106, 1, 190.4 -r10 );
setRotateKey( spep_9 -3 + 110, 1, 190.4 -r10 );
setRotateKey( spep_9 -3 + 112, 1, 190.3 -r10 );
setRotateKey( spep_9 -3 + 114, 1, 190.3 -r10 );
setRotateKey( spep_9 -3 + 116, 1, 190.2 -r10 );
setRotateKey( spep_9 -3 + 118, 1, 190.2 -r10 );
setRotateKey( spep_9 -3 + 120, 1, 190.1 -r10 );
setRotateKey( spep_9 -3 + 122, 1, 190.1 -r10 );
setRotateKey( spep_9 -3 + 124, 1, 190 -r10 );
setRotateKey( spep_9 -3 + 126, 1, 190 -r10 );
setRotateKey( spep_9 -3 + 128, 1, 189.9 -r10 );
setRotateKey( spep_9 -3 + 130, 1, 189.8 -r10 );
setRotateKey( spep_9 -3 + 132, 1, 189.8 -r10 );
setRotateKey( spep_9 -3 + 134, 1, 189.7 -r10 );
setRotateKey( spep_9 -3 + 136, 1, 189.6 -r10 );
setRotateKey( spep_9 -3 + 138, 1, 189.5 -r10 );
setRotateKey( spep_9 -3 + 140, 1, 189.5 -r10 );
setRotateKey( spep_9 -3 + 142, 1, 189.4 -r10 );
setRotateKey( spep_9 -3 + 144, 1, 189.3 -r10 );
setRotateKey( spep_9 -3 + 146, 1, 189.2 -r10 );
setRotateKey( spep_9 -3 + 148, 1, 189.1 -r10 );
--setRotateKey( spep_9 -3 + 149, 1, -3.9 );

-- ** 音 ** --
--頭ぐりぐり
SE049 = playSe( spep_9 + 12, 1116 );
stopSe( spep_9 + 38, SE049, 16 );

--頭ぐりぐり
SE050 = playSe( spep_9 + 26, 1009 );

--頭ぐりぐり
SE051 = playSe( spep_9 + 26, 1153 );

--頭ぐりぐり
SE052 = playSe( spep_9 + 26, 1190 );
setSeVolumeByWorkId( spep_9 + 26, SE052, 86 );

--口気弾溜め
SE053 = playSe( spep_9 + 76, 1157 );
setSeVolumeByWorkId( spep_9 + 76, SE053, 150 );
stopSe( spep_9 +144, SE053, 12 );

--口気弾溜め
SE054 = playSe( spep_9 + 76, 1311 );
setSeVolumeByWorkId( spep_9 + 76, SE054, 145 );
stopSe( spep_9 +144, SE054, 12 );

--口気弾溜め
SE055 = playSe( spep_9 + 76, 1282 );
setSeVolumeByWorkId( spep_9 + 76, SE055, 54 );
stopSe( spep_9 +144, SE055, 12 );

--口気弾発射
SE056 = playSe( spep_9 + 142, 1258 );
setSeVolumeByWorkId( spep_9 + 142, SE056, 72 );

--口気弾発射
SE057 = playSe( spep_9 + 144, 1205 );
setSeVolumeByWorkId( spep_9 + 144, SE057, 78 );
stopSe( spep_9 + 146 + 38, SE057, 32 );

--口気弾発射
SE058 = playSe( spep_9 + 144, 1213 );
setSeVolumeByWorkId( spep_9 + 144, SE058, 88 );
stopSe( spep_9 + 146 +86 + 26, SE058, 14 );

--口気弾発射
SE059 = playSe( spep_9 + 144, 1193 );
setSeVolumeByWorkId( spep_9 + 144, SE059, 105 );
stopSe( spep_9 + 146 +86 + 26, SE059, 14 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 146;

------------------------------------------------------
-- 気弾を放つ(86F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
jbeam_f = entryEffectLife( spep_10 + 0, SP_17, 86, 0x100, -1, 0, 0, 0 );  --気弾を放つ　手前 ef_017
setEffMoveKey( spep_10 + 0, jbeam_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 86, jbeam_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, jbeam_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 86, jbeam_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, jbeam_f, 0 );
setEffRotateKey( spep_10 + 86, jbeam_f, 0 );
setEffAlphaKey( spep_10 + 0, jbeam_f, 255 );
setEffAlphaKey( spep_10 + 86 -1, jbeam_f, 255 );
setEffAlphaKey( spep_10 + 86, jbeam_f, 0 );

jbema_b = entryEffectLife( spep_10 + 0, SP_18, 86, 0x80, -1, 0, 0, 0 );  --気弾を放つ　奥 ef_018
setEffMoveKey( spep_10 + 0, jbema_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 86, jbema_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, jbema_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 86, jbema_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, jbema_b, 0 );
setEffRotateKey( spep_10 + 86, jbema_b, 0 );
setEffAlphaKey( spep_10 + 0, jbema_b, 255 );
setEffAlphaKey( spep_10 + 86 -1, jbema_b, 255 );
setEffAlphaKey( spep_10 + 86, jbema_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 86, 1, 0 );
changeAnime( spep_10 -3 + 0, 1, 106 );

setBlendColor( spep_10 -3 + 8, 1, 3, 0.45, 0.86, 1.0, 0.05 );
setBlendColor( spep_10 -3 + 10, 1, 3, 0.45, 0.86, 1.0, 0.1 );
setBlendColor( spep_10 -3 + 12, 1, 3, 0.45, 0.86, 1.0, 0.15 );
setBlendColor( spep_10 -3 + 14, 1, 3, 0.45, 0.86, 1.0, 0.2 );
setBlendColor( spep_10 -3 + 16, 1, 3, 0.45, 0.86, 1.0, 0.25 );
setBlendColor( spep_10 -3 + 18, 1, 3, 0.45, 0.86, 1.0, 0.3 );
setBlendColor( spep_10 -3 + 20, 1, 3, 0.45, 0.86, 1.0, 0.35 );
setBlendColor( spep_10 -3 + 22, 1, 3, 0.45, 0.86, 1.0, 0.4 );
setBlendColor( spep_10 -3 + 24, 1, 3, 0.45, 0.86, 1.0, 0.45 );
setBlendColor( spep_10 -3 + 26, 1, 3, 0.45, 0.86, 1.0, 0.5 );
setBlendColor( spep_10 -3 + 28, 1, 3, 0.45, 0.86, 1.0, 0.55 );
setBlendColor( spep_10 -3 + 30, 1, 3, 0.45, 0.86, 1.0, 0.6 );
setBlendColor( spep_10 -3 + 32, 1, 3, 0.45, 0.86, 1.0, 0.65 );
setBlendColor( spep_10 -3 + 34, 1, 3, 0.45, 0.86, 1.0, 0.7 );
--setBlendColor( spep_10 -3 + 8, 1, 3, 0.45, 0.86, 1.0, 0.7 );

--setMoveKey( spep_10 + 0, 1, -508.6, -415.3 , 0 );
setMoveKey( spep_10 + 0, 1, -424, -321.8 , 0 );
setMoveKey( spep_10 + 1, 1, -339.3, -228.2 , 0 );
setMoveKey( spep_10 + 2, 1, -339.3, -228.2 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -254.5, -134.5 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -251.3, -130.4 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -247.1, -131 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -258.6, -109.2 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -228.9, -117.4 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -240.1, -124.6 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -231.1, -115 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -243.5, -108.3 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -235.1, -102.4 , 0 );
setMoveKey( spep_10 -3 + 24, 1, -226.1, -104.2 , 0 );
setMoveKey( spep_10 -3 + 26, 1, -224.1, -114.1 , 0 );
setMoveKey( spep_10 -3 + 28, 1, -230.8, -94 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -224.3, -102.4 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -234, -92.6 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -214.3, -97.1 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -228, -97.3 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -215.7, -94.7 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -228.1, -96.8 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -222.3, -91.3 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -219.8, -86.1 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -216.3, -101.4 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -222.2, -93.3 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -190.4, -61 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -155.9, -17.7 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -116.1, -1.2 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -157.1, -27.9 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -180.8, -44.4 , 0 );
setMoveKey( spep_10 -3 + 60, 1, -203.5, -97.3 , 0 );
setMoveKey( spep_10 -3 + 62, 1, -273.6, -160.8 , 0 );
setMoveKey( spep_10 -3 + 64, 1, -368.6, -239.5 , 0 );
setMoveKey( spep_10 -3 + 66, 1, -436.4, -298 , 0 );
setMoveKey( spep_10 -3 + 68, 1, -584.6, -464.8 , 0 );
setMoveKey( spep_10 -3 + 70, 1, -724.4, -589.8 , 0 );
setMoveKey( spep_10 -3 + 72, 1, -873, -715.3 , 0 );
setMoveKey( spep_10 -3 + 74, 1, -979, -806.1 , 0 );
setMoveKey( spep_10 -3 + 76, 1, -1059.4, -909.4 , 0 );
setMoveKey( spep_10 -3 + 78, 1, -1134, -973.4 , 0 );
setMoveKey( spep_10 -3 + 80, 1, -1219.8, -1040 , 0 );
setMoveKey( spep_10 -3 + 82, 1, -1265, -1073.8 , 0 );
setMoveKey( spep_10 -3 + 84, 1, -1286.2, -1121.7 , 0 );
setMoveKey( spep_10 -3 + 86, 1, -1302.9, -1131.6 , 0 );
setMoveKey( spep_10 -3 + 88, 1, -1331.9, -1145 , 0 );
setMoveKey( spep_10 -3 + 89, 1, -1331.9, -1145 , 0 );

s11 = 0;
--setScaleKey( spep_10 + 0, 1, 5.21 +s11, 5.21 +s11 );
setScaleKey( spep_10 + 0, 1, 4.48 +s11, 4.48 +s11 );
setScaleKey( spep_10 + 1, 1, 3.75 +s11, 3.75 +s11 );
setScaleKey( spep_10 + 2, 1, 3.75 +s11, 3.75 +s11 );
setScaleKey( spep_10 -3 + 6, 1, 3.03 +s11, 3.02 +s11 );
setScaleKey( spep_10 -3 + 8, 1, 2.99 +s11, 2.99 +s11 );
setScaleKey( spep_10 -3 + 10, 1, 2.96 +s11, 2.96 +s11 );
setScaleKey( spep_10 -3 + 12, 1, 2.93 +s11, 2.93 +s11 );
setScaleKey( spep_10 -3 + 14, 1, 2.9 +s11, 2.9 +s11 );
setScaleKey( spep_10 -3 + 16, 1, 2.88 +s11, 2.88 +s11 );
setScaleKey( spep_10 -3 + 18, 1, 2.85 +s11, 2.85 +s11 );
setScaleKey( spep_10 -3 + 20, 1, 2.83 +s11, 2.83 +s11 );
setScaleKey( spep_10 -3 + 22, 1, 2.81 +s11, 2.81 +s11 );
setScaleKey( spep_10 -3 + 24, 1, 2.79 +s11, 2.79 +s11 );
setScaleKey( spep_10 -3 + 26, 1, 2.77 +s11, 2.77 +s11 );
setScaleKey( spep_10 -3 + 28, 1, 2.75 +s11, 2.75 +s11 );
setScaleKey( spep_10 -3 + 30, 1, 2.74 +s11, 2.74 +s11 );
setScaleKey( spep_10 -3 + 32, 1, 2.72 +s11, 2.72 +s11 );
setScaleKey( spep_10 -3 + 34, 1, 2.71 +s11, 2.71 +s11 );
setScaleKey( spep_10 -3 + 36, 1, 2.7 +s11, 2.7 +s11 );
setScaleKey( spep_10 -3 + 38, 1, 2.69 +s11, 2.69 +s11 );
setScaleKey( spep_10 -3 + 40, 1, 2.69 +s11, 2.68 +s11 );
setScaleKey( spep_10 -3 + 42, 1, 2.68 +s11, 2.68 +s11 );
setScaleKey( spep_10 -3 + 44, 1, 2.68 +s11, 2.68 +s11 );
setScaleKey( spep_10 -3 + 46, 1, 2.67 +s11, 2.67 +s11 );
setScaleKey( spep_10 -3 + 48, 1, 2.67 +s11, 2.67 +s11 );
setScaleKey( spep_10 -3 + 50, 1, 2.44 +s11, 2.44 +s11 );
setScaleKey( spep_10 -3 + 52, 1, 2.21 +s11, 2.21 +s11 );
setScaleKey( spep_10 -3 + 54, 1, 1.98 +s11, 1.98 +s11 );
setScaleKey( spep_10 -3 + 56, 1, 1.96 +s11, 1.96 +s11 );
setScaleKey( spep_10 -3 + 58, 1, 1.93 +s11, 1.93 +s11 );
setScaleKey( spep_10 -3 + 60, 1, 1.91 +s11, 1.91 +s11 );
setScaleKey( spep_10 -3 + 62, 1, 1.89 +s11, 1.89 +s11 );
setScaleKey( spep_10 -3 + 64, 1, 1.87 +s11, 1.87 +s11 );
setScaleKey( spep_10 -3 + 66, 1, 1.85 +s11, 1.85 +s11 );
setScaleKey( spep_10 -3 + 68, 1, 1.83 +s11, 1.83 +s11 );
setScaleKey( spep_10 -3 + 70, 1, 1.82 +s11, 1.82 +s11 );
setScaleKey( spep_10 -3 + 72, 1, 1.8 +s11, 1.8 +s11 );
setScaleKey( spep_10 -3 + 74, 1, 1.79 +s11, 1.79 +s11 );
setScaleKey( spep_10 -3 + 76, 1, 1.78 +s11, 1.78 +s11 );
setScaleKey( spep_10 -3 + 78, 1, 1.77 +s11, 1.77 +s11 );
setScaleKey( spep_10 -3 + 80, 1, 1.77 +s11, 1.77 +s11 );
setScaleKey( spep_10 -3 + 82, 1, 1.76 +s11, 1.76 +s11 );
setScaleKey( spep_10 -3 + 84, 1, 1.76 +s11, 1.76 +s11 );
setScaleKey( spep_10 -3 + 86, 1, 1.75 +s11, 1.75 +s11 );
setScaleKey( spep_10 -3 + 89, 1, 1.75 +s11, 1.75 +s11 );

setRotateKey( spep_10 + 0, 1, -17.3 );
setRotateKey( spep_10 + 86, 1, -17.3 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 860 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 86;

------------------------------------------------------
-- フィニッシュ　光球が拡がる(116F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_19, 0x100, -1, 0, 0, 0 );  --フィニッシュ　光球が拡がる ef_019
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 116, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 116, finish_f, 255 );

-- ** 音 ** --
--ラスト爆発
SE060 = playSe( spep_11 + 16, 1024 );
setSeVolumeByWorkId( spep_11 + 16, SE060, 82 );

--ラスト爆発
SE061 = playSe( spep_11 + 16, 1023 );

--ラスト爆発
SE062 = playSe( spep_11 + 16, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 6 );
endPhase( spep_11 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵に向かうスーパージャネンバ(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  --敵に向かうスーパージャネンバ　手前    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 56, 0x80, -1, 0, 0, 0 );  --敵に向かうスーパージャネンバ　奥  ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 56, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 56, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 175, 18.2 , 0 );
setMoveKey( spep_0 + 1, 1, 178.5, 14.7 , 0 );
setMoveKey( spep_0 + 2, 1, 181.2, 13.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 181.4, 20.1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 181.4, 20.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 171, 16.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 171, 16.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 179.2, 14.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 182.2, 14.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 182.6, 20.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 172.5, 16.8 , 0 );

s0 = 0.1;
setScaleKey( spep_0 + 0, 1, 0.63 +s0, 0.63 +s0 );
setScaleKey( spep_0 + 1, 1, 0.64 +s0, 0.64 +s0 );
setScaleKey( spep_0 + 2, 1, 0.64 +s0, 0.64 +s0 );
setScaleKey( spep_0 -3 + 6, 1, 0.65 +s0, 0.65 +s0 );
setScaleKey( spep_0 -3 + 7, 1, 0.65 +s0, 0.65 +s0 );
setScaleKey( spep_0 -3 + 8, 1, 0.66 +s0, 0.66 +s0 );
setScaleKey( spep_0 -3 + 9, 1, 0.66 +s0, 0.66 +s0 );
setScaleKey( spep_0 -3 + 10, 1, 0.68 +s0, 0.68 +s0 );
setScaleKey( spep_0 -3 + 12, 1, 0.7 +s0, 0.7 +s0 );
setScaleKey( spep_0 -3 + 14, 1, 0.72 +s0, 0.72 +s0 );
setScaleKey( spep_0 -3 + 16, 1, 0.75 +s0, 0.75 +s0 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--向かっていく
SE001 = playSe( spep_0 + 0, 1182 );

--向かっていく
SE002 = playSe( spep_0 + 0, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 172.5, 16.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 180.9, 15.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 184.1, 14.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 184.8, 20.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 174.9, 17.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 183, 15.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.75 +s0, 0.75 +s0 );
    setScaleKey( SP_dodge + 2, 1, 0.78 +s0, 0.78 +s0 );
    setScaleKey( SP_dodge + 4, 1, 0.82 +s0, 0.82 +s0 );
    setScaleKey( SP_dodge + 6, 1, 0.86 +s0, 0.86 +s0 );
    setScaleKey( SP_dodge + 8, 1, 0.9 +s0, 0.9 +s0 );
    setScaleKey( SP_dodge + 10, 1, 0.9 +s0, 0.9 +s0 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

setDisp( spep_0 + 56, 1, 0 );
changeAnime( spep_0 -3 + 26, 1, 104 );

setMoveKey( spep_0 -3 + 18, 1, 180.9, 15.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 184.1, 14.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 184.8, 20.6 , 0 );
setMoveKey( spep_0 -3 + 25, 1, 174.9, 17.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 183, 15.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 185.9, 14.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 186, 20.3 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 175.7, 16.4 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 183.8, 14.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 186.6, 13.3 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 186.8, 19.1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 187, 18.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 187.2, 18.6 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 187.4, 18.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 187.6, 18 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 187.8, 17.7 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 188, 17.5 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 188.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 188.4, 16.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 188.5, 16.6 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 188.7, 16.3 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 188.7, 16.3 , 0 );

setScaleKey( spep_0 -3 + 18, 1, 0.78 +s0, 0.78 +s0 );
setScaleKey( spep_0 -3 + 20, 1, 0.82 +s0, 0.82 +s0 );
setScaleKey( spep_0 -3 + 22, 1, 0.86 +s0, 0.86 +s0 );
setScaleKey( spep_0 -3 + 25, 1, 0.9 +s0, 0.9 +s0 );
setScaleKey( spep_0 -3 + 26, 1, 0.9 +s0, 0.9 +s0 );
setScaleKey( spep_0 -3 + 28, 1, 0.91 +s0, 0.91 +s0 );
setScaleKey( spep_0 -3 + 30, 1, 0.92 +s0, 0.92 +s0 );
setScaleKey( spep_0 -3 + 32, 1, 0.94 +s0, 0.94 +s0 );
setScaleKey( spep_0 -3 + 34, 1, 0.95 +s0, 0.95 +s0 );
setScaleKey( spep_0 -3 + 36, 1, 0.96 +s0, 0.96 +s0 );
setScaleKey( spep_0 -3 + 38, 1, 0.97 +s0, 0.97 +s0 );
setScaleKey( spep_0 -3 + 40, 1, 0.98 +s0, 0.98 +s0 );
setScaleKey( spep_0 -3 + 42, 1, 0.99 +s0, 0.99 +s0 );
setScaleKey( spep_0 -3 + 44, 1, 1 +s0, 1 +s0 );
setScaleKey( spep_0 -3 + 46, 1, 1.01 +s0, 1.01 +s0 );
setScaleKey( spep_0 -3 + 48, 1, 1.02 +s0, 1.02 +s0 );
setScaleKey( spep_0 -3 + 50, 1, 1.03 +s0, 1.03 +s0 );
setScaleKey( spep_0 -3 + 52, 1, 1.04 +s0, 1.04 +s0 );
setScaleKey( spep_0 -3 + 54, 1, 1.05 +s0, 1.05 +s0 );
setScaleKey( spep_0 -3 + 56, 1, 1.06 +s0, 1.06 +s0 );
setScaleKey( spep_0 -3 + 58, 1, 1.08 +s0, 1.08 +s0 );
setScaleKey( spep_0 -3 + 59, 1, 1.08 +s0, 1.08 +s0 );

setRotateKey( spep_0 -3 + 59, 1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 蹴りを放つスーパージャネンバ(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
jkick = entryEffectLife( spep_1 + 0, SP_03r, 86, 0x100, -1, 0, 0, 0 );  --蹴りを放つスーパージャネンバ ef_003
setEffMoveKey( spep_1 + 0, jkick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, jkick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jkick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, jkick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jkick, 0 );
setEffRotateKey( spep_1 + 86, jkick, 0 );
setEffAlphaKey( spep_1 + 0, jkick, 255 );
setEffAlphaKey( spep_1 + 86 -1, jkick, 255 );
setEffAlphaKey( spep_1 + 86, jkick, 0 );

-- ** 音 ** --
--向かってきて振りかぶる
SE003 = playSe( spep_1 + 0, 1314 );
setSeVolumeByWorkId( spep_1 + 0, SE003, 67 );
stopSe( spep_1 + 76, SE003, 32 );

--向かってきて振りかぶる
SE004 = playSe( spep_1 + 0, 1278 );
setSeVolumeByWorkId( spep_1 + 0, SE004, 70 );
stopSe( spep_1 + 76, SE004, 32 );

--向かってきて振りかぶる
SE005 = playSe( spep_1 + 0, 1167 );
setSeVolumeByWorkId( spep_1 + 0, SE005, 65 );
setPitch( spep_1 + 0, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );

--向かってきて振りかぶる
SE006 = playSe( spep_1 + 40, 1116 );
setSeVolumeByWorkId( spep_1 + 40, SE006, 143 );
stopSe( spep_1 + 74, SE006, 16 );

--向かってきて振りかぶる
SE007 = playSe( spep_1 + 62, 1004 );
setSeVolumeByWorkId( spep_1 + 62, SE007, 207 );
setPitch( spep_1 + 62, SE007, -400 );
setTimeStretch( SE007, 0.73, 40, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 蹴りがヒットする(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
jkhit_f = entryEffectLife( spep_2 + 0, SP_04r, 56, 0x100, -1, 0, 0, 0 );  --蹴りがヒットする　手前  ef_004
setEffMoveKey( spep_2 + 0, jkhit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, jkhit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jkhit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, jkhit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jkhit_f, 0 );
setEffRotateKey( spep_2 + 56, jkhit_f, 0 );
setEffAlphaKey( spep_2 + 0, jkhit_f, 255 );
setEffAlphaKey( spep_2 + 56 -1, jkhit_f, 255 );
setEffAlphaKey( spep_2 + 56, jkhit_f, 0 );

jkhit_b = entryEffectLife( spep_2 + 0, SP_05, 56, 0x80, -1, 0, 0, 0 );  --蹴りがヒットする　奥    ef_005
setEffMoveKey( spep_2 + 0, jkhit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, jkhit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jkhit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, jkhit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jkhit_b, 0 );
setEffRotateKey( spep_2 + 56, jkhit_b, 0 );
setEffAlphaKey( spep_2 + 0, jkhit_b, 255 );
setEffAlphaKey( spep_2 + 56 -1, jkhit_b, 255 );
setEffAlphaKey( spep_2 + 56, jkhit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 56, 1, 0 );
changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 -3 + 8, 1, 7 );

a2 = 10;
b2 = 10;
setMoveKey( spep_2 + 0, 1, 185 +a2, -199.4 -b2 , 0 );
setMoveKey( spep_2 + 1, 1, 167.5 +a2, -203.8 -b2 , 0 );
setMoveKey( spep_2 + 2, 1, 149.8 +a2, -208.3 -b2 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 131.8 +a2, -212.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 408 +a2, -137.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 274.7 +a2, -125.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 168.8 +a2, -141.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 166 +a2, -130.3 -b2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 140.3 +a2, -143.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 132.8 +a2, -130.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 145.2 +a2, -151.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 142.4 +a2, -140.4 -b2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 116.6 +a2, -153.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 109.2 +a2, -140.9 -b2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 121.5 +a2, -161.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 118.7 +a2, -150.4 -b2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 93 +a2, -163.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 85.5 +a2, -150.9 -b2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 97.9 +a2, -171.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 95.1 +a2, -160.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 69.3 +a2, -173.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 61.9 +a2, -161 -b2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 74.3 +a2, -181.8 -b2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 71.5 +a2, -170.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 65.5 +a2, -173.1 -b2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 59.6 +a2, -175.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 53.7 +a2, -178.1 -b2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 47.8 +a2, -180.7 -b2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 41.9 +a2, -183.2 -b2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 36 +a2, -185.7 -b2 , 0 );
--setMoveKey( spep_2 -3 + 59, 1, 36 +a2, -185.7 -b2 , 0 );

s1 = 0.6;
s2 = 0.2;
setScaleKey( spep_2 + 0, 1, 5.81 +s1, 5.81 +s1 );
setScaleKey( spep_2 + 1, 1, 5.85 +s1, 5.85 +s1 );
setScaleKey( spep_2 + 2, 1, 5.89 +s1, 5.89 +s1 );
setScaleKey( spep_2 -3 + 7, 1, 5.93 +s1, 5.93 +s1 );
setScaleKey( spep_2 -3 + 8, 1, 2.8362 +s2, 2.8362 +s2 );
setScaleKey( spep_2 -3 + 10, 1, 2.4534 +s2, 2.4534 +s2 );
setScaleKey( spep_2 -3 + 12, 1, 2.0706 +s2, 2.0706 +s2 );
setScaleKey( spep_2 -3 + 58, 1, 2.0706 +s2, 2.0706 +s2 );
--setScaleKey( spep_2 -3 + 59, 1, 2.0706, 2.0706 );

setRotateKey( spep_2 + 0, 1, -11.9 );
setRotateKey( spep_2 -3 + 7, 1, -11.9 );
setRotateKey( spep_2 -3 + 8, 1, 63.3 );
setRotateKey( spep_2 -3 + 58, 1, 63.3 );
--setRotateKey( spep_2 -3 + 59, 1, 63.3 );

-- ** 音 ** --
--キック
SE008 = playSe( spep_2 + 2, 1187 );

--キック
SE009 = playSe( spep_2 + 2, 1010 );

--キック
SE010 = playSe( spep_2 + 2, 1110 );

--敵飛んでいく
SE011 = playSe( spep_2 + 52, 1183 );
setSeVolumeByWorkId( spep_2 + 52, SE011, 81 );

--敵飛んでいく
SE012 = playSe( spep_2 + 52, 1027 );
setSeVolumeByWorkId( spep_2 + 52, SE012, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 蹴られて体勢を崩す敵(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
emove_f = entryEffectLife( spep_3 + 0, SP_06, 46, 0x100, -1, 0, 0, 0 );  --蹴られて体勢を崩す敵　手前    ef_006
setEffMoveKey( spep_3 + 0, emove_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, emove_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, emove_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, emove_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, emove_f, 0 );
setEffRotateKey( spep_3 + 46, emove_f, 0 );
setEffAlphaKey( spep_3 + 0, emove_f, 255 );
setEffAlphaKey( spep_3 + 46 -1, emove_f, 255 );
setEffAlphaKey( spep_3 + 46, emove_f, 0 );

emove_b = entryEffectLife( spep_3 + 0, SP_07, 46, 0x80, -1, 0, 0, 0 );  --蹴られて体勢を崩す敵　奥  ef_007
setEffMoveKey( spep_3 + 0, emove_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, emove_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, emove_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, emove_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, emove_b, 0 );
setEffRotateKey( spep_3 + 46, emove_b, 0 );
setEffAlphaKey( spep_3 + 0, emove_b, 255 );
setEffAlphaKey( spep_3 + 46 -1, emove_b, 255 );
setEffAlphaKey( spep_3 + 46, emove_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 + 46, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 85.9, 9.9 , 0 );
setMoveKey( spep_3 + 1, 1, 113.9, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 100.1, -14.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 137.1, -21.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 123.7, -11.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 143.6, -7.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 121.9, -20.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 141.7, -23.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 128.3, -13.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 129.5, -13.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 130.6, -13.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 131.7, -14.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 132.8, -14.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 133.9, -15.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 135, -15.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 136.1, -15.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 137.1, -16.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 138.3, -16.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 139.3, -17.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 140.4, -17.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 141.4, -17.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 142.4, -18.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 143.4, -18.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 144.4, -18.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 145.4, -19.3 , 0 );
--setMoveKey( spep_3 -3 + 49, 1, 145.4, -19.3 , 0 );

s3 = 0.05;
setScaleKey( spep_3 + 0, 1, 0.9164 +s3, 0.9164 +s3 );
--setScaleKey( spep_3 + 0, 1, 0.87 +s3, 0.87 +s3 );
setScaleKey( spep_3 + 1, 1, 0.7888 +s3, 0.7888 +s3 );
setScaleKey( spep_3 + 2, 1, 0.7888 +s3, 0.7888 +s3 );
setScaleKey( spep_3 -3 + 6, 1, 0.8642 +s3, 0.8642 +s3 );
setScaleKey( spep_3 -3 + 8, 1, 0.87 +s3, 0.87 +s3 );
setScaleKey( spep_3 -3 + 10, 1, 0.87 +s3, 0.87 +s3 );
setScaleKey( spep_3 -3 + 12, 1, 0.8758 +s3, 0.8758 +s3 );
setScaleKey( spep_3 -3 + 14, 1, 0.8816 +s3, 0.8816 +s3 );
setScaleKey( spep_3 -3 + 16, 1, 0.8816 +s3, 0.8816 +s3 );
setScaleKey( spep_3 -3 + 18, 1, 0.8874 +s3, 0.8874 +s3 );
setScaleKey( spep_3 -3 + 20, 1, 0.8874 +s3, 0.8874 +s3 );
setScaleKey( spep_3 -3 + 22, 1, 0.8932 +s3, 0.8932 +s3 );
setScaleKey( spep_3 -3 + 24, 1, 0.8932 +s3, 0.8932 +s3 );
setScaleKey( spep_3 -3 + 26, 1, 0.899 +s3, 0.899 +s3 );
setScaleKey( spep_3 -3 + 28, 1, 0.9048 +s3, 0.9048 +s3 );
setScaleKey( spep_3 -3 + 30, 1, 0.9048 +s3, 0.9048 +s3 );
setScaleKey( spep_3 -3 + 32, 1, 0.9106 +s3, 0.9106 +s3 );
setScaleKey( spep_3 -3 + 34, 1, 0.9106 +s3, 0.9106 +s3 );
setScaleKey( spep_3 -3 + 36, 1, 0.9164 +s3, 0.9164 +s3 );
setScaleKey( spep_3 -3 + 38, 1, 0.9164 +s3, 0.9164 +s3 );
setScaleKey( spep_3 -3 + 40, 1, 0.9222 +s3, 0.9222 +s3 );
setScaleKey( spep_3 -3 + 42, 1, 0.9222 +s3, 0.9222 +s3 );
setScaleKey( spep_3 -3 + 44, 1, 0.928 +s3, 0.928 +s3 );
setScaleKey( spep_3 -3 + 46, 1, 0.928 +s3, 0.928 +s3 );
setScaleKey( spep_3 -3 + 48, 1, 0.9338 +s3, 0.9338 +s3 );
--setScaleKey( spep_3 -3 + 49, 1, 0.9338, 0.9338 );

setRotateKey( spep_3 + 0, 1, -58.1 );
setRotateKey( spep_3 + 1, 1, -57.9 );
setRotateKey( spep_3 + 2, 1, -57.7 );
setRotateKey( spep_3 -3 + 6, 1, -57.4 );
setRotateKey( spep_3 -3 + 10, 1, -57.4 );
setRotateKey( spep_3 -3 + 12, 1, -57.3 );
setRotateKey( spep_3 -3 + 14, 1, -57.3 );
setRotateKey( spep_3 -3 + 16, 1, -57.2 );
setRotateKey( spep_3 -3 + 18, 1, -57.2 );
setRotateKey( spep_3 -3 + 20, 1, -57.1 );
setRotateKey( spep_3 -3 + 22, 1, -57.1 );
setRotateKey( spep_3 -3 + 24, 1, -57 );
setRotateKey( spep_3 -3 + 28, 1, -57 );
setRotateKey( spep_3 -3 + 30, 1, -56.9 );
setRotateKey( spep_3 -3 + 32, 1, -56.9 );
setRotateKey( spep_3 -3 + 34, 1, -56.8 );
setRotateKey( spep_3 -3 + 36, 1, -56.8 );
setRotateKey( spep_3 -3 + 38, 1, -56.7 );
setRotateKey( spep_3 -3 + 42, 1, -56.7 );
setRotateKey( spep_3 -3 + 44, 1, -56.6 );
setRotateKey( spep_3 -3 + 46, 1, -56.6 );
setRotateKey( spep_3 -3 + 48, 1, -56.5 );
--setRotateKey( spep_3 -3 + 49, 1, -56.5 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;

------------------------------------------------------
-- 気を溜めるジャネンバとカットイン(146F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_4 + 0, SP_08r, 146, 0x100, -1, 0, 0, 0 );  --気を溜めるジャネンバとカットイン 手前  ef_008
setEffMoveKey( spep_4 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 146, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 146 -1, tame_f, 255 );
setEffAlphaKey( spep_4 + 146, tame_f, 0 );

tame_b = entryEffectLife( spep_4 + 0, SP_09, 146, 0x80, -1, 0, 0, 0 );  --気を溜めるジャネンバとカットイン　奥    ef_009
setEffMoveKey( spep_4 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 146, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 146 -1, tame_b, 255 );
setEffAlphaKey( spep_4 + 146, tame_b, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 146, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 139.5, -17.4 , 0 );
setMoveKey( spep_4 + 1, 1, 149.6, -18.1 , 0 );
setMoveKey( spep_4 + 2, 1, 160.1, -19 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 171, -19.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 174.9, -20.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 178.7, -21 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 182.6, -21.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 186.4, -22.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 190.3, -22.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 194.2, -23.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 194.6, -23.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 195, -23.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 195.4, -23.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 195.8, -23.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 196.2, -23.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 196.6, -23.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 197, -23.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 197.4, -23.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 197.8, -23.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 198.2, -23.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 198.6, -23.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 199, -24 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 199.4, -24 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 199.8, -24.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 200.2, -24.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 200.6, -24.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 201, -24.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 201.4, -24.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 201.8, -24.4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 202.3, -24.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 202.6, -24.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 203, -24.6 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 203.5, -24.6 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 203.8, -24.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 204.2, -24.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 204.6, -24.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 205.1, -24.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 205.4, -24.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 205.8, -25 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 206.3, -25 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 206.7, -25.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 207, -25.1 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 207.5, -25.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 207.9, -25.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 208.3, -25.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 208.6, -25.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 209.1, -25.4 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 209.5, -25.5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 209.8, -25.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 210.3, -25.6 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 210.7, -25.7 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 211.1, -25.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 211.4, -25.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 211.9, -25.8 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 212.3, -25.9 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 212.7, -25.9 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 205.5, -17.5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 221.9, -27.2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 220.2, -20.4 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 210.7, -27.3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 208.1, -19.5 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 208.3, -18.2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 223.2, -27.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 223.3, -20.6 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 223.7, -20.7 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 224.1, -20.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 224.5, -20.8 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 225, -20.8 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 225.4, -20.9 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 225.8, -20.9 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 226.2, -21 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 226.6, -21.1 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 227, -21.1 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 227.4, -21.2 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 227.9, -21.2 , 0 );
--setMoveKey( spep_4 -3 + 149, 1, 227.9, -21.2 , 0 );

setScaleKey( spep_4 + 0, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 1, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 6, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 8, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 12, 1, 1, 1 );
setScaleKey( spep_4 -3 + 14, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 16, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 20, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 22, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 28, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 30, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 34, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 36, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 38, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 40, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 42, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 44, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 46, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 50, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 52, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 54, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 58, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 60, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 62, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 64, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 66, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 68, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 70, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 72, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 74, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 76, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 78, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 80, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 82, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 84, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 86, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 88, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 90, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 92, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 94, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 96, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 98, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 100, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 102, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 104, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 106, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 108, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 112, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 114, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 116, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 118, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 120, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 122, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 124, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 126, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 128, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 130, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 132, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 134, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 136, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 138, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 140, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 144, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 146, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 148, 1, 0.51, 0.51 );
--setScaleKey( spep_4 -3 + 149, 1, 0.51, 0.51 );

setRotateKey( spep_4 + 0, 1, 21.1 );
setRotateKey( spep_4 + 1, 1, 21.1 );
setRotateKey( spep_4 -3 + 6, 1, 21.2 );
setRotateKey( spep_4 -3 + 12, 1, 21.2 );
setRotateKey( spep_4 -3 + 14, 1, 21.3 );
setRotateKey( spep_4 -3 + 40, 1, 21.3 );
setRotateKey( spep_4 -3 + 42, 1, 21.4 );
setRotateKey( spep_4 -3 + 92, 1, 21.4 );
setRotateKey( spep_4 -3 + 94, 1, 21.5 );
setRotateKey( spep_4 -3 + 146, 1, 21.5 );
setRotateKey( spep_4 -3 + 148, 1, 21.6 );
--setRotateKey( spep_4 -3 + 149, 1, 21.6 );

-- ** 音 ** --
--気弾溜め
SE013 = playSe( spep_4 + 6, 1296 );
stopSe( spep_4 + 100, SE013, 18 );

--気弾溜め
SE014 = playSe( spep_4 + 6, 1222 );
stopSe( spep_4 + 52, SE014, 26 );

--顔カットイン
SE015 = playSe( spep_4 + 8, 1018 );

--気弾ワープする
SE016 = playSe( spep_4 + 100, 1235 );
setSeVolumeByWorkId( spep_4 + 100, SE016, 126 );
setPitch( spep_4 + 100, SE016, -600 );
setTimeStretch( SE016, 0.6, 40, 4 );

--気弾ワープする
SE017 = playSe( spep_4 + 100, 1003 );

--気弾ワープする
SE018 = playSe( spep_4 + 102, 1291 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 146;

------------------------------------------------------
-- 気を溜めワープホールを展開するジャネンバ(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
warphole_f = entryEffectLife( spep_5 + 0, SP_10r, 146, 0x100, -1, 0, 0, 0 );  --気を溜めワープホールを展開するジャネンバ　手前  ef_010
setEffMoveKey( spep_5 + 0,warphole_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146,warphole_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0,warphole_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146,warphole_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,warphole_f, 0 );
setEffRotateKey( spep_5 + 146,warphole_f, 0 );
setEffAlphaKey( spep_5 + 0,warphole_f, 255 );
setEffAlphaKey( spep_5 + 146 -1,warphole_f, 255 );
setEffAlphaKey( spep_5 + 146,warphole_f, 0 );

warphole_b = entryEffectLife( spep_5 + 0, SP_11, 146, 0x80, -1, 0, 0, 0 );  --気を溜めワープホールを展開するジャネンバ　奥    ef_011
setEffMoveKey( spep_5 + 0, warphole_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, warphole_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, warphole_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146, warphole_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, warphole_b, 0 );
setEffRotateKey( spep_5 + 146, warphole_b, 0 );
setEffAlphaKey( spep_5 + 0, warphole_b, 255 );
setEffAlphaKey( spep_5 + 146 -1, warphole_b, 255 );
setEffAlphaKey( spep_5 + 146, warphole_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 146, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 + 0, 1, -87.5, 109.2 , 0 );
setMoveKey( spep_5 + 0, 1, -89, 134.9 , 0 );
setMoveKey( spep_5 + 1, 1, -89.1, 159 , 0 );
setMoveKey( spep_5 + 2, 1, -89.1, 159 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -88.8, 182.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -80.2, 172.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -67.5, 157.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -50.9, 138.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -30.4, 114 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -6, 85.1 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -4.4, 83.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -2.7, 81.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -1.2, 80.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 0.3, 78.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 1.9, 77.1 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 3.4, 75.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 4.9, 74.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 16.1, 71.2 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 0.4, 72.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 3.8, 68.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 11.8, 62.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 16.4, 61.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 10.5, 74.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 14.4, 64.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 15.6, 63.8 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 26.7, 60.1 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 10.7, 64.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 14, 58.1 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 22.1, 52.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 26.1, 52.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 21.4, 64.8 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 22.8, 53.2 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 19.4, 54.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 31.6, 42.2 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 19.4, 58 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 33, 56.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 28.6, 49.1 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 29.3, 43.2 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 24.4, 48.2 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 31.4, 49.4 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 41.6, 56.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 26.1, 42.1 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 33.1, 40.9 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 29.4, 45.2 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 35.3, 46.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 45.9, 53.6 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 29, 40.9 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 37.2, 37.2 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 30.8, 44.2 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 38.7, 43.4 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 49.2, 50.7 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 33, 38.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 41.2, 34.5 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 34.6, 41.2 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 41.6, 41.5 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 51.5, 48.9 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 34.7, 35.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 42.8, 33.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 37.8, 39.4 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 43.8, 40.2 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 53.6, 47.7 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 37.3, 34.9 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 45.2, 32.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 39.7, 38.5 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 45.5, 39.5 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 55.7, 48 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 38.8, 34 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 46.2, 32.1 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 40.6, 38.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 46.8, 39.4 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 54.7, 45.5 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 44.6, 39.8 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 51.9, 34.2 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 45.3, 47.9 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 42.7, 38.2 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 53.1, 39 , 0 );
setMoveKey( spep_5 -3 + 149, 1, 53.1, 39 , 0 );

s5 = 0.05;
--setScaleKey( spep_5 + 0, 1, 0.5568 +s5, 0.5568 +s5 );
setScaleKey( spep_5 + 0, 1, 0.4814 +s5, 0.4814 +s5 );
setScaleKey( spep_5 + 1, 1, 0.4118 +s5, 0.4118 +s5 );
setScaleKey( spep_5 + 2, 1, 0.4118 +s5, 0.4118 +s5 );
setScaleKey( spep_5 -3 + 6, 1, 0.3422 +s5, 0.3422 +s5 );
setScaleKey( spep_5 -3 + 8, 1, 0.3596 +s5, 0.3596 +s5 );
setScaleKey( spep_5 -3 + 10, 1, 0.3886 +s5, 0.3886 +s5 );
setScaleKey( spep_5 -3 + 12, 1, 0.4292 +s5, 0.4292 +s5 );
setScaleKey( spep_5 -3 + 14, 1, 0.4756 +s5, 0.4814 +s5 );
setScaleKey( spep_5 -3 + 16, 1, 0.5336 +s5, 0.5336 +s5 );
setScaleKey( spep_5 -3 + 18, 1, 0.5394 +s5, 0.5394 +s5 );
setScaleKey( spep_5 -3 + 28, 1, 0.5394 +s5, 0.5394 +s5 );
setScaleKey( spep_5 -3 + 30, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 42, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 44, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 70, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 72, 1, 0.551 +s5, 0.5568 +s5 );
setScaleKey( spep_5 -3 + 74, 1, 0.5568 +s5, 0.5568 +s5 );
setScaleKey( spep_5 -3 + 90, 1, 0.5568 +s5, 0.5568 +s5 );
setScaleKey( spep_5 -3 + 92, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 120, 1, 0.551 +s5, 0.551 +s5 );
setScaleKey( spep_5 -3 + 122, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 136, 1, 0.5452 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 138, 1, 0.5394 +s5, 0.5452 +s5 );
setScaleKey( spep_5 -3 + 140, 1, 0.5394 +s5, 0.5394 +s5 );
setScaleKey( spep_5 -3 + 149, 1, 0.5394 +s5, 0.5394 +s5 );

setRotateKey( spep_5 + 0, 1, 16 );
setRotateKey( spep_5 + 146, 1, 16 );

-- ** 音 ** --
--ワープから気弾発射
SE019 = playSe( spep_5 + 10, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 10, SE019,20 );
setSeVolumeByWorkId( spep_5 + 12, SE019,40 );
setSeVolumeByWorkId( spep_5 + 14, SE019,60 );
setSeVolumeByWorkId( spep_5 + 16, SE019,80 );
--setSeVolumeByWorkId( spep_5 + 18, SE019,100 );
stopSe( spep_5 + 46, SE019, 8 );
setStartTimeMs( SE019,  450 );

--ワープから気弾発射
SE020 = playSe( spep_5 + 24, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 24, SE020,26 );
setSeVolumeByWorkId( spep_5 + 26, SE020,52 );
setSeVolumeByWorkId( spep_5 + 28, SE020,80 );
--setSeVolumeByWorkId( spep_5 + 30, SE020,100 );
stopSe( spep_5 + 66, SE020, 8 );
setStartTimeMs( SE020,  467 );

--ワープから気弾発射
SE021 = playSe( spep_5 + 0, 1235,"",0.6 );
setSeVolumeByWorkId( spep_5 + 0, SE021, 68 );

--ワープから気弾発射
SE022 = playSe( spep_5 + 2, 1291,"",0.6 );
setSeVolumeByWorkId( spep_5 + 2, SE022, 122 );

--ワープから気弾発射
SE023 = playSe( spep_5 + 36, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 36, SE023,26 );
setSeVolumeByWorkId( spep_5 + 38, SE023,52 );
setSeVolumeByWorkId( spep_5 + 40, SE023,80 );
--setSeVolumeByWorkId( spep_5 + 42, SE023,100 );
stopSe( spep_5 + 80, SE023, 8 );
setStartTimeMs( SE023,  467 );

--ワープから気弾発射
SE024 = playSe( spep_5 + 14, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 14, SE024, 130 );
setPitch( spep_5 + 14, SE024, -400 );
setTimeStretch( SE024, 0.73, 40, 4 );

--連続爆発
SE025 = playSe( spep_5 + 14, 1023,"",0.6 );
stopSe( spep_5 +38, SE025, 16 );

--ワープから気弾発射
SE026 = playSe( spep_5 + 24, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 24, SE026, 130 );
setPitch( spep_5 + 24, SE026, -400 );
setTimeStretch( SE026, 0.73, 40, 4 );

--ワープから気弾発射
SE027 = playSe( spep_5 + 60, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 60, SE027,20 );
setSeVolumeByWorkId( spep_5 + 62, SE027,40 );
setSeVolumeByWorkId( spep_5 + 64, SE027,60 );
setSeVolumeByWorkId( spep_5 + 66, SE027,80 );
--setSeVolumeByWorkId( spep_5 + 68, SE027,100 );
stopSe( spep_5 + 90, SE027, 8 );
setStartTimeMs( SE027,  450 );

--ワープから気弾発射
SE028 = playSe( spep_5 + 34, 1016,"",0.6 );
stopSe( spep_5 + 68, SE028, 6 );

--連続爆発
SE029 = playSe( spep_5 + 34, 1023,"",0.6 );
stopSe( spep_5 + 64, SE029, 20 );

--ワープから気弾発射
SE030 = playSe( spep_5 + 70, 1145,"",0.6 );
setSeVolumeByWorkId( spep_5 + 70, SE030,20 );
setSeVolumeByWorkId( spep_5 + 72, SE030,40 );
setSeVolumeByWorkId( spep_5 + 74, SE030,60 );
setSeVolumeByWorkId( spep_5 + 76, SE030,80 );
--setSeVolumeByWorkId( spep_5 + 78, SE030,100 );
stopSe( spep_5 + 104, SE030, 8 );
setStartTimeMs( SE030,  450 );

--ワープから気弾発射
SE031 = playSe( spep_5 + 44, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 44, SE031, 130 );
setPitch( spep_5 + 44, SE031, -400 );
setTimeStretch( SE031, 0.73, 40, 4 );

--連続爆発
SE032 = playSe( spep_5 + 54, 1023,"",0.6 );
stopSe( spep_5 + 94, SE032, 18 );

--ワープから気弾発射
SE033 = playSe( spep_5 + 56, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 56, SE033, 130 );
setPitch( spep_5 + 56, SE033, -400 );
setTimeStretch( SE033, 0.73, 40, 4 );

--ワープから気弾発射
SE034 = playSe( spep_5 + 64, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 64, SE034, 130 );
stopSe( spep_5 + 80, SE034, 4 );
setPitch( spep_5 + 64, SE034, -400 );
setTimeStretch( SE034, 0.73, 40, 4 );

--ワープから気弾発射
SE035 = playSe( spep_5 + 74, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 74, SE035, 130 );
stopSe( spep_5 + 94, SE035, 4 );
setPitch( spep_5 + 74, SE035, -400 );
setTimeStretch( SE035, 0.73, 40, 4 );

--ワープから気弾発射
SE036 = playSe( spep_5 + 84, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 84, SE036, 130 );
stopSe( spep_5 + 100, SE036, 6 );
setPitch( spep_5 + 84, SE036, -400 );
setTimeStretch( SE036, 0.73, 40, 4 );

--ワープから気弾発射
SE037 = playSe( spep_5 + 94, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 94, SE037, 130 );
stopSe( spep_5 + 110, SE037, 4 );
setPitch( spep_5 + 94, SE037, -400 );
setTimeStretch( SE037, 0.73, 40, 4 );

--連続爆発
SE038 = playSe( spep_5 + 90, 1024,"",0.6 );
stopSe( spep_5 +126 + 18, SE038, 10 );

--連続爆発
SE039 = playSe( spep_5 + 90, 1023,"",0.6 );
stopSe( spep_5 +126 + 20, SE039, 8 );

--ワープから気弾発射
SE040 = playSe( spep_5 + 104, 1016,"",0.6 );
setSeVolumeByWorkId( spep_5 + 104, SE040, 130 );
setPitch( spep_5 + 104, SE040, -400 );
setTimeStretch( SE040, 0.73, 40, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 144, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_6 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

--爆煙
SE042 = playSe( spep_6 + 90, 1011 );
setSeVolumeByWorkId( spep_6 + 90, SE042, 132 );
setBandpassFilter( spep_6 + 90, SE042, 24, 900 );

--爆煙
SE043 = playSe( spep_6 + 90, 1024 );
setSeVolumeByWorkId( spep_6 + 90, SE043, 53 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- ジャネンバ　画面手前に接近(106F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
jmove = entryEffectLife( spep_7 + 0, SP_12, 106, 0x100, -1, 0, 0, 0 );  --ジャネンバ　画面手前に接近　    ef_012
setEffMoveKey( spep_7 + 0, jmove, 0, 0 , 0 );
setEffMoveKey( spep_7 + 106, jmove, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, jmove, -1.0, 1.0 );
setEffScaleKey( spep_7 + 106, jmove, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, jmove, 0 );
setEffRotateKey( spep_7 + 106, jmove, 0 );
setEffAlphaKey( spep_7 + 0, jmove, 255 );
setEffAlphaKey( spep_7 + 106 -1, jmove, 255 );
setEffAlphaKey( spep_7 + 106, jmove, 0 );

-- ** 音 ** --
--向かってくる
SE044 = playSe( spep_7 + 8, 1167 );
setSeVolumeByWorkId( spep_7 + 8, SE044, 84 );
setPitch( spep_7 + 8, SE044, -400 );
setTimeStretch( SE044, 0.73, 40, 4 );

--バラバラになってワープする
SE045 = playSe( spep_7 + 40, 1337,"",0.6 );
setSeVolumeByWorkId( spep_7 + 40, SE045, 18 );
setSeVolumeByWorkId( spep_7 + 43, SE045, 36 );
setSeVolumeByWorkId( spep_7 + 46, SE045, 54 );
setSeVolumeByWorkId( spep_7 + 49, SE045, 72 );
setSeVolumeByWorkId( spep_7 + 52, SE045, 90 );
setSeVolumeByWorkId( spep_7 + 55, SE045, 108 );
setSeVolumeByWorkId( spep_7 + 57, SE045, 147 );
stopSe( spep_7 +106 +36, SE045, 14 );
setStartTimeMs( SE045,  533 );
setPitch( spep_7 + 40, SE045, 200 );
setTimeStretch( SE045, 1.13, 40, 4 );

--バラバラから現れる
SE046 = playSe( spep_7 + 68, 1336,"",0.6 );
setSeVolumeByWorkId( spep_7 + 68, SE046, 7 );
setSeVolumeByWorkId( spep_7 + 72, SE046, 14 );
setSeVolumeByWorkId( spep_7 + 76, SE046, 21 );
setSeVolumeByWorkId( spep_7 + 80, SE046, 28 );
setSeVolumeByWorkId( spep_7 + 84, SE046, 35 );
setSeVolumeByWorkId( spep_7 + 88, SE046, 42 );
setSeVolumeByWorkId( spep_7 + 90, SE046, 49 );
setSeVolumeByWorkId( spep_7 + 94, SE046, 56 );
setSeVolumeByWorkId( spep_7 + 98, SE046, 63 );
setSeVolumeByWorkId( spep_7 + 102, SE046, 70 );
setSeVolumeByWorkId( spep_7 + 106, SE046, 77 );
setSeVolumeByWorkId( spep_7 + 110, SE046, 84 );
setSeVolumeByWorkId( spep_7 + 114, SE046, 91 );
setSeVolumeByWorkId( spep_7 + 118, SE046, 120 );
stopSe( spep_7 +106 +42, SE046, 28 );
setStartTimeMs( SE046,  800 );

--バラバラになってワープする
SE047 = playSe( spep_7 + 50, 1335 );
setSeVolumeByWorkId( spep_7 + 50, SE047, 130 );
setPitch( spep_7 + 50, SE047, -400 );
setTimeStretch( SE047, 0.73, 40, 4 );

--バラバラになってワープする
SE048 = playSe( spep_7 + 56, 1232 );
setSeVolumeByWorkId( spep_7 + 56, SE048, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 106;

------------------------------------------------------
-- ワープして敵の背後に回り込む(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
jwarp_f = entryEffectLife( spep_8 + 0, SP_13r, 56, 0x100, -1, 0, 0, 0 );  --ワープして敵の背後に回り込む　手前    ef_013
setEffMoveKey( spep_8 + 0, jwarp_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, jwarp_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, jwarp_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, jwarp_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, jwarp_f, 0 );
setEffRotateKey( spep_8 + 56, jwarp_f, 0 );
setEffAlphaKey( spep_8 + 0, jwarp_f, 255 );
setEffAlphaKey( spep_8 + 56 -1, jwarp_f, 255 );
setEffAlphaKey( spep_8 + 56, jwarp_f, 0 );

jwarp_b = entryEffectLife( spep_8 + 0, SP_14, 56, 0x80, -1, 0, 0, 0 );  --ワープして敵の背後に回り込む　奥  ef_014
setEffMoveKey( spep_8 + 0, jwarp_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, jwarp_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, jwarp_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, jwarp_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, jwarp_b, 0 );
setEffRotateKey( spep_8 + 56, jwarp_b, 0 );
setEffAlphaKey( spep_8 + 0, jwarp_b, 255 );
setEffAlphaKey( spep_8 + 56 -1, jwarp_b, 255 );
setEffAlphaKey( spep_8 + 56, jwarp_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 + 56, 1, 0 );
changeAnime( spep_8 + 0, 1, 5 );

a8 = 20;
b8 = 20;
setMoveKey( spep_8 + 0, 1, -454 +a8, -179.3 -b8 , 0 );
setMoveKey( spep_8 + 1, 1, -451.9 +a8, -178.4 -b8 , 0 );
setMoveKey( spep_8 + 2, 1, -445.7 +a8, -175.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -435.4 +a8, -171.5 -b8 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -420.9 +a8, -165.5 -b8 , 0 );
setMoveKey( spep_8 -3 + 10, 1, -402.3 +a8, -157.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -379.5 +a8, -148.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -352.7 +a8, -137 -b8 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -321.6 +a8, -124.1 -b8 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -286.5 +a8, -109.4 -b8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -247.2 +a8, -93 -b8 , 0 );
setMoveKey( spep_8 -3 + 22, 1, -203.7 +a8, -74.9 -b8 , 0 );
setMoveKey( spep_8 -3 + 24, 1, -156.2 +a8, -55 -b8 , 0 );
setMoveKey( spep_8 -3 + 26, 1, -104.5 +a8, -33.4 -b8 , 0 );
setMoveKey( spep_8 -3 + 28, 1, -101.4 +a8, -32.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 30, 1, -98.5 +a8, -30.9 -b8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, -95.8 +a8, -29.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 34, 1, -93.2 +a8, -28.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 36, 1, -90.8 +a8, -27.6 -b8 , 0 );
setMoveKey( spep_8 -3 + 38, 1, -88.5 +a8, -26.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -86.4 +a8, -25.7 -b8 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -84.4 +a8, -24.9 -b8 , 0 );
setMoveKey( spep_8 -3 + 44, 1, -82.6 +a8, -24.1 -b8 , 0 );
setMoveKey( spep_8 -3 + 46, 1, -80.9 +a8, -23.4 -b8 , 0 );
setMoveKey( spep_8 -3 + 48, 1, -79.4 +a8, -22.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 50, 1, -78 +a8, -22.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 52, 1, -76.7 +a8, -21.6 -b8 , 0 );
setMoveKey( spep_8 -3 + 54, 1, -75.7 +a8, -21.2 -b8 , 0 );
setMoveKey( spep_8 -3 + 56, 1, -74.7 +a8, -20.8 -b8 , 0 );
setMoveKey( spep_8 -3 + 58, 1, -74 +a8, -20.4 -b8 , 0 );
--setMoveKey( spep_8 -3 + 59, 1, -74, -20.4 , 0 );

setScaleKey( spep_8 + 0, 1, 8.58, 8.58 );
setScaleKey( spep_8 + 1, 1, 8.54, 8.54 );
setScaleKey( spep_8 + 2, 1, 8.44, 8.44 );
setScaleKey( spep_8 -3 + 6, 1, 8.26, 8.26 );
setScaleKey( spep_8 -3 + 8, 1, 8.01, 8.01 );
setScaleKey( spep_8 -3 + 10, 1, 7.7, 7.7 );
setScaleKey( spep_8 -3 + 12, 1, 7.31, 7.31 );
setScaleKey( spep_8 -3 + 14, 1, 6.85, 6.85 );
setScaleKey( spep_8 -3 + 16, 1, 6.33, 6.33 );
setScaleKey( spep_8 -3 + 18, 1, 5.73, 5.73 );
setScaleKey( spep_8 -3 + 20, 1, 5.06, 5.06 );
setScaleKey( spep_8 -3 + 22, 1, 4.32, 4.32 );
setScaleKey( spep_8 -3 + 24, 1, 3.52, 3.52 );
setScaleKey( spep_8 -3 + 26, 1, 2.64, 2.64 );
setScaleKey( spep_8 -3 + 28, 1, 2.58, 2.58 );
setScaleKey( spep_8 -3 + 30, 1, 2.52, 2.52 );
setScaleKey( spep_8 -3 + 32, 1, 2.46, 2.46 );
setScaleKey( spep_8 -3 + 34, 1, 2.41, 2.41 );
setScaleKey( spep_8 -3 + 36, 1, 2.36, 2.36 );
setScaleKey( spep_8 -3 + 38, 1, 2.31, 2.31 );
setScaleKey( spep_8 -3 + 40, 1, 2.27, 2.27 );
setScaleKey( spep_8 -3 + 42, 1, 2.23, 2.23 );
setScaleKey( spep_8 -3 + 44, 1, 2.19, 2.19 );
setScaleKey( spep_8 -3 + 46, 1, 2.16, 2.16 );
setScaleKey( spep_8 -3 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_8 -3 + 50, 1, 2.1, 2.1 );
setScaleKey( spep_8 -3 + 52, 1, 2.08, 2.08 );
setScaleKey( spep_8 -3 + 54, 1, 2.05, 2.05 );
setScaleKey( spep_8 -3 + 56, 1, 2.04, 2.04 );
setScaleKey( spep_8 -3 + 58, 1, 2.02, 2.02 );
--setScaleKey( spep_8 -3 + 59, 1, 2.02, 2.02 );

setRotateKey( spep_8 + 0, 1, 70 );
setRotateKey( spep_8 + 55, 1, 70 );
--setRotateKey( spep_8 + 56, 1, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;

------------------------------------------------------
-- 敵の背後に瞬間移動(146F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
jpunch_f = entryEffectLife( spep_9 + 0, SP_15r, 146, 0x100, -1, 0, 0, 0 );  --敵を拳で挟み気弾を溜める　手前    ef_015
setEffMoveKey( spep_9 + 0, jpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 146, jpunch_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, jpunch_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, jpunch_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, jpunch_f, 0 );
setEffRotateKey( spep_9 + 146, jpunch_f, 0 );
setEffAlphaKey( spep_9 + 0, jpunch_f, 255 );
setEffAlphaKey( spep_9 + 146 -1, jpunch_f, 255 );
setEffAlphaKey( spep_9 + 146, jpunch_f, 0 );

jpunch_b = entryEffectLife( spep_9 + 0, SP_16, 146, 0x80, -1, 0, 0, 0 );  --敵を拳で挟み気弾を溜める　奥  ef_016
setEffMoveKey( spep_9 + 0, jpunch_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 146, jpunch_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, jpunch_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, jpunch_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, jpunch_b, 0 );
setEffRotateKey( spep_9 + 146, jpunch_b, 0 );
setEffAlphaKey( spep_9 + 0, jpunch_b, 255 );
setEffAlphaKey( spep_9 + 146 -1, jpunch_b, 255 );
setEffAlphaKey( spep_9 + 146, jpunch_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_9 + 0, 1, 1 );
--setDisp( spep_9 + 146, 1, 0 );
changeAnime( spep_9 + 0, 1, 5 );
changeAnime( spep_9 -3 + 32, 1, 7 );

a9 = 190;
b9 = 240;
setMoveKey( spep_9 + 0, 1, -606.4 -a9, 101 -b9 , 0 );
setMoveKey( spep_9 + 1, 1, -602.1 -a9, 101 -b9 , 0 );
setMoveKey( spep_9 + 2, 1, -590.1 -a9, 100.6 -b9 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -570.4 -a9, 99.9 -b9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -543 -a9, 98.9 -b9 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -508 -a9, 97.5 -b9 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -465.3 -a9, 95.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -414.9 -a9, 93.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -356.8 -a9, 91.4 -b9 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -291 -a9, 88.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -278.9 -a9, 88.4 -b9 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -266.6 -a9, 88 -b9 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -254.1 -a9, 87.6 -b9 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -241.4 -a9, 87.2 -b9 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -228.4 -a9, 86.8 -b9 , 0 );
setMoveKey( spep_9 -3 + 31, 1, -215.4 -a9, 86.6 -b9 , 0 );

a10 = 250;
b10 = 100;
setMoveKey( spep_9 -3 + 32, 1, -420.8 +a10, -23.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 34, 1, -406.6 +a10, -27.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 36, 1, -388.9 +a10, -36.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -410.9 +a10, -36.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 40, 1, -388.8 +a10, -50.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 42, 1, -413.6 +a10, -38 -b10 , 0 );
setMoveKey( spep_9 -3 + 44, 1, -402.2 +a10, -64.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 46, 1, -388 +a10, -28 -b10 , 0 );
setMoveKey( spep_9 -3 + 48, 1, -403.1 +a10, -45.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 50, 1, -389.4 +a10, -55.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 52, 1, -400.8 +a10, -40 -b10 , 0 );
setMoveKey( spep_9 -3 + 54, 1, -404.6 +a10, -50 -b10 , 0 );
setMoveKey( spep_9 -3 + 56, 1, -380.3 +a10, -36.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 58, 1, -395.3 +a10, -52.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 60, 1, -376.6 +a10, -57.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 62, 1, -396.5 +a10, -40.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 64, 1, -388.1 +a10, -61.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 66, 1, -385.8 +a10, -55.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 68, 1, -389.9 +a10, -70.9 -b10 , 0 );

setMoveKey( spep_9 -3 + 70, 1, -430.6 +a10 +29, -101.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 72, 1, -488.2 +a10 +58, -160.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 74, 1, -568.3 +a10 +87, -244.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 76, 1, -624.3 +a10 +116, -300 -b10 , 0 );
setMoveKey( spep_9 -3 + 78, 1, -669.8 +a10 +145, -346.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 80, 1, -705 +a10 +174, -382.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 82, 1, -730.1 +a10 +190, -408 -b10 , 0 );

setMoveKey( spep_9 -3 + 84, 1, -745.1 +a10 +190, -423.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 86, 1, -750.1 +a10 +190, -428.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 88, 1, -750.5 +a10 +192, -428.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 90, 1, -751.8 +a10 +194, -429.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 92, 1, -753.8 +a10 +196, -430.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 94, 1, -756.7 +a10 +198, -431.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 96, 1, -760.4 +a10 +200, -433.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 98, 1, -764.9 +a10 +202, -435.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 100, 1, -770.3 +a10 +204, -438 -b10 , 0 );
setMoveKey( spep_9 -3 + 102, 1, -776.5 +a10 +206, -440.9 -b10 , 0 );
setMoveKey( spep_9 -3 + 104, 1, -783.5 +a10 +208, -444.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 106, 1, -782.5 +a10 +210, -442.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 108, 1, -806.9 +a10 +212, -458.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 110, 1, -819.8 +a10 +214, -449.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 112, 1, -812.6 +a10 +216, -466.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 114, 1, -822 +a10 +218, -460.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 116, 1, -849.6 +a10 +220, -478.6 -b10 , 0 );
setMoveKey( spep_9 -3 + 118, 1, -865.8 +a10 +222, -470.5 -b10 , 0 );
setMoveKey( spep_9 -3 + 120, 1, -861.8 +a10 +224, -489.1 -b10 , 0 );
setMoveKey( spep_9 -3 + 122, 1, -874.5 +a10 +226, -485.3 -b10 , 0 );
setMoveKey( spep_9 -3 + 124, 1, -905.4 +a10 +228, -504.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 126, 1, -924.8 +a10 +230, -498.3 -b10 , 0 );
setMoveKey( spep_9 -3 + 128, 1, -924.1 +a10 +232, -518.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 130, 1, -939.9 +a10 +234, -516.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 132, 1, -974.1 +a10 +236, -537.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 134, 1, -996.7 +a10 +238, -532.4 -b10 , 0 );
setMoveKey( spep_9 -3 + 136, 1, -999.2 +a10 +240, -554.2 -b10 , 0 );
setMoveKey( spep_9 -3 + 138, 1, -1012.9 +a10 +242, -546.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 140, 1, -1062.5 +a10 +244, -581.6 -b10 , 0 );
setMoveKey( spep_9 -3 + 142, 1, -1086.6 +a10 +246, -569.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 144, 1, -1081.7 +a10 +248, -603.7 -b10 , 0 );
setMoveKey( spep_9 -3 + 146, 1, -1104 +a10 +250, -590.8 -b10 , 0 );
setMoveKey( spep_9 -3 + 148, 1, -1156.6 +a10 +252, -627.4 -b10 , 0 );
--setMoveKey( spep_9 -3 + 149, 1, -1156.6, -627.4 , 0 );

s9 = 1.8;
setScaleKey( spep_9 + 0, 1, 7.41 +s9, 7.41 +s9 );
setScaleKey( spep_9 + 1, 1, 7.38 +s9, 7.38 +s9 );
setScaleKey( spep_9 + 2, 1, 7.28 +s9, 7.28 +s9 );
setScaleKey( spep_9 -3 + 6, 1, 7.11 +s9, 7.11 +s9 );
setScaleKey( spep_9 -3 + 8, 1, 6.88 +s9, 6.88 +s9 );
setScaleKey( spep_9 -3 + 10, 1, 6.58 +s9, 6.58 +s9 );
setScaleKey( spep_9 -3 + 12, 1, 6.21 +s9, 6.21 +s9 );
setScaleKey( spep_9 -3 + 14, 1, 5.78 +s9, 5.78 +s9 );
setScaleKey( spep_9 -3 + 16, 1, 5.28 +s9, 5.28 +s9 );
setScaleKey( spep_9 -3 + 18, 1, 4.71 +s9, 4.71 +s9 );
setScaleKey( spep_9 -3 + 20, 1, 4.61 +s9, 4.61 +s9 );
setScaleKey( spep_9 -3 + 22, 1, 4.51 +s9, 4.51 +s9 );
setScaleKey( spep_9 -3 + 24, 1, 4.4 +s9, 4.4 +s9 );
setScaleKey( spep_9 -3 + 26, 1, 4.29 +s9, 4.29 +s9 );
setScaleKey( spep_9 -3 + 28, 1, 4.19 +s9, 4.19 +s9 );
setScaleKey( spep_9 -3 + 31, 1, 4.08 +s9, 4.08 +s9 );

s10 = 0.2;
setScaleKey( spep_9 -3 + 32, 1, 1.8924 +s10, 1.8924 +s10 );
setScaleKey( spep_9 -3 + 34, 1, 1.7784 +s10, 1.7784 +s10 );
setScaleKey( spep_9 -3 + 36, 1, 1.6644 +s10, 1.6644 +s10 );
setScaleKey( spep_9 -3 + 66, 1, 1.6644 +s10, 1.6644 +s10 );
setScaleKey( spep_9 -3 + 68, 1, 1.6986 +s10, 1.6986 +s10 );
setScaleKey( spep_9 -3 + 70, 1, 1.8012 +s10, 1.8012 +s10 );
setScaleKey( spep_9 -3 + 72, 1, 1.9779 +s10, 1.9779 +s10 );
setScaleKey( spep_9 -3 + 74, 1, 2.2173 +s10, 2.2173 +s10 );
setScaleKey( spep_9 -3 + 76, 1, 2.3769 +s10, 2.3769 +s10 );
setScaleKey( spep_9 -3 + 78, 1, 2.508 +s10, 2.508 +s10 );
setScaleKey( spep_9 -3 + 80, 1, 2.6106 +s10, 2.6106 +s10 );
setScaleKey( spep_9 -3 + 82, 1, 2.6847 +s10, 2.6847 +s10 );
setScaleKey( spep_9 -3 + 84, 1, 2.7303 +s10, 2.7303 +s10 );
setScaleKey( spep_9 -3 + 86, 1, 2.7417 +s10, 2.7417 +s10 );
setScaleKey( spep_9 -3 + 88, 1, 2.7417 +s10, 2.7417 +s10 );
setScaleKey( spep_9 -3 + 90, 1, 2.7474 +s10, 2.7474 +s10 );
setScaleKey( spep_9 -3 + 92, 1, 2.7474 +s10, 2.7531 +s10 );
setScaleKey( spep_9 -3 + 94, 1, 2.7531 +s10, 2.7588 +s10 );
setScaleKey( spep_9 -3 + 96, 1, 2.7645 +s10, 2.7645 +s10 );
setScaleKey( spep_9 -3 + 98, 1, 2.7702 +s10, 2.7702 +s10 );
setScaleKey( spep_9 -3 + 100, 1, 2.7816 +s10, 2.7816 +s10 );
setScaleKey( spep_9 -3 + 102, 1, 2.793 +s10, 2.793 +s10 );
setScaleKey( spep_9 -3 + 104, 1, 2.8101 +s10, 2.8101 +s10 );
setScaleKey( spep_9 -3 + 106, 1, 2.8215 +s10, 2.8215 +s10 );
setScaleKey( spep_9 -3 + 108, 1, 2.8386 +s10, 2.8386 +s10 );
setScaleKey( spep_9 -3 + 110, 1, 2.8557 +s10, 2.8614 +s10 );
setScaleKey( spep_9 -3 + 112, 1, 2.8785 +s10, 2.8785 +s10 );
setScaleKey( spep_9 -3 + 114, 1, 2.9013 +s10, 2.9013 +s10 );
setScaleKey( spep_9 -3 + 116, 1, 2.9241 +s10, 2.9241 +s10 );
setScaleKey( spep_9 -3 + 118, 1, 2.9469 +s10, 2.9469 +s10 );
setScaleKey( spep_9 -3 + 120, 1, 2.9754 +s10, 2.9754 +s10 );
setScaleKey( spep_9 -3 + 122, 1, 3.0039 +s10, 3.0039 +s10 );
setScaleKey( spep_9 -3 + 124, 1, 3.0324 +s10, 3.0324 +s10 );
setScaleKey( spep_9 -3 + 126, 1, 3.0609 +s10, 3.0609 +s10 );
setScaleKey( spep_9 -3 + 128, 1, 3.0951 +s10, 3.0951 +s10 );
setScaleKey( spep_9 -3 + 130, 1, 3.1293 +s10, 3.1293 +s10 );
setScaleKey( spep_9 -3 + 132, 1, 3.1692 +s10, 3.1692 +s10 );
setScaleKey( spep_9 -3 + 134, 1, 3.2034 +s10, 3.2034 +s10 );
setScaleKey( spep_9 -3 + 136, 1, 3.2433 +s10, 3.2433 +s10 );
setScaleKey( spep_9 -3 + 138, 1, 3.2832 +s10, 3.2832 +s10 );
setScaleKey( spep_9 -3 + 140, 1, 3.3288 +s10, 3.3288 +s10 );
setScaleKey( spep_9 -3 + 142, 1, 3.3687 +s10, 3.3687 +s10 );
setScaleKey( spep_9 -3 + 144, 1, 3.4143 +s10, 3.42 +s10 );
setScaleKey( spep_9 -3 + 146, 1, 3.4656 +s10, 3.4656 +s10 );
setScaleKey( spep_9 -3 + 148, 1, 3.5112 +s10, 3.5112 +s10 );
--setScaleKey( spep_9 -3 + 149, 1, 6.16, 6.16 );

setRotateKey( spep_9 + 0, 1, 95 );
setRotateKey( spep_9 -3 + 31, 1, 95 );

r10 = 70;
setRotateKey( spep_9 -3 + 32, 1, 193 -r10 );
setRotateKey( spep_9 -3 + 66, 1, 193 -r10 );
setRotateKey( spep_9 -3 + 68, 1, 192.9 -r10 );
setRotateKey( spep_9 -3 + 70, 1, 192.7 -r10 );
setRotateKey( spep_9 -3 + 72, 1, 192.3 -r10 );
setRotateKey( spep_9 -3 + 74, 1, 191.8 -r10 );
setRotateKey( spep_9 -3 + 76, 1, 191.4 -r10 );
setRotateKey( spep_9 -3 + 78, 1, 191.1 -r10 );
setRotateKey( spep_9 -3 + 80, 1, 190.9 -r10 );
setRotateKey( spep_9 -3 + 82, 1, 190.7 -r10 );
setRotateKey( spep_9 -3 + 84, 1, 190.6 -r10 );
setRotateKey( spep_9 -3 + 96, 1, 190.6 -r10 );
setRotateKey( spep_9 -3 + 98, 1, 190.5 -r10 );
setRotateKey( spep_9 -3 + 104, 1, 190.5 -r10 );
setRotateKey( spep_9 -3 + 106, 1, 190.4 -r10 );
setRotateKey( spep_9 -3 + 110, 1, 190.4 -r10 );
setRotateKey( spep_9 -3 + 112, 1, 190.3 -r10 );
setRotateKey( spep_9 -3 + 114, 1, 190.3 -r10 );
setRotateKey( spep_9 -3 + 116, 1, 190.2 -r10 );
setRotateKey( spep_9 -3 + 118, 1, 190.2 -r10 );
setRotateKey( spep_9 -3 + 120, 1, 190.1 -r10 );
setRotateKey( spep_9 -3 + 122, 1, 190.1 -r10 );
setRotateKey( spep_9 -3 + 124, 1, 190 -r10 );
setRotateKey( spep_9 -3 + 126, 1, 190 -r10 );
setRotateKey( spep_9 -3 + 128, 1, 189.9 -r10 );
setRotateKey( spep_9 -3 + 130, 1, 189.8 -r10 );
setRotateKey( spep_9 -3 + 132, 1, 189.8 -r10 );
setRotateKey( spep_9 -3 + 134, 1, 189.7 -r10 );
setRotateKey( spep_9 -3 + 136, 1, 189.6 -r10 );
setRotateKey( spep_9 -3 + 138, 1, 189.5 -r10 );
setRotateKey( spep_9 -3 + 140, 1, 189.5 -r10 );
setRotateKey( spep_9 -3 + 142, 1, 189.4 -r10 );
setRotateKey( spep_9 -3 + 144, 1, 189.3 -r10 );
setRotateKey( spep_9 -3 + 146, 1, 189.2 -r10 );
setRotateKey( spep_9 -3 + 148, 1, 189.1 -r10 );
--setRotateKey( spep_9 -3 + 149, 1, -3.9 );

-- ** 音 ** --
--頭ぐりぐり
SE049 = playSe( spep_9 + 12, 1116 );
stopSe( spep_9 + 38, SE049, 16 );

--頭ぐりぐり
SE050 = playSe( spep_9 + 26, 1009 );

--頭ぐりぐり
SE051 = playSe( spep_9 + 26, 1153 );

--頭ぐりぐり
SE052 = playSe( spep_9 + 26, 1190 );
setSeVolumeByWorkId( spep_9 + 26, SE052, 86 );

--口気弾溜め
SE053 = playSe( spep_9 + 76, 1157 );
setSeVolumeByWorkId( spep_9 + 76, SE053, 150 );
stopSe( spep_9 +144, SE053, 12 );

--口気弾溜め
SE054 = playSe( spep_9 + 76, 1311 );
setSeVolumeByWorkId( spep_9 + 76, SE054, 145 );
stopSe( spep_9 +144, SE054, 12 );

--口気弾溜め
SE055 = playSe( spep_9 + 76, 1282 );
setSeVolumeByWorkId( spep_9 + 76, SE055, 54 );
stopSe( spep_9 +144, SE055, 12 );

--口気弾発射
SE056 = playSe( spep_9 + 142, 1258 );
setSeVolumeByWorkId( spep_9 + 142, SE056, 72 );

--口気弾発射
SE057 = playSe( spep_9 + 144, 1205 );
setSeVolumeByWorkId( spep_9 + 144, SE057, 78 );
stopSe( spep_9 + 146 + 38, SE057, 32 );

--口気弾発射
SE058 = playSe( spep_9 + 144, 1213 );
setSeVolumeByWorkId( spep_9 + 144, SE058, 88 );
stopSe( spep_9 + 146 +86 + 26, SE058, 14 );

--口気弾発射
SE059 = playSe( spep_9 + 144, 1193 );
setSeVolumeByWorkId( spep_9 + 144, SE059, 105 );
stopSe( spep_9 + 146 +86 + 26, SE059, 14 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 146;

------------------------------------------------------
-- 気弾を放つ(86F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
jbeam_f = entryEffectLife( spep_10 + 0, SP_17r, 86, 0x100, -1, 0, 0, 0 );  --気弾を放つ　手前    ef_017
setEffMoveKey( spep_10 + 0, jbeam_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 86, jbeam_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, jbeam_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 86, jbeam_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, jbeam_f, 0 );
setEffRotateKey( spep_10 + 86, jbeam_f, 0 );
setEffAlphaKey( spep_10 + 0, jbeam_f, 255 );
setEffAlphaKey( spep_10 + 86 -1, jbeam_f, 255 );
setEffAlphaKey( spep_10 + 86, jbeam_f, 0 );

jbema_b = entryEffectLife( spep_10 + 0, SP_18, 86, 0x80, -1, 0, 0, 0 );  --気弾を放つ　奥  ef_018
setEffMoveKey( spep_10 + 0, jbema_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 86, jbema_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, jbema_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 86, jbema_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, jbema_b, 0 );
setEffRotateKey( spep_10 + 86, jbema_b, 0 );
setEffAlphaKey( spep_10 + 0, jbema_b, 255 );
setEffAlphaKey( spep_10 + 86 -1, jbema_b, 255 );
setEffAlphaKey( spep_10 + 86, jbema_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 86, 1, 0 );
changeAnime( spep_10 -3 + 0, 1, 106 );

setBlendColor( spep_10 -3 + 8, 1, 3, 0.45, 0.86, 1.0, 0.05 );
setBlendColor( spep_10 -3 + 10, 1, 3, 0.45, 0.86, 1.0, 0.1 );
setBlendColor( spep_10 -3 + 12, 1, 3, 0.45, 0.86, 1.0, 0.15 );
setBlendColor( spep_10 -3 + 14, 1, 3, 0.45, 0.86, 1.0, 0.2 );
setBlendColor( spep_10 -3 + 16, 1, 3, 0.45, 0.86, 1.0, 0.25 );
setBlendColor( spep_10 -3 + 18, 1, 3, 0.45, 0.86, 1.0, 0.3 );
setBlendColor( spep_10 -3 + 20, 1, 3, 0.45, 0.86, 1.0, 0.35 );
setBlendColor( spep_10 -3 + 22, 1, 3, 0.45, 0.86, 1.0, 0.4 );
setBlendColor( spep_10 -3 + 24, 1, 3, 0.45, 0.86, 1.0, 0.45 );
setBlendColor( spep_10 -3 + 26, 1, 3, 0.45, 0.86, 1.0, 0.5 );
setBlendColor( spep_10 -3 + 28, 1, 3, 0.45, 0.86, 1.0, 0.55 );
setBlendColor( spep_10 -3 + 30, 1, 3, 0.45, 0.86, 1.0, 0.6 );
setBlendColor( spep_10 -3 + 32, 1, 3, 0.45, 0.86, 1.0, 0.65 );
setBlendColor( spep_10 -3 + 34, 1, 3, 0.45, 0.86, 1.0, 0.7 );
--setBlendColor( spep_10 -3 + 8, 1, 3, 0.45, 0.86, 1.0, 0.7 );

--setMoveKey( spep_10 + 0, 1, -508.6, -415.3 , 0 );
setMoveKey( spep_10 + 0, 1, -424, -321.8 , 0 );
setMoveKey( spep_10 + 1, 1, -339.3, -228.2 , 0 );
setMoveKey( spep_10 + 2, 1, -339.3, -228.2 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -254.5, -134.5 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -251.3, -130.4 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -247.1, -131 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -258.6, -109.2 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -228.9, -117.4 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -240.1, -124.6 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -231.1, -115 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -243.5, -108.3 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -235.1, -102.4 , 0 );
setMoveKey( spep_10 -3 + 24, 1, -226.1, -104.2 , 0 );
setMoveKey( spep_10 -3 + 26, 1, -224.1, -114.1 , 0 );
setMoveKey( spep_10 -3 + 28, 1, -230.8, -94 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -224.3, -102.4 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -234, -92.6 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -214.3, -97.1 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -228, -97.3 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -215.7, -94.7 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -228.1, -96.8 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -222.3, -91.3 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -219.8, -86.1 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -216.3, -101.4 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -222.2, -93.3 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -190.4, -61 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -155.9, -17.7 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -116.1, -1.2 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -157.1, -27.9 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -180.8, -44.4 , 0 );
setMoveKey( spep_10 -3 + 60, 1, -203.5, -97.3 , 0 );
setMoveKey( spep_10 -3 + 62, 1, -273.6, -160.8 , 0 );
setMoveKey( spep_10 -3 + 64, 1, -368.6, -239.5 , 0 );
setMoveKey( spep_10 -3 + 66, 1, -436.4, -298 , 0 );
setMoveKey( spep_10 -3 + 68, 1, -584.6, -464.8 , 0 );
setMoveKey( spep_10 -3 + 70, 1, -724.4, -589.8 , 0 );
setMoveKey( spep_10 -3 + 72, 1, -873, -715.3 , 0 );
setMoveKey( spep_10 -3 + 74, 1, -979, -806.1 , 0 );
setMoveKey( spep_10 -3 + 76, 1, -1059.4, -909.4 , 0 );
setMoveKey( spep_10 -3 + 78, 1, -1134, -973.4 , 0 );
setMoveKey( spep_10 -3 + 80, 1, -1219.8, -1040 , 0 );
setMoveKey( spep_10 -3 + 82, 1, -1265, -1073.8 , 0 );
setMoveKey( spep_10 -3 + 84, 1, -1286.2, -1121.7 , 0 );
setMoveKey( spep_10 -3 + 86, 1, -1302.9, -1131.6 , 0 );
setMoveKey( spep_10 -3 + 88, 1, -1331.9, -1145 , 0 );
setMoveKey( spep_10 -3 + 89, 1, -1331.9, -1145 , 0 );

s11 = 0;
--setScaleKey( spep_10 + 0, 1, 5.21 +s11, 5.21 +s11 );
setScaleKey( spep_10 + 0, 1, 4.48 +s11, 4.48 +s11 );
setScaleKey( spep_10 + 1, 1, 3.75 +s11, 3.75 +s11 );
setScaleKey( spep_10 + 2, 1, 3.75 +s11, 3.75 +s11 );
setScaleKey( spep_10 -3 + 6, 1, 3.03 +s11, 3.02 +s11 );
setScaleKey( spep_10 -3 + 8, 1, 2.99 +s11, 2.99 +s11 );
setScaleKey( spep_10 -3 + 10, 1, 2.96 +s11, 2.96 +s11 );
setScaleKey( spep_10 -3 + 12, 1, 2.93 +s11, 2.93 +s11 );
setScaleKey( spep_10 -3 + 14, 1, 2.9 +s11, 2.9 +s11 );
setScaleKey( spep_10 -3 + 16, 1, 2.88 +s11, 2.88 +s11 );
setScaleKey( spep_10 -3 + 18, 1, 2.85 +s11, 2.85 +s11 );
setScaleKey( spep_10 -3 + 20, 1, 2.83 +s11, 2.83 +s11 );
setScaleKey( spep_10 -3 + 22, 1, 2.81 +s11, 2.81 +s11 );
setScaleKey( spep_10 -3 + 24, 1, 2.79 +s11, 2.79 +s11 );
setScaleKey( spep_10 -3 + 26, 1, 2.77 +s11, 2.77 +s11 );
setScaleKey( spep_10 -3 + 28, 1, 2.75 +s11, 2.75 +s11 );
setScaleKey( spep_10 -3 + 30, 1, 2.74 +s11, 2.74 +s11 );
setScaleKey( spep_10 -3 + 32, 1, 2.72 +s11, 2.72 +s11 );
setScaleKey( spep_10 -3 + 34, 1, 2.71 +s11, 2.71 +s11 );
setScaleKey( spep_10 -3 + 36, 1, 2.7 +s11, 2.7 +s11 );
setScaleKey( spep_10 -3 + 38, 1, 2.69 +s11, 2.69 +s11 );
setScaleKey( spep_10 -3 + 40, 1, 2.69 +s11, 2.68 +s11 );
setScaleKey( spep_10 -3 + 42, 1, 2.68 +s11, 2.68 +s11 );
setScaleKey( spep_10 -3 + 44, 1, 2.68 +s11, 2.68 +s11 );
setScaleKey( spep_10 -3 + 46, 1, 2.67 +s11, 2.67 +s11 );
setScaleKey( spep_10 -3 + 48, 1, 2.67 +s11, 2.67 +s11 );
setScaleKey( spep_10 -3 + 50, 1, 2.44 +s11, 2.44 +s11 );
setScaleKey( spep_10 -3 + 52, 1, 2.21 +s11, 2.21 +s11 );
setScaleKey( spep_10 -3 + 54, 1, 1.98 +s11, 1.98 +s11 );
setScaleKey( spep_10 -3 + 56, 1, 1.96 +s11, 1.96 +s11 );
setScaleKey( spep_10 -3 + 58, 1, 1.93 +s11, 1.93 +s11 );
setScaleKey( spep_10 -3 + 60, 1, 1.91 +s11, 1.91 +s11 );
setScaleKey( spep_10 -3 + 62, 1, 1.89 +s11, 1.89 +s11 );
setScaleKey( spep_10 -3 + 64, 1, 1.87 +s11, 1.87 +s11 );
setScaleKey( spep_10 -3 + 66, 1, 1.85 +s11, 1.85 +s11 );
setScaleKey( spep_10 -3 + 68, 1, 1.83 +s11, 1.83 +s11 );
setScaleKey( spep_10 -3 + 70, 1, 1.82 +s11, 1.82 +s11 );
setScaleKey( spep_10 -3 + 72, 1, 1.8 +s11, 1.8 +s11 );
setScaleKey( spep_10 -3 + 74, 1, 1.79 +s11, 1.79 +s11 );
setScaleKey( spep_10 -3 + 76, 1, 1.78 +s11, 1.78 +s11 );
setScaleKey( spep_10 -3 + 78, 1, 1.77 +s11, 1.77 +s11 );
setScaleKey( spep_10 -3 + 80, 1, 1.77 +s11, 1.77 +s11 );
setScaleKey( spep_10 -3 + 82, 1, 1.76 +s11, 1.76 +s11 );
setScaleKey( spep_10 -3 + 84, 1, 1.76 +s11, 1.76 +s11 );
setScaleKey( spep_10 -3 + 86, 1, 1.75 +s11, 1.75 +s11 );
setScaleKey( spep_10 -3 + 89, 1, 1.75 +s11, 1.75 +s11 );

setRotateKey( spep_10 + 0, 1, -17.3 );
setRotateKey( spep_10 + 86, 1, -17.3 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 860 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 86;

------------------------------------------------------
-- フィニッシュ　光球が拡がる(116F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_19, 0x100, -1, 0, 0, 0 );  --フィニッシュ　光球が拡がる  ef_019
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 116, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 116, finish_f, 255 );

-- ** 音 ** --
--ラスト爆発
SE060 = playSe( spep_11 + 16, 1024 );
setSeVolumeByWorkId( spep_11 + 16, SE060, 82 );

--ラスト爆発
SE061 = playSe( spep_11 + 16, 1023 );

--ラスト爆発
SE062 = playSe( spep_11 + 16, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 6 );
endPhase( spep_11 + 106 );

end