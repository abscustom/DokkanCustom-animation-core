--1023390:超サイヤ人2トランクス(青年期)_バーニングアタック
--sp_effect_a1_00328

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
SP_01 = 158553;  --いくつもポーズ(ef_001)
SP_02 = 158554;  --いくつもポーズ：敵側反転(ef_002_r)
SP_03 = 158555;  --気弾を放つ(ef_002)
SP_04 = 158556;  --気弾を放つ_背面(ef_002_back)
SP_05 = 158557;  --気弾を放つ：敵側反転(ef_002_r)
SP_06 = 158558;  --気弾を放つ_背面：敵側反転(ef_002_r_back)
SP_07 = 158559;  --気弾が迫る(ef_003)
SP_08 = 158560;  --気弾が迫る_背景(ef_003_back)
SP_09 = 158561;  --気弾が迫る：敵側反転(ef_003_r)
SP_10 = 158562;  --気弾が迫る_背景：敵側反転(ef_003_r_back)
SP_11 = 158563;  --大爆発(ef_004)


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
-- いくつもポーズ(168F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --いくつもポーズ(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 168 -5, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 168 -5, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 168 -5, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 168 -5, base1, 255);
setEffAlphaKey( spep_0 + 168 -4, base1, 0);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168 -4, 0, 0, 0, 0, 175);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 160 -3, 0, 10, -1); --イナヅマ
setSeVolumeByWorkId( spep_0 + 0, SE001, 53);

SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1); --入り
setSeVolumeByWorkId( spep_0 + 0, SE002, 66);

SE003 = playSeVer2( spep_0 + 26 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 26 -3, SE003, 127);

-- SE004 = playSeVer2( spep_0 + 26 -3, 1235, "",spep_0 + 54 -3, 0, 10, -1); --腕高速回し
SE004 = playSeVer2( spep_0 + 26 -3, 1235, "",spep_0 + 56 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 26, SE004, 19);
setPitch( spep_0 + 26 -3, SE004, 1200);
setTimeStretch( SE004, 1.80, 30, 4);

SE005 = playSeVer2( spep_0 + 38 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 38 -3, SE005, 129);

-- SE006 = playSeVer2( spep_0 + 38 -3, 1235, "",spep_0 + 66 -3, 0, 10, -1); --腕高速回し
SE006 = playSeVer2( spep_0 + 38 -3, 1235, "",spep_0 + 68 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 38 -3, SE006, 17);
setPitch( spep_0 + 38 -3, SE006, 1200);
setTimeStretch( SE006, 1.80, 30, 4);

SE007 = playSeVer2( spep_0 + 50 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 50 -3, SE007, 146);

-- SE008 = playSeVer2( spep_0 + 50 -3, 1235, "",spep_0 + 76 -3, 0, 10, -1); --腕高速回し
SE008 = playSeVer2( spep_0 + 50 -3, 1235, "",spep_0 + 78 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 50 -3, SE008, 14);
setPitch( spep_0 + 50 -3, SE008, 1200);
setTimeStretch( SE008, 1.80, 30, 4);

SE009 = playSeVer2( spep_0 + 60 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 60 -3, SE009, 136);

-- SE010 = playSeVer2( spep_0 + 60 -3, 1235, "",spep_0 + 88 -3, 0, 10, -1); --腕高速回し
SE010 = playSeVer2( spep_0 + 60 -3, 1235, "",spep_0 + 90 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 60 -3, SE010, 15);
setPitch( spep_0 + 60 -3, SE010, 1200);
setTimeStretch( SE010, 1.80, 30, 4);

SE011 = playSeVer2( spep_0 + 70 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 70 -3, SE011, 138);

-- SE012 = playSeVer2( spep_0 + 70 -3, 1235, "",spep_0 + 98 -3, 0, 10, -1); --腕高速回し
SE012 = playSeVer2( spep_0 + 70 -3, 1235, "",spep_0 + 100 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 70 -3, SE012, 16);
setPitch( spep_0 + 70 -3, SE012, 1200);
setTimeStretch( SE012, 1.80, 30, 4);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
-- stopSe( SP_dodge - 0, SE013, 0);
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

spep_x = spep_0 + 80;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE013 = playSeVer2( spep_0 + 84 -3, 1018, "", 0, 0, 0, -1); --顔カットイン

SE014 = playSeVer2( spep_0 + 90 -3, 1037, "",spep_0 + 170 -3, 0, 4, -1); --気弾溜め

SE015 = playSeVer2( spep_0 + 90 -3, 1144, "",spep_0 + 170 -3, 0, 4, -1); --気弾溜め


-- ** 次の準備 ** --
spep_1 = spep_0 + 168 -4;

--------------------------------------
--カードカットイン(94F + 2)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_1 + 0, shuchusen, 0);
setEffRotateKey( spep_1 + 90, shuchusen, 0);
setEffAlphaKey( spep_1 + 0, shuchusen, 255);
setEffAlphaKey( spep_1 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_1 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94 +2;

------------------------------------------------------
-- 気弾を放つ(64F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0);  --気弾を放つ(ef_002)
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 64 -5, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 64 -5, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 64 -5, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 64 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 64 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0);  --気弾を放つ_背面(ef_002_back)
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 64 -5, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 64 -5, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 64 -5, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 64 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 64 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 64 -5, 1, 1);
changeAnime( spep_2 + 0, 1, 100);

setMoveKey( spep_2 + 0, 1, 178.5, 241.5 , 0);
setMoveKey( spep_2 + 64 -5, 1, 178.5, 241.5 , 0);

setScaleKey( spep_2 + 0, 1, 0.5, 0.5);
setScaleKey( spep_2 + 64 -5, 1, 0.5, 0.5);

setRotateKey( spep_2 + 0, 1, 0);
setRotateKey( spep_2 + 64 -5, 1, 0);


-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 34 -3, 10012, 30, 0x100, -1, 0, -100, 310);--ズオッ
setEffShake( spep_2 + 34 -3, ctzuo, 18, 30);

setEffMoveKey( spep_2 + 34 -3, ctzuo, -100, 280 , 0);
setEffMoveKey( spep_2 + 54 -3, ctzuo, -100, 280 , 0);
setEffMoveKey( spep_2 + 64 -5, ctzuo, -150, 320 , 0);

setEffScaleKey( spep_2 + 34 -3, ctzuo, 2.6, 2.6);
setEffScaleKey( spep_2 + 54 -3, ctzuo, 2.6, 2.6);
setEffScaleKey( spep_2 + 64 -5, ctzuo, 3.5, 3.5);

setEffAlphaKey( spep_2 + 34 -3, ctzuo, 255);
setEffAlphaKey( spep_2 + 54 -7, ctzuo, 255);
setEffAlphaKey( spep_2 + 64 -5, ctzuo, 0);

setEffRotateKey( spep_2 + 34 -3, ctzuo, 0);
setEffRotateKey( spep_2 + 64 -5, ctzuo, 0);

-- ** 音 ** --
SE017 = playSeVer2( spep_2 + 0, 49, "", 0, 0, 0, -1); --発射前気弾溜め

SE018 = playSeVer2( spep_2 + 0, 1179, "",spep_2 + 36, 0, 6, -1); --発射前気弾溜め

SE019 = playSeVer2( spep_2 + 0, 1154, "",spep_2 + 36, 0, 6, -1); --発射前気弾溜め

SE020 = playSeVer2( spep_2 + 32 -3, 1027, "", 0, 0, 0, 0.6); --気弾発射

SE021 = playSeVer2( spep_2 + 32 -3, 1022, "",spep_2 + 136, 0, 10, 0.6); --気弾発射

SE022 = playSeVer2( spep_2 + 34 -3, 1026, "", 0, 0, 0, -1); --気弾発射


-- ** 次の準備 ** --
spep_3 = spep_2 + 64 -4;

------------------------------------------------------
-- 気弾が迫る(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0);  --気弾が迫る(ef_003)
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -5, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 60 -5, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 60 -5, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 60 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 60 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0);  --気弾が迫る_背景(ef_003_back)
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -5, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 60 -5, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 60 -5, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 60 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 60 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1);
setDisp( spep_3 + 60 -5, 1, 0);
changeAnime( spep_3 + 0, 1, 104);
changeAnime( spep_3 + 60 -5, 1, 104);

-- setMoveKey( spep_3 + 0, 1, 257.1, 3 , 0);
setMoveKey( spep_3 + 2 -2, 1, 257, 3 , 0);
setMoveKey( spep_3 + 4 -3, 1, 256.8, 3 , 0);
setMoveKey( spep_3 + 6 -3, 1, 256.4, 2.8 , 0);
setMoveKey( spep_3 + 8 -3, 1, 255.9, 2.7 , 0);
setMoveKey( spep_3 + 10 -3, 1, 255.2, 2.5 , 0);
setMoveKey( spep_3 + 12 -3, 1, 254.4, 2.2 , 0);
setMoveKey( spep_3 + 14 -3, 1, 253.4, 2 , 0);
setMoveKey( spep_3 + 16 -3, 1, 252.2, 1.6 , 0);
setMoveKey( spep_3 + 18 -3, 1, 250.9, 1.2 , 0);
setMoveKey( spep_3 + 20 -3, 1, 249.5, 0.8 , 0);
setMoveKey( spep_3 + 22 -3, 1, 247.8, 0.3 , 0);
setMoveKey( spep_3 + 24 -3, 1, 246.1, -0.2 , 0);
setMoveKey( spep_3 + 26 -3, 1, 244.2, -0.7 , 0);
setMoveKey( spep_3 + 28 -3, 1, 242.1, -1.3 , 0);
setMoveKey( spep_3 + 30 -3, 1, 239.9, -2 , 0);
setMoveKey( spep_3 + 32 -3, 1, 237.5, -2.7 , 0);
setMoveKey( spep_3 + 34 -3, 1, 235, -3.4 , 0);
setMoveKey( spep_3 + 36 -3, 1, 232.3, -4.2 , 0);
setMoveKey( spep_3 + 38 -3, 1, 229.5, -5 , 0);
setMoveKey( spep_3 + 40 -3, 1, 226.5, -5.9 , 0);
setMoveKey( spep_3 + 42 -3, 1, 223.3, -6.8 , 0);
setMoveKey( spep_3 + 44 -3, 1, 220, -7.8 , 0);
setMoveKey( spep_3 + 46 -3, 1, 216.6, -8.8 , 0);
setMoveKey( spep_3 + 48 -3, 1, 213, -9.8 , 0);
setMoveKey( spep_3 + 50 -3, 1, 209.2, -10.9 , 0);
setMoveKey( spep_3 + 52 -3, 1, 205.3, -12.1 , 0);
setMoveKey( spep_3 + 54 -3, 1, 201.3, -13.3 , 0);
setMoveKey( spep_3 + 56 -3, 1, 197, -14.5 , 0);
setMoveKey( spep_3 + 58 -3, 1, 192.7, -15.8 , 0);
setMoveKey( spep_3 + 60 -5, 1, 192.7, -15.8 , 0);

setScaleKey( spep_3 + 0, 1, 0.68, 0.68);
setScaleKey( spep_3 + 6 -3, 1, 0.68, 0.68);
setScaleKey( spep_3 + 8 -3, 1, 0.69, 0.69);
setScaleKey( spep_3 + 10 -3, 1, 0.69, 0.69);
setScaleKey( spep_3 + 12 -3, 1, 0.7, 0.7);
setScaleKey( spep_3 + 14 -3, 1, 0.7, 0.7);
setScaleKey( spep_3 + 16 -3, 1, 0.71, 0.71);
setScaleKey( spep_3 + 18 -3, 1, 0.72, 0.72);
setScaleKey( spep_3 + 20 -3, 1, 0.73, 0.73);
setScaleKey( spep_3 + 22 -3, 1, 0.74, 0.74);
setScaleKey( spep_3 + 24 -3, 1, 0.75, 0.75);
setScaleKey( spep_3 + 26 -3, 1, 0.76, 0.76);
setScaleKey( spep_3 + 28 -3, 1, 0.78, 0.78);
setScaleKey( spep_3 + 30 -3, 1, 0.79, 0.79);
setScaleKey( spep_3 + 32 -3, 1, 0.8, 0.8);
setScaleKey( spep_3 + 34 -3, 1, 0.82, 0.82);
setScaleKey( spep_3 + 36 -3, 1, 0.84, 0.84);
setScaleKey( spep_3 + 38 -3, 1, 0.86, 0.86);
setScaleKey( spep_3 + 40 -3, 1, 0.87, 0.87);
setScaleKey( spep_3 + 42 -3, 1, 0.89, 0.89);
setScaleKey( spep_3 + 44 -3, 1, 0.92, 0.92);
setScaleKey( spep_3 + 46 -3, 1, 0.94, 0.94);
setScaleKey( spep_3 + 48 -3, 1, 0.96, 0.96);
setScaleKey( spep_3 + 50 -3, 1, 0.98, 0.98);
setScaleKey( spep_3 + 52 -3, 1, 1.01, 1.01);
setScaleKey( spep_3 + 54 -3, 1, 1.04, 1.04);
setScaleKey( spep_3 + 56 -3, 1, 1.06, 1.06);
setScaleKey( spep_3 + 58 -3, 1, 1.09, 1.09);
setScaleKey( spep_3 + 60 -5, 1, 1.09, 1.09);

setRotateKey( spep_3 + 0, 1, 0);
setRotateKey( spep_3 + 60 -5, 1, 0);


-- ** 音 ** --
SE023 = playSeVer2( spep_3 + 12 -3, 1021, "", 0, 0, 0, 0.5); --気弾迫る


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

------------------------------------------------------
-- 大爆発(148F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_11, 0x100, -1, 0, 0, 0);  --大爆発(ef_004)
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -5, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -5, base4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 148 -5, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 148 -5, base4, 255);
setEffAlphaKey( spep_4 + 148 -4, base4, 0);


-- ** 音 ** --
SE024 = playSeVer2( spep_4 + 8 -3, 1023, "", 0, 0, 0, -1); --爆発

SE025 = playSeVer2( spep_4 + 12 -3, 1024, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_4 + 12 -3, SE025, 73);

SE026 = playSeVer2( spep_4 + 16 -3, 1159, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_4 + 16 -3, SE026, 72);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 0);
endPhase( spep_4 + 148 -4);


else


-----------------------------------------
--敵側の攻撃
-----------------------------------------

spep_0 = 0;

------------------------------------------------------
-- いくつもポーズ(168F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0);  --いくつもポーズ(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 168 -5, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, -1.0, 1.0);
setEffScaleKey( spep_0 + 168 -5, base1, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 168 -5, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 168 -5, base1, 255);
setEffAlphaKey( spep_0 + 168 -4, base1, 0);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168 -4, 0, 0, 0, 0, 175);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 160 -3, 0, 10, -1); --イナヅマ
setSeVolumeByWorkId( spep_0 + 0, SE001, 53);

SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1); --入り
setSeVolumeByWorkId( spep_0 + 0, SE002, 66);

SE003 = playSeVer2( spep_0 + 26 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 26 -3, SE003, 127);

-- SE004 = playSeVer2( spep_0 + 26 -3, 1235, "",spep_0 + 54 -3, 0, 10, -1); --腕高速回し
SE004 = playSeVer2( spep_0 + 26 -3, 1235, "",spep_0 + 56 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 26, SE004, 19);
setPitch( spep_0 + 26 -3, SE004, 1200);
setTimeStretch( SE004, 1.80, 30, 4);

SE005 = playSeVer2( spep_0 + 38 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 38 -3, SE005, 129);

-- SE006 = playSeVer2( spep_0 + 38 -3, 1235, "",spep_0 + 66 -3, 0, 10, -1); --腕高速回し
SE006 = playSeVer2( spep_0 + 38 -3, 1235, "",spep_0 + 68 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 38 -3, SE006, 17);
setPitch( spep_0 + 38 -3, SE006, 1200);
setTimeStretch( SE006, 1.80, 30, 4);

SE007 = playSeVer2( spep_0 + 50 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 50 -3, SE007, 146);

-- SE008 = playSeVer2( spep_0 + 50 -3, 1235, "",spep_0 + 76 -3, 0, 10, -1); --腕高速回し
SE008 = playSeVer2( spep_0 + 50 -3, 1235, "",spep_0 + 78 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 50 -3, SE008, 14);
setPitch( spep_0 + 50 -3, SE008, 1200);
setTimeStretch( SE008, 1.80, 30, 4);

SE009 = playSeVer2( spep_0 + 60 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 60 -3, SE009, 136);

-- SE010 = playSeVer2( spep_0 + 60 -3, 1235, "",spep_0 + 88 -3, 0, 10, -1); --腕高速回し
SE010 = playSeVer2( spep_0 + 60 -3, 1235, "",spep_0 + 90 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 60 -3, SE010, 15);
setPitch( spep_0 + 60 -3, SE010, 1200);
setTimeStretch( SE010, 1.80, 30, 4);

SE011 = playSeVer2( spep_0 + 70 -3, 1189, "", 0, 0, 0, -1); --腕高速回し
setSeVolumeByWorkId( spep_0 + 70 -3, SE011, 138);

-- SE012 = playSeVer2( spep_0 + 70 -3, 1235, "",spep_0 + 98 -3, 0, 10, -1); --腕高速回し
SE012 = playSeVer2( spep_0 + 70 -3, 1235, "",spep_0 + 100 , 0, 10, 0.5); --腕高速回し
setSeVolumeByWorkId( spep_0 + 70 -3, SE012, 16);
setPitch( spep_0 + 70 -3, SE012, 1200);
setTimeStretch( SE012, 1.80, 30, 4);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
-- stopSe( SP_dodge - 0, SE013, 0);
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

spep_x = spep_0 + 80;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE013 = playSeVer2( spep_0 + 84 -3, 1018, "", 0, 0, 0, -1); --顔カットイン

SE014 = playSeVer2( spep_0 + 90 -3, 1037, "",spep_0 + 170 -3, 0, 4, -1); --気弾溜め

SE015 = playSeVer2( spep_0 + 90 -3, 1144, "",spep_0 + 170 -3, 0, 4, -1); --気弾溜め


-- ** 次の準備 ** --
spep_1 = spep_0 + 168 -4;

--------------------------------------
--カードカットイン(94F + 2)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_1 + 0, shuchusen, 0);
setEffRotateKey( spep_1 + 90, shuchusen, 0);
setEffAlphaKey( spep_1 + 0, shuchusen, 255);
setEffAlphaKey( spep_1 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_1 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94 +2;

------------------------------------------------------
-- 気弾を放つ(64F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0);  --気弾を放つ(ef_002)
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 64 -5, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, -1.0, 1.0);
setEffScaleKey( spep_2 + 64 -5, base2_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 64 -5, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 64 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 64 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0);  --気弾を放つ_背面(ef_002_back)
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 64 -5, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, -1.0, 1.0);
setEffScaleKey( spep_2 + 64 -5, base2_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 64 -5, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 64 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 64 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 64 -5, 1, 1);
changeAnime( spep_2 + 0, 1, 100);

setMoveKey( spep_2 + 0, 1, 178.5, 241.5 , 0);
setMoveKey( spep_2 + 64 -5, 1, 178.5, 241.5 , 0);

setScaleKey( spep_2 + 0, 1, 0.5, 0.5);
setScaleKey( spep_2 + 64 -5, 1, 0.5, 0.5);

setRotateKey( spep_2 + 0, 1, 0);
setRotateKey( spep_2 + 64 -5, 1, 0);


-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 34 -3, 10012, 30, 0x100, -1, 0, -100, 310);--ズオッ
setEffShake( spep_2 + 34 -3, ctzuo, 18, 30);

setEffMoveKey( spep_2 + 34 -3, ctzuo, -100, 280 , 0);
setEffMoveKey( spep_2 + 54 -3, ctzuo, -100, 280 , 0);
setEffMoveKey( spep_2 + 64 -5, ctzuo, -150, 320 , 0);

setEffScaleKey( spep_2 + 34 -3, ctzuo, 2.6, 2.6);
setEffScaleKey( spep_2 + 54 -3, ctzuo, 2.6, 2.6);
setEffScaleKey( spep_2 + 64 -5, ctzuo, 3.5, 3.5);

setEffAlphaKey( spep_2 + 34 -3, ctzuo, 255);
setEffAlphaKey( spep_2 + 54 -7, ctzuo, 255);
setEffAlphaKey( spep_2 + 64 -5, ctzuo, 0);

setEffRotateKey( spep_2 + 34 -3, ctzuo, 0);
setEffRotateKey( spep_2 + 64 -5, ctzuo, 0);

-- ** 音 ** --
SE017 = playSeVer2( spep_2 + 0, 49, "", 0, 0, 0, -1); --発射前気弾溜め

SE018 = playSeVer2( spep_2 + 0, 1179, "",spep_2 + 36, 0, 6, -1); --発射前気弾溜め

SE019 = playSeVer2( spep_2 + 0, 1154, "",spep_2 + 36, 0, 6, -1); --発射前気弾溜め

SE020 = playSeVer2( spep_2 + 32 -3, 1027, "", 0, 0, 0, 0.6); --気弾発射

SE021 = playSeVer2( spep_2 + 32 -3, 1022, "",spep_2 + 136, 0, 10, 0.6); --気弾発射

SE022 = playSeVer2( spep_2 + 34 -3, 1026, "", 0, 0, 0, -1); --気弾発射


-- ** 次の準備 ** --
spep_3 = spep_2 + 64 -4;

------------------------------------------------------
-- 気弾が迫る(60F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_09, 0x100, -1, 0, 0, 0);  --気弾が迫る(ef_003)
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -5, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, -1.0, 1.0);
setEffScaleKey( spep_3 + 60 -5, base3_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 60 -5, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 60 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 60 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_10, 0x80, -1, 0, 0, 0);  --気弾が迫る_背景(ef_003_back)
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -5, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, -1.0, 1.0);
setEffScaleKey( spep_3 + 60 -5, base3_b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 60 -5, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 60 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 60 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1);
setDisp( spep_3 + 60 -5, 1, 0);
changeAnime( spep_3 + 0, 1, 104);
changeAnime( spep_3 + 60 -5, 1, 104);

-- setMoveKey( spep_3 + 0, 1, 257.1, 3 , 0);
setMoveKey( spep_3 + 2 -2, 1, 257, 3 , 0);
setMoveKey( spep_3 + 4 -3, 1, 256.8, 3 , 0);
setMoveKey( spep_3 + 6 -3, 1, 256.4, 2.8 , 0);
setMoveKey( spep_3 + 8 -3, 1, 255.9, 2.7 , 0);
setMoveKey( spep_3 + 10 -3, 1, 255.2, 2.5 , 0);
setMoveKey( spep_3 + 12 -3, 1, 254.4, 2.2 , 0);
setMoveKey( spep_3 + 14 -3, 1, 253.4, 2 , 0);
setMoveKey( spep_3 + 16 -3, 1, 252.2, 1.6 , 0);
setMoveKey( spep_3 + 18 -3, 1, 250.9, 1.2 , 0);
setMoveKey( spep_3 + 20 -3, 1, 249.5, 0.8 , 0);
setMoveKey( spep_3 + 22 -3, 1, 247.8, 0.3 , 0);
setMoveKey( spep_3 + 24 -3, 1, 246.1, -0.2 , 0);
setMoveKey( spep_3 + 26 -3, 1, 244.2, -0.7 , 0);
setMoveKey( spep_3 + 28 -3, 1, 242.1, -1.3 , 0);
setMoveKey( spep_3 + 30 -3, 1, 239.9, -2 , 0);
setMoveKey( spep_3 + 32 -3, 1, 237.5, -2.7 , 0);
setMoveKey( spep_3 + 34 -3, 1, 235, -3.4 , 0);
setMoveKey( spep_3 + 36 -3, 1, 232.3, -4.2 , 0);
setMoveKey( spep_3 + 38 -3, 1, 229.5, -5 , 0);
setMoveKey( spep_3 + 40 -3, 1, 226.5, -5.9 , 0);
setMoveKey( spep_3 + 42 -3, 1, 223.3, -6.8 , 0);
setMoveKey( spep_3 + 44 -3, 1, 220, -7.8 , 0);
setMoveKey( spep_3 + 46 -3, 1, 216.6, -8.8 , 0);
setMoveKey( spep_3 + 48 -3, 1, 213, -9.8 , 0);
setMoveKey( spep_3 + 50 -3, 1, 209.2, -10.9 , 0);
setMoveKey( spep_3 + 52 -3, 1, 205.3, -12.1 , 0);
setMoveKey( spep_3 + 54 -3, 1, 201.3, -13.3 , 0);
setMoveKey( spep_3 + 56 -3, 1, 197, -14.5 , 0);
setMoveKey( spep_3 + 58 -3, 1, 192.7, -15.8 , 0);
setMoveKey( spep_3 + 60 -5, 1, 192.7, -15.8 , 0);

setScaleKey( spep_3 + 0, 1, 0.68, 0.68);
setScaleKey( spep_3 + 6 -3, 1, 0.68, 0.68);
setScaleKey( spep_3 + 8 -3, 1, 0.69, 0.69);
setScaleKey( spep_3 + 10 -3, 1, 0.69, 0.69);
setScaleKey( spep_3 + 12 -3, 1, 0.7, 0.7);
setScaleKey( spep_3 + 14 -3, 1, 0.7, 0.7);
setScaleKey( spep_3 + 16 -3, 1, 0.71, 0.71);
setScaleKey( spep_3 + 18 -3, 1, 0.72, 0.72);
setScaleKey( spep_3 + 20 -3, 1, 0.73, 0.73);
setScaleKey( spep_3 + 22 -3, 1, 0.74, 0.74);
setScaleKey( spep_3 + 24 -3, 1, 0.75, 0.75);
setScaleKey( spep_3 + 26 -3, 1, 0.76, 0.76);
setScaleKey( spep_3 + 28 -3, 1, 0.78, 0.78);
setScaleKey( spep_3 + 30 -3, 1, 0.79, 0.79);
setScaleKey( spep_3 + 32 -3, 1, 0.8, 0.8);
setScaleKey( spep_3 + 34 -3, 1, 0.82, 0.82);
setScaleKey( spep_3 + 36 -3, 1, 0.84, 0.84);
setScaleKey( spep_3 + 38 -3, 1, 0.86, 0.86);
setScaleKey( spep_3 + 40 -3, 1, 0.87, 0.87);
setScaleKey( spep_3 + 42 -3, 1, 0.89, 0.89);
setScaleKey( spep_3 + 44 -3, 1, 0.92, 0.92);
setScaleKey( spep_3 + 46 -3, 1, 0.94, 0.94);
setScaleKey( spep_3 + 48 -3, 1, 0.96, 0.96);
setScaleKey( spep_3 + 50 -3, 1, 0.98, 0.98);
setScaleKey( spep_3 + 52 -3, 1, 1.01, 1.01);
setScaleKey( spep_3 + 54 -3, 1, 1.04, 1.04);
setScaleKey( spep_3 + 56 -3, 1, 1.06, 1.06);
setScaleKey( spep_3 + 58 -3, 1, 1.09, 1.09);
setScaleKey( spep_3 + 60 -5, 1, 1.09, 1.09);

setRotateKey( spep_3 + 0, 1, 0);
setRotateKey( spep_3 + 60 -5, 1, 0);


-- ** 音 ** --
SE023 = playSeVer2( spep_3 + 12 -3, 1021, "", 0, 0, 0, 0.5); --気弾迫る


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

------------------------------------------------------
-- 大爆発(148F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_11, 0x100, -1, 0, 0, 0);  --大爆発(ef_004)
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -5, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -5, base4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 148 -5, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 148 -5, base4, 255);
setEffAlphaKey( spep_4 + 148 -4, base4, 0);


-- ** 音 ** --
SE024 = playSeVer2( spep_4 + 8 -3, 1023, "", 0, 0, 0, -1); --爆発

SE025 = playSeVer2( spep_4 + 12 -3, 1024, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_4 + 12 -3, SE025, 73);

SE026 = playSeVer2( spep_4 + 16 -3, 1159, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_4 + 16 -3, SE026, 72);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 0);
endPhase( spep_4 + 148 -4);

end
