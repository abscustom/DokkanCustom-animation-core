--4022430:超サイヤ人4ゴジータ_必殺技カウンター
--sp_effect_b1_00174

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
SP_01 = 158715;  --画面に迫る〜フィニッシュ　手前
SP_02 = 158717;  --画面に迫る〜フィニッシュ　奥

--敵側
SP_01x = 158716;  --画面に迫る〜フィニッシュ　手前
SP_02x = 158718;  --画面に迫る〜フィニッシュ　奥

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

ENABLE_AUTO_TIME_STRETCH(0.8);

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


-- ** エフェクト等 ** --
eff_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 598, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 598, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 598, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 598, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 598, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 598, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 598, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 598, eff_b, 255 );

--SE
--瞬間移動１
--SE001 = playSeVer2( spep_0 + 4, 1245, "",spep_0 + 26, 0, 6, -1);
SE001 = playSeVer2( spep_0 + 4, 1245, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 4, SE001, 56 );
stopSe( spep_0 + 26, SE001, 6 );
--SE002 = playSeVer2( spep_0 + 4, 1235, "",spep_0 + 30, 0, 8, -1);
SE002 = playSeVer2( spep_0 + 4, 1235, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 4, SE002, 62 );
stopSe( spep_0 + 22, SE002, 8 );
--SE003 = playSeVer2( spep_0 + 6, 1109, "",spep_0 + 24, 0, 6, -1);
SE003 = playSeVer2( spep_0 + 6, 1109, "",0, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 79 );
stopSe( spep_0 + 18, SE003, 6 );

--瞬間移動２
--SE004 = playSeVer2( spep_0 + 18, 1109, "",spep_0 + 40, 0, 6, -1);
SE004 = playSeVer2( spep_0 + 18, 1109, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 86 );
stopSe( spep_0 + 34, SE004, 6 );
--SE005 = playSeVer2( spep_0 + 18, 1245, "",spep_0 + 38, 0, 4, -1);
SE005 = playSeVer2( spep_0 + 18, 1245, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 18, SE005, 61 );
stopSe( spep_0 + 34, SE005, 4 );
--SE006 = playSeVer2( spep_0 + 18, 1235, "",spep_0 + 42, 0, 6, -1);
SE006 = playSeVer2( spep_0 + 18, 1235, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 18, SE006, 48 );
stopSe( spep_0 + 36, SE006, 6 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 46; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );

    
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


--敵の動き
setDisp( spep_0-3 + 72, 1, 1);
setDisp( spep_0-1 + 100, 1, 0);

changeAnime( spep_0-3 + 72, 1, 100);

setMoveKey( spep_0-3 + 72, 1, 391.2, 254.9 , 0 );
setMoveKey( spep_0-3 + 74, 1, 329.6, 214.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, 268.1, 174.3 , 0 );
setMoveKey( spep_0-3 + 78, 1, 206.6, 134.1 , 0 );
setMoveKey( spep_0-3 + 80, 1, 194.6, 126.2 , 0 );
setMoveKey( spep_0-3 + 82, 1, 183.7, 119.1 , 0 );
setMoveKey( spep_0-3 + 84, 1, 174, 112.7 , 0 );
setMoveKey( spep_0-3 + 86, 1, 165.4, 107.1 , 0 );
setMoveKey( spep_0-3 + 88, 1, 158, 102.2 , 0 );
setMoveKey( spep_0-3 + 90, 1, 151.7, 98.1 , 0 );
setMoveKey( spep_0-3 + 92, 1, 146.5, 94.7 , 0 );
setMoveKey( spep_0-3 + 94, 1, 142.5, 92.1 , 0 );
setMoveKey( spep_0-3 + 96, 1, 139.7, 90.2 , 0 );
setMoveKey( spep_0-3 + 98, 1, 137.9, 89.1 , 0 );
setMoveKey( spep_0-1 + 100, 1, 137.4, 88.8 , 0 );

setScaleKey( spep_0-3 + 72, 1, 1.98, 1.98 );
setScaleKey( spep_0-1 + 100, 1, 1.98, 1.98 );

setRotateKey( spep_0-3 + 72, 1, 0 );
setRotateKey( spep_0-1 + 100, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 210, 1, 1);
setDisp( spep_0-1 + 248, 1, 0);

changeAnime( spep_0-3 + 210, 1, 104);

setMoveKey( spep_0-3 + 210, 1, 227.1, -35.8 , 0 );
setMoveKey( spep_0-3 + 212, 1, 176.8, -26.4 , 0 );
setMoveKey( spep_0-3 + 214, 1, 126.4, -16.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, 76.1, -7.5 , 0 );
setMoveKey( spep_0-3 + 218, 1, 70.4, -6.4 , 0 );
setMoveKey( spep_0-3 + 220, 1, 65.1, -5.4 , 0 );
setMoveKey( spep_0-3 + 222, 1, 60.2, -4.5 , 0 );
setMoveKey( spep_0-3 + 224, 1, 55.7, -3.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, 51.5, -2.8 , 0 );
setMoveKey( spep_0-3 + 228, 1, 47.6, -2.1 , 0 );
setMoveKey( spep_0-3 + 230, 1, 44.2, -1.4 , 0 );
setMoveKey( spep_0-3 + 232, 1, 41.1, -0.8 , 0 );
setMoveKey( spep_0-3 + 234, 1, 38.3, -0.3 , 0 );
setMoveKey( spep_0-3 + 236, 1, 36, 0.2 , 0 );
setMoveKey( spep_0-3 + 238, 1, 33.9, 0.6 , 0 );
setMoveKey( spep_0-3 + 240, 1, 32.3, 0.9 , 0 );
setMoveKey( spep_0-3 + 242, 1, 31, 1.1 , 0 );
setMoveKey( spep_0-3 + 244, 1, 30.1, 1.3 , 0 );
setMoveKey( spep_0-3 + 246, 1, 29.6, 1.4 , 0 );
setMoveKey( spep_0-1 + 248, 1, 29.4, 1.4 , 0 );

setScaleKey( spep_0-3 + 210, 1, 2.4, 2.4 );
setScaleKey( spep_0-1 + 248, 1, 2.4, 2.4 );

setRotateKey( spep_0-3 + 210, 1, -5 );
setRotateKey( spep_0-1 + 248, 1, -5 );

--敵の動き
setDisp( spep_0-3 + 390, 1, 1);
setDisp( spep_0-1 + 476, 1, 0);

changeAnime( spep_0-3 + 390, 1, 102);
changeAnime( spep_0-3 + 410, 1, 5);

setMoveKey( spep_0-3 + 390, 1, 343, -65.1 , 0 );
setMoveKey( spep_0-3 + 392, 1, 340, -64.5 , 0 );
setMoveKey( spep_0-3 + 394, 1, 337.4, -64 , 0 );
setMoveKey( spep_0-3 + 396, 1, 335, -63.6 , 0 );
setMoveKey( spep_0-3 + 398, 1, 333, -63.1 , 0 );
setMoveKey( spep_0-3 + 400, 1, 331.2, -62.8 , 0 );
setMoveKey( spep_0-3 + 402, 1, 329.8, -62.5 , 0 );
setMoveKey( spep_0-3 + 404, 1, 328.6, -62.3 , 0 );
setMoveKey( spep_0-3 + 406, 1, 327.7, -62.1 , 0 );
setMoveKey( spep_0-3 + 408, 1, 327.1, -62 , 0 );
setMoveKey( spep_0-3 + 409, 1, 327.1, -62 , 0 );

setMoveKey( spep_0-3 + 410, 1, 185, 88.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 176.4, 61.3 , 0 );
setMoveKey( spep_0-3 + 414, 1, 186.7, 86.4 , 0 );
setMoveKey( spep_0-3 + 416, 1, 215, 118.8 , 0 );
setMoveKey( spep_0-3 + 418, 1, 206.3, 118.7 , 0 );
setMoveKey( spep_0-3 + 420, 1, 212.7, 111.6 , 0 );
setMoveKey( spep_0-3 + 422, 1, 202.9, 111.5 , 0 );
setMoveKey( spep_0-3 + 424, 1, 211.2, 120 , 0 );
setMoveKey( spep_0-3 + 426, 1, 203, 120.1 , 0 );
setMoveKey( spep_0-3 + 428, 1, 209.8, 113.2 , 0 );
setMoveKey( spep_0-3 + 430, 1, 206, 117.2 , 0 );
setMoveKey( spep_0-3 + 432, 1, 201.6, 121.8 , 0 );
setMoveKey( spep_0-3 + 434, 1, 208.6, 115.3 , 0 );
setMoveKey( spep_0-3 + 436, 1, 205.1, 119.4 , 0 );
setMoveKey( spep_0-3 + 438, 1, 205, 120.3 , 0 );
setMoveKey( spep_0-3 + 440, 1, 207.1, 108.8 , 0 );
setMoveKey( spep_0-3 + 442, 1, 209.2, 97.3 , 0 );
setMoveKey( spep_0-3 + 444, 1, 211.4, 85.9 , 0 );
setMoveKey( spep_0-3 + 446, 1, 205, 68 , 0 );
setMoveKey( spep_0-3 + 448, 1, 203.8, 64.2 , 0 );
setMoveKey( spep_0-3 + 450, 1, 202.7, 60.7 , 0 );
setMoveKey( spep_0-3 + 452, 1, 201.6, 57.4 , 0 );
setMoveKey( spep_0-3 + 454, 1, 200.7, 54.5 , 0 );
setMoveKey( spep_0-3 + 456, 1, 199.8, 51.8 , 0 );
setMoveKey( spep_0-3 + 458, 1, 199, 49.3 , 0 );
setMoveKey( spep_0-3 + 460, 1, 198.3, 47.2 , 0 );
setMoveKey( spep_0-3 + 462, 1, 197.7, 45.2 , 0 );
setMoveKey( spep_0-3 + 464, 1, 197.2, 43.6 , 0 );
setMoveKey( spep_0-3 + 466, 1, 196.8, 42.2 , 0 );
setMoveKey( spep_0-3 + 468, 1, 196.5, 41.1 , 0 );
setMoveKey( spep_0-3 + 470, 1, 196.2, 40.3 , 0 );
setMoveKey( spep_0-3 + 472, 1, 196.1, 39.7 , 0 );
setMoveKey( spep_0-1 + 476, 1, 196, 39.4 , 0 );

setScaleKey( spep_0-3 + 390, 1, 3.8, 3.8 );
setScaleKey( spep_0-3 + 392, 1, 3.77, 3.77 );
setScaleKey( spep_0-3 + 394, 1, 3.74, 3.74 );
setScaleKey( spep_0-3 + 396, 1, 3.71, 3.71 );
setScaleKey( spep_0-3 + 398, 1, 3.69, 3.69 );
setScaleKey( spep_0-3 + 400, 1, 3.67, 3.67 );
setScaleKey( spep_0-3 + 402, 1, 3.65, 3.65 );
setScaleKey( spep_0-3 + 404, 1, 3.64, 3.64 );
setScaleKey( spep_0-3 + 406, 1, 3.63, 3.63 );
setScaleKey( spep_0-3 + 408, 1, 3.62, 3.62 );
setScaleKey( spep_0-3 + 409, 1, 3.62, 3.62 );

setScaleKey( spep_0-3 + 410, 1, 2.82, 2.82 );
setScaleKey( spep_0-3 + 412, 1, 3.84, 3.84 );
setScaleKey( spep_0-3 + 414, 1, 2.93, 2.93 );
setScaleKey( spep_0-3 + 416, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 418, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 420, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 422, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 424, 1, 1.86, 1.86 );
setScaleKey( spep_0-3 + 426, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 428, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 430, 1, 1.78, 1.78 );
setScaleKey( spep_0-3 + 432, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 434, 1, 1.75, 1.75 );
setScaleKey( spep_0-3 + 436, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 438, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 440, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 442, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 444, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 446, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 448, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 450, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 452, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 454, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 456, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 458, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 460, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 462, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 464, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 466, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 468, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 470, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 472, 1, 0.26, 0.26 );
setScaleKey( spep_0-1 + 476, 1, 0.25, 0.25 );

setRotateKey( spep_0-3 + 390, 1, -5 );
setRotateKey( spep_0-3 + 409, 1, -5 );

setRotateKey( spep_0-3 + 410, 1, 46 );
setRotateKey( spep_0-3 + 423, 1, 46 );
setRotateKey( spep_0-3 + 424, 1, 45.9 );
setRotateKey( spep_0-1 + 476, 1, 45.9 );

--SE
--瞬間移動３
--SE007 = playSeVer2( spep_0 + 32, 1109, "",spep_0 + 52, 0, 6, -1);
SE007 = playSeVer2( spep_0 + 32, 1109, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE007, 85 );
stopSe( spep_0 + 46, SE007, 6 );
--SE008 = playSeVer2( spep_0 + 32, 1245, "",spep_0 + 54, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 32, 1245, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 32, SE008, 58 );
stopSe( spep_0 + 46, SE008, 10 );
--SE009 = playSeVer2( spep_0 + 32, 1235, "",spep_0 + 56, 0, 6, -1);
SE009 = playSeVer2( spep_0 + 32, 1235, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 32, SE009, 52 );
stopSe( spep_0 + 50, SE009, 10 );

--瞬間移動４
SE010 = playSeVer2( spep_0 + 46, 1245, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 46, SE010, 70 );
SE011 = playSeVer2( spep_0 + 46, 1235, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 46, SE011, 54 );
SE012 = playSeVer2( spep_0 + 48, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE012, 86 );

--画面遷移
SE013 = playSeVer2( spep_0 + 70, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE013, 126 );

--構える
SE014 = playSeVer2( spep_0 + 90, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE014,  350 );

--手前に
SE015 = playSeVer2( spep_0 + 130, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE015,  117 );
setPitch( spep_0 + 130, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );
SE016 = playSeVer2( spep_0 + 126, 1189, "", 0, 0, 0, -1);
setPitch( spep_0 + 126, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );
SE017 = playSeVer2( spep_0 + 132, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 132, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--クラッカー発泡
SE018 = playSeVer2( spep_0 + 170, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE018, 146 );
setPitch( spep_0 + 170, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
setBandpassFilter( spep_0 + 170, SE018, 1212, 24000 );
--SE019 = playSeVer2( spep_0 + 176, 1030, "",spep_0 + 206, 0, 16, -1);
SE019 = playSeVer2( spep_0 + 170, 1030, "",0, 0, 0, -1);
stopSe( spep_0 + 190, SE019, 16 );

--クラッカー散る
SE020 = playSeVer2( spep_0 + 206, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE020, 114 );
setBandpassFilter( spep_0 + 206, SE020, 430, 24000 );
--SE021 = playSeVer2( spep_0 + 210, 1013, "",spep_0 + 222, 0, 4, -1);
SE021 = playSeVer2( spep_0 + 206, 1013, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE021, 119 );
setBandpassFilter( spep_0 + 206, SE021, 430, 24000 );
stopSe( spep_0 + 218, SE021, 4 );
SE022 = playSeVer2( spep_0 + 220, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE022, 119 );
setBandpassFilter( spep_0 + 220, SE022, 430, 24000 );
--SE023 = playSeVer2( spep_0 + 224, 1013, "",spep_0 + 234, 0, 4, -1);
SE023 = playSeVer2( spep_0 + 220, 1013, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE023, 129 );
setBandpassFilter( spep_0 + 220, SE023, 430, 24000 );
stopSe( spep_0 + 230, SE023, 4 );
SE024 = playSeVer2( spep_0 + 224, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE024, 85 );
setBandpassFilter( spep_0 + 224, SE024, 430, 24000 );
SE025 = playSeVer2( spep_0 + 226, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE025, 117 );
setBandpassFilter( spep_0 + 226, SE025, 430, 24000 );
--SE026 = playSeVer2( spep_0 + 230, 1013, "",spep_0 + 246, 0, 8, -1);
SE026 = playSeVer2( spep_0 + 226, 1013, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE026, 120 );
setBandpassFilter( spep_0 + 226, SE026, 430, 24000 );
stopSe( spep_0 + 238, SE026, 8 );
SE027 = playSeVer2( spep_0 + 236, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE027, 138 );
setBandpassFilter( spep_0 + 236, SE027, 430, 24000 );
--SE028 = playSeVer2( spep_0 + 240, 1013, "",spep_0 + 258, 0, 10, -1);
SE028 = playSeVer2( spep_0 + 236, 1013, "",0, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 236, SE028, 111 );
setBandpassFilter( spep_0 + 236, SE028, 430, 24000 );
stopSe( spep_0 + 248, SE028, 10 );
SE029 = playSeVer2( spep_0 + 240, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE029, 97 );
setBandpassFilter( spep_0 + 240, SE029, 430, 24000 );
SE030 = playSeVer2( spep_0 + 240, 1013, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE030, 111 );
setBandpassFilter( spep_0 + 240, SE030, 430, 24000 );
stopSe( spep_0 + 254, SE030, 8 );
SE031 = playSeVer2( spep_0 + 244, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE031, 68 );
setBandpassFilter( spep_0 + 244, SE031, 430, 24000 );
SE032 = playSeVer2( spep_0 + 244, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE032, 117 );
setBandpassFilter( spep_0 + 244, SE032, 430, 24000 );

--笑い転げる
--SE033 = playSeVer2( spep_0 + 248, 37, "",spep_0 + 276, 0, 10, -1);
SE033 = playSeVer2( spep_0 + 248, 37, "",spep_0 + 276, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 248, SE033, 81 );
stopSe( spep_0 + 266, SE033, 10 );
SE034 = playSeVer2( spep_0 + 248, 1003, "", 0, 0, 0, -1);
--SE035 = playSeVer2( spep_0 + 262, 37, "",spep_0 + 290, 0, 12, -1);
SE035 = playSeVer2( spep_0 + 262, 37, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 262, SE035, 79 );
stopSe( spep_0 + 278, SE035, 12 );
SE036 = playSeVer2( spep_0 + 262, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE036, 72 );
SE037 = playSeVer2( spep_0 + 272, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE037, 85 );
--SE038 = playSeVer2( spep_0 + 278, 37, "",spep_0 + 304, 0, 10, -1);
SE038 = playSeVer2( spep_0 + 278, 37, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 278, SE038, 79 );
stopSe( spep_0 + 294, SE038, 10 );
--SE039 = playSeVer2( spep_0 + 292, 37, "",spep_0 + 322, 0, 12, -1);
SE039 = playSeVer2( spep_0 + 292, 37, "",0, 0, 0, 0.6);
stopSe( spep_0 + 310, SE039, 12 );

--顔アップ
SE040 = playSeVer2( spep_0 + 344, 8, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 346, 1273, "", 0, 0, 0, -1);
--SE042 = playSeVer2( spep_0 + 346, 1264, "",spep_0 + 440, 0, 36, -1);
SE042 = playSeVer2( spep_0 + 346, 1264, "",0, 0, 0, -1);
stopSe( spep_0 + 404, SE042, 36 );

--蹴り
SE043 = playSeVer2( spep_0 + 408, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE043, 151 );
SE044 = playSeVer2( spep_0 + 414, 1187, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 414, 1109, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 414, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE046, 86 );

--敵飛んでいく
--SE047 = playSeVer2( spep_0 + 438, 1183, "",spep_0 + 486, 0, 8, -1);
SE047 = playSeVer2( spep_0 + 438, 1183, "",0, 0, 0, -1);
stopSe( spep_0 + 478, SE047, 8 );
--SE048 = playSeVer2( spep_0 + 438, 1121, "",spep_0 + 486, 0, 8, -1);
SE048 = playSeVer2( spep_0 + 438, 1121, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE048, 76 );
stopSe( spep_0 + 478, SE048, 8 );

if (_IS_DEAD_ == 1) then

    --SE
    stopSe( spep_0 + 478, SE047, 0 );
    stopSe( spep_0 + 478, SE048, 0 );

    setDisp( spep_0+476, 1, 1);
    endPhase(spep_0+478);
    
else

--爆発1
SE049 = playSeVer2( spep_0 + 478, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE049, 68 );
--SE050 = playSeVer2( spep_0 + 482, 1159, "",spep_0 + 540, 0, 36, -1);
SE050 = playSeVer2( spep_0 + 482, 1159, "",0, 0, 0, -1);
stopSe( spep_0 + 504, SE050, 36 );

--爆発2
SE051 = playSeVer2( spep_0 + 496, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE051, 66 );
SE052 = playSeVer2( spep_0 + 498, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE052, 77 );
--SE053 = playSeVer2( spep_0 + 492, 1159, "",spep_0 + 564, 0, 40, -1);
SE053 = playSeVer2( spep_0 + 498, 1159, "",0, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 498, SE053, 66 );
stopSe( spep_0 + 524, SE053, 40 );

--爆発3
SE054 = playSeVer2( spep_0 + 516, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE054, 74 );
SE055 = playSeVer2( spep_0 + 518, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE055, 64 );

--終わり
dealDamage( spep_0 + 476 );
endPhase( spep_0 + 588 );
end
