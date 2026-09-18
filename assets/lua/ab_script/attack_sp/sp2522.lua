--1026380:バビディ_プイプイのナイスショット
--sp_effect_a2_00205

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
SP_01 = 161501;	--開幕	ef_001
SP_02 = 161502;	--対峙～ビリビリ　前面	ef_002
SP_03 = 161504;	--対峙～ビリビリ　背面	ef_003
SP_04 = 161505;	--プイプイ呼び出し	ef_004
SP_05 = 161507;	--フィニッシュ　前面	ef_005
SP_06 = 161508;	--フィニッシュ　背面	ef_006

--敵側
SP_02r = 161503;	--対峙～ビリビリ　前面　敵側	ef_002e
SP_04r = 161506;	--プイプイ呼び出し　敵側	ef_004e

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
-- 開幕(98F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 98, 0x80, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 98, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 98 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 98 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 98, first_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 98, 0x100, -1, 0, -50, 0 );  --開幕	ef_001
setEffShake( spep_0 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, -50 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, -50 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 2.2 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.4, 2.2 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 17, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98 -2, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98 -1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 0 );

spep_x = spep_0 + 4;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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

-- ** 音 ** --
--マント翻る
SE001 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--指さす
SE003 = playSeVer2( spep_0 + 22, 20, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1189, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 86, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;


------------------------------------------------------
-- 対峙～ビリビリ(228F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
biribiri_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --対峙～ビリビリ　前面	ef_002
setEffMoveKey( spep_1 + 0, biribiri_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, biribiri_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, biribiri_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, biribiri_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, biribiri_f, 0 );
setEffRotateKey( spep_1 + 228, biribiri_f, 0 );
setEffAlphaKey( spep_1 + 0, biribiri_f, 255 );
setEffAlphaKey( spep_1 + 228 -2, biribiri_f, 255 );
setEffAlphaKey( spep_1 + 228 -1, biribiri_f, 255 );
setEffAlphaKey( spep_1 + 228, biribiri_f, 0 );

biribiri_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --対峙～ビリビリ　背面	ef_003
setEffMoveKey( spep_1 + 0, biribiri_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, biribiri_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, biribiri_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, biribiri_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, biribiri_b, 0 );
setEffRotateKey( spep_1 + 228, biribiri_b, 0 );
setEffAlphaKey( spep_1 + 0, biribiri_b, 255 );
setEffAlphaKey( spep_1 + 228 -2, biribiri_b, 255 );
setEffAlphaKey( spep_1 + 228 -1, biribiri_b, 255 );
setEffAlphaKey( spep_1 + 228, biribiri_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -1 + 60, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 210.1, 190 , 0 );
setMoveKey( spep_1 -1 + 2, 1, 209.4, 190 , 0 );
setMoveKey( spep_1 -1 + 4, 1, 208.7, 190 , 0 );
setMoveKey( spep_1 -1 + 6, 1, 208, 190 , 0 );
setMoveKey( spep_1 -1 + 8, 1, 207.3, 190 , 0 );
setMoveKey( spep_1 -1 + 10, 1, 206.6, 190 , 0 );
setMoveKey( spep_1 -1 + 12, 1, 205.9, 190 , 0 );
setMoveKey( spep_1 -1 + 14, 1, 205.2, 190 , 0 );
setMoveKey( spep_1 -1 + 16, 1, 204.5, 190 , 0 );
setMoveKey( spep_1 -1 + 18, 1, 203.8, 190 , 0 );
setMoveKey( spep_1 -1 + 20, 1, 203.2, 190 , 0 );
setMoveKey( spep_1 -1 + 22, 1, 202.5, 190 , 0 );
setMoveKey( spep_1 -1 + 24, 1, 201.8, 190 , 0 );
setMoveKey( spep_1 -1 + 26, 1, 201.1, 190 , 0 );
setMoveKey( spep_1 -1 + 28, 1, 200.4, 190 , 0 );
setMoveKey( spep_1 -1 + 30, 1, 199.7, 190 , 0 );
setMoveKey( spep_1 -1 + 32, 1, 199, 190 , 0 );
setMoveKey( spep_1 -1 + 34, 1, 198.3, 190 , 0 );
setMoveKey( spep_1 -1 + 36, 1, 197.6, 190 , 0 );
setMoveKey( spep_1 -1 + 38, 1, 196.9, 190 , 0 );
setMoveKey( spep_1 -1 + 40, 1, 196.3, 190 , 0 );
setMoveKey( spep_1 -1 + 42, 1, 195.6, 190 , 0 );
setMoveKey( spep_1 -1 + 44, 1, 194.9, 190 , 0 );
setMoveKey( spep_1 -1 + 46, 1, 194.2, 190 , 0 );
setMoveKey( spep_1 -1 + 48, 1, 193.5, 190 , 0 );
setMoveKey( spep_1 -1 + 50, 1, 192.8, 190 , 0 );
setMoveKey( spep_1 -1 + 52, 1, 192.1, 190 , 0 );
setMoveKey( spep_1 -1 + 54, 1, 191.4, 190 , 0 );
setMoveKey( spep_1 -1 + 56, 1, 190.7, 190 , 0 );
setMoveKey( spep_1 -1 + 59, 1, 190.1, 190 , 0 );
setMoveKey( spep_1 -1 + 60, 1, 190.1, 190 , 0 );

setScaleKey( spep_1 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_1 -1 + 60, 1, 0.4, 0.4 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -1 + 60, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 164, 1, 1 );
changeAnime( spep_1 -1 + 164, 1, 104 );

setMoveKey( spep_1 -1 + 164, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 166, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 168, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 170, 1, 119.9, 120.1 , 0 );

setScaleKey( spep_1 -1 + 164, 1, 1.7, 1.7 );

setRotateKey( spep_1 -1 + 164, 1, 0 );

-- ** 音 ** --
--風が吹く
SE005 = playSeVer2( spep_1 + 0 -6, 8, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 14 -6, 1332, "", 0, 0, 0, -1);

--魔術溜める
SE007 = playSeVer2( spep_1 + 84, 1289, "",spep_1 + 168, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 84, SE007, 120 );
SE008 = playSeVer2( spep_1 + 84, 1264, "",spep_1 + 168, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 84, SE008, 70 );
setPitch( spep_1 + 84, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );
SE009 = playSeVer2( spep_1 + 106, 1290, "", 0, 0, 0, -1);

--魔術発射
SE010 = playSeVer2( spep_1 + 128, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 128, SE010, 71 );
SE011 = playSeVer2( spep_1 + 128, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 128, SE011, 84 );
SE012 = playSeVer2( spep_1 + 128, 1022, "",spep_1 + 212, 0, 16, -1);
SE013 = playSeVer2( spep_1 + 134, 1312, "",spep_1 + 212, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 170; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 119.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 123.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 119.9, 116.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 123.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 119.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 123.9, 120.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.7, 1.7 );
    setScaleKey( SP_dodge + 10, 1, 1.7, 1.7 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  
    
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

setDisp( spep_1 -1 + 229, 1, 0 );
changeAnime( spep_1 -1 + 198, 1, 106 );

setMoveKey( spep_1 -1 + 172, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 174, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 176, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 178, 1, 119.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 180, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 182, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 184, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 186, 1, 119.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 188, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 190, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 192, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 194, 1, 119.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 196, 1, 121.9, 118.1 , 0 );
setMoveKey( spep_1 -1 + 197, 1, 121.9, 118.1 , 0 );--
setMoveKey( spep_1 -1 + 198, 1, 110.1, 137.5 , 0 );
setMoveKey( spep_1 -1 + 200, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 202, 1, 112.2, 139.5 , 0 );
setMoveKey( spep_1 -1 + 204, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 206, 1, 112.2, 139.5 , 0 );
setMoveKey( spep_1 -1 + 208, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 210, 1, 112.2, 139.5 , 0 );
setMoveKey( spep_1 -1 + 212, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 214, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 216, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 218, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 220, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 222, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 224, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 226, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 228, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 228, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 229, 1, 108.2, 135.5 , 0 );

setScaleKey( spep_1 -1 + 229, 1, 1.7, 1.7 );

setRotateKey( spep_1 -1 + 197, 1, 0 );--
setRotateKey( spep_1 -1 + 198, 1, -50.2 );
setRotateKey( spep_1 -1 + 229, 1, -50.2 );

-- ** 音 ** --
--魔術ヒット
SE014 = playSeVer2( spep_1 + 192, 1231, "",spep_1 + 242, 0, 10, 0.6);
setSeVolumeByWorkId( spep_1 + 192, SE014, 178 );
SE015 = playSeVer2( spep_1 + 194, 1043, "",spep_1 + 242, 0, 10, 0.6);

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
-- playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- プイプイ呼び出し(160F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
puipui = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --プイプイ呼び出し	ef_004
setEffMoveKey( spep_3 + 0, puipui, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, puipui, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, puipui, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, puipui, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, puipui, 0 );
setEffRotateKey( spep_3 + 160, puipui, 0 );
setEffAlphaKey( spep_3 + 0, puipui, 255 );
setEffAlphaKey( spep_3 + 160 -2, puipui, 255 );
setEffAlphaKey( spep_3 + 160 -1, puipui, 255 );
setEffAlphaKey( spep_3 + 160, puipui, 0 );

-- ** 音 ** --
--水晶持ち上がる
SE017 = playSeVer2( spep_3 + 2, 1184, "",spep_3 + 114, 0, 70, -1);
SE018 = playSeVer2( spep_3 + 2, 44, "", 0, 0, 0, -1);

--瞬間移動
SE019 = playSeVer2( spep_3 + 54, 1109, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 54, 43, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 98, 1274, "",spep_3 + 154, 0, 16, -1);
SE022 = playSeVer2( spep_3 + 108, 1262, "",spep_3 + 154, 0, 16, -1);

--気弾発射
SE023 = playSeVer2( spep_3 + 136, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 136, SE023, 81 );
SE024 = playSeVer2( spep_3 + 136, 1145, "",spep_3 + 200, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 136, SE024, 89 );

--気弾飛んでいく
SE025 = playSeVer2( spep_3 + 150, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 160;


------------------------------------------------------
-- フィニッシュ(150F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ　前面	ef_005
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 150, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 150, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背面	ef_006
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 150, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 150, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -1 + 32, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 59, 71.2 , 0 );
setMoveKey( spep_4 -1 + 32, 1, 59, 71.2 , 0 );

setScaleKey( spep_4 + 0, 1, 0.71, 0.71 );
setScaleKey( spep_4 -1 + 32, 1, 0.71, 0.71 );

setRotateKey( spep_4 + 0, 1, -56.7 );
setRotateKey( spep_4 -1 + 32, 1, -56.7 );

-- ** 音 ** --
--爆発
SE026 = playSeVer2( spep_4 + 22, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 22, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 150 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 32 );
endPhase( spep_4 + 140 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(98F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 98, 0x80, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 98, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 98 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 98 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 98, first_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 98, 0x100, -1, 0, -50, 0 );  --開幕	ef_001
setEffShake( spep_0 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, -50 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, -50 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 2.2 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.4, 2.2 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 17, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98 -2, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98 -1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 0 );

spep_x = spep_0 + 4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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

-- ** 音 ** --
--マント翻る
SE001 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--指さす
SE003 = playSeVer2( spep_0 + 22, 20, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1189, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 86, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;


------------------------------------------------------
-- 対峙～ビリビリ(228F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
biribiri_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --対峙～ビリビリ　前面	ef_002
setEffMoveKey( spep_1 + 0, biribiri_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, biribiri_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, biribiri_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, biribiri_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, biribiri_f, 0 );
setEffRotateKey( spep_1 + 228, biribiri_f, 0 );
setEffAlphaKey( spep_1 + 0, biribiri_f, 255 );
setEffAlphaKey( spep_1 + 228 -2, biribiri_f, 255 );
setEffAlphaKey( spep_1 + 228 -1, biribiri_f, 255 );
setEffAlphaKey( spep_1 + 228, biribiri_f, 0 );

biribiri_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --対峙～ビリビリ　背面	ef_003
setEffMoveKey( spep_1 + 0, biribiri_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, biribiri_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, biribiri_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, biribiri_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, biribiri_b, 0 );
setEffRotateKey( spep_1 + 228, biribiri_b, 0 );
setEffAlphaKey( spep_1 + 0, biribiri_b, 255 );
setEffAlphaKey( spep_1 + 228 -2, biribiri_b, 255 );
setEffAlphaKey( spep_1 + 228 -1, biribiri_b, 255 );
setEffAlphaKey( spep_1 + 228, biribiri_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -1 + 60, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 210.1, 190 , 0 );
setMoveKey( spep_1 -1 + 2, 1, 209.4, 190 , 0 );
setMoveKey( spep_1 -1 + 4, 1, 208.7, 190 , 0 );
setMoveKey( spep_1 -1 + 6, 1, 208, 190 , 0 );
setMoveKey( spep_1 -1 + 8, 1, 207.3, 190 , 0 );
setMoveKey( spep_1 -1 + 10, 1, 206.6, 190 , 0 );
setMoveKey( spep_1 -1 + 12, 1, 205.9, 190 , 0 );
setMoveKey( spep_1 -1 + 14, 1, 205.2, 190 , 0 );
setMoveKey( spep_1 -1 + 16, 1, 204.5, 190 , 0 );
setMoveKey( spep_1 -1 + 18, 1, 203.8, 190 , 0 );
setMoveKey( spep_1 -1 + 20, 1, 203.2, 190 , 0 );
setMoveKey( spep_1 -1 + 22, 1, 202.5, 190 , 0 );
setMoveKey( spep_1 -1 + 24, 1, 201.8, 190 , 0 );
setMoveKey( spep_1 -1 + 26, 1, 201.1, 190 , 0 );
setMoveKey( spep_1 -1 + 28, 1, 200.4, 190 , 0 );
setMoveKey( spep_1 -1 + 30, 1, 199.7, 190 , 0 );
setMoveKey( spep_1 -1 + 32, 1, 199, 190 , 0 );
setMoveKey( spep_1 -1 + 34, 1, 198.3, 190 , 0 );
setMoveKey( spep_1 -1 + 36, 1, 197.6, 190 , 0 );
setMoveKey( spep_1 -1 + 38, 1, 196.9, 190 , 0 );
setMoveKey( spep_1 -1 + 40, 1, 196.3, 190 , 0 );
setMoveKey( spep_1 -1 + 42, 1, 195.6, 190 , 0 );
setMoveKey( spep_1 -1 + 44, 1, 194.9, 190 , 0 );
setMoveKey( spep_1 -1 + 46, 1, 194.2, 190 , 0 );
setMoveKey( spep_1 -1 + 48, 1, 193.5, 190 , 0 );
setMoveKey( spep_1 -1 + 50, 1, 192.8, 190 , 0 );
setMoveKey( spep_1 -1 + 52, 1, 192.1, 190 , 0 );
setMoveKey( spep_1 -1 + 54, 1, 191.4, 190 , 0 );
setMoveKey( spep_1 -1 + 56, 1, 190.7, 190 , 0 );
setMoveKey( spep_1 -1 + 59, 1, 190.1, 190 , 0 );
setMoveKey( spep_1 -1 + 60, 1, 190.1, 190 , 0 );

setScaleKey( spep_1 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_1 -1 + 60, 1, 0.4, 0.4 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -1 + 60, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 164, 1, 1 );
changeAnime( spep_1 -1 + 164, 1, 104 );

setMoveKey( spep_1 -1 + 164, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 166, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 168, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 170, 1, 119.9, 120.1 , 0 );

setScaleKey( spep_1 -1 + 164, 1, 1.7, 1.7 );

setRotateKey( spep_1 -1 + 164, 1, 0 );

-- ** 音 ** --
--風が吹く
SE005 = playSeVer2( spep_1 + 0 -6, 8, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 14 -6, 1332, "", 0, 0, 0, -1);

--魔術溜める
SE007 = playSeVer2( spep_1 + 84, 1289, "",spep_1 + 168, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 84, SE007, 120 );
SE008 = playSeVer2( spep_1 + 84, 1264, "",spep_1 + 168, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 84, SE008, 70 );
setPitch( spep_1 + 84, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );
SE009 = playSeVer2( spep_1 + 106, 1290, "", 0, 0, 0, -1);

--魔術発射
SE010 = playSeVer2( spep_1 + 128, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 128, SE010, 71 );
SE011 = playSeVer2( spep_1 + 128, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 128, SE011, 84 );
SE012 = playSeVer2( spep_1 + 128, 1022, "",spep_1 + 212, 0, 16, -1);
SE013 = playSeVer2( spep_1 + 134, 1312, "",spep_1 + 212, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 170; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 119.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 123.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 119.9, 116.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 123.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 119.9, 120.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 123.9, 120.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.7, 1.7 );
    setScaleKey( SP_dodge + 10, 1, 1.7, 1.7 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  
    
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

setDisp( spep_1 -1 + 229, 1, 0 );
changeAnime( spep_1 -1 + 198, 1, 106 );

setMoveKey( spep_1 -1 + 172, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 174, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 176, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 178, 1, 119.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 180, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 182, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 184, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 186, 1, 119.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 188, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 190, 1, 119.9, 116.1 , 0 );
setMoveKey( spep_1 -1 + 192, 1, 123.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 194, 1, 119.9, 120.1 , 0 );
setMoveKey( spep_1 -1 + 196, 1, 121.9, 118.1 , 0 );
setMoveKey( spep_1 -1 + 197, 1, 121.9, 118.1 , 0 );--
setMoveKey( spep_1 -1 + 198, 1, 110.1, 137.5 , 0 );
setMoveKey( spep_1 -1 + 200, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 202, 1, 112.2, 139.5 , 0 );
setMoveKey( spep_1 -1 + 204, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 206, 1, 112.2, 139.5 , 0 );
setMoveKey( spep_1 -1 + 208, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 210, 1, 112.2, 139.5 , 0 );
setMoveKey( spep_1 -1 + 212, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 214, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 216, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 218, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 220, 1, 112.2, 131.5 , 0 );
setMoveKey( spep_1 -1 + 222, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 224, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 226, 1, 108.2, 141.5 , 0 );
setMoveKey( spep_1 -1 + 228, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 228, 1, 108.2, 135.5 , 0 );
setMoveKey( spep_1 -1 + 229, 1, 108.2, 135.5 , 0 );

setScaleKey( spep_1 -1 + 229, 1, 1.7, 1.7 );

setRotateKey( spep_1 -1 + 197, 1, 0 );--
setRotateKey( spep_1 -1 + 198, 1, -50.2 );
setRotateKey( spep_1 -1 + 229, 1, -50.2 );

-- ** 音 ** --
--魔術ヒット
SE014 = playSeVer2( spep_1 + 192, 1231, "",spep_1 + 242, 0, 10, 0.6);
setSeVolumeByWorkId( spep_1 + 192, SE014, 178 );
SE015 = playSeVer2( spep_1 + 194, 1043, "",spep_1 + 242, 0, 10, 0.6);

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
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
-- プイプイ呼び出し(160F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
puipui = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --プイプイ呼び出し	ef_004
setEffMoveKey( spep_3 + 0, puipui, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, puipui, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, puipui, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, puipui, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, puipui, 0 );
setEffRotateKey( spep_3 + 160, puipui, 0 );
setEffAlphaKey( spep_3 + 0, puipui, 255 );
setEffAlphaKey( spep_3 + 160 -2, puipui, 255 );
setEffAlphaKey( spep_3 + 160 -1, puipui, 255 );
setEffAlphaKey( spep_3 + 160, puipui, 0 );

-- ** 音 ** --
--水晶持ち上がる
SE017 = playSeVer2( spep_3 + 2, 1184, "",spep_3 + 114, 0, 70, -1);
SE018 = playSeVer2( spep_3 + 2, 44, "", 0, 0, 0, -1);

--瞬間移動
SE019 = playSeVer2( spep_3 + 54, 1109, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 54, 43, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 98, 1274, "",spep_3 + 154, 0, 16, -1);
SE022 = playSeVer2( spep_3 + 108, 1262, "",spep_3 + 154, 0, 16, -1);

--気弾発射
SE023 = playSeVer2( spep_3 + 136, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 136, SE023, 81 );
SE024 = playSeVer2( spep_3 + 136, 1145, "",spep_3 + 200, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 136, SE024, 89 );

--気弾飛んでいく
SE025 = playSeVer2( spep_3 + 150, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 160;


------------------------------------------------------
-- フィニッシュ(150F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ　前面	ef_005
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 150, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 150, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背面	ef_006
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 150, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 150, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -1 + 32, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 59, 71.2 , 0 );
setMoveKey( spep_4 -1 + 32, 1, 59, 71.2 , 0 );

setScaleKey( spep_4 + 0, 1, 0.71, 0.71 );
setScaleKey( spep_4 -1 + 32, 1, 0.71, 0.71 );

setRotateKey( spep_4 + 0, 1, -56.7 );
setRotateKey( spep_4 -1 + 32, 1, -56.7 );

-- ** 音 ** --
--爆発
SE026 = playSeVer2( spep_4 + 22, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 22, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 150 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 32 );
endPhase( spep_4 + 140 );

end