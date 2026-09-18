--1023260:パン(ゼノ)_乙女ストライク
--sp_effect_b1_00173
--sp2295

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

--エフェクト
SP_01 = 158633; --カットイン・画面側指さし ef_001 60
SP_02 = 158634; --カットイン・画面側指さし　敵側 ef_001_r 60 敵側そのまま反転
SP_03 = 158635; --構え～体当たり ef_002 50 (ef_002とef_002_back同時再生）
SP_04 = 158636; --構え～体当たり ef_002_back 50 (ef_002とef_002_back同時再生）
SP_05 = 158637; --構え～体当たり　敵側 ef_002_r 50 敵側そのまま反転(ef_002_rとef_002_r_back同時再生）
SP_06 = 158638; --構え～体当たり　敵側 ef_002_r_back 50 敵側そのまま反転(ef_002_rとef_002_r_back同時再生）
SP_07 = 158639; --ポカポカ殴る ef_003 65 (ef_003とef_003_back同時再生）
SP_08 = 158640; --ポカポカ殴る ef_003_back 65 (ef_003とef_003_back同時再生）
SP_09 = 158641; --ポカポカ殴る　敵側 ef_003_r 65 敵側そのまま反転(ef_003_rとef_003_r_back同時再生）
SP_10 = 158642; --ポカポカ殴る　敵側 ef_003_r_back 65 敵側そのまま反転(ef_003_rとef_003_r_back同時再生）
SP_11 = 158643; --蹴り飛ばし ef_004 50 (ef_004とef_004_back同時再生）
SP_12 = 158644; --蹴り飛ばし ef_004_back 50 (ef_004とef_004_back同時再生）
SP_13 = 158645; --蹴り飛ばし　敵側 ef_004_r 50 敵側そのまま反転(ef_004_rとef_004_r_back同時再生）
SP_14 = 158646; --蹴り飛ばし　敵側 ef_004_r_back 50 敵側そのまま反転(ef_004_rとef_004_r_back同時再生）
SP_15 = 158647; --吹っ飛ぶ敵～フィニッシュ ef_005 68
SP_16 = 158648; --吹っ飛ぶ敵～フィニッシュ　敵側 ef_005_r 68 敵側そのまま反転


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 110);
end

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
-- カットイン・画面側指さし(120F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --カットイン・画面側指さし(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 120 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 120 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 120 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 120 -5, base1, 255);
setEffAlphaKey( spep_0 + 120 -4, base1, 0);


spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1); --顔カットイン

SE002 = playSeVer2( spep_0 + 22 -3, 1003, "", 0, 0, 0, -1); --指差す
setSeVolumeByWorkId( spep_0 + 22 -3, SE002, 116);

SE003 = playSeVer2( spep_0 + 22 -3, 20, "", 0, 0, 0, 0.6); --指差す
setBandpassFilter ( spep_0 + 22 -3, SE003, 170, 24000);

SE004 = playSeVer2( spep_0 + 22 -3, 1115, "",spep_0 + 116 -3, 0, 46, 0.6); --指差す


-- ** 次の準備 ** --
spep_1 = spep_0 + 120 -4;

------------------------------------------------------
-- 構え～体当たり(100F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0);  --構え～体当たり(ef_002)
setEffMoveKey( spep_1 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_f, 0);
setEffRotateKey( spep_1 + 100 -4, base2_f, 0);
setEffAlphaKey( spep_1 + 0, base2_f, 255);
setEffAlphaKey( spep_1 + 100 -5, base2_f, 255);
setEffAlphaKey( spep_1 + 100 -4, base2_f, 0);

base2_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0);  --構え～体当たり(ef_002_back)
setEffMoveKey( spep_1 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_b, 0);
setEffRotateKey( spep_1 + 100 -4, base2_b, 0);
setEffAlphaKey( spep_1 + 0, base2_b, 255);
setEffAlphaKey( spep_1 + 100 -5, base2_b, 255);
setEffAlphaKey( spep_1 + 100 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1 + 100 -4, 1, 0);

changeAnime( spep_1 + 0, 1, 100);

-- setMoveKey( spep_1 + 0, 1, 404.4, 216.4 , 0);
setMoveKey( spep_1 + 2 -2, 1, 375.2, 220.4 , 0);
setMoveKey( spep_1 + 4 -3, 1, 346, 224.4 , 0);
setMoveKey( spep_1 + 6 -3, 1, 316.8, 228.3 , 0);
setMoveKey( spep_1 + 8 -3, 1, 287.7, 232.3 , 0);
setMoveKey( spep_1 + 10 -3, 1, 258.5, 236.3 , 0);
setMoveKey( spep_1 + 12 -3, 1, 260, 238.1 , 0);
setMoveKey( spep_1 + 14 -3, 1, 261.5, 239.9 , 0);
setMoveKey( spep_1 + 16 -3, 1, 263.1, 241.8 , 0);
setMoveKey( spep_1 + 18 -3, 1, 264.6, 243.6 , 0);
setMoveKey( spep_1 + 20 -3, 1, 266.1, 245.4 , 0);
setMoveKey( spep_1 + 22 -3, 1, 267.7, 247.3 , 0);
setMoveKey( spep_1 + 24 -3, 1, 269.2, 249.1 , 0);
setMoveKey( spep_1 + 26 -3, 1, 270.7, 250.9 , 0);
setMoveKey( spep_1 + 28 -3, 1, 272.2, 252.7 , 0);
setMoveKey( spep_1 + 30 -3, 1, 273.8, 254.6 , 0);
setMoveKey( spep_1 + 32 -3, 1, 275.3, 256.4 , 0);
setMoveKey( spep_1 + 34 -3, 1, 276.8, 258.2 , 0);
setMoveKey( spep_1 + 36 -3, 1, 278.3, 260 , 0);
setMoveKey( spep_1 + 38 -3, 1, 279.9, 261.9 , 0);
setMoveKey( spep_1 + 40 -3, 1, 232.9, 234.2 , 0);
setMoveKey( spep_1 + 42 -3, 1, 185.8, 206.6 , 0);
setMoveKey( spep_1 + 44 -3, 1, 138.8, 178.9 , 0);
setMoveKey( spep_1 + 46 -3, 1, 91.7, 151.3 , 0);
setMoveKey( spep_1 + 48 -3, 1, 44.7, 123.7 , 0);
setMoveKey( spep_1 + 50 -3, 1, 62.3, 114.6 , 0);
setMoveKey( spep_1 + 52 -3, 1, 79.9, 105.5 , 0);


-- setScaleKey( spep_1 + 0, 1, 1.49, 1.49);
setScaleKey( spep_1 + 2 -2, 1, 1.43, 1.43);
setScaleKey( spep_1 + 4 -3, 1, 1.37, 1.37);
setScaleKey( spep_1 + 6 -3, 1, 1.31, 1.31);
setScaleKey( spep_1 + 8 -3, 1, 1.26, 1.26);
setScaleKey( spep_1 + 10 -3, 1, 1.22, 1.22);
setScaleKey( spep_1 + 12 -3, 1, 1.16, 1.16);
setScaleKey( spep_1 + 14 -3, 1, 1.11, 1.11);
setScaleKey( spep_1 + 16 -3, 1, 1.07, 1.07);
setScaleKey( spep_1 + 18 -3, 1, 1.03, 1.03);
setScaleKey( spep_1 + 20 -3, 1, 1, 1);
setScaleKey( spep_1 + 22 -3, 1, 0.98, 0.98);
setScaleKey( spep_1 + 24 -3, 1, 0.96, 0.96);
setScaleKey( spep_1 + 32 -3, 1, 0.96, 0.96);
setScaleKey( spep_1 + 34 -3, 1, 0.97, 0.97);
setScaleKey( spep_1 + 36 -3, 1, 0.97, 0.97);
setScaleKey( spep_1 + 38 -3, 1, 0.98, 0.98);
setScaleKey( spep_1 + 40 -3, 1, 0.99 *1.00, 0.99 *1.00);
setScaleKey( spep_1 + 42 -3, 1, 1.01 *0.99, 1.01 *0.99);
setScaleKey( spep_1 + 44 -3, 1, 1.03 *0.98, 1.03 *0.98);
setScaleKey( spep_1 + 46 -3, 1, 1.05 *0.97, 1.05 *0.97);
setScaleKey( spep_1 + 48 -3, 1, 1.07 *0.96, 1.07 *0.96);
setScaleKey( spep_1 + 50 -3, 1, 1.43 *0.95, 1.43 *0.95);
setScaleKey( spep_1 + 52 -3, 1, 1.83 *0.94, 1.83 *0.94);

setRotateKey( spep_1 + 0, 1, 0);
setRotateKey( spep_1 + 52 -3, 1, 0);


-- ** 音 ** --
SE005 = playSeVer2( spep_1 + 0, 49, "", 0, 0, 0, 0.6); --溜め
setTimeStretch( SE005, 1.44, 30, 4);

SE006 = playSeVer2( spep_1 + 0, 17, "",spep_1 + 54 -3, 0, 20, 0.6); --溜め
setSeVolumeByWorkId( spep_1 + 0, SE006, 77);

SE007 = playSeVer2( spep_1 + 0, 1033, "", 0, 0, 0, -1); --溜め
setSeVolumeByWorkId( spep_1 + 0, SE007, 89);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50;

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


-- ** 敵キャラクター ** --
changeAnime( spep_1 + 60 -3, 1, 108);

setMoveKey( spep_1 + 54 -3, 1, 97.5, 96.4 , 0);
setMoveKey( spep_1 + 56 -3, 1, 96.3, 94.2 , 0);
setMoveKey( spep_1 + 59 -3, 1, 95, 91.8 , 0);
setMoveKey( spep_1 + 60 -3, 1, 138.6, 135.2 , 0);
setMoveKey( spep_1 + 62 -3, 1, 136.7, 80.1 , 0);
setMoveKey( spep_1 + 64 -3, 1, 125.9, 157.4 , 0);
setMoveKey( spep_1 + 66 -3, 1, 192.3, 151.2 , 0);
setMoveKey( spep_1 + 68 -3, 1, 169.1, 133.8 , 0);
setMoveKey( spep_1 + 70 -3, 1, 186.8, 162.5 , 0);
setMoveKey( spep_1 + 72 -3, 1, 168.2, 97.5 , 0);
setMoveKey( spep_1 + 74 -3, 1, 167.4, 128.7 , 0);
setMoveKey( spep_1 + 76 -3, 1, 166.7, 126.8 , 0);
setMoveKey( spep_1 + 78 -3, 1, 165.8, 124.8 , 0);
setMoveKey( spep_1 + 80 -3, 1, 164.8, 122.7 , 0);
setMoveKey( spep_1 + 82 -3, 1, 163.7, 120.5 , 0);
setMoveKey( spep_1 + 84 -3, 1, 162.4, 118.3 , 0);
setMoveKey( spep_1 + 86 -3, 1, 161, 116 , 0);
setMoveKey( spep_1 + 88 -3, 1, 159.5, 113.6 , 0);
setMoveKey( spep_1 + 90 -3, 1, 158, 111.1 , 0);
setMoveKey( spep_1 + 92 -3, 1, 156.3, 108.6 , 0);
setMoveKey( spep_1 + 94 -3, 1, 154.5, 106 , 0);
setMoveKey( spep_1 + 96 -3, 1, 152.6, 103.3 , 0);
setMoveKey( spep_1 + 98 -3, 1, 150.6, 100.9 , 0);

setScaleKey( spep_1 + 54 -3, 1, 2.28 *0.93, 2.28 *0.93);
setScaleKey( spep_1 + 56 -3, 1, 2.56 *0.92, 2.56 *0.92);
setScaleKey( spep_1 + 59 -3, 1, 2.85 *0.91, 2.85 *0.91);
setScaleKey( spep_1 + 60 -3, 1, 3.06 *0.90, 3.06 *0.90);
setScaleKey( spep_1 + 62 -3, 1, 3.00 *0.90, 3.00 *0.90);
setScaleKey( spep_1 + 64 -3, 1, 2.95 *0.90, 2.95 *0.90);
setScaleKey( spep_1 + 66 -3, 1, 2.90 *0.90, 2.90 *0.90);
setScaleKey( spep_1 + 68 -3, 1, 2.86 *0.90, 2.86 *0.90);
setScaleKey( spep_1 + 70 -3, 1, 2.83 *0.90, 2.83 *0.90);
setScaleKey( spep_1 + 72 -3, 1, 2.81 *0.90, 2.81 *0.90);
setScaleKey( spep_1 + 74 -3, 1, 2.78 *0.90, 2.78 *0.90);
setScaleKey( spep_1 + 76 -3, 1, 2.75 *0.90, 2.75 *0.90);
setScaleKey( spep_1 + 78 -3, 1, 2.73 *0.90, 2.73 *0.90);
setScaleKey( spep_1 + 80 -3, 1, 2.70 *0.90, 2.70 *0.90);
setScaleKey( spep_1 + 82 -3, 1, 2.68 *0.90, 2.68 *0.90);
setScaleKey( spep_1 + 84 -3, 1, 2.65 *0.90, 2.65 *0.90);
setScaleKey( spep_1 + 86 -3, 1, 2.62 *0.90, 2.62 *0.90);
setScaleKey( spep_1 + 88 -3, 1, 2.60 *0.90, 2.60 *0.90);
setScaleKey( spep_1 + 90 -3, 1, 2.57 *0.90, 2.57 *0.90);
setScaleKey( spep_1 + 92 -3, 1, 2.55 *0.90, 2.55 *0.90);
setScaleKey( spep_1 + 94 -3, 1, 2.52 *0.90, 2.52 *0.90);
setScaleKey( spep_1 + 96 -3, 1, 2.50 *0.90, 2.50 *0.90);
setScaleKey( spep_1 + 98 -3, 1, 2.48 *0.90, 2.48 *0.90);

setRotateKey( spep_1 + 100 -5, 1, 0);


-- ** 音 ** --
SE008 = playSeVer2( spep_1 + 42 -3, 1277, "",spep_1 + 64 -3, 0, 12, 0.5); --パンチ

SE009 = playSeVer2( spep_1 + 44 -3, 1182, "",spep_1 + 68 -3, 0, 14, -1); --パンチ

SE010 = playSeVer2( spep_1 + 44 -3, 1189, "", 0, 0, 0, -1); --パンチ

SE011 = playSeVer2( spep_1 + 54 -3, 1120, "", 0, 0, 0, -1); --パンチ
setSeVolumeByWorkId( spep_1 + 54 -3, SE011, 89);
setPitch( spep_1 + 54 -3, SE011, -100);
setTimeStretch( SE011, 0.93, 30, 4);


-- ** 次の準備 ** --
spep_2 = spep_1 + 100 -6;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speff2, 1, 1);
--setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
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
-- playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- ポカポカ殴る(130F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0);  --ポカポカ殴る(ef_003)
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 130 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 130 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 130 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 130 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 130 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0);  --ポカポカ殴る(ef_003_back)
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 130 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 130 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 130 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 130 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 130 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1);
setDisp( spep_3 + 130 -4, 1, 0);

changeAnime( spep_3 + 0, 1, 106);
changeAnime( spep_3 + 20 -3, 1, 108);

-- setMoveKey( spep_3 + 0, 1, 63.1, -212.2 , 0);
setMoveKey( spep_3 + 2 -2, 1, 65.1, -155.4 , 0);
setMoveKey( spep_3 + 4 -3, 1, 67.1, -98.7 , 0);
setMoveKey( spep_3 + 6 -3, 1, 69.1, -41.9 , 0);
setMoveKey( spep_3 + 8 -3, 1, 71.1, 14.8 , 0);
setMoveKey( spep_3 + 10 -3, 1, 77.6, 6.2 , 0);
setMoveKey( spep_3 + 12 -3, 1, 84.3, -2.5 , 0);
setMoveKey( spep_3 + 14 -3, 1, 90.8, -11.1 , 0);
setMoveKey( spep_3 + 16 -3, 1, 97.3, -19.7 , 0);
setMoveKey( spep_3 + 19 -3, 1, 103.9, -28.4 , 0);
setMoveKey( spep_3 + 20 -3, 1, 82.6, -104.8 , 0);
setMoveKey( spep_3 + 22 -3, 1, 87.9, -116.6 , 0);
setMoveKey( spep_3 + 24 -3, 1, 89.5, -118.7 , 0);
setMoveKey( spep_3 + 26 -3, 1, 91.2, -120.8 , 0);
setMoveKey( spep_3 + 28 -3, 1, 66.7, -151.5 , 0);
setMoveKey( spep_3 + 30 -3, 1, 94.5, -124.9 , 0);
setMoveKey( spep_3 + 32 -3, 1, 96.1, -127 , 0);
setMoveKey( spep_3 + 34 -3, 1, 97.7, -129.1 , 0);
setMoveKey( spep_3 + 36 -3, 1, 99.4, -131.2 , 0);
setMoveKey( spep_3 + 38 -3, 1, 137.9, -114.9 , 0);
setMoveKey( spep_3 + 40 -3, 1, 102.7, -135.4 , 0);
setMoveKey( spep_3 + 42 -3, 1, 104.4, -137.5 , 0);
setMoveKey( spep_3 + 44 -3, 1, 106, -139.6 , 0);
setMoveKey( spep_3 + 46 -3, 1, 107.6, -141.7 , 0);
setMoveKey( spep_3 + 48 -3, 1, 109.2, -143.8 , 0);
setMoveKey( spep_3 + 50 -3, 1, 140.1, -153.8 , 0);
setMoveKey( spep_3 + 52 -3, 1, 112.6, -147.9 , 0);
setMoveKey( spep_3 + 54 -3, 1, 114.2, -150 , 0);
setMoveKey( spep_3 + 56 -3, 1, 115.9, -152.2 , 0);
setMoveKey( spep_3 + 58 -3, 1, 117.5, -154.2 , 0);
setMoveKey( spep_3 + 60 -3, 1, 119.1, -156.3 , 0);
setMoveKey( spep_3 + 62 -3, 1, 99.4, -123.8 , 0);
setMoveKey( spep_3 + 64 -3, 1, 122.4, -160.5 , 0);
setMoveKey( spep_3 + 66 -3, 1, 124.1, -162.6 , 0);
setMoveKey( spep_3 + 68 -3, 1, 125.7, -164.7 , 0);
setMoveKey( spep_3 + 70 -3, 1, 106, -132 , 0);
setMoveKey( spep_3 + 72 -3, 1, 129, -168.9 , 0);
setMoveKey( spep_3 + 74 -3, 1, 130.6, -171 , 0);
setMoveKey( spep_3 + 76 -3, 1, 132.3, -173 , 0);
setMoveKey( spep_3 + 78 -3, 1, 134, -175.1 , 0);
setMoveKey( spep_3 + 80 -3, 1, 135.6, -177.2 , 0);
setMoveKey( spep_3 + 82 -3, 1, 137.2, -179.3 , 0);
setMoveKey( spep_3 + 84 -3, 1, 117.3, -146.3 , 0);
setMoveKey( spep_3 + 86 -3, 1, 140.5, -183.5 , 0);
setMoveKey( spep_3 + 88 -3, 1, 142.2, -185.6 , 0);
setMoveKey( spep_3 + 90 -3, 1, 143.8, -187.7 , 0);
setMoveKey( spep_3 + 92 -3, 1, 123.8, -154.5 , 0);
setMoveKey( spep_3 + 94 -3, 1, 147.1, -191.9 , 0);
setMoveKey( spep_3 + 96 -3, 1, 148.7, -194 , 0);
setMoveKey( spep_3 + 98 -3, 1, 150.4, -196.1 , 0);
setMoveKey( spep_3 + 100 -3, 1, 152, -198.2 , 0);
setMoveKey( spep_3 + 102 -3, 1, 153.7, -200.2 , 0);
setMoveKey( spep_3 + 104 -3, 1, 155.3, -202.3 , 0);
setMoveKey( spep_3 + 106 -3, 1, 157, -204.5 , 0);
setMoveKey( spep_3 + 108 -3, 1, 158.6, -206.5 , 0);
setMoveKey( spep_3 + 110 -3, 1, 160.3, -208.6 , 0);
setMoveKey( spep_3 + 112 -3, 1, 161.9, -210.7 , 0);
setMoveKey( spep_3 + 114 -3, 1, 163.6, -212.8 , 0);
setMoveKey( spep_3 + 116 -3, 1, 165.2, -214.9 , 0);
setMoveKey( spep_3 + 118 -3, 1, 166.8, -217 , 0);
setMoveKey( spep_3 + 120 -3, 1, 156.8, -218.8 , 0);
setMoveKey( spep_3 + 122 -3, 1, 146.8, -220.5 , 0);
setMoveKey( spep_3 + 124 -3, 1, 136.8, -222.3 , 0);
setMoveKey( spep_3 + 126 -3, 1, 126.8, -224.1 , 0);
setMoveKey( spep_3 + 128 -3, 1, 116.8, -225.8 , 0);


-- setScaleKey( spep_3 + 0, 1, 2.1, 2.1);
setScaleKey( spep_3 + 2 -2, 1, 2.25 *1.00, 2.25 *1.00);
setScaleKey( spep_3 + 4 -3, 1, 2.4 *0.99, 2.4 *0.99);
setScaleKey( spep_3 + 6 -3, 1, 2.55 *0.98, 2.55 *0.98);
setScaleKey( spep_3 + 8 -3, 1, 2.7 *0.97, 2.7 *0.97);
setScaleKey( spep_3 + 10 -3, 1, 2.87 *0.96, 2.87 *0.96);
setScaleKey( spep_3 + 12 -3, 1, 3.04 *0.95, 3.04 *0.95);
setScaleKey( spep_3 + 14 -3, 1, 3.21 *0.95, 3.21 *0.95);
setScaleKey( spep_3 + 16 -3, 1, 3.38 *0.95, 3.38 *0.95);
setScaleKey( spep_3 + 19 -3, 1, 3.55 *0.95, 3.55 *0.95);
setScaleKey( spep_3 + 20 -3, 1, 3.72 *0.95, 3.72 *0.95);
setScaleKey( spep_3 + 22 -3, 1, 3.89 *0.95, 3.89 *0.95);
setScaleKey( spep_3 + 24 -3, 1, 3.9 *0.95, 3.9 *0.95);
setScaleKey( spep_3 + 26 -3, 1, 3.9 *0.95, 3.9 *0.95);
setScaleKey( spep_3 + 28 -3, 1, 3.91 *0.95, 3.91 *0.95);
setScaleKey( spep_3 + 30 -3, 1, 3.91 *0.95, 3.91 *0.95);
setScaleKey( spep_3 + 32 -3, 1, 3.92 *0.95, 3.92 *0.95);
setScaleKey( spep_3 + 34 -3, 1, 3.92 *0.95, 3.92 *0.95);
setScaleKey( spep_3 + 36 -3, 1, 3.93 *0.95, 3.93 *0.95);
setScaleKey( spep_3 + 38 -3, 1, 3.93 *0.95, 3.93 *0.95);
setScaleKey( spep_3 + 40 -3, 1, 3.94 *0.95, 3.94 *0.95);
setScaleKey( spep_3 + 42 -3, 1, 3.94 *0.95, 3.94 *0.95);
setScaleKey( spep_3 + 44 -3, 1, 3.95 *0.95, 3.95 *0.95);
setScaleKey( spep_3 + 46 -3, 1, 3.95 *0.95, 3.95 *0.95);
setScaleKey( spep_3 + 48 -3, 1, 3.96 *0.95, 3.96 *0.95);
setScaleKey( spep_3 + 50 -3, 1, 3.96 *0.95, 3.96 *0.95);
setScaleKey( spep_3 + 52 -3, 1, 3.97 *0.95, 3.97 *0.95);
setScaleKey( spep_3 + 54 -3, 1, 3.97 *0.95, 3.97 *0.95);
setScaleKey( spep_3 + 56 -3, 1, 3.98 *0.95, 3.98 *0.95);
setScaleKey( spep_3 + 58 -3, 1, 3.98 *0.95, 3.98 *0.95);
setScaleKey( spep_3 + 60 -3, 1, 3.99 *0.95, 3.99 *0.95);
setScaleKey( spep_3 + 62 -3, 1, 3.99 *0.95, 3.99 *0.95);
setScaleKey( spep_3 + 64 -3, 1, 4 *0.95, 4 *0.95);
setScaleKey( spep_3 + 68 -3, 1, 4 *0.95, 4 *0.95);
setScaleKey( spep_3 + 70 -3, 1, 4.01 *0.95, 4.01 *0.95);
setScaleKey( spep_3 + 72 -3, 1, 4.01 *0.95, 4.01 *0.95);
setScaleKey( spep_3 + 74 -3, 1, 4.02 *0.95, 4.02 *0.95);
setScaleKey( spep_3 + 76 -3, 1, 4.02 *0.95, 4.02 *0.95);
setScaleKey( spep_3 + 78 -3, 1, 4.03 *0.95, 4.03 *0.95);
setScaleKey( spep_3 + 80 -3, 1, 4.03 *0.95, 4.03 *0.95);
setScaleKey( spep_3 + 82 -3, 1, 4.04 *0.95, 4.04 *0.95);
setScaleKey( spep_3 + 84 -3, 1, 4.04 *0.95, 4.04 *0.95);
setScaleKey( spep_3 + 86 -3, 1, 4.05 *0.95, 4.05 *0.95);
setScaleKey( spep_3 + 88 -3, 1, 4.05 *0.95, 4.05 *0.95);
setScaleKey( spep_3 + 90 -3, 1, 4.06 *0.95, 4.06 *0.95);
setScaleKey( spep_3 + 92 -3, 1, 4.06 *0.95, 4.06 *0.95);
setScaleKey( spep_3 + 94 -3, 1, 4.07 *0.95, 4.07 *0.95);
setScaleKey( spep_3 + 96 -3, 1, 4.07 *0.95, 4.07 *0.95);
setScaleKey( spep_3 + 98 -3, 1, 4.08 *0.95, 4.08 *0.95);
setScaleKey( spep_3 + 100 -3, 1, 4.08 *0.95, 4.08 *0.95);
setScaleKey( spep_3 + 102 -3, 1, 4.09 *0.95, 4.09 *0.95);
setScaleKey( spep_3 + 104 -3, 1, 4.09 *0.95, 4.09 *0.95);
setScaleKey( spep_3 + 106 -3, 1, 4.1 *0.95, 4.1 *0.95);
setScaleKey( spep_3 + 108 -3, 1, 4.1 *0.95, 4.1 *0.95);
setScaleKey( spep_3 + 110 -3, 1, 4.11 *0.94, 4.11 *0.94);
setScaleKey( spep_3 + 112 -3, 1, 4.11 *0.93, 4.11 *0.93);
setScaleKey( spep_3 + 114 -3, 1, 4.12 *0.92, 4.12 *0.92);
setScaleKey( spep_3 + 116 -3, 1, 4.12 *0.91, 4.12 *0.91);
setScaleKey( spep_3 + 118 -3, 1, 4.13 *0.90, 4.13 *0.90);
setScaleKey( spep_3 + 120 -3, 1, 3.9 *0.92, 3.9 *0.92);
setScaleKey( spep_3 + 122 -3, 1, 3.67 *0.94, 3.67 *0.94);
setScaleKey( spep_3 + 124 -3, 1, 3.45 *0.96, 3.45 *0.96);
setScaleKey( spep_3 + 126 -3, 1, 3.22 *0.98, 3.22 *0.98);
setScaleKey( spep_3 + 128 -3, 1, 3 *1.00, 3 *1.00);

setRotateKey( spep_3 + 0, 1, -38.4);
setRotateKey( spep_3 + 19, 1, -38.4);
setRotateKey( spep_3 + 20, 1, -46.6);
setRotateKey( spep_3 + 130 -5, 1, -46.6);


-- ** 音 ** --
SE013 = playSeVer2( spep_3 + 0-8, 1232, "", 0, 0, 0, 0.6); --画面遷移

SE014 = playSeVer2( spep_3 + 26 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 26 -3, SE014, -100);
setTimeStretch( SE014, 0.93, 30, 4);

SE015 = playSeVer2( spep_3 + 26 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 26 -3, SE015, 77);

SE016 = playSeVer2( spep_3 + 38 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 38 -3, SE016, -100);
setTimeStretch( SE016, 0.93, 30, 4);

SE017 = playSeVer2( spep_3 + 38 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 38 -3, SE017, 77);

SE018 = playSeVer2( spep_3 + 52 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 52 -3, SE018, -100);
setTimeStretch( SE018, 0.93, 30, 4);

SE019 = playSeVer2( spep_3 + 52 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 52 -3, SE019, 76);

SE020 = playSeVer2( spep_3 + 66 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 66 -3, SE020, -100);
setTimeStretch( SE020, 0.93, 30, 4);

SE021 = playSeVer2( spep_3 + 66 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 66 -3, SE021, 72);

SE022 = playSeVer2( spep_3 + 82 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 82 -3, SE022, -100);
setTimeStretch( SE022, 0.93, 30, 4);

SE023 = playSeVer2( spep_3 + 82 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 82 -3, SE023, 79);


-- ** 次の準備 ** --
spep_4 = spep_3 + 130 -4;

------------------------------------------------------
-- 蹴り飛ばし(100F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_11, 0x100, -1, 0, 0, 0);  --蹴り飛ばし(ef_004)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 100 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 100 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 100 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_12, 0x80, -1, 0, 0, 0);  --蹴り飛ばし(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 100 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 100 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 100 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 100 -4, 1, 0);

changeAnime( spep_4 + 0, 1, 106);
changeAnime( spep_4 + 16 -3, 1, 108);
changeAnime( spep_4 + 54 -3, 1, 105);

-- setMoveKey( spep_4 + 0, 1, 84.6, -3.6 , 0);
setMoveKey( spep_4 + 2 -2, 1, 85.6, -5.2 , 0);
setMoveKey( spep_4 + 4 -3, 1, 86.5, -6.8 , 0);
setMoveKey( spep_4 + 6 -3, 1, 87.4, -8.4 , 0);
setMoveKey( spep_4 + 8 -3, 1, 88.4, -10.1 , 0);
setMoveKey( spep_4 + 10 -3, 1, 89.4, -11.7 , 0);
setMoveKey( spep_4 + 12 -3, 1, 90.3, -13.4 , 0);
setMoveKey( spep_4 + 15 -3, 1, 75.9, -20 , 0);
setMoveKey( spep_4 + 16 -3, 1, 179, 53.7 , 0);
setMoveKey( spep_4 + 18 -3, 1, 161, 44.6 , 0);
setMoveKey( spep_4 + 20 -3, 1, 162.1, 29.9 , 0);
setMoveKey( spep_4 + 22 -3, 1, 101.3, 54.1 , 0);
setMoveKey( spep_4 + 24 -3, 1, 86, 1.5 , 0);
setMoveKey( spep_4 + 26 -3, 1, 134.2, 11.8 , 0);
setMoveKey( spep_4 + 28 -3, 1, 71.5, -0.7 , 0);
setMoveKey( spep_4 + 30 -3, 1, 69.6, -14.5 , 0);
setMoveKey( spep_4 + 32 -3, 1, 31.2, 13.1 , 0);
setMoveKey( spep_4 + 34 -3, 1, 31.4, -31.6 , 0);
setMoveKey( spep_4 + 36 -3, 1, 103, -14.1 , 0);
setMoveKey( spep_4 + 38 -3, 1, 52.8, -20.7 , 0);
setMoveKey( spep_4 + 40 -3, 1, 54.7, -19.5 , 0);
setMoveKey( spep_4 + 42 -3, 1, 60.8, -9.7 , 0);
setMoveKey( spep_4 + 44 -3, 1, 48.2, -13.6 , 0);
setMoveKey( spep_4 + 46 -3, 1, 40.2, -8.4 , 0);
setMoveKey( spep_4 + 48 -3, 1, 36.8, 5.9 , 0);
setMoveKey( spep_4 + 50 -3, 1, 20.7, -9.5 , 0);
setMoveKey( spep_4 + 53 -3, 1, 18.2, -8.2 , 0);
setMoveKey( spep_4 + 54 -3, 1, -8.4, -13.2 , 0);
setMoveKey( spep_4 + 56 -3, 1, -7.4, -12.1 , 0);
setMoveKey( spep_4 + 58 -3, 1, -6.5, -11.2 , 0);
setMoveKey( spep_4 + 60 -3, 1, -5.5, -10.3 , 0);
setMoveKey( spep_4 + 62 -3, 1, -4.6, -9.3 , 0);
setMoveKey( spep_4 + 64 -3, 1, -3.8, -8.5 , 0);
setMoveKey( spep_4 + 66 -3, 1, -2.9, -7.5 , 0);
setMoveKey( spep_4 + 68 -3, 1, -2.1, -6.6 , 0);
setMoveKey( spep_4 + 70 -3, 1, -1.3, -5.6 , 0);
setMoveKey( spep_4 + 72 -3, 1, -0.5, -4.7 , 0);
setMoveKey( spep_4 + 74 -3, 1, 0.4, -3.7 , 0);
setMoveKey( spep_4 + 76 -3, 1, 1.2, -2.8 , 0);
setMoveKey( spep_4 + 78 -3, 1, 2.1, -2 , 0);
setMoveKey( spep_4 + 80 -3, 1, 2.9, -1.1 , 0);
setMoveKey( spep_4 + 82 -3, 1, 3.8, -0.3 , 0);
setMoveKey( spep_4 + 84 -3, 1, 4.5, 0.5 , 0);
setMoveKey( spep_4 + 86 -3, 1, 5.3, 1.3 , 0);
setMoveKey( spep_4 + 88 -3, 1, 6.1, 2.1 , 0);
setMoveKey( spep_4 + 90 -3, 1, 6.9, 2.9 , 0);
setMoveKey( spep_4 + 92 -3, 1, 7.6, 3.6 , 0);
setMoveKey( spep_4 + 94 -3, 1, 8.3, 4.4 , 0);
setMoveKey( spep_4 + 96 -3, 1, 9, 5.2 , 0);
setMoveKey( spep_4 + 98 -3, 1, 9.7, 6 , 0);

-- setScaleKey( spep_4 + 0, 1, 2.28, 2.28);
setScaleKey( spep_4 + 2 -2, 1, 2.37 *0.95, 2.37 *0.95);
setScaleKey( spep_4 + 4 -3, 1, 2.45 *0.948, 2.45 *0.948);
setScaleKey( spep_4 + 6 -3, 1, 2.53 *0.946, 2.53 *0.946);
setScaleKey( spep_4 + 8 -3, 1, 2.61 *0.944, 2.61 *0.944);
setScaleKey( spep_4 + 10 -3, 1, 2.7 *0.942, 2.7 *0.942);
setScaleKey( spep_4 + 12 -3, 1, 2.78 *0.94, 2.78 *0.94);
setScaleKey( spep_4 + 15 -3, 1, 2.7 *0.945, 2.7 *0.945);
setScaleKey( spep_4 + 16 -3, 1, 2.63 *1.1, 2.63 *1.1);
setScaleKey( spep_4 + 18 -3, 1, 2.55 *1.1, 2.55 *1.1);
setScaleKey( spep_4 + 20 -3, 1, 2.47 *1.1, 2.47 *1.1);
setScaleKey( spep_4 + 22 -3, 1, 2.39 *1.1, 2.39 *1.1);
setScaleKey( spep_4 + 24 -3, 1, 2.31 *1.1, 2.31 *1.1);
setScaleKey( spep_4 + 26 -3, 1, 2.24 *1.1, 2.24 *1.1);
setScaleKey( spep_4 + 28 -3, 1, 2.16 *1.1, 2.16 *1.1);
setScaleKey( spep_4 + 30 -3, 1, 2.08 *1.1, 2.08 *1.1);
setScaleKey( spep_4 + 32 -3, 1, 2.22 *1.1, 2.22 *1.1);
setScaleKey( spep_4 + 34 -3, 1, 2.36 *1.1, 2.36 *1.1);
setScaleKey( spep_4 + 36 -3, 1, 2.5, 2.5);
setScaleKey( spep_4 + 38 -3, 1, 2.64, 2.64);
setScaleKey( spep_4 + 40 -3, 1, 2.72, 2.72);
setScaleKey( spep_4 + 42 -3, 1, 2.66, 2.66);
setScaleKey( spep_4 + 44 -3, 1, 2.38, 2.38);
setScaleKey( spep_4 + 46 -3, 1, 1.95, 1.95);
setScaleKey( spep_4 + 48 -3, 1, 1.39, 1.39);
setScaleKey( spep_4 + 50 -3, 1, 1.29, 1.29);
setScaleKey( spep_4 + 53 -3, 1, 0.94, 0.94);
setScaleKey( spep_4 + 54 -3, 1, 0.35, 0.35);
setScaleKey( spep_4 + 56 -3, 1, 0.34, 0.34);
setScaleKey( spep_4 + 58 -3, 1, 0.34, 0.34);
setScaleKey( spep_4 + 60 -3, 1, 0.33, 0.33);
setScaleKey( spep_4 + 64 -3, 1, 0.33, 0.33);
setScaleKey( spep_4 + 66 -3, 1, 0.32, 0.32);
setScaleKey( spep_4 + 70 -3, 1, 0.32, 0.32);
setScaleKey( spep_4 + 72 -3, 1, 0.31, 0.31);
setScaleKey( spep_4 + 78 -3, 1, 0.31, 0.31);
setScaleKey( spep_4 + 80 -3, 1, 0.3, 0.3);
setScaleKey( spep_4 + 88 -3, 1, 0.3, 0.3);
setScaleKey( spep_4 + 90 -3, 1, 0.29, 0.29);
setScaleKey( spep_4 + 100 -5, 1, 0.29, 0.29);

setRotateKey( spep_4 + 0, 1, -57.2);
setRotateKey( spep_4 + 15 -3, 1, -57.2);
setRotateKey( spep_4 + 16 -3, 1, 0);
setRotateKey( spep_4 + 38 -3, 1, 0);
setRotateKey( spep_4 + 40 -3, 1, 4.1);
setRotateKey( spep_4 + 42 -3, 1, 16.6);
setRotateKey( spep_4 + 44 -3, 1, 37.3);
setRotateKey( spep_4 + 46 -3, 1, 66.3);
setRotateKey( spep_4 + 48 -3, 1, 103.5);
setRotateKey( spep_4 + 50 -3, 1, 107.6);
setRotateKey( spep_4 + 53 -3, 1, 119.8);
setRotateKey( spep_4 + 54 -3, 1, 140.1);
setRotateKey( spep_4 + 56 -3, 1, 182.2);
setRotateKey( spep_4 + 58 -3, 1, 222.8);
setRotateKey( spep_4 + 60 -3, 1, 261.8);
setRotateKey( spep_4 + 62 -3, 1, 299.2);
setRotateKey( spep_4 + 64 -3, 1, 335);
setRotateKey( spep_4 + 66 -3, 1, 369.2);
setRotateKey( spep_4 + 68 -3, 1, 401.8);
setRotateKey( spep_4 + 70 -3, 1, 432.8);
setRotateKey( spep_4 + 72 -3, 1, 462.2);
setRotateKey( spep_4 + 74 -3, 1, 490.1);
setRotateKey( spep_4 + 76 -3, 1, 516.3);
setRotateKey( spep_4 + 78 -3, 1, 541);
setRotateKey( spep_4 + 80 -3, 1, 564.1);
setRotateKey( spep_4 + 82 -3, 1, 585.6);
setRotateKey( spep_4 + 84 -3, 1, 605.4);
setRotateKey( spep_4 + 86 -3, 1, 623.7);
setRotateKey( spep_4 + 88 -3, 1, 640.4);
setRotateKey( spep_4 + 90 -3, 1, 655.6);
setRotateKey( spep_4 + 92 -3, 1, 669.1);
setRotateKey( spep_4 + 94 -3, 1, 681);
setRotateKey( spep_4 + 96 -3, 1, 691.4);
setRotateKey( spep_4 + 98 -3, 1, 700.1);
setRotateKey( spep_4 + 100 -5, 1, 700.1);


-- ** 音 ** --
SE024 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_4 + 0, SE024, 79);

SE025 = playSeVer2( spep_4 + 14 -3, 1187, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_4 + 14 -3, SE025, 91);

SE026 = playSeVer2( spep_4 + 36 -3, 1121, "",spep_4 + 116 -3, 0, 6, -1); --敵飛んでいく
setSeVolumeByWorkId( spep_4 + 36 -3, SE026, 65);

SE027 = playSeVer2( spep_4 + 36 -3, 1183, "",spep_4 + 116 -3, 0, 6, -1); --敵飛んでいく
setSeVolumeByWorkId( spep_4 + 36 -3, SE027, 65);


-- ** 次の準備 ** --
spep_5 = spep_4 + 100 -4;

------------------------------------------------------
-- 吹っ飛ぶ敵～フィニッシュ(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_15, 0x100, -1, 0, 0, 0);  --吹っ飛ぶ敵～フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 100, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 100, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 100, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 100, base5, 255);
setEffAlphaKey( spep_5 + 100, base5, 0);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 - 0,  1600, 0x100, -1, 0, 70, -60);  --ひび割れ
setEffMoveKey( spep_5 - 0, hibiware, 70, -60, 0);
setEffMoveKey( spep_5 + 110, hibiware, 70, -60, 0);
setEffScaleKey( spep_5 - 0, hibiware, 1.0, 1.0);
setEffScaleKey( spep_5 + 110, hibiware, 1.0, 1.0);
setEffRotateKey( spep_5 - 0, hibiware, 0);
setEffRotateKey( spep_5 + 110, hibiware, 0);
setEffAlphaKey( spep_5 - 0, hibiware, 0);
setEffAlphaKey( spep_5 + 9, hibiware, 0);
setEffAlphaKey( spep_5 + 10, hibiware, 255);
setEffAlphaKey( spep_5 + 110, hibiware, 255);


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 11,  10005, 99, 0x100, -1, 0, 5, 180);  --ガッ
setEffShake( spep_5 + 11, ctga, 14, 20);

setEffMoveKey( spep_5 + 11, ctga, 5, 180 , 0);
setEffMoveKey( spep_5 + 110, ctga, 5, 180 , 0);

setEffScaleKey( spep_5 + 11, ctga, 3.5, 3.5);
setEffScaleKey( spep_5 + 110, ctga, 3.5, 3.5);

setEffRotateKey( spep_5 + 11, ctga, -20.9);
setEffRotateKey( spep_5 + 12, ctga, -24.9);
setEffRotateKey( spep_5 + 13, ctga, -24.9);
setEffRotateKey( spep_5 + 14, ctga, -20.9);
setEffRotateKey( spep_5 + 15, ctga, -20.9);
setEffRotateKey( spep_5 + 16, ctga, -24.9);
setEffRotateKey( spep_5 + 17, ctga, -24.9);
setEffRotateKey( spep_5 + 18, ctga, -20.9);
setEffRotateKey( spep_5 + 19, ctga, -20.9);
setEffRotateKey( spep_5 + 20, ctga, -24.9);
setEffRotateKey( spep_5 + 21, ctga, -24.9);
setEffRotateKey( spep_5 + 22, ctga, -20.9);
setEffRotateKey( spep_5 + 23, ctga, -20.9);
setEffRotateKey( spep_5 + 24, ctga, -24.9);
setEffRotateKey( spep_5 + 110, ctga, -24.9);

setEffAlphaKey( spep_5 + 11, ctga, 255);
setEffAlphaKey( spep_5 + 110, ctga, 255);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1);

changeAnime( spep_5 + 0, 1, 107);  --ダメージ 手前

-- setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 1, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 3, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 5, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 7, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 9, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 11, 1, 130, -142.1 , 0);
setMoveKey( spep_5 + 12, 1, 130, -142.1 , 0);
setMoveKey( spep_5 + 110, 1, 130, -142.1 , 0);

setScaleKey( spep_5 + 0, 1, 0.35, 0.35);
setScaleKey( spep_5 + 1, 1, 0.55, 0.55);
setScaleKey( spep_5 + 2, 1, 0.55, 0.55);
setScaleKey( spep_5 + 3, 1, 0.75, 0.75);
setScaleKey( spep_5 + 4, 1, 0.75, 0.75);
setScaleKey( spep_5 + 5, 1, 1.0, 1.0);
setScaleKey( spep_5 + 6, 1, 1.0, 1.0);
setScaleKey( spep_5 + 7, 1, 1.4, 1.4);
setScaleKey( spep_5 + 8, 1, 1.4, 1.4);
setScaleKey( spep_5 + 9, 1, 1.68, 1.68);
setScaleKey( spep_5 + 10, 1, 1.68, 1.68);
setScaleKey( spep_5 + 11, 1, 1.79, 1.79);
setScaleKey( spep_5 + 12, 1, 1.79, 1.79);
setScaleKey( spep_5 + 13, 1, 1.68, 1.68);
setScaleKey( spep_5 + 14, 1, 1.68, 1.68);
setScaleKey( spep_5 + 15, 1, 1.79, 1.79);
setScaleKey( spep_5 + 16, 1, 1.79, 1.79);
setScaleKey( spep_5 + 17, 1, 1.68, 1.68);
setScaleKey( spep_5 + 18, 1, 1.68, 1.68);
setScaleKey( spep_5 + 19, 1, 1.79, 1.79);
setScaleKey( spep_5 + 20, 1, 1.79, 1.79);
setScaleKey( spep_5 + 21, 1, 1.68, 1.68);
setScaleKey( spep_5 + 22, 1, 1.68, 1.68);
setScaleKey( spep_5 + 23, 1, 1.79, 1.79);
setScaleKey( spep_5 + 24, 1, 1.79, 1.79);
setScaleKey( spep_5 + 110, 1, 1.79, 1.79);

setRotateKey( spep_5 + 0, 1, 30);
setRotateKey( spep_5 + 1, 1, 65);
setRotateKey( spep_5 + 2, 1, 65);
setRotateKey( spep_5 + 3, 1, 110);
setRotateKey( spep_5 + 4, 1, 110);
setRotateKey( spep_5 + 5, 1, 165);
setRotateKey( spep_5 + 6, 1, 165);
setRotateKey( spep_5 + 7, 1, 230);
setRotateKey( spep_5 + 8, 1, 230);
setRotateKey( spep_5 + 9, 1, 305);
setRotateKey( spep_5 + 10, 1, 305);
setRotateKey( spep_5 + 11, 1, 390);
setRotateKey( spep_5 + 110, 1, 390);


-- ** 音 ** --
SE028 = playSeVer2( spep_5 + 10, 1025, "", 0, 0, 0, -1); --画面割れる

SE029 = playSeVer2( spep_5 + 10, 1054, "", 0, 0, 0, -1); --画面割れる


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 5);
endPhase( spep_5 + 100);


else


------------------------------------------------------
-- 敵側の攻撃
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カットイン・画面側指さし(120F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0);  --カットイン・画面側指さし(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 120 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 120 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 120 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 120 -5, base1, 255);
setEffAlphaKey( spep_0 + 120 -4, base1, 0);


spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1); --顔カットイン

SE002 = playSeVer2( spep_0 + 22 -3, 1003, "", 0, 0, 0, -1); --指差す
setSeVolumeByWorkId( spep_0 + 22 -3, SE002, 116);

SE003 = playSeVer2( spep_0 + 22 -3, 20, "", 0, 0, 0, 0.6); --指差す
setBandpassFilter ( spep_0 + 22 -3, SE003, 170, 24000);

SE004 = playSeVer2( spep_0 + 22 -3, 1115, "",spep_0 + 116 -3, 0, 46, 0.6); --指差す


-- ** 次の準備 ** --
spep_1 = spep_0 + 120 -4;

------------------------------------------------------
-- 構え～体当たり(100F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_1 + 0, SP_05, 0x100, -1, 0, 0, 0);  --構え～体当たり(ef_002)
setEffMoveKey( spep_1 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_f, 0);
setEffRotateKey( spep_1 + 100 -4, base2_f, 0);
setEffAlphaKey( spep_1 + 0, base2_f, 255);
setEffAlphaKey( spep_1 + 100 -5, base2_f, 255);
setEffAlphaKey( spep_1 + 100 -4, base2_f, 0);

base2_b = entryEffect( spep_1 + 0, SP_06, 0x80, -1, 0, 0, 0);  --構え～体当たり(ef_002_back)
setEffMoveKey( spep_1 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 100 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 100 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base2_b, 0);
setEffRotateKey( spep_1 + 100 -4, base2_b, 0);
setEffAlphaKey( spep_1 + 0, base2_b, 255);
setEffAlphaKey( spep_1 + 100 -5, base2_b, 255);
setEffAlphaKey( spep_1 + 100 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1 + 100 -4, 1, 0);

changeAnime( spep_1 + 0, 1, 100);

-- setMoveKey( spep_1 + 0, 1, 404.4, 216.4 , 0);
setMoveKey( spep_1 + 2 -2, 1, 375.2, 220.4 , 0);
setMoveKey( spep_1 + 4 -3, 1, 346, 224.4 , 0);
setMoveKey( spep_1 + 6 -3, 1, 316.8, 228.3 , 0);
setMoveKey( spep_1 + 8 -3, 1, 287.7, 232.3 , 0);
setMoveKey( spep_1 + 10 -3, 1, 258.5, 236.3 , 0);
setMoveKey( spep_1 + 12 -3, 1, 260, 238.1 , 0);
setMoveKey( spep_1 + 14 -3, 1, 261.5, 239.9 , 0);
setMoveKey( spep_1 + 16 -3, 1, 263.1, 241.8 , 0);
setMoveKey( spep_1 + 18 -3, 1, 264.6, 243.6 , 0);
setMoveKey( spep_1 + 20 -3, 1, 266.1, 245.4 , 0);
setMoveKey( spep_1 + 22 -3, 1, 267.7, 247.3 , 0);
setMoveKey( spep_1 + 24 -3, 1, 269.2, 249.1 , 0);
setMoveKey( spep_1 + 26 -3, 1, 270.7, 250.9 , 0);
setMoveKey( spep_1 + 28 -3, 1, 272.2, 252.7 , 0);
setMoveKey( spep_1 + 30 -3, 1, 273.8, 254.6 , 0);
setMoveKey( spep_1 + 32 -3, 1, 275.3, 256.4 , 0);
setMoveKey( spep_1 + 34 -3, 1, 276.8, 258.2 , 0);
setMoveKey( spep_1 + 36 -3, 1, 278.3, 260 , 0);
setMoveKey( spep_1 + 38 -3, 1, 279.9, 261.9 , 0);
setMoveKey( spep_1 + 40 -3, 1, 232.9, 234.2 , 0);
setMoveKey( spep_1 + 42 -3, 1, 185.8, 206.6 , 0);
setMoveKey( spep_1 + 44 -3, 1, 138.8, 178.9 , 0);
setMoveKey( spep_1 + 46 -3, 1, 91.7, 151.3 , 0);
setMoveKey( spep_1 + 48 -3, 1, 44.7, 123.7 , 0);
setMoveKey( spep_1 + 50 -3, 1, 62.3, 114.6 , 0);
setMoveKey( spep_1 + 52 -3, 1, 79.9, 105.5 , 0);


-- setScaleKey( spep_1 + 0, 1, 1.49, 1.49);
setScaleKey( spep_1 + 2 -2, 1, 1.43, 1.43);
setScaleKey( spep_1 + 4 -3, 1, 1.37, 1.37);
setScaleKey( spep_1 + 6 -3, 1, 1.31, 1.31);
setScaleKey( spep_1 + 8 -3, 1, 1.26, 1.26);
setScaleKey( spep_1 + 10 -3, 1, 1.22, 1.22);
setScaleKey( spep_1 + 12 -3, 1, 1.16, 1.16);
setScaleKey( spep_1 + 14 -3, 1, 1.11, 1.11);
setScaleKey( spep_1 + 16 -3, 1, 1.07, 1.07);
setScaleKey( spep_1 + 18 -3, 1, 1.03, 1.03);
setScaleKey( spep_1 + 20 -3, 1, 1, 1);
setScaleKey( spep_1 + 22 -3, 1, 0.98, 0.98);
setScaleKey( spep_1 + 24 -3, 1, 0.96, 0.96);
setScaleKey( spep_1 + 32 -3, 1, 0.96, 0.96);
setScaleKey( spep_1 + 34 -3, 1, 0.97, 0.97);
setScaleKey( spep_1 + 36 -3, 1, 0.97, 0.97);
setScaleKey( spep_1 + 38 -3, 1, 0.98, 0.98);
setScaleKey( spep_1 + 40 -3, 1, 0.99 *1.00, 0.99 *1.00);
setScaleKey( spep_1 + 42 -3, 1, 1.01 *0.99, 1.01 *0.99);
setScaleKey( spep_1 + 44 -3, 1, 1.03 *0.98, 1.03 *0.98);
setScaleKey( spep_1 + 46 -3, 1, 1.05 *0.97, 1.05 *0.97);
setScaleKey( spep_1 + 48 -3, 1, 1.07 *0.96, 1.07 *0.96);
setScaleKey( spep_1 + 50 -3, 1, 1.43 *0.95, 1.43 *0.95);
setScaleKey( spep_1 + 52 -3, 1, 1.83 *0.94, 1.83 *0.94);

setRotateKey( spep_1 + 0, 1, 0);
setRotateKey( spep_1 + 100 -5, 1, 0);


-- ** 音 ** --
SE005 = playSeVer2( spep_1 + 0, 49, "", 0, 0, 0, 0.6); --溜め
setTimeStretch( SE005, 1.44, 30, 4);

SE006 = playSeVer2( spep_1 + 0, 17, "",spep_1 + 54 -3, 0, 20, 0.6); --溜め
setSeVolumeByWorkId( spep_1 + 0, SE006, 77);

SE007 = playSeVer2( spep_1 + 0, 1033, "", 0, 0, 0, -1); --溜め
setSeVolumeByWorkId( spep_1 + 0, SE007, 89);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50;

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


-- ** 敵キャラクター ** --
changeAnime( spep_1 + 60 -3, 1, 108);

setMoveKey( spep_1 + 54 -3, 1, 97.5, 96.4 , 0);
setMoveKey( spep_1 + 56 -3, 1, 96.3, 94.2 , 0);
setMoveKey( spep_1 + 59 -3, 1, 95, 91.8 , 0);
setMoveKey( spep_1 + 60 -3, 1, 138.6, 135.2 , 0);
setMoveKey( spep_1 + 62 -3, 1, 136.7, 80.1 , 0);
setMoveKey( spep_1 + 64 -3, 1, 125.9, 157.4 , 0);
setMoveKey( spep_1 + 66 -3, 1, 192.3, 151.2 , 0);
setMoveKey( spep_1 + 68 -3, 1, 169.1, 133.8 , 0);
setMoveKey( spep_1 + 70 -3, 1, 186.8, 162.5 , 0);
setMoveKey( spep_1 + 72 -3, 1, 168.2, 97.5 , 0);
setMoveKey( spep_1 + 74 -3, 1, 167.4, 128.7 , 0);
setMoveKey( spep_1 + 76 -3, 1, 166.7, 126.8 , 0);
setMoveKey( spep_1 + 78 -3, 1, 165.8, 124.8 , 0);
setMoveKey( spep_1 + 80 -3, 1, 164.8, 122.7 , 0);
setMoveKey( spep_1 + 82 -3, 1, 163.7, 120.5 , 0);
setMoveKey( spep_1 + 84 -3, 1, 162.4, 118.3 , 0);
setMoveKey( spep_1 + 86 -3, 1, 161, 116 , 0);
setMoveKey( spep_1 + 88 -3, 1, 159.5, 113.6 , 0);
setMoveKey( spep_1 + 90 -3, 1, 158, 111.1 , 0);
setMoveKey( spep_1 + 92 -3, 1, 156.3, 108.6 , 0);
setMoveKey( spep_1 + 94 -3, 1, 154.5, 106 , 0);
setMoveKey( spep_1 + 96 -3, 1, 152.6, 103.3 , 0);
setMoveKey( spep_1 + 98 -3, 1, 150.6, 100.9 , 0);

setScaleKey( spep_1 + 54 -3, 1, 2.28 *0.93, 2.28 *0.93);
setScaleKey( spep_1 + 56 -3, 1, 2.56 *0.92, 2.56 *0.92);
setScaleKey( spep_1 + 59 -3, 1, 2.85 *0.91, 2.85 *0.91);
setScaleKey( spep_1 + 60 -3, 1, 3.06 *0.90, 3.06 *0.90);
setScaleKey( spep_1 + 62 -3, 1, 3.00 *0.90, 3.00 *0.90);
setScaleKey( spep_1 + 64 -3, 1, 2.95 *0.90, 2.95 *0.90);
setScaleKey( spep_1 + 66 -3, 1, 2.90 *0.90, 2.90 *0.90);
setScaleKey( spep_1 + 68 -3, 1, 2.86 *0.90, 2.86 *0.90);
setScaleKey( spep_1 + 70 -3, 1, 2.83 *0.90, 2.83 *0.90);
setScaleKey( spep_1 + 72 -3, 1, 2.81 *0.90, 2.81 *0.90);
setScaleKey( spep_1 + 74 -3, 1, 2.78 *0.90, 2.78 *0.90);
setScaleKey( spep_1 + 76 -3, 1, 2.75 *0.90, 2.75 *0.90);
setScaleKey( spep_1 + 78 -3, 1, 2.73 *0.90, 2.73 *0.90);
setScaleKey( spep_1 + 80 -3, 1, 2.70 *0.90, 2.70 *0.90);
setScaleKey( spep_1 + 82 -3, 1, 2.68 *0.90, 2.68 *0.90);
setScaleKey( spep_1 + 84 -3, 1, 2.65 *0.90, 2.65 *0.90);
setScaleKey( spep_1 + 86 -3, 1, 2.62 *0.90, 2.62 *0.90);
setScaleKey( spep_1 + 88 -3, 1, 2.60 *0.90, 2.60 *0.90);
setScaleKey( spep_1 + 90 -3, 1, 2.57 *0.90, 2.57 *0.90);
setScaleKey( spep_1 + 92 -3, 1, 2.55 *0.90, 2.55 *0.90);
setScaleKey( spep_1 + 94 -3, 1, 2.52 *0.90, 2.52 *0.90);
setScaleKey( spep_1 + 96 -3, 1, 2.50 *0.90, 2.50 *0.90);
setScaleKey( spep_1 + 98 -3, 1, 2.48 *0.90, 2.48 *0.90);

setRotateKey( spep_1 + 100 -5, 1, 0);


-- ** 音 ** --
SE008 = playSeVer2( spep_1 + 42 -3, 1277, "",spep_1 + 64 -3, 0, 12, 0.5); --パンチ

SE009 = playSeVer2( spep_1 + 44 -3, 1182, "",spep_1 + 68 -3, 0, 14, -1); --パンチ

SE010 = playSeVer2( spep_1 + 44 -3, 1189, "", 0, 0, 0, -1); --パンチ

SE011 = playSeVer2( spep_1 + 54 -3, 1120, "", 0, 0, 0, -1); --パンチ
setSeVolumeByWorkId( spep_1 + 54 -3, SE011, 89);
setPitch( spep_1 + 54 -3, SE011, -100);
setTimeStretch( SE011, 0.93, 30, 4);


-- ** 次の準備 ** --
spep_2 = spep_1 + 100 -6;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- ポカポカ殴る(130F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_09, 0x100, -1, 0, 0, 0);  --ポカポカ殴る(ef_003)
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 130 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 130 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 130 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 130 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 130 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_10, 0x80, -1, 0, 0, 0);  --ポカポカ殴る(ef_003_back)
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 130 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 130 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 130 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 130 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 130 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1);
setDisp( spep_3 + 130 -4, 1, 0);

changeAnime( spep_3 + 0, 1, 106);
changeAnime( spep_3 + 20 -3, 1, 108);

-- setMoveKey( spep_3 + 0, 1, 63.1, -212.2 , 0);
setMoveKey( spep_3 + 2 -2, 1, 65.1, -155.4 , 0);
setMoveKey( spep_3 + 4 -3, 1, 67.1, -98.7 , 0);
setMoveKey( spep_3 + 6 -3, 1, 69.1, -41.9 , 0);
setMoveKey( spep_3 + 8 -3, 1, 71.1, 14.8 , 0);
setMoveKey( spep_3 + 10 -3, 1, 77.6, 6.2 , 0);
setMoveKey( spep_3 + 12 -3, 1, 84.3, -2.5 , 0);
setMoveKey( spep_3 + 14 -3, 1, 90.8, -11.1 , 0);
setMoveKey( spep_3 + 16 -3, 1, 97.3, -19.7 , 0);
setMoveKey( spep_3 + 19 -3, 1, 103.9, -28.4 , 0);
setMoveKey( spep_3 + 20 -3, 1, 82.6, -104.8 , 0);
setMoveKey( spep_3 + 22 -3, 1, 87.9, -116.6 , 0);
setMoveKey( spep_3 + 24 -3, 1, 89.5, -118.7 , 0);
setMoveKey( spep_3 + 26 -3, 1, 91.2, -120.8 , 0);
setMoveKey( spep_3 + 28 -3, 1, 66.7, -151.5 , 0);
setMoveKey( spep_3 + 30 -3, 1, 94.5, -124.9 , 0);
setMoveKey( spep_3 + 32 -3, 1, 96.1, -127 , 0);
setMoveKey( spep_3 + 34 -3, 1, 97.7, -129.1 , 0);
setMoveKey( spep_3 + 36 -3, 1, 99.4, -131.2 , 0);
setMoveKey( spep_3 + 38 -3, 1, 137.9, -114.9 , 0);
setMoveKey( spep_3 + 40 -3, 1, 102.7, -135.4 , 0);
setMoveKey( spep_3 + 42 -3, 1, 104.4, -137.5 , 0);
setMoveKey( spep_3 + 44 -3, 1, 106, -139.6 , 0);
setMoveKey( spep_3 + 46 -3, 1, 107.6, -141.7 , 0);
setMoveKey( spep_3 + 48 -3, 1, 109.2, -143.8 , 0);
setMoveKey( spep_3 + 50 -3, 1, 140.1, -153.8 , 0);
setMoveKey( spep_3 + 52 -3, 1, 112.6, -147.9 , 0);
setMoveKey( spep_3 + 54 -3, 1, 114.2, -150 , 0);
setMoveKey( spep_3 + 56 -3, 1, 115.9, -152.2 , 0);
setMoveKey( spep_3 + 58 -3, 1, 117.5, -154.2 , 0);
setMoveKey( spep_3 + 60 -3, 1, 119.1, -156.3 , 0);
setMoveKey( spep_3 + 62 -3, 1, 99.4, -123.8 , 0);
setMoveKey( spep_3 + 64 -3, 1, 122.4, -160.5 , 0);
setMoveKey( spep_3 + 66 -3, 1, 124.1, -162.6 , 0);
setMoveKey( spep_3 + 68 -3, 1, 125.7, -164.7 , 0);
setMoveKey( spep_3 + 70 -3, 1, 106, -132 , 0);
setMoveKey( spep_3 + 72 -3, 1, 129, -168.9 , 0);
setMoveKey( spep_3 + 74 -3, 1, 130.6, -171 , 0);
setMoveKey( spep_3 + 76 -3, 1, 132.3, -173 , 0);
setMoveKey( spep_3 + 78 -3, 1, 134, -175.1 , 0);
setMoveKey( spep_3 + 80 -3, 1, 135.6, -177.2 , 0);
setMoveKey( spep_3 + 82 -3, 1, 137.2, -179.3 , 0);
setMoveKey( spep_3 + 84 -3, 1, 117.3, -146.3 , 0);
setMoveKey( spep_3 + 86 -3, 1, 140.5, -183.5 , 0);
setMoveKey( spep_3 + 88 -3, 1, 142.2, -185.6 , 0);
setMoveKey( spep_3 + 90 -3, 1, 143.8, -187.7 , 0);
setMoveKey( spep_3 + 92 -3, 1, 123.8, -154.5 , 0);
setMoveKey( spep_3 + 94 -3, 1, 147.1, -191.9 , 0);
setMoveKey( spep_3 + 96 -3, 1, 148.7, -194 , 0);
setMoveKey( spep_3 + 98 -3, 1, 150.4, -196.1 , 0);
setMoveKey( spep_3 + 100 -3, 1, 152, -198.2 , 0);
setMoveKey( spep_3 + 102 -3, 1, 153.7, -200.2 , 0);
setMoveKey( spep_3 + 104 -3, 1, 155.3, -202.3 , 0);
setMoveKey( spep_3 + 106 -3, 1, 157, -204.5 , 0);
setMoveKey( spep_3 + 108 -3, 1, 158.6, -206.5 , 0);
setMoveKey( spep_3 + 110 -3, 1, 160.3, -208.6 , 0);
setMoveKey( spep_3 + 112 -3, 1, 161.9, -210.7 , 0);
setMoveKey( spep_3 + 114 -3, 1, 163.6, -212.8 , 0);
setMoveKey( spep_3 + 116 -3, 1, 165.2, -214.9 , 0);
setMoveKey( spep_3 + 118 -3, 1, 166.8, -217 , 0);
setMoveKey( spep_3 + 120 -3, 1, 156.8, -218.8 , 0);
setMoveKey( spep_3 + 122 -3, 1, 146.8, -220.5 , 0);
setMoveKey( spep_3 + 124 -3, 1, 136.8, -222.3 , 0);
setMoveKey( spep_3 + 126 -3, 1, 126.8, -224.1 , 0);
setMoveKey( spep_3 + 128 -3, 1, 116.8, -225.8 , 0);


-- setScaleKey( spep_3 + 0, 1, 2.1, 2.1);
setScaleKey( spep_3 + 2 -2, 1, 2.25 *1.00, 2.25 *1.00);
setScaleKey( spep_3 + 4 -3, 1, 2.4 *0.99, 2.4 *0.99);
setScaleKey( spep_3 + 6 -3, 1, 2.55 *0.98, 2.55 *0.98);
setScaleKey( spep_3 + 8 -3, 1, 2.7 *0.97, 2.7 *0.97);
setScaleKey( spep_3 + 10 -3, 1, 2.87 *0.96, 2.87 *0.96);
setScaleKey( spep_3 + 12 -3, 1, 3.04 *0.95, 3.04 *0.95);
setScaleKey( spep_3 + 14 -3, 1, 3.21 *0.95, 3.21 *0.95);
setScaleKey( spep_3 + 16 -3, 1, 3.38 *0.95, 3.38 *0.95);
setScaleKey( spep_3 + 19 -3, 1, 3.55 *0.95, 3.55 *0.95);
setScaleKey( spep_3 + 20 -3, 1, 3.72 *0.95, 3.72 *0.95);
setScaleKey( spep_3 + 22 -3, 1, 3.89 *0.95, 3.89 *0.95);
setScaleKey( spep_3 + 24 -3, 1, 3.9 *0.95, 3.9 *0.95);
setScaleKey( spep_3 + 26 -3, 1, 3.9 *0.95, 3.9 *0.95);
setScaleKey( spep_3 + 28 -3, 1, 3.91 *0.95, 3.91 *0.95);
setScaleKey( spep_3 + 30 -3, 1, 3.91 *0.95, 3.91 *0.95);
setScaleKey( spep_3 + 32 -3, 1, 3.92 *0.95, 3.92 *0.95);
setScaleKey( spep_3 + 34 -3, 1, 3.92 *0.95, 3.92 *0.95);
setScaleKey( spep_3 + 36 -3, 1, 3.93 *0.95, 3.93 *0.95);
setScaleKey( spep_3 + 38 -3, 1, 3.93 *0.95, 3.93 *0.95);
setScaleKey( spep_3 + 40 -3, 1, 3.94 *0.95, 3.94 *0.95);
setScaleKey( spep_3 + 42 -3, 1, 3.94 *0.95, 3.94 *0.95);
setScaleKey( spep_3 + 44 -3, 1, 3.95 *0.95, 3.95 *0.95);
setScaleKey( spep_3 + 46 -3, 1, 3.95 *0.95, 3.95 *0.95);
setScaleKey( spep_3 + 48 -3, 1, 3.96 *0.95, 3.96 *0.95);
setScaleKey( spep_3 + 50 -3, 1, 3.96 *0.95, 3.96 *0.95);
setScaleKey( spep_3 + 52 -3, 1, 3.97 *0.95, 3.97 *0.95);
setScaleKey( spep_3 + 54 -3, 1, 3.97 *0.95, 3.97 *0.95);
setScaleKey( spep_3 + 56 -3, 1, 3.98 *0.95, 3.98 *0.95);
setScaleKey( spep_3 + 58 -3, 1, 3.98 *0.95, 3.98 *0.95);
setScaleKey( spep_3 + 60 -3, 1, 3.99 *0.95, 3.99 *0.95);
setScaleKey( spep_3 + 62 -3, 1, 3.99 *0.95, 3.99 *0.95);
setScaleKey( spep_3 + 64 -3, 1, 4 *0.95, 4 *0.95);
setScaleKey( spep_3 + 68 -3, 1, 4 *0.95, 4 *0.95);
setScaleKey( spep_3 + 70 -3, 1, 4.01 *0.95, 4.01 *0.95);
setScaleKey( spep_3 + 72 -3, 1, 4.01 *0.95, 4.01 *0.95);
setScaleKey( spep_3 + 74 -3, 1, 4.02 *0.95, 4.02 *0.95);
setScaleKey( spep_3 + 76 -3, 1, 4.02 *0.95, 4.02 *0.95);
setScaleKey( spep_3 + 78 -3, 1, 4.03 *0.95, 4.03 *0.95);
setScaleKey( spep_3 + 80 -3, 1, 4.03 *0.95, 4.03 *0.95);
setScaleKey( spep_3 + 82 -3, 1, 4.04 *0.95, 4.04 *0.95);
setScaleKey( spep_3 + 84 -3, 1, 4.04 *0.95, 4.04 *0.95);
setScaleKey( spep_3 + 86 -3, 1, 4.05 *0.95, 4.05 *0.95);
setScaleKey( spep_3 + 88 -3, 1, 4.05 *0.95, 4.05 *0.95);
setScaleKey( spep_3 + 90 -3, 1, 4.06 *0.95, 4.06 *0.95);
setScaleKey( spep_3 + 92 -3, 1, 4.06 *0.95, 4.06 *0.95);
setScaleKey( spep_3 + 94 -3, 1, 4.07 *0.95, 4.07 *0.95);
setScaleKey( spep_3 + 96 -3, 1, 4.07 *0.95, 4.07 *0.95);
setScaleKey( spep_3 + 98 -3, 1, 4.08 *0.95, 4.08 *0.95);
setScaleKey( spep_3 + 100 -3, 1, 4.08 *0.95, 4.08 *0.95);
setScaleKey( spep_3 + 102 -3, 1, 4.09 *0.95, 4.09 *0.95);
setScaleKey( spep_3 + 104 -3, 1, 4.09 *0.95, 4.09 *0.95);
setScaleKey( spep_3 + 106 -3, 1, 4.1 *0.95, 4.1 *0.95);
setScaleKey( spep_3 + 108 -3, 1, 4.1 *0.95, 4.1 *0.95);
setScaleKey( spep_3 + 110 -3, 1, 4.11 *0.94, 4.11 *0.94);
setScaleKey( spep_3 + 112 -3, 1, 4.11 *0.93, 4.11 *0.93);
setScaleKey( spep_3 + 114 -3, 1, 4.12 *0.92, 4.12 *0.92);
setScaleKey( spep_3 + 116 -3, 1, 4.12 *0.91, 4.12 *0.91);
setScaleKey( spep_3 + 118 -3, 1, 4.13 *0.90, 4.13 *0.90);
setScaleKey( spep_3 + 120 -3, 1, 3.9 *0.92, 3.9 *0.92);
setScaleKey( spep_3 + 122 -3, 1, 3.67 *0.94, 3.67 *0.94);
setScaleKey( spep_3 + 124 -3, 1, 3.45 *0.96, 3.45 *0.96);
setScaleKey( spep_3 + 126 -3, 1, 3.22 *0.98, 3.22 *0.98);
setScaleKey( spep_3 + 128 -3, 1, 3 *1.00, 3 *1.00);

setRotateKey( spep_3 + 0, 1, -38.4);
setRotateKey( spep_3 + 19, 1, -38.4);
setRotateKey( spep_3 + 20, 1, -46.6);
setRotateKey( spep_3 + 130 -5, 1, -46.6);


-- ** 音 ** --
SE013 = playSeVer2( spep_3 + 0-8, 1232, "", 0, 0, 0, 0.6); --画面遷移

SE014 = playSeVer2( spep_3 + 26 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 26 -3, SE014, -100);
setTimeStretch( SE014, 0.93, 30, 4);

SE015 = playSeVer2( spep_3 + 26 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 26 -3, SE015, 77);

SE016 = playSeVer2( spep_3 + 38 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 38 -3, SE016, -100);
setTimeStretch( SE016, 0.93, 30, 4);

SE017 = playSeVer2( spep_3 + 38 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 38 -3, SE017, 77);

SE018 = playSeVer2( spep_3 + 52 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 52 -3, SE018, -100);
setTimeStretch( SE018, 0.93, 30, 4);

SE019 = playSeVer2( spep_3 + 52 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 52 -3, SE019, 76);

SE020 = playSeVer2( spep_3 + 66 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 66 -3, SE020, -100);
setTimeStretch( SE020, 0.93, 30, 4);

SE021 = playSeVer2( spep_3 + 66 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 66 -3, SE021, 72);

SE022 = playSeVer2( spep_3 + 82 -3, 1251, "", 0, 0, 0, 0.6); --ぽこぽこ殴る
setPitch( spep_3 + 82 -3, SE022, -100);
setTimeStretch( SE022, 0.93, 30, 4);

SE023 = playSeVer2( spep_3 + 82 -3, 1013, "", 0, 0, 0, -1); --ぽこぽこ殴る
setSeVolumeByWorkId( spep_3 + 82 -3, SE023, 79);


-- ** 次の準備 ** --
spep_4 = spep_3 + 130 -4;

------------------------------------------------------
-- 蹴り飛ばし(100F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_13, 0x100, -1, 0, 0, 0);  --蹴り飛ばし(ef_004)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 100 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 100 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 100 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_14, 0x80, -1, 0, 0, 0);  --蹴り飛ばし(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 100 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 100 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 100 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 100 -4, 1, 0);

changeAnime( spep_4 + 0, 1, 106);
changeAnime( spep_4 + 16 -3, 1, 108);
changeAnime( spep_4 + 54 -3, 1, 105);

-- setMoveKey( spep_4 + 0, 1, 84.6, -3.6 , 0);
setMoveKey( spep_4 + 2 -2, 1, 85.6, -5.2 , 0);
setMoveKey( spep_4 + 4 -3, 1, 86.5, -6.8 , 0);
setMoveKey( spep_4 + 6 -3, 1, 87.4, -8.4 , 0);
setMoveKey( spep_4 + 8 -3, 1, 88.4, -10.1 , 0);
setMoveKey( spep_4 + 10 -3, 1, 89.4, -11.7 , 0);
setMoveKey( spep_4 + 12 -3, 1, 90.3, -13.4 , 0);
setMoveKey( spep_4 + 15 -3, 1, 75.9, -20 , 0);
setMoveKey( spep_4 + 16 -3, 1, 179, 53.7 , 0);
setMoveKey( spep_4 + 18 -3, 1, 161, 44.6 , 0);
setMoveKey( spep_4 + 20 -3, 1, 162.1, 29.9 , 0);
setMoveKey( spep_4 + 22 -3, 1, 101.3, 54.1 , 0);
setMoveKey( spep_4 + 24 -3, 1, 86, 1.5 , 0);
setMoveKey( spep_4 + 26 -3, 1, 134.2, 11.8 , 0);
setMoveKey( spep_4 + 28 -3, 1, 71.5, -0.7 , 0);
setMoveKey( spep_4 + 30 -3, 1, 69.6, -14.5 , 0);
setMoveKey( spep_4 + 32 -3, 1, 31.2, 13.1 , 0);
setMoveKey( spep_4 + 34 -3, 1, 31.4, -31.6 , 0);
setMoveKey( spep_4 + 36 -3, 1, 103, -14.1 , 0);
setMoveKey( spep_4 + 38 -3, 1, 52.8, -20.7 , 0);
setMoveKey( spep_4 + 40 -3, 1, 54.7, -19.5 , 0);
setMoveKey( spep_4 + 42 -3, 1, 60.8, -9.7 , 0);
setMoveKey( spep_4 + 44 -3, 1, 48.2, -13.6 , 0);
setMoveKey( spep_4 + 46 -3, 1, 40.2, -8.4 , 0);
setMoveKey( spep_4 + 48 -3, 1, 36.8, 5.9 , 0);
setMoveKey( spep_4 + 50 -3, 1, 20.7, -9.5 , 0);
setMoveKey( spep_4 + 53 -3, 1, 18.2, -8.2 , 0);
setMoveKey( spep_4 + 54 -3, 1, -8.4, -13.2 , 0);
setMoveKey( spep_4 + 56 -3, 1, -7.4, -12.1 , 0);
setMoveKey( spep_4 + 58 -3, 1, -6.5, -11.2 , 0);
setMoveKey( spep_4 + 60 -3, 1, -5.5, -10.3 , 0);
setMoveKey( spep_4 + 62 -3, 1, -4.6, -9.3 , 0);
setMoveKey( spep_4 + 64 -3, 1, -3.8, -8.5 , 0);
setMoveKey( spep_4 + 66 -3, 1, -2.9, -7.5 , 0);
setMoveKey( spep_4 + 68 -3, 1, -2.1, -6.6 , 0);
setMoveKey( spep_4 + 70 -3, 1, -1.3, -5.6 , 0);
setMoveKey( spep_4 + 72 -3, 1, -0.5, -4.7 , 0);
setMoveKey( spep_4 + 74 -3, 1, 0.4, -3.7 , 0);
setMoveKey( spep_4 + 76 -3, 1, 1.2, -2.8 , 0);
setMoveKey( spep_4 + 78 -3, 1, 2.1, -2 , 0);
setMoveKey( spep_4 + 80 -3, 1, 2.9, -1.1 , 0);
setMoveKey( spep_4 + 82 -3, 1, 3.8, -0.3 , 0);
setMoveKey( spep_4 + 84 -3, 1, 4.5, 0.5 , 0);
setMoveKey( spep_4 + 86 -3, 1, 5.3, 1.3 , 0);
setMoveKey( spep_4 + 88 -3, 1, 6.1, 2.1 , 0);
setMoveKey( spep_4 + 90 -3, 1, 6.9, 2.9 , 0);
setMoveKey( spep_4 + 92 -3, 1, 7.6, 3.6 , 0);
setMoveKey( spep_4 + 94 -3, 1, 8.3, 4.4 , 0);
setMoveKey( spep_4 + 96 -3, 1, 9, 5.2 , 0);
setMoveKey( spep_4 + 98 -3, 1, 9.7, 6 , 0);

-- setScaleKey( spep_4 + 0, 1, 2.28, 2.28);
setScaleKey( spep_4 + 2 -2, 1, 2.37 *0.95, 2.37 *0.95);
setScaleKey( spep_4 + 4 -3, 1, 2.45 *0.948, 2.45 *0.948);
setScaleKey( spep_4 + 6 -3, 1, 2.53 *0.946, 2.53 *0.946);
setScaleKey( spep_4 + 8 -3, 1, 2.61 *0.944, 2.61 *0.944);
setScaleKey( spep_4 + 10 -3, 1, 2.7 *0.942, 2.7 *0.942);
setScaleKey( spep_4 + 12 -3, 1, 2.78 *0.94, 2.78 *0.94);
setScaleKey( spep_4 + 15 -3, 1, 2.7 *0.945, 2.7 *0.945);
setScaleKey( spep_4 + 16 -3, 1, 2.63 *1.1, 2.63 *1.1);
setScaleKey( spep_4 + 18 -3, 1, 2.55 *1.1, 2.55 *1.1);
setScaleKey( spep_4 + 20 -3, 1, 2.47 *1.1, 2.47 *1.1);
setScaleKey( spep_4 + 22 -3, 1, 2.39 *1.1, 2.39 *1.1);
setScaleKey( spep_4 + 24 -3, 1, 2.31 *1.1, 2.31 *1.1);
setScaleKey( spep_4 + 26 -3, 1, 2.24 *1.1, 2.24 *1.1);
setScaleKey( spep_4 + 28 -3, 1, 2.16 *1.1, 2.16 *1.1);
setScaleKey( spep_4 + 30 -3, 1, 2.08 *1.1, 2.08 *1.1);
setScaleKey( spep_4 + 32 -3, 1, 2.22 *1.1, 2.22 *1.1);
setScaleKey( spep_4 + 34 -3, 1, 2.36 *1.1, 2.36 *1.1);
setScaleKey( spep_4 + 36 -3, 1, 2.5, 2.5);
setScaleKey( spep_4 + 38 -3, 1, 2.64, 2.64);
setScaleKey( spep_4 + 40 -3, 1, 2.72, 2.72);
setScaleKey( spep_4 + 42 -3, 1, 2.66, 2.66);
setScaleKey( spep_4 + 44 -3, 1, 2.38, 2.38);
setScaleKey( spep_4 + 46 -3, 1, 1.95, 1.95);
setScaleKey( spep_4 + 48 -3, 1, 1.39, 1.39);
setScaleKey( spep_4 + 50 -3, 1, 1.29, 1.29);
setScaleKey( spep_4 + 53 -3, 1, 0.94, 0.94);
setScaleKey( spep_4 + 54 -3, 1, 0.35, 0.35);
setScaleKey( spep_4 + 56 -3, 1, 0.34, 0.34);
setScaleKey( spep_4 + 58 -3, 1, 0.34, 0.34);
setScaleKey( spep_4 + 60 -3, 1, 0.33, 0.33);
setScaleKey( spep_4 + 64 -3, 1, 0.33, 0.33);
setScaleKey( spep_4 + 66 -3, 1, 0.32, 0.32);
setScaleKey( spep_4 + 70 -3, 1, 0.32, 0.32);
setScaleKey( spep_4 + 72 -3, 1, 0.31, 0.31);
setScaleKey( spep_4 + 78 -3, 1, 0.31, 0.31);
setScaleKey( spep_4 + 80 -3, 1, 0.3, 0.3);
setScaleKey( spep_4 + 88 -3, 1, 0.3, 0.3);
setScaleKey( spep_4 + 90 -3, 1, 0.29, 0.29);
setScaleKey( spep_4 + 100 -5, 1, 0.29, 0.29);

setRotateKey( spep_4 + 0, 1, -57.2);
setRotateKey( spep_4 + 15 -3, 1, -57.2);
setRotateKey( spep_4 + 16 -3, 1, 0);
setRotateKey( spep_4 + 38 -3, 1, 0);
setRotateKey( spep_4 + 40 -3, 1, 4.1);
setRotateKey( spep_4 + 42 -3, 1, 16.6);
setRotateKey( spep_4 + 44 -3, 1, 37.3);
setRotateKey( spep_4 + 46 -3, 1, 66.3);
setRotateKey( spep_4 + 48 -3, 1, 103.5);
setRotateKey( spep_4 + 50 -3, 1, 107.6);
setRotateKey( spep_4 + 53 -3, 1, 119.8);
setRotateKey( spep_4 + 54 -3, 1, 140.1);
setRotateKey( spep_4 + 56 -3, 1, 182.2);
setRotateKey( spep_4 + 58 -3, 1, 222.8);
setRotateKey( spep_4 + 60 -3, 1, 261.8);
setRotateKey( spep_4 + 62 -3, 1, 299.2);
setRotateKey( spep_4 + 64 -3, 1, 335);
setRotateKey( spep_4 + 66 -3, 1, 369.2);
setRotateKey( spep_4 + 68 -3, 1, 401.8);
setRotateKey( spep_4 + 70 -3, 1, 432.8);
setRotateKey( spep_4 + 72 -3, 1, 462.2);
setRotateKey( spep_4 + 74 -3, 1, 490.1);
setRotateKey( spep_4 + 76 -3, 1, 516.3);
setRotateKey( spep_4 + 78 -3, 1, 541);
setRotateKey( spep_4 + 80 -3, 1, 564.1);
setRotateKey( spep_4 + 82 -3, 1, 585.6);
setRotateKey( spep_4 + 84 -3, 1, 605.4);
setRotateKey( spep_4 + 86 -3, 1, 623.7);
setRotateKey( spep_4 + 88 -3, 1, 640.4);
setRotateKey( spep_4 + 90 -3, 1, 655.6);
setRotateKey( spep_4 + 92 -3, 1, 669.1);
setRotateKey( spep_4 + 94 -3, 1, 681);
setRotateKey( spep_4 + 96 -3, 1, 691.4);
setRotateKey( spep_4 + 98 -3, 1, 700.1);
setRotateKey( spep_4 + 100 -5, 1, 700.1);


-- ** 音 ** --
SE024 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_4 + 0, SE024, 79);

SE025 = playSeVer2( spep_4 + 14 -3, 1187, "", 0, 0, 0, -1); --蹴り
setSeVolumeByWorkId( spep_4 + 14 -3, SE025, 91);

SE026 = playSeVer2( spep_4 + 36 -3, 1121, "",spep_4 + 116 -3, 0, 6, -1); --敵飛んでいく
setSeVolumeByWorkId( spep_4 + 36 -3, SE026, 65);

SE027 = playSeVer2( spep_4 + 36 -3, 1183, "",spep_4 + 116 -3, 0, 6, -1); --敵飛んでいく
setSeVolumeByWorkId( spep_4 + 36 -3, SE027, 65);


-- ** 次の準備 ** --
spep_5 = spep_4 + 100 -4;

------------------------------------------------------
-- 吹っ飛ぶ敵～フィニッシュ(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_16, 0x100, -1, 0, 0, 0);  --吹っ飛ぶ敵～フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 100, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 100, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 100, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 100, base5, 255);
setEffAlphaKey( spep_5 + 100, base5, 0);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 - 0,  1600, 0x100, -1, 0, 70, -60);  --ひび割れ
setEffMoveKey( spep_5 - 0, hibiware, 70, -60, 0);
setEffMoveKey( spep_5 + 110, hibiware, 70, -60, 0);
setEffScaleKey( spep_5 - 0, hibiware, 1.0, 1.0);
setEffScaleKey( spep_5 + 110, hibiware, 1.0, 1.0);
setEffRotateKey( spep_5 - 0, hibiware, 0);
setEffRotateKey( spep_5 + 110, hibiware, 0);
setEffAlphaKey( spep_5 - 0, hibiware, 0);
setEffAlphaKey( spep_5 + 9, hibiware, 0);
setEffAlphaKey( spep_5 + 10, hibiware, 255);
setEffAlphaKey( spep_5 + 110, hibiware, 255);


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 11,  10005, 99, 0x100, -1, 0, 5, 180);  --ガッ
setEffShake( spep_5 + 11, ctga, 14, 20);

setEffMoveKey( spep_5 + 11, ctga, 5, 180 , 0);
setEffMoveKey( spep_5 + 110, ctga, 5, 180 , 0);

setEffScaleKey( spep_5 + 11, ctga, 3.5, 3.5);
setEffScaleKey( spep_5 + 110, ctga, 3.5, 3.5);

setEffRotateKey( spep_5 + 11, ctga, -20.9);
setEffRotateKey( spep_5 + 12, ctga, -24.9);
setEffRotateKey( spep_5 + 13, ctga, -24.9);
setEffRotateKey( spep_5 + 14, ctga, -20.9);
setEffRotateKey( spep_5 + 15, ctga, -20.9);
setEffRotateKey( spep_5 + 16, ctga, -24.9);
setEffRotateKey( spep_5 + 17, ctga, -24.9);
setEffRotateKey( spep_5 + 18, ctga, -20.9);
setEffRotateKey( spep_5 + 19, ctga, -20.9);
setEffRotateKey( spep_5 + 20, ctga, -24.9);
setEffRotateKey( spep_5 + 21, ctga, -24.9);
setEffRotateKey( spep_5 + 22, ctga, -20.9);
setEffRotateKey( spep_5 + 23, ctga, -20.9);
setEffRotateKey( spep_5 + 24, ctga, -24.9);
setEffRotateKey( spep_5 + 110, ctga, -24.9);

setEffAlphaKey( spep_5 + 11, ctga, 255);
setEffAlphaKey( spep_5 + 110, ctga, 255);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1);

changeAnime( spep_5 + 0, 1, 107);  --ダメージ 手前

-- setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0);
setMoveKey( spep_5 + 1, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0);
setMoveKey( spep_5 + 3, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0);
setMoveKey( spep_5 + 5, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0);
setMoveKey( spep_5 + 7, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0);
setMoveKey( spep_5 + 9, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0);
setMoveKey( spep_5 + 11, 1, 130, -142.1 , 0);
setMoveKey( spep_5 + 12, 1, 130, -142.1 , 0);
setMoveKey( spep_5 + 110, 1, 130, -142.1 , 0);

setScaleKey( spep_5 + 0, 1, 0.35, 0.35);
setScaleKey( spep_5 + 1, 1, 0.55, 0.55);
setScaleKey( spep_5 + 2, 1, 0.55, 0.55);
setScaleKey( spep_5 + 3, 1, 0.75, 0.75);
setScaleKey( spep_5 + 4, 1, 0.75, 0.75);
setScaleKey( spep_5 + 5, 1, 1.0, 1.0);
setScaleKey( spep_5 + 6, 1, 1.0, 1.0);
setScaleKey( spep_5 + 7, 1, 1.4, 1.4);
setScaleKey( spep_5 + 8, 1, 1.4, 1.4);
setScaleKey( spep_5 + 9, 1, 1.68, 1.68);
setScaleKey( spep_5 + 10, 1, 1.68, 1.68);
setScaleKey( spep_5 + 11, 1, 1.79, 1.79);
setScaleKey( spep_5 + 12, 1, 1.79, 1.79);
setScaleKey( spep_5 + 13, 1, 1.68, 1.68);
setScaleKey( spep_5 + 14, 1, 1.68, 1.68);
setScaleKey( spep_5 + 15, 1, 1.79, 1.79);
setScaleKey( spep_5 + 16, 1, 1.79, 1.79);
setScaleKey( spep_5 + 17, 1, 1.68, 1.68);
setScaleKey( spep_5 + 18, 1, 1.68, 1.68);
setScaleKey( spep_5 + 19, 1, 1.79, 1.79);
setScaleKey( spep_5 + 20, 1, 1.79, 1.79);
setScaleKey( spep_5 + 21, 1, 1.68, 1.68);
setScaleKey( spep_5 + 22, 1, 1.68, 1.68);
setScaleKey( spep_5 + 23, 1, 1.79, 1.79);
setScaleKey( spep_5 + 24, 1, 1.79, 1.79);
setScaleKey( spep_5 + 110, 1, 1.79, 1.79);

setRotateKey( spep_5 + 0, 1, 30);
setRotateKey( spep_5 + 1, 1, 65);
setRotateKey( spep_5 + 2, 1, 65);
setRotateKey( spep_5 + 3, 1, 110);
setRotateKey( spep_5 + 4, 1, 110);
setRotateKey( spep_5 + 5, 1, 165);
setRotateKey( spep_5 + 6, 1, 165);
setRotateKey( spep_5 + 7, 1, 230);
setRotateKey( spep_5 + 8, 1, 230);
setRotateKey( spep_5 + 9, 1, 305);
setRotateKey( spep_5 + 10, 1, 305);
setRotateKey( spep_5 + 11, 1, 390);
setRotateKey( spep_5 + 110, 1, 390);


-- ** 音 ** --
SE028 = playSeVer2( spep_5 + 10, 1025, "", 0, 0, 0, -1); --画面割れる

SE029 = playSeVer2( spep_5 + 10, 1054, "", 0, 0, 0, -1); --画面割れる


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 5);
endPhase( spep_5 + 100);


end
