--1023870:孫悟飯(青年期)_衝撃波_sp2322
--sp_effect_a7_00049

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
SP_01 = 159084;	--対峙	ef_001
SP_02 = 159085;	--瞬間移動して殴る	ef_002
SP_03 = 159087;	--気をためて構える	ef_003
SP_04 = 159089;	--発射	ef_004

--敵側
SP_02r = 159086;	--瞬間移動して殴る（敵側）	ef_002_r
SP_03r = 159088;	--気をためて構える（敵側）	ef_003_r
SP_04r = 159090;	--発射（敵側）	ef_004_r

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

ENABLE_AUTO_TIME_STRETCH(0.95);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 対峙(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  --対峙	ef_001
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
setDisp( spep_0 -3 + 0, 1, 1 );
changeAnime( spep_0 -3 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 121.4, 95.8 , 0 );
setMoveKey( spep_0 + 1, 1, 123.2, 95.6 , 0 );
setMoveKey( spep_0 + 2, 1, 125.1, 95.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 127, 95.2 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 127, 95.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 128.9, 95 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 128.9, 95 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 130.8, 94.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 132.7, 94.6 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 134.6, 94.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 136.4, 94.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 138.3, 93.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 140.2, 93.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 142.1, 93.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 144, 93.3 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 145.9, 93.1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 147.8, 92.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 149.7, 92.7 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 151.5, 92.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 1, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 2, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 3, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 4, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 5, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 6, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "",spep_0 +56 + 16, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 151.5, 92.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 153.4, 92.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 155.3, 92.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 157.2, 91.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 159.1, 91.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 161, 91.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.9, 0.9 );
    setScaleKey( SP_dodge + 10, 1, 0.9, 0.9 );

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


setMoveKey( spep_0 -3 + 34, 1, 153.4, 92.3 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 155.3, 92.1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 157.2, 91.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 159.1, 91.7 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 161, 91.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 162.9, 91.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 164.8, 91.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 166.6, 90.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 168.5, 90.6 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 170.4, 90.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 172.3, 90.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 174.2, 90 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 176.1, 89.8 , 0 );

setScaleKey( spep_0 -3 + 58, 1, 0.9, 0.9 );

setRotateKey( spep_0 -3 + 58, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE002 = playSeVer2( spep_0 + 40, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- 瞬間移動して殴る(90F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_1 + 0, SP_02, 90, 0x80, -1, 0, 0, 0 );  --瞬間移動して殴る	ef_002
setEffMoveKey( spep_1 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, move, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, move, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move, 0 );
setEffRotateKey( spep_1 + 90, move, 0 );
setEffAlphaKey( spep_1 + 0, move, 255 );
setEffAlphaKey( spep_1 + 90 -1, move, 255 );
setEffAlphaKey( spep_1 + 90, move, 0 );

-- ** 書き文字エントリー ** --
a1 = 40;
b1 = 80;
ctshun = entryEffectLife( spep_1 -3 + 10,  10011, 12, 0x100, -1, 0, -145.6 +a1, 354.3 -b1 );--シュンッ
setEffMoveKey( spep_1 -3 + 10, ctshun, -145.6 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctshun, -167.4 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctshun, -174.6 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctshun, -189.1 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctshun, -218 +a1, 354.3 -b1 , 0 );

setEffScaleKey( spep_1 -3 + 10, ctshun, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 18, ctshun, 1.87, 1.87 );

setEffRotateKey( spep_1 -3 + 10, ctshun, -7.1 );
setEffRotateKey( spep_1 -3 + 18, ctshun, -7.1 );

setEffAlphaKey( spep_1 -3 + 10, ctshun, 255 );
setEffAlphaKey( spep_1 -3 + 12, ctshun, 255 );
setEffAlphaKey( spep_1 -3 + 14, ctshun, 219 );
setEffAlphaKey( spep_1 -3 + 16, ctshun, 38 );
setEffAlphaKey( spep_1 -3 + 18, ctshun, 0 );

-- ** 書き文字エントリー ** --
a1 = 145;
b1 = 330;

a2 = 25;
b2 = 50;
ctbaki = entryEffectLife( spep_1 -3 + 30,  10020, 12 -1, 0x100, -1, 0, -209.1, -62.8 );--バキッ
setEffMoveKey( spep_1 -3 + 30, ctbaki, -209.1 +a1, -62.8 +b1 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, -235.7 +a1 +a2, -105.9 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, -235.7 +a1 +a2, -105.9 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 41, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );

setEffScaleKey( spep_1 -3 + 30, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 32, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 41, ctbaki, 2, 2 );

r1 = 8;
setEffRotateKey( spep_1 -3 + 30, ctbaki, -7.2 -r1 );
setEffRotateKey( spep_1 -3 + 41, ctbaki, -7.2 -r1 );

setEffAlphaKey( spep_1 -3 + 30, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 41, ctbaki, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 76, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 20, 1, 118 );
changeAnime( spep_1 -3 + 30, 1, 107 );

setMoveKey( spep_1 + 0, 1, 35, 1.6 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 35, 1.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 109.1, -59.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 89.6, -98.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 109.1, -59.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 70.1, -79 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 109.1, -40 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 109.1, -79 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 89.6, -59.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 114.1, -35 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 89.6, -84 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 89.6, -35 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 113.8, -84.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 261.4, -12.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 600.2, 7.1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 1106.3, 138.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 1578.2, 215.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 1890.6, 227.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 1900.4, 237.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 1890.6, 233.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 1896.5, 225.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 1892.6, 235.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 1898.4, 227.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 1892.6, 233.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 1898.4, 227.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 1898.4, 227.6 , 0 );

setScaleKey( spep_1 + 0, 1, 2, 2 );
setScaleKey( spep_1 -3 + 29, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 50, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 54, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 56, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 58, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 76, 1, 3.6, 3.6 );

setRotateKey( spep_1 -3 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 29, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, -7.1 );
setRotateKey( spep_1 -3 + 50, 1, -7.1 );
setRotateKey( spep_1 -3 + 52, 1, -9.7 );
setRotateKey( spep_1 -3 + 54, 1, -11.6 );
setRotateKey( spep_1 -3 + 56, 1, -12.7 );
setRotateKey( spep_1 -3 + 58, 1, -13.1 );
setRotateKey( spep_1 -3 + 76, 1, -13.1 );

-- ** 音 ** --
--瞬間移動
SE003 = playSeVer2( spep_1 + 6, 1109, "", 0, 0, 0, -1);

--殴り
SE004 = playSeVer2( spep_1 + 24, 1153, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 24, 1110, "", 0, 0, 0, -1);

--気合いれ
SE006 = playSeVer2( spep_1 + 86, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE006, 68 );
SE007 = playSeVer2( spep_1 + 86, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE007, 70 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;


------------------------------------------------------
-- 気をためて構える(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_03, 96, 0x80, -1, 0, 0, 0 );  --気をためて構える	ef_003
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96 -1, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 0 );

spep_x = spep_2 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 15, 515.5 , 0 );
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
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕あげる
SE009 = playSeVer2( spep_2 + 34, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE009, 132 );

-- ** 白フェード ** --
entryFade( spep_2 + 88, 4 , 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--衝撃波
SE011 = playSeVer2( spep_3 + 88, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 88, 1258, "",spep_3 +94 +76 + 10, 0, 36, -1);
SE013 = playSeVer2( spep_3 + 88, 1182, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 発射(76F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_4 + 0, SP_04, 76, 0x100, -1, 0, 0, 0 );  --発射	ef_004
setEffMoveKey( spep_4 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, shot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, shot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot, 0 );
setEffRotateKey( spep_4 + 76, shot, 0 );
setEffAlphaKey( spep_4 + 0, shot, 255 );
setEffAlphaKey( spep_4 + 76 -1, shot, 255 );
setEffAlphaKey( spep_4 + 76, shot, 0 );

-- ** 集中線 ** --
ryusen = entryEffectLife( spep_4 + 0,  921, 78 -3, 0x80, -1, 0, 80, 6 );
setEffMoveKey( spep_4 + 0, ryusen, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 49, ryusen, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 50, ryusen, -64, 26 , 0 );
setEffMoveKey( spep_4 -3 + 78, ryusen, -64, 26 , 0 );

setEffScaleKey( spep_4 + 0, ryusen, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 49, ryusen, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 50, ryusen, 1.14, 1.12 );
setEffScaleKey( spep_4 -3 + 78, ryusen, 1.14, 1.12 );

setEffRotateKey( spep_4 + 0, ryusen, 0 );
setEffRotateKey( spep_4 -3 + 78, ryusen, 0 );

setEffAlphaKey( spep_4 + 0, ryusen, 255 );
setEffAlphaKey( spep_4 -3 +78, ryusen, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 50, 1, 1 );
changeAnime( spep_4 -3 + 50, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );

setMoveKey( spep_4 -3 + 50, 1, -89.8, -11.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -56.6, -2.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -26.1, -13 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 0.7, -8 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 0.7, -8 , 0 );--
setMoveKey( spep_4 -3 + 58, 1, 40.9, -41.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 64.8, -22.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 90.3, -14.1 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 38.2, 21.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 133.1, -6.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 93.5, -1.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 205.4, -22.6 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 275.1, 6.1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 324.6, 7.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 375.6, 10.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 426.3, 14.1 , 0 );

setScaleKey( spep_4 -3 + 50, 1, 2.783, 2.783 );
setScaleKey( spep_4 -3 + 52, 1, 2.585, 2.585 );
setScaleKey( spep_4 -3 + 54, 1, 2.387, 2.387 );
setScaleKey( spep_4 -3 + 56, 1, 2.189, 2.189 );
setScaleKey( spep_4 -3 + 57, 1, 2.189, 2.189 );--
setScaleKey( spep_4 -3 + 58, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 60, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 62, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 64, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 66, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 70, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 72, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 76, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 78, 1, 0.28, 0.28 );

setRotateKey( spep_4 -3 + 50, 1, 1.9 );
setRotateKey( spep_4 -3 + 52, 1, 2.9 );
setRotateKey( spep_4 -3 + 54, 1, 3.7 );
setRotateKey( spep_4 -3 + 56, 1, 4.5 );
setRotateKey( spep_4 -3 + 57, 1, 4.5 );--
setRotateKey( spep_4 -3 + 58, 1, -17.5 );
setRotateKey( spep_4 -3 + 60, 1, -24.2 );
setRotateKey( spep_4 -3 + 62, 1, -31 );
setRotateKey( spep_4 -3 + 64, 1, -26.3 );
setRotateKey( spep_4 -3 + 66, 1, -21.6 );
setRotateKey( spep_4 -3 + 68, 1, -16.9 );
setRotateKey( spep_4 -3 + 70, 1, -11.4 );
setRotateKey( spep_4 -3 + 72, 1, -5.9 );
setRotateKey( spep_4 -3 + 74, 1, -0.4 );
setRotateKey( spep_4 -3 + 76, 1, 5.1 );
setRotateKey( spep_4 -3 + 78, 1, 10.6 );

-- ** 音 ** --
--衝撃波ヒット
SE014 = playSeVer2( spep_4 + 46, 1017, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_4 + 50, 1024, "",spep_4 +76 + 36, 0, 28, -1);

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 4 +1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 56 -1, 2 +1, 2 -1, 4 +1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_5    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_5    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_5    + 0, 1, 0 );
setRotateKey( spep_5    + 1, 1, 105 );
setRotateKey( spep_5    + 2, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
--playSe( spep_5 + 8, 1054 );

--ガッ
SE016 = playSeVer2( spep_5 + 8, 1025, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_5 + 8, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 対峙(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  --対峙   ef_001
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
setDisp( spep_0 -3 + 0, 1, 1 );
changeAnime( spep_0 -3 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 121.4, 95.8 , 0 );
setMoveKey( spep_0 + 1, 1, 123.2, 95.6 , 0 );
setMoveKey( spep_0 + 2, 1, 125.1, 95.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 127, 95.2 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 127, 95.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 128.9, 95 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 128.9, 95 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 130.8, 94.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 132.7, 94.6 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 134.6, 94.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 136.4, 94.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 138.3, 93.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 140.2, 93.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 142.1, 93.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 144, 93.3 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 145.9, 93.1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 147.8, 92.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 149.7, 92.7 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 151.5, 92.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 1, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 2, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 3, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 4, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 5, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 6, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "",spep_0 +56 + 16, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 151.5, 92.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 153.4, 92.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 155.3, 92.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 157.2, 91.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 159.1, 91.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 161, 91.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.9, 0.9 );
    setScaleKey( SP_dodge + 10, 1, 0.9, 0.9 );

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


setMoveKey( spep_0 -3 + 34, 1, 153.4, 92.3 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 155.3, 92.1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 157.2, 91.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 159.1, 91.7 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 161, 91.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 162.9, 91.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 164.8, 91.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 166.6, 90.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 168.5, 90.6 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 170.4, 90.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 172.3, 90.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 174.2, 90 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 176.1, 89.8 , 0 );

setScaleKey( spep_0 -3 + 58, 1, 0.9, 0.9 );

setRotateKey( spep_0 -3 + 58, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE002 = playSeVer2( spep_0 + 40, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;



------------------------------------------------------
-- 瞬間移動して殴る(90F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_1 + 0, SP_02r, 90, 0x80, -1, 0, 0, 0 );  --瞬間移動して殴る ef_002
setEffMoveKey( spep_1 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, move, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, move, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move, 0 );
setEffRotateKey( spep_1 + 90, move, 0 );
setEffAlphaKey( spep_1 + 0, move, 255 );
setEffAlphaKey( spep_1 + 90 -1, move, 255 );
setEffAlphaKey( spep_1 + 90, move, 0 );

-- ** 書き文字エントリー ** --
a1 = 40;
b1 = 80;
ctshun = entryEffectLife( spep_1 -3 + 10,  10011, 12, 0x100, -1, 0, -145.6 +a1, 354.3 -b1 );--シュンッ
setEffMoveKey( spep_1 -3 + 10, ctshun, -145.6 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctshun, -167.4 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctshun, -174.6 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctshun, -189.1 +a1, 354.3 -b1 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctshun, -218 +a1, 354.3 -b1 , 0 );

setEffScaleKey( spep_1 -3 + 10, ctshun, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 18, ctshun, 1.87, 1.87 );

setEffRotateKey( spep_1 -3 + 10, ctshun, -7.1 );
setEffRotateKey( spep_1 -3 + 18, ctshun, -7.1 );

setEffAlphaKey( spep_1 -3 + 10, ctshun, 255 );
setEffAlphaKey( spep_1 -3 + 12, ctshun, 255 );
setEffAlphaKey( spep_1 -3 + 14, ctshun, 219 );
setEffAlphaKey( spep_1 -3 + 16, ctshun, 38 );
setEffAlphaKey( spep_1 -3 + 18, ctshun, 0 );

-- ** 書き文字エントリー ** --
a1 = 145;
b1 = 330;

a2 = 25;
b2 = 50;
ctbaki = entryEffectLife( spep_1 -3 + 30,  10020, 12 -1, 0x100, -1, 0, -209.1, -62.8 );--バキッ
setEffMoveKey( spep_1 -3 + 30, ctbaki, -209.1 +a1, -62.8 +b1 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, -235.7 +a1 +a2, -105.9 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, -235.7 +a1 +a2, -105.9 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );
setEffMoveKey( spep_1 -3 + 41, ctbaki, -258 +a1 +a2, -88.6 +b1 +b2 , 0 );

setEffScaleKey( spep_1 -3 + 30, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 32, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 41, ctbaki, 2, 2 );

r1 = 8;
setEffRotateKey( spep_1 -3 + 30, ctbaki, -7.2 -r1 );
setEffRotateKey( spep_1 -3 + 41, ctbaki, -7.2 -r1 );

setEffAlphaKey( spep_1 -3 + 30, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 41, ctbaki, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 76, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 20, 1, 118 );
changeAnime( spep_1 -3 + 30, 1, 107 );

setMoveKey( spep_1 + 0, 1, 35, 1.6 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 35, 1.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 109.1, -59.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 89.6, -98.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 109.1, -59.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 70.1, -79 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 109.1, -40 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 109.1, -79 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 89.6, -59.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 114.1, -35 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 89.6, -84 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 89.6, -35 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 113.8, -84.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 261.4, -12.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 600.2, 7.1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 1106.3, 138.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 1578.2, 215.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 1890.6, 227.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 1900.4, 237.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 1890.6, 233.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 1896.5, 225.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 1892.6, 235.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 1898.4, 227.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 1892.6, 233.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 1898.4, 227.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 1898.4, 227.6 , 0 );

setScaleKey( spep_1 + 0, 1, 2, 2 );
setScaleKey( spep_1 -3 + 29, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 50, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 54, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 56, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 58, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 76, 1, 3.6, 3.6 );

setRotateKey( spep_1 -3 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 29, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, -7.1 );
setRotateKey( spep_1 -3 + 50, 1, -7.1 );
setRotateKey( spep_1 -3 + 52, 1, -9.7 );
setRotateKey( spep_1 -3 + 54, 1, -11.6 );
setRotateKey( spep_1 -3 + 56, 1, -12.7 );
setRotateKey( spep_1 -3 + 58, 1, -13.1 );
setRotateKey( spep_1 -3 + 76, 1, -13.1 );

-- ** 音 ** --
--瞬間移動
SE003 = playSeVer2( spep_1 + 6, 1109, "", 0, 0, 0, -1);

--殴り
SE004 = playSeVer2( spep_1 + 24, 1153, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 24, 1110, "", 0, 0, 0, -1);

--気合いれ
SE006 = playSeVer2( spep_1 + 86, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE006, 68 );
SE007 = playSeVer2( spep_1 + 86, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE007, 70 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;


------------------------------------------------------
-- 気をためて構える(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_03r, 96, 0x80, -1, 0, 0, 0 );  --気をためて構える ef_003
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96 -1, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 0 );

spep_x = spep_2 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 15, 515.5 , 0 );
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
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕あげる
SE009 = playSeVer2( spep_2 + 34, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE009, 132 );

-- ** 白フェード ** --
entryFade( spep_2 + 88, 4 , 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--衝撃波
SE011 = playSeVer2( spep_3 + 88, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 88, 1258, "",spep_3 +94 +76 + 10, 0, 36, -1);
SE013 = playSeVer2( spep_3 + 88, 1182, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 発射(76F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_4 + 0, SP_04r, 76, 0x100, -1, 0, 0, 0 );  --発射  ef_004
setEffMoveKey( spep_4 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, shot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, shot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot, 0 );
setEffRotateKey( spep_4 + 76, shot, 0 );
setEffAlphaKey( spep_4 + 0, shot, 255 );
setEffAlphaKey( spep_4 + 76 -1, shot, 255 );
setEffAlphaKey( spep_4 + 76, shot, 0 );

-- ** 集中線 ** --
ryusen = entryEffectLife( spep_4 + 0,  921, 78 -3, 0x80, -1, 0, 80, 6 );
setEffMoveKey( spep_4 + 0, ryusen, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 49, ryusen, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 50, ryusen, -64, 26 , 0 );
setEffMoveKey( spep_4 -3 + 78, ryusen, -64, 26 , 0 );

setEffScaleKey( spep_4 + 0, ryusen, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 49, ryusen, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 50, ryusen, 1.14, 1.12 );
setEffScaleKey( spep_4 -3 + 78, ryusen, 1.14, 1.12 );

setEffRotateKey( spep_4 + 0, ryusen, 0 );
setEffRotateKey( spep_4 -3 + 78, ryusen, 0 );

setEffAlphaKey( spep_4 + 0, ryusen, 255 );
setEffAlphaKey( spep_4 -3 +78, ryusen, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 50, 1, 1 );
changeAnime( spep_4 -3 + 50, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );

setMoveKey( spep_4 -3 + 50, 1, -89.8, -11.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -56.6, -2.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -26.1, -13 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 0.7, -8 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 0.7, -8 , 0 );--
setMoveKey( spep_4 -3 + 58, 1, 40.9, -41.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 64.8, -22.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 90.3, -14.1 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 38.2, 21.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 133.1, -6.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 93.5, -1.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 205.4, -22.6 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 275.1, 6.1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 324.6, 7.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 375.6, 10.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 426.3, 14.1 , 0 );

setScaleKey( spep_4 -3 + 50, 1, 2.783, 2.783 );
setScaleKey( spep_4 -3 + 52, 1, 2.585, 2.585 );
setScaleKey( spep_4 -3 + 54, 1, 2.387, 2.387 );
setScaleKey( spep_4 -3 + 56, 1, 2.189, 2.189 );
setScaleKey( spep_4 -3 + 57, 1, 2.189, 2.189 );--
setScaleKey( spep_4 -3 + 58, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 60, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 62, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 64, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 66, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 70, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 72, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 76, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 78, 1, 0.28, 0.28 );

setRotateKey( spep_4 -3 + 50, 1, 1.9 );
setRotateKey( spep_4 -3 + 52, 1, 2.9 );
setRotateKey( spep_4 -3 + 54, 1, 3.7 );
setRotateKey( spep_4 -3 + 56, 1, 4.5 );
setRotateKey( spep_4 -3 + 57, 1, 4.5 );--
setRotateKey( spep_4 -3 + 58, 1, -17.5 );
setRotateKey( spep_4 -3 + 60, 1, -24.2 );
setRotateKey( spep_4 -3 + 62, 1, -31 );
setRotateKey( spep_4 -3 + 64, 1, -26.3 );
setRotateKey( spep_4 -3 + 66, 1, -21.6 );
setRotateKey( spep_4 -3 + 68, 1, -16.9 );
setRotateKey( spep_4 -3 + 70, 1, -11.4 );
setRotateKey( spep_4 -3 + 72, 1, -5.9 );
setRotateKey( spep_4 -3 + 74, 1, -0.4 );
setRotateKey( spep_4 -3 + 76, 1, 5.1 );
setRotateKey( spep_4 -3 + 78, 1, 10.6 );

-- ** 音 ** --
--衝撃波ヒット
SE014 = playSeVer2( spep_4 + 46, 1017, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_4 + 50, 1024, "",spep_4 +76 + 36, 0, 28, -1);

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 4 +1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 56 -1, 2 +1, 2 -1, 4 +1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

endPhase( spep_4 + 128 );
------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_5    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_5    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_5    + 0, 1, 0 );
setRotateKey( spep_5    + 1, 1, 105 );
setRotateKey( spep_5    + 2, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
--playSe( spep_5 + 8, 1054 );

--ガッ
SE016 = playSeVer2( spep_5 + 8, 1025, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_5 + 8, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );

end