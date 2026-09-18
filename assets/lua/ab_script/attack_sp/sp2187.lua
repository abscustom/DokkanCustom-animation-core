--1021880:邪悪龍軍団_必殺技：邪悪龍強襲
--sp_effect_a9_00083
--sp2187

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
SP_01 = 157297;     --七星龍と二星龍の攻撃    ef_001_front
SP_02 = 157298;     --七星龍と二星龍の攻撃    ef_001_back
SP_03 = 157299;     --四星龍と六星龍の攻撃    ef_002_front
SP_04 = 157300;     --四星龍と六星龍の攻撃    ef_002_back
SP_05 = 157301;     --五星龍の攻撃    ef_003_front
SP_06 = 157302;     --五星龍の攻撃    ef_003_back
SP_07 = 157303;     --三星龍の攻撃    ef_004_front
SP_08 = 157304;     --三星龍の攻撃    ef_004_back
SP_09 = 157305;     --一星龍の攻撃    ef_005
SP_10 = 157307;     --フィニッシュ    ef_006_front
SP_11 = 157308;     --フィニッシュ    ef_006_back

--敵側
SP_05r = 157342;     --五星龍の攻撃    ef_003_r_front
SP_06r = 157343;     --五星龍の攻撃    ef_003_r_back
SP_07r = 157344;     --三星龍の攻撃    ef_004_r_front
SP_08r = 157345;     --三星龍の攻撃    ef_004_r_back

SP_09r = 157306;        --一星龍の攻撃    ef_005_r

adjustAttackerLabel( 0, 205);

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

ENABLE_AUTO_TIME_STRETCH(0.75);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 七星龍と二星龍の攻撃(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --七星龍と二星龍の攻撃   ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 96, 0x80, -1, 0, 0, 0 );  --七星龍と二星龍の攻撃    ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 96, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 96, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 118 );

a1 = 30;
b1 = 20;

setMoveKey( spep_0 + 0, 1, 276.9 +a1, -343.6 +b1 , 0 );
setMoveKey( spep_0 + 1, 1, 259.6 +a1, -322.4 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 242.3 +a1, -301.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 225.1 +a1, -279.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 225.1 +a1, -279.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 207.8 +a1, -258.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 207.8 +a1, -258.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 190.5 +a1, -237.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 173.2 +a1, -216.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 155.9 +a1, -194.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 138.6 +a1, -173.7 +b1 , 0 );

s0 = 0.1;
setScaleKey( spep_0 + 0, 1, 3.06 -s0, 3.06 -s0 );
setScaleKey( spep_0 + 1, 1, 2.82 -s0, 2.82 -s0 );
setScaleKey( spep_0 + 2, 1, 2.64 -s0, 2.64 -s0 );
setScaleKey( spep_0 -3 + 6, 1, 2.46 -s0, 2.46 -s0 );
setScaleKey( spep_0 -3 + 7, 1, 2.46 -s0, 2.46 -s0 );
setScaleKey( spep_0 -3 + 8, 1, 2.28 -s0, 2.28 -s0 );
setScaleKey( spep_0 -3 + 9, 1, 2.28 -s0, 2.28 -s0 );
setScaleKey( spep_0 -3 + 10, 1, 2.1 -s0, 2.1 -s0 );
setScaleKey( spep_0 -3 + 12, 1, 1.92 -s0, 1.92 -s0 );
setScaleKey( spep_0 -3 + 14, 1, 1.69 -s0, 1.69 -s0 );
setScaleKey( spep_0 -3 + 16, 1, 1.5 -s0, 1.5 -s0 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1072 );
setTimeStretch( SE001, 0.77, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 138.6 +a1, -173.7 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 138.4 +a1, -173.3 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 138 +a1, -172.9 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 137.7 +a1, -172.4 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 137.3 +a1, -172 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 137 +a1, -171.6 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.5 -s0, 1.5 -s0 );
    setScaleKey( SP_dodge + 10, 1, 1.49 -s0, 1.49 -s0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 90, 1, 0 );
changeAnime( spep_0 -3 + 44, 1, 104 );
changeAnime( spep_0 -3 + 72, 1, 107 );
changeAnime( spep_0 -3 + 74, 1, 7 );

setBlendColor( spep_0 -3 + 80, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_0 -3 + 82, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 -3 + 84, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 -3 + 86, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_0 -3 + 88, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 89, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 90, 1, 3, 0, 0, 0, 0 );

a2 = 15;
b2 = 22;
setMoveKey( spep_0 -3 + 18, 1, 138.4 +a1, -173.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 138 +a1, -172.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 137.7 +a1, -172.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 137.3 +a1, -172 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 137 +a1, -171.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 136.7 +a1, -171.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 136.3 +a1, -170.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 136 +a1, -170.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 135.7 +a1, -170 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 135.3 +a1, -169.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 135 +a1, -169.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 134.6 +a1, -168.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 43, 1, 134.3 +a1, -168.3 +b1 , 0 );--
setMoveKey( spep_0 -3 + 44, 1, 89.6 +a2, -179.6 +b2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 89.4 +a2, -179.2 +b2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 89.1 +a2, -178.7 +b2 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 88.9 +a2, -178.3 +b2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 88.7 +a2, -177.8 +b2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 88.4 +a2, -177.4 +b2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 88.2 +a2, -176.9 +b2 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 88 +a2, -176.5 +b2 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 87.8 +a2, -176 +b2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 87.6 +a2, -175.6 +b2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 87.4 +a2, -175.1 +b2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 87.1 +a2, -174.7 +b2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 86.9 +a2, -174.2 +b2 , 0 );
setMoveKey( spep_0 -3 + 71, 1, 86.6 +a2, -173.8 +b2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 15.6 -10, -310.6  +20 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 19.5 +20, -239.3 +20 , 0 );
setMoveKey( spep_0 -3 + 76, 1, -12.4 +28, -173.6 +22 , 0 );
setMoveKey( spep_0 -3 + 78, 1, -12.4 +30, -230.5 +25 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 19.4 +35, -258.4 +30 , 0 );
setMoveKey( spep_0 -3 + 82, 1, -12.6 +40 , -205.1 +35 , 0 );
setMoveKey( spep_0 -3 + 84, 1, -16.6 +45, -194.7 +50 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 19.2 +60, -267.1 +55 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 18.9 +120, -286 +120 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 18.9 +120, -286 +120 , 0 );

s1 = 0;
s2 = 0.1;
--setScaleKey( spep_0 -3 + 40, 1, 1.5 -s1, 1.5 -s1 );
--setScaleKey( spep_0 -3 + 43, 1, 1.5 -s1, 1.5 -s1 );--
setScaleKey( spep_0 -3 + 44, 1, 1.44 -s0, 1.44 -s0 );
setScaleKey( spep_0 -3 + 69, 1, 1.38 -s0, 1.38 -s0 );
setScaleKey( spep_0 -3 + 70, 1, 1.38 -s1, 1.38 -s1 );
setScaleKey( spep_0 -3 + 71, 1, 1.38 -s1, 1.38 -s1 );
setScaleKey( spep_0 -3 + 72, 1, 0.5 +s2, 0.5 +s2 );
setScaleKey( spep_0 -3 + 74, 1, 0.595 +s2, 0.595 +s2 );
setScaleKey( spep_0 -3 + 76, 1, 0.84 +s2, 0.84 +s2 );
setScaleKey( spep_0 -3 + 78, 1, 0.875 +s2, 0.875 +s2 );
setScaleKey( spep_0 -3 + 80, 1, 1.015 +s2, 1.015 +s2 );
setScaleKey( spep_0 -3 + 82, 1, 1.26 +s2, 1.26 +s2 );
setScaleKey( spep_0 -3 + 84, 1, 1.61 +s2, 1.61 +s2 );
setScaleKey( spep_0 -3 + 86, 1, 2.03 +s2, 2.03 +s2 );
setScaleKey( spep_0 -3 + 88, 1, 3.815 +s2, 3.815 +s2 );
setScaleKey( spep_0 -3 + 90, 1, 3.815 +s2, 3.815 +s2 );

setRotateKey( spep_0 -3 + 71, 1, 0 );
setRotateKey( spep_0 -3 + 72, 1, 20 );
setRotateKey( spep_0 -3 + 73, 1, 20 );
setRotateKey( spep_0 -3 + 74, 1, -25.8 );
setRotateKey( spep_0 -3 + 90, 1, -25.8 );

-- ** 音 ** --
--振りかぶる
SE002 = playSe( spep_0 + 44, 1004 );

--二・七星龍殴る
SE003 = playSe( spep_0 + 68, 1011 );

--二・七星龍殴る
SE004 = playSe( spep_0 + 68, 1160 );
stopSe( spep_0 +88 + 6, SE004, 50 );

--四・六星龍気弾発生
SE005 = playSe( spep_0 + 96, 1273 );

--四・六星龍気弾発生
SE006 = playSe( spep_0 + 96, 1313 );
stopSe( spep_0 +96 + 34, SE006, 20 );
setPitch( spep_0 + 96, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 5 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 四星龍と六星龍の攻撃   (176F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
fsattack_f = entryEffectLife( spep_1 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  --四星龍と六星龍の攻撃   ef_002_front
setEffMoveKey( spep_1 + 0, fsattack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, fsattack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fsattack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, fsattack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fsattack_f, 0 );
setEffRotateKey( spep_1 + 176, fsattack_f, 0 );
setEffAlphaKey( spep_1 + 0, fsattack_f, 255 );
setEffAlphaKey( spep_1 + 176 -1, fsattack_f, 255 );
setEffAlphaKey( spep_1 + 176, fsattack_f, 0 );

fsattack_b = entryEffectLife( spep_1 + 0, SP_04, 176, 0x80, -1, 0, 0, 0 );  --四星龍と六星龍の攻撃    ef_002_back
setEffMoveKey( spep_1 + 0, fsattack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, fsattack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fsattack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, fsattack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fsattack_b, 0 );
setEffRotateKey( spep_1 + 176, fsattack_b, 0 );
setEffAlphaKey( spep_1 + 0, fsattack_b, 255 );
setEffAlphaKey( spep_1 + 176 -1, fsattack_b, 255 );
setEffAlphaKey( spep_1 + 176, fsattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 96, 1, 1 );
setDisp( spep_1 -3 + 160, 1, 0 );
changeAnime( spep_1 -3 + 96, 1, 105 );

b3 = 0;
setMoveKey( spep_1 -3 + 96, 1, 4.6, -559.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 6.5, -490.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 8.1, -430.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 9.4, -379.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 10.5, -337.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 11.3, -305.6 +b3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 11.8, -282.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 12.2, -268.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 12.2, -303 +b3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 12.2, -262.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -27.9, -221.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 12.1, -260.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 52, -268 +b3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 11.9, -259.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 11.9, -178.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 11.9, -257.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 11.8, -297 +b3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 11.7, -256.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -28.4, -255.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 11.6, -254.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 51.6, -214 +b3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 11.5, -253.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -16.6, -280.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 11.4, -251.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 51.3, -210.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 11.3, -250.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -28.8, -249.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 11.2, -248.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 51.1, -287.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 11, -247.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -29, -206.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 10.9, -245.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 50.9, -284.9 +b3 , 0 );

setScaleKey( spep_1 -3 + 96, 1, 4.5, 4.5 );
setScaleKey( spep_1 -3 + 98, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 100, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 102, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 104, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 106, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 108, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 112, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 114, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 116, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 160, 1, 0.78, 0.78 );

setRotateKey( spep_1 -3 + 96, 1, 0 );
setRotateKey( spep_1 -3 + 160, 1, 0 );

-- ** 音 ** --
--気弾発射
SE007 = playSe( spep_1 + 26, 1178 );
stopSe( spep_1 + 50, SE007, 6 );

--気弾発射
SE008 = playSe( spep_1 + 26, 1043 );
setSeVolumeByWorkId( spep_1 + 26, SE008, 81 );
stopSe( spep_1 + 58, SE008, 20 );

--気弾発射
SE009 = playSe( spep_1 + 38, 1178 );
stopSe( spep_1 + 58, SE009, 8 );

--気弾発射
SE010 = playSe( spep_1 + 48, 1178 );
setSeVolumeByWorkId( spep_1 + 48, SE010, 94 );
stopSe( spep_1 + 68, SE010, 10 );

--気弾発射
SE011 = playSe( spep_1 + 50, 1043 );
setSeVolumeByWorkId( spep_1 + 50, SE011, 75 );
stopSe( spep_1 + 82, SE011, 16 );

--気弾発射
SE012 = playSe( spep_1 + 58, 1178 );
setSeVolumeByWorkId( spep_1 + 58, SE012, 95 );
stopSe( spep_1 + 78, SE012, 8 );

--気弾発射
SE013 = playSe( spep_1 + 70, 1178 );
stopSe( spep_1 + 90, SE013, 6 );

--気弾発射
SE014 = playSe( spep_1 + 84, 1178 );

--気弾着弾
SE015 = playSe( spep_1 + 94, 1011 );

--気弾着弾
SE016 = playSe( spep_1 + 106, 1017 );

--気弾着弾
SE017 = playSe( spep_1 + 116, 1023 );

--気弾着弾
SE018 = playSe( spep_1 + 132, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;


------------------------------------------------------
-- 五星龍の攻撃(146F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
faattack_f = entryEffectLife( spep_2 + 0, SP_05, 145, 0x100, -1, 0, 0, 0 );  --五星龍の攻撃   ef_003_front
setEffMoveKey( spep_2 + 0, faattack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 145, faattack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, faattack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 145, faattack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, faattack_f, 0 );
setEffRotateKey( spep_2 + 145, faattack_f, 0 );
setEffAlphaKey( spep_2 + 0, faattack_f, 255 );
setEffAlphaKey( spep_2 + 145 -1, faattack_f, 255 );
setEffAlphaKey( spep_2 + 145, faattack_f, 0 );

faattack_b = entryEffectLife( spep_2 + 0, SP_06, 145, 0x80, -1, 0, 0, 0 );  --五星龍の攻撃    ef_003_back
setEffMoveKey( spep_2 + 0, faattack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 145, faattack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, faattack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 145, faattack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, faattack_b, 0 );
setEffRotateKey( spep_2 + 145, faattack_b, 0 );
setEffAlphaKey( spep_2 + 0, faattack_b, 255 );
setEffAlphaKey( spep_2 + 145 -1, faattack_b, 255 );
setEffAlphaKey( spep_2 + 145, faattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 56, 1, 1 );
setDisp( spep_2 -3 + 148, 1, 0 );
changeAnime( spep_2 -3 + 56, 1, 106 );
changeAnime( spep_2 -3 + 74, 1, 108 );

a4 = 0;
b4 = 90;

a5 = 100;
b5 = 50;
setMoveKey( spep_2 -3 + 56, 1, 1228.3 +a4, -497.6 +b4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 982.6 +a4, -419.5 +b4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 764 +a4, -341.4 +b4 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 572.3 +a4, -263.2 +b4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 407.6 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 340.1 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 272.6 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 205.1 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 161.6 +a4, -197.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 161.6 +a4, -197.1 +b4 , 0 );--
setMoveKey( spep_2 -3 + 74, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 58.8 +a5, -122.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 54.8 +a5, -148.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 56.8 +a5, -158.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 32.8 +a5, -146.3 +b5 , 0 );
--setMoveKey( spep_2 -3 + 149, 1, 32.8 +a5, -146.3 +b5 , 0 );

setScaleKey( spep_2 -3 + 56, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 58, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 60, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 62, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 64, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 73, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 74, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 100, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 102, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 104, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 106, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 108, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 110, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 112, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 114, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 116, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 118, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 120, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 122, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 124, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 126, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 128, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 130, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 132, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 134, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 136, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 138, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 140, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 142, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 144, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 146, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 148, 1, 1.86, 1.86 );
--setScaleKey( spep_2 -3 + 149, 1, 1.86, 1.86 );

setRotateKey( spep_2 -3 + 56, 1, -21.4 );
setRotateKey( spep_2 -3 + 73, 1, -21.4 );--
setRotateKey( spep_2 -3 + 74, 1, -1.7 );
setRotateKey( spep_2 -3 + 148, 1, -1.7 );

-- ** 音 ** --
--スライム発射
SE019 = playSe( spep_2 + 54, 1242 );
setSeVolumeByWorkId( spep_2 + 54, SE019, 0 );
setSeVolumeByWorkId( spep_2 + 56, SE019, 20 );
setSeVolumeByWorkId( spep_2 + 58, SE019, 40 );
setSeVolumeByWorkId( spep_2 + 60, SE019, 60 );
setSeVolumeByWorkId( spep_2 + 62, SE019, 80 );
setSeVolumeByWorkId( spep_2 + 64, SE019, 100 );
setSeVolumeByWorkId( spep_2 + 66, SE019, 120 );
setSeVolumeByWorkId( spep_2 + 68, SE019, 140 );
setSeVolumeByWorkId( spep_2 + 70, SE019, 160 );
setSeVolumeByWorkId( spep_2 + 72, SE019, 180 );
setSeVolumeByWorkId( spep_2 + 74, SE019, 190 );
setSeVolumeByWorkId( spep_2 + 76, SE019, 202 );
stopSe( spep_2 + 988, SE019, 12 );
setStartTimeMs( SE019,  1000 );

--五星龍腕あげる
SE020 = playSe( spep_2 + 24, 1003 );

--スライム発射
SE021 = playSe( spep_2 + 48, 1241 );
setSeVolumeByWorkId( spep_2 + 48, SE021, 197 );
stopSe( spep_2 + 74, SE021, 20 );

--スライム発射
SE022 = playSe( spep_2 +48, 1119 );
setSeVolumeByWorkId( spep_2 + 48, SE022, 27 );
stopSe( spep_2 + 76, SE022, 22 );

--スライム着弾
SE023 = playSe( spep_2 + 68, 1113 );
setSeVolumeByWorkId( spep_2 + 68, SE023, 158 );
setPitch( spep_2 + 68, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );

--スライム着弾
SE024 = playSe( spep_2 + 84, 1113 );
setSeVolumeByWorkId( spep_2 + 84, SE024, 158 );
setPitch( spep_2 + 84, SE024, -400 );
setTimeStretch( SE024, 0.73, 10, 1 );

--ビーム着弾
SE025 = playSe( spep_2 + 96, 1231 );
setSeVolumeByWorkId( spep_2 + 96, SE025, 158 );

--ビーム着弾
SE026 = playSe( spep_2 + 100, 1249 );
setSeVolumeByWorkId( spep_2 + 100, SE026, 100 );
setSeVolumeByWorkId( spep_2 + 146, SE026, 100 );
setSeVolumeByWorkId( spep_2 + 150, SE026, 87 );
setSeVolumeByWorkId( spep_2 + 154, SE026, 74 );
setSeVolumeByWorkId( spep_2 + 158, SE026, 61 );
setSeVolumeByWorkId( spep_2 + 162, SE026, 48 );
setSeVolumeByWorkId( spep_2 + 166, SE026, 37 );
stopSe( spep_2 +146 + 118, SE026, 18 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 145;


------------------------------------------------------
-- 三星龍の攻撃(166F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tattack_f = entryEffectLife( spep_3 + 0, SP_07, 165, 0x100, -1, 0, 0, 0 );  --三星龍の攻撃    ef_004_front
setEffMoveKey( spep_3 + 0, tattack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 165, tattack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tattack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 165, tattack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tattack_f, 0 );
setEffRotateKey( spep_3 + 165, tattack_f, 0 );
setEffAlphaKey( spep_3 + 0, tattack_f, 255 );
setEffAlphaKey( spep_3 + 165 -1, tattack_f, 255 );
setEffAlphaKey( spep_3 + 165, tattack_f, 0 );

tattack_b = entryEffectLife( spep_3 + 0, SP_08, 165, 0x80, -1, 0, 0, 0 );  --三星龍の攻撃 ef_004_back
setEffMoveKey( spep_3 + 0, tattack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 165, tattack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tattack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 165, tattack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tattack_b, 0 );
setEffRotateKey( spep_3 + 165, tattack_b, 0 );
setEffAlphaKey( spep_3 + 0, tattack_b, 255 );
setEffAlphaKey( spep_3 + 165 -1, tattack_b, 255 );
setEffAlphaKey( spep_3 + 165, tattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 90, 1, 1 );
setDisp( spep_3 -3 + 168, 1, 0 );
changeAnime( spep_3 -3 + 56, 1, 106 );

a6 =  32;
b6 = 10;
setMoveKey( spep_3 -3 + 90, 1, 77.7 +a6, -185.2 +b6 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 77.7 +a6, -185.2 +b6 , 0 );

s6 = 0.4;
setScaleKey( spep_3 -3 + 90, 1, 1.8 -s6, 1.8 -s6 );
setScaleKey( spep_3 -3 + 168, 1, 1.8 -s6, 1.8 -s6 );

r1 = 10;
setRotateKey( spep_3 -3 + 90, 1, -48.2 -r1 );
setRotateKey( spep_3 -3 + 168, 1, -48.2 -r1 );

-- ** 音 ** --
--三星龍目からビーム
SE027 = playSe( spep_3 + 54, 1296 );
setSeVolumeByWorkId( spep_3 + 54, SE027, 0 );
setSeVolumeByWorkId( spep_3 + 56, SE027, 18 );
setSeVolumeByWorkId( spep_3 + 58, SE027, 36 );
setSeVolumeByWorkId( spep_3 + 60, SE027, 54 );
setSeVolumeByWorkId( spep_3 + 62, SE027, 72 );
setSeVolumeByWorkId( spep_3 + 64, SE027, 89 );
stopSe( spep_3 + 118, SE027, 26 );
setStartTimeMs( SE027,  733 );
setPitch( spep_3 + 54, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );

--三星龍目からビーム
SE028 = playSe( spep_3 + 32, 1177 );
setSeVolumeByWorkId( spep_3 + 32, SE028, 75 );
stopSe( spep_3 + 66, SE028, 68 );

--三星龍目からビーム
SE029 = playSe( spep_3 + 32, 1256 );
setPitch( spep_3 + 32, SE029, -300 );
setTimeStretch( SE029, 0.8, 10, 1 );

--氷づけ
SE030 = playSe( spep_3 + 114, 1041 );
setSeVolumeByWorkId( spep_3 + 114, SE030, 81 );

--氷づけ
SE031 = playSe( spep_3 + 114, 1250 );
setSeVolumeByWorkId( spep_3 + 114, SE031, 158 );
stopSe( spep_3 + 144, SE031, 12 );

--氷づけ
SE032 = playSe( spep_3 + 114, 1046 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 165 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 165;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff2 = entryEffectLife( spep_4 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
    spname = entryEffectLife( spep_4 + 0, 1512, 90, 0x100, -1, 0, 0, -110 ); 
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 放射線(黄) ** --
    housha = entryEffectLife( spep_4 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( spep_4 + 0, housha, 0, 0 , 0 );
    setEffMoveKey( spep_4 + 90, housha, 0, 0 , 0 );
    setEffScaleKey( spep_4 + 0, housha, 1.0, 1.0 );
    setEffScaleKey( spep_4 + 90, housha, 1.0, 1.0 );
    setEffRotateKey( spep_4 + 0, housha, 0 );
    setEffRotateKey( spep_4 + 90, housha, 0 );
    setEffAlphaKey( spep_4 + 0, housha, 255 );
    setEffAlphaKey( spep_4 + 90, housha, 255 );
 
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
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff2 = entryEffectLife( spep_4 + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_4 + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_4 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_4 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_4 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_4 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_4 + 0, kaminari, 0 );
    setEffRotateKey( spep_4 + 90, kaminari, 0 );
    setEffAlphaKey( spep_4 + 0, kaminari, 255 );
    setEffAlphaKey( spep_4 + 90, kaminari, 255 );
 
    spname = entryEffectLife( spep_4 + 0, 3246, 90, 0x100, -1, 0, 0, -110 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_4 + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_4 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_4 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_4 + 0, haikei, 0 );
    setEffRotateKey( spep_4 + 90, haikei, 0 );
    setEffAlphaKey( spep_4 + 0, haikei, 255 );
    setEffAlphaKey( spep_4 + 90, haikei, 255 );
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff2 = entryEffectLife( spep_4 + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_4 + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_4 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_4 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_4 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_4 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_4 + 0, kaminari, 0 );
    setEffRotateKey( spep_4 + 90, kaminari, 0 );
    setEffAlphaKey( spep_4 + 0, kaminari, 255 );
    setEffAlphaKey( spep_4 + 90, kaminari, 255 );
 
    spname = entryEffectLife( spep_4 + 0, 3250, 90, 0x100, -1, 0, 0, -110 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_4 + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_4 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_4 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_4 + 0, haikei, 0 );
    setEffRotateKey( spep_4 + 90, haikei, 0 );
    setEffAlphaKey( spep_4 + 0, haikei, 255 );
    setEffAlphaKey( spep_4 + 90, haikei, 255 );
end


-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_4 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 一星龍の攻撃(176F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
oattack = entryEffectLife( spep_5 + 0, SP_09, 175, 0x100, -1, 0, 0, 0 );  --一星龍の攻撃  ef_005
setEffMoveKey( spep_5 + 0, oattack, 0, 0 , 0 );
setEffMoveKey( spep_5 + 175, oattack, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, oattack, 1.0, 1.0 );
setEffScaleKey( spep_5 + 175, oattack, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, oattack, 0 );
setEffRotateKey( spep_5 + 175, oattack, 0 );
setEffAlphaKey( spep_5 + 0, oattack, 255 );
setEffAlphaKey( spep_5 + 175 -1, oattack, 255 );
setEffAlphaKey( spep_5 + 175, oattack, 0 );

spep_x = spep_5 + 10;
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
SE034 = playSe( spep_5 + 10, 1018 );

--一星龍気弾溜め
SE035 = playSe( spep_5 + 86, 1191 );
stopSe( spep_5 + 140, SE035, 16 );

--一星龍気弾溜め
SE036 = playSe( spep_5 + 86, 1265 );
setSeVolumeByWorkId( spep_5 + 86, SE036, 89 );
stopSe( spep_5 + 140, SE036, 16 );
setPitch( spep_5 + 86, SE036, -600 );
setTimeStretch( SE036, 0.6, 10, 1 );

--一星龍気弾溜め
SE037 = playSe( spep_5 + 88, 1240 );
stopSe( spep_5 + 142, SE037, 14 );

--一星龍気弾溜め
SE038 = playSe( spep_5 + 88, 1199 );
setSeVolumeByWorkId( spep_5 + 88, SE038, 130 );
stopSe( spep_5 + 142, SE038, 14 );
setPitch( spep_5 + 88, SE038, -300 );
setTimeStretch( SE038, 0.8, 10, 1 );

--気弾発射
SE039 = playSe( spep_5 + 136, 1021 );

--気弾発射
SE040 = playSe( spep_5 + 136, 1027 );
setSeVolumeByWorkId( spep_5 + 136, SE040, 64 );

--気弾発射
SE041 = playSe( spep_5 + 136, 1145 );
setSeVolumeByWorkId( spep_5 + 136, SE041, 72 );

--気弾発射
SE042 = playSe( spep_5 + 136, 1114 );
setSeVolumeByWorkId( spep_5 + 136, SE042, 77 );

--気弾向かう
SE043 = playSe( spep_5 + 170, 1202,"",0.6 );
setSeVolumeByWorkId( spep_5 + 170, SE043, 141 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 175;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 166, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 166, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --フィニッシュ   ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 166, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 169, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

a7 = 30;
b7 = 10;
setMoveKey( spep_6 + 0, 1, 2603.3 +a7, -2417.3 +b7 , 0 );
setMoveKey( spep_6 + 1, 1, 2118.6 +a7, -1962 +b7 , 0 );
setMoveKey( spep_6 + 2, 1, 1633.8 +a7, -1506.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 1149.1 +a7, -1051.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 7, 1, 1149.1 +a7, -1051.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 664.3 +a7, -596.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 9, 1, 664.3 +a7, -596.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 179.6 +a7, -141.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 11, 1, 179.6 +a7, -141.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 180.4 +a7, -140.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 181.2 +a7, -140.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 182 +a7, -139.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 182.8 +a7, -139.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 183.6 +a7, -138.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 184.4 +a7, -138.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 185.2 +a7, -137.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 186 +a7, -137.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 186.8 +a7, -136.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 29, 1, 186.8 +a7, -136.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 187.6 +a7, -136.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 31, 1, 187.6 +a7, -136.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 268.4 +a7, -215.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 33, 1, 268.4 +a7, -215.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 242.5 +a7, -188.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 216.6 +a7, -161.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 190.8 +a7, -134.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 251.6 +a7, -153.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 192.4 +a7, -133.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 165.3 +a7, -104.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 194 +a7, -132.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 226.8 +a7, -147.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 195.6 +a7, -131.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 204.4 +a7, -106.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 197.2 +a7, -130 +b7 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 178 +a7, -149.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 198.8 +a7, -129 +b7 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 183.6 +a7, -96.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 200.4 +a7, -128 +b7 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 221.2 +a7, -143.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 202 +a7, -127 +b7 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 218.8 +a7, -98.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 203.6 +a7, -126 +b7 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 204.4 +a7, -149.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 205.2 +a7, -124.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 194 +a7, -132.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 206.8 +a7, -124 +b7 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 239.6 +a7, -107.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 208.4 +a7, -122.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 209.2 +a7, -150.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 210 +a7, -121.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 194.8 +a7, -93.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 211.6 +a7, -120.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 256.4 +a7, -132.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 213.3 +a7, -119.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 198 +a7, -107.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 214.8 +a7, -118.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 247.7 +a7, -134.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 216.4 +a7, -117.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 229.3 +a7, -89.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 218 +a7, -116.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 202.8 +a7, -140.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 219.7 +a7, -115.8 +b7, 0 );
setMoveKey( spep_6 -3 + 112, 1, 248.4 +a7, -83.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 221.3 +a7, -114.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 210.1 +a7, -142.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 222.8 +a7, -113.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 119, 1, 222.8 +a7, -113.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 169, 1, 222.8 +a7, -113.8 +b7 , 0 );

s7 = 0.25;
setScaleKey( spep_6 + 0, 1, 6.18 -s7, 6.18 -s7 );
setScaleKey( spep_6 + 1, 1, 5.22 -s7, 5.22 -s7 );
setScaleKey( spep_6 + 2, 1, 4.26 -s7, 4.26 -s7 );
setScaleKey( spep_6 -3 + 6, 1, 3.24 -s7, 3.24 -s7 );
setScaleKey( spep_6 -3 + 7, 1, 3.24 -s7, 3.24 -s7 );
setScaleKey( spep_6 -3 + 8, 1, 2.2800000000000002 -s7, 2.2800000000000002 -s7 );
setScaleKey( spep_6 -3 + 9, 1, 2.2800000000000002 -s7, 2.2800000000000002 -s7 );
setScaleKey( spep_6 -3 + 10, 1, 1.32 -s7, 1.32 -s7 );
--setScaleKey( spep_6 -3 + 24, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 26, 1, 1.26, 1.26 );
--setScaleKey( spep_6 -3 + 50, 1, 1.26, 1.26 );
--setScaleKey( spep_6 -3 + 52, 1, 1.2000000000000002, 1.2000000000000002 );
--setScaleKey( spep_6 -3 + 76, 1, 1.2000000000000002, 1.2000000000000002 );
--setScaleKey( spep_6 -3 + 78, 1, 1.1400000000000001, 1.1400000000000001 );
--setScaleKey( spep_6 -3 + 100, 1, 1.1400000000000001, 1.1400000000000001 );
--setScaleKey( spep_6 -3 + 102, 1, 1.08, 1.08 );
setScaleKey( spep_6 -3 + 119, 1, 1.08 -s7, 1.08 -s7 );
setScaleKey( spep_6 -3 + 169, 1, 1.08 -s7, 1.08 -s7 );

r2 = 10;
setRotateKey( spep_6 + 0, 1, -48.2 -r2 );
setRotateKey( spep_6 -3 + 169, 1, -48.2 -r2 );

-- ** 音 ** --
--爆発
SE044 = playSe( spep_6 + 26, 1023 );

--爆発
SE045 = playSe( spep_6 + 26, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 156 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 七星龍と二星龍の攻撃(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --七星龍と二星龍の攻撃   ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 96, 0x80, -1, 0, 0, 0 );  --七星龍と二星龍の攻撃    ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 96, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 96, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 118 );

a1 = 30;
b1 = 20;

setMoveKey( spep_0 + 0, 1, 276.9 +a1, -343.6 +b1 , 0 );
setMoveKey( spep_0 + 1, 1, 259.6 +a1, -322.4 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 242.3 +a1, -301.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 225.1 +a1, -279.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 225.1 +a1, -279.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 207.8 +a1, -258.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 207.8 +a1, -258.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 190.5 +a1, -237.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 173.2 +a1, -216.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 155.9 +a1, -194.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 138.6 +a1, -173.7 +b1 , 0 );

s0 = 0.1;
setScaleKey( spep_0 + 0, 1, 3.06 -s0, 3.06 -s0 );
setScaleKey( spep_0 + 1, 1, 2.82 -s0, 2.82 -s0 );
setScaleKey( spep_0 + 2, 1, 2.64 -s0, 2.64 -s0 );
setScaleKey( spep_0 -3 + 6, 1, 2.46 -s0, 2.46 -s0 );
setScaleKey( spep_0 -3 + 7, 1, 2.46 -s0, 2.46 -s0 );
setScaleKey( spep_0 -3 + 8, 1, 2.28 -s0, 2.28 -s0 );
setScaleKey( spep_0 -3 + 9, 1, 2.28 -s0, 2.28 -s0 );
setScaleKey( spep_0 -3 + 10, 1, 2.1 -s0, 2.1 -s0 );
setScaleKey( spep_0 -3 + 12, 1, 1.92 -s0, 1.92 -s0 );
setScaleKey( spep_0 -3 + 14, 1, 1.69 -s0, 1.69 -s0 );
setScaleKey( spep_0 -3 + 16, 1, 1.5 -s0, 1.5 -s0 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1072 );
setTimeStretch( SE001, 0.77, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 138.6 +a1, -173.7 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 138.4 +a1, -173.3 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 138 +a1, -172.9 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 137.7 +a1, -172.4 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 137.3 +a1, -172 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 137 +a1, -171.6 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.5 -s0, 1.5 -s0 );
    setScaleKey( SP_dodge + 10, 1, 1.49 -s0, 1.49 -s0 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 90, 1, 0 );
changeAnime( spep_0 -3 + 44, 1, 104 );
changeAnime( spep_0 -3 + 72, 1, 107 );
changeAnime( spep_0 -3 + 74, 1, 7 );

setBlendColor( spep_0 -3 + 80, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_0 -3 + 82, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 -3 + 84, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 -3 + 86, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_0 -3 + 88, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 89, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 90, 1, 3, 0, 0, 0, 0 );

a2 = 15;
b2 = 22;
setMoveKey( spep_0 -3 + 18, 1, 138.4 +a1, -173.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 138 +a1, -172.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 137.7 +a1, -172.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 137.3 +a1, -172 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 137 +a1, -171.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 136.7 +a1, -171.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 136.3 +a1, -170.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 136 +a1, -170.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 135.7 +a1, -170 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 135.3 +a1, -169.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 135 +a1, -169.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 134.6 +a1, -168.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 43, 1, 134.3 +a1, -168.3 +b1 , 0 );--
setMoveKey( spep_0 -3 + 44, 1, 89.6 +a2, -179.6 +b2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 89.4 +a2, -179.2 +b2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 89.1 +a2, -178.7 +b2 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 88.9 +a2, -178.3 +b2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 88.7 +a2, -177.8 +b2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 88.4 +a2, -177.4 +b2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 88.2 +a2, -176.9 +b2 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 88 +a2, -176.5 +b2 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 87.8 +a2, -176 +b2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 87.6 +a2, -175.6 +b2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 87.4 +a2, -175.1 +b2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 87.1 +a2, -174.7 +b2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 86.9 +a2, -174.2 +b2 , 0 );
setMoveKey( spep_0 -3 + 71, 1, 86.6 +a2, -173.8 +b2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 15.6 -10, -310.6  +20 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 19.5 +20, -239.3 +20 , 0 );
setMoveKey( spep_0 -3 + 76, 1, -12.4 +28, -173.6 +22 , 0 );
setMoveKey( spep_0 -3 + 78, 1, -12.4 +30, -230.5 +25 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 19.4 +35, -258.4 +30 , 0 );
setMoveKey( spep_0 -3 + 82, 1, -12.6 +40 , -205.1 +35 , 0 );
setMoveKey( spep_0 -3 + 84, 1, -16.6 +45, -194.7 +50 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 19.2 +60, -267.1 +55 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 18.9 +120, -286 +120 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 18.9 +120, -286 +120 , 0 );

s1 = 0;
s2 = 0.1;
--setScaleKey( spep_0 -3 + 40, 1, 1.5 -s1, 1.5 -s1 );
--setScaleKey( spep_0 -3 + 43, 1, 1.5 -s1, 1.5 -s1 );--
setScaleKey( spep_0 -3 + 44, 1, 1.44 -s0, 1.44 -s0 );
setScaleKey( spep_0 -3 + 69, 1, 1.38 -s0, 1.38 -s0 );
setScaleKey( spep_0 -3 + 70, 1, 1.38 -s1, 1.38 -s1 );
setScaleKey( spep_0 -3 + 71, 1, 1.38 -s1, 1.38 -s1 );
setScaleKey( spep_0 -3 + 72, 1, 0.5 +s2, 0.5 +s2 );
setScaleKey( spep_0 -3 + 74, 1, 0.595 +s2, 0.595 +s2 );
setScaleKey( spep_0 -3 + 76, 1, 0.84 +s2, 0.84 +s2 );
setScaleKey( spep_0 -3 + 78, 1, 0.875 +s2, 0.875 +s2 );
setScaleKey( spep_0 -3 + 80, 1, 1.015 +s2, 1.015 +s2 );
setScaleKey( spep_0 -3 + 82, 1, 1.26 +s2, 1.26 +s2 );
setScaleKey( spep_0 -3 + 84, 1, 1.61 +s2, 1.61 +s2 );
setScaleKey( spep_0 -3 + 86, 1, 2.03 +s2, 2.03 +s2 );
setScaleKey( spep_0 -3 + 88, 1, 3.815 +s2, 3.815 +s2 );
setScaleKey( spep_0 -3 + 90, 1, 3.815 +s2, 3.815 +s2 );

setRotateKey( spep_0 -3 + 71, 1, 0 );
setRotateKey( spep_0 -3 + 72, 1, 20 );
setRotateKey( spep_0 -3 + 73, 1, 20 );
setRotateKey( spep_0 -3 + 74, 1, -25.8 );
setRotateKey( spep_0 -3 + 90, 1, -25.8 );

-- ** 音 ** --
--振りかぶる
SE002 = playSe( spep_0 + 44, 1004 );

--二・七星龍殴る
SE003 = playSe( spep_0 + 68, 1011 );

--二・七星龍殴る
SE004 = playSe( spep_0 + 68, 1160 );
stopSe( spep_0 +88 + 6, SE004, 50 );

--四・六星龍気弾発生
SE005 = playSe( spep_0 + 96, 1273 );

--四・六星龍気弾発生
SE006 = playSe( spep_0 + 96, 1313 );
stopSe( spep_0 +96 + 34, SE006, 20 );
setPitch( spep_0 + 96, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 5 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 四星龍と六星龍の攻撃   (176F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
fsattack_f = entryEffectLife( spep_1 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  --四星龍と六星龍の攻撃   ef_002_front
setEffMoveKey( spep_1 + 0, fsattack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, fsattack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fsattack_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 176, fsattack_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fsattack_f, 0 );
setEffRotateKey( spep_1 + 176, fsattack_f, 0 );
setEffAlphaKey( spep_1 + 0, fsattack_f, 255 );
setEffAlphaKey( spep_1 + 176 -1, fsattack_f, 255 );
setEffAlphaKey( spep_1 + 176, fsattack_f, 0 );

fsattack_b = entryEffectLife( spep_1 + 0, SP_04, 176, 0x80, -1, 0, 0, 0 );  --四星龍と六星龍の攻撃    ef_002_back
setEffMoveKey( spep_1 + 0, fsattack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, fsattack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fsattack_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 176, fsattack_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fsattack_b, 0 );
setEffRotateKey( spep_1 + 176, fsattack_b, 0 );
setEffAlphaKey( spep_1 + 0, fsattack_b, 255 );
setEffAlphaKey( spep_1 + 176 -1, fsattack_b, 255 );
setEffAlphaKey( spep_1 + 176, fsattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 96, 1, 1 );
setDisp( spep_1 -3 + 160, 1, 0 );
changeAnime( spep_1 -3 + 96, 1, 5 );

b3 = 0;
setMoveKey( spep_1 -3 + 96, 1, -4.6, -559.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -6.5, -490.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -8.1, -430.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -9.4, -379.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -10.5, -337.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -11.3, -305.6 +b3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -11.8, -282.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -12.2, -268.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -12.2, -303 +b3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -12.2, -262.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 27.9, -221.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -12.1, -260.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -52, -268 +b3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -11.9, -259.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -11.9, -178.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -11.9, -257.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -11.8, -297 +b3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -11.7, -256.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 28.4, -255.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -11.6, -254.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -51.6, -214 +b3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -11.5, -253.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 16.6, -280.4 +b3 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -11.4, -251.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -51.3, -210.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -11.3, -250.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 28.8, -249.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -11.2, -248.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -51.1, -287.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -11, -247.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 29, -206.5 +b3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -10.9, -245.7 +b3 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -50.9, -284.9 +b3 , 0 );

setScaleKey( spep_1 -3 + 96, 1, 4.5, 4.5 );
setScaleKey( spep_1 -3 + 98, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 100, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 102, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 104, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 106, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 108, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 112, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 114, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 116, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 160, 1, 0.78, 0.78 );

setRotateKey( spep_1 -3 + 96, 1, 0 );
setRotateKey( spep_1 -3 + 160, 1, 0 );

-- ** 音 ** --
--気弾発射
SE007 = playSe( spep_1 + 26, 1178 );
stopSe( spep_1 + 50, SE007, 6 );

--気弾発射
SE008 = playSe( spep_1 + 26, 1043 );
setSeVolumeByWorkId( spep_1 + 26, SE008, 81 );
stopSe( spep_1 + 58, SE008, 20 );

--気弾発射
SE009 = playSe( spep_1 + 38, 1178 );
stopSe( spep_1 + 58, SE009, 8 );

--気弾発射
SE010 = playSe( spep_1 + 48, 1178 );
setSeVolumeByWorkId( spep_1 + 48, SE010, 94 );
stopSe( spep_1 + 68, SE010, 10 );

--気弾発射
SE011 = playSe( spep_1 + 50, 1043 );
setSeVolumeByWorkId( spep_1 + 50, SE011, 75 );
stopSe( spep_1 + 82, SE011, 16 );

--気弾発射
SE012 = playSe( spep_1 + 58, 1178 );
setSeVolumeByWorkId( spep_1 + 58, SE012, 95 );
stopSe( spep_1 + 78, SE012, 8 );

--気弾発射
SE013 = playSe( spep_1 + 70, 1178 );
stopSe( spep_1 + 90, SE013, 6 );

--気弾発射
SE014 = playSe( spep_1 + 84, 1178 );

--気弾着弾
SE015 = playSe( spep_1 + 94, 1011 );

--気弾着弾
SE016 = playSe( spep_1 + 106, 1017 );

--気弾着弾
SE017 = playSe( spep_1 + 116, 1023 );

--気弾着弾
SE018 = playSe( spep_1 + 132, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;


------------------------------------------------------
-- 五星龍の攻撃(146F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
faattack_f = entryEffectLife( spep_2 + 0, SP_05r, 145, 0x100, -1, 0, 0, 0 );  --五星龍の攻撃  ef_003_front
setEffMoveKey( spep_2 + 0, faattack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 145, faattack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, faattack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 145, faattack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, faattack_f, 0 );
setEffRotateKey( spep_2 + 145, faattack_f, 0 );
setEffAlphaKey( spep_2 + 0, faattack_f, 255 );
setEffAlphaKey( spep_2 + 145 -1, faattack_f, 255 );
setEffAlphaKey( spep_2 + 145, faattack_f, 0 );

faattack_b = entryEffectLife( spep_2 + 0, SP_06r, 145, 0x80, -1, 0, 0, 0 );  --五星龍の攻撃   ef_003_back
setEffMoveKey( spep_2 + 0, faattack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 145, faattack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, faattack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 145, faattack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, faattack_b, 0 );
setEffRotateKey( spep_2 + 145, faattack_b, 0 );
setEffAlphaKey( spep_2 + 0, faattack_b, 255 );
setEffAlphaKey( spep_2 + 145 -1, faattack_b, 255 );
setEffAlphaKey( spep_2 + 145, faattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 56, 1, 1 );
setDisp( spep_2 -3 + 148, 1, 0 );
changeAnime( spep_2 -3 + 56, 1, 106 );
changeAnime( spep_2 -3 + 74, 1, 108 );

a4 = 0;
b4 = 90;

a5 = 100;
b5 = 50;
setMoveKey( spep_2 -3 + 56, 1, 1228.3 +a4, -497.6 +b4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 982.6 +a4, -419.5 +b4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 764 +a4, -341.4 +b4 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 572.3 +a4, -263.2 +b4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 407.6 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 340.1 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 272.6 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 205.1 +a4, -185.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 161.6 +a4, -197.1 +b4 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 161.6 +a4, -197.1 +b4 , 0 );--
setMoveKey( spep_2 -3 + 74, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 58.8 +a5, -122.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 54.8 +a5, -148.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 56.8 +a5, -158.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 32.8 +a5, -146.3 +b5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 35 +a5, -147.9 +b5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 32.8 +a5, -146.3 +b5 , 0 );
--setMoveKey( spep_2 -3 + 149, 1, 32.8 +a5, -146.3 +b5 , 0 );

setScaleKey( spep_2 -3 + 56, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 58, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 60, 1, 2.58, 2.58 );
setScaleKey( spep_2 -3 + 62, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 64, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 73, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 74, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 100, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 102, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 104, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 106, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 108, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 110, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 112, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 114, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 116, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 118, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 120, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 122, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 124, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 126, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 128, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 130, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 132, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 134, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 136, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 138, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 140, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 142, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 144, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 146, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 148, 1, 1.86, 1.86 );
--setScaleKey( spep_2 -3 + 149, 1, 1.86, 1.86 );

setRotateKey( spep_2 -3 + 56, 1, -21.4 );
setRotateKey( spep_2 -3 + 73, 1, -21.4 );--
setRotateKey( spep_2 -3 + 74, 1, -1.7 );
setRotateKey( spep_2 -3 + 148, 1, -1.7 );

-- ** 音 ** --
--スライム発射
SE019 = playSe( spep_2 + 54, 1242 );
setSeVolumeByWorkId( spep_2 + 54, SE019, 0 );
setSeVolumeByWorkId( spep_2 + 56, SE019, 20 );
setSeVolumeByWorkId( spep_2 + 58, SE019, 40 );
setSeVolumeByWorkId( spep_2 + 60, SE019, 60 );
setSeVolumeByWorkId( spep_2 + 62, SE019, 80 );
setSeVolumeByWorkId( spep_2 + 64, SE019, 100 );
setSeVolumeByWorkId( spep_2 + 66, SE019, 120 );
setSeVolumeByWorkId( spep_2 + 68, SE019, 140 );
setSeVolumeByWorkId( spep_2 + 70, SE019, 160 );
setSeVolumeByWorkId( spep_2 + 72, SE019, 180 );
setSeVolumeByWorkId( spep_2 + 74, SE019, 190 );
setSeVolumeByWorkId( spep_2 + 76, SE019, 202 );
stopSe( spep_2 + 988, SE019, 12 );
setStartTimeMs( SE019,  1000 );

--五星龍腕あげる
SE020 = playSe( spep_2 + 24, 1003 );

--スライム発射
SE021 = playSe( spep_2 + 48, 1241 );
setSeVolumeByWorkId( spep_2 + 48, SE021, 197 );
stopSe( spep_2 + 74, SE021, 20 );

--スライム発射
SE022 = playSe( spep_2 +48, 1119 );
setSeVolumeByWorkId( spep_2 + 48, SE022, 27 );
stopSe( spep_2 + 76, SE022, 22 );

--スライム着弾
SE023 = playSe( spep_2 + 68, 1113 );
setSeVolumeByWorkId( spep_2 + 68, SE023, 158 );
setPitch( spep_2 + 68, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );

--スライム着弾
SE024 = playSe( spep_2 + 84, 1113 );
setSeVolumeByWorkId( spep_2 + 84, SE024, 158 );
setPitch( spep_2 + 84, SE024, -400 );
setTimeStretch( SE024, 0.73, 10, 1 );

--ビーム着弾
SE025 = playSe( spep_2 + 96, 1231 );
setSeVolumeByWorkId( spep_2 + 96, SE025, 158 );

--ビーム着弾
SE026 = playSe( spep_2 + 100, 1249 );
setSeVolumeByWorkId( spep_2 + 100, SE026, 100 );
setSeVolumeByWorkId( spep_2 + 146, SE026, 100 );
setSeVolumeByWorkId( spep_2 + 150, SE026, 87 );
setSeVolumeByWorkId( spep_2 + 154, SE026, 74 );
setSeVolumeByWorkId( spep_2 + 158, SE026, 61 );
setSeVolumeByWorkId( spep_2 + 162, SE026, 48 );
setSeVolumeByWorkId( spep_2 + 166, SE026, 37 );
stopSe( spep_2 +146 + 118, SE026, 18 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 145;


------------------------------------------------------
-- 三星龍の攻撃(166F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tattack_f = entryEffectLife( spep_3 + 0, SP_07r, 165, 0x100, -1, 0, 0, 0 );  --三星龍の攻撃   ef_004_front
setEffMoveKey( spep_3 + 0, tattack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 165, tattack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tattack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 165, tattack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tattack_f, 0 );
setEffRotateKey( spep_3 + 165, tattack_f, 0 );
setEffAlphaKey( spep_3 + 0, tattack_f, 255 );
setEffAlphaKey( spep_3 + 165 -1, tattack_f, 255 );
setEffAlphaKey( spep_3 + 165, tattack_f, 0 );

tattack_b = entryEffectLife( spep_3 + 0, SP_08r, 165, 0x80, -1, 0, 0, 0 );  --三星龍の攻撃    ef_004_back
setEffMoveKey( spep_3 + 0, tattack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 165, tattack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tattack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 165, tattack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tattack_b, 0 );
setEffRotateKey( spep_3 + 165, tattack_b, 0 );
setEffAlphaKey( spep_3 + 0, tattack_b, 255 );
setEffAlphaKey( spep_3 + 165 -1, tattack_b, 255 );
setEffAlphaKey( spep_3 + 165, tattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 90, 1, 1 );
setDisp( spep_3 -3 + 168, 1, 0 );
changeAnime( spep_3 -3 + 56, 1, 106 );

a6 =  32;
b6 = 10;
setMoveKey( spep_3 -3 + 90, 1, 77.7 +a6, -185.2 +b6 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 77.7 +a6, -185.2 +b6 , 0 );

s6 = 0.4;
setScaleKey( spep_3 -3 + 90, 1, 1.8 -s6, 1.8 -s6 );
setScaleKey( spep_3 -3 + 168, 1, 1.8 -s6, 1.8 -s6 );

r1 = 10;
setRotateKey( spep_3 -3 + 90, 1, -48.2 -r1 );
setRotateKey( spep_3 -3 + 168, 1, -48.2 -r1 );

-- ** 音 ** --
--三星龍目からビーム
SE027 = playSe( spep_3 + 54, 1296 );
setSeVolumeByWorkId( spep_3 + 54, SE027, 0 );
setSeVolumeByWorkId( spep_3 + 56, SE027, 18 );
setSeVolumeByWorkId( spep_3 + 58, SE027, 36 );
setSeVolumeByWorkId( spep_3 + 60, SE027, 54 );
setSeVolumeByWorkId( spep_3 + 62, SE027, 72 );
setSeVolumeByWorkId( spep_3 + 64, SE027, 89 );
stopSe( spep_3 + 118, SE027, 26 );
setStartTimeMs( SE027,  733 );
setPitch( spep_3 + 54, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );

--三星龍目からビーム
SE028 = playSe( spep_3 + 32, 1177 );
setSeVolumeByWorkId( spep_3 + 32, SE028, 75 );
stopSe( spep_3 + 66, SE028, 68 );

--三星龍目からビーム
SE029 = playSe( spep_3 + 32, 1256 );
setPitch( spep_3 + 32, SE029, -300 );
setTimeStretch( SE029, 0.8, 10, 1 );

--氷づけ
SE030 = playSe( spep_3 + 114, 1041 );
setSeVolumeByWorkId( spep_3 + 114, SE030, 81 );

--氷づけ
SE031 = playSe( spep_3 + 114, 1250 );
setSeVolumeByWorkId( spep_3 + 114, SE031, 158 );
stopSe( spep_3 + 144, SE031, 12 );

--氷づけ
SE032 = playSe( spep_3 + 114, 1046 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 165 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 165;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_4 + 0, speff2, -1.0, 1.0); -- 敵側のみ 
setEffScaleKey( spep_4 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_4 + 0, 1512, 90, 0x100, -1, 0, 0, -110 );
setEffScaleKey( spep_4 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_4 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_4 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_4 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, housha, 0 );
setEffRotateKey( spep_4 + 90, housha, 0 );
setEffAlphaKey( spep_4 + 0, housha, 255 );
setEffAlphaKey( spep_4 + 90, housha, 255 );
 
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_4 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 一星龍の攻撃(176F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
oattack = entryEffectLife( spep_5 + 0, SP_09r, 175, 0x100, -1, 0, 0, 0 );  --一星龍の攻撃 ef_005
setEffMoveKey( spep_5 + 0, oattack, 0, 0 , 0 );
setEffMoveKey( spep_5 + 175, oattack, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, oattack, 1.0, 1.0 );
setEffScaleKey( spep_5 + 175, oattack, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, oattack, 0 );
setEffRotateKey( spep_5 + 175, oattack, 0 );
setEffAlphaKey( spep_5 + 0, oattack, 255 );
setEffAlphaKey( spep_5 + 175 -1, oattack, 255 );
setEffAlphaKey( spep_5 + 175, oattack, 0 );

spep_x = spep_5 + 10;
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
--SE034 = playSe( spep_5 + 10, 1018 );

--一星龍気弾溜め
SE035 = playSe( spep_5 + 86, 1191 );
stopSe( spep_5 + 140, SE035, 16 );

--一星龍気弾溜め
SE036 = playSe( spep_5 + 86, 1265 );
setSeVolumeByWorkId( spep_5 + 86, SE036, 89 );
stopSe( spep_5 + 140, SE036, 16 );
setPitch( spep_5 + 86, SE036, -600 );
setTimeStretch( SE036, 0.6, 10, 1 );

--一星龍気弾溜め
SE037 = playSe( spep_5 + 88, 1240 );
stopSe( spep_5 + 142, SE037, 14 );

--一星龍気弾溜め
SE038 = playSe( spep_5 + 88, 1199 );
setSeVolumeByWorkId( spep_5 + 88, SE038, 130 );
stopSe( spep_5 + 142, SE038, 14 );
setPitch( spep_5 + 88, SE038, -300 );
setTimeStretch( SE038, 0.8, 10, 1 );

--気弾発射
SE039 = playSe( spep_5 + 136, 1021 );

--気弾発射
SE040 = playSe( spep_5 + 136, 1027 );
setSeVolumeByWorkId( spep_5 + 136, SE040, 64 );

--気弾発射
SE041 = playSe( spep_5 + 136, 1145 );
setSeVolumeByWorkId( spep_5 + 136, SE041, 72 );

--気弾発射
SE042 = playSe( spep_5 + 136, 1114 );
setSeVolumeByWorkId( spep_5 + 136, SE042, 77 );

--気弾向かう
SE043 = playSe( spep_5 + 170, 1202,"",0.6 );
setSeVolumeByWorkId( spep_5 + 170, SE043, 141 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 175;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 166, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 166, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --フィニッシュ   ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 166, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 169, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

a7 = 30;
b7 = 10;
setMoveKey( spep_6 + 0, 1, 2603.3 +a7, -2417.3 +b7 , 0 );
setMoveKey( spep_6 + 1, 1, 2118.6 +a7, -1962 +b7 , 0 );
setMoveKey( spep_6 + 2, 1, 1633.8 +a7, -1506.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 1149.1 +a7, -1051.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 7, 1, 1149.1 +a7, -1051.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 664.3 +a7, -596.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 9, 1, 664.3 +a7, -596.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 179.6 +a7, -141.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 11, 1, 179.6 +a7, -141.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 180.4 +a7, -140.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 181.2 +a7, -140.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 182 +a7, -139.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 182.8 +a7, -139.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 183.6 +a7, -138.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 184.4 +a7, -138.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 185.2 +a7, -137.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 186 +a7, -137.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 186.8 +a7, -136.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 29, 1, 186.8 +a7, -136.7 +b7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 187.6 +a7, -136.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 31, 1, 187.6 +a7, -136.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 268.4 +a7, -215.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 33, 1, 268.4 +a7, -215.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 242.5 +a7, -188.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 216.6 +a7, -161.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 190.8 +a7, -134.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 251.6 +a7, -153.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 192.4 +a7, -133.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 165.3 +a7, -104.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 194 +a7, -132.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 226.8 +a7, -147.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 195.6 +a7, -131.1 +b7 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 204.4 +a7, -106.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 197.2 +a7, -130 +b7 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 178 +a7, -149.6 +b7 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 198.8 +a7, -129 +b7 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 183.6 +a7, -96.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 200.4 +a7, -128 +b7 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 221.2 +a7, -143.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 202 +a7, -127 +b7 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 218.8 +a7, -98.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 203.6 +a7, -126 +b7 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 204.4 +a7, -149.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 205.2 +a7, -124.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 194 +a7, -132.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 206.8 +a7, -124 +b7 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 239.6 +a7, -107.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 208.4 +a7, -122.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 209.2 +a7, -150.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 210 +a7, -121.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 194.8 +a7, -93.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 211.6 +a7, -120.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 256.4 +a7, -132.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 213.3 +a7, -119.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 198 +a7, -107.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 214.8 +a7, -118.9 +b7 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 247.7 +a7, -134.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 216.4 +a7, -117.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 229.3 +a7, -89.4 +b7 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 218 +a7, -116.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 202.8 +a7, -140.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 219.7 +a7, -115.8 +b7, 0 );
setMoveKey( spep_6 -3 + 112, 1, 248.4 +a7, -83.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 221.3 +a7, -114.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 210.1 +a7, -142.3 +b7 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 222.8 +a7, -113.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 119, 1, 222.8 +a7, -113.8 +b7 , 0 );
setMoveKey( spep_6 -3 + 169, 1, 222.8 +a7, -113.8 +b7 , 0 );

s7 = 0.25;
setScaleKey( spep_6 + 0, 1, 6.18 -s7, 6.18 -s7 );
setScaleKey( spep_6 + 1, 1, 5.22 -s7, 5.22 -s7 );
setScaleKey( spep_6 + 2, 1, 4.26 -s7, 4.26 -s7 );
setScaleKey( spep_6 -3 + 6, 1, 3.24 -s7, 3.24 -s7 );
setScaleKey( spep_6 -3 + 7, 1, 3.24 -s7, 3.24 -s7 );
setScaleKey( spep_6 -3 + 8, 1, 2.2800000000000002 -s7, 2.2800000000000002 -s7 );
setScaleKey( spep_6 -3 + 9, 1, 2.2800000000000002 -s7, 2.2800000000000002 -s7 );
setScaleKey( spep_6 -3 + 10, 1, 1.32 -s7, 1.32 -s7 );
--setScaleKey( spep_6 -3 + 24, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 26, 1, 1.26, 1.26 );
--setScaleKey( spep_6 -3 + 50, 1, 1.26, 1.26 );
--setScaleKey( spep_6 -3 + 52, 1, 1.2000000000000002, 1.2000000000000002 );
--setScaleKey( spep_6 -3 + 76, 1, 1.2000000000000002, 1.2000000000000002 );
--setScaleKey( spep_6 -3 + 78, 1, 1.1400000000000001, 1.1400000000000001 );
--setScaleKey( spep_6 -3 + 100, 1, 1.1400000000000001, 1.1400000000000001 );
--setScaleKey( spep_6 -3 + 102, 1, 1.08, 1.08 );
setScaleKey( spep_6 -3 + 119, 1, 1.08 -s7, 1.08 -s7 );
setScaleKey( spep_6 -3 + 169, 1, 1.08 -s7, 1.08 -s7 );

r2 = 10;
setRotateKey( spep_6 + 0, 1, -48.2 -r2 );
setRotateKey( spep_6 -3 + 169, 1, -48.2 -r2 );

-- ** 音 ** --
--爆発
SE044 = playSe( spep_6 + 26, 1023 );

--爆発
SE045 = playSe( spep_6 + 26, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 156 );

end