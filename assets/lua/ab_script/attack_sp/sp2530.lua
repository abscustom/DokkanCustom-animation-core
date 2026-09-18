--4025780:超サイヤ人ベジータ(GT)_超ウルトラ元気玉(復活カウンター)_エネミー側
--sp_effect_a2_00201
--sp2530

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

--エフェクト(味方)
SP_01 = 161426;  --ベジータアップ〜フィニッシュ  ef_001
SP_01r = 161429;  --ベジータアップ〜フィニッシュ  ef_001r


--SP_01r = 161429;  --ベジータアップ〜フィニッシュ  ef_001r
--SP_02r = 161430;  --ベジータアップ〜フィニッシュ ef_002r
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--ベジータアップ〜フィニッシュ(2104f)
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0, SP_01, 0, 1);

b1 = 410;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --ベジータアップ〜フィニッシュ  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 2110, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 2110, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 2110, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 2110, first_f, 255 );
--[[
first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --ベジータアップ〜フィニッシュ  ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 2110, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 2110, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 2110, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 2110, first_b, 255 );

KO = entryEffect( spep_0 + 2106, SP_03, 0x100, -1, 0, 0, 0 );  --KO  ef_001
setEffMoveKey( spep_0 + 2106, KO, 0, 0, 0 );
setEffMoveKey( spep_0 + 2300, KO, 0, 0, 0 );
setEffScaleKey( spep_0 + 2106, KO, -1.0, 1.0 );
setEffScaleKey( spep_0 + 2300, KO, -1.0, 1.0 );
setEffRotateKey( spep_0 + 2106, KO, 0 );
setEffRotateKey( spep_0 + 2300, KO, 0 );
setEffAlphaKey( spep_0 + 2106, KO, 255 );
setEffAlphaKey( spep_0 + 2300, KO, 255 );
]]
-- ** 音 ** --
-- ** SE ** --
--瓦礫音
SE001r = playSeVer2( spep_0 + 0, 1168, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001r, 33 );
setStartTimeMs( SE001r,  1833 );

--元気玉溜める
SE002r = playSeVer2( spep_0 + 35, 1397, "",spep_0 + 630, 30, 44, -1);
setSeVolumeByWorkId( spep_0 + 35,SE002r, 66 );
setStartTimeMs( SE002r,  1167 );
SE004r = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 630, 30, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004r, 63 );
SE005r = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 630, 30, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005r, 224 );
setPitch( spep_0 + 0, SE005r, -600 );
setTimeStretch( SE005r, 0.6, 30, 4 );
SE017 = playSeVer2( spep_0 + 410, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE017, 20 );
SE018 = playSeVer2( spep_0 + 438, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE018, 20 );
SE019 = playSeVer2( spep_0 + 466, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE019, 20 );
SE020 = playSeVer2( spep_0 + 494, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE020, 20 );
SE021 = playSeVer2( spep_0 + 522, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE021, 20 );
SE022 = playSeVer2( spep_0 + 550, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE022, 20 );
SE023 = playSeVer2( spep_0 + 578, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE023, 20 );
SE024 = playSeVer2( spep_0 + 606, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 606, SE024, 20 );
SE025 = playSeVer2( spep_0 + 634, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 634, SE025, 20 );
SE025_02 = playSeVer2( spep_0 + 662, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 662, SE025_02, 20 );

--環境音
SE003r = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 690, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003r, 20 );

--元気玉大きくなる
SE026 = playSeVer2( spep_0 + 692, 1312, "",spep_0 + 752, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 692, SE026, 76 );
SE027 = playSeVer2( spep_0 + 698, 1335, "", 0, 0, 0, -1);
setPitch( spep_0 + 698, SE027, -800 );
setTimeStretch( SE027, 0.47, 30, 4 );

--元気玉大きくなる２
SE028 = playSeVer2( spep_0 + 728, 1404, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE028, 120 );

--雲晴れる
--[[
SE028 = playSeVer2( spep_0 + 728, 1264, "",spep_0 + 884, 40, 86, -1);
setSeVolumeByWorkId( spep_0 + 728, SE028, 73 );
setStartTimeMs( SE028,  267 );
SE032 = playSeVer2( spep_0 + 748, 1307, "", 0, 0, 0, -1);
]]
--[[
SE030 = playSeVer2( spep_0 + 746, 1182, "",spep_0 + 806, 0, 42, -1);
SE031 = playSeVer2( spep_0 + 746, 1312, "",spep_0 + 808, 0, 30, -1);
SE033 = playSeVer2( spep_0 + 754, 1335, "", 0, 0, 0, -1);
]]
SE030 = playSeVer2( spep_0 + 740, 1405, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 740, SE030, 130 );

--元気玉溜める音アップ
SE034 = playSeVer2( spep_0 + 784, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE034, 40 );
SE035 = playSeVer2( spep_0 + 812, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 812, SE035, 40 );
SE036 = playSeVer2( spep_0 + 840, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 840, SE036, 40 );
SE037 = playSeVer2( spep_0 + 868, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 868, SE037, 40 );
SE038 = playSeVer2( spep_0 + 896, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 896, SE038, 40 );
SE039 = playSeVer2( spep_0 + 924, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924, SE039, 40 );
SE040 = playSeVer2( spep_0 + 952, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 952, SE040, 40 );
SE041 = playSeVer2( spep_0 + 980, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 980, SE041, 40 );

--宇宙
SE042 = playSeVer2( spep_0 + 1006, 1263, "", 0, 0, 0, -1);

--光出す
SE043 = playSeVer2( spep_0 + 1068, 1042, "", 0, 0, 0, -1);

--光飛んでくる
SE044 = playSeVer2( spep_0 + 1110, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1110, SE044, 69 );
SE045 = playSeVer2( spep_0 + 1110, 1278, "",spep_0 + 1308, 0, 92, -1);
SE046 = playSeVer2( spep_0 + 1118, 63, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1164, 1004, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 1170, 44, "", 0, 0, 0, -1);

--元気玉溜める音
SE049 = playSeVer2( spep_0 + 1210, 1397, "",spep_0 + 2048, 12, 46, -1);
setSeVolumeByWorkId( spep_0 + 1210, SE049, 69 );
setStartTimeMs( SE049,  583 );
SE050 = playSeVer2( spep_0 + 1218, 1181, "",spep_0 + 2048, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 1218, SE050, 71 );
SE051 = playSeVer2( spep_0 + 1217, 1396, "",spep_0 + 2048, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 1218, SE051, 200 );
setPitch( spep_0 + 1218, SE051, -600 );
setTimeStretch( SE051, 0.6, 30, 4 );
SE052 = playSeVer2( spep_0 + 1218, 1227, "", 0, 0, 0, -1);              
SE054 = playSeVer2( spep_0 + 1240, 1174, "", 0, 0, 0, -1);

--元気玉大きくなる音
SE053 = playSeVer2( spep_0 + 1246, 15, "",spep_0 + 1336, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 1246, SE053, 160 );
SE055 = playSeVer2( spep_0 + 1248, 44, "", 0, 0, 0, -1);

--振りかぶる
SE056 = playSeVer2( spep_0 + 1600, 1116, "",spep_0 + 1648, 0, 20, -1);
SE057 = playSeVer2( spep_0 + 1600, 1314, "",spep_0 + 1734, 0, 40, -1);
SE058 = playSeVer2( spep_0 + 1600, 1004, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 1600, 1117, "", 0, 0, 0, -1);

--元気玉投げる
SE060 = playSeVer2( spep_0 + 1696, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1696, SE060, 73 );
SE061 = playSeVer2( spep_0 + 1696, 1193, "",spep_0 + 1782, 0, 32, -1);  
SE062 = playSeVer2( spep_0 + 1696, 1278, "",spep_0 + 1806, 0, 42, -1);  
SE063 = playSeVer2( spep_0 + 1696, 1226, "",spep_0 + 2060, 0, 96, -1);

-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 2110, 0, 255, 255, 255, 255);  --白　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 1750 ; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE049, 0);
    stopSe( SP_dodge - 12, SE050, 0);
    stopSe( SP_dodge - 12, SE051, 0);
    stopSe( SP_dodge - 12, SE052, 0);
    stopSe( SP_dodge - 12, SE053, 0);
    stopSe( SP_dodge - 12, SE054, 0);
    stopSe( SP_dodge - 12, SE055, 0);
    stopSe( SP_dodge - 12, SE056, 0);
    stopSe( SP_dodge - 12, SE057, 0);
    stopSe( SP_dodge - 12, SE058, 0);
    stopSe( SP_dodge - 12, SE059, 0);
    stopSe( SP_dodge - 12, SE060, 0);
    stopSe( SP_dodge - 12, SE061, 0);
    stopSe( SP_dodge - 12, SE062, 0);
    stopSe( SP_dodge - 12, SE063, 0);
   
    pauseAll( SP_dodge, 67);   
    
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
a1 = 3;
setDisp( spep_0 + 1796 -a1, 1, 1);
setDisp( spep_0 + 1854 -a1, 1, 0);
changeAnime( spep_0 + 1796 -a1, 1, 6);

setMoveKey( spep_0 + 1796 -a1, 1, 11.7, 16.5 , 0 );
setMoveKey( spep_0 + 1800 -a1, 1, 11.7, 16.5 , 0 );
setMoveKey( spep_0 + 1802 -a1, 1, 11.7, 0.5 , 0 );
setMoveKey( spep_0 + 1804 -a1, 1, 11.7, 1.1 , 0 );
setMoveKey( spep_0 + 1806 -a1, 1, 11.7, 13.7 , 0 );
setMoveKey( spep_0 + 1808 -a1, 1, 11.7, 13.8 , 0 );
setMoveKey( spep_0 + 1810 -a1, 1, 11.7, 13.9 , 0 );
setMoveKey( spep_0 + 1812 -a1, 1, 11.7, 2 , 0 );
setMoveKey( spep_0 + 1814 -a1, 1, 11.7, -1.3 , 0 );
setMoveKey( spep_0 + 1816 -a1, 1, 11.7, 11.5 , 0 );
setMoveKey( spep_0 + 1818 -a1, 1, 11.7, 11.8 , 0 );
setMoveKey( spep_0 + 1820 -a1, 1, 11.7, 12 , 0 );
setMoveKey( spep_0 + 1822 -a1, 1, 11.7, 4.3 , 0 );
setMoveKey( spep_0 + 1824 -a1, 1, 11.7, 5 , 0 );
setMoveKey( spep_0 + 1825 -a1, 1, 11.7, 5 , 0 );
setMoveKey( spep_0 + 1826 -a1, 1, 15.7, 13.7 , 0 );
setMoveKey( spep_0 + 1828 -a1, 1, 11.5, 5.9 , 0 );
setMoveKey( spep_0 + 1830 -a1, 1, 11.5, 6.7 , 0 );
setMoveKey( spep_0 + 1832 -a1, 1, 15.5, -0.6 , 0 );
setMoveKey( spep_0 + 1834 -a1, 1, 15.2, 12.8 , 0 );
setMoveKey( spep_0 + 1836 -a1, 1, 14.8, 13.2 , 0 );
setMoveKey( spep_0 + 1838 -a1, 1, 14.5, 13.5 , 0 );
setMoveKey( spep_0 + 1840 -a1, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_0 + 1842 -a1, 1, 13.9, -0.3 , 0 );
setMoveKey( spep_0 + 1844 -a1, 1, 17.6, 6.1 , 0 );
setMoveKey( spep_0 + 1846 -a1, 1, 16.6, 11.8 , 0 );
setMoveKey( spep_0 + 1848 -a1, 1, 15.6, 4.7 , 0 );
setMoveKey( spep_0 + 1850 -a1, 1, 14.6, -0.3 , 0 );
setMoveKey( spep_0 + 1852 -a1, 1, 17.7, 13.3 , 0 );
setMoveKey( spep_0 + 1854 -a1, 1, 14.7, 14.9 , 0 );

setScaleKey( spep_0 + 1796 -a1, 1, 2, 2 );
setScaleKey( spep_0 + 1854 -a1, 1, 2, 2 );

setRotateKey( spep_0 + 1796 -a1, 1, 30 );
setRotateKey( spep_0 + 1854 -a1, 1, 30 );

setBlendColor( spep_0 + 1796 -a1, 1, 3, 0.0, 0.43, 0.58, 0.76);
setBlendColor( spep_0 + 1824 -a1, 1, 3, 0.0, 0.43, 0.58, 0.76);
setBlendColor( spep_0 + 1825 -a1, 1, 3, 0.0, 0.36, 0.51, 1.0);
setBlendColor( spep_0 + 1841 -a1, 1, 3, 0.0, 0.36, 0.51, 1.0);
setBlendColor( spep_0 + 1842 -a1, 1, 3, 0.0+0.4, 0.36+0.20, 0.51+0.20, 1.0);
setBlendColor( spep_0 + 1843 -a1, 1, 3, 0.0+0.4, 0.36+0.20, 0.51+0.20, 1.0);
setBlendColor( spep_0 + 1844 -a1, 1, 3, 0.98, 0.86, 0.80, 1.0);
setBlendColor( spep_0 + 1854 -a1, 1, 3, 0.98, 0.86, 0.80, 1.0);
setBlendColor( spep_0 + 1854, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
-- ** SE ** --
--地面激突
SE064 = playSeVer2( spep_0 + 1756, 1024, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_0 + 1756, 1188, "", 0, 0, 0, -1);

--爆発
SE066 = playSeVer2( spep_0 + 1794, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1794, SE066, 83 );
SE067 = playSeVer2( spep_0 + 1794, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1794, SE067, 83 );

--敵飲み込まれる
SE068 = playSeVer2( spep_0 + 1824, 1258, "",spep_0 + 1944, 22, 60, -1);
setSeVolumeByWorkId( spep_0 + 1824, SE068, 73 );

--元気玉地面飛んでいく
SE069 = playSeVer2( spep_0 + 1892, 1044, "",spep_0 + 2050, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 1892, SE069, 56 );            
SE070 = playSeVer2( spep_0 + 1894, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1894, SE070, 72 );            
SE071 = playSeVer2( spep_0 + 1906, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 1906, SE071, 158 );
setPitch( spep_0 + 1906, SE071, -300 );
setTimeStretch( SE071, 0.8, 30, 4 );
SE072 = playSeVer2( spep_0 + 1928, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 1928, SE072, 158 );           

--爆発する
SE073 = playSeVer2( spep_0 + 2010, 1144, "", 0, 24, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 2010, SE073, 55 );
setStartTimeMs( SE073,  250 );
SE074 = playSeVer2( spep_0 + 2020, 1157, "", 0, 0, 0, -1);              
SE075 = playSeVer2( spep_0 + 2020, 1069, "",spep_0 + 2050, 0, 16, -1);              
SE076 = playSeVer2( spep_0 + 2020, 63, "", 0, 0, 0, -1);                
SE077 = playSeVer2( spep_0 + 2060, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2060, SE077, 58 );
setPitch( spep_0 + 2060, SE077, -200 );
setTimeStretch( SE077, 0.87, 30, 4 );

-- ** ダメージ表示 ** --
--hideKoScreen();
dealDamage( spep_0 + 1984 );
--entryFade( spep_0 +2102, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_0 + 2108 -10 );
end