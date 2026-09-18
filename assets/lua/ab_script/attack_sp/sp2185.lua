--1021990:超サイヤ人3ベジータ_ギャリックシューティング
--sp_effect_a2_00158

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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
SP_01 = 158445;  --向かってくるベジータ(ef_001)
SP_02 = 158446;  --敵を蹴り上げる(ef_002_front)
SP_03 = 158447;  --敵を蹴り上げる(ef_002_back)
SP_04 = 158448;  --敵を蹴り上げる(ef_002_r_front)
SP_05 = 158449;  --敵を蹴り上げる(ef_002_r_back)
SP_06 = 158450;  --敵の背後に瞬間移動　セリフカットイン(ef_003)
SP_07 = 158451;  --気弾をため放つ(ef_004_front)
SP_08 = 158452;  --気弾をため放つ(ef_004_back)
SP_09 = 158453;  --爆発　フィニッシュ(ef_005)反転不要

SP_10 = 158552;  --向かってくるベジータ（敵側）(ef_001_r)


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
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 向かってくるベジータ(80F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --向かってくるベジータ(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 80 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 80 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 80 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 80 -5, base1, 255);
setEffAlphaKey( spep_0 + 80 -4, base1, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1); --突っ込んでくる

SE002 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, -1); --突っ込んでくる
setSeVolumeByWorkId( spep_0 + 0, SE002, 30);
setTimeStretch( SE002, 1.25, 30, 4);

SE003 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1); --突っ込んでくる

SE004 = playSeVer2( spep_0 + 40 -3, 1072, "", 0, 0, 0, -1); --画面遷移


-- ** 次の準備 ** --
spep_1 = spep_0 + 80 -4;

------------------------------------------------------
-- 敵を蹴り上げる(166F -6)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0);  --敵を蹴り上げる(ef_002_front)
setEffMoveKey( spep_1 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 166 -6, base2_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 166 -6, base2_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_f, 0);
setEffRotateKey( spep_1 + 166 -6, base2_f, 0);
setEffAlphaKey( spep_1 + 0, base2_f, 255);
setEffAlphaKey( spep_1 + 166 -7, base2_f, 255);
setEffAlphaKey( spep_1 + 166 -6, base2_f, 0);

base2_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0);  --敵を蹴り上げる(ef_002_front)
setEffMoveKey( spep_1 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 166 -6, base2_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 166 -6, base2_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_b, 0);
setEffRotateKey( spep_1 + 166 -6, base2_b, 0);
setEffAlphaKey( spep_1 + 0, base2_b, 255);
setEffAlphaKey( spep_1 + 166 -7, base2_b, 255);
setEffAlphaKey( spep_1 + 166 -6, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1 + 166 -6, 1, 0);
changeAnime( spep_1 + 0, 1, 100);

SA_1 = 1.3;

-- setMoveKey( spep_1 + 0 -3, 1, 299.5, 288.1 , 0);
setMoveKey( spep_1 + 2 -2, 1, 284.9, 272.3 , 0);
setMoveKey( spep_1 + 4 -3, 1, 270.4, 256.7 , 0);
setMoveKey( spep_1 + 6 -3, 1, 256.1, 241.3 , 0);
setMoveKey( spep_1 + 8 -3, 1, 241.9, 226 , 0);
setMoveKey( spep_1 + 10 -3, 1, 227.9, 211 , 0);
setMoveKey( spep_1 + 12 -3, 1, 214, 196.1 , 0);
setMoveKey( spep_1 + 14 -3, 1, 200.4, 181.4 , 0);
setMoveKey( spep_1 + 16 -3, 1, 186.8, 166.9 , 0);
setMoveKey( spep_1 + 18 -3, 1, 173.4, 152.6 , 0);
setMoveKey( spep_1 + 20 -3, 1, 160.1, 138.5 , 0);
setMoveKey( spep_1 + 22 -3, 1, 147, 124.6 , 0);
setMoveKey( spep_1 + 24 -3, 1, 134.1, 110.9 , 0);
setMoveKey( spep_1 + 26 -3, 1, 121.2, 97.3 , 0);
setMoveKey( spep_1 + 28 -3, 1, 108.6, 84 , 0);
setMoveKey( spep_1 + 30 -3, 1, 105.1, 82.6 , 0);

-- setScaleKey( spep_1 + 0 -3, 1, 0.65, 0.65);
setScaleKey( spep_1 + 2 -2, 1, 0.67 *SA_1, 0.67 *SA_1);
setScaleKey( spep_1 + 4 -3, 1, 0.69 *SA_1, 0.69 *SA_1);
setScaleKey( spep_1 + 6 -3, 1, 0.71 *SA_1, 0.71 *SA_1);
setScaleKey( spep_1 + 8 -3, 1, 0.72 *SA_1, 0.72 *SA_1);
setScaleKey( spep_1 + 10 -3, 1, 0.74 *SA_1, 0.74 *SA_1);
setScaleKey( spep_1 + 12 -3, 1, 0.76 *SA_1, 0.76 *SA_1);
setScaleKey( spep_1 + 14 -3, 1, 0.78 *SA_1, 0.78 *SA_1);
setScaleKey( spep_1 + 16 -3, 1, 0.79 *SA_1, 0.79 *SA_1);
setScaleKey( spep_1 + 18 -3, 1, 0.81 *SA_1, 0.81 *SA_1);
setScaleKey( spep_1 + 20 -3, 1, 0.83 *SA_1, 0.83 *SA_1);
setScaleKey( spep_1 + 22 -3, 1, 0.84 *SA_1, 0.84 *SA_1);
setScaleKey( spep_1 + 24 -3, 1, 0.86 *SA_1, 0.86 *SA_1);
setScaleKey( spep_1 + 26 -3, 1, 0.87 *SA_1, 0.87 *SA_1);
setScaleKey( spep_1 + 28 -3, 1, 0.89 *SA_1, 0.89 *SA_1);

setRotateKey( spep_1 + 0, 1, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);

pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 105.1, 82.6 , 0);
setMoveKey( SP_dodge + 10, 1, 105.1, 82.6 , 0);

setScaleKey( SP_dodge + 0, 1, 0.89 *SA_1, 0.89 *SA_1);
setScaleKey( SP_dodge + 10, 1, 0.89 *SA_1, 0.89 *SA_1);

setRotateKey( SP_dodge + 0, 1, 0);
setRotateKey( SP_dodge + 10, 1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------

-- -- ** 敵キャラクター（回避フラグのつづき） ** --
changeAnime( spep_1 + 48 -3, 1, 108);

setMoveKey( spep_1 + 32 -3, 1, 101.6, 81.1 , 0);
setMoveKey( spep_1 + 34 -3, 1, 98.1, 79.7 , 0);
setMoveKey( spep_1 + 36 -3, 1, 94.7, 78.3 , 0);
setMoveKey( spep_1 + 38 -3, 1, 91.2, 76.9 , 0);
setMoveKey( spep_1 + 40 -3, 1, 87.8, 75.5 , 0);
setMoveKey( spep_1 + 42 -3, 1, 84.4, 74.2 , 0);
setMoveKey( spep_1 + 44 -3, 1, 81, 72.7 , 0);
setMoveKey( spep_1 + 47 -3, 1, 77.5, 71.4 , 0);
setMoveKey( spep_1 + 48 -3, 1, 46.8, 12.2 , 0); --impact
setMoveKey( spep_1 + 50 -3, 1, 81.1, 35.8 , 0);
setMoveKey( spep_1 + 52 -3, 1, 51.4, 27.5 , 0);
setMoveKey( spep_1 + 54 -3, 1, 41.7, 29.2 , 0);
setMoveKey( spep_1 + 56 -3, 1, 204.3, 331 , 0);
setMoveKey( spep_1 + 58 -3, 1, 211.7, 346.8 , 0);
setMoveKey( spep_1 + 60 -3, 1, 211.1, 342.5 , 0);
setMoveKey( spep_1 + 62 -3, 1, 214.4, 348.1 , 0);
setMoveKey( spep_1 + 64 -3, 1, 217.7, 353.6 , 0);
setMoveKey( spep_1 + 66 -3, 1, 219.6, 356.3 , 0);
setMoveKey( spep_1 + 68 -3, 1, 221.4, 358.8 , 0);
setMoveKey( spep_1 + 70 -3, 1, 223.1, 361.1 , 0);
setMoveKey( spep_1 + 72 -3, 1, 224.7, 363.2 , 0);
setMoveKey( spep_1 + 74 -3, 1, 226.2, 365.1 , 0);
setMoveKey( spep_1 + 76 -3, 1, 227.6, 366.9 , 0);
setMoveKey( spep_1 + 78 -3, 1, 228.8, 368.5 , 0);
setMoveKey( spep_1 + 80 -3, 1, 230, 369.9 , 0);
setMoveKey( spep_1 + 82 -3, 1, 231.1, 371.2 , 0);
setMoveKey( spep_1 + 84 -3, 1, 232.1, 372.3 , 0);
setMoveKey( spep_1 + 86 -3, 1, 232.9, 373.1 , 0);
setMoveKey( spep_1 + 88 -3, 1, 233.7, 374 , 0);
setMoveKey( spep_1 + 90 -3, 1, 234.4, 374.6 , 0);
setMoveKey( spep_1 + 92 -3, 1, 235, 375 , 0);
setMoveKey( spep_1 + 94 -3, 1, 235.5, 375.3 , 0);
setMoveKey( spep_1 + 96 -3, 1, 235.9, 375.4 , 0);
setMoveKey( spep_1 + 98 -3, 1, 236.3, 375.5 , 0);
setMoveKey( spep_1 + 100 -3, 1, 236.5, 375.3 , 0);
setMoveKey( spep_1 + 102 -3, 1, 236.7, 375 , 0);
setMoveKey( spep_1 + 104 -3, 1, 236.8, 374.6 , 0);
setMoveKey( spep_1 + 106 -3, 1, 236.8, 374 , 0);
setMoveKey( spep_1 + 108 -3, 1, 236.7, 373.3 , 0);
setMoveKey( spep_1 + 110 -3, 1, 236.5, 372.4 , 0);
setMoveKey( spep_1 + 112 -3, 1, 236.3, 371.4 , 0); --out
setMoveKey( spep_1 + 113 -3, 1, 236.3, 371.4 , 0); --out
setMoveKey( spep_1 + 114 -3, 1, 134.1, 207.3 , 0);
setMoveKey( spep_1 + 116 -3, 1, 38.2, 53.9 , 0);
setMoveKey( spep_1 + 118 -3, 1, -51.7, -89.2 , 0);
setMoveKey( spep_1 + 120 -3, 1, -135.6, -222.4 , 0);
setMoveKey( spep_1 + 122 -3, 1, -213.9, -346 , 0);
setMoveKey( spep_1 + 124 -3, 1, -286.7, -460.4 , 0);
setMoveKey( spep_1 + 126 -3, 1, -268.3, -429.4 , 0);
setMoveKey( spep_1 + 128 -3, 1, -250.5, -399.1 , 0);
setMoveKey( spep_1 + 130 -3, 1, -233, -369.6 , 0);
setMoveKey( spep_1 + 132 -3, 1, -216.1, -340.9 , 0);
setMoveKey( spep_1 + 134 -3, 1, -199.5, -313 , 0);
setMoveKey( spep_1 + 136 -3, 1, -183.5, -285.8 , 0);
setMoveKey( spep_1 + 138 -3, 1, -167.9, -259.4 , 0);
setMoveKey( spep_1 + 140 -3, 1, -152.7, -233.7 , 0);
setMoveKey( spep_1 + 142 -3, 1, -138, -208.8 , 0);
setMoveKey( spep_1 + 144 -3, 1, -123.7, -184.7 , 0);
setMoveKey( spep_1 + 146 -3, 1, -109.9, -161.4 , 0);
setMoveKey( spep_1 + 148 -3, 1, -96.6, -138.8 , 0);
setMoveKey( spep_1 + 150 -3, 1, -83.7, -117 , 0);
setMoveKey( spep_1 + 152 -3, 1, -71.2, -95.9 , 0);
setMoveKey( spep_1 + 154 -3, 1, -59.2, -75.6 , 0);
setMoveKey( spep_1 + 156 -3, 1, -47.7, -56.1 , 0);
setMoveKey( spep_1 + 158 -3, 1, -168.2 *1.1, -212.7 *1.1, 0); --敵キャラの拡大によって端が少し残るので座標を大きめに動かす
setMoveKey( spep_1 + 160 -3, 1, -288.6 *1.2, -369.3 *1.2, 0);
setMoveKey( spep_1 + 162 -3, 1, -408.8 *1.3, -525.8 *1.3, 0);
setMoveKey( spep_1 + 164 -3, 1, -529 *1.4, -682.3 *1.4, 0);

setScaleKey( spep_1 + 34 -3, 1, 0.89 *SA_1, 0.89 *SA_1);
setScaleKey( spep_1 + 36 -3, 1, 0.88 *SA_1, 0.88 *SA_1);
setScaleKey( spep_1 + 47 -3, 1, 0.88 *SA_1, 0.88 *SA_1);
setScaleKey( spep_1 + 48 -3, 1, 1.02 *SA_1, 1.02 *SA_1); --impact
setScaleKey( spep_1 + 50 -3, 1, 1 *SA_1, 1 *SA_1);
setScaleKey( spep_1 + 52 -3, 1, 0.98 *SA_1, 0.98 *SA_1);
setScaleKey( spep_1 + 54 -3, 1, 0.96 *SA_1, 0.96 *SA_1);
setScaleKey( spep_1 + 56 -3, 1, 0.22 *SA_1, 0.22 *SA_1);
setScaleKey( spep_1 + 62 -3, 1, 0.22 *SA_1, 0.22 *SA_1);
setScaleKey( spep_1 + 64 -3, 1, 0.21 *SA_1, 0.21 *SA_1);
setScaleKey( spep_1 + 70 -3, 1, 0.21 *SA_1, 0.21 *SA_1);
setScaleKey( spep_1 + 72 -3, 1, 0.2 *SA_1, 0.2 *SA_1);
setScaleKey( spep_1 + 76 -3, 1, 0.2 *SA_1, 0.2 *SA_1);
setScaleKey( spep_1 + 78 -3, 1, 0.19 *SA_1, 0.19 *SA_1);
setScaleKey( spep_1 + 84 -3, 1, 0.19 *SA_1, 0.19 *SA_1);
setScaleKey( spep_1 + 86 -3, 1, 0.18 *SA_1, 0.18 *SA_1);
setScaleKey( spep_1 + 90 -3, 1, 0.18 *SA_1, 0.18 *SA_1);
setScaleKey( spep_1 + 92 -3, 1, 0.17 *SA_1, 0.17 *SA_1);
setScaleKey( spep_1 + 98 -3, 1, 0.17 *SA_1, 0.17 *SA_1);
setScaleKey( spep_1 + 100 -3, 1, 0.16 *SA_1, 0.16 *SA_1);
setScaleKey( spep_1 + 106 -3, 1, 0.16 *SA_1, 0.16 *SA_1);
setScaleKey( spep_1 + 108 -3, 1, 0.15 *SA_1, 0.15 *SA_1);
setScaleKey( spep_1 + 112 -3, 1, 0.15 *SA_1, 0.15 *SA_1); --out
setScaleKey( spep_1 + 112 -3, 1, 0.15 *SA_1, 0.15 *SA_1); --out
setScaleKey( spep_1 + 114 -3, 1, 0.44 *SA_1, 0.44 *SA_1);
setScaleKey( spep_1 + 116 -3, 1, 0.73 *SA_1, 0.73 *SA_1);
setScaleKey( spep_1 + 118 -3, 1, 1.02 *SA_1, 1.02 *SA_1);
setScaleKey( spep_1 + 120 -3, 1, 1.31 *SA_1, 1.31 *SA_1);
setScaleKey( spep_1 + 122 -3, 1, 1.6 *SA_1, 1.6 *SA_1);
setScaleKey( spep_1 + 124 -3, 1, 1.88 *SA_1, 1.88 *SA_1);
setScaleKey( spep_1 + 126 -3, 1, 1.88 *SA_1, 1.88 *SA_1);
setScaleKey( spep_1 + 128 -3, 1, 1.87 *SA_1, 1.87 *SA_1);
setScaleKey( spep_1 + 130 -3, 1, 1.87 *SA_1, 1.87 *SA_1);
setScaleKey( spep_1 + 132 -3, 1, 1.86 *SA_1, 1.86 *SA_1);
setScaleKey( spep_1 + 134 -3, 1, 1.86 *SA_1, 1.86 *SA_1);
setScaleKey( spep_1 + 136 -3, 1, 1.85 *SA_1, 1.85 *SA_1);
setScaleKey( spep_1 + 138 -3, 1, 1.85 *SA_1, 1.85 *SA_1);
setScaleKey( spep_1 + 140 -3, 1, 1.84 *SA_1, 1.84 *SA_1);
setScaleKey( spep_1 + 142 -3, 1, 1.84 *SA_1, 1.84 *SA_1);
setScaleKey( spep_1 + 144 -3, 1, 1.83 *SA_1, 1.83 *SA_1);
setScaleKey( spep_1 + 146 -3, 1, 1.83 *SA_1, 1.83 *SA_1);
setScaleKey( spep_1 + 148 -3, 1, 1.82 *SA_1, 1.82 *SA_1);
setScaleKey( spep_1 + 152 -3, 1, 1.82 *SA_1, 1.82 *SA_1);
setScaleKey( spep_1 + 154 -3, 1, 1.81 *SA_1, 1.81 *SA_1);
setScaleKey( spep_1 + 156 -3, 1, 1.81 *SA_1, 1.81 *SA_1);
setScaleKey( spep_1 + 158 -3, 1, 2.44 *SA_1, 2.44 *SA_1);
setScaleKey( spep_1 + 160 -3, 1, 3.07 *SA_1, 3.07 *SA_1);
setScaleKey( spep_1 + 162 -3, 1, 3.69 *SA_1, 3.69 *SA_1);
setScaleKey( spep_1 + 164 -3, 1, 4.32 *SA_1, 4.32 *SA_1);

setRotateKey( spep_1 + 47 -3, 1, 0);
setRotateKey( spep_1 + 48 -3, 1, -22.2); --impact
setRotateKey( spep_1 + 50 -3, 1, -22.5);
setRotateKey( spep_1 + 52 -3, 1, -22.8);
setRotateKey( spep_1 + 54 -3, 1, -23.1);
setRotateKey( spep_1 + 56 -3, 1, -20.5);
setRotateKey( spep_1 + 164 -3, 1, -20.5);


-- ** 音 ** --
SE005 = playSeVer2( spep_1 + 30 -3, 1003, "", 0, 0, 0, -1); --蹴り

SE006 = playSeVer2( spep_1 + 38 -3, 1001, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_1 + 38 -3, SE006, 51);

SE007 = playSeVer2( spep_1 + 40 -3, 1187, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_1 + 40 -3, SE007, 87);

SE008 = playSeVer2( spep_1 + 92 -3, 1109, "", 0, 0, 0, -1); --瞬間移動

SE009 = playSeVer2( spep_1 + 116 -3, 1109, "", 0, 0, 0, -1); --瞬間移動

SE010 = playSeVer2( spep_1 + 150 -3, 1116, "", spep_1 + 190, 0, 18, -1); --アップ

SE011 = playSeVer2( spep_1 + 152 -3, 1147, "", spep_1 + 250, 0, 8, -1); --アップ
setSeVolumeByWorkId( spep_1 + 152 -3, SE011, 48);

SE012 = playSeVer2( spep_1 + 160 -3, 1004, "", 0, 0, 0, -1); --アップ
setSeVolumeByWorkId( spep_1 + 160 -3, SE012, 69);


-- ** 次の準備 ** --
spep_2 = spep_1 + 166 -6;

------------------------------------------------------
-- 敵の背後に瞬間移動　セリフカットイン(90F -6)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0);  --敵の背後に瞬間移動　セリフカットイン(ef_003)
setEffMoveKey( spep_2 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_2 + 90 -6, base3, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_2 + 90 -6, base3, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base3, 0);
setEffRotateKey( spep_2 + 90 -6, base3, 0);
setEffAlphaKey( spep_2 + 0, base3, 255);
setEffAlphaKey( spep_2 + 90 -7, base3, 255);
setEffAlphaKey( spep_2 + 90 -6, base3, 0);


spep_x = spep_2 + 2;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 20 -3, 190006, 70 -3, 0x100, -1, 0, 40, 525);
setEffShake( spep_2 + 20 -3, ctgogo, 70 -6, 10);

setEffMoveKey( spep_2 + 20 -3, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_2 + 80 -3, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_2 + 90 -3, ctgogo, 180, 525 , 0);

setEffScaleKey( spep_2 + 20 -3, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_2 + 80 -3, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_2 + 90 -3, ctgogo, 2.5, 2.5);

setEffAlphaKey( spep_2 + 20 -3, ctgogo, 255);
setEffAlphaKey( spep_2 + 90 -7, ctgogo, 255);
setEffAlphaKey( spep_2 + 90 -6, ctgogo, 0);

setEffRotateKey( spep_2 + 20 -3, ctgogo, 0);
setEffRotateKey( spep_2 + 90 -3, ctgogo, 0);


-- ** 音 ** --
SE013 = playSeVer2( spep_2 + 2 -2, 1018, "", 0, 0, 0, -1); --顔カットイン

SE014 = playSeVer2( spep_2 + 2 -2, 1330, "", spep_2 + 84, 0, 6, -1); --アップ


-- ** 次の準備 ** --
spep_3 = spep_2 + 90 -6;

--------------------------------------
--カードカットイン(94F + 2)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_3 + 0, shuchusen, 0);
setEffRotateKey( spep_3 + 90, shuchusen, 0);
setEffAlphaKey( spep_3 + 0, shuchusen, 255);
setEffAlphaKey( spep_3 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_3 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_4 = spep_3 + 94 +2;

------------------------------------------------------
-- 気弾をため放つ(152F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffectLife( spep_4 + 0, SP_07, 152 -4, 0x100, -1, 0, 0, 0);  --気弾をため放つ(ef_004_front)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 152 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 152 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 152 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 152 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 152 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0);  --気弾をため放つ(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 152 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 152 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 152 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 152 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 152 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 30 -3, 1, 1);
setDisp( spep_4 + 152 -4, 1, 0);
changeAnime( spep_4 + 30 -3, 1, 108);
changeAnime( spep_4 + 50 -3, 1, 106); --impact

SA_4 = 1.05;

setMoveKey( spep_4 + 30 -3, 1, -593.1, -618.2 , 0);
setMoveKey( spep_4 + 32 -3, 1, -583.6, -607 , 0);
setMoveKey( spep_4 + 34 -3, 1, -561.3, -580.5 , 0);
setMoveKey( spep_4 + 36 -3, 1, -526.1, -538.7 , 0);
setMoveKey( spep_4 + 38 -3, 1, -478.4, -481.7 , 0);
setMoveKey( spep_4 + 40 -3, 1, -418, -409.6 , 0);
setMoveKey( spep_4 + 42 -3, 1, -345.3, -322.7 , 0);
setMoveKey( spep_4 + 44 -3, 1, -260.6, -221.1 , 0);
setMoveKey( spep_4 + 46 -3, 1, -163.7, -105.1 , 0);
setMoveKey( spep_4 + 49 -3, 1, -55, 25.2 , 0);
setMoveKey( spep_4 + 50 -3, 1, -90.5, 46.2 , 0); --impact
setMoveKey( spep_4 + 52 -3, 1, -84.8, 74.8 , 0);
setMoveKey( spep_4 + 54 -3, 1, -117.3, 75.1 , 0);
setMoveKey( spep_4 + 56 -3, 1, -141.9, 95.5 , 0);
setMoveKey( spep_4 + 58 -3, 1, -118.5, 75.8 , 0);
setMoveKey( spep_4 + 60 -3, 1, -95.1, 36.1 , 0);
setMoveKey( spep_4 + 62 -3, 1, -119.6, 76.4 , 0);
setMoveKey( spep_4 + 64 -3, 1, -88.3, 76.8 , 0);
setMoveKey( spep_4 + 66 -3, 1, -120.8, 77.1 , 0);
setMoveKey( spep_4 + 68 -3, 1, -145.4, 97.4 , 0);
setMoveKey( spep_4 + 70 -3, 1, -121.9, 77.7 , 0);
setMoveKey( spep_4 + 72 -3, 1, -122.5, 78.1 , 0);
setMoveKey( spep_4 + 74 -3, 1, -123.1, 78.4 , 0);
setMoveKey( spep_4 + 76 -3, 1, -123.6, 78.7 , 0);
setMoveKey( spep_4 + 78 -3, 1, -124.2, 79.1 , 0);
setMoveKey( spep_4 + 80 -3, 1, -124.8, 79.4 , 0);
setMoveKey( spep_4 + 82 -3, 1, -125.4, 79.7 , 0);
setMoveKey( spep_4 + 84 -3, 1, -125.9, 80 , 0);
setMoveKey( spep_4 + 86 -3, 1, -126.5, 80.4 , 0);
setMoveKey( spep_4 + 88 -3, 1, -127.1, 80.7 , 0);
setMoveKey( spep_4 + 90 -3, 1, -127.7, 81 , 0);
setMoveKey( spep_4 + 92 -3, 1, -128.2, 81.4 , 0);
setMoveKey( spep_4 + 94 -3, 1, -128.8, 81.7 , 0);
setMoveKey( spep_4 + 96 -3, 1, -117.4, 70 , 0);
setMoveKey( spep_4 + 98 -3, 1, -130, 82.3 , 0);
setMoveKey( spep_4 + 100 -3, 1, -142.5, 98.7 , 0);
setMoveKey( spep_4 + 102 -3, 1, -131.1, 83 , 0);
setMoveKey( spep_4 + 104 -3, 1, -123.7, 67.3 , 0);
setMoveKey( spep_4 + 106 -3, 1, -132.3, 83.6 , 0);
setMoveKey( spep_4 + 108 -3, 1, -124.8, 96 , 0);
setMoveKey( spep_4 + 110 -3, 1, -133.4, 84.3 , 0);
setMoveKey( spep_4 + 112 -3, 1, -142, 72.6 , 0);
setMoveKey( spep_4 + 114 -3, 1, -134.5, 85 , 0);
setMoveKey( spep_4 + 116 -3, 1, -127.1, 101.3 , 0);
setMoveKey( spep_4 + 118 -3, 1, -135.7, 85.6 , 0);
setMoveKey( spep_4 + 120 -3, 1, -144.3, 73.9 , 0);
setMoveKey( spep_4 + 122 -3, 1, -136.8, 86.3 , 0);
setMoveKey( spep_4 + 124 -3, 1, -129.4, 106.6 , 0);
setMoveKey( spep_4 + 126 -3, 1, -138, 86.9 , 0);
setMoveKey( spep_4 + 128 -3, 1, -146.6, 75.3 , 0);
setMoveKey( spep_4 + 130 -3, 1, -139.1, 87.6 , 0);
setMoveKey( spep_4 + 132 -3, 1, -139.7, 107.9 , 0);
setMoveKey( spep_4 + 134 -3, 1, -140.3, 88.2 , 0);
setMoveKey( spep_4 + 136 -3, 1, -132.9, 76.6 , 0);
setMoveKey( spep_4 + 138 -3, 1, -141.4, 88.9 , 0);
setMoveKey( spep_4 + 140 -3, 1, -150, 101.2 , 0);
setMoveKey( spep_4 + 142 -3, 1, -142.6, 89.5 , 0);
setMoveKey( spep_4 + 144 -3, 1, -135.2, 77.9 , 0);
setMoveKey( spep_4 + 146 -3, 1, -143.7, 90.2 , 0);
setMoveKey( spep_4 + 148 -3, 1, -144.3, 106.5 , 0);
setMoveKey( spep_4 + 150 -3, 1, -144.9, 90.9 , 0);

setScaleKey( spep_4 + 30 -3, 1, 4.36 *SA_4, 4.36 *SA_4);
setScaleKey( spep_4 + 32 -3, 1, 4.31 *SA_4, 4.31 *SA_4);
setScaleKey( spep_4 + 34 -3, 1, 4.21 *SA_4, 4.21 *SA_4);
setScaleKey( spep_4 + 36 -3, 1, 4.05 *SA_4, 4.05 *SA_4);
setScaleKey( spep_4 + 38 -3, 1, 3.83 *SA_4, 3.83 *SA_4);
setScaleKey( spep_4 + 40 -3, 1, 3.56 *SA_4, 3.56 *SA_4);
setScaleKey( spep_4 + 42 -3, 1, 3.23 *SA_4, 3.23 *SA_4);
setScaleKey( spep_4 + 44 -3, 1, 2.85 *SA_4, 2.85 *SA_4);
setScaleKey( spep_4 + 46 -3, 1, 2.42 *SA_4, 2.42 *SA_4);
setScaleKey( spep_4 + 49 -3, 1, 1.93 *SA_4, 1.93 *SA_4);
setScaleKey( spep_4 + 50 -3, 1, 2 *SA_4, 2 *SA_4); --impact
setScaleKey( spep_4 + 150 -3, 1, 2 *SA_4, 2 *SA_4);

setRotateKey( spep_4 + 30 -3, 1, -27.9);
setRotateKey( spep_4 + 44 -3, 1, -27.9);
setRotateKey( spep_4 + 46 -3, 1, -27.8);
setRotateKey( spep_4 + 49 -3, 1, -27.8);
setRotateKey( spep_4 + 50 -3, 1, -63.2); --impact
setRotateKey( spep_4 + 52 -3, 1, -55.2);
setRotateKey( spep_4 + 150 -3, 1, -55.2);


-- ** 音 ** --
SE016 = playSeVer2( spep_4 + 0, 49, "", 0, 0, 0, -1); --気弾溜め

SE017 = playSeVer2( spep_4 + 0, 1144, "", 0, 0, 0, 0.5); --気弾溜め
setSeVolumeByWorkId( spep_4 + 0, SE017, 82);
setTimeStretch( SE017, 1.11, 30, 4);

SE018 = playSeVer2( spep_4 + 0, 1037, "", 0, 0, 0, -1); --気弾溜め
setTimeStretch( SE018, 1.18, 30, 4);

SE019 = playSeVer2( spep_4 + 24 -3, 1027, "", 0, 0, 0, 0.7); --敵引き寄せ

SE020 = playSeVer2( spep_4 + 36 -3, 1017, "", 0, 0, 0, 0.8); --敵ヒット

SE021 = playSeVer2( spep_4 + 58 -3, 1282, "", spep_4 + 58 -3 +102, 0, 16, 0.5); --気弾溜め２
setSeVolumeByWorkId( spep_4 + 58 -3, SE021, 78);

SE022 = playSeVer2( spep_4 + 138 -3, 1023, "", 0, 0, 0, -1); --爆発

SE023 = playSeVer2( spep_4 + 138 -3, 1024, "", 0, 0, 0, -1); --爆発


-- ** 次の準備 ** --
spep_5 = spep_4 + 152 -4;

------------------------------------------------------
-- 爆発　フィニッシュ(128F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --爆発　フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 128 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 128 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 128 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 128 -5, base5, 255);
setEffAlphaKey( spep_5 + 128 -4, base5, 0);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0);
endPhase( spep_5 + 128 -4);


else


-----------------------------------------
--敵側の攻撃
-----------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 向かってくるベジータ(80F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_10, 0x80, -1, 0, 0, 0);  --向かってくるベジータ(ef_001_r)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 80 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 80 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 80 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 80 -5, base1, 255);
setEffAlphaKey( spep_0 + 80 -4, base1, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1); --突っ込んでくる

SE002 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, -1); --突っ込んでくる
setSeVolumeByWorkId( spep_0 + 0, SE002, 30);
setTimeStretch( SE002, 1.25, 30, 4);

SE003 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1); --突っ込んでくる

SE004 = playSeVer2( spep_0 + 40 -3, 1072, "", 0, 0, 0, -1); --画面遷移


-- ** 次の準備 ** --
spep_1 = spep_0 + 80 -4;

------------------------------------------------------
-- 敵を蹴り上げる(166F -6d)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0);  --敵を蹴り上げる(ef_002_r_front)
setEffMoveKey( spep_1 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 166 -6, base2_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 166 -6, base2_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_f, 0);
setEffRotateKey( spep_1 + 166 -6, base2_f, 0);
setEffAlphaKey( spep_1 + 0, base2_f, 255);
setEffAlphaKey( spep_1 + 166 -7, base2_f, 255);
setEffAlphaKey( spep_1 + 166 -6, base2_f, 0);

base2_b = entryEffect( spep_1 + 0, SP_05, 0x80, -1, 0, 0, 0);  --敵を蹴り上げる(ef_002_r_front)
setEffMoveKey( spep_1 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 166 -6, base2_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 166 -6, base2_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_b, 0);
setEffRotateKey( spep_1 + 166 -6, base2_b, 0);
setEffAlphaKey( spep_1 + 0, base2_b, 255);
setEffAlphaKey( spep_1 + 166 -7, base2_b, 255);
setEffAlphaKey( spep_1 + 166 -6, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1 + 166 -6, 1, 0);
changeAnime( spep_1 + 0, 1, 100);

SA_1 = 1.3;

-- setMoveKey( spep_1 + 0 -3, 1, 299.5, 288.1 , 0);
setMoveKey( spep_1 + 2 -2, 1, 284.9, 272.3 , 0);
setMoveKey( spep_1 + 4 -3, 1, 270.4, 256.7 , 0);
setMoveKey( spep_1 + 6 -3, 1, 256.1, 241.3 , 0);
setMoveKey( spep_1 + 8 -3, 1, 241.9, 226 , 0);
setMoveKey( spep_1 + 10 -3, 1, 227.9, 211 , 0);
setMoveKey( spep_1 + 12 -3, 1, 214, 196.1 , 0);
setMoveKey( spep_1 + 14 -3, 1, 200.4, 181.4 , 0);
setMoveKey( spep_1 + 16 -3, 1, 186.8, 166.9 , 0);
setMoveKey( spep_1 + 18 -3, 1, 173.4, 152.6 , 0);
setMoveKey( spep_1 + 20 -3, 1, 160.1, 138.5 , 0);
setMoveKey( spep_1 + 22 -3, 1, 147, 124.6 , 0);
setMoveKey( spep_1 + 24 -3, 1, 134.1, 110.9 , 0);
setMoveKey( spep_1 + 26 -3, 1, 121.2, 97.3 , 0);
setMoveKey( spep_1 + 28 -3, 1, 108.6, 84 , 0);
setMoveKey( spep_1 + 30 -3, 1, 105.1, 82.6 , 0);

-- setScaleKey( spep_1 + 0 -3, 1, 0.65, 0.65);
setScaleKey( spep_1 + 2 -2, 1, 0.67 *SA_1, 0.67 *SA_1);
setScaleKey( spep_1 + 4 -3, 1, 0.69 *SA_1, 0.69 *SA_1);
setScaleKey( spep_1 + 6 -3, 1, 0.71 *SA_1, 0.71 *SA_1);
setScaleKey( spep_1 + 8 -3, 1, 0.72 *SA_1, 0.72 *SA_1);
setScaleKey( spep_1 + 10 -3, 1, 0.74 *SA_1, 0.74 *SA_1);
setScaleKey( spep_1 + 12 -3, 1, 0.76 *SA_1, 0.76 *SA_1);
setScaleKey( spep_1 + 14 -3, 1, 0.78 *SA_1, 0.78 *SA_1);
setScaleKey( spep_1 + 16 -3, 1, 0.79 *SA_1, 0.79 *SA_1);
setScaleKey( spep_1 + 18 -3, 1, 0.81 *SA_1, 0.81 *SA_1);
setScaleKey( spep_1 + 20 -3, 1, 0.83 *SA_1, 0.83 *SA_1);
setScaleKey( spep_1 + 22 -3, 1, 0.84 *SA_1, 0.84 *SA_1);
setScaleKey( spep_1 + 24 -3, 1, 0.86 *SA_1, 0.86 *SA_1);
setScaleKey( spep_1 + 26 -3, 1, 0.87 *SA_1, 0.87 *SA_1);
setScaleKey( spep_1 + 28 -3, 1, 0.89 *SA_1, 0.89 *SA_1);

setRotateKey( spep_1 + 0, 1, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);

pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 105.1, 82.6 , 0);
setMoveKey( SP_dodge + 10, 1, 105.1, 82.6 , 0);

setScaleKey( SP_dodge + 0, 1, 0.89 *SA_1, 0.89 *SA_1);
setScaleKey( SP_dodge + 10, 1, 0.89 *SA_1, 0.89 *SA_1);

setRotateKey( SP_dodge + 0, 1, 0);
setRotateKey( SP_dodge + 10, 1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------

-- -- ** 敵キャラクター（回避フラグのつづき） ** --
changeAnime( spep_1 + 48 -3, 1, 108);

setMoveKey( spep_1 + 32 -3, 1, 101.6, 81.1 , 0);
setMoveKey( spep_1 + 34 -3, 1, 98.1, 79.7 , 0);
setMoveKey( spep_1 + 36 -3, 1, 94.7, 78.3 , 0);
setMoveKey( spep_1 + 38 -3, 1, 91.2, 76.9 , 0);
setMoveKey( spep_1 + 40 -3, 1, 87.8, 75.5 , 0);
setMoveKey( spep_1 + 42 -3, 1, 84.4, 74.2 , 0);
setMoveKey( spep_1 + 44 -3, 1, 81, 72.7 , 0);
setMoveKey( spep_1 + 47 -3, 1, 77.5, 71.4 , 0);
setMoveKey( spep_1 + 48 -3, 1, 46.8, 12.2 , 0); --impact
setMoveKey( spep_1 + 50 -3, 1, 81.1, 35.8 , 0);
setMoveKey( spep_1 + 52 -3, 1, 51.4, 27.5 , 0);
setMoveKey( spep_1 + 54 -3, 1, 41.7, 29.2 , 0);
setMoveKey( spep_1 + 56 -3, 1, 204.3, 331 , 0);
setMoveKey( spep_1 + 58 -3, 1, 211.7, 346.8 , 0);
setMoveKey( spep_1 + 60 -3, 1, 211.1, 342.5 , 0);
setMoveKey( spep_1 + 62 -3, 1, 214.4, 348.1 , 0);
setMoveKey( spep_1 + 64 -3, 1, 217.7, 353.6 , 0);
setMoveKey( spep_1 + 66 -3, 1, 219.6, 356.3 , 0);
setMoveKey( spep_1 + 68 -3, 1, 221.4, 358.8 , 0);
setMoveKey( spep_1 + 70 -3, 1, 223.1, 361.1 , 0);
setMoveKey( spep_1 + 72 -3, 1, 224.7, 363.2 , 0);
setMoveKey( spep_1 + 74 -3, 1, 226.2, 365.1 , 0);
setMoveKey( spep_1 + 76 -3, 1, 227.6, 366.9 , 0);
setMoveKey( spep_1 + 78 -3, 1, 228.8, 368.5 , 0);
setMoveKey( spep_1 + 80 -3, 1, 230, 369.9 , 0);
setMoveKey( spep_1 + 82 -3, 1, 231.1, 371.2 , 0);
setMoveKey( spep_1 + 84 -3, 1, 232.1, 372.3 , 0);
setMoveKey( spep_1 + 86 -3, 1, 232.9, 373.1 , 0);
setMoveKey( spep_1 + 88 -3, 1, 233.7, 374 , 0);
setMoveKey( spep_1 + 90 -3, 1, 234.4, 374.6 , 0);
setMoveKey( spep_1 + 92 -3, 1, 235, 375 , 0);
setMoveKey( spep_1 + 94 -3, 1, 235.5, 375.3 , 0);
setMoveKey( spep_1 + 96 -3, 1, 235.9, 375.4 , 0);
setMoveKey( spep_1 + 98 -3, 1, 236.3, 375.5 , 0);
setMoveKey( spep_1 + 100 -3, 1, 236.5, 375.3 , 0);
setMoveKey( spep_1 + 102 -3, 1, 236.7, 375 , 0);
setMoveKey( spep_1 + 104 -3, 1, 236.8, 374.6 , 0);
setMoveKey( spep_1 + 106 -3, 1, 236.8, 374 , 0);
setMoveKey( spep_1 + 108 -3, 1, 236.7, 373.3 , 0);
setMoveKey( spep_1 + 110 -3, 1, 236.5, 372.4 , 0);
setMoveKey( spep_1 + 112 -3, 1, 236.3, 371.4 , 0); --out
setMoveKey( spep_1 + 113 -3, 1, 236.3, 371.4 , 0); --out
setMoveKey( spep_1 + 114 -3, 1, 134.1, 207.3 , 0);
setMoveKey( spep_1 + 116 -3, 1, 38.2, 53.9 , 0);
setMoveKey( spep_1 + 118 -3, 1, -51.7, -89.2 , 0);
setMoveKey( spep_1 + 120 -3, 1, -135.6, -222.4 , 0);
setMoveKey( spep_1 + 122 -3, 1, -213.9, -346 , 0);
setMoveKey( spep_1 + 124 -3, 1, -286.7, -460.4 , 0);
setMoveKey( spep_1 + 126 -3, 1, -268.3, -429.4 , 0);
setMoveKey( spep_1 + 128 -3, 1, -250.5, -399.1 , 0);
setMoveKey( spep_1 + 130 -3, 1, -233, -369.6 , 0);
setMoveKey( spep_1 + 132 -3, 1, -216.1, -340.9 , 0);
setMoveKey( spep_1 + 134 -3, 1, -199.5, -313 , 0);
setMoveKey( spep_1 + 136 -3, 1, -183.5, -285.8 , 0);
setMoveKey( spep_1 + 138 -3, 1, -167.9, -259.4 , 0);
setMoveKey( spep_1 + 140 -3, 1, -152.7, -233.7 , 0);
setMoveKey( spep_1 + 142 -3, 1, -138, -208.8 , 0);
setMoveKey( spep_1 + 144 -3, 1, -123.7, -184.7 , 0);
setMoveKey( spep_1 + 146 -3, 1, -109.9, -161.4 , 0);
setMoveKey( spep_1 + 148 -3, 1, -96.6, -138.8 , 0);
setMoveKey( spep_1 + 150 -3, 1, -83.7, -117 , 0);
setMoveKey( spep_1 + 152 -3, 1, -71.2, -95.9 , 0);
setMoveKey( spep_1 + 154 -3, 1, -59.2, -75.6 , 0);
setMoveKey( spep_1 + 156 -3, 1, -47.7, -56.1 , 0);
setMoveKey( spep_1 + 158 -3, 1, -168.2 *1.1, -212.7 *1.1, 0); --敵キャラの拡大によって端が少し残るので座標を大きめに動かす
setMoveKey( spep_1 + 160 -3, 1, -288.6 *1.2, -369.3 *1.2, 0);
setMoveKey( spep_1 + 162 -3, 1, -408.8 *1.3, -525.8 *1.3, 0);
setMoveKey( spep_1 + 164 -3, 1, -529 *1.4, -682.3 *1.4, 0);

setScaleKey( spep_1 + 34 -3, 1, 0.89 *SA_1, 0.89 *SA_1);
setScaleKey( spep_1 + 36 -3, 1, 0.88 *SA_1, 0.88 *SA_1);
setScaleKey( spep_1 + 47 -3, 1, 0.88 *SA_1, 0.88 *SA_1);
setScaleKey( spep_1 + 48 -3, 1, 1.02 *SA_1, 1.02 *SA_1); --impact
setScaleKey( spep_1 + 50 -3, 1, 1 *SA_1, 1 *SA_1);
setScaleKey( spep_1 + 52 -3, 1, 0.98 *SA_1, 0.98 *SA_1);
setScaleKey( spep_1 + 54 -3, 1, 0.96 *SA_1, 0.96 *SA_1);
setScaleKey( spep_1 + 56 -3, 1, 0.22 *SA_1, 0.22 *SA_1);
setScaleKey( spep_1 + 62 -3, 1, 0.22 *SA_1, 0.22 *SA_1);
setScaleKey( spep_1 + 64 -3, 1, 0.21 *SA_1, 0.21 *SA_1);
setScaleKey( spep_1 + 70 -3, 1, 0.21 *SA_1, 0.21 *SA_1);
setScaleKey( spep_1 + 72 -3, 1, 0.2 *SA_1, 0.2 *SA_1);
setScaleKey( spep_1 + 76 -3, 1, 0.2 *SA_1, 0.2 *SA_1);
setScaleKey( spep_1 + 78 -3, 1, 0.19 *SA_1, 0.19 *SA_1);
setScaleKey( spep_1 + 84 -3, 1, 0.19 *SA_1, 0.19 *SA_1);
setScaleKey( spep_1 + 86 -3, 1, 0.18 *SA_1, 0.18 *SA_1);
setScaleKey( spep_1 + 90 -3, 1, 0.18 *SA_1, 0.18 *SA_1);
setScaleKey( spep_1 + 92 -3, 1, 0.17 *SA_1, 0.17 *SA_1);
setScaleKey( spep_1 + 98 -3, 1, 0.17 *SA_1, 0.17 *SA_1);
setScaleKey( spep_1 + 100 -3, 1, 0.16 *SA_1, 0.16 *SA_1);
setScaleKey( spep_1 + 106 -3, 1, 0.16 *SA_1, 0.16 *SA_1);
setScaleKey( spep_1 + 108 -3, 1, 0.15 *SA_1, 0.15 *SA_1);
setScaleKey( spep_1 + 112 -3, 1, 0.15 *SA_1, 0.15 *SA_1); --out
setScaleKey( spep_1 + 112 -3, 1, 0.15 *SA_1, 0.15 *SA_1); --out
setScaleKey( spep_1 + 114 -3, 1, 0.44 *SA_1, 0.44 *SA_1);
setScaleKey( spep_1 + 116 -3, 1, 0.73 *SA_1, 0.73 *SA_1);
setScaleKey( spep_1 + 118 -3, 1, 1.02 *SA_1, 1.02 *SA_1);
setScaleKey( spep_1 + 120 -3, 1, 1.31 *SA_1, 1.31 *SA_1);
setScaleKey( spep_1 + 122 -3, 1, 1.6 *SA_1, 1.6 *SA_1);
setScaleKey( spep_1 + 124 -3, 1, 1.88 *SA_1, 1.88 *SA_1);
setScaleKey( spep_1 + 126 -3, 1, 1.88 *SA_1, 1.88 *SA_1);
setScaleKey( spep_1 + 128 -3, 1, 1.87 *SA_1, 1.87 *SA_1);
setScaleKey( spep_1 + 130 -3, 1, 1.87 *SA_1, 1.87 *SA_1);
setScaleKey( spep_1 + 132 -3, 1, 1.86 *SA_1, 1.86 *SA_1);
setScaleKey( spep_1 + 134 -3, 1, 1.86 *SA_1, 1.86 *SA_1);
setScaleKey( spep_1 + 136 -3, 1, 1.85 *SA_1, 1.85 *SA_1);
setScaleKey( spep_1 + 138 -3, 1, 1.85 *SA_1, 1.85 *SA_1);
setScaleKey( spep_1 + 140 -3, 1, 1.84 *SA_1, 1.84 *SA_1);
setScaleKey( spep_1 + 142 -3, 1, 1.84 *SA_1, 1.84 *SA_1);
setScaleKey( spep_1 + 144 -3, 1, 1.83 *SA_1, 1.83 *SA_1);
setScaleKey( spep_1 + 146 -3, 1, 1.83 *SA_1, 1.83 *SA_1);
setScaleKey( spep_1 + 148 -3, 1, 1.82 *SA_1, 1.82 *SA_1);
setScaleKey( spep_1 + 152 -3, 1, 1.82 *SA_1, 1.82 *SA_1);
setScaleKey( spep_1 + 154 -3, 1, 1.81 *SA_1, 1.81 *SA_1);
setScaleKey( spep_1 + 156 -3, 1, 1.81 *SA_1, 1.81 *SA_1);
setScaleKey( spep_1 + 158 -3, 1, 2.44 *SA_1, 2.44 *SA_1);
setScaleKey( spep_1 + 160 -3, 1, 3.07 *SA_1, 3.07 *SA_1);
setScaleKey( spep_1 + 162 -3, 1, 3.69 *SA_1, 3.69 *SA_1);
setScaleKey( spep_1 + 164 -3, 1, 4.32 *SA_1, 4.32 *SA_1);

setRotateKey( spep_1 + 47 -3, 1, 0);
setRotateKey( spep_1 + 48 -3, 1, -22.2); --impact
setRotateKey( spep_1 + 50 -3, 1, -22.5);
setRotateKey( spep_1 + 52 -3, 1, -22.8);
setRotateKey( spep_1 + 54 -3, 1, -23.1);
setRotateKey( spep_1 + 56 -3, 1, -20.5);
setRotateKey( spep_1 + 164 -3, 1, -20.5);


-- ** 音 ** --
SE005 = playSeVer2( spep_1 + 30 -3, 1003, "", 0, 0, 0, -1); --蹴り

SE006 = playSeVer2( spep_1 + 38 -3, 1001, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_1 + 38 -3, SE006, 51);

SE007 = playSeVer2( spep_1 + 40 -3, 1187, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_1 + 40 -3, SE007, 87);

SE008 = playSeVer2( spep_1 + 92 -3, 1109, "", 0, 0, 0, -1); --瞬間移動

SE009 = playSeVer2( spep_1 + 116 -3, 1109, "", 0, 0, 0, -1); --瞬間移動

SE010 = playSeVer2( spep_1 + 150 -3, 1116, "", spep_1 + 190, 0, 18, -1); --アップ

SE011 = playSeVer2( spep_1 + 152 -3, 1147, "", spep_1 + 250, 0, 8, -1); --アップ
setSeVolumeByWorkId( spep_1 + 152 -3, SE011, 48);

SE012 = playSeVer2( spep_1 + 160 -3, 1004, "", 0, 0, 0, -1); --アップ
setSeVolumeByWorkId( spep_1 + 160 -3, SE012, 69);


-- ** 次の準備 ** --
spep_2 = spep_1 + 166 -6;

------------------------------------------------------
-- 敵の背後に瞬間移動　セリフカットイン(90F -6)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0);  --敵の背後に瞬間移動　セリフカットイン(ef_003)
setEffMoveKey( spep_2 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_2 + 90 -6, base3, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_2 + 90 -6, base3, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base3, 0);
setEffRotateKey( spep_2 + 90 -6, base3, 0);
setEffAlphaKey( spep_2 + 0, base3, 255);
setEffAlphaKey( spep_2 + 90 -7, base3, 255);
setEffAlphaKey( spep_2 + 90 -6, base3, 0);


-- spep_x = spep_2 + 2;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 20 -3, 190006, 70 -3, 0x100, -1, 0, -40, 525);
setEffShake( spep_2 + 20 -3, ctgogo, 70 -6, 10);

setEffMoveKey( spep_2 + 20 -3, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_2 + 80 -3, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_2 + 90 -3, ctgogo, -180, 525 , 0);

setEffScaleKey( spep_2 + 20 -3, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_2 + 80 -3, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_2 + 90 -3, ctgogo, -2.5, 2.5);

setEffAlphaKey( spep_2 + 20 -3, ctgogo, 255);
setEffAlphaKey( spep_2 + 90 -7, ctgogo, 255);
setEffAlphaKey( spep_2 + 90 -6, ctgogo, 0);

setEffRotateKey( spep_2 + 20 -3, ctgogo, 0);
setEffRotateKey( spep_2 + 90 -3, ctgogo, 0);



-- ** 音 ** --
SE013 = playSeVer2( spep_2 + 2 -2, 1018, "", 0, 0, 0, -1); --顔カットイン

SE014 = playSeVer2( spep_2 + 2 -2, 1330, "", spep_2 + 84, 0, 6, -1); --アップ


-- ** 次の準備 ** --
spep_3 = spep_2 + 90 -6;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_3 + 0, shuchusen, 0);
setEffRotateKey( spep_3 + 90, shuchusen, 0);
setEffAlphaKey( spep_3 + 0, shuchusen, 255);
setEffAlphaKey( spep_3 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_3 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_4 = spep_3 + 94 +2;

------------------------------------------------------
-- 気弾をため放つ(152F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffectLife( spep_4 + 0, SP_07, 152 -4, 0x100, -1, 0, 0, 0);  --気弾をため放つ(ef_004_front)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 152 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 152 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 152 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 152 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 152 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0);  --気弾をため放つ(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 152 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 152 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 152 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 152 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 152 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 30 -3, 1, 1);
setDisp( spep_4 + 150 -3, 1, 0);
changeAnime( spep_4 + 30 -3, 1, 108);
changeAnime( spep_4 + 50 -3, 1, 106); --impact

SA_4 = 1.05;

setMoveKey( spep_4 + 30 -3, 1, -593.1, -618.2 , 0);
setMoveKey( spep_4 + 32 -3, 1, -583.6, -607 , 0);
setMoveKey( spep_4 + 34 -3, 1, -561.3, -580.5 , 0);
setMoveKey( spep_4 + 36 -3, 1, -526.1, -538.7 , 0);
setMoveKey( spep_4 + 38 -3, 1, -478.4, -481.7 , 0);
setMoveKey( spep_4 + 40 -3, 1, -418, -409.6 , 0);
setMoveKey( spep_4 + 42 -3, 1, -345.3, -322.7 , 0);
setMoveKey( spep_4 + 44 -3, 1, -260.6, -221.1 , 0);
setMoveKey( spep_4 + 46 -3, 1, -163.7, -105.1 , 0);
setMoveKey( spep_4 + 49 -3, 1, -55, 25.2 , 0);
setMoveKey( spep_4 + 50 -3, 1, -90.5, 46.2 , 0); --impact
setMoveKey( spep_4 + 52 -3, 1, -84.8, 74.8 , 0);
setMoveKey( spep_4 + 54 -3, 1, -117.3, 75.1 , 0);
setMoveKey( spep_4 + 56 -3, 1, -141.9, 95.5 , 0);
setMoveKey( spep_4 + 58 -3, 1, -118.5, 75.8 , 0);
setMoveKey( spep_4 + 60 -3, 1, -95.1, 36.1 , 0);
setMoveKey( spep_4 + 62 -3, 1, -119.6, 76.4 , 0);
setMoveKey( spep_4 + 64 -3, 1, -88.3, 76.8 , 0);
setMoveKey( spep_4 + 66 -3, 1, -120.8, 77.1 , 0);
setMoveKey( spep_4 + 68 -3, 1, -145.4, 97.4 , 0);
setMoveKey( spep_4 + 70 -3, 1, -121.9, 77.7 , 0);
setMoveKey( spep_4 + 72 -3, 1, -122.5, 78.1 , 0);
setMoveKey( spep_4 + 74 -3, 1, -123.1, 78.4 , 0);
setMoveKey( spep_4 + 76 -3, 1, -123.6, 78.7 , 0);
setMoveKey( spep_4 + 78 -3, 1, -124.2, 79.1 , 0);
setMoveKey( spep_4 + 80 -3, 1, -124.8, 79.4 , 0);
setMoveKey( spep_4 + 82 -3, 1, -125.4, 79.7 , 0);
setMoveKey( spep_4 + 84 -3, 1, -125.9, 80 , 0);
setMoveKey( spep_4 + 86 -3, 1, -126.5, 80.4 , 0);
setMoveKey( spep_4 + 88 -3, 1, -127.1, 80.7 , 0);
setMoveKey( spep_4 + 90 -3, 1, -127.7, 81 , 0);
setMoveKey( spep_4 + 92 -3, 1, -128.2, 81.4 , 0);
setMoveKey( spep_4 + 94 -3, 1, -128.8, 81.7 , 0);
setMoveKey( spep_4 + 96 -3, 1, -117.4, 70 , 0);
setMoveKey( spep_4 + 98 -3, 1, -130, 82.3 , 0);
setMoveKey( spep_4 + 100 -3, 1, -142.5, 98.7 , 0);
setMoveKey( spep_4 + 102 -3, 1, -131.1, 83 , 0);
setMoveKey( spep_4 + 104 -3, 1, -123.7, 67.3 , 0);
setMoveKey( spep_4 + 106 -3, 1, -132.3, 83.6 , 0);
setMoveKey( spep_4 + 108 -3, 1, -124.8, 96 , 0);
setMoveKey( spep_4 + 110 -3, 1, -133.4, 84.3 , 0);
setMoveKey( spep_4 + 112 -3, 1, -142, 72.6 , 0);
setMoveKey( spep_4 + 114 -3, 1, -134.5, 85 , 0);
setMoveKey( spep_4 + 116 -3, 1, -127.1, 101.3 , 0);
setMoveKey( spep_4 + 118 -3, 1, -135.7, 85.6 , 0);
setMoveKey( spep_4 + 120 -3, 1, -144.3, 73.9 , 0);
setMoveKey( spep_4 + 122 -3, 1, -136.8, 86.3 , 0);
setMoveKey( spep_4 + 124 -3, 1, -129.4, 106.6 , 0);
setMoveKey( spep_4 + 126 -3, 1, -138, 86.9 , 0);
setMoveKey( spep_4 + 128 -3, 1, -146.6, 75.3 , 0);
setMoveKey( spep_4 + 130 -3, 1, -139.1, 87.6 , 0);
setMoveKey( spep_4 + 132 -3, 1, -139.7, 107.9 , 0);
setMoveKey( spep_4 + 134 -3, 1, -140.3, 88.2 , 0);
setMoveKey( spep_4 + 136 -3, 1, -132.9, 76.6 , 0);
setMoveKey( spep_4 + 138 -3, 1, -141.4, 88.9 , 0);
setMoveKey( spep_4 + 140 -3, 1, -150, 101.2 , 0);
setMoveKey( spep_4 + 142 -3, 1, -142.6, 89.5 , 0);
setMoveKey( spep_4 + 144 -3, 1, -135.2, 77.9 , 0);
setMoveKey( spep_4 + 146 -3, 1, -143.7, 90.2 , 0);
setMoveKey( spep_4 + 148 -3, 1, -144.3, 106.5 , 0);
setMoveKey( spep_4 + 150 -3, 1, -144.9, 90.9 , 0);

setScaleKey( spep_4 + 30 -3, 1, 4.36 *SA_4, 4.36 *SA_4);
setScaleKey( spep_4 + 32 -3, 1, 4.31 *SA_4, 4.31 *SA_4);
setScaleKey( spep_4 + 34 -3, 1, 4.21 *SA_4, 4.21 *SA_4);
setScaleKey( spep_4 + 36 -3, 1, 4.05 *SA_4, 4.05 *SA_4);
setScaleKey( spep_4 + 38 -3, 1, 3.83 *SA_4, 3.83 *SA_4);
setScaleKey( spep_4 + 40 -3, 1, 3.56 *SA_4, 3.56 *SA_4);
setScaleKey( spep_4 + 42 -3, 1, 3.23 *SA_4, 3.23 *SA_4);
setScaleKey( spep_4 + 44 -3, 1, 2.85 *SA_4, 2.85 *SA_4);
setScaleKey( spep_4 + 46 -3, 1, 2.42 *SA_4, 2.42 *SA_4);
setScaleKey( spep_4 + 49 -3, 1, 1.93 *SA_4, 1.93 *SA_4);
setScaleKey( spep_4 + 50 -3, 1, 2 *SA_4, 2 *SA_4); --impact
setScaleKey( spep_4 + 150 -3, 1, 2 *SA_4, 2 *SA_4);

setRotateKey( spep_4 + 30 -3, 1, -27.9);
setRotateKey( spep_4 + 44 -3, 1, -27.9);
setRotateKey( spep_4 + 46 -3, 1, -27.8);
setRotateKey( spep_4 + 49 -3, 1, -27.8);
setRotateKey( spep_4 + 50 -3, 1, -63.2); --impact
setRotateKey( spep_4 + 52 -3, 1, -55.2);
setRotateKey( spep_4 + 150 -3, 1, -55.2);


-- ** 音 ** --
SE016 = playSeVer2( spep_4 + 0, 49, "", 0, 0, 0, -1); --気弾溜め

SE017 = playSeVer2( spep_4 + 0, 1144, "", 0, 0, 0, 0.5); --気弾溜め
setSeVolumeByWorkId( spep_4 + 0, SE017, 82);
setTimeStretch( SE017, 1.11, 30, 4);

SE018 = playSeVer2( spep_4 + 0, 1037, "", 0, 0, 0, -1); --気弾溜め
setTimeStretch( SE018, 1.18, 30, 4);

SE019 = playSeVer2( spep_4 + 24 -3, 1027, "", 0, 0, 0, 0.7); --敵引き寄せ

SE020 = playSeVer2( spep_4 + 36 -3, 1017, "", 0, 0, 0, 0.8); --敵ヒット

SE021 = playSeVer2( spep_4 + 58 -3, 1282, "", spep_4 + 58 -3 +102, 0, 16, 0.5); --気弾溜め２
setSeVolumeByWorkId( spep_4 + 58 -3, SE021, 78);

SE022 = playSeVer2( spep_4 + 138 -3, 1023, "", 0, 0, 0, -1); --爆発

SE023 = playSeVer2( spep_4 + 138 -3, 1024, "", 0, 0, 0, -1); --爆発


-- ** 次の準備 ** --
spep_5 = spep_4 + 152 -4;

------------------------------------------------------
-- 爆発　フィニッシュ(128F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --爆発　フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 128 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, -1.0, 1.0);
setEffScaleKey( spep_5 + 128 -4, base5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 128 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 128 -5, base5, 255);
setEffAlphaKey( spep_5 + 128 -4, base5, 0);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0);
endPhase( spep_5 + 128 -4);


end
