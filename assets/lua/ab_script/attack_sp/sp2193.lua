--1021980:超サイヤ人3ベジータ(GT)_ギャリック砲
--sp_effect_a2_00159

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
SP_01 = 158454;  --ギャリック砲を構える(ef_001)反転不要
SP_02 = 158455;  --ギャリック砲を構えるアップ(ef_002)反転不要
SP_03 = 158456;  --ギャリック砲を放つ(ef_003)
SP_04 = 158457;  --ギャリック砲を放つ敵側(ef_003_r)
SP_05 = 158458;  --飛んでくる気弾_敵側より手前(ef_004_front)
SP_06 = 158459;  --飛んでくる気弾_敵側より奥(ef_004_back)
SP_07 = 158460;  --ギャリック砲を放つ(ef_005)


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
-- ギャリック砲を構える(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --ギャリック砲を構える(ef_001)反転不要
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 60 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 60 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 60 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 60 -5, base1, 255);
setEffAlphaKey( spep_0 + 60 -4, base1, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1); --オーラ

SE002 = playSeVer2( spep_0 + 6 -3, 1020, "", 0, 0, 0, 0.6); --気弾溜め

SE003 = playSeVer2( spep_0 + 24 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE004 = playSeVer2( spep_0 + 30 -3, 1072, "", 0, 0, 0, -1); --アップ

SE005 = playSeVer2( spep_0 + 36 -3, 1020, "", 0, 0, 0, 0.6); --気弾溜め

SE006 = playSeVer2( spep_0 + 48 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE007 = playSeVer2( spep_0 + 56 -3, 1144, "",spep_0 + 136 -3, 0, 6, 0.6); --アップ時気弾溜め


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0 );
stopSe( SP_dodge - 12, SE002, 0 );
stopSe( SP_dodge - 12, SE003, 0 );
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 0, SE006, 0 );
stopSe( SP_dodge - 0, SE007, 0 );
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0 + 60 -4;

------------------------------------------------------
-- ギャリック砲を構えるアップ(72F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0);  --ギャリック砲を構えるアップ(ef_002)反転不要
setEffMoveKey( spep_1 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_1 + 72 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_1 + 72 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2, 0);
setEffRotateKey( spep_1 + 72 -4, base2, 0);
setEffAlphaKey( spep_1 + 0, base2, 255);
setEffAlphaKey( spep_1 + 72 -5, base2, 255);
setEffAlphaKey( spep_1 + 72 -4, base2, 0);


spep_x = spep_1 + 8;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE008 = playSeVer2( spep_1 + 6 -3, 1020, "", 0, 0, 0, 0.61); --気弾溜め

SE009 = playSeVer2( spep_1 + 8 -3, 1018, "", 0, 0, 0, -1); --顔カットイン

SE010 = playSeVer2( spep_1 + 8 -3, 1147, "",spep_1 + 86 -3, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 8 -3, SE010, 60  );

SE011 = playSeVer2( spep_1 + 12 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE012 = playSeVer2( spep_1 + 36 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE013 = playSeVer2( spep_1 + 36 -3, 1020, "", 0, 0, 0, 0.6); --気弾溜め

SE014 = playSeVer2( spep_1 + 60 -3, 1036, "", 0, 0, 0, -1); --オーラ


-- ** 次の準備 ** --
spep_2 = spep_1 + 72 -4;

--------------------------------------
--カードカットイン(94F + 2)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_2 + 0, shuchusen, 0);
setEffRotateKey( spep_2 + 90, shuchusen, 0);
setEffAlphaKey( spep_2 + 0, shuchusen, 255);
setEffAlphaKey( spep_2 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_2 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_3 = spep_2 + 94 +2;

------------------------------------------------------
-- ギャリック砲を放つ(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0);  --ギャリック砲を放つ(ef_003)
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_3 + 60 -4, base3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 60 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 60 -5, base3, 255);
setEffAlphaKey( spep_3 + 60 -4, base3, 0);


-- ** 音 ** --
SE016 = playSeVer2( spep_3 + 0, 1027, "", 0, 0, 0, -1); --気弾発射
setSeVolumeByWorkId( spep_3 + 0, SE016, 78  );

SE017 = playSeVer2( spep_3 + 0, 1146, "", 0, 0, 0, 0.5); --気弾発射


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

------------------------------------------------------
-- 飛んでくる気弾(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffectLife( spep_4 + 0, SP_05, 60 -4, 0x100, -1, 0, 0, 0);  --飛んでくる気弾_敵側より手前(ef_004_front)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 60 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 60 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 60 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0);  --飛んでくる気弾_敵側より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 60 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 60 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 60 -4, base4_b, 0);



-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 60 -4, 1, 0 );
changeAnime( spep_4 + 0, 1, 102 );

-- setMoveKey( spep_4 + 0 -3, 1, 197.8, -183.1 , 0 );
setMoveKey( spep_4 + 2 -2, 1, 196.7, -173.5 , 0 );
setMoveKey( spep_4 + 4 -3, 1, 195.4, -191.6 , 0 );
setMoveKey( spep_4 + 6 -3, 1, 194.3, -177.3 , 0 );
setMoveKey( spep_4 + 8 -3, 1, 188.4, -181.5 , 0 );
setMoveKey( spep_4 + 10 -3, 1, 192, -181.1 , 0 );
setMoveKey( spep_4 + 12 -3, 1, 190.8, -176.1 , 0 );
setMoveKey( spep_4 + 14 -3, 1, 189.6, -184.9 , 0 );
setMoveKey( spep_4 + 16 -3, 1, 183.7, -179.9 , 0 );
setMoveKey( spep_4 + 18 -3, 1, 191.9, -179.5 , 0 );
setMoveKey( spep_4 + 20 -3, 1, 186, -169.8 , 0 );
setMoveKey( spep_4 + 22 -3, 1, 184.8, -192.5 , 0 );
setMoveKey( spep_4 + 24 -3, 1, 174.2, -178.2 , 0 );
setMoveKey( spep_4 + 26 -3, 1, 191.6, -177.9 , 0 );
setMoveKey( spep_4 + 28 -3, 1, 181.1, -168.2 , 0 );
setMoveKey( spep_4 + 30 -3, 1, 179.9, -172.4 , 0 );
setMoveKey( spep_4 + 32 -3, 1, 171.5, -124.7 , 0 );
setMoveKey( spep_4 + 34 -3, 1, 168.7, -216 , 0 );
setMoveKey( spep_4 + 36 -3, 1, 117.8, -166.8 , 0 );
setMoveKey( spep_4 + 38 -3, 1, 206.4, -164.1 , 0 );
setMoveKey( spep_4 + 40 -3, 1, 155.5, -128.7 , 0 );
setMoveKey( spep_4 + 42 -3, 1, 150.9, -191.1 , 0 );
setMoveKey( spep_4 + 44 -3, 1, 123.2, -155.7 , 0 );
setMoveKey( spep_4 + 46 -3, 1, 165, -153 , 0 );
setMoveKey( spep_4 + 48 -3, 1, 153.8, -120.3 , 0 );
setMoveKey( spep_4 + 50 -3, 1, 142.5, -166.6 , 0 );
setMoveKey( spep_4 + 52 -3, 1, 121.7, -138.5 , 0 );
setMoveKey( spep_4 + 54 -3, 1, 119.5, -133.7 , 0 );
setMoveKey( spep_4 + 56 -3, 1, 107.9, -128.8 , 0 );
setMoveKey( spep_4 + 58 -3, 1, 96.2, -123.8 , 0 );
setMoveKey( spep_4 + 60 -4, 1, 96.2, -123.8 , 0 );

-- setScaleKey( spep_4 + 0 -3, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 2 -2, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 4 -3, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 6 -3, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 8 -3, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 10 -3, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 12 -3, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14 -3, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 16 -3, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 18 -3, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 20 -3, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 22 -3, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 24 -3, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 26 -3, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 28 -3, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 30 -3, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 32 -3, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 34 -3, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 36 -3, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 38 -3, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 40 -3, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 42 -3, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 44 -3, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 46 -3, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 48 -3, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 50 -3, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 52 -3, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 54 -3, 1, 2.36, 2.36 );
setScaleKey( spep_4 + 56 -3, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 58 -3, 1, 2.53, 2.53 );
setScaleKey( spep_4 + 60 -4, 1, 2.53, 2.53 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 60 -4, 1, 0 );


-- ** 音 ** --
SE018 = playSeVer2( spep_4 + 2 -2, 1021, "", 0, 0, 0, 0.6); --気弾迫る

SE019 = playSeVer2( spep_4 + 56 -3, 1159, "", 0, 0, 0, -1); --爆発予兆

SE020 = playSeVer2( spep_4 + 56 -3, 1023, "", 0, 0, 0, -1); --爆発予兆


spep_5 = spep_4 + 60 -4;

------------------------------------------------------
-- ギャリック砲を放つ(140F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0); --ギャリック砲を放つ(ef_005)
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 140 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 140 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 140 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 140 -5, base5, 255);
setEffAlphaKey( spep_5 + 140 -4, base5, 0);


-- ** 音 ** --
SE021 = playSeVer2( spep_5 + 76 -3, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0);
endPhase( spep_5 + 140 -4);


else


-----------------------------------------
--敵側の攻撃
-----------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ギャリック砲を構える(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --ギャリック砲を構える(ef_001)反転不要
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 60 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 60 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 60 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 60 -5, base1, 255);
setEffAlphaKey( spep_0 + 60 -4, base1, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1); --オーラ

SE002 = playSeVer2( spep_0 + 6 -3, 1020, "", 0, 0, 0, 0.6); --気弾溜め

SE003 = playSeVer2( spep_0 + 24 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE004 = playSeVer2( spep_0 + 30 -3, 1072, "", 0, 0, 0, -1); --アップ

SE005 = playSeVer2( spep_0 + 36 -3, 1020, "", 0, 0, 0, 0.6); --気弾溜め

SE006 = playSeVer2( spep_0 + 48 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE007 = playSeVer2( spep_0 + 56 -3, 1144, "",spep_0 + 136 -3, 0, 6, 0.6); --アップ時気弾溜め


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0 );
stopSe( SP_dodge - 12, SE002, 0 );
stopSe( SP_dodge - 12, SE003, 0 );
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 0, SE006, 0 );
stopSe( SP_dodge - 0, SE007, 0 );
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0 + 60 -4;

------------------------------------------------------
-- ギャリック砲を構えるアップ(72F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0);  --ギャリック砲を構えるアップ(ef_002)反転不要
setEffMoveKey( spep_1 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_1 + 72 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_1 + 72 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2, 0);
setEffRotateKey( spep_1 + 72 -4, base2, 0);
setEffAlphaKey( spep_1 + 0, base2, 255);
setEffAlphaKey( spep_1 + 72 -5, base2, 255);
setEffAlphaKey( spep_1 + 72 -4, base2, 0);


spep_x = spep_1 + 8;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE008 = playSeVer2( spep_1 + 6 -3, 1020, "", 0, 0, 0, 0.61); --気弾溜め

SE009 = playSeVer2( spep_1 + 8 -3, 1018, "", 0, 0, 0, -1); --顔カットイン

SE010 = playSeVer2( spep_1 + 8 -3, 1147, "",spep_1 + 86 -3, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 8 -3, SE010, 60  );

SE011 = playSeVer2( spep_1 + 12 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE012 = playSeVer2( spep_1 + 36 -3, 1036, "", 0, 0, 0, -1); --オーラ

SE013 = playSeVer2( spep_1 + 36 -3, 1020, "", 0, 0, 0, 0.6); --気弾溜め

SE014 = playSeVer2( spep_1 + 60 -3, 1036, "", 0, 0, 0, -1); --オーラ


-- ** 次の準備 ** --
spep_2 = spep_1 + 72 -4;

--------------------------------------
--カードカットイン(94F + 2)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_2 + 0, shuchusen, 0);
setEffRotateKey( spep_2 + 90, shuchusen, 0);
setEffAlphaKey( spep_2 + 0, shuchusen, 255);
setEffAlphaKey( spep_2 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_2 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_3 = spep_2 + 94 +2;

------------------------------------------------------
-- ギャリック砲を放つ(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0);  --ギャリック砲を放つ(ef_003)
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_3 + 60 -4, base3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 60 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 60 -5, base3, 255);
setEffAlphaKey( spep_3 + 60 -4, base3, 0);


-- ** 音 ** --
SE016 = playSeVer2( spep_3 + 0, 1027, "", 0, 0, 0, -1); --気弾発射
setSeVolumeByWorkId( spep_3 + 0, SE016, 78  );

SE017 = playSeVer2( spep_3 + 0, 1146, "", 0, 0, 0, 0.5); --気弾発射


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

------------------------------------------------------
-- 飛んでくる気弾(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffectLife( spep_4 + 0, SP_05, 60 -4, 0x100, -1, 0, 0, 0);  --飛んでくる気弾_敵側より手前(ef_004_front)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 60 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 60 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 60 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0);  --飛んでくる気弾_敵側より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 60 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 60 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 60 -4, base4_b, 0);



-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 60 -4, 1, 0 );
changeAnime( spep_4 + 0, 1, 102 );

-- setMoveKey( spep_4 + 0 -3, 1, 197.8, -183.1 , 0 );
setMoveKey( spep_4 + 2 -2, 1, 196.7, -173.5 , 0 );
setMoveKey( spep_4 + 4 -3, 1, 195.4, -191.6 , 0 );
setMoveKey( spep_4 + 6 -3, 1, 194.3, -177.3 , 0 );
setMoveKey( spep_4 + 8 -3, 1, 188.4, -181.5 , 0 );
setMoveKey( spep_4 + 10 -3, 1, 192, -181.1 , 0 );
setMoveKey( spep_4 + 12 -3, 1, 190.8, -176.1 , 0 );
setMoveKey( spep_4 + 14 -3, 1, 189.6, -184.9 , 0 );
setMoveKey( spep_4 + 16 -3, 1, 183.7, -179.9 , 0 );
setMoveKey( spep_4 + 18 -3, 1, 191.9, -179.5 , 0 );
setMoveKey( spep_4 + 20 -3, 1, 186, -169.8 , 0 );
setMoveKey( spep_4 + 22 -3, 1, 184.8, -192.5 , 0 );
setMoveKey( spep_4 + 24 -3, 1, 174.2, -178.2 , 0 );
setMoveKey( spep_4 + 26 -3, 1, 191.6, -177.9 , 0 );
setMoveKey( spep_4 + 28 -3, 1, 181.1, -168.2 , 0 );
setMoveKey( spep_4 + 30 -3, 1, 179.9, -172.4 , 0 );
setMoveKey( spep_4 + 32 -3, 1, 171.5, -124.7 , 0 );
setMoveKey( spep_4 + 34 -3, 1, 168.7, -216 , 0 );
setMoveKey( spep_4 + 36 -3, 1, 117.8, -166.8 , 0 );
setMoveKey( spep_4 + 38 -3, 1, 206.4, -164.1 , 0 );
setMoveKey( spep_4 + 40 -3, 1, 155.5, -128.7 , 0 );
setMoveKey( spep_4 + 42 -3, 1, 150.9, -191.1 , 0 );
setMoveKey( spep_4 + 44 -3, 1, 123.2, -155.7 , 0 );
setMoveKey( spep_4 + 46 -3, 1, 165, -153 , 0 );
setMoveKey( spep_4 + 48 -3, 1, 153.8, -120.3 , 0 );
setMoveKey( spep_4 + 50 -3, 1, 142.5, -166.6 , 0 );
setMoveKey( spep_4 + 52 -3, 1, 121.7, -138.5 , 0 );
setMoveKey( spep_4 + 54 -3, 1, 119.5, -133.7 , 0 );
setMoveKey( spep_4 + 56 -3, 1, 107.9, -128.8 , 0 );
setMoveKey( spep_4 + 58 -3, 1, 96.2, -123.8 , 0 );
setMoveKey( spep_4 + 60 -4, 1, 96.2, -123.8 , 0 );

-- setScaleKey( spep_4 + 0 -3, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 2 -2, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 4 -3, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 6 -3, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 8 -3, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 10 -3, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 12 -3, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14 -3, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 16 -3, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 18 -3, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 20 -3, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 22 -3, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 24 -3, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 26 -3, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 28 -3, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 30 -3, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 32 -3, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 34 -3, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 36 -3, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 38 -3, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 40 -3, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 42 -3, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 44 -3, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 46 -3, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 48 -3, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 50 -3, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 52 -3, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 54 -3, 1, 2.36, 2.36 );
setScaleKey( spep_4 + 56 -3, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 58 -3, 1, 2.53, 2.53 );
setScaleKey( spep_4 + 60 -4, 1, 2.53, 2.53 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 60 -4, 1, 0 );


-- ** 音 ** --
SE018 = playSeVer2( spep_4 + 2 -2, 1021, "", 0, 0, 0, 0.6); --気弾迫る

SE019 = playSeVer2( spep_4 + 56 -3, 1159, "", 0, 0, 0, -1); --爆発予兆

SE020 = playSeVer2( spep_4 + 56 -3, 1023, "", 0, 0, 0, -1); --爆発予兆


spep_5 = spep_4 + 60 -4;

------------------------------------------------------
-- ギャリック砲を放つ(140F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0); --ギャリック砲を放つ(ef_005)
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 140 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 140 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 140 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 140 -5, base5, 255);
setEffAlphaKey( spep_5 + 140 -4, base5, 0);


-- ** 音 ** --
SE021 = playSeVer2( spep_5 + 76 -3, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0);
endPhase( spep_5 + 140 -4);

end
