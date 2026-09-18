--4024300:超サイヤ人孫悟飯(少年期)_気弾必殺カウンター
--sp_effect_a1_00354

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
SP_01 = 159656;  --画面に迫る〜フィニッシュ　手前
SP_02 = 159657;  --画面に迫る〜フィニッシュ　奥
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
--spep_0=0;
--spep_1=0;


-- ** エフェクト等 ** --
eff_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 962, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 962, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 962, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 962, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 962, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 962, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 962, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 962, eff_b, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 116, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--拳握る
SE002 = playSeVer2( spep_0 + 38, 1330, "",spep_0 + 92, 0, 28, -1);

--カッ
SE003 = playSeVer2( spep_0 + 94, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE003, 68 );
SE004 = playSeVer2( spep_0 + 94, 1126, "",spep_0 + 176, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 94, SE004, 78 );

--気ダメ
SE005 = playSeVer2( spep_0 + 118, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 118, 1024, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 118, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE007, 63 );

--オーラ
SE008 = playSeVer2( spep_0 + 128, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 152, 1036, "", 0, 0, 0, -1);

--気弾飛んでくる
SE010 = playSeVer2( spep_0 + 166, 1175, "",spep_0 + 402, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 166, SE010, 60 );

--オーラ
SE011 = playSeVer2( spep_0 + 176, 1036, "", 0, 0, 0, -1);

--気弾飛んでくる
SE012 = playSeVer2( spep_0 + 198, 1177, "",spep_0 + 366, 0, 102, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 200, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE013, 63 );
SE014 = playSeVer2( spep_0 + 224, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE014, 63 );
SE015 = playSeVer2( spep_0 + 248, 1036, "", 0, 0, 0, -1);

--セリフカットイン
SE016_2 = playSeVer2( spep_0 + 266, 1018, "", 0, 0, 0, -1);

--オーラ
SE016 = playSeVer2( spep_0 + 272, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 296, 1036, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 320, 1036, "", 0, 0, 0, -1);

--気弾迫る
SE019 = playSeVer2( spep_0 + 348, 1213, "",spep_0 + 550, 12, 154, -1);
setStartTimeMs( SE019,  383 );

--オーラ
SE020 = playSeVer2( spep_0 + 344, 1036, "", 0, 0, 0, -1);

--気弾迫る
SE021 = playSeVer2( spep_0 + 346, 1226, "",spep_0 + 550, 0, 156, -1);
setSeVolumeByWorkId( spep_0 + 346, SE021, 148 );

--かめはめ波撃つ
SE022 = playSeVer2( spep_0+14 + 392, 1133, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0+14 + 392, 1022, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0+14 + 396, 1146, "", 0, 0, 0, -1);
setTimeStretch( SE024, 1.25, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 962, 0, 0, 0, 0, 255);       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 540; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    stopSe( SP_dodge - 12, SE024, 0 );

    
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
setDisp( spep_0+14 + 636, 1, 1 );
setDisp( spep_0 + 800, 1, 0 );

changeAnime( spep_0+14 + 636, 1, 101 );
changeAnime( spep_0+14 + 724, 1, 104 );
changeAnime( spep_0+14 + 734, 1, 101 );
changeAnime( spep_0+14 + 736, 1, 104 );
changeAnime( spep_0+14 + 768, 1, 106 );

setMoveKey( spep_0+14 + 636, 1, 231.8, 71.6 , 0 );
setMoveKey( spep_0+14 + 638, 1, 232.7, 69.7 , 0 );
setMoveKey( spep_0+14 + 640, 1, 235.1, 72 , 0 );
setMoveKey( spep_0+14 + 642, 1, 233.9, 74.5 , 0 );
setMoveKey( spep_0+14 + 644, 1, 233.8, 72.8 , 0 );
setMoveKey( spep_0+14 + 646, 1, 236.8, 75.6 , 0 );
setMoveKey( spep_0+14 + 648, 1, 234.1, 75 , 0 );
setMoveKey( spep_0+14 + 650, 1, 238.4, 74.4 , 0 );
setMoveKey( spep_0+14 + 652, 1, 236.6, 76.3 , 0 );
setMoveKey( spep_0+14 + 654, 1, 237.9, 73.3 , 0 );
setMoveKey( spep_0+14 + 656, 1, 238.7, 76.3 , 0 );
setMoveKey( spep_0+14 + 658, 1, 238.6, 77.6 , 0 );
setMoveKey( spep_0+14 + 660, 1, 239.4, 76.6 , 0 );
setMoveKey( spep_0+14 + 662, 1, 239.3, 76.5 , 0 );
setMoveKey( spep_0+14 + 664, 1, 241.1, 76.8 , 0 );
setMoveKey( spep_0+14 + 666, 1, 238.5, 77.9 , 0 );
setMoveKey( spep_0+14 + 668, 1, 242.7, 77.9 , 0 );
setMoveKey( spep_0+14 + 670, 1, 242.1, 75.8 , 0 );
setMoveKey( spep_0+14 + 672, 1, 245.7, 77.6 , 0 );
setMoveKey( spep_0+14 + 674, 1, 246.6, 79.4 , 0 );
setMoveKey( spep_0+14 + 676, 1, 245.3, 80.6 , 0 );
setMoveKey( spep_0+14 + 678, 1, 245.8, 79.4 , 0 );
setMoveKey( spep_0+14 + 680, 1, 245.7, 80.8 , 0 );
setMoveKey( spep_0+14 + 682, 1, 247.7, 80.5 , 0 );
setMoveKey( spep_0+14 + 684, 1, 248.5, 83.2 , 0 );
setMoveKey( spep_0+14 + 686, 1, 247.2, 79.4 , 0 );
setMoveKey( spep_0+14 + 688, 1, 249.3, 80.8 , 0 );
setMoveKey( spep_0+14 + 690, 1, 250.7, 84 , 0 );
setMoveKey( spep_0+14 + 692, 1, 249.4, 81.4 , 0 );
setMoveKey( spep_0+14 + 694, 1, 250.1, 83 , 0 );
setMoveKey( spep_0+14 + 696, 1, 252.4, 84.1 , 0 );
setMoveKey( spep_0+14 + 698, 1, 251.6, 84.4 , 0 );
setMoveKey( spep_0+14 + 700, 1, 254.7, 83.2 , 0 );
setMoveKey( spep_0+14 + 702, 1, 252.2, 86.5 , 0 );
setMoveKey( spep_0+14 + 704, 1, 252.2, 82.4 , 0 );
setMoveKey( spep_0+14 + 706, 1, 253.6, 86.3 , 0 );
setMoveKey( spep_0+14 + 708, 1, 254.3, 85.5 , 0 );
setMoveKey( spep_0+14 + 710, 1, 256.7, 85.9 , 0 );
setMoveKey( spep_0+14 + 712, 1, 255.8, 86 , 0 );
setMoveKey( spep_0+14 + 714, 1, 258.1, 86.6 , 0 );
setMoveKey( spep_0+14 + 716, 1, 255.3, 87.1 , 0 );
setMoveKey( spep_0+14 + 718, 1, 256.1, 88 , 0 );
setMoveKey( spep_0+14 + 720, 1, 257.9, 87.9 , 0 );
setMoveKey( spep_0+14 + 722, 1, 258.8, 88.4 , 0 );
setMoveKey( spep_0+14 + 723, 1, 258.8, 88.4 , 0 );

setMoveKey( spep_0+14 + 724, 1, 261.6, 90.7 , 0 );
setMoveKey( spep_0+14 + 726, 1, 261, 89.4 , 0 );
setMoveKey( spep_0+14 + 728, 1, 261.7, 88.1 , 0 );
setMoveKey( spep_0+14 + 730, 1, 263.3, 91.1 , 0 );
setMoveKey( spep_0+14 + 732, 1, 262.1, 87.6 , 0 );
setMoveKey( spep_0+14 + 733, 1, 262.1, 87.6 , 0 );

setMoveKey( spep_0+14 + 734, 1, 262.1, 88.6 , 0 );
setMoveKey( spep_0+14 + 735, 1, 262.1, 88.6 , 0 );

setMoveKey( spep_0+14 + 736, 1, -32.2, -15.9 , 0 );
setMoveKey( spep_0+14 + 738, 1, -25.4, -8 , 0 );
setMoveKey( spep_0+14 + 740, 1, -19.9, -2.1 , 0 );
setMoveKey( spep_0+14 + 742, 1, -13.1, 1.7 , 0 );
setMoveKey( spep_0+14 + 744, 1, -5.1, 9.8 , 0 );
setMoveKey( spep_0+14 + 746, 1, 1.2, 15.1 , 0 );
setMoveKey( spep_0+14 + 748, 1, 9.1, 20.7 , 0 );
setMoveKey( spep_0+14 + 750, 1, 15.3, 24.2 , 0 );
setMoveKey( spep_0+14 + 752, 1, 21.1, 35.4 , 0 );
setMoveKey( spep_0+14 + 754, 1, 31.6, 37.9 , 0 );
setMoveKey( spep_0+14 + 756, 1, 36.4, 44.1 , 0 );
setMoveKey( spep_0+14 + 758, 1, 44.7, 48.9 , 0 );
setMoveKey( spep_0+14 + 760, 1, 47.9, 58.3 , 0 );
setMoveKey( spep_0+14 + 762, 1, 55.1, 64.4 , 0 );
setMoveKey( spep_0+14 + 764, 1, 62.2, 68.8 , 0 );
setMoveKey( spep_0+14 + 766, 1, 70.4, 73.1 , 0 );
setMoveKey( spep_0+14 + 767, 1, 70.4, 73.1 , 0 );

setMoveKey( spep_0+14 + 768, 1, 75.5, 79.7 , 0 );
setMoveKey( spep_0+14 + 770, 1, 85.1, 85.1 , 0 );
setMoveKey( spep_0+14 + 772, 1, 89.7, 91.6 , 0 );
setMoveKey( spep_0+14 + 774, 1, 98.7, 96 , 0 );
setMoveKey( spep_0+14 + 776, 1, 103.1, 103 , 0 );
setMoveKey( spep_0+14 + 778, 1, 108.4, 108.6 , 0 );
setMoveKey( spep_0+14 + 780, 1, 115.8, 114.5 , 0 );
setMoveKey( spep_0+14 + 782, 1, 122.4, 120.4 , 0 );
setMoveKey( spep_0+14 + 784, 1, 132.2, 125.2 , 0 );
setMoveKey( spep_0+14 + 786, 1, 138, 133.3 , 0 );
setMoveKey( spep_0+14 + 788, 1, 142.5, 138.3 , 0 );
setMoveKey( spep_0+14 + 790, 1, 150.6, 143.2 , 0 );
setMoveKey( spep_0+14 + 792, 1, 156.9, 147.3 , 0 );
setMoveKey( spep_0+14 + 794, 1, 163.7, 154.9 , 0 );

setScaleKey( spep_0+14 + 636, 1, 0.32, 0.32 );
setScaleKey( spep_0+14 + 735, 1, 0.32, 0.32 );

setScaleKey( spep_0+14 + 736, 1, 1.66, 1.66 );
setScaleKey( spep_0+14 + 794, 1, 1.66, 1.66 );

setRotateKey( spep_0+14 + 636, 1, -24.5 );
setRotateKey( spep_0+14 + 735, 1, -24.5 );

setRotateKey( spep_0+14 + 736, 1, -35.7 );
setRotateKey( spep_0+14 + 767, 1, -35.7 );

setRotateKey( spep_0+14 + 768, 1, -79.7 );
setRotateKey( spep_0+14 + 770, 1, -77.5 );
setRotateKey( spep_0+14 + 772, 1, -75.2 );
setRotateKey( spep_0+14 + 774, 1, -72.9 );
setRotateKey( spep_0+14 + 776, 1, -70.6 );
setRotateKey( spep_0+14 + 778, 1, -68.4 );
setRotateKey( spep_0+14 + 780, 1, -66.1 );
setRotateKey( spep_0+14 + 782, 1, -63.8 );
setRotateKey( spep_0+14 + 784, 1, -61.5 );
setRotateKey( spep_0+14 + 786, 1, -59.3 );
setRotateKey( spep_0+14 + 788, 1, -57 );
setRotateKey( spep_0+14 + 790, 1, -54.7 );
setRotateKey( spep_0+14 + 792, 1, -52.4 );
setRotateKey( spep_0+14 + 794, 1, -50.2 );

--SE
--気弾跳ね返す
SE025 = playSeVer2( spep_0+14 + 508, 1226, "",spep_0 + 646, 0, 26, -1);
SE026 = playSeVer2( spep_0+14 + 530, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+14 + 530, SE026, 76 );
SE027 = playSeVer2( spep_0+14 + 530, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+14 + 530, SE027, 86 );
SE028 = playSeVer2( spep_0+14 + 530, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+14 + 530, SE028, 72 );

--気弾敵迫る
SE029 = playSeVer2( spep_0 + 606+14, 1161, "",spep_0 + 868, 0, 48, -1);
SE030 = playSeVer2( spep_0 + 606+14, 1211, "",spep_0 + 868, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 606+14, SE030, 148 );
SE031 = playSeVer2( spep_0 + 634+14, 1226, "",spep_0 + 868, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 634+14, SE031, 158 );

--気弾飲まれる
SE032 = playSeVer2( spep_0 + 762, 1021, "", 0, 0, 0, 0.6);

if (_IS_DEAD_ == 1) then

    --SE
    stopSe( spep_0 + 798, SE029, 0 );
    stopSe( spep_0 + 798, SE030, 0 );
    stopSe( spep_0 + 798, SE031, 0 );
    stopSe( spep_0 + 798, SE032, 0 );

    setDisp( spep_0+796, 1, 1);
    endPhase(spep_0+798);
    
else

--気弾飛んでいく
SE033 = playSeVer2( spep_0 + 796+14, 1307, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 798+14, 1145, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_0 + 806+14, 1305, "",spep_0 + 928, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 806+14, SE035, 72 );

--終わり
dealDamage( spep_0 + 796 );
endPhase( spep_0 + 918 );
end
