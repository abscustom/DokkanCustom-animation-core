--4024390:セル(第二形態)_グラヴィティボマー
--sp_effect_a2_00177
--sp2366

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
SP_01 = 159675; --登場～単発気弾   ef_001
SP_02 = 159677; --着弾～回り込み～殴り    ef_002_front
SP_03 = 159678; --着弾～回り込み～殴り    ef_002_back
SP_04 = 159681; --大気弾　　　　   ef_003_front
SP_05 = 159682; --大気弾   ef_003_back
SP_06 = 159683; --フィニッシュ爆発  ef_004

--敵側
SP_01r = 159676;    --登場～単発気弾　敵側    ef_001_r
SP_02r = 159679;    --着弾～回り込み～殴り　敵側 ef_002_r_front
SP_03r = 159680;    --着弾～回り込み～殴り　敵側 ef_002_r_back

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 登場～単発気弾(236F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 236, 0x100, -1, 0, 0, 0 );  --登場～単発気弾 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 236, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 236 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 236, first_f, 0 );

spep_x = spep_0 + 52;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--尻尾引っ込める
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1354, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 52, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 67 );

--尻尾引っ込め終わり
SE004 = playSeVer2( spep_0 + 38, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 44, 1006, "", 0, 0, 0, -1);

--集中線
SE006 = playSeVer2( spep_0 + 52, 20, "", 0, 0, 0, -1);

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE008 = playSeVer2( spep_0 + 122, 1072, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 138, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE009, 46 );

--気弾発射
SE010 = playSeVer2( spep_0 + 194, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE010, 73 );
SE011 = playSeVer2( spep_0 + 194, 1155, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 194, 1021, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 198, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 236;


------------------------------------------------------
-- 着弾～回り込み～殴り(264F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_02, 264, 0x100, -1, 0, 0, 0 );  --着弾～回り込み～殴り ef_002_front
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 264, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 264, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 264, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 264 -1, attack_f, 255 );
setEffAlphaKey( spep_1 + 264, attack_f, 0 );

attack_b = entryEffectLife( spep_1 + 0, SP_03, 264, 0x80, -1, 0, 0, 0 );  --着弾～回り込み～殴り  ef_002_back
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 264, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 264, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 264, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 264 -1, attack_b, 255 );
setEffAlphaKey( spep_1 + 264, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 132, 159.9 , 0 );
setMoveKey( spep_1 + 1, 1, 126.9, 155 , 0 );
setMoveKey( spep_1 + 2, 1, 121.9, 150 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 116.8, 145 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 111.8, 140 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 106.7, 135 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 101.6, 130 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 96.6, 125 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 91.5, 120 , 0 );

setScaleKey( spep_1 + 0, 1, 1.2, 1.2 );

setRotateKey( spep_1 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 91.5, 120 , 0 );
    setMoveKey( SP_dodge + 2, 1, 86.5, 115.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 81.4, 110.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 76.3, 105.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 71.3, 100.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 66.2, 95.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

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
setDisp( spep_1 -3 + 176, 1, 0 );
changeAnime( spep_1 -3 + 38, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );

setMoveKey( spep_1 -3 + 18, 1, 86.5, 115.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 81.4, 110.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 76.3, 105.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 71.3, 100.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 66.2, 95.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 61.2, 90.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 56.1, 85.1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 51, 80.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 46, 75.1 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 40.9, 70.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 94.9, 128.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 63.5, 149.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 94.9, 84.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 37.2, 65 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 88.8, 171.2 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 43.3, 129.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 115.7, 97 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 64.9, 84.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 136.9, 210 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 155.7, 188.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 202.4, 204.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 238.3, 280.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 318.2, 326.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 407.7, 427.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 508.7, 495.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 599.1, 622.2 , 0 );
setMoveKey( spep_1 -3 + 69, 1, 599.1, 622.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -1613.7, -986.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -1296.7, -751.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -1000.9, -532.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -742.1, -341 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -528.4, -183 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -360.3, -58.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -233, 35.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -140.2, 103.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -75.9, 150 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -34.5, 179.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -46.4, 173.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -58.5, 167.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -70.5, 159.8 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -82.6, 151.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -94.7, 143.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -90, 144.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -85.3, 146.4 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -80.5, 147.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -75.8, 149.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -71.1, 151.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -66.5, 153 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -61.8, 154.8 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -57.3, 156.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -52.6, 158.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -48.1, 160.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -43.5, 162.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 26.6, 137.2 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 27.6, 143.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 28.6, 149.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 29.6, 155.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 30.6, 161.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 31.6, 168.2 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 32.5, 174.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 33.4, 181 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 34.4, 187.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 35.3, 194.2 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 36.2, 200.9 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 37.1, 207.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 38.1, 214.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 32.4, 211.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 26.6, 207.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 20.9, 203.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 15.2, 199.9 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 9.5, 195.5 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 3.8, 191 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -1.7, 186.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -7.3, 180.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -12.9, 175.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -18.4, 169.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -23.9, 163.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -29.3, 157.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -34.7, 150.8 , 0 );
setMoveKey( spep_1 -3 + 175, 1, -40.2, 144.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -40.2, 144.2 , 0 );

setScaleKey( spep_1 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 69, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 70, 1, 5.72, 5.72 );
setScaleKey( spep_1 -3 + 72, 1, 4.99, 4.99 );
setScaleKey( spep_1 -3 + 74, 1, 4.31, 4.31 );
setScaleKey( spep_1 -3 + 76, 1, 3.69, 3.69 );
setScaleKey( spep_1 -3 + 78, 1, 3.17, 3.17 );
setScaleKey( spep_1 -3 + 80, 1, 2.74, 2.74 );
setScaleKey( spep_1 -3 + 82, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 84, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 86, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 88, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 90, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 92, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 94, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 96, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 98, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 100, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 102, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 104, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 106, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 108, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 110, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 112, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 114, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 116, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 118, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 120, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 122, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 124, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 126, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 128, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 130, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 132, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 134, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 136, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 138, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 140, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 142, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 144, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 146, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 148, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 150, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 152, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 154, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 156, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 158, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 160, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 162, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 164, 1, 1.92, 1.92 );
setScaleKey( spep_1 -3 + 166, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 168, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 170, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 172, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 175, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 176, 1, 1.57, 1.57 );

setRotateKey( spep_1 -3 + 37, 1, 0 );
setRotateKey( spep_1 -3 + 38, 1, -20.3 );
setRotateKey( spep_1 -3 + 49, 1, -20.3 );
setRotateKey( spep_1 -3 + 50, 1, 0 );
setRotateKey( spep_1 -3 + 176, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 240, 1, 1 );
setDisp( spep_1 -3 + 267, 1, 0 );
changeAnime( spep_1 -3 + 240, 1, 105 );

setMoveKey( spep_1 -3 + 240, 1, -82.8, -176.5 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -60.6, -132 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -44.6, -99.8 , 0 );
setMoveKey( spep_1 -3 + 246, 1, -32.9, -76 , 0 );
setMoveKey( spep_1 -3 + 248, 1, -24, -57.8 , 0 );
setMoveKey( spep_1 -3 + 250, 1, -17.3, -43.9 , 0 );
setMoveKey( spep_1 -3 + 252, 1, -12.2, -32.9 , 0 );
setMoveKey( spep_1 -3 + 254, 1, -8.1, -24.3 , 0 );
setMoveKey( spep_1 -3 + 256, 1, -5, -17.5 , 0 );
setMoveKey( spep_1 -3 + 258, 1, -2.8, -12.1 , 0 );
setMoveKey( spep_1 -3 + 260, 1, -2.7, -12.3 , 0 );
setMoveKey( spep_1 -3 + 262, 1, -2.6, -12.4 , 0 );
setMoveKey( spep_1 -3 + 264, 1, -2.6, -12.4 , 0 );
setMoveKey( spep_1 -3 + 266, 1, -2.6, -12.3 , 0 );
setMoveKey( spep_1 -3 + 267, 1, -2.6, -12.3 , 0 );

setScaleKey( spep_1 -3 + 240, 1, 11.11, 11.11 );
setScaleKey( spep_1 -3 + 242, 1, 8.37, 8.37 );
setScaleKey( spep_1 -3 + 244, 1, 6.4, 6.4 );
setScaleKey( spep_1 -3 + 246, 1, 4.96, 4.96 );
setScaleKey( spep_1 -3 + 248, 1, 3.88, 3.88 );
setScaleKey( spep_1 -3 + 250, 1, 3.06, 3.06 );
setScaleKey( spep_1 -3 + 252, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 254, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 256, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 258, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 260, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 262, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 264, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 266, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 267, 1, 1.24, 1.24 );

setRotateKey( spep_1 -3 + 240, 1, 0 );
setRotateKey( spep_1 -3 + 267, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE014 = playSeVer2( spep_1 + 32, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 32, 1011, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_1 + 92, 1109, "", 0, 0, 0, -1);

--向かっていく
SE017 = playSeVer2( spep_1 + 120, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 120, 1116, "",spep_1 + 172, 0, 16, -1);
SE019 = playSeVer2( spep_1 + 120, 9, "",spep_1 + 202, 22, 28, -1);
setSeVolumeByWorkId( spep_1 + 124, SE019, 66 );
SE020 = playSeVer2( spep_1 + 128, 1014, "", 0, 20, 0, -1);

--振りかぶる
SE021 = playSeVer2( spep_1 + 202, 1116, "",spep_1 + 244, 0, 14, -1);
SE022 = playSeVer2( spep_1 + 202, 1004, "", 0, 0, 0, -1);

--パンチ
SE023 = playSeVer2( spep_1 + 232, 1120, "",spep_1 + 280, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 264 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 264;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 大気弾(232F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_3 + 0, SP_04, 232, 0x100, -1, 0, 0, 0 );  --大気弾　ef_003_front
setEffMoveKey( spep_3 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 232, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 232, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_f, 0 );
setEffRotateKey( spep_3 + 232, kidan_f, 0 );
setEffAlphaKey( spep_3 + 0, kidan_f, 255 );
setEffAlphaKey( spep_3 + 232 -1, kidan_f, 255 );
setEffAlphaKey( spep_3 + 232, kidan_f, 0 );

kidan_b = entryEffectLife( spep_3 + 0, SP_05, 232, 0x80, -1, 0, 0, 0 );  --大気弾 ef_003_back
setEffMoveKey( spep_3 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 232, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 232, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_b, 0 );
setEffRotateKey( spep_3 + 232, kidan_b, 0 );
setEffAlphaKey( spep_3 + 0, kidan_b, 255 );
setEffAlphaKey( spep_3 + 232 -1, kidan_b, 255 );
setEffAlphaKey( spep_3 + 232, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 122, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -0.1, 44.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -0.1, 44.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 0, 44.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 0, 44.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 2.8, 47.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -1, 48 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 121, 1, -0.9, 43.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -0.9, 43.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 2, 1, 1, 1 );
setScaleKey( spep_3 -3 + 4, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 8, 1, 0.91, 0.91 );
setScaleKey( spep_3 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 14, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 20, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 26, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 30, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 32, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 34, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 36, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 40, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 46, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 48, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 50, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 52, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 54, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 56, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 58, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 60, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 62, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 64, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 68, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 70, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 76, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 121, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 122, 1, 0.39, 0.39 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 122, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 182, 1, 1 );
setDisp( spep_3 -3 + 232, 1, 0 );
changeAnime( spep_3 -3 + 236, 1, 105 );

setBlendColor( spep_3 -3 + 182, 1, 3, 0.25, 0.06, 0.09, 0.9 );
setBlendColor( spep_3 -3 + 231, 1, 3, 0.25, 0.06, 0.09, 0.9 );
setBlendColor( spep_3 -3 + 232, 1, 3, 0.25, 0.06, 0.09, 0 );

setMoveKey( spep_3 -3 + 182, 1, -5.1, 2.3 , 0 );
setMoveKey( spep_3 -3 + 204, 1, -5.1, 2.3 , 0 );
setMoveKey( spep_3 -3 + 206, 1, -5, 2.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, -5, 2.3 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 18.4, 29 , 0 );
setMoveKey( spep_3 -3 + 228, 1, -27.4, -35.1 , 0 );
setMoveKey( spep_3 -3 + 230, 1, -9.2, 10.8 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 21.3, -62.7 , 0 );

setScaleKey( spep_3 -3 + 182, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 184, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 186, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 188, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 190, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 192, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 194, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 196, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 198, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 200, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 202, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 204, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 206, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 208, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 210, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 212, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 214, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 216, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 232, 1, 0.46, 0.46 );

setRotateKey( spep_3 -3 + 182, 1, -47.2 );
setRotateKey( spep_3 -3 + 232, 1, -47.2 );

-- ** 音 ** --
--気弾溜め
SE025 = playSeVer2( spep_3 + 40, 1204, "",spep_3 + 180, 16, 18, 0.5);
setStartTimeMs( SE025,  1417 );

--敵飛んでいく
SE026 = playSeVer2( spep_3 + 2, 1183, "",spep_3 + 116, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 2, SE026, 54 );

--腕前に出す
SE027 = playSeVer2( spep_3 + 24, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE028 = playSeVer2( spep_3 + 40, 1296, "",spep_3 + 180, 0, 18, -1);
SE029 = playSeVer2( spep_3 + 46, 1158, "",spep_3 + 180, 0, 18, 0.6);
setSeVolumeByWorkId( spep_3 + 46, SE029, 51 );

--気弾発射
SE030 = playSeVer2( spep_3 + 138, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_3 + 150, 1193, "",spep_3 + 232, 0, 22, -1);
SE032 = playSeVer2( spep_3 + 150, 1109, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 150, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 150, SE033, 79 );
SE034 = playSeVer2( spep_3 + 150, 1201, "", 0, 0, 0, -1);

--気弾飲み込まれる
SE035 = playSeVer2( spep_3 + 182, 1021, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_3 + 212, 1067, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 212, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 232 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 232;


------------------------------------------------------
-- フィニッシュ爆発(130F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --フィニッシュ爆発 ef_004
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 130, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 130, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 130, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 130 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 130;


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 0 );
endPhase( spep_4 + 120 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場～単発気弾(236F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 236, 0x100, -1, 0, 0, 0 );  --登場～単発気弾 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 236, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 236 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 236, first_f, 0 );

spep_x = spep_0 + 52;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--尻尾引っ込める
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1354, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 52, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 67 );

--尻尾引っ込め終わり
SE004 = playSeVer2( spep_0 + 38, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 44, 1006, "", 0, 0, 0, -1);

--集中線
SE006 = playSeVer2( spep_0 + 52, 20, "", 0, 0, 0, -1);

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE008 = playSeVer2( spep_0 + 122, 1072, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 138, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE009, 46 );

--気弾発射
SE010 = playSeVer2( spep_0 + 194, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE010, 73 );
SE011 = playSeVer2( spep_0 + 194, 1155, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 194, 1021, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 198, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 236;


------------------------------------------------------
-- 着弾～回り込み～殴り(264F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_02r, 264, 0x100, -1, 0, 0, 0 );  --着弾～回り込み～殴り ef_002_front
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 264, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 264, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 264, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 264 -1, attack_f, 255 );
setEffAlphaKey( spep_1 + 264, attack_f, 0 );

attack_b = entryEffectLife( spep_1 + 0, SP_03r, 264, 0x80, -1, 0, 0, 0 );  --着弾～回り込み～殴り  ef_002_back
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 264, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 264, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 264, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 264 -1, attack_b, 255 );
setEffAlphaKey( spep_1 + 264, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 132, 159.9 , 0 );
setMoveKey( spep_1 + 1, 1, 126.9, 155 , 0 );
setMoveKey( spep_1 + 2, 1, 121.9, 150 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 116.8, 145 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 111.8, 140 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 106.7, 135 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 101.6, 130 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 96.6, 125 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 91.5, 120 , 0 );

setScaleKey( spep_1 + 0, 1, 1.2, 1.2 );

setRotateKey( spep_1 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 91.5, 120 , 0 );
    setMoveKey( SP_dodge + 2, 1, 86.5, 115.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 81.4, 110.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 76.3, 105.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 71.3, 100.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 66.2, 95.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
    setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

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
setDisp( spep_1 -3 + 176, 1, 0 );
changeAnime( spep_1 -3 + 38, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );

setMoveKey( spep_1 -3 + 18, 1, 86.5, 115.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 81.4, 110.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 76.3, 105.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 71.3, 100.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 66.2, 95.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 61.2, 90.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 56.1, 85.1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 51, 80.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 46, 75.1 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 40.9, 70.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 94.9, 128.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 63.5, 149.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 94.9, 84.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 37.2, 65 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 88.8, 171.2 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 43.3, 129.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 115.7, 97 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 64.9, 84.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 136.9, 210 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 155.7, 188.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 202.4, 204.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 238.3, 280.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 318.2, 326.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 407.7, 427.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 508.7, 495.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 599.1, 622.2 , 0 );
setMoveKey( spep_1 -3 + 69, 1, 599.1, 622.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -1613.7, -986.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -1296.7, -751.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -1000.9, -532.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -742.1, -341 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -528.4, -183 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -360.3, -58.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -233, 35.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -140.2, 103.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -75.9, 150 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -34.5, 179.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -46.4, 173.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -58.5, 167.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -70.5, 159.8 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -82.6, 151.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -94.7, 143.4 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -90, 144.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -85.3, 146.4 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -80.5, 147.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -75.8, 149.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -71.1, 151.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -66.5, 153 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -61.8, 154.8 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -57.3, 156.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -52.6, 158.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -48.1, 160.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -43.5, 162.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 26.6, 137.2 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 27.6, 143.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 28.6, 149.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 29.6, 155.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 30.6, 161.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 31.6, 168.2 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 32.5, 174.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 33.4, 181 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 34.4, 187.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 35.3, 194.2 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 36.2, 200.9 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 37.1, 207.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 38.1, 214.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 32.4, 211.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 26.6, 207.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 20.9, 203.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 15.2, 199.9 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 9.5, 195.5 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 3.8, 191 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -1.7, 186.1 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -7.3, 180.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -12.9, 175.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -18.4, 169.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -23.9, 163.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -29.3, 157.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -34.7, 150.8 , 0 );
setMoveKey( spep_1 -3 + 175, 1, -40.2, 144.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -40.2, 144.2 , 0 );

setScaleKey( spep_1 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 69, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 70, 1, 5.72, 5.72 );
setScaleKey( spep_1 -3 + 72, 1, 4.99, 4.99 );
setScaleKey( spep_1 -3 + 74, 1, 4.31, 4.31 );
setScaleKey( spep_1 -3 + 76, 1, 3.69, 3.69 );
setScaleKey( spep_1 -3 + 78, 1, 3.17, 3.17 );
setScaleKey( spep_1 -3 + 80, 1, 2.74, 2.74 );
setScaleKey( spep_1 -3 + 82, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 84, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 86, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 88, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 90, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 92, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 94, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 96, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 98, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 100, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 102, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 104, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 106, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 108, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 110, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 112, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 114, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 116, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 118, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 120, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 122, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 124, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 126, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 128, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 130, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 132, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 134, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 136, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 138, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 140, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 142, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 144, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 146, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 148, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 150, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 152, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 154, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 156, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 158, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 160, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 162, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 164, 1, 1.92, 1.92 );
setScaleKey( spep_1 -3 + 166, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 168, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 170, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 172, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 175, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 176, 1, 1.57, 1.57 );

setRotateKey( spep_1 -3 + 37, 1, 0 );
setRotateKey( spep_1 -3 + 38, 1, -20.3 );
setRotateKey( spep_1 -3 + 49, 1, -20.3 );
setRotateKey( spep_1 -3 + 50, 1, 0 );
setRotateKey( spep_1 -3 + 176, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 240, 1, 1 );
setDisp( spep_1 -3 + 267, 1, 0 );
changeAnime( spep_1 -3 + 240, 1, 105 );

setMoveKey( spep_1 -3 + 240, 1, -82.8, -176.5 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -60.6, -132 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -44.6, -99.8 , 0 );
setMoveKey( spep_1 -3 + 246, 1, -32.9, -76 , 0 );
setMoveKey( spep_1 -3 + 248, 1, -24, -57.8 , 0 );
setMoveKey( spep_1 -3 + 250, 1, -17.3, -43.9 , 0 );
setMoveKey( spep_1 -3 + 252, 1, -12.2, -32.9 , 0 );
setMoveKey( spep_1 -3 + 254, 1, -8.1, -24.3 , 0 );
setMoveKey( spep_1 -3 + 256, 1, -5, -17.5 , 0 );
setMoveKey( spep_1 -3 + 258, 1, -2.8, -12.1 , 0 );
setMoveKey( spep_1 -3 + 260, 1, -2.7, -12.3 , 0 );
setMoveKey( spep_1 -3 + 262, 1, -2.6, -12.4 , 0 );
setMoveKey( spep_1 -3 + 264, 1, -2.6, -12.4 , 0 );
setMoveKey( spep_1 -3 + 266, 1, -2.6, -12.3 , 0 );
setMoveKey( spep_1 -3 + 267, 1, -2.6, -12.3 , 0 );

setScaleKey( spep_1 -3 + 240, 1, 11.11, 11.11 );
setScaleKey( spep_1 -3 + 242, 1, 8.37, 8.37 );
setScaleKey( spep_1 -3 + 244, 1, 6.4, 6.4 );
setScaleKey( spep_1 -3 + 246, 1, 4.96, 4.96 );
setScaleKey( spep_1 -3 + 248, 1, 3.88, 3.88 );
setScaleKey( spep_1 -3 + 250, 1, 3.06, 3.06 );
setScaleKey( spep_1 -3 + 252, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 254, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 256, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 258, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 260, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 262, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 264, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 266, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 267, 1, 1.24, 1.24 );

setRotateKey( spep_1 -3 + 240, 1, 0 );
setRotateKey( spep_1 -3 + 267, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE014 = playSeVer2( spep_1 + 32, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 32, 1011, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_1 + 92, 1109, "", 0, 0, 0, -1);

--向かっていく
SE017 = playSeVer2( spep_1 + 120, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 120, 1116, "",spep_1 + 172, 0, 16, -1);
SE019 = playSeVer2( spep_1 + 120, 9, "",spep_1 + 202, 22, 28, -1);
setSeVolumeByWorkId( spep_1 + 124, SE019, 66 );
SE020 = playSeVer2( spep_1 + 128, 1014, "", 0, 20, 0, -1);

--振りかぶる
SE021 = playSeVer2( spep_1 + 202, 1116, "",spep_1 + 244, 0, 14, -1);
SE022 = playSeVer2( spep_1 + 202, 1004, "", 0, 0, 0, -1);

--パンチ
SE023 = playSeVer2( spep_1 + 232, 1120, "",spep_1 + 280, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 264 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 264;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 大気弾(232F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_3 + 0, SP_04, 232, 0x100, -1, 0, 0, 0 );  --大気弾　ef_003_front
setEffMoveKey( spep_3 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 232, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 232, kidan_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_f, 0 );
setEffRotateKey( spep_3 + 232, kidan_f, 0 );
setEffAlphaKey( spep_3 + 0, kidan_f, 255 );
setEffAlphaKey( spep_3 + 232 -1, kidan_f, 255 );
setEffAlphaKey( spep_3 + 232, kidan_f, 0 );

kidan_b = entryEffectLife( spep_3 + 0, SP_05, 232, 0x80, -1, 0, 0, 0 );  --大気弾 ef_003_back
setEffMoveKey( spep_3 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 232, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidan_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 232, kidan_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan_b, 0 );
setEffRotateKey( spep_3 + 232, kidan_b, 0 );
setEffAlphaKey( spep_3 + 0, kidan_b, 255 );
setEffAlphaKey( spep_3 + 232 -1, kidan_b, 255 );
setEffAlphaKey( spep_3 + 232, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 122, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -0.1, 44.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -0.1, 44.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 0, 44.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 0, 44.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 2.8, 47.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -1, 48 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 2.9, 47.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -0.9, 48 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 0, 41.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -1.9, 42.8 , 0 );
setMoveKey( spep_3 -3 + 121, 1, -0.9, 43.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -0.9, 43.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 2, 1, 1, 1 );
setScaleKey( spep_3 -3 + 4, 1, 0.97, 0.97 );
setScaleKey( spep_3 -3 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 8, 1, 0.91, 0.91 );
setScaleKey( spep_3 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 14, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 20, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 26, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 30, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 32, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 34, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 36, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 40, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 46, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 48, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 50, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 52, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 54, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 56, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 58, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 60, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 62, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 64, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 68, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 70, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 76, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 121, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 122, 1, 0.39, 0.39 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 122, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 182, 1, 1 );
setDisp( spep_3 -3 + 232, 1, 0 );
changeAnime( spep_3 -3 + 236, 1, 105 );

setBlendColor( spep_3 -3 + 182, 1, 3, 0.25, 0.06, 0.09, 0.9 );
setBlendColor( spep_3 -3 + 231, 1, 3, 0.25, 0.06, 0.09, 0.9 );
setBlendColor( spep_3 -3 + 232, 1, 3, 0.25, 0.06, 0.09, 0 );

setMoveKey( spep_3 -3 + 182, 1, -5.1, 2.3 , 0 );
setMoveKey( spep_3 -3 + 204, 1, -5.1, 2.3 , 0 );
setMoveKey( spep_3 -3 + 206, 1, -5, 2.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, -5, 2.3 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 18.4, 29 , 0 );
setMoveKey( spep_3 -3 + 228, 1, -27.4, -35.1 , 0 );
setMoveKey( spep_3 -3 + 230, 1, -9.2, 10.8 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 21.3, -62.7 , 0 );

setScaleKey( spep_3 -3 + 182, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 184, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 186, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 188, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 190, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 192, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 194, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 196, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 198, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 200, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 202, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 204, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 206, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 208, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 210, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 212, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 214, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 216, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 232, 1, 0.46, 0.46 );

setRotateKey( spep_3 -3 + 182, 1, -47.2 );
setRotateKey( spep_3 -3 + 232, 1, -47.2 );

-- ** 音 ** --
--気弾溜め
SE025 = playSeVer2( spep_3 + 40, 1204, "",spep_3 + 180, 16, 18, 0.5);
setStartTimeMs( SE025,  1417 );

--敵飛んでいく
SE026 = playSeVer2( spep_3 + 2, 1183, "",spep_3 + 116, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 2, SE026, 54 );

--腕前に出す
SE027 = playSeVer2( spep_3 + 24, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE028 = playSeVer2( spep_3 + 40, 1296, "",spep_3 + 180, 0, 18, -1);
SE029 = playSeVer2( spep_3 + 46, 1158, "",spep_3 + 180, 0, 18, 0.6);
setSeVolumeByWorkId( spep_3 + 46, SE029, 51 );

--気弾発射
SE030 = playSeVer2( spep_3 + 138, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_3 + 150, 1193, "",spep_3 + 232, 0, 22, -1);
SE032 = playSeVer2( spep_3 + 150, 1109, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 150, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 150, SE033, 79 );
SE034 = playSeVer2( spep_3 + 150, 1201, "", 0, 0, 0, -1);

--気弾飲み込まれる
SE035 = playSeVer2( spep_3 + 182, 1021, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_3 + 212, 1067, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 212, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 232 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 232;


------------------------------------------------------
-- フィニッシュ爆発(130F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --フィニッシュ爆発 ef_004
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 130, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_4 + 130, finish, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 130, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 130, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 130 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 130;


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 0 );
endPhase( spep_4 + 120 );

end