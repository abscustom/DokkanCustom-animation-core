--1022020:トランクス(GT)&孫悟天(GT)_ツインギャラクティカキック_sp2186
--sp_effect_b1_00149

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
SP_01 = 157283;		--開幕	ef_001
SP_02 = 157285;		--トランクス気弾投げ　前面	ef_002
SP_03 = 157287;		--トランクス気弾投げ　背面	ef_003
SP_04 = 157288;		--悟天アップでダッシュ	ef_004
SP_05 = 157290;		--悟天踏みつけて宙返り　前面	ef_005
SP_06 = 157291;		--悟天踏みつけて宙返り　背面	ef_006
SP_07 = 157292;		--二人でキック	ef_007
SP_08 = 157294;		--キックで押し込み　前面	ef_008
SP_09 = 157295;		--キックで押し込み　背面	ef_009
SP_10 = 157296;		--フィニッシュ爆煙	ef_010

--敵側
SP_01r = 157284;		--開幕　敵側	ef_001_e
SP_02r = 157286;		--トランクス気弾投げ　前面　敵側	ef_002_e
SP_04r = 157289;		--悟天アップでダッシュ　敵側	ef_004_e
SP_07r = 157293;		--二人でキック　敵側	ef_007_e

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
-- 開幕(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x80, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 99, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 122.5, -45.8 , 0 );
setMoveKey( spep_0 + 1, 1, 124.2, -45.6 , 0 );
setMoveKey( spep_0 + 2, 1, 125.9, -45.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 127.6, -45.1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 127.6, -45.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 129.2, -44.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 129.2, -44.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 130.9, -44.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 132.6, -44.4 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 134.3, -44.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 135.9, -43.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 137.6, -43.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 139.3, -43.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 140.9, -43.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 142.6, -42.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 144.3, -42.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 146, -42.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 147.6, -42.2 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 149.3, -41.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 151, -41.7 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 152.6, -41.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 154.3, -41.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 156, -40.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 157.7, -40.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 159.3, -40.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 161, -40.2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 162.7, -39.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 164.4, -39.7 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 166, -39.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 167.7, -39.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 169.4, -38.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 171, -38.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 172.7, -38.5 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 174.4, -38.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 176.1, -38 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 177.7, -37.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 179.4, -37.5 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 181.1, -37.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 182.7, -37 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 184.4, -36.7 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 186.1, -36.5 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 187.8, -36.2 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 189.4, -36 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 191.1, -35.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 192.8, -35.5 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 194.4, -35.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 196.1, -35 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 197.8, -34.8 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 199.5, -34.5 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 201.1, -34.3 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 202.8, -34 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 204.5, -33.8 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 204.5, -33.8 , 0 );

s1 = 0.6;
setScaleKey( spep_0 + 0, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_0 + 1, 1, 1.88 +s1, 1.88 +s1 );
setScaleKey( spep_0 + 2, 1, 1.89 +s1, 1.89 +s1 );
setScaleKey( spep_0 -3 + 6, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 7, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 8, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 9, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 10, 1, 1.91 +s1, 1.91 +s1 );
setScaleKey( spep_0 -3 + 12, 1, 1.92 +s1, 1.92 +s1 );
setScaleKey( spep_0 -3 + 14, 1, 1.92 +s1, 1.92 +s1 );
setScaleKey( spep_0 -3 + 16, 1, 1.93 +s1, 1.93 +s1 );
setScaleKey( spep_0 -3 + 18, 1, 1.94 +s1, 1.94 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.94 +s1, 1.94 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.95 +s1, 1.95 +s1 );
setScaleKey( spep_0 -3 + 24, 1, 1.96 +s1, 1.96 +s1 );
setScaleKey( spep_0 -3 + 26, 1, 1.97 +s1, 1.97 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.97 +s1, 1.97 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.99 +s1, 1.99 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.99 +s1, 1.99 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 2 +s1, 2 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 2.02 +s1, 2.02 +s1 );
setScaleKey( spep_0 -3 + 44, 1, 2.03 +s1, 2.03 +s1 );
setScaleKey( spep_0 -3 + 46, 1, 2.04 +s1, 2.04 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 2.04 +s1, 2.04 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 2.05 +s1, 2.05 +s1 );
setScaleKey( spep_0 -3 + 52, 1, 2.06 +s1, 2.06 +s1 );
setScaleKey( spep_0 -3 + 54, 1, 2.06 +s1, 2.06 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 2.07 +s1, 2.07 +s1 );
setScaleKey( spep_0 -3 + 58, 1, 2.08 +s1, 2.08 +s1 );
setScaleKey( spep_0 -3 + 60, 1, 2.08 +s1, 2.08 +s1 );
setScaleKey( spep_0 -3 + 62, 1, 2.09 +s1, 2.09 +s1 );
setScaleKey( spep_0 -3 + 64, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_0 -3 + 66, 1, 2.11 +s1, 2.11 +s1 );
setScaleKey( spep_0 -3 + 68, 1, 2.11 +s1, 2.11 +s1 );
setScaleKey( spep_0 -3 + 70, 1, 2.12 +s1, 2.12 +s1 );
setScaleKey( spep_0 -3 + 72, 1, 2.13 +s1, 2.13 +s1 );
setScaleKey( spep_0 -3 + 74, 1, 2.13 +s1, 2.13 +s1 );
setScaleKey( spep_0 -3 + 76, 1, 2.14 +s1, 2.14 +s1 );
setScaleKey( spep_0 -3 + 78, 1, 2.15 +s1, 2.15 +s1 );
setScaleKey( spep_0 -3 + 80, 1, 2.15 +s1, 2.15 +s1 );
setScaleKey( spep_0 -3 + 82, 1, 2.16 +s1, 2.16 +s1 );
setScaleKey( spep_0 -3 + 84, 1, 2.17 +s1, 2.17 +s1 );
setScaleKey( spep_0 -3 + 86, 1, 2.18 +s1, 2.18 +s1 );
setScaleKey( spep_0 -3 + 88, 1, 2.18 +s1, 2.18 +s1 );
setScaleKey( spep_0 -3 + 90, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_0 -3 + 92, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_0 -3 + 94, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_0 -3 + 96, 1, 2.21 +s1, 2.21 +s1 );
setScaleKey( spep_0 -3 + 98, 1, 2.22 +s1, 2.22 +s1 );
setScaleKey( spep_0 -3 + 99, 1, 2.22 +s1, 2.22 +s1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 99, 1, 0 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 8, 1018 );

--構える
SE002 = playSe( spep_0 + 18, 1233 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 73 );
setPitch( spep_0 + 18, SE002, -300 );
setTimeStretch( SE002, 0.8, 10, 1 );

--構える
SE003 = playSe( spep_0 + 28, 1006 );
setSeVolumeByWorkId( spep_0 + 28, SE003, 79 );
setPitch( spep_0 + 28, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--画面遷移
SE004 = playSe( spep_0 + 82, 1072 );
setSeVolumeByWorkId( spep_0 + 82, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 15 );
setSeVolumeByWorkId( spep_0 + 86, SE004, 30 );
setSeVolumeByWorkId( spep_0 + 88, SE004, 46 );
setSeVolumeByWorkId( spep_0 + 90, SE004, 52 );
setSeVolumeByWorkId( spep_0 + 92, SE004, 77 );
setStartTimeMs( SE004,  333 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- トランクス気弾投げ(92F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tkick_f = entryEffectLife( spep_1 + 0, SP_02, 92, 0x100, -1, 0, 0, 0 );  --トランクス気弾投げ　前面	ef_002
setEffMoveKey( spep_1 + 0, tkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, tkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, tkick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_f, 0 );
setEffRotateKey( spep_1 + 92, tkick_f, 0 );
setEffAlphaKey( spep_1 + 0, tkick_f, 255 );
setEffAlphaKey( spep_1 + 92 -1, tkick_f, 255 );
setEffAlphaKey( spep_1 + 92, tkick_f, 0 );

tkick_b = entryEffectLife( spep_1 + 0, SP_03, 92, 0x80, -1, 0, 0, 0 );  --トランクス気弾投げ　背面	ef_003
setEffMoveKey( spep_1 + 0, tkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, tkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, tkick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_b, 0 );
setEffRotateKey( spep_1 + 92, tkick_b, 0 );
setEffAlphaKey( spep_1 + 0, tkick_b, 255 );
setEffAlphaKey( spep_1 + 92 -1, tkick_b, 255 );
setEffAlphaKey( spep_1 + 92, tkick_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 92 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 書き文字エントリー ** --
ctbom = entryEffectLife( spep_1 -3 + 64,  10027, 30, 0x100, -1, 0, 61.1, -151.5 );	--ボンッ
setEffMoveKey( spep_1 -3 + 64, ctbom, 61.1, -151.5 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbom, 70.6, -184.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbom, 81.3, -212.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbom, 85, -203.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbom, 82.6, -216 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctbom, 83.3, -217.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctbom, 87.2, -208.4 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctbom, 84.6, -221.3 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctbom, 85.3, -223.2 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctbom, 89.3, -213.1 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctbom, 86.6, -226.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctbom, 87.3, -228.5 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctbom, 91.5, -217.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctbom, 88.7, -232.1 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctbom, 89.3, -233.9 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctbom, 93.8, -222.8 , 0 );

setEffScaleKey( spep_1 -3 + 64, ctbom, 0.89, 0.89 );
setEffScaleKey( spep_1 -3 + 66, ctbom, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 68, ctbom, 1.92, 1.92 );
setEffScaleKey( spep_1 -3 + 70, ctbom, 2.2, 2.2 );
setEffScaleKey( spep_1 -3 + 72, ctbom, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 74, ctbom, 2.03, 2.03 );
setEffScaleKey( spep_1 -3 + 76, ctbom, 2.32, 2.32 );
setEffScaleKey( spep_1 -3 + 78, ctbom, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 80, ctbom, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 82, ctbom, 2.44, 2.44 );
setEffScaleKey( spep_1 -3 + 84, ctbom, 2.48, 2.48 );
setEffScaleKey( spep_1 -3 + 86, ctbom, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 88, ctbom, 2.56, 2.56 );
setEffScaleKey( spep_1 -3 + 90, ctbom, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 92, ctbom, 2.35, 2.35 );
setEffScaleKey( spep_1 -3 + 94, ctbom, 2.68, 2.68 );

setEffRotateKey( spep_1 -3 + 64, ctbom, -20.6 );
setEffRotateKey( spep_1 -3 + 66, ctbom, -20.7 );
setEffRotateKey( spep_1 -3 + 94, ctbom, -20.7 );

setEffAlphaKey( spep_1 -3 + 64, ctbom, 255 );
setEffAlphaKey( spep_1 -3 + 94, ctbom, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 34, 1, 1 );
setDisp( spep_1 -3 + 95, 1, 0 );
changeAnime( spep_1 -3 + 34, 1, 104 );
changeAnime( spep_1 -3 + 64, 1, 107 );

setMoveKey( spep_1 -3 + 34, 1, 382.9, 69.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 368.7, 65 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 354.4, 60.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 340.1, 56 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 325.9, 51.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 311.6, 47 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 297.3, 42.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 283, 38 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 268.8, 33.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 254.5, 29 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 240.2, 24.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 225.9, 20 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 211.7, 15.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 197.4, 10.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 188.1, 11.4 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 188.1, 11.4 , 0 );--
setMoveKey( spep_1 -3 + 64, 1, 125.2, -24.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 125.3, -16.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 137.2, -23.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 133.2, -15.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 125.3, -24.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 131.2, -16.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 131.2, -23.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 133.3, -15.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 131.2, -24.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 125.2, -16.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 131.3, -23.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 139.2, -15.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 125.2, -24.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 125.3, -16.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 137.2, -23.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 131.2, -23.8 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 131.2, -23.8 , 0 );

setScaleKey( spep_1 -3 + 34, 1, 4.45, 4.45 );
setScaleKey( spep_1 -3 + 36, 1, 4.28, 4.28 );
setScaleKey( spep_1 -3 + 38, 1, 4.11, 4.11 );
setScaleKey( spep_1 -3 + 40, 1, 3.94, 3.94 );
setScaleKey( spep_1 -3 + 42, 1, 3.77, 3.77 );
setScaleKey( spep_1 -3 + 44, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 46, 1, 3.43, 3.43 );
setScaleKey( spep_1 -3 + 48, 1, 3.26, 3.26 );
setScaleKey( spep_1 -3 + 50, 1, 3.09, 3.09 );
setScaleKey( spep_1 -3 + 52, 1, 2.92, 2.92 );
setScaleKey( spep_1 -3 + 54, 1, 2.75, 2.75 );
setScaleKey( spep_1 -3 + 56, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 58, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 60, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 62, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 63, 1, 2.08, 2.08 );--
setScaleKey( spep_1 -3 + 64, 1, 1.022, 1.022 );
setScaleKey( spep_1 -3 + 95, 1, 1.022, 1.022 );

setRotateKey( spep_1 -3 + 34, 1, -12.3 );
setRotateKey( spep_1 -3 + 36, 1, -12.4 );
setRotateKey( spep_1 -3 + 63, 1, -12.4 );--
setRotateKey( spep_1 -3 + 64, 1, -77.7 );
setRotateKey( spep_1 -3 + 66, 1, -81 );
setRotateKey( spep_1 -3 + 68, 1, -75.7 );
setRotateKey( spep_1 -3 + 70, 1, -77.7 );
setRotateKey( spep_1 -3 + 72, 1, -81 );
setRotateKey( spep_1 -3 + 74, 1, -75.7 );
setRotateKey( spep_1 -3 + 76, 1, -77.7 );
setRotateKey( spep_1 -3 + 78, 1, -81 );
setRotateKey( spep_1 -3 + 80, 1, -75.7 );
setRotateKey( spep_1 -3 + 82, 1, -77.7 );
setRotateKey( spep_1 -3 + 84, 1, -81 );
setRotateKey( spep_1 -3 + 86, 1, -75.7 );
setRotateKey( spep_1 -3 + 88, 1, -77.7 );
setRotateKey( spep_1 -3 + 90, 1, -81 );
setRotateKey( spep_1 -3 + 92, 1, -75.7 );
setRotateKey( spep_1 -3 + 94, 1, -77.7 );
setRotateKey( spep_1 -3 + 95, 1, -77.7 );

-- ** 音 ** --
--気弾投げる
SE005 = playSe( spep_1 + 18, 19 );
setSeVolumeByWorkId( spep_1 + 18, SE005, 60 );

--気弾投げる
SE006 = playSe( spep_1 + 18, 1021 );
setSeVolumeByWorkId( spep_1 + 22, SE006, 132 );

--気弾投げる
SE007 = playSe( spep_1 + 24, 1155 );
setSeVolumeByWorkId( spep_1 + 24, SE007, 129 );
setPitch( spep_1 + 24, SE007, 400 );
setTimeStretch( SE007, 1.27, 10, 1 );

--気弾ヒット
SE008 = playSe( spep_1 + 62, 1011 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 80 );

--気弾ヒット
SE009 = playSe( spep_1 + 62, 1023 );
setSeVolumeByWorkId( spep_1 + 62, SE009, 88 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 92;


------------------------------------------------------
-- 悟天アップでダッシュ(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
gdash = entryEffectLife( spep_2 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --悟天アップでダッシュ	ef_004
setEffMoveKey( spep_2 + 0, gdash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, gdash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gdash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, gdash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gdash, 0 );
setEffRotateKey( spep_2 + 56, gdash, 0 );
setEffAlphaKey( spep_2 + 0, gdash, 255 );
setEffAlphaKey( spep_2 + 56 -1, gdash, 255 );
setEffAlphaKey( spep_2 + 56, gdash, 0 );

-- ** 音 ** --
--悟天ダッシュ
SE010 = playSe( spep_2 + 4, 9 );

--悟天敵に向かっていく
SE011 = playSe( spep_2 + 52, 1117 );
stopSe( spep_2 +56 + 16, SE011, 12 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- 悟天踏みつけて宙返り(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gkick_f = entryEffectLife( spep_3 + 0, SP_05, 86, 0x100, -1, 0, 0, 0 );  --悟天踏みつけて宙返り　前面	ef_005
setEffMoveKey( spep_3 + 0, gkick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, gkick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gkick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, gkick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gkick_f, 0 );
setEffRotateKey( spep_3 + 86, gkick_f, 0 );
setEffAlphaKey( spep_3 + 0, gkick_f, 255 );
setEffAlphaKey( spep_3 + 86 -1, gkick_f, 255 );
setEffAlphaKey( spep_3 + 86, gkick_f, 0 );

gkick_b = entryEffectLife( spep_3 + 0, SP_06, 86, 0x80, -1, 0, 0, 0 );  --悟天踏みつけて宙返り　背面	ef_006
setEffMoveKey( spep_3 + 0, gkick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, gkick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gkick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, gkick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gkick_b, 0 );
setEffRotateKey( spep_3 + 86, gkick_b, 0 );
setEffAlphaKey( spep_3 + 0, gkick_b, 255 );
setEffAlphaKey( spep_3 + 86 -1, gkick_b, 255 );
setEffAlphaKey( spep_3 + 86, gkick_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 23, 906, 19, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 23, shuchusen1, 90, 20 );
setEffMoveKey( spep_3 + 23, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 42, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 23, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_3 + 42, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_3 + 23, shuchusen1, 0 );
setEffRotateKey( spep_3 + 42, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 23, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 42, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 -3 + 26,  10005, 19, 0x100, -1, 0, 104.1, -201.4 );	--ガッ
setEffMoveKey( spep_3 -3 + 26, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctga, 110.7, -207 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 45, ctga, 114.3, -209.9 , 0 );
setEffScaleKey( spep_3 -3 + 26, ctga, 0.7, 0.7 );
setEffScaleKey( spep_3 -3 + 28, ctga, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 30, ctga, 2.29, 2.29 );
setEffScaleKey( spep_3 -3 + 45, ctga, 2.29, 2.29 );
setEffRotateKey( spep_3 -3 + 26, ctga, -19.1 );
setEffRotateKey( spep_3 -3 + 28, ctga, -19.2 );
setEffRotateKey( spep_3 -3 + 45, ctga, -19.2 );
setEffAlphaKey( spep_3 -3 + 26, ctga, 255 );
setEffAlphaKey( spep_3 -3 + 45, ctga, 255 );

ctdogon = entryEffectLife( spep_3 -3 + 46,  10018, 42, 0x100, -1, 0, 55.4, -219.2 );	--ドゴォンッ
setEffMoveKey( spep_3 -3 + 46, ctdogon, 55.4, -219.2 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogon, 48.8, -248.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogon, 50, -295.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogon, 47.5, -269.8 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogon, 43.5, -275.7 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogon, 50, -296.1 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogon, 47.4, -270.3 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogon, 43.4, -276.3 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogon, 49.9, -296.7 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogon, 47.4, -270.8 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogon, 43.3, -276.8 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogon, 49.9, -297.4 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogon, 47.3, -271.3 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogon, 43.1, -277.3 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogon, 49.8, -298.1 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogon, 47.2, -271.8 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogon, 43, -277.9 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogon, 49.8, -298.7 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogon, 47.1, -272.3 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctdogon, 43, -278.4 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctdogon, 49.7, -299.4 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdogon, 47.1, -272.8 , 0 );
setEffScaleKey( spep_3 -3 + 46, ctdogon, 1.01, 1.01 );
setEffScaleKey( spep_3 -3 + 48, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_3 -3 + 50, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_3 -3 + 52, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_3 -3 + 54, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_3 -3 + 56, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_3 -3 + 58, ctdogon, 3.17, 3.17 );
setEffScaleKey( spep_3 -3 + 60, ctdogon, 3.17, 3.17 );
setEffScaleKey( spep_3 -3 + 62, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_3 -3 + 64, ctdogon, 3.19, 3.19 );
setEffScaleKey( spep_3 -3 + 66, ctdogon, 3.2, 3.2 );
setEffScaleKey( spep_3 -3 + 68, ctdogon, 3.28, 3.28 );
setEffScaleKey( spep_3 -3 + 70, ctdogon, 3.21, 3.21 );
setEffScaleKey( spep_3 -3 + 72, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_3 -3 + 74, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_3 -3 + 76, ctdogon, 3.23, 3.23 );
setEffScaleKey( spep_3 -3 + 78, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_3 -3 + 80, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_3 -3 + 82, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_3 -3 + 84, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_3 -3 + 86, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_3 -3 + 88, ctdogon, 3.27, 3.27 );
setEffRotateKey( spep_3 -3 + 46, ctdogon, 8.3 );
setEffRotateKey( spep_3 -3 + 48, ctdogon, 8.5 );
setEffRotateKey( spep_3 -3 + 88, ctdogon, 8.5 );
setEffAlphaKey( spep_3 -3 + 46, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 88, ctdogon, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 89, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 108 );

setMoveKey( spep_3 + 0, 1, -179.7, -120.7 , 0 );
setMoveKey( spep_3 + 1, 1, -118.4, -87.1 , 0 );
setMoveKey( spep_3 + 2, 1, -57, -53.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 4.3, -19.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 7.2, -18.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 10.2, -16.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 13.1, -14.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 16, -13.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 18.9, -11.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 21.9, -10.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 24.8, -8.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 27.7, -6.8 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 30.6, -5.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 87.1, -25 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 87.1, -26.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 87.1, -28.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 87.1, -29.8 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 87.1, -31.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 87.1, -33 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 87.1, -36 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 87.1, -39 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 87.1, -42 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 87.1, -45 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 87.1, -15 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 109.6, -25.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 119.8, -50.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 121.3, -61.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 131.6, -72.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 142, -83.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 152.3, -94.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 162.7, -105.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 173.1, -116.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 183.5, -127.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 193.8, -138.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 204.2, -149.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 206.2, -151 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 208.2, -153.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 210.2, -155 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 212.2, -157.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 214.2, -159 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 216.2, -161.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 218.2, -163 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 220.2, -165.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 222.2, -167 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 224.2, -169.1 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 224.2, -169.1 , 0 );

s2 = 0.5;
s3 = 0.4;
setScaleKey( spep_3 + 0, 1, 2.74 +s2, 2.74 +s2 );
setScaleKey( spep_3 + 1, 1, 2.46 +s2, 2.46 +s2 );
setScaleKey( spep_3 + 2, 1, 2.17 +s2, 2.17 +s2 );
setScaleKey( spep_3 -3 + 6, 1, 1.89 +s2, 1.89 +s2 );
setScaleKey( spep_3 -3 + 8, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 10, 1, 1.86 +s2, 1.86 +s2 );
setScaleKey( spep_3 -3 + 12, 1, 1.85 +s2, 1.85 +s2 );
setScaleKey( spep_3 -3 + 14, 1, 1.83 +s2, 1.83 +s2 );
setScaleKey( spep_3 -3 + 16, 1, 1.82 +s2, 1.82 +s2 );
setScaleKey( spep_3 -3 + 18, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 20, 1, 1.79 +s2, 1.79 +s2 );
setScaleKey( spep_3 -3 + 22, 1, 1.78 +s2, 1.78 +s2 );
setScaleKey( spep_3 -3 + 25, 1, 1.77 +s2, 1.77 +s2 );--
setScaleKey( spep_3 -3 + 26, 1, 1.87 +s3, 1.87 +s3 );
setScaleKey( spep_3 -3 + 46, 1, 1.87 +s3, 1.87 +s3 );
setScaleKey( spep_3 -3 + 48, 1, 1.73 +s3, 1.73 +s3 );
setScaleKey( spep_3 -3 + 50, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_3 -3 + 52, 1, 1.56 +s3, 1.56 +s3 );
setScaleKey( spep_3 -3 + 54, 1, 1.53 +s3, 1.53 +s3 );
setScaleKey( spep_3 -3 + 56, 1, 1.4 +s3, 1.4 +s3 );
setScaleKey( spep_3 -3 + 58, 1, 1.36 +s3, 1.36 +s3 );
setScaleKey( spep_3 -3 + 60, 1, 1.23 +s3, 1.23 +s3 );
setScaleKey( spep_3 -3 + 62, 1, 1.18 +s3, 1.18 +s3 );
setScaleKey( spep_3 -3 + 64, 1, 1.06 +s3, 1.06 +s3 );
setScaleKey( spep_3 -3 + 66, 1, 1.01 +s3, 1.01 +s3 );
setScaleKey( spep_3 -3 + 68, 1, 0.9 +s3, 0.9 +s3 );
setScaleKey( spep_3 -3 + 70, 1, 0.89 +s3, 0.89 +s3 );
setScaleKey( spep_3 -3 + 72, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_3 -3 + 74, 1, 0.82 +s3, 0.82 +s3 );
setScaleKey( spep_3 -3 + 76, 1, 0.76 +s3, 0.76 +s3 );
setScaleKey( spep_3 -3 + 78, 1, 0.75 +s3, 0.75 +s3 );
setScaleKey( spep_3 -3 + 80, 1, 0.69 +s3, 0.69 +s3 );
setScaleKey( spep_3 -3 + 82, 1, 0.68 +s3, 0.68 +s3 );
setScaleKey( spep_3 -3 + 84, 1, 0.63 +s3, 0.63 +s3 );
setScaleKey( spep_3 -3 + 86, 1, 0.61 +s3, 0.61 +s3 );
setScaleKey( spep_3 -3 + 88, 1, 0.56 +s3, 0.56 +s3 );
setScaleKey( spep_3 -3 + 89, 1, 0.56 +s3, 0.56 +s3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 25, 1, 0 );
setRotateKey( spep_3 -3 + 26, 1, 38.1 );
setRotateKey( spep_3 -3 + 89, 1, 38.1 );

-- ** 音 ** --
--敵踏みつける
SE012 = playSe( spep_3 + 20, 1009 );

--敵踏みつける
SE013 = playSe( spep_3 + 20, 1153 );
setSeVolumeByWorkId( spep_3 + 20, SE013, 69 );
stopSe( spep_3 + 36, SE013, 14 );

--悟天飛び上がる
SE014 = playSe( spep_3 + 44, 1187 );
setSeVolumeByWorkId( spep_3 + 44, SE014, 73 );
stopSe( spep_3 +88, SE014, 4 );

--悟天飛び上がる
SE015 = playSe( spep_3 + 46, 1110 );
stopSe( spep_3 +88, SE015, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
playSe( spep_4 + 0, SE_05 );

--2人合流
SE017 = playSe( spep_4 + 88, 44 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 二人でキック(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
wkick = entryEffectLife( spep_5 + 0, SP_07, 116, 0x100, -1, 0, 0, 0 );  --二人でキック	ef_007
setEffMoveKey( spep_5 + 0, wkick, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, wkick, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, wkick, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, wkick, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, wkick, 0 );
setEffRotateKey( spep_5 + 116, wkick, 0 );
setEffAlphaKey( spep_5 + 0, wkick, 255 );
setEffAlphaKey( spep_5 + 116 -1, wkick, 255 );
setEffAlphaKey( spep_5 + 116, wkick, 0 );

-- ** 音 ** --
--ダブルキック
SE018 = playSe( spep_5 + 62, 9 );
setSeVolumeByWorkId( spep_5 + 62, SE018, 77 );

--ダブルキック
SE019 = playSe( spep_5 + 62, 1116 );
stopSe( spep_5 + 88, SE019, 18 );

--ダブルキック
SE020 = playSe( spep_5 + 62, 1182 );

--ダブルキック
SE021 = playSe( spep_5 + 62, 1258 );
setSeVolumeByWorkId( spep_5 + 62, SE021, 56 );

--ダブルキック
SE022 = playSe( spep_5 + 62, 1019 );

--ダブルキック
SE023 = playSe( spep_5 + 62, 1314 );
stopSe( spep_5 +116 + 52, SE023, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;


------------------------------------------------------
-- キックで押し込み(56F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
wattack_f = entryEffectLife( spep_6 + 0, SP_08, 56, 0x100, -1, 0, 0, 0 );  --キックで押し込み　前面	ef_008
setEffMoveKey( spep_6 + 0, wattack_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, wattack_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, wattack_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, wattack_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, wattack_f, 0 );
setEffRotateKey( spep_6 + 56, wattack_f, 0 );
setEffAlphaKey( spep_6 + 0, wattack_f, 255 );
setEffAlphaKey( spep_6 + 56 -1, wattack_f, 255 );
setEffAlphaKey( spep_6 + 56, wattack_f, 0 );

wattackc_b = entryEffectLife( spep_6 + 0, SP_09, 56, 0x80, -1, 0, 0, 0 );  --キックで押し込み　背面	ef_009
setEffMoveKey( spep_6 + 0, wattackc_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, wattackc_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, wattackc_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, wattackc_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, wattackc_b, 0 );
setEffRotateKey( spep_6 + 56, wattackc_b, 0 );
setEffAlphaKey( spep_6 + 0, wattackc_b, 255 );
setEffAlphaKey( spep_6 + 56 -1, wattackc_b, 255 );
setEffAlphaKey( spep_6 + 56, wattackc_b, 0 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 31, 0x100, -1, 0, 45.7, -307.2 );	--ズドドドッ
setEffMoveKey( spep_6 + 0, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 + 1, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 28, ctzudodo, 40.1, -297.6 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzudodo, 46.1, -306.2 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzudodo, 36.6, -288.2 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzudodo, 35.4, -285.2 , 0 );
setEffScaleKey( spep_6 + 0, ctzudodo, 3.39, 3.39 );
setEffScaleKey( spep_6 -3 + 26, ctzudodo, 3.39, 3.39 );
setEffScaleKey( spep_6 -3 + 28, ctzudodo, 4.2, 4.2 );
setEffScaleKey( spep_6 -3 + 30, ctzudodo, 5, 5 );
setEffScaleKey( spep_6 -3 + 32, ctzudodo, 5.81, 5.81 );
setEffScaleKey( spep_6 -3 + 34, ctzudodo, 6.61, 6.61 );
setEffRotateKey( spep_6 + 0, ctzudodo, 6.5 );
setEffRotateKey( spep_6 -3 + 34, ctzudodo, 6.5 );
setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 26, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 28, ctzudodo, 191 );
setEffAlphaKey( spep_6 -3 + 30, ctzudodo, 128 );
setEffAlphaKey( spep_6 -3 + 32, ctzudodo, 64 );
setEffAlphaKey( spep_6 -3 + 34, ctzudodo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 59, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, -502, 567.2 , 0 );
setMoveKey( spep_6 + 1, 1, -418.2, 463.9 , 0 );
setMoveKey( spep_6 + 2, 1, -349.9, 368.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -266, 281.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -197.8, 186.5 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -113.9, 83.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -45.7, -11.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 38.2, -99 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 34.8, -104.7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 47.3, -118.4 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 43.9, -124 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 56.4, -121.8 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 53, -127.4 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 65.5, -141.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 62.1, -146.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 74.6, -144.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 71.2, -150.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 83.7, -163.9 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 80.3, -169.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 92.8, -167.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 89.4, -173 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 141.2, -248.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 167.7, -301.3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 203.5, -336.2 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 218, -370.8 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 243.7, -406 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 249.1, -426.5 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 266.3, -432.8 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 263.8, -441.1 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 273.5, -451.8 , 0 );
setMoveKey( spep_6 -3 + 59, 1, 273.5, -451.8 , 0 );

s6 = 1.0;
s7 = 0.6;
s8 = 0.4;
--setScaleKey( spep_6 + 0, 1, 10.37 +2.8, 10.37 +2.8 );
--setScaleKey( spep_6 + 1, 1, 9.37 +2.6, 9.37 +2.6 );
--setScaleKey( spep_6 + 2, 1, 8.35 +2.4, 8.36 +2.2 );
--setScaleKey( spep_6 -3 + 6, 1, 7.34 +2.4, 7.34 +2.4 );
--setScaleKey( spep_6 -3 + 8, 1, 6.32 +2.4, 6.33 +2.4 );
--setScaleKey( spep_6 -3 + 10, 1, 5.3 +2.4, 5.31 +2.4 );

setScaleKey( spep_6 + 0, 1, 4.77 +2.8, 4.77 +2.8 );
setScaleKey( spep_6 + 1, 1, 4.77 +2.6, 4.77 +2.6 );
setScaleKey( spep_6 + 2, 1, 4.75 +2.4, 4.76 +2.2 );
setScaleKey( spep_6 -3 + 6, 1, 4.54 +2.4, 4.54 +2.4 );
setScaleKey( spep_6 -3 + 8, 1, 4.42 +2.4, 4.43 +2.4 );
setScaleKey( spep_6 -3 + 10, 1, 4.3 +2.4, 4.31 +2.4 );
setScaleKey( spep_6 -3 + 12, 1, 4.29 +2.4, 4.3 +2.4 );
setScaleKey( spep_6 -3 + 14, 1, 3.27 +s6, 3.28 +s6 );
setScaleKey( spep_6 -3 + 16, 1, 3.21 +s7, 3.22 +s7 );
setScaleKey( spep_6 -3 + 18, 1, 3.14 +s7, 3.16 +s7 );
setScaleKey( spep_6 -3 + 20, 1, 3.08 +s7, 3.1 +s7 );
setScaleKey( spep_6 -3 + 22, 1, 3.02 +s7, 3.04 +s7 );
setScaleKey( spep_6 -3 + 24, 1, 2.96 +s7, 2.98 +s7 );
setScaleKey( spep_6 -3 + 26, 1, 2.9 +s7, 2.91 +s7 );
setScaleKey( spep_6 -3 + 28, 1, 2.84 +s7, 2.85 +s7 );
setScaleKey( spep_6 -3 + 30, 1, 2.78 +s7, 2.79 +s7 );
setScaleKey( spep_6 -3 + 32, 1, 2.71 +s7, 2.73 +s7 );
setScaleKey( spep_6 -3 + 34, 1, 2.65 +s7, 2.67 +s7 );
setScaleKey( spep_6 -3 + 36, 1, 2.59 +s7, 2.61 +s7 );
setScaleKey( spep_6 -3 + 38, 1, 2.53 +s7, 2.55 +s7 );
setScaleKey( spep_6 -3 + 40, 1, 2.47 +s7, 2.48 +s7 );
setScaleKey( spep_6 -3 + 42, 1, 2.27 +s8, 2.25 +s8 );
setScaleKey( spep_6 -3 + 44, 1, 2.08 +s8, 2.05 +s8 );
setScaleKey( spep_6 -3 + 46, 1, 1.91 +s8, 1.87 +s8 );
setScaleKey( spep_6 -3 + 48, 1, 1.76 +s8, 1.72 +s8 );
setScaleKey( spep_6 -3 + 50, 1, 1.63 +s8, 1.59 +s8 );
setScaleKey( spep_6 -3 + 52, 1, 1.51 +s8, 1.49 +s8 );
setScaleKey( spep_6 -3 + 54, 1, 1.42 +s8, 1.41 +s8 );
setScaleKey( spep_6 -3 + 56, 1, 1.35 +s8, 1.37 +s8 );
setScaleKey( spep_6 -3 + 58, 1, 1.33 +s8, 1.35 +s8 );
setScaleKey( spep_6 -3 + 59, 1, 1.33 +s8, 1.35 +s8 );

setRotateKey( spep_6 + 0, 1, 36.4 );
setRotateKey( spep_6 + 1, 1, 38.7 );
setRotateKey( spep_6 + 2, 1, 36.5 );
setRotateKey( spep_6 -3 + 6, 1, 38.7 );
setRotateKey( spep_6 -3 + 8, 1, 36.5 );
setRotateKey( spep_6 -3 + 10, 1, 38.7 );
setRotateKey( spep_6 -3 + 12, 1, 36.5 );
setRotateKey( spep_6 -3 + 14, 1, 38.7 );
setRotateKey( spep_6 -3 + 16, 1, 36.5 );
setRotateKey( spep_6 -3 + 18, 1, 38.7 );
setRotateKey( spep_6 -3 + 20, 1, 36.5 );
setRotateKey( spep_6 -3 + 22, 1, 38.7 );
setRotateKey( spep_6 -3 + 24, 1, 36.5 );
setRotateKey( spep_6 -3 + 26, 1, 38.7 );
setRotateKey( spep_6 -3 + 28, 1, 36.5 );
setRotateKey( spep_6 -3 + 30, 1, 38.7 );
setRotateKey( spep_6 -3 + 32, 1, 36.5 );
setRotateKey( spep_6 -3 + 34, 1, 38.7 );
setRotateKey( spep_6 -3 + 36, 1, 36.5 );
setRotateKey( spep_6 -3 + 38, 1, 38.7 );
setRotateKey( spep_6 -3 + 40, 1, 36.5 );
setRotateKey( spep_6 -3 + 42, 1, 38.7 );
setRotateKey( spep_6 -3 + 44, 1, 36.5 );
setRotateKey( spep_6 -3 + 46, 1, 38.7 );
setRotateKey( spep_6 -3 + 48, 1, 36.5 );
setRotateKey( spep_6 -3 + 50, 1, 38.7 );
setRotateKey( spep_6 -3 + 52, 1, 36.5 );
setRotateKey( spep_6 -3 + 54, 1, 38.7 );
setRotateKey( spep_6 -3 + 56, 1, 36.5 );
setRotateKey( spep_6 -3 + 58, 1, 38.7 );
setRotateKey( spep_6 -3 + 59, 1, 38.7 );

-- ** 音 ** --
--キックヒット
SE024 = playSe( spep_6 + 2, 1011 );
setSeVolumeByWorkId( spep_6 + 2, SE024, 78 );

--キックヒット
SE025 = playSe( spep_6 + 4, 1187 );
stopSe( spep_6 + 14, SE025, 18 );

--キックヒット
SE026 = playSe( spep_6 + 6, 1123 );
setSeVolumeByWorkId( spep_6 + 6, SE026, 78 );
stopSe( spep_6 + 34, SE026, 22 );

--キックヒット
SE027 = playSe( spep_6 + 6, 1110 );

--ダブルキック
SE028 = playSe( spep_6 + 10, 1019 );
stopSe( spep_6 + 14, SE028, 14 );

--地面爆発
SE029 = playSe( spep_6 + 54, 1159 );

--地面爆発
SE030 = playSe( spep_6 + 54, 1067 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;


------------------------------------------------------
-- フィニッシュ爆煙(136F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ爆煙	ef_010
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 136, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 136, finish_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 16 );
endPhase( spep_7 + 126 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 96, 0x80, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 99, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 122.5, -45.8 , 0 );
setMoveKey( spep_0 + 1, 1, 124.2, -45.6 , 0 );
setMoveKey( spep_0 + 2, 1, 125.9, -45.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 127.6, -45.1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 127.6, -45.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 129.2, -44.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 129.2, -44.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 130.9, -44.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 132.6, -44.4 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 134.3, -44.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 135.9, -43.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 137.6, -43.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 139.3, -43.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 140.9, -43.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 142.6, -42.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 144.3, -42.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 146, -42.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 147.6, -42.2 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 149.3, -41.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 151, -41.7 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 152.6, -41.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 154.3, -41.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 156, -40.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 157.7, -40.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 159.3, -40.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 161, -40.2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 162.7, -39.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 164.4, -39.7 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 166, -39.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 167.7, -39.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 169.4, -38.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 171, -38.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 172.7, -38.5 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 174.4, -38.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 176.1, -38 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 177.7, -37.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 179.4, -37.5 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 181.1, -37.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 182.7, -37 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 184.4, -36.7 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 186.1, -36.5 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 187.8, -36.2 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 189.4, -36 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 191.1, -35.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 192.8, -35.5 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 194.4, -35.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 196.1, -35 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 197.8, -34.8 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 199.5, -34.5 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 201.1, -34.3 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 202.8, -34 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 204.5, -33.8 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 204.5, -33.8 , 0 );

s1 = 0.6;
setScaleKey( spep_0 + 0, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_0 + 1, 1, 1.88 +s1, 1.88 +s1 );
setScaleKey( spep_0 + 2, 1, 1.89 +s1, 1.89 +s1 );
setScaleKey( spep_0 -3 + 6, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 7, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 8, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 9, 1, 1.9 +s1, 1.9 +s1 );
setScaleKey( spep_0 -3 + 10, 1, 1.91 +s1, 1.91 +s1 );
setScaleKey( spep_0 -3 + 12, 1, 1.92 +s1, 1.92 +s1 );
setScaleKey( spep_0 -3 + 14, 1, 1.92 +s1, 1.92 +s1 );
setScaleKey( spep_0 -3 + 16, 1, 1.93 +s1, 1.93 +s1 );
setScaleKey( spep_0 -3 + 18, 1, 1.94 +s1, 1.94 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.94 +s1, 1.94 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.95 +s1, 1.95 +s1 );
setScaleKey( spep_0 -3 + 24, 1, 1.96 +s1, 1.96 +s1 );
setScaleKey( spep_0 -3 + 26, 1, 1.97 +s1, 1.97 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.97 +s1, 1.97 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.99 +s1, 1.99 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.99 +s1, 1.99 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 2 +s1, 2 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 2.02 +s1, 2.02 +s1 );
setScaleKey( spep_0 -3 + 44, 1, 2.03 +s1, 2.03 +s1 );
setScaleKey( spep_0 -3 + 46, 1, 2.04 +s1, 2.04 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 2.04 +s1, 2.04 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 2.05 +s1, 2.05 +s1 );
setScaleKey( spep_0 -3 + 52, 1, 2.06 +s1, 2.06 +s1 );
setScaleKey( spep_0 -3 + 54, 1, 2.06 +s1, 2.06 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 2.07 +s1, 2.07 +s1 );
setScaleKey( spep_0 -3 + 58, 1, 2.08 +s1, 2.08 +s1 );
setScaleKey( spep_0 -3 + 60, 1, 2.08 +s1, 2.08 +s1 );
setScaleKey( spep_0 -3 + 62, 1, 2.09 +s1, 2.09 +s1 );
setScaleKey( spep_0 -3 + 64, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_0 -3 + 66, 1, 2.11 +s1, 2.11 +s1 );
setScaleKey( spep_0 -3 + 68, 1, 2.11 +s1, 2.11 +s1 );
setScaleKey( spep_0 -3 + 70, 1, 2.12 +s1, 2.12 +s1 );
setScaleKey( spep_0 -3 + 72, 1, 2.13 +s1, 2.13 +s1 );
setScaleKey( spep_0 -3 + 74, 1, 2.13 +s1, 2.13 +s1 );
setScaleKey( spep_0 -3 + 76, 1, 2.14 +s1, 2.14 +s1 );
setScaleKey( spep_0 -3 + 78, 1, 2.15 +s1, 2.15 +s1 );
setScaleKey( spep_0 -3 + 80, 1, 2.15 +s1, 2.15 +s1 );
setScaleKey( spep_0 -3 + 82, 1, 2.16 +s1, 2.16 +s1 );
setScaleKey( spep_0 -3 + 84, 1, 2.17 +s1, 2.17 +s1 );
setScaleKey( spep_0 -3 + 86, 1, 2.18 +s1, 2.18 +s1 );
setScaleKey( spep_0 -3 + 88, 1, 2.18 +s1, 2.18 +s1 );
setScaleKey( spep_0 -3 + 90, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_0 -3 + 92, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_0 -3 + 94, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_0 -3 + 96, 1, 2.21 +s1, 2.21 +s1 );
setScaleKey( spep_0 -3 + 98, 1, 2.22 +s1, 2.22 +s1 );
setScaleKey( spep_0 -3 + 99, 1, 2.22 +s1, 2.22 +s1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 99, 1, 0 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 8, 1018 );

--構える
SE002 = playSe( spep_0 + 18, 1233 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 73 );
setPitch( spep_0 + 18, SE002, -300 );
setTimeStretch( SE002, 0.8, 10, 1 );

--構える
SE003 = playSe( spep_0 + 28, 1006 );
setSeVolumeByWorkId( spep_0 + 28, SE003, 79 );
setPitch( spep_0 + 28, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--画面遷移
SE004 = playSe( spep_0 + 82, 1072 );
setSeVolumeByWorkId( spep_0 + 82, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 15 );
setSeVolumeByWorkId( spep_0 + 86, SE004, 30 );
setSeVolumeByWorkId( spep_0 + 88, SE004, 46 );
setSeVolumeByWorkId( spep_0 + 90, SE004, 52 );
setSeVolumeByWorkId( spep_0 + 92, SE004, 77 );
setStartTimeMs( SE004,  333 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- トランクス気弾投げ(92F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tkick_f = entryEffectLife( spep_1 + 0, SP_02r, 92, 0x100, -1, 0, 0, 0 );  --トランクス気弾投げ　前面	ef_002
setEffMoveKey( spep_1 + 0, tkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, tkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, tkick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_f, 0 );
setEffRotateKey( spep_1 + 92, tkick_f, 0 );
setEffAlphaKey( spep_1 + 0, tkick_f, 255 );
setEffAlphaKey( spep_1 + 92 -1, tkick_f, 255 );
setEffAlphaKey( spep_1 + 92, tkick_f, 0 );

tkick_b = entryEffectLife( spep_1 + 0, SP_03, 92, 0x80, -1, 0, 0, 0 );  --トランクス気弾投げ　背面	ef_003
setEffMoveKey( spep_1 + 0, tkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, tkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tkick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, tkick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tkick_b, 0 );
setEffRotateKey( spep_1 + 92, tkick_b, 0 );
setEffAlphaKey( spep_1 + 0, tkick_b, 255 );
setEffAlphaKey( spep_1 + 92 -1, tkick_b, 255 );
setEffAlphaKey( spep_1 + 92, tkick_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 92 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 書き文字エントリー ** --
ctbom = entryEffectLife( spep_1 -3 + 64,  10027, 30, 0x100, -1, 0, 61.1, -151.5 );	--ボンッ
setEffMoveKey( spep_1 -3 + 64, ctbom, 61.1, -151.5 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbom, 70.6, -184.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbom, 81.3, -212.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbom, 85, -203.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbom, 82.6, -216 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctbom, 83.3, -217.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctbom, 87.2, -208.4 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctbom, 84.6, -221.3 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctbom, 85.3, -223.2 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctbom, 89.3, -213.1 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctbom, 86.6, -226.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctbom, 87.3, -228.5 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctbom, 91.5, -217.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctbom, 88.7, -232.1 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctbom, 89.3, -233.9 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctbom, 93.8, -222.8 , 0 );

setEffScaleKey( spep_1 -3 + 64, ctbom, 0.89, 0.89 );
setEffScaleKey( spep_1 -3 + 66, ctbom, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 68, ctbom, 1.92, 1.92 );
setEffScaleKey( spep_1 -3 + 70, ctbom, 2.2, 2.2 );
setEffScaleKey( spep_1 -3 + 72, ctbom, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 74, ctbom, 2.03, 2.03 );
setEffScaleKey( spep_1 -3 + 76, ctbom, 2.32, 2.32 );
setEffScaleKey( spep_1 -3 + 78, ctbom, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 80, ctbom, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 82, ctbom, 2.44, 2.44 );
setEffScaleKey( spep_1 -3 + 84, ctbom, 2.48, 2.48 );
setEffScaleKey( spep_1 -3 + 86, ctbom, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 88, ctbom, 2.56, 2.56 );
setEffScaleKey( spep_1 -3 + 90, ctbom, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 92, ctbom, 2.35, 2.35 );
setEffScaleKey( spep_1 -3 + 94, ctbom, 2.68, 2.68 );

setEffRotateKey( spep_1 -3 + 64, ctbom, -20.6 );
setEffRotateKey( spep_1 -3 + 66, ctbom, -20.7 );
setEffRotateKey( spep_1 -3 + 94, ctbom, -20.7 );

setEffAlphaKey( spep_1 -3 + 64, ctbom, 255 );
setEffAlphaKey( spep_1 -3 + 94, ctbom, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 34, 1, 1 );
setDisp( spep_1 -3 + 95, 1, 0 );
changeAnime( spep_1 -3 + 34, 1, 104 );
changeAnime( spep_1 -3 + 64, 1, 107 );

setMoveKey( spep_1 -3 + 34, 1, 382.9, 69.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 368.7, 65 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 354.4, 60.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 340.1, 56 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 325.9, 51.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 311.6, 47 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 297.3, 42.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 283, 38 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 268.8, 33.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 254.5, 29 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 240.2, 24.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 225.9, 20 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 211.7, 15.5 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 197.4, 10.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 188.1, 11.4 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 188.1, 11.4 , 0 );--
setMoveKey( spep_1 -3 + 64, 1, 125.2, -24.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 125.3, -16.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 137.2, -23.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 133.2, -15.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 125.3, -24.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 131.2, -16.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 131.2, -23.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 133.3, -15.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 131.2, -24.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 125.2, -16.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 131.3, -23.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 139.2, -15.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 125.2, -24.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 125.3, -16.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 137.2, -23.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 131.2, -23.8 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 131.2, -23.8 , 0 );

setScaleKey( spep_1 -3 + 34, 1, 4.45, 4.45 );
setScaleKey( spep_1 -3 + 36, 1, 4.28, 4.28 );
setScaleKey( spep_1 -3 + 38, 1, 4.11, 4.11 );
setScaleKey( spep_1 -3 + 40, 1, 3.94, 3.94 );
setScaleKey( spep_1 -3 + 42, 1, 3.77, 3.77 );
setScaleKey( spep_1 -3 + 44, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 46, 1, 3.43, 3.43 );
setScaleKey( spep_1 -3 + 48, 1, 3.26, 3.26 );
setScaleKey( spep_1 -3 + 50, 1, 3.09, 3.09 );
setScaleKey( spep_1 -3 + 52, 1, 2.92, 2.92 );
setScaleKey( spep_1 -3 + 54, 1, 2.75, 2.75 );
setScaleKey( spep_1 -3 + 56, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 58, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 60, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 62, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 63, 1, 2.08, 2.08 );--
setScaleKey( spep_1 -3 + 64, 1, 1.022, 1.022 );
setScaleKey( spep_1 -3 + 95, 1, 1.022, 1.022 );

setRotateKey( spep_1 -3 + 34, 1, -12.3 );
setRotateKey( spep_1 -3 + 36, 1, -12.4 );
setRotateKey( spep_1 -3 + 63, 1, -12.4 );--
setRotateKey( spep_1 -3 + 64, 1, -77.7 );
setRotateKey( spep_1 -3 + 66, 1, -81 );
setRotateKey( spep_1 -3 + 68, 1, -75.7 );
setRotateKey( spep_1 -3 + 70, 1, -77.7 );
setRotateKey( spep_1 -3 + 72, 1, -81 );
setRotateKey( spep_1 -3 + 74, 1, -75.7 );
setRotateKey( spep_1 -3 + 76, 1, -77.7 );
setRotateKey( spep_1 -3 + 78, 1, -81 );
setRotateKey( spep_1 -3 + 80, 1, -75.7 );
setRotateKey( spep_1 -3 + 82, 1, -77.7 );
setRotateKey( spep_1 -3 + 84, 1, -81 );
setRotateKey( spep_1 -3 + 86, 1, -75.7 );
setRotateKey( spep_1 -3 + 88, 1, -77.7 );
setRotateKey( spep_1 -3 + 90, 1, -81 );
setRotateKey( spep_1 -3 + 92, 1, -75.7 );
setRotateKey( spep_1 -3 + 94, 1, -77.7 );
setRotateKey( spep_1 -3 + 95, 1, -77.7 );

-- ** 音 ** --
--気弾投げる
SE005 = playSe( spep_1 + 18, 19 );
setSeVolumeByWorkId( spep_1 + 18, SE005, 60 );

--気弾投げる
SE006 = playSe( spep_1 + 18, 1021 );
setSeVolumeByWorkId( spep_1 + 22, SE006, 132 );

--気弾投げる
SE007 = playSe( spep_1 + 24, 1155 );
setSeVolumeByWorkId( spep_1 + 24, SE007, 129 );
setPitch( spep_1 + 24, SE007, 400 );
setTimeStretch( SE007, 1.27, 10, 1 );

--気弾ヒット
SE008 = playSe( spep_1 + 62, 1011 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 80 );

--気弾ヒット
SE009 = playSe( spep_1 + 62, 1023 );
setSeVolumeByWorkId( spep_1 + 62, SE009, 88 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 92;


------------------------------------------------------
-- 悟天アップでダッシュ(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
gdash = entryEffectLife( spep_2 + 0, SP_04r, 56, 0x100, -1, 0, 0, 0 );  --悟天アップでダッシュ	ef_004
setEffMoveKey( spep_2 + 0, gdash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, gdash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gdash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, gdash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gdash, 0 );
setEffRotateKey( spep_2 + 56, gdash, 0 );
setEffAlphaKey( spep_2 + 0, gdash, 255 );
setEffAlphaKey( spep_2 + 56 -1, gdash, 255 );
setEffAlphaKey( spep_2 + 56, gdash, 0 );

-- ** 音 ** --
--悟天ダッシュ
SE010 = playSe( spep_2 + 4, 9 );

--悟天敵に向かっていく
SE011 = playSe( spep_2 + 52, 1117 );
stopSe( spep_2 +56 + 16, SE011, 12 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- 悟天踏みつけて宙返り(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gkick_f = entryEffectLife( spep_3 + 0, SP_05, 86, 0x100, -1, 0, 0, 0 );  --悟天踏みつけて宙返り　前面	ef_005
setEffMoveKey( spep_3 + 0, gkick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, gkick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gkick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, gkick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gkick_f, 0 );
setEffRotateKey( spep_3 + 86, gkick_f, 0 );
setEffAlphaKey( spep_3 + 0, gkick_f, 255 );
setEffAlphaKey( spep_3 + 86 -1, gkick_f, 255 );
setEffAlphaKey( spep_3 + 86, gkick_f, 0 );

gkick_b = entryEffectLife( spep_3 + 0, SP_06, 86, 0x80, -1, 0, 0, 0 );  --悟天踏みつけて宙返り　背面	ef_006
setEffMoveKey( spep_3 + 0, gkick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, gkick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gkick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, gkick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gkick_b, 0 );
setEffRotateKey( spep_3 + 86, gkick_b, 0 );
setEffAlphaKey( spep_3 + 0, gkick_b, 255 );
setEffAlphaKey( spep_3 + 86 -1, gkick_b, 255 );
setEffAlphaKey( spep_3 + 86, gkick_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 23, 906, 19, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 23, shuchusen1, 90, 20 );
setEffMoveKey( spep_3 + 23, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 42, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 23, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_3 + 42, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_3 + 23, shuchusen1, 0 );
setEffRotateKey( spep_3 + 42, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 23, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 42, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 -3 + 26,  10005, 19, 0x100, -1, 0, 104.1, -201.4 );	--ガッ
setEffMoveKey( spep_3 -3 + 26, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctga, 110.7, -207 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctga, 104.1, -201.4 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctga, 114.3, -209.9 , 0 );
setEffMoveKey( spep_3 -3 + 45, ctga, 114.3, -209.9 , 0 );
setEffScaleKey( spep_3 -3 + 26, ctga, 0.7, 0.7 );
setEffScaleKey( spep_3 -3 + 28, ctga, 1.5, 1.5 );
setEffScaleKey( spep_3 -3 + 30, ctga, 2.29, 2.29 );
setEffScaleKey( spep_3 -3 + 45, ctga, 2.29, 2.29 );
setEffRotateKey( spep_3 -3 + 26, ctga, -19.1 );
setEffRotateKey( spep_3 -3 + 28, ctga, -19.2 );
setEffRotateKey( spep_3 -3 + 45, ctga, -19.2 );
setEffAlphaKey( spep_3 -3 + 26, ctga, 255 );
setEffAlphaKey( spep_3 -3 + 45, ctga, 255 );

ctdogon = entryEffectLife( spep_3 -3 + 46,  10018, 42, 0x100, -1, 0, 55.4, -219.2 );	--ドゴォンッ
setEffMoveKey( spep_3 -3 + 46, ctdogon, 55.4, -219.2 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogon, 48.8, -248.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogon, 50, -295.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogon, 47.5, -269.8 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogon, 43.5, -275.7 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogon, 50, -296.1 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogon, 47.4, -270.3 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogon, 43.4, -276.3 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogon, 49.9, -296.7 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogon, 47.4, -270.8 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogon, 43.3, -276.8 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogon, 49.9, -297.4 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogon, 47.3, -271.3 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogon, 43.1, -277.3 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogon, 49.8, -298.1 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogon, 47.2, -271.8 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogon, 43, -277.9 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogon, 49.8, -298.7 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogon, 47.1, -272.3 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctdogon, 43, -278.4 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctdogon, 49.7, -299.4 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdogon, 47.1, -272.8 , 0 );
setEffScaleKey( spep_3 -3 + 46, ctdogon, 1.01, 1.01 );
setEffScaleKey( spep_3 -3 + 48, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_3 -3 + 50, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_3 -3 + 52, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_3 -3 + 54, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_3 -3 + 56, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_3 -3 + 58, ctdogon, 3.17, 3.17 );
setEffScaleKey( spep_3 -3 + 60, ctdogon, 3.17, 3.17 );
setEffScaleKey( spep_3 -3 + 62, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_3 -3 + 64, ctdogon, 3.19, 3.19 );
setEffScaleKey( spep_3 -3 + 66, ctdogon, 3.2, 3.2 );
setEffScaleKey( spep_3 -3 + 68, ctdogon, 3.28, 3.28 );
setEffScaleKey( spep_3 -3 + 70, ctdogon, 3.21, 3.21 );
setEffScaleKey( spep_3 -3 + 72, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_3 -3 + 74, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_3 -3 + 76, ctdogon, 3.23, 3.23 );
setEffScaleKey( spep_3 -3 + 78, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_3 -3 + 80, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_3 -3 + 82, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_3 -3 + 84, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_3 -3 + 86, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_3 -3 + 88, ctdogon, 3.27, 3.27 );
setEffRotateKey( spep_3 -3 + 46, ctdogon, 8.3 );
setEffRotateKey( spep_3 -3 + 48, ctdogon, 8.5 );
setEffRotateKey( spep_3 -3 + 88, ctdogon, 8.5 );
setEffAlphaKey( spep_3 -3 + 46, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 88, ctdogon, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 89, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 108 );

setMoveKey( spep_3 + 0, 1, -179.7, -120.7 , 0 );
setMoveKey( spep_3 + 1, 1, -118.4, -87.1 , 0 );
setMoveKey( spep_3 + 2, 1, -57, -53.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 4.3, -19.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 7.2, -18.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 10.2, -16.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 13.1, -14.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 16, -13.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 18.9, -11.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 21.9, -10.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 24.8, -8.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 27.7, -6.8 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 30.6, -5.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 87.1, -25 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 87.1, -26.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 87.1, -28.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 87.1, -29.8 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 87.1, -31.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 87.1, -33 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 87.1, -36 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 87.1, -39 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 87.1, -42 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 87.1, -45 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 87.1, -15 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 109.6, -25.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 119.8, -50.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 121.3, -61.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 131.6, -72.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 142, -83.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 152.3, -94.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 162.7, -105.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 173.1, -116.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 183.5, -127.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 193.8, -138.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 204.2, -149.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 206.2, -151 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 208.2, -153.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 210.2, -155 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 212.2, -157.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 214.2, -159 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 216.2, -161.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 218.2, -163 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 220.2, -165.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 222.2, -167 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 224.2, -169.1 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 224.2, -169.1 , 0 );

s2 = 0.5;
s3 = 0.4;
setScaleKey( spep_3 + 0, 1, 2.74 +s2, 2.74 +s2 );
setScaleKey( spep_3 + 1, 1, 2.46 +s2, 2.46 +s2 );
setScaleKey( spep_3 + 2, 1, 2.17 +s2, 2.17 +s2 );
setScaleKey( spep_3 -3 + 6, 1, 1.89 +s2, 1.89 +s2 );
setScaleKey( spep_3 -3 + 8, 1, 1.87 +s2, 1.87 +s2 );
setScaleKey( spep_3 -3 + 10, 1, 1.86 +s2, 1.86 +s2 );
setScaleKey( spep_3 -3 + 12, 1, 1.85 +s2, 1.85 +s2 );
setScaleKey( spep_3 -3 + 14, 1, 1.83 +s2, 1.83 +s2 );
setScaleKey( spep_3 -3 + 16, 1, 1.82 +s2, 1.82 +s2 );
setScaleKey( spep_3 -3 + 18, 1, 1.81 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 20, 1, 1.79 +s2, 1.79 +s2 );
setScaleKey( spep_3 -3 + 22, 1, 1.78 +s2, 1.78 +s2 );
setScaleKey( spep_3 -3 + 25, 1, 1.77 +s2, 1.77 +s2 );--
setScaleKey( spep_3 -3 + 26, 1, 1.87 +s3, 1.87 +s3 );
setScaleKey( spep_3 -3 + 46, 1, 1.87 +s3, 1.87 +s3 );
setScaleKey( spep_3 -3 + 48, 1, 1.73 +s3, 1.73 +s3 );
setScaleKey( spep_3 -3 + 50, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_3 -3 + 52, 1, 1.56 +s3, 1.56 +s3 );
setScaleKey( spep_3 -3 + 54, 1, 1.53 +s3, 1.53 +s3 );
setScaleKey( spep_3 -3 + 56, 1, 1.4 +s3, 1.4 +s3 );
setScaleKey( spep_3 -3 + 58, 1, 1.36 +s3, 1.36 +s3 );
setScaleKey( spep_3 -3 + 60, 1, 1.23 +s3, 1.23 +s3 );
setScaleKey( spep_3 -3 + 62, 1, 1.18 +s3, 1.18 +s3 );
setScaleKey( spep_3 -3 + 64, 1, 1.06 +s3, 1.06 +s3 );
setScaleKey( spep_3 -3 + 66, 1, 1.01 +s3, 1.01 +s3 );
setScaleKey( spep_3 -3 + 68, 1, 0.9 +s3, 0.9 +s3 );
setScaleKey( spep_3 -3 + 70, 1, 0.89 +s3, 0.89 +s3 );
setScaleKey( spep_3 -3 + 72, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_3 -3 + 74, 1, 0.82 +s3, 0.82 +s3 );
setScaleKey( spep_3 -3 + 76, 1, 0.76 +s3, 0.76 +s3 );
setScaleKey( spep_3 -3 + 78, 1, 0.75 +s3, 0.75 +s3 );
setScaleKey( spep_3 -3 + 80, 1, 0.69 +s3, 0.69 +s3 );
setScaleKey( spep_3 -3 + 82, 1, 0.68 +s3, 0.68 +s3 );
setScaleKey( spep_3 -3 + 84, 1, 0.63 +s3, 0.63 +s3 );
setScaleKey( spep_3 -3 + 86, 1, 0.61 +s3, 0.61 +s3 );
setScaleKey( spep_3 -3 + 88, 1, 0.56 +s3, 0.56 +s3 );
setScaleKey( spep_3 -3 + 89, 1, 0.56 +s3, 0.56 +s3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 25, 1, 0 );
setRotateKey( spep_3 -3 + 26, 1, 38.1 );
setRotateKey( spep_3 -3 + 89, 1, 38.1 );

-- ** 音 ** --
--敵踏みつける
SE012 = playSe( spep_3 + 20, 1009 );

--敵踏みつける
SE013 = playSe( spep_3 + 20, 1153 );
setSeVolumeByWorkId( spep_3 + 20, SE013, 69 );
stopSe( spep_3 + 36, SE013, 14 );

--悟天飛び上がる
SE014 = playSe( spep_3 + 44, 1187 );
setSeVolumeByWorkId( spep_3 + 44, SE014, 73 );
stopSe( spep_3 +88, SE014, 4 );

--悟天飛び上がる
SE015 = playSe( spep_3 + 46, 1110 );
stopSe( spep_3 +88, SE015, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
playSe( spep_4 + 0, SE_05 );

--2人合流
SE017 = playSe( spep_4 + 88, 44 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 二人でキック(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
wkick = entryEffectLife( spep_5 + 0, SP_07r, 116, 0x100, -1, 0, 0, 0 );  --二人でキック	ef_007
setEffMoveKey( spep_5 + 0, wkick, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, wkick, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, wkick, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, wkick, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, wkick, 0 );
setEffRotateKey( spep_5 + 116, wkick, 0 );
setEffAlphaKey( spep_5 + 0, wkick, 255 );
setEffAlphaKey( spep_5 + 116 -1, wkick, 255 );
setEffAlphaKey( spep_5 + 116, wkick, 0 );

-- ** 音 ** --
--ダブルキック
SE018 = playSe( spep_5 + 62, 9 );
setSeVolumeByWorkId( spep_5 + 62, SE018, 77 );

--ダブルキック
SE019 = playSe( spep_5 + 62, 1116 );
stopSe( spep_5 + 88, SE019, 18 );

--ダブルキック
SE020 = playSe( spep_5 + 62, 1182 );

--ダブルキック
SE021 = playSe( spep_5 + 62, 1258 );
setSeVolumeByWorkId( spep_5 + 62, SE021, 56 );

--ダブルキック
SE022 = playSe( spep_5 + 62, 1019 );

--ダブルキック
SE023 = playSe( spep_5 + 62, 1314 );
stopSe( spep_5 +116 + 52, SE023, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;


------------------------------------------------------
-- キックで押し込み(56F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
wattack_f = entryEffectLife( spep_6 + 0, SP_08, 56, 0x100, -1, 0, 0, 0 );  --キックで押し込み　前面	ef_008
setEffMoveKey( spep_6 + 0, wattack_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, wattack_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, wattack_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, wattack_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, wattack_f, 0 );
setEffRotateKey( spep_6 + 56, wattack_f, 0 );
setEffAlphaKey( spep_6 + 0, wattack_f, 255 );
setEffAlphaKey( spep_6 + 56 -1, wattack_f, 255 );
setEffAlphaKey( spep_6 + 56, wattack_f, 0 );

wattackc_b = entryEffectLife( spep_6 + 0, SP_09, 56, 0x80, -1, 0, 0, 0 );  --キックで押し込み　背面	ef_009
setEffMoveKey( spep_6 + 0, wattackc_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, wattackc_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, wattackc_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, wattackc_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, wattackc_b, 0 );
setEffRotateKey( spep_6 + 56, wattackc_b, 0 );
setEffAlphaKey( spep_6 + 0, wattackc_b, 255 );
setEffAlphaKey( spep_6 + 56 -1, wattackc_b, 255 );
setEffAlphaKey( spep_6 + 56, wattackc_b, 0 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 31, 0x100, -1, 0, 45.7, -307.2 );	--ズドドドッ
setEffMoveKey( spep_6 + 0, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 + 1, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudodo, 41.1, -299.8 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudodo, 45.7, -307.2 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudodo, 40.1, -297 , 0 );
setEffMoveKey( spep_6 -3 + 28, ctzudodo, 40.1, -297.6 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzudodo, 46.1, -306.2 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzudodo, 36.6, -288.2 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzudodo, 35.4, -285.2 , 0 );
setEffScaleKey( spep_6 + 0, ctzudodo, 3.39, 3.39 );
setEffScaleKey( spep_6 -3 + 26, ctzudodo, 3.39, 3.39 );
setEffScaleKey( spep_6 -3 + 28, ctzudodo, 4.2, 4.2 );
setEffScaleKey( spep_6 -3 + 30, ctzudodo, 5, 5 );
setEffScaleKey( spep_6 -3 + 32, ctzudodo, 5.81, 5.81 );
setEffScaleKey( spep_6 -3 + 34, ctzudodo, 6.61, 6.61 );
setEffRotateKey( spep_6 + 0, ctzudodo, 6.5 );
setEffRotateKey( spep_6 -3 + 34, ctzudodo, 6.5 );
setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 26, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 28, ctzudodo, 191 );
setEffAlphaKey( spep_6 -3 + 30, ctzudodo, 128 );
setEffAlphaKey( spep_6 -3 + 32, ctzudodo, 64 );
setEffAlphaKey( spep_6 -3 + 34, ctzudodo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 59, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, -502, 567.2 , 0 );
setMoveKey( spep_6 + 1, 1, -418.2, 463.9 , 0 );
setMoveKey( spep_6 + 2, 1, -349.9, 368.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -266, 281.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -197.8, 186.5 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -113.9, 83.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -45.7, -11.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 38.2, -99 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 34.8, -104.7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 47.3, -118.4 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 43.9, -124 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 56.4, -121.8 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 53, -127.4 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 65.5, -141.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 62.1, -146.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 74.6, -144.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 71.2, -150.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 83.7, -163.9 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 80.3, -169.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 92.8, -167.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 89.4, -173 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 141.2, -248.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 167.7, -301.3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 203.5, -336.2 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 218, -370.8 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 243.7, -406 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 249.1, -426.5 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 266.3, -432.8 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 263.8, -441.1 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 273.5, -451.8 , 0 );
setMoveKey( spep_6 -3 + 59, 1, 273.5, -451.8 , 0 );

s6 = 1.0;
s7 = 0.6;
s8 = 0.4;
--setScaleKey( spep_6 + 0, 1, 10.37 +2.8, 10.37 +2.8 );
--setScaleKey( spep_6 + 1, 1, 9.37 +2.6, 9.37 +2.6 );
--setScaleKey( spep_6 + 2, 1, 8.35 +2.4, 8.36 +2.2 );
--setScaleKey( spep_6 -3 + 6, 1, 7.34 +2.4, 7.34 +2.4 );
--setScaleKey( spep_6 -3 + 8, 1, 6.32 +2.4, 6.33 +2.4 );
--setScaleKey( spep_6 -3 + 10, 1, 5.3 +2.4, 5.31 +2.4 );

setScaleKey( spep_6 + 0, 1, 4.77 +2.8, 4.77 +2.8 );
setScaleKey( spep_6 + 1, 1, 4.77 +2.6, 4.77 +2.6 );
setScaleKey( spep_6 + 2, 1, 4.75 +2.4, 4.76 +2.2 );
setScaleKey( spep_6 -3 + 6, 1, 4.54 +2.4, 4.54 +2.4 );
setScaleKey( spep_6 -3 + 8, 1, 4.42 +2.4, 4.43 +2.4 );
setScaleKey( spep_6 -3 + 10, 1, 4.3 +2.4, 4.31 +2.4 );
setScaleKey( spep_6 -3 + 12, 1, 4.29 +2.4, 4.3 +2.4 );
setScaleKey( spep_6 -3 + 14, 1, 3.27 +s6, 3.28 +s6 );
setScaleKey( spep_6 -3 + 16, 1, 3.21 +s7, 3.22 +s7 );
setScaleKey( spep_6 -3 + 18, 1, 3.14 +s7, 3.16 +s7 );
setScaleKey( spep_6 -3 + 20, 1, 3.08 +s7, 3.1 +s7 );
setScaleKey( spep_6 -3 + 22, 1, 3.02 +s7, 3.04 +s7 );
setScaleKey( spep_6 -3 + 24, 1, 2.96 +s7, 2.98 +s7 );
setScaleKey( spep_6 -3 + 26, 1, 2.9 +s7, 2.91 +s7 );
setScaleKey( spep_6 -3 + 28, 1, 2.84 +s7, 2.85 +s7 );
setScaleKey( spep_6 -3 + 30, 1, 2.78 +s7, 2.79 +s7 );
setScaleKey( spep_6 -3 + 32, 1, 2.71 +s7, 2.73 +s7 );
setScaleKey( spep_6 -3 + 34, 1, 2.65 +s7, 2.67 +s7 );
setScaleKey( spep_6 -3 + 36, 1, 2.59 +s7, 2.61 +s7 );
setScaleKey( spep_6 -3 + 38, 1, 2.53 +s7, 2.55 +s7 );
setScaleKey( spep_6 -3 + 40, 1, 2.47 +s7, 2.48 +s7 );
setScaleKey( spep_6 -3 + 42, 1, 2.27 +s8, 2.25 +s8 );
setScaleKey( spep_6 -3 + 44, 1, 2.08 +s8, 2.05 +s8 );
setScaleKey( spep_6 -3 + 46, 1, 1.91 +s8, 1.87 +s8 );
setScaleKey( spep_6 -3 + 48, 1, 1.76 +s8, 1.72 +s8 );
setScaleKey( spep_6 -3 + 50, 1, 1.63 +s8, 1.59 +s8 );
setScaleKey( spep_6 -3 + 52, 1, 1.51 +s8, 1.49 +s8 );
setScaleKey( spep_6 -3 + 54, 1, 1.42 +s8, 1.41 +s8 );
setScaleKey( spep_6 -3 + 56, 1, 1.35 +s8, 1.37 +s8 );
setScaleKey( spep_6 -3 + 58, 1, 1.33 +s8, 1.35 +s8 );
setScaleKey( spep_6 -3 + 59, 1, 1.33 +s8, 1.35 +s8 );

setRotateKey( spep_6 + 0, 1, 36.4 );
setRotateKey( spep_6 + 1, 1, 38.7 );
setRotateKey( spep_6 + 2, 1, 36.5 );
setRotateKey( spep_6 -3 + 6, 1, 38.7 );
setRotateKey( spep_6 -3 + 8, 1, 36.5 );
setRotateKey( spep_6 -3 + 10, 1, 38.7 );
setRotateKey( spep_6 -3 + 12, 1, 36.5 );
setRotateKey( spep_6 -3 + 14, 1, 38.7 );
setRotateKey( spep_6 -3 + 16, 1, 36.5 );
setRotateKey( spep_6 -3 + 18, 1, 38.7 );
setRotateKey( spep_6 -3 + 20, 1, 36.5 );
setRotateKey( spep_6 -3 + 22, 1, 38.7 );
setRotateKey( spep_6 -3 + 24, 1, 36.5 );
setRotateKey( spep_6 -3 + 26, 1, 38.7 );
setRotateKey( spep_6 -3 + 28, 1, 36.5 );
setRotateKey( spep_6 -3 + 30, 1, 38.7 );
setRotateKey( spep_6 -3 + 32, 1, 36.5 );
setRotateKey( spep_6 -3 + 34, 1, 38.7 );
setRotateKey( spep_6 -3 + 36, 1, 36.5 );
setRotateKey( spep_6 -3 + 38, 1, 38.7 );
setRotateKey( spep_6 -3 + 40, 1, 36.5 );
setRotateKey( spep_6 -3 + 42, 1, 38.7 );
setRotateKey( spep_6 -3 + 44, 1, 36.5 );
setRotateKey( spep_6 -3 + 46, 1, 38.7 );
setRotateKey( spep_6 -3 + 48, 1, 36.5 );
setRotateKey( spep_6 -3 + 50, 1, 38.7 );
setRotateKey( spep_6 -3 + 52, 1, 36.5 );
setRotateKey( spep_6 -3 + 54, 1, 38.7 );
setRotateKey( spep_6 -3 + 56, 1, 36.5 );
setRotateKey( spep_6 -3 + 58, 1, 38.7 );
setRotateKey( spep_6 -3 + 59, 1, 38.7 );

-- ** 音 ** --
--キックヒット
SE024 = playSe( spep_6 + 2, 1011 );
setSeVolumeByWorkId( spep_6 + 2, SE024, 78 );

--キックヒット
SE025 = playSe( spep_6 + 4, 1187 );
stopSe( spep_6 + 14, SE025, 18 );

--キックヒット
SE026 = playSe( spep_6 + 6, 1123 );
setSeVolumeByWorkId( spep_6 + 6, SE026, 78 );
stopSe( spep_6 + 34, SE026, 22 );

--キックヒット
SE027 = playSe( spep_6 + 6, 1110 );

--ダブルキック
SE028 = playSe( spep_6 + 10, 1019 );
stopSe( spep_6 + 14, SE028, 14 );

--地面爆発
SE029 = playSe( spep_6 + 54, 1159 );

--地面爆発
SE030 = playSe( spep_6 + 54, 1067 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;


------------------------------------------------------
-- フィニッシュ爆煙(136F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ爆煙	ef_010
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 136, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 136, finish_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 16 );
endPhase( spep_7 + 126 );

end