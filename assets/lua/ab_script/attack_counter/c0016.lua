--1020650:超サイヤ人4ベジット(ゼノ)_かめはめ波（カウンター）
--sp_effect_a1_00259

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
SP_01 = 156255;  --気溜め〜かめはめ波溜め ef_001
SP_02 = 156256;  --かめはめ波発射〜敵にヒット   ef_002
SP_03 = 156257;  --かめはめ波発射〜敵にヒット   ef_003

--敵側
--SP_01r = 156258;  --敵用：気溜め〜かめはめ波溜め  ef_001r
--SP_02r = 156259;  --敵用：かめはめ波発射〜敵にヒット    ef_002r
--SP_03r = 156260;  --敵用：かめはめ波発射〜敵にヒット    ef_003r

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

ENABLE_AUTO_TIME_STRETCH(0.75);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜かめはめ波溜め(150F)
------------------------------------------------------
--次の準備
spep_0=28;
--spep_1=0;


--エフェクトの再生
move_f=entryEffectLife(spep_0,SP_01,150,0x100,-1,0,0,0); --気溜め〜かめはめ波溜め(ef_001)

setEffMoveKey(spep_0,move_f,0,0,0);
setEffMoveKey(spep_0+150,move_f,0,0,0);
setEffScaleKey(spep_0,move_f,1.0,1.0);
setEffScaleKey(spep_0+150,move_f,1.0,1.0);
setEffAlphaKey(spep_0,move_f,255);
setEffAlphaKey(spep_0+150,move_f,255);
setEffRotateKey(spep_0,move_f,0);
setEffRotateKey(spep_0+150,move_f,0);

--SE
--気ダメ
SE001 = playSe( spep_0 + 0, 1035 );

--オーラ1
SE002 = playSe( spep_0 + 32, 1036 );
setSeVolumeByWorkId( spep_0 + 32, SE002, 79 );

--オーラ青くなる1
SE003 = playSe( spep_0 + 78, 1144 );
setSeVolumeByWorkId( spep_0 + 78, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 80, SE003, 9 );
setSeVolumeByWorkId( spep_0 + 82, SE003, 18 );
setSeVolumeByWorkId( spep_0 + 84, SE003, 27 );
setSeVolumeByWorkId( spep_0 + 86, SE003, 36 );
setSeVolumeByWorkId( spep_0 + 88, SE003, 45 );
setSeVolumeByWorkId( spep_0 + 90, SE003, 54 );
setSeVolumeByWorkId( spep_0 + 92, SE003, 63 );
setSeVolumeByWorkId( spep_0 + 94, SE003, 74 );
stopSe( spep_0 + 126, SE003, 58 );
setStartTimeMs( SE003,  667 );

--構える1
SE004 = playSe( spep_0 + 42, 1233 );
setPitch( spep_0 + 42, SE004, -200 );
setTimeStretch( SE004, 0.87, 10, 1 );

--オーラ2
SE005 = playSe( spep_0 + 56, 1036 );
setSeVolumeByWorkId( spep_0 + 56, SE005, 79 );

--構える2
SE006 = playSe( spep_0 + 54, 1232 );

--オーラ青くなる2
SE007 = playSe( spep_0 + 82, 1265 );
setSeVolumeByWorkId( spep_0 + 82, SE007, 28 );
setSeVolumeByWorkId( spep_0 + 82, SE007, 56 );
setSeVolumeByWorkId( spep_0 + 82, SE007, 84 );
setSeVolumeByWorkId( spep_0 + 82, SE007, 112 );
setSeVolumeByWorkId( spep_0 + 82, SE007, 141 );
stopSe( spep_0 +150 + 4, SE007, 62 );
setStartTimeMs( SE007,  217 );

--オーラ3	
SE008 = playSe( spep_0 + 80, 1036 );
setSeVolumeByWorkId( spep_0 + 80, SE008, 79 );

--かめはめ波溜め1
SE009 = playSe( spep_0 + 82, 1209 );
stopSe( spep_0 +150 + 40, SE009, 0 );

--かめはめ波溜め2
SE010 = playSe( spep_0 + 82, 1210 );
stopSe( spep_0 +150 + 40, SE010, 0 );

--オーラ青くなる3
SE011 = playSe( spep_0 + 84, 1176 );
stopSe( spep_0 +150 + 68, SE011, 0 );

--オーラ4
SE012 = playSe( spep_0 + 104, 1036 );
setSeVolumeByWorkId( spep_0 + 104, SE012, 79 );

--オーラ5
SE013 = playSe( spep_0 + 128, 1036 );
setSeVolumeByWorkId( spep_0 + 128, SE013, 79 );

--次の準備
spep_1=spep_0+150;


------------------------------------------------------
-- かめはめ波発射〜敵にヒット(172F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --かめはめ波発射〜敵にヒット(ef_002)
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 172, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 172, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 172, hit_f, 255 );

hit_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --かめはめ波発射〜敵にヒット(ef_003)
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 172, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 172, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 172, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_1 -3 + 22,  10012, 22, 0x100, -1, 0, 71.4, 179.5 );
setEffMoveKey( spep_1 -3 + 22, ctzuo, 71.4, 179.5 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctzuo, 65, 194.1 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctzuo, 46, 242.3 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzuo, 12.9, 316.2 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzuo, -38.9, 355.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzuo, -85.6, 380.3 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctzuo, -115.8, 406.7 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctzuo, -141.7, 418.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctzuo, -156.9, 432.4 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctzuo, -160.3, 430.4 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctzuo, -164.9, 438.8 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctzuo, -171, 441.1 , 0 );

setEffScaleKey( spep_1 -3 + 22, ctzuo, 0.96, 0.96 );
setEffScaleKey( spep_1 -3 + 24, ctzuo, 1.152, 1.152 );
setEffScaleKey( spep_1 -3 + 26, ctzuo, 1.66, 1.66 );
setEffScaleKey( spep_1 -3 + 28, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_1 -3 + 30, ctzuo, 3.072, 3.072 );
setEffScaleKey( spep_1 -3 + 32, ctzuo, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 34, ctzuo, 3.84, 3.84 );
setEffScaleKey( spep_1 -3 + 36, ctzuo, 4.064, 4.064 );
setEffScaleKey( spep_1 -3 + 38, ctzuo, 4.224, 4.224 );
setEffScaleKey( spep_1 -3 + 40, ctzuo, 4.256, 4.256 );
setEffScaleKey( spep_1 -3 + 42, ctzuo, 4.384, 4.384 );
setEffScaleKey( spep_1 -3 + 44, ctzuo, 4.512, 4.512 );

setEffRotateKey( spep_1 -3 + 22, ctzuo, -20 );
setEffRotateKey( spep_1 -3 + 44, ctzuo, -20 );

setEffAlphaKey( spep_1 -3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctzuo, 203 );
setEffAlphaKey( spep_1 -3 + 32, ctzuo, 160 );
setEffAlphaKey( spep_1 -3 + 34, ctzuo, 126 );
setEffAlphaKey( spep_1 -3 + 36, ctzuo, 103 );
setEffAlphaKey( spep_1 -3 + 38, ctzuo, 88 );
setEffAlphaKey( spep_1 -3 + 40, ctzuo, 84 );
setEffAlphaKey( spep_1 -3 + 42, ctzuo, 42 );
setEffAlphaKey( spep_1 -3 + 44, ctzuo, 0 );

--SE
--オーラ6	
SE014 = playSe( spep_1 + 2, 1036 );
setSeVolumeByWorkId( spep_1 + 2, SE014, 79 );

--オーラ7
SE015 = playSe( spep_1 + 26, 1036 );
setSeVolumeByWorkId( spep_1 + 26, SE015, 79 );

--かめはめ波発射1
SE016 = playSe( spep_1 + 24, 1027 );
setSeVolumeByWorkId( spep_1 + 34, SE016, 89 );

--かめはめ波発射2
SE017 = playSe( spep_1 + 24, 1022 );
setSeVolumeByWorkId( spep_1 + 34, SE017, 94 );

--かめはめ波発射3
SE018 = playSe( spep_1 + 24, 1211 );
stopSe( spep_1 +172 + 24, SE018, 0 );

--かめはめ波発射4
SE019 = playSe( spep_1 + 24, 1213 );
setSeVolumeByWorkId( spep_1 + 34, SE019, 59 );
stopSe( spep_1 +172 + 24, SE019, 0 );

--かめはめ波発射5
SE020 = playSe( spep_1 + 24, 1223 );
setSeVolumeByWorkId( spep_1 + 34, SE020, 79 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 82; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );

    stopSe( SP_dodge - 12, SE000, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    
        if (_IS_PLAYER_SIDE_ == 1) then
    
            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    
        else
    
            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
    
        end
    
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    setMoveKey(  SP_dodge+5, 0, -750,  70,   -30);-- 中央位置から
    setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
    --setDisp( SP_dodge+5, 0, 0);
    
    endPhase(SP_dodge+10);
    do return end
    else end

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 96, 1, 1 );
setDisp( spep_1 -3 + 152, 1, 0 );
changeAnime( spep_1 -3 + 96, 1, 104 );
changeAnime( spep_1 -3 + 144, 1, 108 );

setBlendColor( spep_1 + 116, 1, 3, 0.36, 0.67, 0.82, 0.3 );
setBlendColor( spep_1 + 118, 1, 3, 0.36, 0.67, 0.82, 0.3 );
setBlendColor( spep_1 + 120, 1, 3, 0.36, 0.67, 0.82, 0.3 );
setBlendColor( spep_1 + 122, 1, 3, 0.36, 0.67, 0.82, 0.45 );
setBlendColor( spep_1 + 124, 1, 3, 0.36, 0.67, 0.82, 0.45 );
--setBlendColor( spep_1 + 126, 1, 3, 0.36, 0.67, 0.82, 0.6 );
--setBlendColor( spep_1 + 126, 1, 0, 0, 0.22, 0.36, 1.0 );
--setBlendColor( spep_1 + 128, 1, 0, 0, 0.23, 0.37, 1.0 );
--setBlendColor( spep_1 + 130, 1, 0, 0, 0.24, 0.38, 1.0 );
--setBlendColor( spep_1 + 132, 1, 0, 0, 0.25, 0.40, 1.0 );
setBlendColor( spep_1 -3 + 152, 1, 3, 0.36, 0.67, 0.82, 0.45 );
setBlendColor( spep_1 -3 + 160, 1, 3, 0.36, 0.67, 0.82, 0 );

setMoveKey( spep_1 -3 + 96, 1, 591.7, -28.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 592.7, -27.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 593.8, -26.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 594.8, -26 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 595.9, -25.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 596.9, -24.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 598, -23.8 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 599, -23.1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 600.1, -22.3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 601.1, -21.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 602.1, -20.9 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 510, -32.8 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 377.6, -19.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 308.4, -2.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 270.9, -3.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 243.9, -5.2 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 243.7, -18.2 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 208.4, 21 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 196.8, 20.5 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 208.2, 0 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 214, -12.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 197.7, 7.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 195.1, 7.4 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 214.2, -6.9 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 233.9, -26.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 226.8, -7.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 223.5, -9.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 217.9, -12.8 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 217.9, -12.8 , 0 );

setScaleKey( spep_1 -3 + 96, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 116, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 118, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 120, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 122, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 124, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 126, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 128, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 130, 1, 0.92, 0.92 );
setScaleKey( spep_1 -3 + 132, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 134, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 136, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 138, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 140, 1, 1, 1 );
setScaleKey( spep_1 -3 + 144, 1, 1, 1 );
setScaleKey( spep_1 -3 + 146, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 148, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 150, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 152, 1, 0.9, 0.9 );

setRotateKey( spep_1 -3 + 96, 1, -10 );
setRotateKey( spep_1 -3 + 152, 1, -10 );

--SE
--かめはめ波弾道6
SE021 = playSe( spep_1 + 106, 1212 );
setSeVolumeByWorkId( spep_1 + 106, SE021, 11 );
setSeVolumeByWorkId( spep_1 + 108, SE021, 21 );
setSeVolumeByWorkId( spep_1 + 110, SE021, 31 );
setSeVolumeByWorkId( spep_1 + 112, SE021, 41 );
setSeVolumeByWorkId( spep_1 + 114, SE021, 51 );
setSeVolumeByWorkId( spep_1 + 116, SE021, 61 );
setSeVolumeByWorkId( spep_1 + 118, SE021, 71 );
stopSe( spep_1 +172 + 18, SE021, 26 );
setStartTimeMs( SE021,  1083 );

--かめはめ波弾道7
SE022 = playSe( spep_1 + 108, 1202 );

--かめはめ波加速8
SE023 = playSe( spep_1 + 148, 1021 );


--次の準備
spep_2 = spep_1 + 172;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
if (_IS_DEAD_ == 1) then

    setDisp( spep_1+170, 1, 1);
    endPhase(spep_1+172);
    
    else
--敵の動き
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 107 );
setMoveKey( spep_2 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_2 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 105 );
setRotateKey( spep_2 -3 + 4, 1, 240 );
setRotateKey( spep_2 -3 + 6, 1, 405 );
setRotateKey( spep_2 -3 + 8, 1, 600 );
setRotateKey( spep_2 -3 + 10, 1, 825 );
setRotateKey( spep_2 -3 + 12, 1, 1080 );
setRotateKey( spep_2 + 100, 1, 1080 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_2 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_2 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_2 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_2 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_2 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_2 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_2 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_2 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_2 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_2 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_2 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_2 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_2 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_2 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_2 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusenga, 0 );
setEffRotateKey( spep_2 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_2 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_2 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_2 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_2 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_2 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_2 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_2 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_2 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_2 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_2 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_2 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_2 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_2 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_2 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_2 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_2 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_2 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_2 + 14, ctga, 14, 20 );

setEffMoveKey( spep_2 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_2 + 100, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_2 + 100, ctga, -14.9 );

setEffAlphaKey( spep_2 + 14, ctga, 255 );
setEffAlphaKey( spep_2 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_2 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_2 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_2 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_2 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_2 + 2, hibiware, 0 );
setEffRotateKey( spep_2 + 100, hibiware, 0 );

setEffAlphaKey( spep_2 + 2, hibiware, 0 );
setEffAlphaKey( spep_2 + 13, hibiware, 0 );
setEffAlphaKey( spep_2 + 14, hibiware, 255 );
setEffAlphaKey( spep_2 + 100, hibiware, 255 );

--SE
playSe( spep_2 + 0, 1023 );--爆発
playSe( spep_2 + 14, 1054 );--ガッ

--かめはめ波発射
stopSe( spep_2 + 16, SE023, 0 );
stopSe( spep_2 + 16, SE024, 0 );

--かめはめ波弾道
stopSe( spep_2 + 0, SE026, 28 );

--終わり
dealDamage( spep_2 + 10 -10 );
endPhase( spep_2 + 98 -2 );

end
