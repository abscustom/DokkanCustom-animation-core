--1026160:孫悟空_メテオスマッシュ
--sp_effect_b4_00274
--sp2514

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
SP_01 = 161494;	--開幕から敵をキックで蹴り飛ばす	ef_001
SP_02 = 161495;	--開幕から敵をキックで蹴り飛ばす（背景）	ef_002
SP_03 = 161496;	--悟空正面から敵をキック	ef_003
SP_04 = 161497;	--悟空正面から敵をキック（背景）	ef_004
SP_05 = 161498;	--画面のオーラ割れカードカットイン	ef_005
SP_06 = 161499;	--正面にかめはめ波を放つ	ef_006
SP_07 = 161500;	--正面にかめはめ波を放つ（背景）	ef_007

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕から敵をキックで蹴り飛ばす(326F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 326, 0x100, -1, 0, 0, 0 );  --開幕から敵をキックで蹴り飛ばす	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 326, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 326, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 326, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 326 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 326 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 326, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 326, 0x80, -1, 0, 0, 0 );  --開幕から敵をキックで蹴り飛ばす（背景）	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 326, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 326, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 326, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 326 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 326 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 326, first_b, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1003, "", 0, 0, 0, -1);

--気ダメ
SE003 = playSeVer2( spep_0 + 40, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE003, 126 );
SE004 = playSeVer2( spep_0 + 40, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 89 );
SE005 = playSeVer2( spep_0 + 48, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );

--オーラ
SE006 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 62, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 86, SE007, -300 );
setTimeStretch( SE007, 0.8, 30, 4 );
SE008 = playSeVer2( spep_0 + 86, 1181, "",spep_0 + 254, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 86, SE008, 200 );
SE010 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 110, SE010, -300 );
setTimeStretch( SE010, 0.8, 30, 4 );
SE012 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 134, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );
SE015 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 158, SE015, -300 );
setTimeStretch( SE015, 0.8, 30, 4 );
SE016 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 182, SE016, -300 );
setTimeStretch( SE016, 0.8, 30, 4 );
SE017 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 206, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 230, SE018, -300 );
setTimeStretch( SE018, 0.8, 30, 4 );

--瓦礫音
SE009 = playSeVer2( spep_0 + 172, 1168, "",spep_0 + 274, 18, 40, -1);
setSeVolumeByWorkId( spep_0 + 172, SE009, 74 );
setStartTimeMs( SE009,  1283 );

--爆風
SE011 = playSeVer2( spep_0 + 118, 1188, "", 0, 34, 0, -1);

--気が立ち上る
SE013 = playSeVer2( spep_0 + 144, 1284, "",spep_0 + 220, 0, 36, 0.5);
SE014 = playSeVer2( spep_0 + 144, 1312, "", 0, 0, 0, -1);

--突っ込んでくる
SE019 = playSeVer2( spep_0 + 230, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 230, 9, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 230, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE021, 65 );
SE022 = playSeVer2( spep_0 + 232, 1172, "",spep_0 + 288, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 232, SE022, 67 );
setPitch( spep_0 + 232, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 326 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 256; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 276, 1, 1 );
--setDisp( spep_0 -1 + 326, 1, 0 );
changeAnime( spep_0 -1 + 276, 1, 104 );
changeAnime( spep_0 -1 + 292, 1, 108 );
changeAnime( spep_0 -1 + 312, 1, 106 );

setMoveKey( spep_0 -1 + 276, 1, 136.7, -38.2 , 0 );
setMoveKey( spep_0 -1 + 291, 1, 136.7, -38.2 , 0 );--

setMoveKey( spep_0 -1 + 292, 1, 144, 1.6 , 0 );
setMoveKey( spep_0 -1 + 293, 1, 144, 1.6 , 0 );
setMoveKey( spep_0 -1 + 294, 1, 223.6, -138.1 , 0 );
setMoveKey( spep_0 -1 + 295, 1, 223.6, -138.1 , 0 );
setMoveKey( spep_0 -1 + 296, 1, 232.6, -113.1 , 0 );
setMoveKey( spep_0 -1 + 297, 1, 232.6, -113.1 , 0 );
setMoveKey( spep_0 -1 + 298, 1, 219.6, -165.1 , 0 );
setMoveKey( spep_0 -1 + 299, 1, 219.6, -165.1 , 0 );
setMoveKey( spep_0 -1 + 300, 1, 212.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 301, 1, 212.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 302, 1, 233.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 303, 1, 233.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 304, 1, 226.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 305, 1, 226.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 306, 1, 225.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 307, 1, 225.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 308, 1, 198, -82.8 , 0 );
setMoveKey( spep_0 -1 + 309, 1, 198, -82.8 , 0 );
setMoveKey( spep_0 -1 + 310, 1, 173.7, -53.7 , 0 );
setMoveKey( spep_0 -1 + 311, 1, 173.7, -53.7 , 0 );--
setMoveKey( spep_0 -1 + 312, 1, 134.2, -25.5 , 0 );
setMoveKey( spep_0 -1 + 313, 1, 134.2, -25.5 , 0 );
setMoveKey( spep_0 -1 + 314, 1, 126.5, -8.4 , 0 );
setMoveKey( spep_0 -1 + 316, 1, 124.2, -2.7 , 0 );
setMoveKey( spep_0 -1 + 318, 1, 124.8, -2.7 , 0 );
setMoveKey( spep_0 -1 + 320, 1, 125.8, -2.7 , 0 );
setMoveKey( spep_0 -1 + 322, 1, 127.2, -2.7 , 0 );
setMoveKey( spep_0 -1 + 324, 1, 129.5, -2.7 , 0 );
setMoveKey( spep_0 -1 + 326, 1, 132.5, -2.7 , 0 );

setScaleKey( spep_0 -1 + 276, 1, 1.59, 1.59 );
setScaleKey( spep_0 -1 + 291, 1, 1.59, 1.59 );--
setScaleKey( spep_0 -1 + 292, 1, 1.69, 1.69 );
setScaleKey( spep_0 -1 + 293, 1, 1.69, 1.69 );
setScaleKey( spep_0 -1 + 294, 1, 2.7, 2.7 );
setScaleKey( spep_0 -1 + 307, 1, 2.7, 2.7 );
setScaleKey( spep_0 -1 + 308, 1, 2.33, 2.33 );
setScaleKey( spep_0 -1 + 309, 1, 2.33, 2.33 );
setScaleKey( spep_0 -1 + 310, 1, 2.05, 2.05 );
setScaleKey( spep_0 -1 + 311, 1, 2.05, 2.05 );--
setScaleKey( spep_0 -1 + 312, 1, 1.74, 1.74 );
setScaleKey( spep_0 -1 + 313, 1, 1.74, 1.74 );
setScaleKey( spep_0 -1 + 314, 1, 1.62, 1.62 );
setScaleKey( spep_0 -1 + 316, 1, 1.59, 1.59 );
setScaleKey( spep_0 -1 + 326, 1, 1.59, 1.59 );

setRotateKey( spep_0 -1 + 276, 1, 11 );
setRotateKey( spep_0 -1 + 291, 1, 11 );--
setRotateKey( spep_0 -1 + 292, 1, 5 );
setRotateKey( spep_0 -1 + 311, 1, 5 );--
setRotateKey( spep_0 -1 + 312, 1, -25.7 );
setRotateKey( spep_0 -1 + 326, 1, -25.7 );

setAlphaKey( spep_0 -1 + 276, 1, 255 );
--setAlphaKey( spep_0 -1 + 326, 1, 255 );

-- ** 音 ** --
SE029 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE029, 63 );
setPitch( spep_0 + 318, SE029, -300 );
setTimeStretch( SE029, 0.8, 30, 4 );

--キック
SE023 = playSeVer2( spep_0 + 280, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 286, 1359, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 288, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 288, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 316, 1278, "",spep_0 + 408, 0, 24, -1);
SE028 = playSeVer2( spep_0 + 316, 1314, "",spep_0 + 408, 0, 24, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 326;


------------------------------------------------------
-- 悟空正面から敵をキック(362F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --悟空正面から敵をキック ef_003
setEffMoveKey( spep_1 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, move_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 360, move_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_f, 0 );
setEffRotateKey( spep_1 + 360, move_f, 0 );
setEffAlphaKey( spep_1 + 0, move_f, 255 );
setEffAlphaKey( spep_1 + 360 -2, move_f, 255 );
setEffAlphaKey( spep_1 + 360 -1, move_f, 255 );
setEffAlphaKey( spep_1 + 360, move_f, 0 );

move_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --悟空正面から敵をキック（背景）  ef_004
setEffMoveKey( spep_1 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, move_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 360, move_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_b, 0 );
setEffRotateKey( spep_1 + 360, move_b, 0 );
setEffAlphaKey( spep_1 + 0, move_b, 255 );
setEffAlphaKey( spep_1 + 360 -2, move_b, 255 );
setEffAlphaKey( spep_1 + 360 -1, move_b, 255 );
setEffAlphaKey( spep_1 + 360, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -1 + 18, 1, 0 );
changeAnime( spep_1 + 0, 1, 107 );

setMoveKey( spep_1 + 0, 1, 147.6, 8.1 , 0 );
setMoveKey( spep_1 -1 + 2, 1, 153.1, 5.1 , 0 );
setMoveKey( spep_1 -1 + 4, 1, 172.6, -3.7 , 0 );
setMoveKey( spep_1 -1 + 6, 1, 211.8, -17.7 , 0 );
setMoveKey( spep_1 -1 + 8, 1, 278.3, -36.3 , 0 );
setMoveKey( spep_1 -1 + 10, 1, 383.3, -58.4 , 0 );
setMoveKey( spep_1 -1 + 12, 1, 544, -80.6 , 0 );
setMoveKey( spep_1 -1 + 14, 1, 773.2, -109 , 0 );
setMoveKey( spep_1 -1 + 17, 1, 1104.1, -123.1 , 0 );
setMoveKey( spep_1 -1 + 18, 1, 1104.1, -123.1 , 0 );

setScaleKey( spep_1 + 0, 1, 2.78, 2.78 );
setScaleKey( spep_1 -1 + 2, 1, 2.82, 2.82 );
setScaleKey( spep_1 -1 + 4, 1, 2.94, 2.94 );
setScaleKey( spep_1 -1 + 6, 1, 3.17, 3.17 );
setScaleKey( spep_1 -1 + 8, 1, 3.52, 3.52 );
setScaleKey( spep_1 -1 + 10, 1, 4.04, 4.04 );
setScaleKey( spep_1 -1 + 12, 1, 4.77, 4.77 );
setScaleKey( spep_1 -1 + 14, 1, 5.79, 5.79 );
setScaleKey( spep_1 -1 + 17, 1, 7.17, 7.17 );
setScaleKey( spep_1 -1 + 18, 1, 7.17, 7.17 );

setRotateKey( spep_1 + 0, 1, -34.2 );
setRotateKey( spep_1 -1 + 2, 1, -34.3 );
setRotateKey( spep_1 -1 + 8, 1, -34.3 );
setRotateKey( spep_1 -1 + 10, 1, -34.4 );
setRotateKey( spep_1 -1 + 12, 1, -34.6 );
setRotateKey( spep_1 -1 + 14, 1, -34.8 );
setRotateKey( spep_1 -1 + 17, 1, -35 );
setRotateKey( spep_1 -1 + 18, 1, -35 );

--setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 -1 + 18, 1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 56, 1, 1 );
setDisp( spep_1 -1 + 96, 1, 0 );
changeAnime( spep_1 -1 + 56, 1, 108 );
changeAnime( spep_1 -1 + 72, 1, 106 );

setMoveKey( spep_1 -1 + 56, 1, 183.2, -141 , 0 );
setMoveKey( spep_1 -1 + 57, 1, 183.2, -141 , 0 );
setMoveKey( spep_1 -1 + 58, 1, 175, -124.9 , 0 );
setMoveKey( spep_1 -1 + 59, 1, 175, -124.9 , 0 );
setMoveKey( spep_1 -1 + 60, 1, 163.5, -104.1 , 0 );
setMoveKey( spep_1 -1 + 61, 1, 163.5, -104.1 , 0 );
setMoveKey( spep_1 -1 + 62, 1, 148.4, -77.1 , 0 );
setMoveKey( spep_1 -1 + 63, 1, 148.4, -77.1 , 0 );
setMoveKey( spep_1 -1 + 64, 1, 129.8, -43.3 , 0 );
setMoveKey( spep_1 -1 + 65, 1, 129.8, -43.3 , 0 );
setMoveKey( spep_1 -1 + 66, 1, 109.2, -3.3 , 0 );
setMoveKey( spep_1 -1 + 67, 1, 109.2, -3.3 , 0 );
setMoveKey( spep_1 -1 + 68, 1, 89.3, 40.4 , 0 );
setMoveKey( spep_1 -1 + 69, 1, 89.3, 40.4 , 0 );
setMoveKey( spep_1 -1 + 70, 1, 74.8, 83 , 0 );
setMoveKey( spep_1 -1 + 71, 1, 74.8, 83 , 0 );--
setMoveKey( spep_1 -1 + 72, 1, 72.2, 93.3 , 0 );
setMoveKey( spep_1 -1 + 73, 1, 72.2, 93.3 , 0 );
setMoveKey( spep_1 -1 + 74, 1, 60.8, 10.2 , 0 );
setMoveKey( spep_1 -1 + 75, 1, 60.8, 10.2 , 0 );
setMoveKey( spep_1 -1 + 76, 1, 66.8, 124.7 , 0 );
setMoveKey( spep_1 -1 + 77, 1, 66.8, 124.7 , 0 );
setMoveKey( spep_1 -1 + 78, 1, 94.1, 39 , 0 );
setMoveKey( spep_1 -1 + 79, 1, 94.1, 39 , 0 );
setMoveKey( spep_1 -1 + 80, 1, 114.8, 144.9 , 0 );
setMoveKey( spep_1 -1 + 81, 1, 114.8, 144.9 , 0 );
setMoveKey( spep_1 -1 + 82, 1, 124.8, 98.5 , 0 );
setMoveKey( spep_1 -1 + 83, 1, 124.8, 98.5 , 0 );
setMoveKey( spep_1 -1 + 84, 1, 164.1, 175.9 , 0 );
setMoveKey( spep_1 -1 + 86, 1, 200.9, 168.9 , 0 );
setMoveKey( spep_1 -1 + 88, 1, 243.1, 229.7 , 0 );
setMoveKey( spep_1 -1 + 90, 1, 286.7, 292.2 , 0 );
setMoveKey( spep_1 -1 + 92, 1, 325.9, 330.3 , 0 );
setMoveKey( spep_1 -1 + 94, 1, 378.5, 406 , 0 );
setMoveKey( spep_1 -1 + 96, 1, 378.5, 406 , 0 );

setScaleKey( spep_1 -1 + 56, 1, 9.57, 9.57 );
setScaleKey( spep_1 -1 + 57, 1, 9.57, 9.57 );
setScaleKey( spep_1 -1 + 58, 1, 9.55, 9.55 );
setScaleKey( spep_1 -1 + 59, 1, 9.55, 9.55 );
setScaleKey( spep_1 -1 + 60, 1, 9.47, 9.47 );
setScaleKey( spep_1 -1 + 61, 1, 9.47, 9.47 );
setScaleKey( spep_1 -1 + 62, 1, 9.24, 9.24 );
setScaleKey( spep_1 -1 + 63, 1, 9.24, 9.24 );
setScaleKey( spep_1 -1 + 64, 1, 8.79, 8.79 );
setScaleKey( spep_1 -1 + 65, 1, 8.79, 8.79 );
setScaleKey( spep_1 -1 + 66, 1, 8.04, 8.04 );
setScaleKey( spep_1 -1 + 67, 1, 8.04, 8.04 );
setScaleKey( spep_1 -1 + 68, 1, 6.93, 6.93 );
setScaleKey( spep_1 -1 + 69, 1, 6.93, 6.93 );
setScaleKey( spep_1 -1 + 70, 1, 5.38, 5.38 );
setScaleKey( spep_1 -1 + 71, 1, 5.38, 5.38 );--
setScaleKey( spep_1 -1 + 72, 1, 2.73, 2.73 );
setScaleKey( spep_1 -1 + 73, 1, 2.73, 2.73 );
setScaleKey( spep_1 -1 + 74, 1, 2.71, 2.71 );
setScaleKey( spep_1 -1 + 75, 1, 2.71, 2.71 );
setScaleKey( spep_1 -1 + 76, 1, 2.67, 2.67 );
setScaleKey( spep_1 -1 + 77, 1, 2.67, 2.67 );
setScaleKey( spep_1 -1 + 78, 1, 2.59, 2.59 );
setScaleKey( spep_1 -1 + 79, 1, 2.59, 2.59 );
setScaleKey( spep_1 -1 + 80, 1, 2.49, 2.49 );
setScaleKey( spep_1 -1 + 81, 1, 2.49, 2.49 );
setScaleKey( spep_1 -1 + 82, 1, 2.35, 2.35 );
setScaleKey( spep_1 -1 + 84, 1, 2.35, 2.35 );
setScaleKey( spep_1 -1 + 84, 1, 2.19, 2.19 );
setScaleKey( spep_1 -1 + 86, 1, 2, 2 );
setScaleKey( spep_1 -1 + 88, 1, 1.78, 1.78 );
setScaleKey( spep_1 -1 + 90, 1, 1.52, 1.52 );
setScaleKey( spep_1 -1 + 92, 1, 1.24, 1.24 );
setScaleKey( spep_1 -1 + 94, 1, 0.93, 0.93 );
setScaleKey( spep_1 -1 + 96, 1, 0.93, 0.93 );

setRotateKey( spep_1 -1 + 56, 1, -17.1 );
setRotateKey( spep_1 -1 + 71, 1, -17.1 );--
setRotateKey( spep_1 -1 + 72, 1, -62 );
setRotateKey( spep_1 -1 + 73, 1, -62 );
setRotateKey( spep_1 -1 + 74, 1, -61.7 );
setRotateKey( spep_1 -1 + 75, 1, -61.7 );
setRotateKey( spep_1 -1 + 76, 1, -60.8 );
setRotateKey( spep_1 -1 + 77, 1, -60.8 );
setRotateKey( spep_1 -1 + 78, 1, -59.4 );
setRotateKey( spep_1 -1 + 79, 1, -59.4 );
setRotateKey( spep_1 -1 + 80, 1, -57.3 );
setRotateKey( spep_1 -1 + 81, 1, -57.3 );
setRotateKey( spep_1 -1 + 82, 1, -54.6 );
setRotateKey( spep_1 -1 + 83, 1, -54.6 );
setRotateKey( spep_1 -1 + 84, 1, -51.4 );
setRotateKey( spep_1 -1 + 86, 1, -47.6 );
setRotateKey( spep_1 -1 + 88, 1, -43.2 );
setRotateKey( spep_1 -1 + 90, 1, -38.2 );
setRotateKey( spep_1 -1 + 92, 1, -32.6 );
setRotateKey( spep_1 -1 + 94, 1, -26.4 );
setRotateKey( spep_1 -1 + 96, 1, -26.4 );

setAlphaKey( spep_1 -1 + 56, 1, 255 );
setAlphaKey( spep_1 -1 + 96, 1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 272, 1, 1 );
setDisp( spep_1 -1 + 361, 1, 0 );
changeAnime( spep_1 -1 + 272, 1, 106 );
changeAnime( spep_1 -1 + 288, 1, 108 );

setMoveKey( spep_1 -1 + 272, 1, 507.1, -27.3 , 0 );
setMoveKey( spep_1 -1 + 274, 1, 500.3, -27.3 , 0 );
setMoveKey( spep_1 -1 + 276, 1, 480, -27.3 , 0 );
setMoveKey( spep_1 -1 + 278, 1, 446.1, -27.3 , 0 );
setMoveKey( spep_1 -1 + 280, 1, 398.6, -27.3 , 0 );
setMoveKey( spep_1 -1 + 282, 1, 337.6, -27.3 , 0 );
setMoveKey( spep_1 -1 + 284, 1, 263.1, -27.3 , 0 );
setMoveKey( spep_1 -1 + 286, 1, 175, -27.3 , 0 );
setMoveKey( spep_1 -1 + 287, 1, 175, -27.3 , 0 );--
setMoveKey( spep_1 -1 + 288, 1, 124.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 289, 1, 124.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 290, 1, 136.6, 31.3 , 0 );
setMoveKey( spep_1 -1 + 291, 1, 136.6, 31.3 , 0 );
setMoveKey( spep_1 -1 + 292, 1, 126.6, -30.9 , 0 );
setMoveKey( spep_1 -1 + 293, 1, 126.6, -30.9 , 0 );
setMoveKey( spep_1 -1 + 294, 1, 128.6, 18.9 , 0 );
setMoveKey( spep_1 -1 + 295, 1, 128.6, 18.9 , 0 );
setMoveKey( spep_1 -1 + 296, 1, 146.6, -21.3 , 0 );
setMoveKey( spep_1 -1 + 297, 1, 146.6, -21.3 , 0 );
setMoveKey( spep_1 -1 + 298, 1, 152.7, 0.4 , 0 );
setMoveKey( spep_1 -1 + 299, 1, 152.7, 0.4 , 0 );
setMoveKey( spep_1 -1 + 300, 1, 154.7, 18.2 , 0 );
setMoveKey( spep_1 -1 + 301, 1, 154.7, 18.2 , 0 );
setMoveKey( spep_1 -1 + 302, 1, 154.7, 16 , 0 );
setMoveKey( spep_1 -1 + 303, 1, 154.7, 16 , 0 );
setMoveKey( spep_1 -1 + 304, 1, 154.7, 15.8 , 0 );
setMoveKey( spep_1 -1 + 305, 1, 154.7, 15.8 , 0 );
setMoveKey( spep_1 -1 + 306, 1, 159.7, 22.6 , 0 );
setMoveKey( spep_1 -1 + 307, 1, 159.7, 22.6 , 0 );
setMoveKey( spep_1 -1 + 308, 1, 165.8, 24.3 , 0 );
setMoveKey( spep_1 -1 + 309, 1, 165.8, 24.3 , 0 );
setMoveKey( spep_1 -1 + 310, 1, 168.7, 29 , 0 );
setMoveKey( spep_1 -1 + 311, 1, 168.7, 29 , 0 );
setMoveKey( spep_1 -1 + 312, 1, 172.3, 32.1 , 0 );
setMoveKey( spep_1 -1 + 313, 1, 172.3, 32.1 , 0 );
setMoveKey( spep_1 -1 + 314, 1, 175, 34 , 0 );
setMoveKey( spep_1 -1 + 315, 1, 175, 34 , 0 );
setMoveKey( spep_1 -1 + 316, 1, 176.4, 34.2 , 0 );
setMoveKey( spep_1 -1 + 317, 1, 176.4, 34.2 , 0 );
setMoveKey( spep_1 -1 + 318, 1, 176.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 319, 1, 176.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 320, 1, 173.9, 27 , 0 );
setMoveKey( spep_1 -1 + 321, 1, 173.9, 27 , 0 );
setMoveKey( spep_1 -1 + 322, 1, 171.6, 21.9 , 0 );
setMoveKey( spep_1 -1 + 323, 1, 171.6, 21.9 , 0 );
setMoveKey( spep_1 -1 + 324, 1, 171.3, 19.7 , 0 );
setMoveKey( spep_1 -1 + 325, 1, 171.3, 19.7 , 0 );
setMoveKey( spep_1 -1 + 326, 1, 172.8, 19.9 , 0 );
setMoveKey( spep_1 -1 + 327, 1, 172.8, 19.9 , 0 );
setMoveKey( spep_1 -1 + 328, 1, 175.5, 21.8 , 0 );
setMoveKey( spep_1 -1 + 329, 1, 175.5, 21.8 , 0 );
setMoveKey( spep_1 -1 + 330, 1, 183, 81.2 , 0 );
setMoveKey( spep_1 -1 + 331, 1, 183, 81.2 , 0 );
setMoveKey( spep_1 -1 + 332, 1, 168.9, -16.9 , 0 );
setMoveKey( spep_1 -1 + 333, 1, 168.9, -16.9 , 0 );
setMoveKey( spep_1 -1 + 334, 1, 158.9, 41.1 , 0 );
setMoveKey( spep_1 -1 + 335, 1, 158.9, 41.1 , 0 );
setMoveKey( spep_1 -1 + 336, 1, 190.9, -2.9 , 0 );
setMoveKey( spep_1 -1 + 337, 1, 190.9, -2.9 , 0 );
setMoveKey( spep_1 -1 + 338, 1, 184.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 339, 1, 184.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 340, 1, 178.9, 25.1 , 0 );
setMoveKey( spep_1 -1 + 341, 1, 178.9, 25.1 , 0 );
setMoveKey( spep_1 -1 + 342, 1, 172.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 343, 1, 172.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 344, 1, 176.9, 15.1 , 0 );
setMoveKey( spep_1 -1 + 345, 1, 176.9, 15.1 , 0 );
setMoveKey( spep_1 -1 + 346, 1, 173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 347, 1, 173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 348, 1, 175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 349, 1, 175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 350, 1, 176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 351, 1, 176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 352, 1, 172.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 353, 1, 172.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 354, 1, 173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 355, 1, 173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 356, 1, 175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 357, 1, 175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 358, 1, 176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 359, 1, 176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 360, 1, 172.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 361, 1, 172.9, 19.1 , 0 );
--setMoveKey( spep_1 -1 + 362, 1, 173.9, 22.1 , 0 );
--setMoveKey( spep_1 -1 + 363, 1, 173.9, 22.1 , 0 );

setScaleKey( spep_1 -1 + 272, 1, 2.02, 2.02 );
setScaleKey( spep_1 -1 + 287, 1, 2.02, 2.02 );--
setScaleKey( spep_1 -1 + 288, 1, 2.37, 2.37 );
setScaleKey( spep_1 -1 + 361, 1, 2.37, 2.37 );

setRotateKey( spep_1 -1 + 272, 1, 0 );
setRotateKey( spep_1 -1 + 287, 1, 0 );--
setRotateKey( spep_1 -1 + 288, 1, -12 );
setRotateKey( spep_1 -1 + 289, 1, -12 );
setRotateKey( spep_1 -1 + 290, 1, -11.9 );
setRotateKey( spep_1 -1 + 291, 1, -11.9 );
setRotateKey( spep_1 -1 + 292, 1, -11.8 );
setRotateKey( spep_1 -1 + 293, 1, -11.8 );
setRotateKey( spep_1 -1 + 294, 1, -11.7 );
setRotateKey( spep_1 -1 + 295, 1, -11.7 );
setRotateKey( spep_1 -1 + 296, 1, -11.6 );
setRotateKey( spep_1 -1 + 297, 1, -11.6 );
setRotateKey( spep_1 -1 + 298, 1, -11.5 );
setRotateKey( spep_1 -1 + 299, 1, -11.5 );
setRotateKey( spep_1 -1 + 300, 1, -11.4 );
setRotateKey( spep_1 -1 + 301, 1, -11.4 );
setRotateKey( spep_1 -1 + 302, 1, -11.3 );
setRotateKey( spep_1 -1 + 303, 1, -11.3 );
setRotateKey( spep_1 -1 + 304, 1, -11.2 );
setRotateKey( spep_1 -1 + 305, 1, -11.2 );
setRotateKey( spep_1 -1 + 306, 1, -11.1 );
setRotateKey( spep_1 -1 + 307, 1, -11.1 );
setRotateKey( spep_1 -1 + 308, 1, -11 );
setRotateKey( spep_1 -1 + 309, 1, -11 );
setRotateKey( spep_1 -1 + 310, 1, -10.9 );
setRotateKey( spep_1 -1 + 311, 1, -10.9 );
setRotateKey( spep_1 -1 + 312, 1, -10.8 );
setRotateKey( spep_1 -1 + 313, 1, -10.8 );
setRotateKey( spep_1 -1 + 314, 1, -10.7 );
setRotateKey( spep_1 -1 + 315, 1, -10.7 );
setRotateKey( spep_1 -1 + 316, 1, -10.6 );
setRotateKey( spep_1 -1 + 317, 1, -10.6 );
setRotateKey( spep_1 -1 + 318, 1, -10.5 );
setRotateKey( spep_1 -1 + 319, 1, -10.5 );
setRotateKey( spep_1 -1 + 320, 1, -10.4 );
setRotateKey( spep_1 -1 + 321, 1, -10.4 );
setRotateKey( spep_1 -1 + 322, 1, -10.3 );
setRotateKey( spep_1 -1 + 323, 1, -10.3 );
setRotateKey( spep_1 -1 + 324, 1, -10.2 );
setRotateKey( spep_1 -1 + 325, 1, -10.2 );
setRotateKey( spep_1 -1 + 326, 1, -10.1 );
setRotateKey( spep_1 -1 + 327, 1, -10.1 );
setRotateKey( spep_1 -1 + 328, 1, -10 );
setRotateKey( spep_1 -1 + 361, 1, -10 );

setAlphaKey( spep_1 -1 + 272, 1, 255 );
setAlphaKey( spep_1 -1 + 361, 1, 255 );

-- ** 音 ** --
--オーラ	
SE030 = playSeVer2( spep_1 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE030, 63 );
setPitch( spep_1 + 12, SE030, -300 );
setTimeStretch( SE030, 0.8, 30, 4 );
SE031 = playSeVer2( spep_1 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE031, 63 );
setPitch( spep_1 + 36, SE031, -300 );
setTimeStretch( SE031, 0.8, 30, 4 );
SE039 = playSeVer2( spep_1 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 112, SE039, 56 );
SE040 = playSeVer2( spep_1 + 112, 1181, "",spep_1 + 254, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 112, SE040, 200 );
SE041 = playSeVer2( spep_1 + 112, 1176, "",spep_1 + 254, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 112, SE041, 123 );
SE042 = playSeVer2( spep_1 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 136, SE042, 56 );
SE043 = playSeVer2( spep_1 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 160, SE043, 56 );
SE045 = playSeVer2( spep_1 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 184, SE045, 56 );
SE046 = playSeVer2( spep_1 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 208, SE046, 56 );
SE047 = playSeVer2( spep_1 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 232, SE047, 56 );

--アッパー
SE032 = playSeVer2( spep_1 + 48, 1359, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 50, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 50, 1120, "", 0, 0, 0, -1);

--爆風
SE035 = playSeVer2( spep_1 + 96, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE035, 63 );
SE036 = playSeVer2( spep_1 + 96, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE036, 56 );

--気ダメ
SE037 = playSeVer2( spep_1 + 110, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE037, 71 );
SE038 = playSeVer2( spep_1 + 110, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE038, 126 );

--画面遷移
SE044 = playSeVer2( spep_1 + 170, 1072, "", 0, 0, 0, -1);

--突っ込んでくる
SE048 = playSeVer2( spep_1 + 238, 1182, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 238, 9, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 238, 1277, "", 0, 0, 0, -1);

--膝蹴り
SE051 = playSeVer2( spep_1 + 282, 1153, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_1 + 282, 1187, "", 0, 0, 0, -1);

--蹴り飛ばし
SE053 = playSeVer2( spep_1 + 324, 1123, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_1 + 328, 1110, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 328, 1114, "", 0, 0, 0, -1);

--気が弾ける
SE056 = playSeVer2( spep_1 + 344, 1026, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 360 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 360;


------------------------------------------------------
-- 画面のオーラ割れカードカットイン(118F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
aura = entryEffectLife( spep_2 + 0, SP_05, 118, 0x100, -1, 0, 0, 0 );  --画面のオーラ割れカードカットイン	ef_005
setEffMoveKey( spep_2 + 0, aura, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, aura, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, aura, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, aura, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, aura, 0 );
setEffRotateKey( spep_2 + 118, aura, 0 );
setEffAlphaKey( spep_2 + 0, aura, 255 );
setEffAlphaKey( spep_2 + 118 -2, aura, 255 );
setEffAlphaKey( spep_2 + 118 -1, aura, 255 );
setEffAlphaKey( spep_2 + 118, aura, 0 );

spep_x = spep_2 + 26;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--かめはめ波溜め
SE057 = playSeVer2( spep_2 + 44, 1210, "",spep_2 + 140, 28, 20, 0.5);
setStartTimeMs( SE057,  633 );

--顔カットイン
SE058 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE059 = playSeVer2( spep_2 + 28, 1004, "", 0, 0, 0, -1);

--かめはめ波溜め
SE060 = playSeVer2( spep_2 + 42, 1209, "",spep_2 + 140, 0, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
end

SE_CUTIN = playSe( spep_3, SE_05);
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

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

--発射前かめはめ波溜め
SE061 = playSeVer2( spep_3 + 80, 1210, "",spep_3 + 150, 10, 20, 0.5);
setStartTimeMs( SE061,  2033 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade




-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 正面にかめはめ波を放つ(228F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --正面にかめはめ波を放つ	ef_006
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 228, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 228, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 228, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 228, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --正面にかめはめ波を放つ（背景）	ef_007
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 228, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 228, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 228, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 228, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -1 + 48, 1, 1 );
setDisp( spep_4 -1 + 174, 1, 0 );
changeAnime( spep_4 -1 + 48, 1, 107 );

setBlendColor( spep_4 -1 + 60, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_4 -1 + 62, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_4 -1 + 64, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_4 -1 + 66, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_4 -1 + 68, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_4 -1 + 70, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_4 -1 + 72, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_4 -1 + 74, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_4 -1 + 76, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_4 -1 + 78, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_4 -1 + 80, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_4 -1 + 82, 1, 3, 0, 0, 0, 0.78 );
setBlendColor( spep_4 -1 + 84, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_4 -1 + 86, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_4 -1 + 88, 1, 3, 0, 0, 0, 0.90 );
setBlendColor( spep_4 -1 + 90, 1, 3, 0, 0, 0, 0.92 );
setBlendColor( spep_4 -1 + 92, 1, 3, 0, 0, 0, 0.94 );
setBlendColor( spep_4 -1 + 94, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_4 -1 + 96, 1, 3, 0, 0, 0, 0.96 );
setBlendColor( spep_4 -1 + 98, 1, 3, 0, 0, 0, 0.97 );
setBlendColor( spep_4 -1 + 100, 1, 3, 0, 0, 0, 0.98 );
setBlendColor( spep_4 -1 + 102, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_4 -1 + 173, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_4 -1 + 174, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_4 -1 + 48, 1, 125.7, -788.5 , 0 );
setMoveKey( spep_4 -1 + 50, 1, 119.3, -804.2 , 0 );
setMoveKey( spep_4 -1 + 52, 1, 109.3, -760.9 , 0 );
setMoveKey( spep_4 -1 + 54, 1, 115.3, -751.5 , 0 );
setMoveKey( spep_4 -1 + 56, 1, 111.2, -684.7 , 0 );
setMoveKey( spep_4 -1 + 58, 1, 109.8, -638.3 , 0 );
setMoveKey( spep_4 -1 + 60, 1, 122.4, -544.9 , 0 );
setMoveKey( spep_4 -1 + 62, 1, 114.9, -479.4 , 0 );
setMoveKey( spep_4 -1 + 64, 1, 119.9, -355.5 , 0 );
setMoveKey( spep_4 -1 + 66, 1, 112, -263 , 0 );
setMoveKey( spep_4 -1 + 68, 1, 102.7, -109.5 , 0 );
setMoveKey( spep_4 -1 + 70, 1, 95.9, -130.1 , 0 );
setMoveKey( spep_4 -1 + 72, 1, 98.1, -105.2 , 0 );
setMoveKey( spep_4 -1 + 74, 1, 88.1, -101.9 , 0 );
setMoveKey( spep_4 -1 + 76, 1, 87.8, -101.6 , 0 );
setMoveKey( spep_4 -1 + 78, 1, 73, -83.1 , 0 );
setMoveKey( spep_4 -1 + 80, 1, 67.8, -92.5 , 0 );
setMoveKey( spep_4 -1 + 82, 1, 73.6, -73.5 , 0 );
setMoveKey( spep_4 -1 + 84, 1, 71.1, -82.9 , 0 );
setMoveKey( spep_4 -1 + 86, 1, 58.1, -65.7 , 0 );
setMoveKey( spep_4 -1 + 88, 1, 54.5, -75.8 , 0 );
setMoveKey( spep_4 -1 + 90, 1, 61.3, -60.1 , 0 );
setMoveKey( spep_4 -1 + 92, 1, 58.6, -70.1 , 0 );
setMoveKey( spep_4 -1 + 94, 1, 46.9, -54.9 , 0 );
setMoveKey( spep_4 -1 + 96, 1, 44.6, -67.5 , 0 );
setMoveKey( spep_4 -1 + 98, 1, 53.2, -51.4 , 0 );
setMoveKey( spep_4 -1 + 100, 1, 53.3, -63.7 , 0 );
setMoveKey( spep_4 -1 + 102, 1, 42.6, -49 , 0 );
setMoveKey( spep_4 -1 + 104, 1, 41.3, -61.5 , 0 );
setMoveKey( spep_4 -1 + 106, 1, 50.1, -48.1 , 0 );
setMoveKey( spep_4 -1 + 108, 1, 49.3, -60 , 0 );
setMoveKey( spep_4 -1 + 110, 1, 39.3, -46.6 , 0 );
setMoveKey( spep_4 -1 + 111, 1, 39.3, -46.6 , 0 );
setMoveKey( spep_4 -1 + 112, 1, 38.5, -60.9 , 0 );
setMoveKey( spep_4 -1 + 113, 1, 38.5, -60.9 , 0 );
setMoveKey( spep_4 -1 + 114, 1, 48.4, -46.3 , 0 );
setMoveKey( spep_4 -1 + 115, 1, 48.4, -46.3 , 0 );
setMoveKey( spep_4 -1 + 116, 1, 49.6, -59.7 , 0 );
setMoveKey( spep_4 -1 + 117, 1, 49.6, -59.7 , 0 );
setMoveKey( spep_4 -1 + 118, 1, 40, -46.2 , 0 );
setMoveKey( spep_4 -1 + 119, 1, 40, -46.2 , 0 );
setMoveKey( spep_4 -1 + 120, 1, 39.4, -59.5 , 0 );
setMoveKey( spep_4 -1 + 121, 1, 39.4, -59.5 , 0 );
setMoveKey( spep_4 -1 + 122, 1, 48.3, -46.1 , 0 );
setMoveKey( spep_4 -1 + 123, 1, 48.3, -46.1 , 0 );
setMoveKey( spep_4 -1 + 124, 1, 47.4, -57.9 , 0 );
setMoveKey( spep_4 -1 + 125, 1, 47.4, -57.9 , 0 );
setMoveKey( spep_4 -1 + 126, 1, 37.1, -44.3 , 0 );
setMoveKey( spep_4 -1 + 127, 1, 37.1, -44.3 , 0 );
setMoveKey( spep_4 -1 + 128, 1, 36, -58.2 , 0 );
setMoveKey( spep_4 -1 + 129, 1, 36, -58.2 , 0 );
setMoveKey( spep_4 -1 + 130, 1, 45.4, -43.1 , 0 );
setMoveKey( spep_4 -1 + 131, 1, 45.4, -43.1 , 0 );
setMoveKey( spep_4 -1 + 132, 1, 46.2, -56 , 0 );
setMoveKey( spep_4 -1 + 133, 1, 46.2, -56 , 0 );
setMoveKey( spep_4 -1 + 134, 1, 36, -41.9 , 0 );
setMoveKey( spep_4 -1 + 135, 1, 36, -41.9 , 0 );
setMoveKey( spep_4 -1 + 136, 1, 34.8, -54.6 , 0 );
setMoveKey( spep_4 -1 + 137, 1, 34.8, -54.6 , 0 );
setMoveKey( spep_4 -1 + 138, 1, 43.7, -41.2 , 0 );
setMoveKey( spep_4 -1 + 139, 1, 43.7, -41.2 , 0 );
setMoveKey( spep_4 -1 + 140, 1, 42.8, -53 , 0 );
setMoveKey( spep_4 -1 + 141, 1, 42.8, -53 , 0 );
setMoveKey( spep_4 -1 + 142, 1, 32.6, -39.4 , 0 );
setMoveKey( spep_4 -1 + 143, 1, 32.6, -39.4 , 0 );
setMoveKey( spep_4 -1 + 144, 1, 31.4, -53.3 , 0 );
setMoveKey( spep_4 -1 + 145, 1, 31.4, -53.3 , 0 );
setMoveKey( spep_4 -1 + 146, 1, 40.9, -38.2 , 0 );
setMoveKey( spep_4 -1 + 147, 1, 40.9, -38.2 , 0 );
setMoveKey( spep_4 -1 + 148, 1, 41.6, -51.2 , 0 );
setMoveKey( spep_4 -1 + 149, 1, 41.6, -51.2 , 0 );
setMoveKey( spep_4 -1 + 150, 1, 31.4, -37 , 0 );
setMoveKey( spep_4 -1 + 151, 1, 31.4, -37 , 0 );
setMoveKey( spep_4 -1 + 152, 1, 30.3, -49.7 , 0 );
setMoveKey( spep_4 -1 + 153, 1, 30.3, -49.7 , 0 );
setMoveKey( spep_4 -1 + 154, 1, 39.2, -36.3 , 0 );
setMoveKey( spep_4 -1 + 155, 1, 39.2, -36.3 , 0 );
setMoveKey( spep_4 -1 + 156, 1, 38.3, -48.1 , 0 );
setMoveKey( spep_4 -1 + 157, 1, 38.3, -48.1 , 0 );
setMoveKey( spep_4 -1 + 158, 1, 28, -34.5 , 0 );
setMoveKey( spep_4 -1 + 159, 1, 28, -34.5 , 0 );
setMoveKey( spep_4 -1 + 160, 1, 26.9, -48.3 , 0 );
setMoveKey( spep_4 -1 + 161, 1, 26.9, -48.3 , 0 );
setMoveKey( spep_4 -1 + 162, 1, 36.4, -33.3 , 0 );
setMoveKey( spep_4 -1 + 163, 1, 36.4, -33.3 , 0 );
setMoveKey( spep_4 -1 + 164, 1, 37.1, -46.2 , 0 );
setMoveKey( spep_4 -1 + 165, 1, 37.1, -46.2 , 0 );
setMoveKey( spep_4 -1 + 166, 1, 26.9, -32 , 0 );
setMoveKey( spep_4 -1 + 167, 1, 26.9, -32 , 0 );
setMoveKey( spep_4 -1 + 168, 1, 25.8, -44.8 , 0 );
setMoveKey( spep_4 -1 + 169, 1, 25.8, -44.8 , 0 );
setMoveKey( spep_4 -1 + 170, 1, 34.7, -31.3 , 0 );
setMoveKey( spep_4 -1 + 171, 1, 34.7, -31.3 , 0 );
setMoveKey( spep_4 -1 + 172, 1, 33.7, -43.2 , 0 );
setMoveKey( spep_4 -1 + 173, 1, 33.7, -43.2 , 0 );
setMoveKey( spep_4 -1 + 174, 1, 33.7, -43.2 , 0 );

setScaleKey( spep_4 -1 + 48, 1, 5.99, 5.99 );
setScaleKey( spep_4 -1 + 50, 1, 5.96, 5.96 );
setScaleKey( spep_4 -1 + 52, 1, 5.85, 5.85 );
setScaleKey( spep_4 -1 + 54, 1, 5.67, 5.67 );
setScaleKey( spep_4 -1 + 56, 1, 5.43, 5.43 );
setScaleKey( spep_4 -1 + 58, 1, 5.11, 5.11 );
setScaleKey( spep_4 -1 + 60, 1, 4.72, 4.72 );
setScaleKey( spep_4 -1 + 62, 1, 4.26, 4.26 );
setScaleKey( spep_4 -1 + 64, 1, 3.73, 3.73 );
setScaleKey( spep_4 -1 + 66, 1, 3.13, 3.13 );
setScaleKey( spep_4 -1 + 68, 1, 2.46, 2.46 );
setScaleKey( spep_4 -1 + 70, 1, 2.3, 2.3 );
setScaleKey( spep_4 -1 + 72, 1, 2.15, 2.15 );
setScaleKey( spep_4 -1 + 74, 1, 2.01, 2.01 );
setScaleKey( spep_4 -1 + 76, 1, 1.89, 1.89 );
setScaleKey( spep_4 -1 + 78, 1, 1.78, 1.78 );
setScaleKey( spep_4 -1 + 80, 1, 1.68, 1.68 );
setScaleKey( spep_4 -1 + 82, 1, 1.58, 1.58 );
setScaleKey( spep_4 -1 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_4 -1 + 86, 1, 1.42, 1.42 );
setScaleKey( spep_4 -1 + 88, 1, 1.36, 1.36 );
setScaleKey( spep_4 -1 + 90, 1, 1.3, 1.3 );
setScaleKey( spep_4 -1 + 92, 1, 1.25, 1.25 );
setScaleKey( spep_4 -1 + 94, 1, 1.2, 1.2 );
setScaleKey( spep_4 -1 + 96, 1, 1.16, 1.16 );
setScaleKey( spep_4 -1 + 98, 1, 1.13, 1.13 );
setScaleKey( spep_4 -1 + 100, 1, 1.11, 1.11 );
setScaleKey( spep_4 -1 + 102, 1, 1.08, 1.08 );
setScaleKey( spep_4 -1 + 104, 1, 1.07, 1.07 );
setScaleKey( spep_4 -1 + 106, 1, 1.05, 1.05 );
setScaleKey( spep_4 -1 + 108, 1, 1.04, 1.04 );
setScaleKey( spep_4 -1 + 110, 1, 1.03, 1.03 );
setScaleKey( spep_4 -1 + 115, 1, 1.03, 1.03 );
setScaleKey( spep_4 -1 + 116, 1, 1.02, 1.02 );
setScaleKey( spep_4 -1 + 121, 1, 1.02, 1.02 );
setScaleKey( spep_4 -1 + 122, 1, 1.01, 1.01 );
setScaleKey( spep_4 -1 + 123, 1, 1.01, 1.01 );
setScaleKey( spep_4 -1 + 124, 1, 1, 1 );
setScaleKey( spep_4 -1 + 125, 1, 1, 1 );
setScaleKey( spep_4 -1 + 126, 1, 0.99, 0.99 );
setScaleKey( spep_4 -1 + 127, 1, 0.99, 0.99 );
setScaleKey( spep_4 -1 + 128, 1, 0.97, 0.97 );
setScaleKey( spep_4 -1 + 129, 1, 0.97, 0.97 );
setScaleKey( spep_4 -1 + 130, 1, 0.96, 0.96 );
setScaleKey( spep_4 -1 + 131, 1, 0.96, 0.96 );
setScaleKey( spep_4 -1 + 132, 1, 0.95, 0.95 );
setScaleKey( spep_4 -1 + 133, 1, 0.95, 0.95 );
setScaleKey( spep_4 -1 + 134, 1, 0.94, 0.94 );
setScaleKey( spep_4 -1 + 135, 1, 0.94, 0.94 );
setScaleKey( spep_4 -1 + 136, 1, 0.92, 0.92 );
setScaleKey( spep_4 -1 + 137, 1, 0.92, 0.92 );
setScaleKey( spep_4 -1 + 138, 1, 0.91, 0.91 );
setScaleKey( spep_4 -1 + 139, 1, 0.91, 0.91 );
setScaleKey( spep_4 -1 + 140, 1, 0.9, 0.9 );
setScaleKey( spep_4 -1 + 141, 1, 0.9, 0.9 );
setScaleKey( spep_4 -1 + 142, 1, 0.89, 0.89 );
setScaleKey( spep_4 -1 + 143, 1, 0.89, 0.89 );
setScaleKey( spep_4 -1 + 144, 1, 0.87, 0.87 );
setScaleKey( spep_4 -1 + 145, 1, 0.87, 0.87 );
setScaleKey( spep_4 -1 + 146, 1, 0.86, 0.86 );
setScaleKey( spep_4 -1 + 147, 1, 0.86, 0.86 );
setScaleKey( spep_4 -1 + 148, 1, 0.85, 0.85 );
setScaleKey( spep_4 -1 + 149, 1, 0.85, 0.85 );
setScaleKey( spep_4 -1 + 150, 1, 0.84, 0.84 );
setScaleKey( spep_4 -1 + 151, 1, 0.84, 0.84 );
setScaleKey( spep_4 -1 + 152, 1, 0.82, 0.82 );
setScaleKey( spep_4 -1 + 153, 1, 0.82, 0.82 );
setScaleKey( spep_4 -1 + 154, 1, 0.81, 0.81 );
setScaleKey( spep_4 -1 + 155, 1, 0.81, 0.81 );
setScaleKey( spep_4 -1 + 156, 1, 0.8, 0.8 );
setScaleKey( spep_4 -1 + 157, 1, 0.8, 0.8 );
setScaleKey( spep_4 -1 + 158, 1, 0.79, 0.79 );
setScaleKey( spep_4 -1 + 159, 1, 0.79, 0.79 );
setScaleKey( spep_4 -1 + 160, 1, 0.77, 0.77 );
setScaleKey( spep_4 -1 + 161, 1, 0.77, 0.77 );
setScaleKey( spep_4 -1 + 162, 1, 0.76, 0.76 );
setScaleKey( spep_4 -1 + 163, 1, 0.76, 0.76 );
setScaleKey( spep_4 -1 + 164, 1, 0.75, 0.75 );
setScaleKey( spep_4 -1 + 165, 1, 0.75, 0.75 );
setScaleKey( spep_4 -1 + 166, 1, 0.74, 0.74 );
setScaleKey( spep_4 -1 + 167, 1, 0.74, 0.74 );
setScaleKey( spep_4 -1 + 168, 1, 0.72, 0.72 );
setScaleKey( spep_4 -1 + 169, 1, 0.72, 0.72 );
setScaleKey( spep_4 -1 + 170, 1, 0.71, 0.71 );
setScaleKey( spep_4 -1 + 171, 1, 0.71, 0.71 );
setScaleKey( spep_4 -1 + 172, 1, 0.7, 0.7 );
setScaleKey( spep_4 -1 + 173, 1, 0.7, 0.7 );
setScaleKey( spep_4 -1 + 174, 1, 0.7, 0.7 );

setRotateKey( spep_4 -1 + 48, 1, 23.8 );
setRotateKey( spep_4 -1 + 52, 1, 23.8 );
setRotateKey( spep_4 -1 + 54, 1, 23.9 );
setRotateKey( spep_4 -1 + 56, 1, 23.9 );
setRotateKey( spep_4 -1 + 58, 1, 24 );
setRotateKey( spep_4 -1 + 60, 1, 24.1 );
setRotateKey( spep_4 -1 + 62, 1, 24.2 );
setRotateKey( spep_4 -1 + 64, 1, 24.3 );
setRotateKey( spep_4 -1 + 66, 1, 24.5 );
setRotateKey( spep_4 -1 + 68, 1, 24.6 );
setRotateKey( spep_4 -1 + 70, 1, 25.3 );
setRotateKey( spep_4 -1 + 72, 1, 26 );
setRotateKey( spep_4 -1 + 74, 1, 26.6 );
setRotateKey( spep_4 -1 + 76, 1, 27.1 );
setRotateKey( spep_4 -1 + 78, 1, 27.6 );
setRotateKey( spep_4 -1 + 80, 1, 28.1 );
setRotateKey( spep_4 -1 + 82, 1, 28.5 );
setRotateKey( spep_4 -1 + 84, 1, 28.8 );
setRotateKey( spep_4 -1 + 86, 1, 29.2 );
setRotateKey( spep_4 -1 + 88, 1, 29.4 );
setRotateKey( spep_4 -1 + 90, 1, 29.7 );
setRotateKey( spep_4 -1 + 92, 1, 29.9 );
setRotateKey( spep_4 -1 + 94, 1, 30.1 );
setRotateKey( spep_4 -1 + 96, 1, 30.3 );
setRotateKey( spep_4 -1 + 98, 1, 30.4 );
setRotateKey( spep_4 -1 + 100, 1, 30.6 );
setRotateKey( spep_4 -1 + 102, 1, 30.7 );
setRotateKey( spep_4 -1 + 104, 1, 30.7 );
setRotateKey( spep_4 -1 + 106, 1, 30.8 );
setRotateKey( spep_4 -1 + 108, 1, 30.8 );
setRotateKey( spep_4 -1 + 110, 1, 30.9 );
setRotateKey( spep_4 -1 + 121, 1, 30.9 );
setRotateKey( spep_4 -1 + 122, 1, 31 );
setRotateKey( spep_4 -1 + 125, 1, 31 );
setRotateKey( spep_4 -1 + 126, 1, 31.1 );
setRotateKey( spep_4 -1 + 129, 1, 31.1 );
setRotateKey( spep_4 -1 + 130, 1, 31.2 );
setRotateKey( spep_4 -1 + 133, 1, 31.2 );
setRotateKey( spep_4 -1 + 134, 1, 31.3 );
setRotateKey( spep_4 -1 + 135, 1, 31.3 );
setRotateKey( spep_4 -1 + 136, 1, 31.4 );
setRotateKey( spep_4 -1 + 139, 1, 31.4 );
setRotateKey( spep_4 -1 + 140, 1, 31.5 );
setRotateKey( spep_4 -1 + 143, 1, 31.5 );
setRotateKey( spep_4 -1 + 144, 1, 31.6 );
setRotateKey( spep_4 -1 + 147, 1, 31.6 );
setRotateKey( spep_4 -1 + 148, 1, 31.7 );
setRotateKey( spep_4 -1 + 151, 1, 31.7 );
setRotateKey( spep_4 -1 + 152, 1, 31.8 );
setRotateKey( spep_4 -1 + 153, 1, 31.8 );
setRotateKey( spep_4 -1 + 154, 1, 31.9 );
setRotateKey( spep_4 -1 + 157, 1, 31.9 );
setRotateKey( spep_4 -1 + 158, 1, 32 );
setRotateKey( spep_4 -1 + 161, 1, 32 );
setRotateKey( spep_4 -1 + 162, 1, 32.1 );
setRotateKey( spep_4 -1 + 165, 1, 32.1 );
setRotateKey( spep_4 -1 + 166, 1, 32.2 );
setRotateKey( spep_4 -1 + 169, 1, 32.2 );
setRotateKey( spep_4 -1 + 170, 1, 32.3 );
setRotateKey( spep_4 -1 + 174, 1, 32.3 );

setAlphaKey( spep_4 -1 + 48, 1, 255 );
setAlphaKey( spep_4 -1 + 120, 1, 255 );
setAlphaKey( spep_4 -1 + 122, 1, 245 );
setAlphaKey( spep_4 -1 + 124, 1, 235 );
setAlphaKey( spep_4 -1 + 126, 1, 225 );
setAlphaKey( spep_4 -1 + 128, 1, 215 );
setAlphaKey( spep_4 -1 + 130, 1, 205 );
setAlphaKey( spep_4 -1 + 132, 1, 195 );
setAlphaKey( spep_4 -1 + 134, 1, 185 );
setAlphaKey( spep_4 -1 + 136, 1, 175 );
setAlphaKey( spep_4 -1 + 138, 1, 165 );
setAlphaKey( spep_4 -1 + 140, 1, 155 );
setAlphaKey( spep_4 -1 + 142, 1, 145 );
setAlphaKey( spep_4 -1 + 144, 1, 135 );
setAlphaKey( spep_4 -1 + 146, 1, 125 );
setAlphaKey( spep_4 -1 + 148, 1, 115 );
setAlphaKey( spep_4 -1 + 150, 1, 105 );
setAlphaKey( spep_4 -1 + 152, 1, 95 );
setAlphaKey( spep_4 -1 + 154, 1, 85 );
setAlphaKey( spep_4 -1 + 156, 1, 75 );
setAlphaKey( spep_4 -1 + 158, 1, 65 );
setAlphaKey( spep_4 -1 + 160, 1, 55 );
setAlphaKey( spep_4 -1 + 162, 1, 45 );
setAlphaKey( spep_4 -1 + 164, 1, 35 );
setAlphaKey( spep_4 -1 + 166, 1, 25 );
setAlphaKey( spep_4 -1 + 168, 1, 15 );
setAlphaKey( spep_4 -1 + 170, 1, 0 );
setAlphaKey( spep_4 -1 + 174, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE063 = playSeVer2( spep_4 + 30, 1133, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_4 + 30, 1146, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_4 + 30, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE065, 78 );
SE066 = playSeVer2( spep_4 + 44, 1161, "", 0, 34, 0, -1);
setStartTimeMs( SE066,  233 );
SE067 = playSeVer2( spep_4 + 84, 1213, "", 0, 24, 0, -1);
setStartTimeMs( SE067,  900 );

--敵飲まれる
SE068 = playSeVer2( spep_4 + 102, 1258, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 108 );
endPhase( spep_4 + 218 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕から敵をキックで蹴り飛ばす(326F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 326, 0x100, -1, 0, 0, 0 );  --開幕から敵をキックで蹴り飛ばす ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 326, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 326, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 326, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 326 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 326 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 326, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 326, 0x80, -1, 0, 0, 0 );  --開幕から敵をキックで蹴り飛ばす（背景）  ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 326, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 326, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 326, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 326 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 326 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 326, first_b, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1003, "", 0, 0, 0, -1);

--気ダメ
SE003 = playSeVer2( spep_0 + 40, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE003, 126 );
SE004 = playSeVer2( spep_0 + 40, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 89 );
SE005 = playSeVer2( spep_0 + 48, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );

--オーラ
SE006 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 62, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 86, SE007, -300 );
setTimeStretch( SE007, 0.8, 30, 4 );
SE008 = playSeVer2( spep_0 + 86, 1181, "",spep_0 + 254, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 86, SE008, 200 );
SE010 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 110, SE010, -300 );
setTimeStretch( SE010, 0.8, 30, 4 );
SE012 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 134, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );
SE015 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 158, SE015, -300 );
setTimeStretch( SE015, 0.8, 30, 4 );
SE016 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 182, SE016, -300 );
setTimeStretch( SE016, 0.8, 30, 4 );
SE017 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 206, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setPitch( spep_0 + 230, SE018, -300 );
setTimeStretch( SE018, 0.8, 30, 4 );

--瓦礫音
SE009 = playSeVer2( spep_0 + 172, 1168, "",spep_0 + 274, 18, 40, -1);
setSeVolumeByWorkId( spep_0 + 172, SE009, 74 );
setStartTimeMs( SE009,  1283 );

--爆風
SE011 = playSeVer2( spep_0 + 118, 1188, "", 0, 34, 0, -1);

--気が立ち上る
SE013 = playSeVer2( spep_0 + 144, 1284, "",spep_0 + 220, 0, 36, 0.5);
SE014 = playSeVer2( spep_0 + 144, 1312, "", 0, 0, 0, -1);

--突っ込んでくる
SE019 = playSeVer2( spep_0 + 230, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 230, 9, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 230, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE021, 65 );
SE022 = playSeVer2( spep_0 + 232, 1172, "",spep_0 + 288, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 232, SE022, 67 );
setPitch( spep_0 + 232, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 326 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 256; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 276, 1, 1 );
--setDisp( spep_0 -1 + 326, 1, 0 );
changeAnime( spep_0 -1 + 276, 1, 4 );
changeAnime( spep_0 -1 + 292, 1, 8 );
changeAnime( spep_0 -1 + 312, 1, 6 );

setMoveKey( spep_0 -1 + 276, 1, -136.7, -38.2 , 0 );
setMoveKey( spep_0 -1 + 291, 1, -136.7, -38.2 , 0 );--

setMoveKey( spep_0 -1 + 292, 1, -144, 1.6 , 0 );
setMoveKey( spep_0 -1 + 293, 1, -144, 1.6 , 0 );
setMoveKey( spep_0 -1 + 294, 1, -223.6, -138.1 , 0 );
setMoveKey( spep_0 -1 + 295, 1, -223.6, -138.1 , 0 );
setMoveKey( spep_0 -1 + 296, 1, -232.6, -113.1 , 0 );
setMoveKey( spep_0 -1 + 297, 1, -232.6, -113.1 , 0 );
setMoveKey( spep_0 -1 + 298, 1, -219.6, -165.1 , 0 );
setMoveKey( spep_0 -1 + 299, 1, -219.6, -165.1 , 0 );
setMoveKey( spep_0 -1 + 300, 1, -212.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 301, 1, -212.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 302, 1, -233.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 303, 1, -233.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 304, 1, -226.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 305, 1, -226.6, -133.1 , 0 );
setMoveKey( spep_0 -1 + 306, 1, -225.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 307, 1, -225.6, -146.1 , 0 );
setMoveKey( spep_0 -1 + 308, 1, -198, -82.8 , 0 );
setMoveKey( spep_0 -1 + 309, 1, -198, -82.8 , 0 );
setMoveKey( spep_0 -1 + 310, 1, -173.7, -53.7 , 0 );
setMoveKey( spep_0 -1 + 311, 1, -173.7, -53.7 , 0 );--
setMoveKey( spep_0 -1 + 312, 1, -134.2, -25.5 , 0 );
setMoveKey( spep_0 -1 + 313, 1, -134.2, -25.5 , 0 );
setMoveKey( spep_0 -1 + 314, 1, -126.5, -8.4 , 0 );
setMoveKey( spep_0 -1 + 316, 1, -124.2, -2.7 , 0 );
setMoveKey( spep_0 -1 + 318, 1, -124.8, -2.7 , 0 );
setMoveKey( spep_0 -1 + 320, 1, -125.8, -2.7 , 0 );
setMoveKey( spep_0 -1 + 322, 1, -127.2, -2.7 , 0 );
setMoveKey( spep_0 -1 + 324, 1, -129.5, -2.7 , 0 );
setMoveKey( spep_0 -1 + 326, 1, -132.5, -2.7 , 0 );

setScaleKey( spep_0 -1 + 276, 1, 1.59, 1.59 );
setScaleKey( spep_0 -1 + 291, 1, 1.59, 1.59 );--
setScaleKey( spep_0 -1 + 292, 1, 1.69, 1.69 );
setScaleKey( spep_0 -1 + 293, 1, 1.69, 1.69 );
setScaleKey( spep_0 -1 + 294, 1, 2.7, 2.7 );
setScaleKey( spep_0 -1 + 307, 1, 2.7, 2.7 );
setScaleKey( spep_0 -1 + 308, 1, 2.33, 2.33 );
setScaleKey( spep_0 -1 + 309, 1, 2.33, 2.33 );
setScaleKey( spep_0 -1 + 310, 1, 2.05, 2.05 );
setScaleKey( spep_0 -1 + 311, 1, 2.05, 2.05 );--
setScaleKey( spep_0 -1 + 312, 1, 1.74, 1.74 );
setScaleKey( spep_0 -1 + 313, 1, 1.74, 1.74 );
setScaleKey( spep_0 -1 + 314, 1, 1.62, 1.62 );
setScaleKey( spep_0 -1 + 316, 1, 1.59, 1.59 );
setScaleKey( spep_0 -1 + 326, 1, 1.59, 1.59 );

setRotateKey( spep_0 -1 + 276, 1, -11 );
setRotateKey( spep_0 -1 + 291, 1, -11 );--
setRotateKey( spep_0 -1 + 292, 1, -5 );
setRotateKey( spep_0 -1 + 311, 1, -5 );--
setRotateKey( spep_0 -1 + 312, 1, 25.7 );
setRotateKey( spep_0 -1 + 326, 1, 25.7 );

setAlphaKey( spep_0 -1 + 276, 1, 255 );
--setAlphaKey( spep_0 -1 + 326, 1, 255 );

-- ** 音 ** --
SE029 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE029, 63 );
setPitch( spep_0 + 318, SE029, -300 );
setTimeStretch( SE029, 0.8, 30, 4 );

--キック
SE023 = playSeVer2( spep_0 + 280, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 286, 1359, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 288, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 288, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 316, 1278, "",spep_0 + 408, 0, 24, -1);
SE028 = playSeVer2( spep_0 + 316, 1314, "",spep_0 + 408, 0, 24, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 326;


------------------------------------------------------
-- 悟空正面から敵をキック(362F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --悟空正面から敵をキック ef_003
setEffMoveKey( spep_1 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, move_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 360, move_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_f, 0 );
setEffRotateKey( spep_1 + 360, move_f, 0 );
setEffAlphaKey( spep_1 + 0, move_f, 255 );
setEffAlphaKey( spep_1 + 360 -2, move_f, 255 );
setEffAlphaKey( spep_1 + 360 -1, move_f, 255 );
setEffAlphaKey( spep_1 + 360, move_f, 0 );

move_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --悟空正面から敵をキック（背景）  ef_004
setEffMoveKey( spep_1 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, move_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 360, move_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_b, 0 );
setEffRotateKey( spep_1 + 360, move_b, 0 );
setEffAlphaKey( spep_1 + 0, move_b, 255 );
setEffAlphaKey( spep_1 + 360 -2, move_b, 255 );
setEffAlphaKey( spep_1 + 360 -1, move_b, 255 );
setEffAlphaKey( spep_1 + 360, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -1 + 18, 1, 0 );
changeAnime( spep_1 + 0, 1, 7 );

setMoveKey( spep_1 + 0, 1, -147.6, 8.1 , 0 );
setMoveKey( spep_1 -1 + 2, 1, -153.1, 5.1 , 0 );
setMoveKey( spep_1 -1 + 4, 1, -172.6, -3.7 , 0 );
setMoveKey( spep_1 -1 + 6, 1, -211.8, -17.7 , 0 );
setMoveKey( spep_1 -1 + 8, 1, -278.3, -36.3 , 0 );
setMoveKey( spep_1 -1 + 10, 1, -383.3, -58.4 , 0 );
setMoveKey( spep_1 -1 + 12, 1, -544, -80.6 , 0 );
setMoveKey( spep_1 -1 + 14, 1, -773.2, -109 , 0 );
setMoveKey( spep_1 -1 + 17, 1, -1104.1, -123.1 , 0 );
setMoveKey( spep_1 -1 + 18, 1, -1104.1, -123.1 , 0 );

setScaleKey( spep_1 + 0, 1, 2.78, 2.78 );
setScaleKey( spep_1 -1 + 2, 1, 2.82, 2.82 );
setScaleKey( spep_1 -1 + 4, 1, 2.94, 2.94 );
setScaleKey( spep_1 -1 + 6, 1, 3.17, 3.17 );
setScaleKey( spep_1 -1 + 8, 1, 3.52, 3.52 );
setScaleKey( spep_1 -1 + 10, 1, 4.04, 4.04 );
setScaleKey( spep_1 -1 + 12, 1, 4.77, 4.77 );
setScaleKey( spep_1 -1 + 14, 1, 5.79, 5.79 );
setScaleKey( spep_1 -1 + 17, 1, 7.17, 7.17 );
setScaleKey( spep_1 -1 + 18, 1, 7.17, 7.17 );

setRotateKey( spep_1 + 0, 1, 34.2 );
setRotateKey( spep_1 -1 + 2, 1, 34.3 );
setRotateKey( spep_1 -1 + 8, 1, 34.3 );
setRotateKey( spep_1 -1 + 10, 1, 34.4 );
setRotateKey( spep_1 -1 + 12, 1, 34.6 );
setRotateKey( spep_1 -1 + 14, 1, 34.8 );
setRotateKey( spep_1 -1 + 17, 1, 35 );
setRotateKey( spep_1 -1 + 18, 1, 35 );

--setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 -1 + 18, 1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 56, 1, 1 );
setDisp( spep_1 -1 + 96, 1, 0 );
changeAnime( spep_1 -1 + 56, 1, 8 );
changeAnime( spep_1 -1 + 72, 1, 6 );

setMoveKey( spep_1 -1 + 56, 1, -183.2, -141 , 0 );
setMoveKey( spep_1 -1 + 57, 1, -183.2, -141 , 0 );
setMoveKey( spep_1 -1 + 58, 1, -175, -124.9 , 0 );
setMoveKey( spep_1 -1 + 59, 1, -175, -124.9 , 0 );
setMoveKey( spep_1 -1 + 60, 1, -163.5, -104.1 , 0 );
setMoveKey( spep_1 -1 + 61, 1, -163.5, -104.1 , 0 );
setMoveKey( spep_1 -1 + 62, 1, -148.4, -77.1 , 0 );
setMoveKey( spep_1 -1 + 63, 1, -148.4, -77.1 , 0 );
setMoveKey( spep_1 -1 + 64, 1, -129.8, -43.3 , 0 );
setMoveKey( spep_1 -1 + 65, 1, -129.8, -43.3 , 0 );
setMoveKey( spep_1 -1 + 66, 1, -109.2, -3.3 , 0 );
setMoveKey( spep_1 -1 + 67, 1, -109.2, -3.3 , 0 );
setMoveKey( spep_1 -1 + 68, 1, -89.3, 40.4 , 0 );
setMoveKey( spep_1 -1 + 69, 1, -89.3, 40.4 , 0 );
setMoveKey( spep_1 -1 + 70, 1, -74.8, 83 , 0 );
setMoveKey( spep_1 -1 + 71, 1, -74.8, 83 , 0 );--
setMoveKey( spep_1 -1 + 72, 1, -72.2, 93.3 , 0 );
setMoveKey( spep_1 -1 + 73, 1, -72.2, 93.3 , 0 );
setMoveKey( spep_1 -1 + 74, 1, -60.8, 10.2 , 0 );
setMoveKey( spep_1 -1 + 75, 1, -60.8, 10.2 , 0 );
setMoveKey( spep_1 -1 + 76, 1, -66.8, 124.7 , 0 );
setMoveKey( spep_1 -1 + 77, 1, -66.8, 124.7 , 0 );
setMoveKey( spep_1 -1 + 78, 1, -94.1, 39 , 0 );
setMoveKey( spep_1 -1 + 79, 1, -94.1, 39 , 0 );
setMoveKey( spep_1 -1 + 80, 1, -114.8, 144.9 , 0 );
setMoveKey( spep_1 -1 + 81, 1, -114.8, 144.9 , 0 );
setMoveKey( spep_1 -1 + 82, 1, -124.8, 98.5 , 0 );
setMoveKey( spep_1 -1 + 83, 1, -124.8, 98.5 , 0 );
setMoveKey( spep_1 -1 + 84, 1, -164.1, 175.9 , 0 );
setMoveKey( spep_1 -1 + 86, 1, -200.9, 168.9 , 0 );
setMoveKey( spep_1 -1 + 88, 1, -243.1, 229.7 , 0 );
setMoveKey( spep_1 -1 + 90, 1, -286.7, 292.2 , 0 );
setMoveKey( spep_1 -1 + 92, 1, -325.9, 330.3 , 0 );
setMoveKey( spep_1 -1 + 94, 1, -378.5, 406 , 0 );
setMoveKey( spep_1 -1 + 96, 1, -378.5, 406 , 0 );

setScaleKey( spep_1 -1 + 56, 1, 9.57, 9.57 );
setScaleKey( spep_1 -1 + 57, 1, 9.57, 9.57 );
setScaleKey( spep_1 -1 + 58, 1, 9.55, 9.55 );
setScaleKey( spep_1 -1 + 59, 1, 9.55, 9.55 );
setScaleKey( spep_1 -1 + 60, 1, 9.47, 9.47 );
setScaleKey( spep_1 -1 + 61, 1, 9.47, 9.47 );
setScaleKey( spep_1 -1 + 62, 1, 9.24, 9.24 );
setScaleKey( spep_1 -1 + 63, 1, 9.24, 9.24 );
setScaleKey( spep_1 -1 + 64, 1, 8.79, 8.79 );
setScaleKey( spep_1 -1 + 65, 1, 8.79, 8.79 );
setScaleKey( spep_1 -1 + 66, 1, 8.04, 8.04 );
setScaleKey( spep_1 -1 + 67, 1, 8.04, 8.04 );
setScaleKey( spep_1 -1 + 68, 1, 6.93, 6.93 );
setScaleKey( spep_1 -1 + 69, 1, 6.93, 6.93 );
setScaleKey( spep_1 -1 + 70, 1, 5.38, 5.38 );
setScaleKey( spep_1 -1 + 71, 1, 5.38, 5.38 );--
setScaleKey( spep_1 -1 + 72, 1, 2.73, 2.73 );
setScaleKey( spep_1 -1 + 73, 1, 2.73, 2.73 );
setScaleKey( spep_1 -1 + 74, 1, 2.71, 2.71 );
setScaleKey( spep_1 -1 + 75, 1, 2.71, 2.71 );
setScaleKey( spep_1 -1 + 76, 1, 2.67, 2.67 );
setScaleKey( spep_1 -1 + 77, 1, 2.67, 2.67 );
setScaleKey( spep_1 -1 + 78, 1, 2.59, 2.59 );
setScaleKey( spep_1 -1 + 79, 1, 2.59, 2.59 );
setScaleKey( spep_1 -1 + 80, 1, 2.49, 2.49 );
setScaleKey( spep_1 -1 + 81, 1, 2.49, 2.49 );
setScaleKey( spep_1 -1 + 82, 1, 2.35, 2.35 );
setScaleKey( spep_1 -1 + 84, 1, 2.35, 2.35 );
setScaleKey( spep_1 -1 + 84, 1, 2.19, 2.19 );
setScaleKey( spep_1 -1 + 86, 1, 2, 2 );
setScaleKey( spep_1 -1 + 88, 1, 1.78, 1.78 );
setScaleKey( spep_1 -1 + 90, 1, 1.52, 1.52 );
setScaleKey( spep_1 -1 + 92, 1, 1.24, 1.24 );
setScaleKey( spep_1 -1 + 94, 1, 0.93, 0.93 );
setScaleKey( spep_1 -1 + 96, 1, 0.93, 0.93 );

setRotateKey( spep_1 -1 + 56, 1, 17.1 );
setRotateKey( spep_1 -1 + 71, 1, 17.1 );--
setRotateKey( spep_1 -1 + 72, 1, 62 );
setRotateKey( spep_1 -1 + 73, 1, 62 );
setRotateKey( spep_1 -1 + 74, 1, 61.7 );
setRotateKey( spep_1 -1 + 75, 1, 61.7 );
setRotateKey( spep_1 -1 + 76, 1, 60.8 );
setRotateKey( spep_1 -1 + 77, 1, 60.8 );
setRotateKey( spep_1 -1 + 78, 1, 59.4 );
setRotateKey( spep_1 -1 + 79, 1, 59.4 );
setRotateKey( spep_1 -1 + 80, 1, 57.3 );
setRotateKey( spep_1 -1 + 81, 1, 57.3 );
setRotateKey( spep_1 -1 + 82, 1, 54.6 );
setRotateKey( spep_1 -1 + 83, 1, 54.6 );
setRotateKey( spep_1 -1 + 84, 1, 51.4 );
setRotateKey( spep_1 -1 + 86, 1, 47.6 );
setRotateKey( spep_1 -1 + 88, 1, 43.2 );
setRotateKey( spep_1 -1 + 90, 1, 38.2 );
setRotateKey( spep_1 -1 + 92, 1, 32.6 );
setRotateKey( spep_1 -1 + 94, 1, 26.4 );
setRotateKey( spep_1 -1 + 96, 1, 26.4 );

setAlphaKey( spep_1 -1 + 56, 1, 255 );
setAlphaKey( spep_1 -1 + 96, 1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 272, 1, 1 );
setDisp( spep_1 -1 + 361, 1, 0 );
changeAnime( spep_1 -1 + 272, 1, 6 );
changeAnime( spep_1 -1 + 288, 1, 8 );

setMoveKey( spep_1 -1 + 272, 1, -507.1, -27.3 , 0 );
setMoveKey( spep_1 -1 + 274, 1, -500.3, -27.3 , 0 );
setMoveKey( spep_1 -1 + 276, 1, -480, -27.3 , 0 );
setMoveKey( spep_1 -1 + 278, 1, -446.1, -27.3 , 0 );
setMoveKey( spep_1 -1 + 280, 1, -398.6, -27.3 , 0 );
setMoveKey( spep_1 -1 + 282, 1, -337.6, -27.3 , 0 );
setMoveKey( spep_1 -1 + 284, 1, -263.1, -27.3 , 0 );
setMoveKey( spep_1 -1 + 286, 1, -175, -27.3 , 0 );
setMoveKey( spep_1 -1 + 287, 1, -175, -27.3 , 0 );--
setMoveKey( spep_1 -1 + 288, 1, -124.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 289, 1, -124.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 290, 1, -136.6, 31.3 , 0 );
setMoveKey( spep_1 -1 + 291, 1, -136.6, 31.3 , 0 );
setMoveKey( spep_1 -1 + 292, 1, -126.6, -30.9 , 0 );
setMoveKey( spep_1 -1 + 293, 1, -126.6, -30.9 , 0 );
setMoveKey( spep_1 -1 + 294, 1, -128.6, 18.9 , 0 );
setMoveKey( spep_1 -1 + 295, 1, -128.6, 18.9 , 0 );
setMoveKey( spep_1 -1 + 296, 1, -146.6, -21.3 , 0 );
setMoveKey( spep_1 -1 + 297, 1, -146.6, -21.3 , 0 );
setMoveKey( spep_1 -1 + 298, 1, -152.7, 0.4 , 0 );
setMoveKey( spep_1 -1 + 299, 1, -152.7, 0.4 , 0 );
setMoveKey( spep_1 -1 + 300, 1, -154.7, 18.2 , 0 );
setMoveKey( spep_1 -1 + 301, 1, -154.7, 18.2 , 0 );
setMoveKey( spep_1 -1 + 302, 1, -154.7, 16 , 0 );
setMoveKey( spep_1 -1 + 303, 1, -154.7, 16 , 0 );
setMoveKey( spep_1 -1 + 304, 1, -154.7, 15.8 , 0 );
setMoveKey( spep_1 -1 + 305, 1, -154.7, 15.8 , 0 );
setMoveKey( spep_1 -1 + 306, 1, -159.7, 22.6 , 0 );
setMoveKey( spep_1 -1 + 307, 1, -159.7, 22.6 , 0 );
setMoveKey( spep_1 -1 + 308, 1, -165.8, 24.3 , 0 );
setMoveKey( spep_1 -1 + 309, 1, -165.8, 24.3 , 0 );
setMoveKey( spep_1 -1 + 310, 1, -168.7, 29 , 0 );
setMoveKey( spep_1 -1 + 311, 1, -168.7, 29 , 0 );
setMoveKey( spep_1 -1 + 312, 1, -172.3, 32.1 , 0 );
setMoveKey( spep_1 -1 + 313, 1, -172.3, 32.1 , 0 );
setMoveKey( spep_1 -1 + 314, 1, -175, 34 , 0 );
setMoveKey( spep_1 -1 + 315, 1, -175, 34 , 0 );
setMoveKey( spep_1 -1 + 316, 1, -176.4, 34.2 , 0 );
setMoveKey( spep_1 -1 + 317, 1, -176.4, 34.2 , 0 );
setMoveKey( spep_1 -1 + 318, 1, -176.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 319, 1, -176.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 320, 1, -173.9, 27 , 0 );
setMoveKey( spep_1 -1 + 321, 1, -173.9, 27 , 0 );
setMoveKey( spep_1 -1 + 322, 1, -171.6, 21.9 , 0 );
setMoveKey( spep_1 -1 + 323, 1, -171.6, 21.9 , 0 );
setMoveKey( spep_1 -1 + 324, 1, -171.3, 19.7 , 0 );
setMoveKey( spep_1 -1 + 325, 1, -171.3, 19.7 , 0 );
setMoveKey( spep_1 -1 + 326, 1, -172.8, 19.9 , 0 );
setMoveKey( spep_1 -1 + 327, 1, -172.8, 19.9 , 0 );
setMoveKey( spep_1 -1 + 328, 1, -175.5, 21.8 , 0 );
setMoveKey( spep_1 -1 + 329, 1, -175.5, 21.8 , 0 );
setMoveKey( spep_1 -1 + 330, 1, -183, 81.2 , 0 );
setMoveKey( spep_1 -1 + 331, 1, -183, 81.2 , 0 );
setMoveKey( spep_1 -1 + 332, 1, -168.9, -16.9 , 0 );
setMoveKey( spep_1 -1 + 333, 1, -168.9, -16.9 , 0 );
setMoveKey( spep_1 -1 + 334, 1, -158.9, 41.1 , 0 );
setMoveKey( spep_1 -1 + 335, 1, -158.9, 41.1 , 0 );
setMoveKey( spep_1 -1 + 336, 1, -190.9, -2.9 , 0 );
setMoveKey( spep_1 -1 + 337, 1, -190.9, -2.9 , 0 );
setMoveKey( spep_1 -1 + 338, 1, -184.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 339, 1, -184.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 340, 1, -178.9, 25.1 , 0 );
setMoveKey( spep_1 -1 + 341, 1, -178.9, 25.1 , 0 );
setMoveKey( spep_1 -1 + 342, 1, -172.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 343, 1, -172.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 344, 1, -176.9, 15.1 , 0 );
setMoveKey( spep_1 -1 + 345, 1, -176.9, 15.1 , 0 );
setMoveKey( spep_1 -1 + 346, 1, -173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 347, 1, -173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 348, 1, -175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 349, 1, -175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 350, 1, -176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 351, 1, -176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 352, 1, -172.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 353, 1, -172.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 354, 1, -173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 355, 1, -173.9, 22.1 , 0 );
setMoveKey( spep_1 -1 + 356, 1, -175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 357, 1, -175.9, 20.1 , 0 );
setMoveKey( spep_1 -1 + 358, 1, -176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 359, 1, -176.9, 23.1 , 0 );
setMoveKey( spep_1 -1 + 360, 1, -172.9, 19.1 , 0 );
setMoveKey( spep_1 -1 + 361, 1, -172.9, 19.1 , 0 );
--setMoveKey( spep_1 -1 + 362, 1, 173.9, 22.1 , 0 );
--setMoveKey( spep_1 -1 + 363, 1, 173.9, 22.1 , 0 );

setScaleKey( spep_1 -1 + 272, 1, 2.02, 2.02 );
setScaleKey( spep_1 -1 + 287, 1, 2.02, 2.02 );--
setScaleKey( spep_1 -1 + 288, 1, 2.37, 2.37 );
setScaleKey( spep_1 -1 + 361, 1, 2.37, 2.37 );

setRotateKey( spep_1 -1 + 272, 1, -0 );
setRotateKey( spep_1 -1 + 287, 1, -0 );--
setRotateKey( spep_1 -1 + 288, 1, 12 );
setRotateKey( spep_1 -1 + 289, 1, 12 );
setRotateKey( spep_1 -1 + 290, 1, 11.9 );
setRotateKey( spep_1 -1 + 291, 1, 11.9 );
setRotateKey( spep_1 -1 + 292, 1, 11.8 );
setRotateKey( spep_1 -1 + 293, 1, 11.8 );
setRotateKey( spep_1 -1 + 294, 1, 11.7 );
setRotateKey( spep_1 -1 + 295, 1, 11.7 );
setRotateKey( spep_1 -1 + 296, 1, 11.6 );
setRotateKey( spep_1 -1 + 297, 1, 11.6 );
setRotateKey( spep_1 -1 + 298, 1, 11.5 );
setRotateKey( spep_1 -1 + 299, 1, 11.5 );
setRotateKey( spep_1 -1 + 300, 1, 11.4 );
setRotateKey( spep_1 -1 + 301, 1, 11.4 );
setRotateKey( spep_1 -1 + 302, 1, 11.3 );
setRotateKey( spep_1 -1 + 303, 1, 11.3 );
setRotateKey( spep_1 -1 + 304, 1, 11.2 );
setRotateKey( spep_1 -1 + 305, 1, 11.2 );
setRotateKey( spep_1 -1 + 306, 1, 11.1 );
setRotateKey( spep_1 -1 + 307, 1, 11.1 );
setRotateKey( spep_1 -1 + 308, 1, 11 );
setRotateKey( spep_1 -1 + 309, 1, 11 );
setRotateKey( spep_1 -1 + 310, 1, 10.9 );
setRotateKey( spep_1 -1 + 311, 1, 10.9 );
setRotateKey( spep_1 -1 + 312, 1, 10.8 );
setRotateKey( spep_1 -1 + 313, 1, 10.8 );
setRotateKey( spep_1 -1 + 314, 1, 10.7 );
setRotateKey( spep_1 -1 + 315, 1, 10.7 );
setRotateKey( spep_1 -1 + 316, 1, 10.6 );
setRotateKey( spep_1 -1 + 317, 1, 10.6 );
setRotateKey( spep_1 -1 + 318, 1, 10.5 );
setRotateKey( spep_1 -1 + 319, 1, 10.5 );
setRotateKey( spep_1 -1 + 320, 1, 10.4 );
setRotateKey( spep_1 -1 + 321, 1, 10.4 );
setRotateKey( spep_1 -1 + 322, 1, 10.3 );
setRotateKey( spep_1 -1 + 323, 1, 10.3 );
setRotateKey( spep_1 -1 + 324, 1, 10.2 );
setRotateKey( spep_1 -1 + 325, 1, 10.2 );
setRotateKey( spep_1 -1 + 326, 1, 10.1 );
setRotateKey( spep_1 -1 + 327, 1, 10.1 );
setRotateKey( spep_1 -1 + 328, 1, 10 );
setRotateKey( spep_1 -1 + 361, 1, 10 );

setAlphaKey( spep_1 -1 + 272, 1, 255 );
setAlphaKey( spep_1 -1 + 361, 1, 255 );

-- ** 音 ** --
--オーラ   
SE030 = playSeVer2( spep_1 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE030, 63 );
setPitch( spep_1 + 12, SE030, -300 );
setTimeStretch( SE030, 0.8, 30, 4 );
SE031 = playSeVer2( spep_1 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE031, 63 );
setPitch( spep_1 + 36, SE031, -300 );
setTimeStretch( SE031, 0.8, 30, 4 );
SE039 = playSeVer2( spep_1 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 112, SE039, 56 );
SE040 = playSeVer2( spep_1 + 112, 1181, "",spep_1 + 254, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 112, SE040, 200 );
SE041 = playSeVer2( spep_1 + 112, 1176, "",spep_1 + 254, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 112, SE041, 123 );
SE042 = playSeVer2( spep_1 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 136, SE042, 56 );
SE043 = playSeVer2( spep_1 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 160, SE043, 56 );
SE045 = playSeVer2( spep_1 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 184, SE045, 56 );
SE046 = playSeVer2( spep_1 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 208, SE046, 56 );
SE047 = playSeVer2( spep_1 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 232, SE047, 56 );

--アッパー
SE032 = playSeVer2( spep_1 + 48, 1359, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 50, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 50, 1120, "", 0, 0, 0, -1);

--爆風
SE035 = playSeVer2( spep_1 + 96, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE035, 63 );
SE036 = playSeVer2( spep_1 + 96, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE036, 56 );

--気ダメ
SE037 = playSeVer2( spep_1 + 110, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE037, 71 );
SE038 = playSeVer2( spep_1 + 110, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE038, 126 );

--画面遷移
SE044 = playSeVer2( spep_1 + 170, 1072, "", 0, 0, 0, -1);

--突っ込んでくる
SE048 = playSeVer2( spep_1 + 238, 1182, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 238, 9, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 238, 1277, "", 0, 0, 0, -1);

--膝蹴り
SE051 = playSeVer2( spep_1 + 282, 1153, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_1 + 282, 1187, "", 0, 0, 0, -1);

--蹴り飛ばし
SE053 = playSeVer2( spep_1 + 324, 1123, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_1 + 328, 1110, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 328, 1114, "", 0, 0, 0, -1);

--気が弾ける
SE056 = playSeVer2( spep_1 + 344, 1026, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 360 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 360;


------------------------------------------------------
-- 画面のオーラ割れカードカットイン(118F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
aura = entryEffectLife( spep_2 + 0, SP_05, 118, 0x100, -1, 0, 0, 0 );  --画面のオーラ割れカードカットイン   ef_005
setEffMoveKey( spep_2 + 0, aura, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, aura, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, aura, -1.0, 1.0 );
setEffScaleKey( spep_2 + 118, aura, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, aura, 0 );
setEffRotateKey( spep_2 + 118, aura, 0 );
setEffAlphaKey( spep_2 + 0, aura, 255 );
setEffAlphaKey( spep_2 + 118 -2, aura, 255 );
setEffAlphaKey( spep_2 + 118 -1, aura, 255 );
setEffAlphaKey( spep_2 + 118, aura, 0 );

spep_x = spep_2 + 26;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--かめはめ波溜め
SE057 = playSeVer2( spep_2 + 44, 1210, "",spep_2 + 140, 28, 20, 0.5);
setStartTimeMs( SE057,  633 );

--顔カットイン
--SE058 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE059 = playSeVer2( spep_2 + 28, 1004, "", 0, 0, 0, -1);

--かめはめ波溜め
SE060 = playSeVer2( spep_2 + 42, 1209, "",spep_2 + 140, 0, 20, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;


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

--発射前かめはめ波溜め
SE061 = playSeVer2( spep_3 + 80, 1210, "",spep_3 + 150, 10, 20, 0.5);
setStartTimeMs( SE061,  2033 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 正面にかめはめ波を放つ(228F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --正面にかめはめ波を放つ ef_006
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 228, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 228, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 228, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 228, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --正面にかめはめ波を放つ（背景）  ef_007
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 228, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 228, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 228, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 228, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -1 + 48, 1, 1 );
setDisp( spep_4 -1 + 174, 1, 0 );
changeAnime( spep_4 -1 + 48, 1, 7 );

setBlendColor( spep_4 -1 + 60, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_4 -1 + 62, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_4 -1 + 64, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_4 -1 + 66, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_4 -1 + 68, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_4 -1 + 70, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_4 -1 + 72, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_4 -1 + 74, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_4 -1 + 76, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_4 -1 + 78, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_4 -1 + 80, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_4 -1 + 82, 1, 3, 0, 0, 0, 0.78 );
setBlendColor( spep_4 -1 + 84, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_4 -1 + 86, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_4 -1 + 88, 1, 3, 0, 0, 0, 0.90 );
setBlendColor( spep_4 -1 + 90, 1, 3, 0, 0, 0, 0.92 );
setBlendColor( spep_4 -1 + 92, 1, 3, 0, 0, 0, 0.94 );
setBlendColor( spep_4 -1 + 94, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_4 -1 + 96, 1, 3, 0, 0, 0, 0.96 );
setBlendColor( spep_4 -1 + 98, 1, 3, 0, 0, 0, 0.97 );
setBlendColor( spep_4 -1 + 100, 1, 3, 0, 0, 0, 0.98 );
setBlendColor( spep_4 -1 + 102, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_4 -1 + 173, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_4 -1 + 174, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_4 -1 + 48, 1, -125.7, -788.5 , 0 );
setMoveKey( spep_4 -1 + 50, 1, -119.3, -804.2 , 0 );
setMoveKey( spep_4 -1 + 52, 1, -109.3, -760.9 , 0 );
setMoveKey( spep_4 -1 + 54, 1, -115.3, -751.5 , 0 );
setMoveKey( spep_4 -1 + 56, 1, -111.2, -684.7 , 0 );
setMoveKey( spep_4 -1 + 58, 1, -109.8, -638.3 , 0 );
setMoveKey( spep_4 -1 + 60, 1, -122.4, -544.9 , 0 );
setMoveKey( spep_4 -1 + 62, 1, -114.9, -479.4 , 0 );
setMoveKey( spep_4 -1 + 64, 1, -119.9, -355.5 , 0 );
setMoveKey( spep_4 -1 + 66, 1, -112, -263 , 0 );
setMoveKey( spep_4 -1 + 68, 1, -102.7, -109.5 , 0 );
setMoveKey( spep_4 -1 + 70, 1, -95.9, -130.1 , 0 );
setMoveKey( spep_4 -1 + 72, 1, -98.1, -105.2 , 0 );
setMoveKey( spep_4 -1 + 74, 1, -88.1, -101.9 , 0 );
setMoveKey( spep_4 -1 + 76, 1, -87.8, -101.6 , 0 );
setMoveKey( spep_4 -1 + 78, 1, -73, -83.1 , 0 );
setMoveKey( spep_4 -1 + 80, 1, -67.8, -92.5 , 0 );
setMoveKey( spep_4 -1 + 82, 1, -73.6, -73.5 , 0 );
setMoveKey( spep_4 -1 + 84, 1, -71.1, -82.9 , 0 );
setMoveKey( spep_4 -1 + 86, 1, -58.1, -65.7 , 0 );
setMoveKey( spep_4 -1 + 88, 1, -54.5, -75.8 , 0 );
setMoveKey( spep_4 -1 + 90, 1, -61.3, -60.1 , 0 );
setMoveKey( spep_4 -1 + 92, 1, -58.6, -70.1 , 0 );
setMoveKey( spep_4 -1 + 94, 1, -46.9, -54.9 , 0 );
setMoveKey( spep_4 -1 + 96, 1, -44.6, -67.5 , 0 );
setMoveKey( spep_4 -1 + 98, 1, -53.2, -51.4 , 0 );
setMoveKey( spep_4 -1 + 100, 1, -53.3, -63.7 , 0 );
setMoveKey( spep_4 -1 + 102, 1, -42.6, -49 , 0 );
setMoveKey( spep_4 -1 + 104, 1, -41.3, -61.5 , 0 );
setMoveKey( spep_4 -1 + 106, 1, -50.1, -48.1 , 0 );
setMoveKey( spep_4 -1 + 108, 1, -49.3, -60 , 0 );
setMoveKey( spep_4 -1 + 110, 1, -39.3, -46.6 , 0 );
setMoveKey( spep_4 -1 + 111, 1, -39.3, -46.6 , 0 );
setMoveKey( spep_4 -1 + 112, 1, -38.5, -60.9 , 0 );
setMoveKey( spep_4 -1 + 113, 1, -38.5, -60.9 , 0 );
setMoveKey( spep_4 -1 + 114, 1, -48.4, -46.3 , 0 );
setMoveKey( spep_4 -1 + 115, 1, -48.4, -46.3 , 0 );
setMoveKey( spep_4 -1 + 116, 1, -49.6, -59.7 , 0 );
setMoveKey( spep_4 -1 + 117, 1, -49.6, -59.7 , 0 );
setMoveKey( spep_4 -1 + 118, 1, -40, -46.2 , 0 );
setMoveKey( spep_4 -1 + 119, 1, -40, -46.2 , 0 );
setMoveKey( spep_4 -1 + 120, 1, -39.4, -59.5 , 0 );
setMoveKey( spep_4 -1 + 121, 1, -39.4, -59.5 , 0 );
setMoveKey( spep_4 -1 + 122, 1, -48.3, -46.1 , 0 );
setMoveKey( spep_4 -1 + 123, 1, -48.3, -46.1 , 0 );
setMoveKey( spep_4 -1 + 124, 1, -47.4, -57.9 , 0 );
setMoveKey( spep_4 -1 + 125, 1, -47.4, -57.9 , 0 );
setMoveKey( spep_4 -1 + 126, 1, -37.1, -44.3 , 0 );
setMoveKey( spep_4 -1 + 127, 1, -37.1, -44.3 , 0 );
setMoveKey( spep_4 -1 + 128, 1, -36, -58.2 , 0 );
setMoveKey( spep_4 -1 + 129, 1, -36, -58.2 , 0 );
setMoveKey( spep_4 -1 + 130, 1, -45.4, -43.1 , 0 );
setMoveKey( spep_4 -1 + 131, 1, -45.4, -43.1 , 0 );
setMoveKey( spep_4 -1 + 132, 1, -46.2, -56 , 0 );
setMoveKey( spep_4 -1 + 133, 1, -46.2, -56 , 0 );
setMoveKey( spep_4 -1 + 134, 1, -36, -41.9 , 0 );
setMoveKey( spep_4 -1 + 135, 1, -36, -41.9 , 0 );
setMoveKey( spep_4 -1 + 136, 1, -34.8, -54.6 , 0 );
setMoveKey( spep_4 -1 + 137, 1, -34.8, -54.6 , 0 );
setMoveKey( spep_4 -1 + 138, 1, -43.7, -41.2 , 0 );
setMoveKey( spep_4 -1 + 139, 1, -43.7, -41.2 , 0 );
setMoveKey( spep_4 -1 + 140, 1, -42.8, -53 , 0 );
setMoveKey( spep_4 -1 + 141, 1, -42.8, -53 , 0 );
setMoveKey( spep_4 -1 + 142, 1, -32.6, -39.4 , 0 );
setMoveKey( spep_4 -1 + 143, 1, -32.6, -39.4 , 0 );
setMoveKey( spep_4 -1 + 144, 1, -31.4, -53.3 , 0 );
setMoveKey( spep_4 -1 + 145, 1, -31.4, -53.3 , 0 );
setMoveKey( spep_4 -1 + 146, 1, -40.9, -38.2 , 0 );
setMoveKey( spep_4 -1 + 147, 1, -40.9, -38.2 , 0 );
setMoveKey( spep_4 -1 + 148, 1, -41.6, -51.2 , 0 );
setMoveKey( spep_4 -1 + 149, 1, -41.6, -51.2 , 0 );
setMoveKey( spep_4 -1 + 150, 1, -31.4, -37 , 0 );
setMoveKey( spep_4 -1 + 151, 1, -31.4, -37 , 0 );
setMoveKey( spep_4 -1 + 152, 1, -30.3, -49.7 , 0 );
setMoveKey( spep_4 -1 + 153, 1, -30.3, -49.7 , 0 );
setMoveKey( spep_4 -1 + 154, 1, -39.2, -36.3 , 0 );
setMoveKey( spep_4 -1 + 155, 1, -39.2, -36.3 , 0 );
setMoveKey( spep_4 -1 + 156, 1, -38.3, -48.1 , 0 );
setMoveKey( spep_4 -1 + 157, 1, -38.3, -48.1 , 0 );
setMoveKey( spep_4 -1 + 158, 1, -28, -34.5 , 0 );
setMoveKey( spep_4 -1 + 159, 1, -28, -34.5 , 0 );
setMoveKey( spep_4 -1 + 160, 1, -26.9, -48.3 , 0 );
setMoveKey( spep_4 -1 + 161, 1, -26.9, -48.3 , 0 );
setMoveKey( spep_4 -1 + 162, 1, -36.4, -33.3 , 0 );
setMoveKey( spep_4 -1 + 163, 1, -36.4, -33.3 , 0 );
setMoveKey( spep_4 -1 + 164, 1, -37.1, -46.2 , 0 );
setMoveKey( spep_4 -1 + 165, 1, -37.1, -46.2 , 0 );
setMoveKey( spep_4 -1 + 166, 1, -26.9, -32 , 0 );
setMoveKey( spep_4 -1 + 167, 1, -26.9, -32 , 0 );
setMoveKey( spep_4 -1 + 168, 1, -25.8, -44.8 , 0 );
setMoveKey( spep_4 -1 + 169, 1, -25.8, -44.8 , 0 );
setMoveKey( spep_4 -1 + 170, 1, -34.7, -31.3 , 0 );
setMoveKey( spep_4 -1 + 171, 1, -34.7, -31.3 , 0 );
setMoveKey( spep_4 -1 + 172, 1, -33.7, -43.2 , 0 );
setMoveKey( spep_4 -1 + 173, 1, -33.7, -43.2 , 0 );
setMoveKey( spep_4 -1 + 174, 1, -33.7, -43.2 , 0 );

setScaleKey( spep_4 -1 + 48, 1, 5.99, 5.99 );
setScaleKey( spep_4 -1 + 50, 1, 5.96, 5.96 );
setScaleKey( spep_4 -1 + 52, 1, 5.85, 5.85 );
setScaleKey( spep_4 -1 + 54, 1, 5.67, 5.67 );
setScaleKey( spep_4 -1 + 56, 1, 5.43, 5.43 );
setScaleKey( spep_4 -1 + 58, 1, 5.11, 5.11 );
setScaleKey( spep_4 -1 + 60, 1, 4.72, 4.72 );
setScaleKey( spep_4 -1 + 62, 1, 4.26, 4.26 );
setScaleKey( spep_4 -1 + 64, 1, 3.73, 3.73 );
setScaleKey( spep_4 -1 + 66, 1, 3.13, 3.13 );
setScaleKey( spep_4 -1 + 68, 1, 2.46, 2.46 );
setScaleKey( spep_4 -1 + 70, 1, 2.3, 2.3 );
setScaleKey( spep_4 -1 + 72, 1, 2.15, 2.15 );
setScaleKey( spep_4 -1 + 74, 1, 2.01, 2.01 );
setScaleKey( spep_4 -1 + 76, 1, 1.89, 1.89 );
setScaleKey( spep_4 -1 + 78, 1, 1.78, 1.78 );
setScaleKey( spep_4 -1 + 80, 1, 1.68, 1.68 );
setScaleKey( spep_4 -1 + 82, 1, 1.58, 1.58 );
setScaleKey( spep_4 -1 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_4 -1 + 86, 1, 1.42, 1.42 );
setScaleKey( spep_4 -1 + 88, 1, 1.36, 1.36 );
setScaleKey( spep_4 -1 + 90, 1, 1.3, 1.3 );
setScaleKey( spep_4 -1 + 92, 1, 1.25, 1.25 );
setScaleKey( spep_4 -1 + 94, 1, 1.2, 1.2 );
setScaleKey( spep_4 -1 + 96, 1, 1.16, 1.16 );
setScaleKey( spep_4 -1 + 98, 1, 1.13, 1.13 );
setScaleKey( spep_4 -1 + 100, 1, 1.11, 1.11 );
setScaleKey( spep_4 -1 + 102, 1, 1.08, 1.08 );
setScaleKey( spep_4 -1 + 104, 1, 1.07, 1.07 );
setScaleKey( spep_4 -1 + 106, 1, 1.05, 1.05 );
setScaleKey( spep_4 -1 + 108, 1, 1.04, 1.04 );
setScaleKey( spep_4 -1 + 110, 1, 1.03, 1.03 );
setScaleKey( spep_4 -1 + 115, 1, 1.03, 1.03 );
setScaleKey( spep_4 -1 + 116, 1, 1.02, 1.02 );
setScaleKey( spep_4 -1 + 121, 1, 1.02, 1.02 );
setScaleKey( spep_4 -1 + 122, 1, 1.01, 1.01 );
setScaleKey( spep_4 -1 + 123, 1, 1.01, 1.01 );
setScaleKey( spep_4 -1 + 124, 1, 1, 1 );
setScaleKey( spep_4 -1 + 125, 1, 1, 1 );
setScaleKey( spep_4 -1 + 126, 1, 0.99, 0.99 );
setScaleKey( spep_4 -1 + 127, 1, 0.99, 0.99 );
setScaleKey( spep_4 -1 + 128, 1, 0.97, 0.97 );
setScaleKey( spep_4 -1 + 129, 1, 0.97, 0.97 );
setScaleKey( spep_4 -1 + 130, 1, 0.96, 0.96 );
setScaleKey( spep_4 -1 + 131, 1, 0.96, 0.96 );
setScaleKey( spep_4 -1 + 132, 1, 0.95, 0.95 );
setScaleKey( spep_4 -1 + 133, 1, 0.95, 0.95 );
setScaleKey( spep_4 -1 + 134, 1, 0.94, 0.94 );
setScaleKey( spep_4 -1 + 135, 1, 0.94, 0.94 );
setScaleKey( spep_4 -1 + 136, 1, 0.92, 0.92 );
setScaleKey( spep_4 -1 + 137, 1, 0.92, 0.92 );
setScaleKey( spep_4 -1 + 138, 1, 0.91, 0.91 );
setScaleKey( spep_4 -1 + 139, 1, 0.91, 0.91 );
setScaleKey( spep_4 -1 + 140, 1, 0.9, 0.9 );
setScaleKey( spep_4 -1 + 141, 1, 0.9, 0.9 );
setScaleKey( spep_4 -1 + 142, 1, 0.89, 0.89 );
setScaleKey( spep_4 -1 + 143, 1, 0.89, 0.89 );
setScaleKey( spep_4 -1 + 144, 1, 0.87, 0.87 );
setScaleKey( spep_4 -1 + 145, 1, 0.87, 0.87 );
setScaleKey( spep_4 -1 + 146, 1, 0.86, 0.86 );
setScaleKey( spep_4 -1 + 147, 1, 0.86, 0.86 );
setScaleKey( spep_4 -1 + 148, 1, 0.85, 0.85 );
setScaleKey( spep_4 -1 + 149, 1, 0.85, 0.85 );
setScaleKey( spep_4 -1 + 150, 1, 0.84, 0.84 );
setScaleKey( spep_4 -1 + 151, 1, 0.84, 0.84 );
setScaleKey( spep_4 -1 + 152, 1, 0.82, 0.82 );
setScaleKey( spep_4 -1 + 153, 1, 0.82, 0.82 );
setScaleKey( spep_4 -1 + 154, 1, 0.81, 0.81 );
setScaleKey( spep_4 -1 + 155, 1, 0.81, 0.81 );
setScaleKey( spep_4 -1 + 156, 1, 0.8, 0.8 );
setScaleKey( spep_4 -1 + 157, 1, 0.8, 0.8 );
setScaleKey( spep_4 -1 + 158, 1, 0.79, 0.79 );
setScaleKey( spep_4 -1 + 159, 1, 0.79, 0.79 );
setScaleKey( spep_4 -1 + 160, 1, 0.77, 0.77 );
setScaleKey( spep_4 -1 + 161, 1, 0.77, 0.77 );
setScaleKey( spep_4 -1 + 162, 1, 0.76, 0.76 );
setScaleKey( spep_4 -1 + 163, 1, 0.76, 0.76 );
setScaleKey( spep_4 -1 + 164, 1, 0.75, 0.75 );
setScaleKey( spep_4 -1 + 165, 1, 0.75, 0.75 );
setScaleKey( spep_4 -1 + 166, 1, 0.74, 0.74 );
setScaleKey( spep_4 -1 + 167, 1, 0.74, 0.74 );
setScaleKey( spep_4 -1 + 168, 1, 0.72, 0.72 );
setScaleKey( spep_4 -1 + 169, 1, 0.72, 0.72 );
setScaleKey( spep_4 -1 + 170, 1, 0.71, 0.71 );
setScaleKey( spep_4 -1 + 171, 1, 0.71, 0.71 );
setScaleKey( spep_4 -1 + 172, 1, 0.7, 0.7 );
setScaleKey( spep_4 -1 + 173, 1, 0.7, 0.7 );
setScaleKey( spep_4 -1 + 174, 1, 0.7, 0.7 );

setRotateKey( spep_4 -1 + 48, 1, -23.8 );
setRotateKey( spep_4 -1 + 52, 1, -23.8 );
setRotateKey( spep_4 -1 + 54, 1, -23.9 );
setRotateKey( spep_4 -1 + 56, 1, -23.9 );
setRotateKey( spep_4 -1 + 58, 1, -24 );
setRotateKey( spep_4 -1 + 60, 1, -24.1 );
setRotateKey( spep_4 -1 + 62, 1, -24.2 );
setRotateKey( spep_4 -1 + 64, 1, -24.3 );
setRotateKey( spep_4 -1 + 66, 1, -24.5 );
setRotateKey( spep_4 -1 + 68, 1, -24.6 );
setRotateKey( spep_4 -1 + 70, 1, -25.3 );
setRotateKey( spep_4 -1 + 72, 1, -26 );
setRotateKey( spep_4 -1 + 74, 1, -26.6 );
setRotateKey( spep_4 -1 + 76, 1, -27.1 );
setRotateKey( spep_4 -1 + 78, 1, -27.6 );
setRotateKey( spep_4 -1 + 80, 1, -28.1 );
setRotateKey( spep_4 -1 + 82, 1, -28.5 );
setRotateKey( spep_4 -1 + 84, 1, -28.8 );
setRotateKey( spep_4 -1 + 86, 1, -29.2 );
setRotateKey( spep_4 -1 + 88, 1, -29.4 );
setRotateKey( spep_4 -1 + 90, 1, -29.7 );
setRotateKey( spep_4 -1 + 92, 1, -29.9 );
setRotateKey( spep_4 -1 + 94, 1, -30.1 );
setRotateKey( spep_4 -1 + 96, 1, -30.3 );
setRotateKey( spep_4 -1 + 98, 1, -30.4 );
setRotateKey( spep_4 -1 + 100, 1, -30.6 );
setRotateKey( spep_4 -1 + 102, 1, -30.7 );
setRotateKey( spep_4 -1 + 104, 1, -30.7 );
setRotateKey( spep_4 -1 + 106, 1, -30.8 );
setRotateKey( spep_4 -1 + 108, 1, -30.8 );
setRotateKey( spep_4 -1 + 110, 1, -30.9 );
setRotateKey( spep_4 -1 + 121, 1, -30.9 );
setRotateKey( spep_4 -1 + 122, 1, -31 );
setRotateKey( spep_4 -1 + 125, 1, -31 );
setRotateKey( spep_4 -1 + 126, 1, -31.1 );
setRotateKey( spep_4 -1 + 129, 1, -31.1 );
setRotateKey( spep_4 -1 + 130, 1, -31.2 );
setRotateKey( spep_4 -1 + 133, 1, -31.2 );
setRotateKey( spep_4 -1 + 134, 1, -31.3 );
setRotateKey( spep_4 -1 + 135, 1, -31.3 );
setRotateKey( spep_4 -1 + 136, 1, -31.4 );
setRotateKey( spep_4 -1 + 139, 1, -31.4 );
setRotateKey( spep_4 -1 + 140, 1, -31.5 );
setRotateKey( spep_4 -1 + 143, 1, -31.5 );
setRotateKey( spep_4 -1 + 144, 1, -31.6 );
setRotateKey( spep_4 -1 + 147, 1, -31.6 );
setRotateKey( spep_4 -1 + 148, 1, -31.7 );
setRotateKey( spep_4 -1 + 151, 1, -31.7 );
setRotateKey( spep_4 -1 + 152, 1, -31.8 );
setRotateKey( spep_4 -1 + 153, 1, -31.8 );
setRotateKey( spep_4 -1 + 154, 1, -31.9 );
setRotateKey( spep_4 -1 + 157, 1, -31.9 );
setRotateKey( spep_4 -1 + 158, 1, -32 );
setRotateKey( spep_4 -1 + 161, 1, -32 );
setRotateKey( spep_4 -1 + 162, 1, -32.1 );
setRotateKey( spep_4 -1 + 165, 1, -32.1 );
setRotateKey( spep_4 -1 + 166, 1, -32.2 );
setRotateKey( spep_4 -1 + 169, 1, -32.2 );
setRotateKey( spep_4 -1 + 170, 1, -32.3 );
setRotateKey( spep_4 -1 + 174, 1, -32.3 );

setAlphaKey( spep_4 -1 + 48, 1, 255 );
setAlphaKey( spep_4 -1 + 120, 1, 255 );
setAlphaKey( spep_4 -1 + 122, 1, 245 );
setAlphaKey( spep_4 -1 + 124, 1, 235 );
setAlphaKey( spep_4 -1 + 126, 1, 225 );
setAlphaKey( spep_4 -1 + 128, 1, 215 );
setAlphaKey( spep_4 -1 + 130, 1, 205 );
setAlphaKey( spep_4 -1 + 132, 1, 195 );
setAlphaKey( spep_4 -1 + 134, 1, 185 );
setAlphaKey( spep_4 -1 + 136, 1, 175 );
setAlphaKey( spep_4 -1 + 138, 1, 165 );
setAlphaKey( spep_4 -1 + 140, 1, 155 );
setAlphaKey( spep_4 -1 + 142, 1, 145 );
setAlphaKey( spep_4 -1 + 144, 1, 135 );
setAlphaKey( spep_4 -1 + 146, 1, 125 );
setAlphaKey( spep_4 -1 + 148, 1, 115 );
setAlphaKey( spep_4 -1 + 150, 1, 105 );
setAlphaKey( spep_4 -1 + 152, 1, 95 );
setAlphaKey( spep_4 -1 + 154, 1, 85 );
setAlphaKey( spep_4 -1 + 156, 1, 75 );
setAlphaKey( spep_4 -1 + 158, 1, 65 );
setAlphaKey( spep_4 -1 + 160, 1, 55 );
setAlphaKey( spep_4 -1 + 162, 1, 45 );
setAlphaKey( spep_4 -1 + 164, 1, 35 );
setAlphaKey( spep_4 -1 + 166, 1, 25 );
setAlphaKey( spep_4 -1 + 168, 1, 15 );
setAlphaKey( spep_4 -1 + 170, 1, 0 );
setAlphaKey( spep_4 -1 + 174, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE063 = playSeVer2( spep_4 + 30, 1133, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_4 + 30, 1146, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_4 + 30, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE065, 78 );
SE066 = playSeVer2( spep_4 + 44, 1161, "", 0, 34, 0, -1);
setStartTimeMs( SE066,  233 );
SE067 = playSeVer2( spep_4 + 84, 1213, "", 0, 24, 0, -1);
setStartTimeMs( SE067,  900 );

--敵飲まれる
SE068 = playSeVer2( spep_4 + 102, 1258, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 108 );
endPhase( spep_4 + 218 );

end