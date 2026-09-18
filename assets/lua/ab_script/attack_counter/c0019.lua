--1024660:合体ザマス_格闘無効カウンター
--sp_effect_a9_00095

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
SP_01 = 160164;  --敵の攻撃→跳ね返す→気弾発射
SP_02 = 160165;  --敵の攻撃→跳ね返す→気弾発射

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
-- 敵の攻撃→跳ね返す→気弾発射
------------------------------------------------------
--次の準備
spep_0=28;
--spep_0=0;
-- ** エフェクト等 ** --
eff_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 350, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 350, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 350, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 350, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 350, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 350, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 350, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 350, eff_b, 255 );

--敵の動き
setDisp( spep_0-3 + 14, 1, 1);
setDisp( spep_0-1 + 20, 1, 0);

changeAnime( spep_0-3 + 14, 1, 110);

setMoveKey( spep_0-3 + 14, 1, 2717.8, -108.3 , 0 );
setMoveKey( spep_0-3 + 16, 1, 2595.5, -147.3 , 0 );
setMoveKey( spep_0-3 + 18, 1, 2473.2, -186.3 , 0 );
setMoveKey( spep_0-3 + 20, 1, 2350.8, -225.3 , 0 );

setScaleKey( spep_0-3 + 14, 1, 21.54, 21.54 );
setScaleKey( spep_0-1 + 20, 1, 21.54, 21.54 );

setRotateKey( spep_0-3 + 14, 1, 9 );
setRotateKey( spep_0-1 + 20, 1, 9 );

--SE
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 120, 0, 14, -1);

--カードカットイン
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 120, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 68 );

--打撃受け止める
SE003 = playSeVer2( spep_0 + 20, 1049, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 24, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 204 );
SE006 = playSeVer2( spep_0 + 28, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE006, 82 );
SE007 = playSeVer2( spep_0 + 36, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 84 );
SE008 = playSeVer2( spep_0 + 36, 1182, "", 0, 0, 0, -1);

--構える
SE009 = playSeVer2( spep_0 + 110, 1116, "",spep_0 + 150, 0, 16, -1);
SE010 = playSeVer2( spep_0 + 110, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE011 = playSeVer2( spep_0 + 126, 1281, "",spep_0 + 178, 0, 10, 0.5);
setSeVolumeByWorkId( spep_0 + 126, SE011, 89 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );


    
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
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--敵の動き
setDisp( spep_0-3 + 160, 1, 1);
setDisp( spep_0-3 + 172, 1, 0);

changeAnime( spep_0-3 + 160, 1, 108);

setMoveKey( spep_0-3 + 160, 1, 86.4, 117.6 , 0 );
setMoveKey( spep_0-3 + 162, 1, 93.9, 125.6 , 0 );
setMoveKey( spep_0-3 + 164, 1, 101.4, 133.6 , 0 );
setMoveKey( spep_0-3 + 166, 1, 299.4, 306.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 491.7, 395 , 0 );
setMoveKey( spep_0-3 + 170, 1, 588, 476.4 , 0 );
setMoveKey( spep_0-3 + 172, 1, 762.3, 628.9 , 0 );

setScaleKey( spep_0-3 + 160, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 172, 1, 2.5, 2.5 );

setRotateKey( spep_0-3 + 160, 1, -24 );
setRotateKey( spep_0-3 + 172, 1, -24 );

--SE
--気弾溜め
SE013 = playSeVer2( spep_0 + 134, 1282, "",spep_0 + 178, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 61 );

--気弾発射
SE012 = playSeVer2( spep_0 + 164, 1212, "",spep_0 + 222, 4, 16, -1);
setSeVolumeByWorkId( spep_0 + 164, SE012, 77 );
setStartTimeMs( SE012,  733 );
SE014 = playSeVer2( spep_0 + 164, 1145, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 164, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE015, 124 );
SE016 = playSeVer2( spep_0 + 164, 1193, "",spep_0 + 272, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 164, SE016, 79 );
SE017 = playSeVer2( spep_0 + 166, 1109, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if (_IS_DEAD_ == 1) then

    setDisp( spep_0+204, 1, 1);
    endPhase(spep_0+206);
    
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 208, 1, 1);
setDisp( spep_0-3 + 278, 1, 0);

changeAnime( spep_0-3 + 208, 1, 106);
changeAnime( spep_0-3 + 214, 1, 6);
changeAnime( spep_0-3 + 218, 1, 106);
changeAnime( spep_0-3 + 222, 1, 6);
changeAnime( spep_0-3 + 226, 1, 106);
changeAnime( spep_0-3 + 230, 1, 6);
changeAnime( spep_0-3 + 236, 1, 105);

setMoveKey( spep_0-3 + 208, 1, -255.4, -605.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, -194.6, -450.8 , 0 );
setMoveKey( spep_0-3 + 212, 1, -155.3, -452.2 , 0 );
setMoveKey( spep_0-3 + 213, 1, -155.3, -452.2 , 0 );

setMoveKey( spep_0-3 + 214, 1, 43.6, -419.1 , 0 );
setMoveKey( spep_0-3 + 217, 1, 83.4, -346.6 , 0 );

setMoveKey( spep_0-3 + 218, 1, -37.4, -253.8 , 0 );
setMoveKey( spep_0-3 + 221, 1, -1.4, -208.4 , 0 );

setMoveKey( spep_0-3 + 222, 1, 138, -187.4 , 0 );
setMoveKey( spep_0-3 + 224, 1, 148.6, -154.8 , 0 );

setMoveKey( spep_0-3 + 226, 1, 47.2, -88.2 , 0 );
setMoveKey( spep_0-3 + 229, 1, 61.2, -62 , 0 );

setMoveKey( spep_0-3 + 230, 1, 158.6, -58.8 , 0 );
setMoveKey( spep_0-3 + 232, 1, 163.5, -31.8 , 0 );
setMoveKey( spep_0-3 + 234, 1, 164.3, -2 , 0 );
setMoveKey( spep_0-3 + 235, 1, 164.3, -2 , 0 )

setMoveKey( spep_0-3 + 236, 1, 141.6, 124 , 0 );
setMoveKey( spep_0-3 + 238, 1, 142.5, 122.3 , 0 );
setMoveKey( spep_0-3 + 240, 1, 149.8, 132.5 , 0 );
setMoveKey( spep_0-3 + 242, 1, 156.3, 150.3 , 0 );
setMoveKey( spep_0-3 + 244, 1, 162, 170.9 , 0 );
setMoveKey( spep_0-3 + 246, 1, 168.4, 188.9 , 0 );
setMoveKey( spep_0-3 + 248, 1, 170.6, 198.6 , 0 );
setMoveKey( spep_0-3 + 250, 1, 173.4, 209.6 , 0 );
setMoveKey( spep_0-3 + 252, 1, 176.7, 221.3 , 0 );
setMoveKey( spep_0-3 + 254, 1, 180.2, 233.6 , 0 );
setMoveKey( spep_0-3 + 256, 1, 183.8, 246.2 , 0 );
setMoveKey( spep_0-3 + 258, 1, 187.3, 258.8 , 0 );
setMoveKey( spep_0-3 + 260, 1, 190.8, 271.1 , 0 );
setMoveKey( spep_0-3 + 262, 1, 194, 283 , 0 );
setMoveKey( spep_0-3 + 264, 1, 197, 293.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, 199.6, 303.7 , 0 );
setMoveKey( spep_0-3 + 268, 1, 201.7, 312.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, 203.2, 319 , 0 );
setMoveKey( spep_0-3 + 272, 1, 204.2, 324.3 , 0 );
setMoveKey( spep_0-3 + 274, 1, 204.8, 328 , 0 );
setMoveKey( spep_0-3 + 276, 1, 205.1, 330.3 , 0 );
setMoveKey( spep_0-3 + 278, 1, 205.1, 331.2 , 0 );

setScaleKey( spep_0-3 + 208, 1, 6.58, 6.58 );
setScaleKey( spep_0-3 + 210, 1, 5.38, 5.39 );
setScaleKey( spep_0-3 + 212, 1, 5.58, 5.63 );
setScaleKey( spep_0-3 + 213, 1, 5.58, 5.63 );

setScaleKey( spep_0-3 + 214, 1, 4.97, 4.98 );
setScaleKey( spep_0-3 + 217, 1, 4.77, 4.79 );

setScaleKey( spep_0-3 + 218, 1, 4.48, 4.49 );
setScaleKey( spep_0-3 + 221, 1, 4.19, 4.21 );

setScaleKey( spep_0-3 + 222, 1, 3.92, 3.94 );
setScaleKey( spep_0-3 + 225, 1, 3.65, 3.67 );

setScaleKey( spep_0-3 + 226, 1, 3.37, 3.4 );
setScaleKey( spep_0-3 + 229, 1, 3.11, 3.14 );

setScaleKey( spep_0-3 + 230, 1, 2.86, 2.89 );
setScaleKey( spep_0-3 + 232, 1, 2.61, 2.64 );
setScaleKey( spep_0-3 + 235, 1, 2.37, 2.39 );

setScaleKey( spep_0-3 + 236, 1, 2.13, 2.16 );
setScaleKey( spep_0-3 + 238, 1, 1.9, 1.93 );
setScaleKey( spep_0-3 + 240, 1, 1.68, 1.71 );
setScaleKey( spep_0-3 + 242, 1, 1.47, 1.5 );
setScaleKey( spep_0-3 + 244, 1, 1.27, 1.3 );
setScaleKey( spep_0-3 + 246, 1, 1.08, 1.11 );
setScaleKey( spep_0-3 + 248, 1, 0.91, 0.94 );
setScaleKey( spep_0-3 + 250, 1, 0.78, 0.8 );
setScaleKey( spep_0-3 + 252, 1, 0.66, 0.69 );
setScaleKey( spep_0-3 + 254, 1, 0.56, 0.58 );
setScaleKey( spep_0-3 + 256, 1, 0.48, 0.5 );
setScaleKey( spep_0-3 + 258, 1, 0.4, 0.42 );
setScaleKey( spep_0-3 + 260, 1, 0.34, 0.35 );
setScaleKey( spep_0-3 + 262, 1, 0.28, 0.29 );
setScaleKey( spep_0-3 + 264, 1, 0.23, 0.24 );
setScaleKey( spep_0-3 + 266, 1, 0.19, 0.2 );
setScaleKey( spep_0-3 + 268, 1, 0.15, 0.16 );
setScaleKey( spep_0-3 + 270, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 272, 1, 0.09, 0.1 );
setScaleKey( spep_0-3 + 274, 1, 0.07, 0.08 );
setScaleKey( spep_0-3 + 276, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 278, 1, 0.05, 0.05 );

setRotateKey( spep_0-3 + 208, 1, -30.3 );
setRotateKey( spep_0-3 + 210, 1, -30 );
setRotateKey( spep_0-3 + 212, 1, -29.7 );
setRotateKey( spep_0-3 + 213, 1, -29.7 );

setRotateKey( spep_0-3 + 214, 1, 79.4 );
setRotateKey( spep_0-3 + 217, 1, 79.7 );

setRotateKey( spep_0-3 + 218, 1, -28.8 );
setRotateKey( spep_0-3 + 221, 1, -28.5 );

setRotateKey( spep_0-3 + 222, 1, 80.6 );
setRotateKey( spep_0-3 + 225, 1, 80.9 );

setRotateKey( spep_0-3 + 226, 1, -27.6 );
setRotateKey( spep_0-3 + 229, 1, -27.4 );

setRotateKey( spep_0-3 + 230, 1, 92.7 );
setRotateKey( spep_0-3 + 232, 1, 93 );
setRotateKey( spep_0-3 + 235, 1, 93.2 );

setRotateKey( spep_0-3 + 236, 1, 61.2 );
setRotateKey( spep_0-3 + 238, 1, 39.7 );
setRotateKey( spep_0-3 + 240, 1, 28.8 );
setRotateKey( spep_0-3 + 242, 1, 24.9 );
setRotateKey( spep_0-3 + 244, 1, 24.6 );
setRotateKey( spep_0-3 + 246, 1, 18.6 );
setRotateKey( spep_0-3 + 248, 1, 12.9 );
setRotateKey( spep_0-3 + 250, 1, 7.5 );
setRotateKey( spep_0-3 + 252, 1, 2.4 );
setRotateKey( spep_0-3 + 254, 1, -2.3 );
setRotateKey( spep_0-3 + 256, 1, -6.8 );
setRotateKey( spep_0-3 + 258, 1, -11 );
setRotateKey( spep_0-3 + 260, 1, -14.9 );
setRotateKey( spep_0-3 + 262, 1, -18.6 );
setRotateKey( spep_0-3 + 264, 1, -21.9 );
setRotateKey( spep_0-3 + 266, 1, -24.9 );
setRotateKey( spep_0-3 + 268, 1, -27.7 );
setRotateKey( spep_0-3 + 270, 1, -30.1 );
setRotateKey( spep_0-3 + 272, 1, -32.3 );
setRotateKey( spep_0-3 + 274, 1, -34.1 );
setRotateKey( spep_0-3 + 276, 1, -35.7 );
setRotateKey( spep_0-3 + 278, 1, -37 );

--敵吹っ飛ぶ
SE018 = playSeVer2( spep_0 + 206, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 206, 1121, "",spep_0 + 320, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 206, SE019, 65 );
SE020 = playSeVer2( spep_0 + 206, 1183, "",spep_0 + 320, 0, 60, -1);

--終わり
dealDamage( spep_0 + 206 );
endPhase( spep_0 + 340 );
end