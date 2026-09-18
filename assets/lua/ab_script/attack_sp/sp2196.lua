--1022060:スーパーガーリックJr._デスインパクト_sp2196
--sp_effect_a2_00162

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
SP_01 = 157414;	--開幕	ef_001
SP_02 = 157415;	--叩き落とし_敵より手前	ef_002_front
SP_03 = 157416;	--叩き落とし_敵より奥	ef_002_back
SP_04 = 157417;	--叩き落とし遠景	ef_003
SP_05 = 157418;	--追撃_敵より手前	ef_004_front
SP_06 = 157419;	--追撃_敵より奥	ef_004_back
SP_07 = 157420;	--墜落_敵より手前	ef_005_front
SP_08 = 157421;	--墜落_敵より奥	ef_005_back
SP_09 = 157422;	--気ダメ、顔、セリフカットイン	ef_006
SP_10 = 157423;	--正面パンチ	ef_007
SP_11 = 157424;	--吹き飛び_敵より手前	ef_008_front
SP_12 = 157425;	--吹き飛び_敵より奥	ef_008_back
SP_13 = 157426;	--フィニッシュ_敵より手前	ef_009_front
SP_14 = 157427;	--フィニッシュ_敵より奥	ef_009_back

SP_02r = 157433;  --叩き落とし_敵より手前_敵側  ef_002_front_r
SP_03r = 157434;  --叩き落とし_敵より奥_敵側   ef_002_back_r
SP_04r = 157435;  --叩き落とし遠景_敵側  ef_003_r
SP_05r = 157436;  --追撃_敵より手前_敵側 ef_004_front_r
SP_06r = 157437;  --追撃_敵より奥_敵側  ef_004_back_r

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 56, 0x80, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
--setDisp( spep_0 -3 + 59, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 205, 358.1 , 0 );
setMoveKey( spep_0 + 1, 1, 205.7, 359.2 , 0 );
setMoveKey( spep_0 + 2, 1, 206.3, 360.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 206.9, 361.4 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 206.9, 361.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 207.6, 362.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 207.6, 362.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 208.2, 363.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 208.9, 364.8 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 209.5, 365.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 210.1, 367 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 210.8, 368.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 211.4, 369.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 212, 370.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 212.7, 371.4 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 213.3, 372.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 214, 373.7 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 214.6, 374.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 215.2, 375.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 215.9, 377 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 216.5, 378.1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 217.1, 379.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 217.8, 380.4 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 218.4, 381.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 219.1, 382.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 219.7, 383.7 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 220.3, 384.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 221, 385.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 221.6, 387 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 222.2, 388.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 222.9, 389.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 223.5, 390.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 2, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 3, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 4, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 5, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 6, 1, 0.26, 0.26 );
--setScaleKey( spep_0 -3 + 26, 1, 0.32, 0.32 );
--setScaleKey( spep_0 -3 + 28, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 58, 1, 0.28, 0.28 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 58, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1297,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- 叩き落とし(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
knock_f = entryEffectLife( spep_1 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --叩き落とし_敵より手前	ef_002_front
setEffMoveKey( spep_1 + 0, knock_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, knock_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, knock_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, knock_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, knock_f, 0 );
setEffRotateKey( spep_1 + 116, knock_f, 0 );
setEffAlphaKey( spep_1 + 0, knock_f, 255 );
setEffAlphaKey( spep_1 + 116 -1, knock_f, 255 );
setEffAlphaKey( spep_1 + 116, knock_f, 0 );

knock_b = entryEffectLife( spep_1 + 0, SP_03, 116, 0x80, -1, 0, 0, 0 );  --叩き落とし_敵より奥	ef_002_back
setEffMoveKey( spep_1 + 0, knock_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, knock_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, knock_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, knock_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, knock_b, 0 );
setEffRotateKey( spep_1 + 116, knock_b, 0 );
setEffAlphaKey( spep_1 + 0, knock_b, 255 );
setEffAlphaKey( spep_1 + 116 -1, knock_b, 255 );
setEffAlphaKey( spep_1 + 116, knock_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

a1 = 15;
b1 = 20;

setMoveKey( spep_1 + 0, 1, 0 +a1, 0 +b1 , 0 );

s1 = 0.6;
setScaleKey( spep_1 + 0, 1, 1.44 +s1, 1.44 +s1 );
setScaleKey( spep_1 + 1, 1, 1.41 +s1, 1.41 +s1 );
setScaleKey( spep_1 + 2, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_1 -3 + 6, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_1 -3 + 10, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_1 -3 + 12, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_1 -3 + 14, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_1 -3 + 16, 1, 1.23 +s1, 1.23 +s1 );
--setScaleKey( spep_1 -3 + 30, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 32, 1, 1.2 +s1, 1.2 +s1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE002 = playSe( spep_1 + 32, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 0 +a1, 0 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.2 +s1, 1.2 +s1 );

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
--setDisp( spep_1 -3 + 119, 1, 0 );
changeAnime( spep_1 -3 + 80, 1, 8 );

a2 = 23;
b2 = 50;
setMoveKey( spep_1 -3 + 79, 1, 0 +a1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -9.3 -a2, -36.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -21.5 -a2, -21.3 -b2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -45.2 -a2, -42.1 -b2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -33.1 -a2, -49.2 -b2 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -59.4 -a2, -61.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -75.3 -a2, -93.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -90.6 -a2, -104.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -105.6 -a2, -125.2 -b2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -123.3 -a2, -149.1 -b2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -140.7 -a2, -172.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -157.9 -a2, -195.8 -b2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -174.8 -a2, -218.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -194.6 -a2, -247.2 -b2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -214.4 -a2, -275.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -234 -a2, -304.1 -b2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -253.6 -a2, -332.4 -b2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -273 -a2, -360.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -292.4 -a2, -388.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -311.7 -a2, -416.4 -b2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -330.8 -a2, -444 -b2 , 0 );

s2 = 0.9;
setScaleKey( spep_1 -3 + 79, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_1 -3 + 80, 1, 1.14 +s2, 1.14 +s2 );
setScaleKey( spep_1 -3 + 82, 1, 1.095 +s2, 1.095 +s2 );
setScaleKey( spep_1 -3 + 84, 1, 1.065 +s2, 1.065 +s2 );
setScaleKey( spep_1 -3 + 86, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_1 -3 + 88, 1, 1.005 +s2, 1.005 +s2 );
setScaleKey( spep_1 -3 + 90, 1, 0.975 +s2, 0.975 +s2 );
setScaleKey( spep_1 -3 + 92, 1, 0.945 +s2, 0.945 +s2 );
setScaleKey( spep_1 -3 + 94, 1, 0.915 +s2, 0.915 +s2 );
setScaleKey( spep_1 -3 + 96, 1, 0.9 +s2, 0.9 +s2 );
setScaleKey( spep_1 -3 + 98, 1, 0.885 +s2, 0.885 +s2 );
setScaleKey( spep_1 -3 + 100, 1, 0.855 +s2, 0.855 +s2 );
setScaleKey( spep_1 -3 + 102, 1, 0.84 +s2, 0.84 +s2 );
setScaleKey( spep_1 -3 + 104, 1, 0.825 +s2, 0.825 +s2 );
setScaleKey( spep_1 -3 + 106, 1, 0.81 +s2, 0.81 +s2 );
setScaleKey( spep_1 -3 + 108, 1, 0.78 +s2, 0.78 +s2 );
setScaleKey( spep_1 -3 + 110, 1, 0.765 +s2, 0.765 +s2 );
setScaleKey( spep_1 -3 + 112, 1, 0.75 +s2, 0.75 +s2 );
setScaleKey( spep_1 -3 + 114, 1, 0.735 +s2, 0.735 +s2 );
setScaleKey( spep_1 -3 + 116, 1, 0.72 +s2, 0.72 +s2 );
setScaleKey( spep_1 -3 + 118, 1, 0.705 +s2, 0.705 +s2 );

setRotateKey( spep_1 -3 + 79, 1, 0 );
setRotateKey( spep_1 -3 + 80, 1, -82.7 );
setRotateKey( spep_1 -3 + 82, 1, -81.6 );
setRotateKey( spep_1 -3 + 84, 1, -80.4 );
setRotateKey( spep_1 -3 + 86, 1, -79.2 );
setRotateKey( spep_1 -3 + 88, 1, -78 );
setRotateKey( spep_1 -3 + 90, 1, -76.8 );
setRotateKey( spep_1 -3 + 92, 1, -75.6 );
setRotateKey( spep_1 -3 + 94, 1, -74.5 );
setRotateKey( spep_1 -3 + 96, 1, -73.3 );
setRotateKey( spep_1 -3 + 98, 1, -72.1 );
setRotateKey( spep_1 -3 + 100, 1, -70.9 );
setRotateKey( spep_1 -3 + 102, 1, -69.7 );
setRotateKey( spep_1 -3 + 104, 1, -68.6 );
setRotateKey( spep_1 -3 + 106, 1, -67.4 );
setRotateKey( spep_1 -3 + 108, 1, -66.2 );
setRotateKey( spep_1 -3 + 110, 1, -65 );
setRotateKey( spep_1 -3 + 112, 1, -63.8 );
setRotateKey( spep_1 -3 + 114, 1, -62.7 );
setRotateKey( spep_1 -3 + 116, 1, -61.5 );
setRotateKey( spep_1 -3 + 118, 1, -60.3 );

-- ** 音 ** --
--叩きつけ
SE003 = playSe( spep_1 + 70, 1003 );

--叩きつけ
SE004 = playSe( spep_1 + 76, 1187 );

--叩きつけ
SE005 = playSe( spep_1 + 76, 1010 );

--敵落ちていく
SE006 = playSe( spep_1 + 86, 1183 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


------------------------------------------------------
-- 叩き落とし遠景(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_2 + 0, SP_04, 56, 0x80, -1, 0, 0, 0 );  --叩き落とし遠景	ef_003
setEffMoveKey( spep_2 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, move, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, move, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move, 0 );
setEffRotateKey( spep_2 + 56, move, 0 );
setEffAlphaKey( spep_2 + 0, move, 255 );
setEffAlphaKey( spep_2 + 56 -1, move, 255 );
setEffAlphaKey( spep_2 + 56, move, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 -3 + 59, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 0, 1, 17.1, 66.9 , 0 );
setMoveKey( spep_2 + 1, 1, 10.8, 52.8 , 0 );
setMoveKey( spep_2 + 2, 1, 4.5, 38.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -1.8, 24.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -8.1, 10.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -14.3, -3.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -20.6, -17.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -26.9, -31.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -33.2, -45.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -39.5, -59.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -45.7, -73.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -52, -87.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -58.3, -101.9 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -64.6, -116 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -70.9, -130 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -77.2, -144.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -83.5, -158.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -89.7, -172.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -96, -186.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -102.3, -200.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -108.6, -214.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -114.8, -228.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -121.1, -242.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -127.4, -256.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -133.7, -270.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -140, -284.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -146.3, -298.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -152.6, -313 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -158.9, -327 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -165.1, -341.1 , 0 );

s3 = 0.02;
setScaleKey( spep_2 + 0, 1, 0.435 +s3, 0.435 +s3 );--0.435
setScaleKey( spep_2 -3 + 58, 1, 0.435 +s3, 0.435 +s3 );--0.435

setRotateKey( spep_2 + 0, 1, -25.3 );
setRotateKey( spep_2 + 1, 1, -25.5 );
setRotateKey( spep_2 -3 + 58, 1, -25.5 );

-- ** 音 ** --
--ダッシュで追いつく
SE007 = playSe( spep_2 + 50, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56


------------------------------------------------------
-- 追撃(80F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
pursuit_f = entryEffectLife( spep_3 + 0, SP_05, 80, 0x100, -1, 0, 0, 0 );  --追撃_敵より手前	ef_004_front
setEffMoveKey( spep_3 + 0, pursuit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, pursuit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pursuit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, pursuit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_f, 0 );
setEffRotateKey( spep_3 + 80, pursuit_f, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_3 + 80 -1, pursuit_f, 255 );
setEffAlphaKey( spep_3 + 80, pursuit_f, 0 );

pursuit_b = entryEffectLife( spep_3 + 0, SP_06, 80, 0x80, -1, 0, 0, 0 );  --追撃_敵より奥	ef_004_back
setEffMoveKey( spep_3 + 0, pursuit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, pursuit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_b, 0 );
setEffRotateKey( spep_3 + 80, pursuit_b, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_3 + 80 -1, pursuit_b, 255 );
setEffAlphaKey( spep_3 + 80, pursuit_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 -3 + 83, 1, 0 );
changeAnime( spep_3 + 0, 1, 6 );
changeAnime( spep_3 -3 + 44, 1, 8 );

a3 = 55;
b3 = 58;
setMoveKey( spep_3 + 0, 1, -440 -a3, -743.7 +b3 , 0 );
setMoveKey( spep_3 + 1, 1, -425.6 -a3, -719.4 +b3 , 0 );
setMoveKey( spep_3 + 2, 1, -411.2 -a3, -695.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -396.8 -a3, -670.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -382.4 -a3, -646.4 +b3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -368 -a3, -622 +b3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -353.6 -a3, -597.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -339.2 -a3, -573.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -324.8 -a3, -549 +b3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -310.4 -a3, -524.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -296 -a3, -500.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -281.6 -a3, -476 +b3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -267.2 -a3, -451.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -252.8 -a3, -427.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -238.4 -a3, -403 +b3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -224 -a3, -378.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -209.6 -a3, -354.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -195.2 -a3, -330 +b3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -180.8 -a3, -305.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -166.4 -a3, -281.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -152 -a3, -256.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 43, 1, -137.6 -a3, -232.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 18.2 -255, -249.1 -150 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 79 -430, -275 -250 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 28.8 -290, -258.4 -170 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -21.5 -200, -238.3 -100 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 23.5 -255, -265.7 -190 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 68.3 -355, -295 -220 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 32.1 -255, -272.1 -170 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -4.1 -125, -246.3 -85 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 14 -200, -262 -135 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 32.1 -275, -278.6 -180 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -2.9 -180, -257.4 -130 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -37.9 -105, -235 -78 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -54.7 -100, -228.3 -68 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -71.6 -95, -221.2 -58 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.4 -110, -257.4 -78 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 72.6 -140, -293.8 -90 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 0.4 -110, -258.2 -78 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -71.6 -90, -222.5 -68 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 0.4 -110, -258.8 -78 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 72.6 -130, -295.2 -100 , 0 );
--setMoveKey( spep_3 -3 + 83, 1, 72.6 -130, -295.2 -100 , 0 );

s4 = 0.8;
setScaleKey( spep_3 + 0, 1, 6.675 + s4, 6.675 + s4 );
setScaleKey( spep_3 + 1, 1, 6.465 + s4, 6.465 + s4 );
setScaleKey( spep_3 + 2, 1, 6.24 + s4, 6.24 + s4 );
setScaleKey( spep_3 -3 + 6, 1, 6.015 + s4, 6.015 + s4 );
setScaleKey( spep_3 -3 + 8, 1, 5.775 + s4, 5.775 + s4 );
setScaleKey( spep_3 -3 + 10, 1, 5.55 + s4, 5.55 + s4 );
setScaleKey( spep_3 -3 + 12, 1, 5.325 + s4, 5.325 + s4 );
setScaleKey( spep_3 -3 + 14, 1, 5.1 + s4, 5.1 + s4 );
setScaleKey( spep_3 -3 + 16, 1, 4.875 + s4, 4.875 + s4 );
setScaleKey( spep_3 -3 + 18, 1, 4.65 + s4, 4.65 + s4 );
setScaleKey( spep_3 -3 + 20, 1, 4.425 + s4, 4.425 + s4 );
setScaleKey( spep_3 -3 + 22, 1, 4.2 + s4, 4.2 + s4 );
setScaleKey( spep_3 -3 + 24, 1, 3.975 + s4, 3.975 + s4 );
setScaleKey( spep_3 -3 + 26, 1, 3.75 + s4, 3.75 + s4 );
setScaleKey( spep_3 -3 + 28, 1, 3.525 + s4, 3.525 + s4 );
setScaleKey( spep_3 -3 + 30, 1, 3.285 + s4, 3.285 + s4 );
setScaleKey( spep_3 -3 + 32, 1, 3.06 + s4, 3.06 + s4 );
setScaleKey( spep_3 -3 + 34, 1, 2.835 + s4, 2.835 + s4 );
setScaleKey( spep_3 -3 + 36, 1, 2.61 + s4, 2.61 + s4 );
setScaleKey( spep_3 -3 + 38, 1, 2.385 + s4, 2.385 + s4 );
setScaleKey( spep_3 -3 + 40, 1, 2.16 + s4, 2.16 + s4 );
setScaleKey( spep_3 -3 + 43, 1, 1.935 + s4, 1.935 + s4 );
setScaleKey( spep_3 -3 + 44, 1, 6.815 + 1.6, 6.815 +1.6 );
setScaleKey( spep_3 -3 + 46, 1, 11.34, 11.34 );
setScaleKey( spep_3 -3 + 48, 1, 8.31 + 0.6, 8.31 + 0.6 );
setScaleKey( spep_3 -3 + 50, 1, 5.28 + 1.6, 5.28 + 1.6 );
setScaleKey( spep_3 -3 + 52, 1, 7.74 + 1.0, 7.74 + 1.0 );
setScaleKey( spep_3 -3 + 54, 1, 10.2 + 1.0, 10.2 + 1.0 );
setScaleKey( spep_3 -3 + 56, 1, 6.63 + 1.0, 6.63 + 1.0 );
setScaleKey( spep_3 -3 + 58, 1, 3.09 + 0.6, 3.09 + 0.6 );
setScaleKey( spep_3 -3 + 60, 1, 4.86 + 0.8, 4.86 + 0.8 );
setScaleKey( spep_3 -3 + 62, 1, 6.63 + 0.8, 6.63 + 0.8 );
setScaleKey( spep_3 -3 + 64, 1, 4.65 + 0.6, 4.65 + 0.6 );
setScaleKey( spep_3 -3 + 66, 1, 2.67 + 0.6, 2.67 + 0.6 );
setScaleKey( spep_3 -3 + 68, 1, 2.46 + 0.6, 2.46 + 0.6 );
setScaleKey( spep_3 -3 + 70, 1, 2.28 + 0.6, 2.28 + 0.6 );
setScaleKey( spep_3 -3 + 72, 1, 2.82 + 0.6, 2.82 + 0.6 );
setScaleKey( spep_3 -3 + 74, 1, 3.39 + 0.6, 3.39 + 0.6 );
setScaleKey( spep_3 -3 + 76, 1, 2.82 + 0.6, 2.82 + 0.6 );
setScaleKey( spep_3 -3 + 78, 1, 2.28 + 0.5, 2.28 + 0.5 );
setScaleKey( spep_3 -3 + 80, 1, 2.82 + 0.6, 2.82 + 0.6 );
setScaleKey( spep_3 -3 + 82, 1, 3.39 + 0.6, 3.39 + 0.6 );
--setScaleKey( spep_3 -3 + 83, 1, 3.39, 3.39 );

setRotateKey( spep_3 + 0, 1, -25.3 );
setRotateKey( spep_3 -3 + 43, 1, -25.3 );
setRotateKey( spep_3 -3 + 44, 1, -55.3 );
setRotateKey( spep_3 -3 + 82, 1, -55.3 );
--setRotateKey( spep_3 -3 + 83, 1, -55.3 );

-- ** 音 ** --
--エルボー
SE008 = playSe( spep_3 + 50, 1004 );

--エルボー
SE009 = playSe( spep_3 + 52, 1153 );
setSeVolumeByWorkId( spep_3 + 64, SE009, 76 );

--エルボー
SE010 = playSe( spep_3 + 52, 1009 );
setSeVolumeByWorkId( spep_3 + 64, SE010, 83 );

--エルボー
SE011 = playSe( spep_3 + 54, 1190 );

--エルボー
SE012 = playSe( spep_3 + 56, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;


------------------------------------------------------
-- 墜落(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
crash_f = entryEffectLife( spep_4 + 0, SP_07, 86, 0x100, -1, 0, 0, 0 );  --墜落_敵より手前	ef_005_front
setEffMoveKey( spep_4 + 0, crash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, crash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, crash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, crash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_f, 0 );
setEffRotateKey( spep_4 + 86, crash_f, 0 );
setEffAlphaKey( spep_4 + 0, crash_f, 255 );
setEffAlphaKey( spep_4 + 86 -1, crash_f, 255 );
setEffAlphaKey( spep_4 + 86, crash_f, 0 );

crash_b = entryEffectLife( spep_4 + 0, SP_08, 86, 0x80, -1, 0, 0, 0 );  --墜落_敵より奥	ef_005_back
setEffMoveKey( spep_4 + 0, crash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, crash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, crash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, crash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_b, 0 );
setEffRotateKey( spep_4 + 86, crash_b, 0 );
setEffAlphaKey( spep_4 + 0, crash_b, 255 );
setEffAlphaKey( spep_4 + 86 -1, crash_b, 255 );
setEffAlphaKey( spep_4 + 86, crash_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 52, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -7, 20 , 0 );
setMoveKey( spep_4 + 1, 1, -7.1, 20.1 , 0 );
setMoveKey( spep_4 + 2, 1, -7.1, 20.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -7.2, 20.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -7.3, 20.6 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -7.4, 20.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -7.4, 20.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -7.5, 21.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -7.5, 21.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -7.6, 21.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -7.6, 21.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -7.7, 21.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -7.7, 21.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -7.7, 22 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -7.8, 22.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -7.9, 22.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -7.9, 22.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -8, 22.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -8, 22.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -8.1, 23 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -8.1, 23.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -8.2, 23.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -8.3, 23.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -8.3, 23.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -8.4, 23.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -8.4, 24 , 0 );
setMoveKey( spep_4 -3 + 51, 1, -8.4, 24 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -8.4, 24 , 0 );

setScaleKey( spep_4 + 0, 1, 3.765, 3.765 );
setScaleKey( spep_4 + 1, 1, 3.51, 3.51 );
setScaleKey( spep_4 + 2, 1, 3.255, 3.255 );
setScaleKey( spep_4 -3 + 6, 1, 3, 3 );
setScaleKey( spep_4 -3 + 8, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 10, 1, 2.535, 2.535 );
setScaleKey( spep_4 -3 + 12, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 14, 1, 2.085, 2.085 );
setScaleKey( spep_4 -3 + 16, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_4 -3 + 24, 1, 1.155, 1.155 );
setScaleKey( spep_4 -3 + 26, 1, 1.005, 1.005 );
setScaleKey( spep_4 -3 + 28, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 32, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 34, 1, 0.495, 0.495 );
setScaleKey( spep_4 -3 + 36, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 38, 1, 0.3, 0.3 );
setScaleKey( spep_4 -3 + 40, 1, 0.225, 0.225 );
setScaleKey( spep_4 -3 + 42, 1, 0.165, 0.165 );
setScaleKey( spep_4 -3 + 44, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 46, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 48, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 52, 1, 0.06, 0.06 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 52, 1, 0 );

-- ** 音 ** --
--落ちていく
SE013 = playSe( spep_4 + 0, 1121 );
setSeVolumeByWorkId( spep_4 + 0, SE013, 45 );
stopSe( spep_4 + 54, SE013, 14 );

--落ちていく
SE014 = playSe( spep_4 + 0, 1183 );
setSeVolumeByWorkId( spep_4 + 0, SE014, 79 );
stopSe( spep_4 + 54, SE014, 14 );

--地面爆発
SE015 = playSe( spep_4 + 52, 1159 );
setSeVolumeByWorkId( spep_4 + 52, SE015, 80 );
stopSe( spep_4 +86 + 14, SE015, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 気ダメ(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_5 + 0, SP_09, 146, 0x100, -1, 0, 0, 0 );  --気ダメ、顔、セリフカットイン	ef_006
setEffMoveKey( spep_5 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, tame, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146, tame, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 146, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 146 -1, tame, 255 );
setEffAlphaKey( spep_5 + 146, tame, 0 );

spep_x = spep_5 + 58;
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
--気弾溜め
SE016 = playSe( spep_5 + 8, 1144 );
setSeVolumeByWorkId( spep_5 + 8, SE016, 75 );
stopSe( spep_5 +146 + 0, SE016, 12 );
setPitch( spep_5 + 8, SE016, -500 );
setTimeStretch( SE016, 0.67, 10, 1 );

--気弾溜め
SE017 = playSe( spep_5 + 8, 1295 );
stopSe( spep_5 +146 + 0, SE017, 12 );
setPitch( spep_5 + 8, SE017, 500 );
setTimeStretch( SE017, 1.33, 10, 1 );

--気弾溜め
SE018 = playSe( spep_5 + 8, 1282 );
setSeVolumeByWorkId( spep_5 +8, SE018, 65 );
setPitch( spep_5 + 8, SE018, -600 );
setTimeStretch( SE018, 0.6, 10, 1 );

--顔カットイン
SE019 = playSe( spep_5 + 62, 1018 );

--気弾溜め
SE020 = playSe( spep_5 + 88, 1035 );
stopSe( spep_5 +146 + 0, SE020, 12 );
setPitch( spep_5 + 88, SE020, -400 );
setTimeStretch( SE020, 0.73, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 126, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

--腕振りかぶる
SE022 = playSe( spep_6 + 92, 1116,"",0.6 );
stopSe( spep_6 +94 + 28, SE022, 18 );

--腕振りかぶる
SE023 = playSe( spep_6 + 92, 1278,"",0.6 );
setSeVolumeByWorkId( spep_6 + 92, SE023, 72 );
stopSe( spep_6 +94 + 60, SE023, 36 );

--腕振りかぶる
SE024 = playSe( spep_6 + 92, 1295,"",0.6 );
setPitch( spep_6 + 92, SE024, 500 );
setTimeStretch( SE024, 1.33, 10, 1 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;


------------------------------------------------------
-- 正面パンチ(96F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_7 + 0, SP_10, 96, 0x100, -1, 0, 0, 0 );  --正面パンチ	ef_007
setEffMoveKey( spep_7 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_7 + 96, punch, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_7 + 96, punch, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, punch, 0 );
setEffRotateKey( spep_7 + 96, punch, 0 );
setEffAlphaKey( spep_7 + 0, punch, 255 );
setEffAlphaKey( spep_7 + 96 -1, punch, 255 );
setEffAlphaKey( spep_7 + 96, punch, 0 );

-- ** 音 ** --
--パンチ
SE025 = playSe( spep_7 + 66, 1004 );

--パンチ
SE026 = playSe( spep_7 + 78, 1024 );
setSeVolumeByWorkId( spep_7 + 78, SE026, 71 );

--パンチ
SE027 = playSe( spep_7 + 78, 1060 );
setSeVolumeByWorkId( spep_7 + 78, SE027, 110 );

--パンチ
SE028 = playSe( spep_7 + 78, 20 );

--パンチ
SE029 = playSe( spep_7 + 78, 1187 );
setSeVolumeByWorkId( spep_7 + 78, SE029, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 96;


------------------------------------------------------
-- 吹き飛び(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
vanish_f = entryEffectLife( spep_8 + 0, SP_11, 56, 0x100, -1, 0, 0, 0 );  --吹き飛び_敵より手前	ef_008_front
setEffMoveKey( spep_8 + 0, vanish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, vanish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, vanish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, vanish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_f, 0 );
setEffRotateKey( spep_8 + 56, vanish_f, 0 );
setEffAlphaKey( spep_8 + 0, vanish_f, 255 );
setEffAlphaKey( spep_8 + 56 -1, vanish_f, 255 );
setEffAlphaKey( spep_8 + 56, vanish_f, 0 );

vanish_b = entryEffectLife( spep_8 + 0, SP_12, 56, 0x80, -1, 0, 0, 0 );  --吹き飛び_敵より奥	ef_008_back
setEffMoveKey( spep_8 + 0, vanish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, vanish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, vanish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, vanish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_b, 0 );
setEffRotateKey( spep_8 + 56, vanish_b, 0 );
setEffAlphaKey( spep_8 + 0, vanish_b, 255 );
setEffAlphaKey( spep_8 + 56 -1, vanish_b, 255 );
setEffAlphaKey( spep_8 + 56, vanish_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 -3 + 58, 1, 0 );
changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8 -3 + 24, 1, 105 );

setMoveKey( spep_8 + 0, 1, 55.8 -78, -136.8 +155 , 0 );
setMoveKey( spep_8 + 1, 1, 55.8 -77, -134.7 +154 , 0 );
setMoveKey( spep_8 + 2, 1, 55.6 -76, -128.5 +152 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 55.4 -75, -117.9 +150 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 55 -68, -103.1 +140 , 0 );
--setMoveKey( spep_8 -3 + 10, 1, 54.6 -a4, -83.7 +b4 , 0 );
--setMoveKey( spep_8 -3 + 12, 1, 54 -a4, -59.6 +b4 , 0 );
--setMoveKey( spep_8 -3 + 14, 1, 53.3 -a4, -30.6 +b4 , 0 );
--setMoveKey( spep_8 -3 + 16, 1, 52.5 -a4, 3.5 +b4 , 0 );
--setMoveKey( spep_8 -3 + 18, 1, 51.5 -a4, 43.1 +b4 , 0 );
--setMoveKey( spep_8 -3 + 20, 1, 50.4 -a4, 88.6 +b4 , 0 );
setMoveKey( spep_8 -3 + 23, 1, 49.1 -20, 140.3 +70 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 51.3, 207.9 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 51.3, 234.9 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 51.3, 165.9 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 27.9, 195.8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 79.9, 192 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 51.3, 209.1 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 51.3, 161.4 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 35.7, 181.4 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 72.1, 178.2 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 51.3, 180.2 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 51.3, 166.8 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 46.1, 169.2 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 56.5, 166.4 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 51.3, 166.4 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 51.3, 158.7 , 0 );
setMoveKey( spep_8 -3 + 54, 1, 48.7, 158.9 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 51.3, 156.7 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 51.3, 154.6 , 0 );

setScaleKey( spep_8 + 0, 1, 3.555, 3.555 );
setScaleKey( spep_8 + 1, 1, 3.54, 3.54 );
setScaleKey( spep_8 + 2, 1, 3.48, 3.48 );
setScaleKey( spep_8 -3 + 6, 1, 3.405, 3.405 );
setScaleKey( spep_8 -3 + 8, 1, 3.285, 3.285 );
setScaleKey( spep_8 -3 + 10, 1, 3.135, 3.135 );
setScaleKey( spep_8 -3 + 12, 1, 2.955, 2.955 );
setScaleKey( spep_8 -3 + 14, 1, 2.715, 2.715 );
setScaleKey( spep_8 -3 + 16, 1, 2.445, 2.445 );
setScaleKey( spep_8 -3 + 18, 1, 2.13, 2.13 );
setScaleKey( spep_8 -3 + 20, 1, 1.77, 1.77 );
setScaleKey( spep_8 -3 + 23, 1, 1.35, 1.35 );
setScaleKey( spep_8 -3 + 24, 1, 1.065, 1.065 );
setScaleKey( spep_8 -3 + 26, 1, 1.035, 1.035 );
setScaleKey( spep_8 -3 + 28, 1, 1.02, 1.02 );
setScaleKey( spep_8 -3 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_8 -3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_8 -3 + 34, 1, 0.945, 0.945 );
setScaleKey( spep_8 -3 + 36, 1, 0.915, 0.915 );
setScaleKey( spep_8 -3 + 38, 1, 0.9, 0.9 );
setScaleKey( spep_8 -3 + 40, 1, 0.87, 0.87 );
setScaleKey( spep_8 -3 + 42, 1, 0.855, 0.855 );
setScaleKey( spep_8 -3 + 44, 1, 0.825, 0.825 );
setScaleKey( spep_8 -3 + 46, 1, 0.81, 0.81 );
setScaleKey( spep_8 -3 + 48, 1, 0.795, 0.795 );
setScaleKey( spep_8 -3 + 50, 1, 0.78, 0.78 );
setScaleKey( spep_8 -3 + 52, 1, 0.765, 0.765 );
setScaleKey( spep_8 -3 + 54, 1, 0.75, 0.75 );
setScaleKey( spep_8 -3 + 56, 1, 0.735, 0.735 );
setScaleKey( spep_8 -3 + 58, 1, 0.72, 0.72 );

setRotateKey( spep_8 + 0, 1, -46.5 );
setRotateKey( spep_8 + 1, 1, -46.3 );
setRotateKey( spep_8 + 2, 1, -45.9 );
setRotateKey( spep_8 -3 + 6, 1, -45.2 );
setRotateKey( spep_8 -3 + 8, 1, -44.3 );
setRotateKey( spep_8 -3 + 10, 1, -43 );
setRotateKey( spep_8 -3 + 12, 1, -41.5 );
setRotateKey( spep_8 -3 + 14, 1, -39.7 );
setRotateKey( spep_8 -3 + 16, 1, -37.7 );
setRotateKey( spep_8 -3 + 18, 1, -35.3 );
setRotateKey( spep_8 -3 + 20, 1, -32.7 );
setRotateKey( spep_8 -3 + 23, 1, -29.8 );
setRotateKey( spep_8 -3 + 24, 1, 0 );
setRotateKey( spep_8 -3 + 58, 1, 0 );

-- ** 音 ** --
--岩崩れる
SE030 = playSe( spep_8 + 16, 1023 );
setSeVolumeByWorkId( spep_8 + 16, SE030, 110 );

--岩崩れる
SE031 = playSe( spep_8 + 16, 1168 );
stopSe( spep_8 +50, SE031, 18 );

--岩崩れる
SE032 = playSe( spep_8 + 18, 1183 );
stopSe( spep_8 +56 + 40, SE032, 52 );

--岩崩れる
SE033 = playSe( spep_8 + 18, 1052 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- フィニッシュ(174F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前	ef_009_front
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 174, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 174, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 174, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 174, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥	ef_009_back
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 174, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 174, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 174, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 174, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 39, 1, 0 );
changeAnime( spep_9 + 0, 1, 105 );

setBlendColor( spep_9 + 0, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_9 -3 + 38, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_9 -3 + 39, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_9 + 0, 1, -1.6, -22.4 , 0 );
setMoveKey( spep_9 + 1, 1, -1.5, -29.5 , 0 );
setMoveKey( spep_9 + 2, 1, -1.4, -42.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -1.5, -57.2 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -1.5, -73.7 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -1.5, -91.4 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -1.5, -109.9 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -1.5, -129.3 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -1.5, -133.7 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -1.5, -138.2 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -1.6, -142.6 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -1.6, -147.1 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -1.6, -151.6 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -1.6, -156.3 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -1.7, -160.9 , 0 );
setMoveKey( spep_9 -3 + 30, 1, -1.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 32, 1, -1.7, -170.2 , 0 );
setMoveKey( spep_9 -3 + 34, 1, -1.8, -175 , 0 );
setMoveKey( spep_9 -3 + 36, 1, -1.8, -179.7 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -1.8, -184.5 , 0 );
setMoveKey( spep_9 -3 + 39, 1, -1.8, -184.5 , 0 );

setScaleKey( spep_9 + 0, 1, 3.965, 3.965 );
setScaleKey( spep_9 + 1, 1, 3.588, 3.588 );
setScaleKey( spep_9 + 2, 1, 3.198, 3.198 );
setScaleKey( spep_9 -3 + 6, 1, 2.795, 2.795 );
setScaleKey( spep_9 -3 + 8, 1, 2.405, 2.405 );
setScaleKey( spep_9 -3 + 10, 1, 2.002, 2.002 );
setScaleKey( spep_9 -3 + 12, 1, 1.586, 1.586 );
setScaleKey( spep_9 -3 + 14, 1, 1.183, 1.183 );
setScaleKey( spep_9 -3 + 16, 1, 1.105, 1.105 );
setScaleKey( spep_9 -3 + 18, 1, 1.027, 1.027 );
setScaleKey( spep_9 -3 + 20, 1, 0.962, 0.962 );
setScaleKey( spep_9 -3 + 22, 1, 0.884, 0.884 );
setScaleKey( spep_9 -3 + 24, 1, 0.806, 0.806 );
setScaleKey( spep_9 -3 + 26, 1, 0.728, 0.728 );
setScaleKey( spep_9 -3 + 28, 1, 0.65, 0.65 );
setScaleKey( spep_9 -3 + 30, 1, 0.572, 0.572 );
setScaleKey( spep_9 -3 + 32, 1, 0.481, 0.481 );
setScaleKey( spep_9 -3 + 34, 1, 0.403, 0.403 );
setScaleKey( spep_9 -3 + 36, 1, 0.325, 0.325 );
setScaleKey( spep_9 -3 + 38, 1, 0.234, 0.234 );
setScaleKey( spep_9 -3 + 39, 1, 0.234, 0.234 );

setRotateKey( spep_9 + 0, 1, -6.1 );
setRotateKey( spep_9 + 1, 1, -6.2 );
setRotateKey( spep_9 -3 + 39, 1, -6.2 );

-- ** 音 ** --
--ラスト爆発
SE034 = playSe( spep_9 + 38, 1159 );
setSeVolumeByWorkId( spep_9 + 38, SE034, 90 );

--ラスト爆発
SE035 = playSe( spep_9 + 38, 1023 );
setSeVolumeByWorkId( spep_9 + 38, SE035, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 174 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 38 );
endPhase( spep_9 + 164 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 56, 0x80, -1, 0, 0, 0 );  --開幕    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
--setDisp( spep_0 -3 + 59, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 205, 358.1 , 0 );
setMoveKey( spep_0 + 1, 1, 205.7, 359.2 , 0 );
setMoveKey( spep_0 + 2, 1, 206.3, 360.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 206.9, 361.4 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 206.9, 361.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 207.6, 362.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 207.6, 362.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 208.2, 363.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 208.9, 364.8 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 209.5, 365.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 210.1, 367 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 210.8, 368.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 211.4, 369.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 212, 370.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 212.7, 371.4 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 213.3, 372.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 214, 373.7 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 214.6, 374.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 215.2, 375.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 215.9, 377 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 216.5, 378.1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 217.1, 379.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 217.8, 380.4 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 218.4, 381.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 219.1, 382.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 219.7, 383.7 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 220.3, 384.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 221, 385.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 221.6, 387 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 222.2, 388.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 222.9, 389.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 223.5, 390.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 2, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 3, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 4, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 5, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 6, 1, 0.26, 0.26 );
--setScaleKey( spep_0 -3 + 26, 1, 0.32, 0.32 );
--setScaleKey( spep_0 -3 + 28, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 58, 1, 0.28, 0.28 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 58, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1297,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- 叩き落とし(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
knock_f = entryEffectLife( spep_1 + 0, SP_02r, 116, 0x100, -1, 0, 0, 0 );  --叩き落とし_敵より手前 ef_002_front
setEffMoveKey( spep_1 + 0, knock_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, knock_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, knock_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, knock_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, knock_f, 0 );
setEffRotateKey( spep_1 + 116, knock_f, 0 );
setEffAlphaKey( spep_1 + 0, knock_f, 255 );
setEffAlphaKey( spep_1 + 116 -1, knock_f, 255 );
setEffAlphaKey( spep_1 + 116, knock_f, 0 );

knock_b = entryEffectLife( spep_1 + 0, SP_03r, 116, 0x80, -1, 0, 0, 0 );  --叩き落とし_敵より奥   ef_002_back
setEffMoveKey( spep_1 + 0, knock_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, knock_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, knock_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, knock_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, knock_b, 0 );
setEffRotateKey( spep_1 + 116, knock_b, 0 );
setEffAlphaKey( spep_1 + 0, knock_b, 255 );
setEffAlphaKey( spep_1 + 116 -1, knock_b, 255 );
setEffAlphaKey( spep_1 + 116, knock_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

a1 = 15;
b1 = 20;

setMoveKey( spep_1 + 0, 1, 0 +a1, 0 +b1 , 0 );

s1 = 0.6;
setScaleKey( spep_1 + 0, 1, 1.44 +s1, 1.44 +s1 );
setScaleKey( spep_1 + 1, 1, 1.41 +s1, 1.41 +s1 );
setScaleKey( spep_1 + 2, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_1 -3 + 6, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_1 -3 + 10, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_1 -3 + 12, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_1 -3 + 14, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_1 -3 + 16, 1, 1.23 +s1, 1.23 +s1 );
--setScaleKey( spep_1 -3 + 30, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 32, 1, 1.2 +s1, 1.2 +s1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE002 = playSe( spep_1 + 32, 1109 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 0 +a1, 0 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 0 +a1, 0 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.2 +s1, 1.2 +s1 );

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
--setDisp( spep_1 -3 + 119, 1, 0 );
changeAnime( spep_1 -3 + 80, 1, 8 );

a2 = 23;
b2 = 50;
setMoveKey( spep_1 -3 + 79, 1, 0 +a1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -9.3 -a2, -36.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -21.5 -a2, -21.3 -b2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -45.2 -a2, -42.1 -b2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -33.1 -a2, -49.2 -b2 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -59.4 -a2, -61.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -75.3 -a2, -93.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -90.6 -a2, -104.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -105.6 -a2, -125.2 -b2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -123.3 -a2, -149.1 -b2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -140.7 -a2, -172.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -157.9 -a2, -195.8 -b2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -174.8 -a2, -218.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -194.6 -a2, -247.2 -b2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -214.4 -a2, -275.7 -b2 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -234 -a2, -304.1 -b2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -253.6 -a2, -332.4 -b2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -273 -a2, -360.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -292.4 -a2, -388.5 -b2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -311.7 -a2, -416.4 -b2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -330.8 -a2, -444 -b2 , 0 );

s2 = 0.9;
setScaleKey( spep_1 -3 + 79, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_1 -3 + 80, 1, 1.14 +s2, 1.14 +s2 );
setScaleKey( spep_1 -3 + 82, 1, 1.095 +s2, 1.095 +s2 );
setScaleKey( spep_1 -3 + 84, 1, 1.065 +s2, 1.065 +s2 );
setScaleKey( spep_1 -3 + 86, 1, 1.02 +s2, 1.02 +s2 );
setScaleKey( spep_1 -3 + 88, 1, 1.005 +s2, 1.005 +s2 );
setScaleKey( spep_1 -3 + 90, 1, 0.975 +s2, 0.975 +s2 );
setScaleKey( spep_1 -3 + 92, 1, 0.945 +s2, 0.945 +s2 );
setScaleKey( spep_1 -3 + 94, 1, 0.915 +s2, 0.915 +s2 );
setScaleKey( spep_1 -3 + 96, 1, 0.9 +s2, 0.9 +s2 );
setScaleKey( spep_1 -3 + 98, 1, 0.885 +s2, 0.885 +s2 );
setScaleKey( spep_1 -3 + 100, 1, 0.855 +s2, 0.855 +s2 );
setScaleKey( spep_1 -3 + 102, 1, 0.84 +s2, 0.84 +s2 );
setScaleKey( spep_1 -3 + 104, 1, 0.825 +s2, 0.825 +s2 );
setScaleKey( spep_1 -3 + 106, 1, 0.81 +s2, 0.81 +s2 );
setScaleKey( spep_1 -3 + 108, 1, 0.78 +s2, 0.78 +s2 );
setScaleKey( spep_1 -3 + 110, 1, 0.765 +s2, 0.765 +s2 );
setScaleKey( spep_1 -3 + 112, 1, 0.75 +s2, 0.75 +s2 );
setScaleKey( spep_1 -3 + 114, 1, 0.735 +s2, 0.735 +s2 );
setScaleKey( spep_1 -3 + 116, 1, 0.72 +s2, 0.72 +s2 );
setScaleKey( spep_1 -3 + 118, 1, 0.705 +s2, 0.705 +s2 );

setRotateKey( spep_1 -3 + 79, 1, 0 );
setRotateKey( spep_1 -3 + 80, 1, -82.7 );
setRotateKey( spep_1 -3 + 82, 1, -81.6 );
setRotateKey( spep_1 -3 + 84, 1, -80.4 );
setRotateKey( spep_1 -3 + 86, 1, -79.2 );
setRotateKey( spep_1 -3 + 88, 1, -78 );
setRotateKey( spep_1 -3 + 90, 1, -76.8 );
setRotateKey( spep_1 -3 + 92, 1, -75.6 );
setRotateKey( spep_1 -3 + 94, 1, -74.5 );
setRotateKey( spep_1 -3 + 96, 1, -73.3 );
setRotateKey( spep_1 -3 + 98, 1, -72.1 );
setRotateKey( spep_1 -3 + 100, 1, -70.9 );
setRotateKey( spep_1 -3 + 102, 1, -69.7 );
setRotateKey( spep_1 -3 + 104, 1, -68.6 );
setRotateKey( spep_1 -3 + 106, 1, -67.4 );
setRotateKey( spep_1 -3 + 108, 1, -66.2 );
setRotateKey( spep_1 -3 + 110, 1, -65 );
setRotateKey( spep_1 -3 + 112, 1, -63.8 );
setRotateKey( spep_1 -3 + 114, 1, -62.7 );
setRotateKey( spep_1 -3 + 116, 1, -61.5 );
setRotateKey( spep_1 -3 + 118, 1, -60.3 );

-- ** 音 ** --
--叩きつけ
SE003 = playSe( spep_1 + 70, 1003 );

--叩きつけ
SE004 = playSe( spep_1 + 76, 1187 );

--叩きつけ
SE005 = playSe( spep_1 + 76, 1010 );

--敵落ちていく
SE006 = playSe( spep_1 + 86, 1183 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


------------------------------------------------------
-- 叩き落とし遠景(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_2 + 0, SP_04r, 56, 0x80, -1, 0, 0, 0 );  --叩き落とし遠景  ef_003
setEffMoveKey( spep_2 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, move, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, move, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move, 0 );
setEffRotateKey( spep_2 + 56, move, 0 );
setEffAlphaKey( spep_2 + 0, move, 255 );
setEffAlphaKey( spep_2 + 56 -1, move, 255 );
setEffAlphaKey( spep_2 + 56, move, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 -3 + 59, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 0, 1, 17.1, 66.9 , 0 );
setMoveKey( spep_2 + 1, 1, 10.8, 52.8 , 0 );
setMoveKey( spep_2 + 2, 1, 4.5, 38.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -1.8, 24.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -8.1, 10.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -14.3, -3.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -20.6, -17.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -26.9, -31.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -33.2, -45.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -39.5, -59.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -45.7, -73.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -52, -87.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -58.3, -101.9 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -64.6, -116 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -70.9, -130 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -77.2, -144.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -83.5, -158.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -89.7, -172.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -96, -186.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -102.3, -200.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -108.6, -214.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -114.8, -228.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -121.1, -242.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -127.4, -256.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -133.7, -270.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -140, -284.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -146.3, -298.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -152.6, -313 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -158.9, -327 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -165.1, -341.1 , 0 );

s3 = 0.02;
setScaleKey( spep_2 + 0, 1, 0.435 +s3, 0.435 +s3 );--0.435
setScaleKey( spep_2 -3 + 58, 1, 0.435 +s3, 0.435 +s3 );--0.435

setRotateKey( spep_2 + 0, 1, -25.3 );
setRotateKey( spep_2 + 1, 1, -25.5 );
setRotateKey( spep_2 -3 + 58, 1, -25.5 );

-- ** 音 ** --
--ダッシュで追いつく
SE007 = playSe( spep_2 + 50, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- 追撃(80F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
pursuit_f = entryEffectLife( spep_3 + 0, SP_05r, 80, 0x100, -1, 0, 0, 0 );  --追撃_敵より手前   ef_004_front
setEffMoveKey( spep_3 + 0, pursuit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, pursuit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pursuit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, pursuit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_f, 0 );
setEffRotateKey( spep_3 + 80, pursuit_f, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_3 + 80 -1, pursuit_f, 255 );
setEffAlphaKey( spep_3 + 80, pursuit_f, 0 );

pursuit_b = entryEffectLife( spep_3 + 0, SP_06r, 80, 0x80, -1, 0, 0, 0 );  --追撃_敵より奥 ef_004_back
setEffMoveKey( spep_3 + 0, pursuit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, pursuit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pursuit_b, 0 );
setEffRotateKey( spep_3 + 80, pursuit_b, 0 );
setEffAlphaKey( spep_3 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_3 + 80 -1, pursuit_b, 255 );
setEffAlphaKey( spep_3 + 80, pursuit_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 -3 + 83, 1, 0 );
changeAnime( spep_3 + 0, 1, 6 );
changeAnime( spep_3 -3 + 44, 1, 8 );

a3 = 55;
b3 = 58;
setMoveKey( spep_3 + 0, 1, -440 -a3, -743.7 +b3 , 0 );
setMoveKey( spep_3 + 1, 1, -425.6 -a3, -719.4 +b3 , 0 );
setMoveKey( spep_3 + 2, 1, -411.2 -a3, -695.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -396.8 -a3, -670.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -382.4 -a3, -646.4 +b3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -368 -a3, -622 +b3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -353.6 -a3, -597.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -339.2 -a3, -573.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -324.8 -a3, -549 +b3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -310.4 -a3, -524.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -296 -a3, -500.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -281.6 -a3, -476 +b3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -267.2 -a3, -451.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -252.8 -a3, -427.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -238.4 -a3, -403 +b3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -224 -a3, -378.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -209.6 -a3, -354.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -195.2 -a3, -330 +b3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -180.8 -a3, -305.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -166.4 -a3, -281.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -152 -a3, -256.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 43, 1, -137.6 -a3, -232.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 18.2 -255, -249.1 -150 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 79 -430, -275 -250 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 28.8 -290, -258.4 -170 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -21.5 -200, -238.3 -100 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 23.5 -255, -265.7 -190 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 68.3 -355, -295 -220 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 32.1 -255, -272.1 -170 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -4.1 -125, -246.3 -85 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 14 -200, -262 -135 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 32.1 -275, -278.6 -180 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -2.9 -180, -257.4 -130 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -37.9 -105, -235 -78 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -54.7 -100, -228.3 -68 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -71.6 -95, -221.2 -58 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.4 -110, -257.4 -78 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 72.6 -140, -293.8 -90 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 0.4 -110, -258.2 -78 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -71.6 -90, -222.5 -68 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 0.4 -110, -258.8 -78 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 72.6 -130, -295.2 -100 , 0 );
--setMoveKey( spep_3 -3 + 83, 1, 72.6 -130, -295.2 -100 , 0 );

s4 = 0.8;
setScaleKey( spep_3 + 0, 1, 6.675 + s4, 6.675 + s4 );
setScaleKey( spep_3 + 1, 1, 6.465 + s4, 6.465 + s4 );
setScaleKey( spep_3 + 2, 1, 6.24 + s4, 6.24 + s4 );
setScaleKey( spep_3 -3 + 6, 1, 6.015 + s4, 6.015 + s4 );
setScaleKey( spep_3 -3 + 8, 1, 5.775 + s4, 5.775 + s4 );
setScaleKey( spep_3 -3 + 10, 1, 5.55 + s4, 5.55 + s4 );
setScaleKey( spep_3 -3 + 12, 1, 5.325 + s4, 5.325 + s4 );
setScaleKey( spep_3 -3 + 14, 1, 5.1 + s4, 5.1 + s4 );
setScaleKey( spep_3 -3 + 16, 1, 4.875 + s4, 4.875 + s4 );
setScaleKey( spep_3 -3 + 18, 1, 4.65 + s4, 4.65 + s4 );
setScaleKey( spep_3 -3 + 20, 1, 4.425 + s4, 4.425 + s4 );
setScaleKey( spep_3 -3 + 22, 1, 4.2 + s4, 4.2 + s4 );
setScaleKey( spep_3 -3 + 24, 1, 3.975 + s4, 3.975 + s4 );
setScaleKey( spep_3 -3 + 26, 1, 3.75 + s4, 3.75 + s4 );
setScaleKey( spep_3 -3 + 28, 1, 3.525 + s4, 3.525 + s4 );
setScaleKey( spep_3 -3 + 30, 1, 3.285 + s4, 3.285 + s4 );
setScaleKey( spep_3 -3 + 32, 1, 3.06 + s4, 3.06 + s4 );
setScaleKey( spep_3 -3 + 34, 1, 2.835 + s4, 2.835 + s4 );
setScaleKey( spep_3 -3 + 36, 1, 2.61 + s4, 2.61 + s4 );
setScaleKey( spep_3 -3 + 38, 1, 2.385 + s4, 2.385 + s4 );
setScaleKey( spep_3 -3 + 40, 1, 2.16 + s4, 2.16 + s4 );
setScaleKey( spep_3 -3 + 43, 1, 1.935 + s4, 1.935 + s4 );
setScaleKey( spep_3 -3 + 44, 1, 6.815 + 1.6, 6.815 +1.6 );
setScaleKey( spep_3 -3 + 46, 1, 11.34, 11.34 );
setScaleKey( spep_3 -3 + 48, 1, 8.31 + 0.6, 8.31 + 0.6 );
setScaleKey( spep_3 -3 + 50, 1, 5.28 + 1.6, 5.28 + 1.6 );
setScaleKey( spep_3 -3 + 52, 1, 7.74 + 1.0, 7.74 + 1.0 );
setScaleKey( spep_3 -3 + 54, 1, 10.2 + 1.0, 10.2 + 1.0 );
setScaleKey( spep_3 -3 + 56, 1, 6.63 + 1.0, 6.63 + 1.0 );
setScaleKey( spep_3 -3 + 58, 1, 3.09 + 0.6, 3.09 + 0.6 );
setScaleKey( spep_3 -3 + 60, 1, 4.86 + 0.8, 4.86 + 0.8 );
setScaleKey( spep_3 -3 + 62, 1, 6.63 + 0.8, 6.63 + 0.8 );
setScaleKey( spep_3 -3 + 64, 1, 4.65 + 0.6, 4.65 + 0.6 );
setScaleKey( spep_3 -3 + 66, 1, 2.67 + 0.6, 2.67 + 0.6 );
setScaleKey( spep_3 -3 + 68, 1, 2.46 + 0.6, 2.46 + 0.6 );
setScaleKey( spep_3 -3 + 70, 1, 2.28 + 0.6, 2.28 + 0.6 );
setScaleKey( spep_3 -3 + 72, 1, 2.82 + 0.6, 2.82 + 0.6 );
setScaleKey( spep_3 -3 + 74, 1, 3.39 + 0.6, 3.39 + 0.6 );
setScaleKey( spep_3 -3 + 76, 1, 2.82 + 0.6, 2.82 + 0.6 );
setScaleKey( spep_3 -3 + 78, 1, 2.28 + 0.5, 2.28 + 0.5 );
setScaleKey( spep_3 -3 + 80, 1, 2.82 + 0.6, 2.82 + 0.6 );
setScaleKey( spep_3 -3 + 82, 1, 3.39 + 0.6, 3.39 + 0.6 );
--setScaleKey( spep_3 -3 + 83, 1, 3.39, 3.39 );


setRotateKey( spep_3 + 0, 1, -25.3 );
setRotateKey( spep_3 -3 + 43, 1, -25.3 );
setRotateKey( spep_3 -3 + 44, 1, -55.3 );
setRotateKey( spep_3 -3 + 82, 1, -55.3 );
--setRotateKey( spep_3 -3 + 83, 1, -55.3 );

-- ** 音 ** --
--エルボー
SE008 = playSe( spep_3 + 50, 1004 );

--エルボー
SE009 = playSe( spep_3 + 52, 1153 );
setSeVolumeByWorkId( spep_3 + 64, SE009, 76 );

--エルボー
SE010 = playSe( spep_3 + 52, 1009 );
setSeVolumeByWorkId( spep_3 + 64, SE010, 83 );

--エルボー
SE011 = playSe( spep_3 + 54, 1190 );

--エルボー
SE012 = playSe( spep_3 + 56, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;


------------------------------------------------------
-- 墜落(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
crash_f = entryEffectLife( spep_4 + 0, SP_07, 86, 0x100, -1, 0, 0, 0 );  --墜落_敵より手前 ef_005_front
setEffMoveKey( spep_4 + 0, crash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, crash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, crash_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, crash_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_f, 0 );
setEffRotateKey( spep_4 + 86, crash_f, 0 );
setEffAlphaKey( spep_4 + 0, crash_f, 255 );
setEffAlphaKey( spep_4 + 86 -1, crash_f, 255 );
setEffAlphaKey( spep_4 + 86, crash_f, 0 );

crash_b = entryEffectLife( spep_4 + 0, SP_08, 86, 0x80, -1, 0, 0, 0 );  --墜落_敵より奥   ef_005_back
setEffMoveKey( spep_4 + 0, crash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, crash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, crash_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, crash_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, crash_b, 0 );
setEffRotateKey( spep_4 + 86, crash_b, 0 );
setEffAlphaKey( spep_4 + 0, crash_b, 255 );
setEffAlphaKey( spep_4 + 86 -1, crash_b, 255 );
setEffAlphaKey( spep_4 + 86, crash_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 52, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 7, 20 , 0 );
setMoveKey( spep_4 + 1, 1, 7.1, 20.1 , 0 );
setMoveKey( spep_4 + 2, 1, 7.1, 20.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 7.2, 20.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 7.3, 20.6 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 7.4, 20.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 7.4, 20.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 7.5, 21.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 7.5, 21.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 7.6, 21.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 7.6, 21.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 7.7, 21.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 7.7, 21.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 7.7, 22 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 7.8, 22.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 7.9, 22.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 7.9, 22.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 8, 22.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 8, 22.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 8.1, 23 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 8.1, 23.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 8.2, 23.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 8.3, 23.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 8.3, 23.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 8.4, 23.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 8.4, 24 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 8.4, 24 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 8.4, 24 , 0 );

setScaleKey( spep_4 + 0, 1, 3.765, 3.765 );
setScaleKey( spep_4 + 1, 1, 3.51, 3.51 );
setScaleKey( spep_4 + 2, 1, 3.255, 3.255 );
setScaleKey( spep_4 -3 + 6, 1, 3, 3 );
setScaleKey( spep_4 -3 + 8, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 10, 1, 2.535, 2.535 );
setScaleKey( spep_4 -3 + 12, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 14, 1, 2.085, 2.085 );
setScaleKey( spep_4 -3 + 16, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_4 -3 + 24, 1, 1.155, 1.155 );
setScaleKey( spep_4 -3 + 26, 1, 1.005, 1.005 );
setScaleKey( spep_4 -3 + 28, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 32, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 34, 1, 0.495, 0.495 );
setScaleKey( spep_4 -3 + 36, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 38, 1, 0.3, 0.3 );
setScaleKey( spep_4 -3 + 40, 1, 0.225, 0.225 );
setScaleKey( spep_4 -3 + 42, 1, 0.165, 0.165 );
setScaleKey( spep_4 -3 + 44, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 46, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 48, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 52, 1, 0.06, 0.06 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 52, 1, 0 );

-- ** 音 ** --
--落ちていく
SE013 = playSe( spep_4 + 0, 1121 );
setSeVolumeByWorkId( spep_4 + 0, SE013, 45 );
stopSe( spep_4 + 54, SE013, 14 );

--落ちていく
SE014 = playSe( spep_4 + 0, 1183 );
setSeVolumeByWorkId( spep_4 + 0, SE014, 79 );
stopSe( spep_4 + 54, SE014, 14 );

--地面爆発
SE015 = playSe( spep_4 + 52, 1159 );
setSeVolumeByWorkId( spep_4 + 52, SE015, 80 );
stopSe( spep_4 +86 + 14, SE015, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 気ダメ(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_5 + 0, SP_09, 146, 0x100, -1, 0, 0, 0 );  --気ダメ、顔、セリフカットイン ef_006
setEffMoveKey( spep_5 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, tame, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_5 + 146, tame, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame, 0 );
setEffRotateKey( spep_5 + 146, tame, 0 );
setEffAlphaKey( spep_5 + 0, tame, 255 );
setEffAlphaKey( spep_5 + 146 -1, tame, 255 );
setEffAlphaKey( spep_5 + 146, tame, 0 );

spep_x = spep_5 + 58;
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
--気弾溜め
SE016 = playSe( spep_5 + 8, 1144 );
setSeVolumeByWorkId( spep_5 + 8, SE016, 75 );
stopSe( spep_5 +146 + 0, SE016, 12 );
setPitch( spep_5 + 8, SE016, -500 );
setTimeStretch( SE016, 0.67, 10, 1 );

--気弾溜め
SE017 = playSe( spep_5 + 8, 1295 );
stopSe( spep_5 +146 + 0, SE017, 12 );
setPitch( spep_5 + 8, SE017, 500 );
setTimeStretch( SE017, 1.33, 10, 1 );

--気弾溜め
SE018 = playSe( spep_5 + 8, 1282 );
setSeVolumeByWorkId( spep_5 +8, SE018, 65 );
setPitch( spep_5 + 8, SE018, -600 );
setTimeStretch( SE018, 0.6, 10, 1 );

--顔カットイン
SE019 = playSe( spep_5 + 62, 1018 );

--気弾溜め
SE020 = playSe( spep_5 + 88, 1035 );
stopSe( spep_5 +146 + 0, SE020, 12 );
setPitch( spep_5 + 88, SE020, -400 );
setTimeStretch( SE020, 0.73, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 126, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

--腕振りかぶる
SE022 = playSe( spep_6 + 92, 1116,"",0.6 );
stopSe( spep_6 +94 + 28, SE022, 18 );

--腕振りかぶる
SE023 = playSe( spep_6 + 92, 1278,"",0.6 );
setSeVolumeByWorkId( spep_6 + 92, SE023, 72 );
stopSe( spep_6 +94 + 60, SE023, 36 );

--腕振りかぶる
SE024 = playSe( spep_6 + 92, 1295,"",0.6 );
setPitch( spep_6 + 92, SE024, 500 );
setTimeStretch( SE024, 1.33, 10, 1 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;


------------------------------------------------------
-- 正面パンチ(96F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_7 + 0, SP_10, 96, 0x100, -1, 0, 0, 0 );  --正面パンチ  ef_007
setEffMoveKey( spep_7 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_7 + 96, punch, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, punch, -1.0, 1.0 );
setEffScaleKey( spep_7 + 96, punch, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, punch, 0 );
setEffRotateKey( spep_7 + 96, punch, 0 );
setEffAlphaKey( spep_7 + 0, punch, 255 );
setEffAlphaKey( spep_7 + 96 -1, punch, 255 );
setEffAlphaKey( spep_7 + 96, punch, 0 );

-- ** 音 ** --
--パンチ
SE025 = playSe( spep_7 + 66, 1004 );

--パンチ
SE026 = playSe( spep_7 + 78, 1024 );
setSeVolumeByWorkId( spep_7 + 78, SE026, 71 );

--パンチ
SE027 = playSe( spep_7 + 78, 1060 );
setSeVolumeByWorkId( spep_7 + 78, SE027, 110 );

--パンチ
SE028 = playSe( spep_7 + 78, 20 );

--パンチ
SE029 = playSe( spep_7 + 78, 1187 );
setSeVolumeByWorkId( spep_7 + 78, SE029, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 96;


------------------------------------------------------
-- 吹き飛び(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
vanish_f = entryEffectLife( spep_8 + 0, SP_11, 56, 0x100, -1, 0, 0, 0 );  --吹き飛び_敵より手前  ef_008_front
setEffMoveKey( spep_8 + 0, vanish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, vanish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, vanish_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, vanish_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_f, 0 );
setEffRotateKey( spep_8 + 56, vanish_f, 0 );
setEffAlphaKey( spep_8 + 0, vanish_f, 255 );
setEffAlphaKey( spep_8 + 56 -1, vanish_f, 255 );
setEffAlphaKey( spep_8 + 56, vanish_f, 0 );

vanish_b = entryEffectLife( spep_8 + 0, SP_12, 56, 0x80, -1, 0, 0, 0 );  --吹き飛び_敵より奥    ef_008_back
setEffMoveKey( spep_8 + 0, vanish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, vanish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, vanish_b, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, vanish_b, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, vanish_b, 0 );
setEffRotateKey( spep_8 + 56, vanish_b, 0 );
setEffAlphaKey( spep_8 + 0, vanish_b, 255 );
setEffAlphaKey( spep_8 + 56 -1, vanish_b, 255 );
setEffAlphaKey( spep_8 + 56, vanish_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 -3 + 58, 1, 0 );
changeAnime( spep_8 + 0, 1, 6 );
changeAnime( spep_8 -3 + 24, 1, 5 );

setMoveKey( spep_8 + 0, 1, -55.8 +78, -136.8 +155 , 0 );
setMoveKey( spep_8 + 1, 1, -55.8 +77, -134.7 +154 , 0 );
setMoveKey( spep_8 + 2, 1, -55.6 +76, -128.5 +152 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -55.4 +75, -117.9 +150 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -55 +68, -103.1 +140 , 0 );
--setMoveKey( spep_8 -3 + 10, 1, 54.6 -a4, -83.7 +b4 , 0 );
--setMoveKey( spep_8 -3 + 12, 1, 54 -a4, -59.6 +b4 , 0 );
--setMoveKey( spep_8 -3 + 14, 1, 53.3 -a4, -30.6 +b4 , 0 );
--setMoveKey( spep_8 -3 + 16, 1, 52.5 -a4, 3.5 +b4 , 0 );
--setMoveKey( spep_8 -3 + 18, 1, 51.5 -a4, 43.1 +b4 , 0 );
--setMoveKey( spep_8 -3 + 20, 1, 50.4 -a4, 88.6 +b4 , 0 );
setMoveKey( spep_8 -3 + 23, 1, -49.1 +20, 140.3 +70 , 0 );
setMoveKey( spep_8 -3 + 24, 1, -51.3, 207.9 , 0 );
setMoveKey( spep_8 -3 + 26, 1, -51.3, 234.9 , 0 );
setMoveKey( spep_8 -3 + 28, 1, -51.3, 165.9 , 0 );
setMoveKey( spep_8 -3 + 30, 1, -27.9, 195.8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, -79.9, 192 , 0 );
setMoveKey( spep_8 -3 + 34, 1, -51.3, 209.1 , 0 );
setMoveKey( spep_8 -3 + 36, 1, -51.3, 161.4 , 0 );
setMoveKey( spep_8 -3 + 38, 1, -35.7, 181.4 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -72.1, 178.2 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -51.3, 180.2 , 0 );
setMoveKey( spep_8 -3 + 44, 1, -51.3, 166.8 , 0 );
setMoveKey( spep_8 -3 + 46, 1, -46.1, 169.2 , 0 );
setMoveKey( spep_8 -3 + 48, 1, -56.5, 166.4 , 0 );
setMoveKey( spep_8 -3 + 50, 1, -51.3, 166.4 , 0 );
setMoveKey( spep_8 -3 + 52, 1, -51.3, 158.7 , 0 );
setMoveKey( spep_8 -3 + 54, 1, -48.7, 158.9 , 0 );
setMoveKey( spep_8 -3 + 56, 1, -51.3, 156.7 , 0 );
setMoveKey( spep_8 -3 + 58, 1, -51.3, 154.6 , 0 );

setScaleKey( spep_8 + 0, 1, 3.555, 3.555 );
setScaleKey( spep_8 + 1, 1, 3.54, 3.54 );
setScaleKey( spep_8 + 2, 1, 3.48, 3.48 );
setScaleKey( spep_8 -3 + 6, 1, 3.405, 3.405 );
setScaleKey( spep_8 -3 + 8, 1, 3.285, 3.285 );
setScaleKey( spep_8 -3 + 10, 1, 3.135, 3.135 );
setScaleKey( spep_8 -3 + 12, 1, 2.955, 2.955 );
setScaleKey( spep_8 -3 + 14, 1, 2.715, 2.715 );
setScaleKey( spep_8 -3 + 16, 1, 2.445, 2.445 );
setScaleKey( spep_8 -3 + 18, 1, 2.13, 2.13 );
setScaleKey( spep_8 -3 + 20, 1, 1.77, 1.77 );
setScaleKey( spep_8 -3 + 23, 1, 1.35, 1.35 );
setScaleKey( spep_8 -3 + 24, 1, 1.065, 1.065 );
setScaleKey( spep_8 -3 + 26, 1, 1.035, 1.035 );
setScaleKey( spep_8 -3 + 28, 1, 1.02, 1.02 );
setScaleKey( spep_8 -3 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_8 -3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_8 -3 + 34, 1, 0.945, 0.945 );
setScaleKey( spep_8 -3 + 36, 1, 0.915, 0.915 );
setScaleKey( spep_8 -3 + 38, 1, 0.9, 0.9 );
setScaleKey( spep_8 -3 + 40, 1, 0.87, 0.87 );
setScaleKey( spep_8 -3 + 42, 1, 0.855, 0.855 );
setScaleKey( spep_8 -3 + 44, 1, 0.825, 0.825 );
setScaleKey( spep_8 -3 + 46, 1, 0.81, 0.81 );
setScaleKey( spep_8 -3 + 48, 1, 0.795, 0.795 );
setScaleKey( spep_8 -3 + 50, 1, 0.78, 0.78 );
setScaleKey( spep_8 -3 + 52, 1, 0.765, 0.765 );
setScaleKey( spep_8 -3 + 54, 1, 0.75, 0.75 );
setScaleKey( spep_8 -3 + 56, 1, 0.735, 0.735 );
setScaleKey( spep_8 -3 + 58, 1, 0.72, 0.72 );

setRotateKey( spep_8 + 0, 1, 46.5 );
setRotateKey( spep_8 + 1, 1, 46.3 );
setRotateKey( spep_8 + 2, 1, 45.9 );
setRotateKey( spep_8 -3 + 6, 1, 45.2 );
setRotateKey( spep_8 -3 + 8, 1, 44.3 );
setRotateKey( spep_8 -3 + 10, 1, 43 );
setRotateKey( spep_8 -3 + 12, 1, 41.5 );
setRotateKey( spep_8 -3 + 14, 1, 39.7 );
setRotateKey( spep_8 -3 + 16, 1, 37.7 );
setRotateKey( spep_8 -3 + 18, 1, 35.3 );
setRotateKey( spep_8 -3 + 20, 1, 32.7 );
setRotateKey( spep_8 -3 + 23, 1, 29.8 );
setRotateKey( spep_8 -3 + 24, 1, 0 );
setRotateKey( spep_8 -3 + 58, 1, 0 );

-- ** 音 ** --
--岩崩れる
SE030 = playSe( spep_8 + 16, 1023 );
setSeVolumeByWorkId( spep_8 + 16, SE030, 110 );

--岩崩れる
SE031 = playSe( spep_8 + 16, 1168 );
stopSe( spep_8 +50, SE031, 18 );

--岩崩れる
SE032 = playSe( spep_8 + 18, 1183 );
stopSe( spep_8 +56 + 40, SE032, 52 );

--岩崩れる
SE033 = playSe( spep_8 + 18, 1052 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- フィニッシュ(174F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前    ef_009_front
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 174, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 174, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 174, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 174, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥  ef_009_back
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 174, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_9 + 174, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 174, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 174, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 39, 1, 0 );
changeAnime( spep_9 + 0, 1, 5 );

setBlendColor( spep_9 + 0, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_9 -3 + 38, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_9 -3 + 39, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_9 + 0, 1, 1.6, -22.4 , 0 );
setMoveKey( spep_9 + 1, 1, 1.5, -29.5 , 0 );
setMoveKey( spep_9 + 2, 1, 1.4, -42.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 1.5, -57.2 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 1.5, -73.7 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 1.5, -91.4 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 1.5, -109.9 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 1.5, -129.3 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 1.5, -133.7 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 1.5, -138.2 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 1.6, -142.6 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 1.6, -147.1 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 1.6, -151.6 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 1.6, -156.3 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 1.7, -160.9 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 1.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 1.7, -170.2 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 1.8, -175 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 1.8, -179.7 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 1.8, -184.5 , 0 );
setMoveKey( spep_9 -3 + 39, 1, 1.8, -184.5 , 0 );

setScaleKey( spep_9 + 0, 1, 3.965, 3.965 );
setScaleKey( spep_9 + 1, 1, 3.588, 3.588 );
setScaleKey( spep_9 + 2, 1, 3.198, 3.198 );
setScaleKey( spep_9 -3 + 6, 1, 2.795, 2.795 );
setScaleKey( spep_9 -3 + 8, 1, 2.405, 2.405 );
setScaleKey( spep_9 -3 + 10, 1, 2.002, 2.002 );
setScaleKey( spep_9 -3 + 12, 1, 1.586, 1.586 );
setScaleKey( spep_9 -3 + 14, 1, 1.183, 1.183 );
setScaleKey( spep_9 -3 + 16, 1, 1.105, 1.105 );
setScaleKey( spep_9 -3 + 18, 1, 1.027, 1.027 );
setScaleKey( spep_9 -3 + 20, 1, 0.962, 0.962 );
setScaleKey( spep_9 -3 + 22, 1, 0.884, 0.884 );
setScaleKey( spep_9 -3 + 24, 1, 0.806, 0.806 );
setScaleKey( spep_9 -3 + 26, 1, 0.728, 0.728 );
setScaleKey( spep_9 -3 + 28, 1, 0.65, 0.65 );
setScaleKey( spep_9 -3 + 30, 1, 0.572, 0.572 );
setScaleKey( spep_9 -3 + 32, 1, 0.481, 0.481 );
setScaleKey( spep_9 -3 + 34, 1, 0.403, 0.403 );
setScaleKey( spep_9 -3 + 36, 1, 0.325, 0.325 );
setScaleKey( spep_9 -3 + 38, 1, 0.234, 0.234 );
setScaleKey( spep_9 -3 + 39, 1, 0.234, 0.234 );

setRotateKey( spep_9 + 0, 1, 6.1 );
setRotateKey( spep_9 + 1, 1, 6.2 );
setRotateKey( spep_9 -3 + 39, 1, 6.2 );

-- ** 音 ** --
--ラスト爆発
SE034 = playSe( spep_9 + 38, 1159 );
setSeVolumeByWorkId( spep_9 + 38, SE034, 90 );

--ラスト爆発
SE035 = playSe( spep_9 + 38, 1023 );
setSeVolumeByWorkId( spep_9 + 38, SE035, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 174 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 38 );
endPhase( spep_9 + 164 );

end