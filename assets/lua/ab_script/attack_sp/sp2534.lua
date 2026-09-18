--1026430:魔人ブウ(悪)_ミスティックボールアタック
--sp_effect_b1_00252

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
SP_01 = 161758;	--開幕〜カードカットインまで	ef_001
SP_02 = 161760;	--突撃〜フィニッシュまで	ef_002
SP_03 = 161762;	--突撃〜フィニッシュまで	ef_002b

--敵側
SP_01r = 161759; --開幕〜カードカットインまで ef_001r
SP_02r = 161761; --突撃〜フィニッシュまで   ef_002r
SP_03r = 161763; --突撃〜フィニッシュまで   ef_002br

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
-- 開幕〜カードカットインまで(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕〜カードカットインまで	ef_001
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 186, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 186, first, 255 );

spep_x = spep_0 + 36 -8;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0 -28, 535.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0 -28, 535.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0 -28, 535.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 42, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 79 );
SE004 = playSeVer2( spep_0 + 42, 1170, "",spep_0 + 92, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 79 );

--丸くなる
SE005 = playSeVer2( spep_0 + 86, 1246, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 86, 1291, "",spep_0 + 110, 0, 8, -1);
SE007 = playSeVer2( spep_0 + 86, 1293, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 98, 1309, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE008, 141 );
setPitch( spep_0 + 98, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );

--飛んでくる
SE009 = playSeVer2( spep_0 + 120, 1121, "",spep_0 + 208, 0, 14, -1);
setPitch( spep_0 + 120, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 120, 1117, "",spep_0 + 208, 0, 14, -1);
SE011 = playSeVer2( spep_0 + 120, 1019, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 120, 1027, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);       -- 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 162; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    
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

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突撃〜フィニッシュまで(622F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --突撃〜フィニッシュまで	ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 622, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 622, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 622, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 622, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --突撃〜フィニッシュまで  ef_002b
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 622, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 622, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 622, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 622, finish_b, 255 );

a1 = 1;
-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -a1 + 82, 1, 0 );
setDisp( spep_2 -a1 + 180, 1, 1 );
setDisp( spep_2 -a1 + 262, 1, 0 );
setDisp( spep_2 -a1 + 442, 1, 1 );
setDisp( spep_2 -a1 + 490, 1, 0 );
changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 -a1 + 22, 1, 8 );
changeAnime( spep_2 -a1 + 180, 1, 8 );
changeAnime( spep_2 -a1 + 192, 1, 6 );
changeAnime( spep_2 -a1 + 442, 1, 8 );
changeAnime( spep_2 -a1 + 470, 1, 6 );

setMoveKey( spep_2 + 0, 1, 17.2, -29.8 , 0 );
setMoveKey( spep_2 -a1 + 2, 1, 16.1, -29.8 , 0 );
setMoveKey( spep_2 -a1 + 4, 1, 15.1, -29.7 , 0 );
setMoveKey( spep_2 -a1 + 6, 1, 14.1, -29.7 , 0 );
setMoveKey( spep_2 -a1 + 8, 1, 13.1, -29.6 , 0 );
setMoveKey( spep_2 -a1 + 10, 1, 12.1, -29.5 , 0 );
setMoveKey( spep_2 -a1 + 12, 1, 11, -29.5 , 0 );
setMoveKey( spep_2 -a1 + 14, 1, 10, -29.4 , 0 );
setMoveKey( spep_2 -a1 + 16, 1, 9, -29.4 , 0 );
setMoveKey( spep_2 -a1 + 18, 1, 8, -29.3 , 0 );
setMoveKey( spep_2 -a1 + 21, 1, 7, -29.3 , 0 );
setMoveKey( spep_2 -a1 + 22, 1, -63.1, -7.1 , 0 ); --8
setMoveKey( spep_2 -a1 + 23, 1, -63.1, -7.1 , 0 );
setMoveKey( spep_2 -a1 + 24, 1, -83.7, -7.1 , 0 );
setMoveKey( spep_2 -a1 + 25, 1, -83.7, -7.1 , 0 );
setMoveKey( spep_2 -a1 + 26, 1, -68.4, -4.1 , 0 );
setMoveKey( spep_2 -a1 + 27, 1, -68.4, -4.1 , 0 );
setMoveKey( spep_2 -a1 + 28, 1, -51.6, -1.9 , 0 );
setMoveKey( spep_2 -a1 + 29, 1, -51.6, -1.9 , 0 );
setMoveKey( spep_2 -a1 + 30, 1, -79.8, -1.3 , 0 );
setMoveKey( spep_2 -a1 + 31, 1, -79.8, -1.3 , 0 );
setMoveKey( spep_2 -a1 + 32, 1, -60.4, 3.3 , 0 );
setMoveKey( spep_2 -a1 + 33, 1, -60.4, 3.3 , 0 );
setMoveKey( spep_2 -a1 + 34, 1, -62.7, 12 , 0 );
setMoveKey( spep_2 -a1 + 35, 1, -62.7, 12 , 0 );
setMoveKey( spep_2 -a1 + 36, 1, -79.6, 17 , 0 );
setMoveKey( spep_2 -a1 + 37, 1, -79.6, 17 , 0 );
setMoveKey( spep_2 -a1 + 38, 1, -74.4, 10.3 , 0 );
setMoveKey( spep_2 -a1 + 39, 1, -74.4, 10.3 , 0 );
setMoveKey( spep_2 -a1 + 40, 1, -81.5, 23.1 , 0 );
setMoveKey( spep_2 -a1 + 41, 1, -81.5, 23.1 , 0 );
setMoveKey( spep_2 -a1 + 42, 1, -96.4, 17.3 , 0 );
setMoveKey( spep_2 -a1 + 43, 1, -96.4, 17.3 , 0 );
setMoveKey( spep_2 -a1 + 44, 1, -102.9, 30.8 , 0 );
setMoveKey( spep_2 -a1 + 45, 1, -102.9, 30.8 , 0 );
setMoveKey( spep_2 -a1 + 46, 1, -96.6, 23.5 , 0 );
setMoveKey( spep_2 -a1 + 47, 1, -96.6, 23.5 , 0 );
setMoveKey( spep_2 -a1 + 48, 1, -102.5, 35.5 , 0 );
setMoveKey( spep_2 -a1 + 49, 1, -102.5, 35.5 , 0 );
setMoveKey( spep_2 -a1 + 50, 1, -116.3, 29 , 0 );
setMoveKey( spep_2 -a1 + 51, 1, -116.3, 29 , 0 );
setMoveKey( spep_2 -a1 + 52, 1, -121.6, 41.8 , 0 );
setMoveKey( spep_2 -a1 + 53, 1, -121.6, 41.8 , 0 );
setMoveKey( spep_2 -a1 + 54, 1, -114.1, 33.8 , 0 );
setMoveKey( spep_2 -a1 + 55, 1, -114.1, 33.8 , 0 );
setMoveKey( spep_2 -a1 + 56, 1, -118.9, 45.2 , 0 );
setMoveKey( spep_2 -a1 + 57, 1, -118.9, 45.2 , 0 );
setMoveKey( spep_2 -a1 + 58, 1, -131.4, 38 , 0 );
setMoveKey( spep_2 -a1 + 59, 1, -131.4, 38 , 0 );
setMoveKey( spep_2 -a1 + 60, 1, -129.9, 44.4 , 0 );
setMoveKey( spep_2 -a1 + 61, 1, -129.9, 44.4 , 0 );
setMoveKey( spep_2 -a1 + 62, 1, -138.4, 51.8 , 0 );
setMoveKey( spep_2 -a1 + 63, 1, -138.4, 51.8 , 0 );
setMoveKey( spep_2 -a1 + 64, 1, -129.4, 42.9 , 0 );
setMoveKey( spep_2 -a1 + 65, 1, -129.4, 42.9 , 0 );
setMoveKey( spep_2 -a1 + 66, 1, -132.8, 53.4 , 0 );
setMoveKey( spep_2 -a1 + 67, 1, -132.8, 53.4 , 0 );
setMoveKey( spep_2 -a1 + 68, 1, -143.8, 45.3 , 0 );
setMoveKey( spep_2 -a1 + 69, 1, -143.8, 45.3 , 0 );
setMoveKey( spep_2 -a1 + 70, 1, -140.9, 50.8 , 0 );
setMoveKey( spep_2 -a1 + 71, 1, -140.9, 50.8 , 0 );
setMoveKey( spep_2 -a1 + 72, 1, -142.2, 51.6 , 0 );
setMoveKey( spep_2 -a1 + 73, 1, -142.2, 51.6 , 0 );
setMoveKey( spep_2 -a1 + 74, 1, -137.4, 47.6 , 0 );
setMoveKey( spep_2 -a1 + 75, 1, -137.4, 47.6 , 0 );
setMoveKey( spep_2 -a1 + 76, 1, -143.9, 52.6 , 0 );
setMoveKey( spep_2 -a1 + 77, 1, -143.9, 52.6 , 0 );
setMoveKey( spep_2 -a1 + 78, 1, -144.4, 52.9 , 0 );
setMoveKey( spep_2 -a1 + 79, 1, -144.4, 52.9 , 0 );
setMoveKey( spep_2 -a1 + 80, 1, -144.8, 53.1 , 0 );
setMoveKey( spep_2 -a1 + 81, 1, -144.8, 53.1 , 0 );
setMoveKey( spep_2 -a1 + 82, 1, -144.8, 53.1 , 0 );
setMoveKey( spep_2 -a1 + 180, 1, 31.9, -46 , 0 );  --8表示
setMoveKey( spep_2 -a1 + 182, 1, 26.4, -50.2 , 0 );
setMoveKey( spep_2 -a1 + 184, 1, 21.4, -54.1 , 0 );
setMoveKey( spep_2 -a1 + 185, 1, 21.4, -54.1 , 0 );
setMoveKey( spep_2 -a1 + 186, 1, 16.9, -57.7 , 0 );
setMoveKey( spep_2 -a1 + 187, 1, 16.9, -57.7 , 0 );
setMoveKey( spep_2 -a1 + 188, 1, 19.2, -54.4 , 0 );
setMoveKey( spep_2 -a1 + 189, 1, 19.2, -54.4 , 0 );
setMoveKey( spep_2 -a1 + 190, 1, 9.2, -63.7 , 0 );
setMoveKey( spep_2 -a1 + 191, 1, 9.2, -63.7 , 0 );
setMoveKey( spep_2 -a1 + 192, 1, 84.6, -7 , 0 ); --6
setMoveKey( spep_2 -a1 + 193, 1, 84.6, -7 , 0 );
setMoveKey( spep_2 -a1 + 194, 1, 140.7, 42.7 , 0 );
setMoveKey( spep_2 -a1 + 195, 1, 140.7, 42.7 , 0 );
setMoveKey( spep_2 -a1 + 196, 1, 116.4, 43.2 , 0 );
setMoveKey( spep_2 -a1 + 197, 1, 116.4, 43.2 , 0 );
setMoveKey( spep_2 -a1 + 198, 1, 78, 33.3 , 0 );
setMoveKey( spep_2 -a1 + 199, 1, 78, 33.3 , 0 );
setMoveKey( spep_2 -a1 + 200, 1, 113.8, -49.3 , 0 );
setMoveKey( spep_2 -a1 + 201, 1, 113.8, -49.3 , 0 );
setMoveKey( spep_2 -a1 + 202, 1, 129.1, 16.1 , 0 );
setMoveKey( spep_2 -a1 + 203, 1, 129.1, 16.1 , 0 );
setMoveKey( spep_2 -a1 + 204, 1, 128.2, 12.3 , 0 );
setMoveKey( spep_2 -a1 + 205, 1, 128.2, 12.3 , 0 );
setMoveKey( spep_2 -a1 + 206, 1, 102.3, -18.2 , 0 );
setMoveKey( spep_2 -a1 + 207, 1, 102.3, -18.2 , 0 );
setMoveKey( spep_2 -a1 + 208, 1, 84.7, -30.8 , 0 );
setMoveKey( spep_2 -a1 + 209, 1, 84.7, -30.8 , 0 );
setMoveKey( spep_2 -a1 + 210, 1, 70.8, -76.6 , 0 );
setMoveKey( spep_2 -a1 + 211, 1, 70.8, -76.6 , 0 );
setMoveKey( spep_2 -a1 + 212, 1, 35.2, -108 , 0 );
setMoveKey( spep_2 -a1 + 213, 1, 35.2, -108 , 0 );
setMoveKey( spep_2 -a1 + 214, 1, -17.4, -171.6 , 0 );
setMoveKey( spep_2 -a1 + 215, 1, -17.4, -171.6 , 0 );
setMoveKey( spep_2 -a1 + 216, 1, -74.6, -241.9 , 0 );
setMoveKey( spep_2 -a1 + 218, 1, -79.5, -249.2 , 0 );
setMoveKey( spep_2 -a1 + 220, 1, -84.4, -256.6 , 0 );
setMoveKey( spep_2 -a1 + 222, 1, -89.4, -263.9 , 0 );
setMoveKey( spep_2 -a1 + 224, 1, -94.4, -271.3 , 0 );
setMoveKey( spep_2 -a1 + 226, 1, -99.4, -278.7 , 0 );
setMoveKey( spep_2 -a1 + 228, 1, -104.5, -286.2 , 0 );
setMoveKey( spep_2 -a1 + 230, 1, -109.6, -293.6 , 0 );
setMoveKey( spep_2 -a1 + 232, 1, -114.7, -301.1 , 0 );
setMoveKey( spep_2 -a1 + 234, 1, -119.9, -308.6 , 0 );
setMoveKey( spep_2 -a1 + 236, 1, -125, -316.1 , 0 );
setMoveKey( spep_2 -a1 + 238, 1, -130.2, -323.7 , 0 );
setMoveKey( spep_2 -a1 + 240, 1, -135.5, -331.2 , 0 );
setMoveKey( spep_2 -a1 + 242, 1, -140.8, -338.8 , 0 );
setMoveKey( spep_2 -a1 + 244, 1, -146, -346.4 , 0 );
setMoveKey( spep_2 -a1 + 246, 1, -151.4, -354 , 0 );
setMoveKey( spep_2 -a1 + 248, 1, -156.7, -361.7 , 0 );
setMoveKey( spep_2 -a1 + 250, 1, -162.1, -369.4 , 0 );
setMoveKey( spep_2 -a1 + 252, 1, -167.5, -377.1 , 0 );
setMoveKey( spep_2 -a1 + 254, 1, -172.9, -384.8 , 0 );
setMoveKey( spep_2 -a1 + 256, 1, -178.4, -392.5 , 0 );
setMoveKey( spep_2 -a1 + 258, 1, -183.9, -400.3 , 0 );
setMoveKey( spep_2 -a1 + 260, 1, -189.4, -408 , 0 );
setMoveKey( spep_2 -a1 + 262, 1, -189.4, -408 , 0 );
setMoveKey( spep_2 -a1 + 442, 1, -41.4, 22.7 , 0 ); --8表示
setMoveKey( spep_2 -a1 + 444, 1, -38.4, 20.9 , 0 );
setMoveKey( spep_2 -a1 + 446, 1, -35.5, 19.2 , 0 );
setMoveKey( spep_2 -a1 + 448, 1, -32.7, 17.5 , 0 );
setMoveKey( spep_2 -a1 + 450, 1, -30, 15.9 , 0 );
setMoveKey( spep_2 -a1 + 452, 1, -27.4, 14.3 , 0 );
setMoveKey( spep_2 -a1 + 454, 1, -24.9, 12.8 , 0 );
setMoveKey( spep_2 -a1 + 456, 1, -22.4, 11.3 , 0 );
setMoveKey( spep_2 -a1 + 458, 1, -20.1, 9.9 , 0 );
setMoveKey( spep_2 -a1 + 460, 1, -17.8, 8.5 , 0 );
setMoveKey( spep_2 -a1 + 462, 1, -15.7, 7.3 , 0 );
setMoveKey( spep_2 -a1 + 464, 1, -13.6, 6 , 0 );
setMoveKey( spep_2 -a1 + 466, 1, -11.7, 4.8 , 0 );
setMoveKey( spep_2 -a1 + 467, 1, -11.7, 4.8 , 0 );
setMoveKey( spep_2 -a1 + 468, 1, -14.7, 5.6 , 0 );
setMoveKey( spep_2 -a1 + 469, 1, -14.7, 5.6 , 0 );
setMoveKey( spep_2 -a1 + 470, 1, 155.6, -164.5 , 0 ); --6
setMoveKey( spep_2 -a1 + 472, 1, 124.4, -134.3 , 0 );
setMoveKey( spep_2 -a1 + 474, 1, 88.1, -96.8 , 0 );
setMoveKey( spep_2 -a1 + 476, 1, 163.1, -182.1 , 0 );
setMoveKey( spep_2 -a1 + 478, 1, 98.4, -111.3 , 0 );
setMoveKey( spep_2 -a1 + 480, 1, 103.5, -118.6 , 0 );
setMoveKey( spep_2 -a1 + 482, 1, 113.1, -130.2 , 0 );
setMoveKey( spep_2 -a1 + 484, 1, 122.6, -141.8 , 0 );
setMoveKey( spep_2 -a1 + 486, 1, 119.4, -140.6 , 0 );
setMoveKey( spep_2 -a1 + 488, 1, 146, -185.1 , 0 );
setMoveKey( spep_2 -a1 + 490, 1, 146, -185.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a1 + 2, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a1 + 6, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a1 + 8, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a1 + 12, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a1 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 21, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 22, 1, 2.23, 2.23 ); --8
setScaleKey( spep_2 -a1 + 23, 1, 2.23, 2.23 );
setScaleKey( spep_2 -a1 + 24, 1, 2.84, 2.84 );
setScaleKey( spep_2 -a1 + 25, 1, 2.84, 2.84 );
setScaleKey( spep_2 -a1 + 26, 1, 2.23, 2.23 );
setScaleKey( spep_2 -a1 + 27, 1, 2.23, 2.23 );
setScaleKey( spep_2 -a1 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 29, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 30, 1, 2.44, 2.44 );
setScaleKey( spep_2 -a1 + 31, 1, 2.44, 2.44 );
setScaleKey( spep_2 -a1 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 82, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 180, 1, 1.85, 1.85 );
setScaleKey( spep_2 -a1 + 191, 1, 1.85, 1.85 );
setScaleKey( spep_2 -a1 + 192, 1, 2.65, 2.65 ); --6
setScaleKey( spep_2 -a1 + 193, 1, 2.65, 2.65 );
setScaleKey( spep_2 -a1 + 194, 1, 3.5, 3.5 );
setScaleKey( spep_2 -a1 + 195, 1, 3.5, 3.5 );
setScaleKey( spep_2 -a1 + 196, 1, 2.65, 2.65 );
setScaleKey( spep_2 -a1 + 197, 1, 2.65, 2.65 );
setScaleKey( spep_2 -a1 + 198, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 199, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 200, 1, 3, 3 );
setScaleKey( spep_2 -a1 + 201, 1, 3, 3 );
setScaleKey( spep_2 -a1 + 202, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 203, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 204, 1, 1.79, 1.79 );
setScaleKey( spep_2 -a1 + 206, 1, 1.77, 1.77 );
setScaleKey( spep_2 -a1 + 208, 1, 1.75, 1.75 );
setScaleKey( spep_2 -a1 + 210, 1, 1.72, 1.72 );
setScaleKey( spep_2 -a1 + 212, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a1 + 214, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a1 + 216, 1, 1.5, 1.5 );
setScaleKey( spep_2 -a1 + 218, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a1 + 224, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a1 + 226, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a1 + 232, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a1 + 234, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a1 + 238, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a1 + 240, 1, 1.46, 1.46 );
setScaleKey( spep_2 -a1 + 246, 1, 1.46, 1.46 );
setScaleKey( spep_2 -a1 + 248, 1, 1.45, 1.45 );
setScaleKey( spep_2 -a1 + 254, 1, 1.45, 1.45 );
setScaleKey( spep_2 -a1 + 256, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a1 + 262, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a1 + 442, 1, 1.7, 1.7 ); --8表示
setScaleKey( spep_2 -a1 + 466, 1, 1.7, 1.7 );
setScaleKey( spep_2 -a1 + 467, 1, 1.7, 1.7 );
setScaleKey( spep_2 -a1 + 468, 1, 2.55, 2.55 );
setScaleKey( spep_2 -a1 + 469, 1, 2.55, 2.55 );
setScaleKey( spep_2 -a1 + 470, 1, 3.07, 3.07 ); --6
setScaleKey( spep_2 -a1 + 471, 1, 3.07, 3.07 );
setScaleKey( spep_2 -a1 + 472, 1, 2.3, 2.3 );
setScaleKey( spep_2 -a1 + 473, 1, 2.3, 2.3 );
setScaleKey( spep_2 -a1 + 474, 1, 1.54, 1.54 );
setScaleKey( spep_2 -a1 + 475, 1, 1.54, 1.54 );
setScaleKey( spep_2 -a1 + 476, 1, 2.69, 2.69 );
setScaleKey( spep_2 -a1 + 477, 1, 2.69, 2.69 );
setScaleKey( spep_2 -a1 + 478, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a1 + 490, 1, 1.53, 1.53 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -a1 + 21, 1, 0 );
setRotateKey( spep_2 -a1 + 22, 1, 0 );
setRotateKey( spep_2 -a1 + 82, 1, 0 );
setRotateKey( spep_2 -a1 + 180, 1, -15 );
setRotateKey( spep_2 -a1 + 191, 1, -15 );
setRotateKey( spep_2 -a1 + 192, 1, 10.7 );
setRotateKey( spep_2 -a1 + 194, 1, 11.5 );
setRotateKey( spep_2 -a1 + 196, 1, 12.2 );
setRotateKey( spep_2 -a1 + 198, 1, 13 );
setRotateKey( spep_2 -a1 + 200, 1, 13.7 );
setRotateKey( spep_2 -a1 + 202, 1, 14.5 );
setRotateKey( spep_2 -a1 + 204, 1, 14.6 );
setRotateKey( spep_2 -a1 + 206, 1, 14.7 );
setRotateKey( spep_2 -a1 + 208, 1, 14.8 );
setRotateKey( spep_2 -a1 + 210, 1, 14.9 );
setRotateKey( spep_2 -a1 + 212, 1, 15 );
setRotateKey( spep_2 -a1 + 214, 1, 15.1 );
setRotateKey( spep_2 -a1 + 216, 1, 15.2 );
setRotateKey( spep_2 -a1 + 218, 1, 15.2 );
setRotateKey( spep_2 -a1 + 220, 1, 15.3 );
setRotateKey( spep_2 -a1 + 222, 1, 15.4 );
setRotateKey( spep_2 -a1 + 224, 1, 15.5 );
setRotateKey( spep_2 -a1 + 226, 1, 15.6 );
setRotateKey( spep_2 -a1 + 228, 1, 15.6 );
setRotateKey( spep_2 -a1 + 230, 1, 15.7 );
setRotateKey( spep_2 -a1 + 232, 1, 15.8 );
setRotateKey( spep_2 -a1 + 234, 1, 15.9 );
setRotateKey( spep_2 -a1 + 236, 1, 15.9 );
setRotateKey( spep_2 -a1 + 238, 1, 16 );
setRotateKey( spep_2 -a1 + 240, 1, 16.1 );
setRotateKey( spep_2 -a1 + 242, 1, 16.1 );
setRotateKey( spep_2 -a1 + 244, 1, 16.2 );
setRotateKey( spep_2 -a1 + 246, 1, 16.2 );
setRotateKey( spep_2 -a1 + 248, 1, 16.3 );
setRotateKey( spep_2 -a1 + 250, 1, 16.3 );
setRotateKey( spep_2 -a1 + 252, 1, 16.4 );
setRotateKey( spep_2 -a1 + 254, 1, 16.5 );
setRotateKey( spep_2 -a1 + 258, 1, 16.5 );
setRotateKey( spep_2 -a1 + 260, 1, 16.6 );
setRotateKey( spep_2 -a1 + 262, 1, 16.6 );
setRotateKey( spep_2 -a1 + 442, 1, -19 );
setRotateKey( spep_2 -a1 + 444, 1, -18.6 );
setRotateKey( spep_2 -a1 + 446, 1, -18.2 );
setRotateKey( spep_2 -a1 + 448, 1, -17.9 );
setRotateKey( spep_2 -a1 + 450, 1, -17.5 );
setRotateKey( spep_2 -a1 + 452, 1, -17.1 );
setRotateKey( spep_2 -a1 + 454, 1, -16.8 );
setRotateKey( spep_2 -a1 + 456, 1, -16.5 );
setRotateKey( spep_2 -a1 + 458, 1, -16.2 );
setRotateKey( spep_2 -a1 + 460, 1, -15.9 );
setRotateKey( spep_2 -a1 + 462, 1, -15.6 );
setRotateKey( spep_2 -a1 + 464, 1, -15.3 );
setRotateKey( spep_2 -a1 + 466, 1, -15 );
setRotateKey( spep_2 -a1 + 467, 1, -15 );
setRotateKey( spep_2 -a1 + 468, 1, -14.8 );
setRotateKey( spep_2 -a1 + 469, 1, -14.8 );
setRotateKey( spep_2 -a1 + 470, 1, 56.1 );
setRotateKey( spep_2 -a1 + 478, 1, 56.1 );
setRotateKey( spep_2 -a1 + 480, 1, 56.2 );
setRotateKey( spep_2 -a1 + 490, 1, 56.2 );

-- ** 音 ** --
--飛んでくる2
SE014 = playSeVer2( spep_2 + 0, 1121, "",spep_2 + 48, 0, 12, -1);
setPitch( spep_2 + 0, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
SE015 = playSeVer2( spep_2 + 0, 1019, "",spep_2 + 48, 0, 12, -1);
SE016 = playSeVer2( spep_2 + 0, 1118, "",spep_2 + 48, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 0, SE016, 77 );

--敵ヒット
SE017 = playSeVer2( spep_2 + 22, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 26, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 32, 1159, "", 0, 0, 0, -1);

--飛んでくる3
SE020 = playSeVer2( spep_2 + 100, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 100, 1232, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 100, 1116, "", 0, 0, 0, -1);

--折り返す
SE023 = playSeVer2( spep_2 + 138, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE023, 54 );

--敵ヒット2
SE024 = playSeVer2( spep_2 + 188, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 188, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 200, 1117, "", 0, 0, 0, -1);

--飛んでる音
SE027 = playSeVer2( spep_2 + 268, 1116, "", 0, 0, 0, -1);

--爆発
SE028 = playSeVer2( spep_2 + 268, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE028, 89 );
SE029 = playSeVer2( spep_2 + 290, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE029, 89 );
SE030 = playSeVer2( spep_2 + 308, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE030, 79 );
SE031 = playSeVer2( spep_2 + 322, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE031, 93 );
SE032 = playSeVer2( spep_2 + 326, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE032, 79 );

--向かってくる
SE033 = playSeVer2( spep_2 + 380, 1258, "",spep_2 + 470, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 380, SE033, 76 );
SE034 = playSeVer2( spep_2 + 386, 1116, "",spep_2 + 478, 0, 10, -1);
SE035 = playSeVer2( spep_2 + 386, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 386, SE035, 76 );
setTimeStretch( SE035, 1.54, 30, 4 );
SE036 = playSeVer2( spep_2 + 386, 1019, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 450, 1019, "",spep_2 + 478, 0, 10, -1);

--敵ヒット
SE038 = playSeVer2( spep_2 + 468, 1187, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 468, 1156, "", 0, 0, 0, -1);

--爆発
SE040 = playSeVer2( spep_2 + 488, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 488, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 622 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 520 );
endPhase( spep_2 + 622 -2 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜カードカットインまで(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --開幕〜カードカットインまで  ef_001
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 186, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 186, first, 255 );

spep_x = spep_0 + 36 -8;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0 -28, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0 -28, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0 -28, 515.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 42, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 79 );
SE004 = playSeVer2( spep_0 + 42, 1170, "",spep_0 + 92, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 79 );

--丸くなる
SE005 = playSeVer2( spep_0 + 86, 1246, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 86, 1291, "",spep_0 + 110, 0, 8, -1);
SE007 = playSeVer2( spep_0 + 86, 1293, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 98, 1309, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE008, 141 );
setPitch( spep_0 + 98, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );

--飛んでくる
SE009 = playSeVer2( spep_0 + 120, 1121, "",spep_0 + 208, 0, 14, -1);
setPitch( spep_0 + 120, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 120, 1117, "",spep_0 + 208, 0, 14, -1);
SE011 = playSeVer2( spep_0 + 120, 1019, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 120, 1027, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);       -- 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 162; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    
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

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突撃〜フィニッシュまで(622F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --突撃〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 622, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 622, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 622, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 622, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --突撃〜フィニッシュまで  ef_002b
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 622, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 622, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 622, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 622, finish_b, 255 );

a1 = 1;
-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -a1 + 82, 1, 0 );
setDisp( spep_2 -a1 + 180, 1, 1 );
setDisp( spep_2 -a1 + 262, 1, 0 );
setDisp( spep_2 -a1 + 442, 1, 1 );
setDisp( spep_2 -a1 + 490, 1, 0 );
changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 -a1 + 22, 1, 8 );
changeAnime( spep_2 -a1 + 180, 1, 8 );
changeAnime( spep_2 -a1 + 192, 1, 6 );
changeAnime( spep_2 -a1 + 442, 1, 8 );
changeAnime( spep_2 -a1 + 470, 1, 6 );

setMoveKey( spep_2 + 0, 1, 17.2, -29.8 , 0 );
setMoveKey( spep_2 -a1 + 2, 1, 16.1, -29.8 , 0 );
setMoveKey( spep_2 -a1 + 4, 1, 15.1, -29.7 , 0 );
setMoveKey( spep_2 -a1 + 6, 1, 14.1, -29.7 , 0 );
setMoveKey( spep_2 -a1 + 8, 1, 13.1, -29.6 , 0 );
setMoveKey( spep_2 -a1 + 10, 1, 12.1, -29.5 , 0 );
setMoveKey( spep_2 -a1 + 12, 1, 11, -29.5 , 0 );
setMoveKey( spep_2 -a1 + 14, 1, 10, -29.4 , 0 );
setMoveKey( spep_2 -a1 + 16, 1, 9, -29.4 , 0 );
setMoveKey( spep_2 -a1 + 18, 1, 8, -29.3 , 0 );
setMoveKey( spep_2 -a1 + 21, 1, 7, -29.3 , 0 );
setMoveKey( spep_2 -a1 + 22, 1, -63.1, -7.1 , 0 ); --8
setMoveKey( spep_2 -a1 + 23, 1, -63.1, -7.1 , 0 );
setMoveKey( spep_2 -a1 + 24, 1, -83.7, -7.1 , 0 );
setMoveKey( spep_2 -a1 + 25, 1, -83.7, -7.1 , 0 );
setMoveKey( spep_2 -a1 + 26, 1, -68.4, -4.1 , 0 );
setMoveKey( spep_2 -a1 + 27, 1, -68.4, -4.1 , 0 );
setMoveKey( spep_2 -a1 + 28, 1, -51.6, -1.9 , 0 );
setMoveKey( spep_2 -a1 + 29, 1, -51.6, -1.9 , 0 );
setMoveKey( spep_2 -a1 + 30, 1, -79.8, -1.3 , 0 );
setMoveKey( spep_2 -a1 + 31, 1, -79.8, -1.3 , 0 );
setMoveKey( spep_2 -a1 + 32, 1, -60.4, 3.3 , 0 );
setMoveKey( spep_2 -a1 + 33, 1, -60.4, 3.3 , 0 );
setMoveKey( spep_2 -a1 + 34, 1, -62.7, 12 , 0 );
setMoveKey( spep_2 -a1 + 35, 1, -62.7, 12 , 0 );
setMoveKey( spep_2 -a1 + 36, 1, -79.6, 17 , 0 );
setMoveKey( spep_2 -a1 + 37, 1, -79.6, 17 , 0 );
setMoveKey( spep_2 -a1 + 38, 1, -74.4, 10.3 , 0 );
setMoveKey( spep_2 -a1 + 39, 1, -74.4, 10.3 , 0 );
setMoveKey( spep_2 -a1 + 40, 1, -81.5, 23.1 , 0 );
setMoveKey( spep_2 -a1 + 41, 1, -81.5, 23.1 , 0 );
setMoveKey( spep_2 -a1 + 42, 1, -96.4, 17.3 , 0 );
setMoveKey( spep_2 -a1 + 43, 1, -96.4, 17.3 , 0 );
setMoveKey( spep_2 -a1 + 44, 1, -102.9, 30.8 , 0 );
setMoveKey( spep_2 -a1 + 45, 1, -102.9, 30.8 , 0 );
setMoveKey( spep_2 -a1 + 46, 1, -96.6, 23.5 , 0 );
setMoveKey( spep_2 -a1 + 47, 1, -96.6, 23.5 , 0 );
setMoveKey( spep_2 -a1 + 48, 1, -102.5, 35.5 , 0 );
setMoveKey( spep_2 -a1 + 49, 1, -102.5, 35.5 , 0 );
setMoveKey( spep_2 -a1 + 50, 1, -116.3, 29 , 0 );
setMoveKey( spep_2 -a1 + 51, 1, -116.3, 29 , 0 );
setMoveKey( spep_2 -a1 + 52, 1, -121.6, 41.8 , 0 );
setMoveKey( spep_2 -a1 + 53, 1, -121.6, 41.8 , 0 );
setMoveKey( spep_2 -a1 + 54, 1, -114.1, 33.8 , 0 );
setMoveKey( spep_2 -a1 + 55, 1, -114.1, 33.8 , 0 );
setMoveKey( spep_2 -a1 + 56, 1, -118.9, 45.2 , 0 );
setMoveKey( spep_2 -a1 + 57, 1, -118.9, 45.2 , 0 );
setMoveKey( spep_2 -a1 + 58, 1, -131.4, 38 , 0 );
setMoveKey( spep_2 -a1 + 59, 1, -131.4, 38 , 0 );
setMoveKey( spep_2 -a1 + 60, 1, -129.9, 44.4 , 0 );
setMoveKey( spep_2 -a1 + 61, 1, -129.9, 44.4 , 0 );
setMoveKey( spep_2 -a1 + 62, 1, -138.4, 51.8 , 0 );
setMoveKey( spep_2 -a1 + 63, 1, -138.4, 51.8 , 0 );
setMoveKey( spep_2 -a1 + 64, 1, -129.4, 42.9 , 0 );
setMoveKey( spep_2 -a1 + 65, 1, -129.4, 42.9 , 0 );
setMoveKey( spep_2 -a1 + 66, 1, -132.8, 53.4 , 0 );
setMoveKey( spep_2 -a1 + 67, 1, -132.8, 53.4 , 0 );
setMoveKey( spep_2 -a1 + 68, 1, -143.8, 45.3 , 0 );
setMoveKey( spep_2 -a1 + 69, 1, -143.8, 45.3 , 0 );
setMoveKey( spep_2 -a1 + 70, 1, -140.9, 50.8 , 0 );
setMoveKey( spep_2 -a1 + 71, 1, -140.9, 50.8 , 0 );
setMoveKey( spep_2 -a1 + 72, 1, -142.2, 51.6 , 0 );
setMoveKey( spep_2 -a1 + 73, 1, -142.2, 51.6 , 0 );
setMoveKey( spep_2 -a1 + 74, 1, -137.4, 47.6 , 0 );
setMoveKey( spep_2 -a1 + 75, 1, -137.4, 47.6 , 0 );
setMoveKey( spep_2 -a1 + 76, 1, -143.9, 52.6 , 0 );
setMoveKey( spep_2 -a1 + 77, 1, -143.9, 52.6 , 0 );
setMoveKey( spep_2 -a1 + 78, 1, -144.4, 52.9 , 0 );
setMoveKey( spep_2 -a1 + 79, 1, -144.4, 52.9 , 0 );
setMoveKey( spep_2 -a1 + 80, 1, -144.8, 53.1 , 0 );
setMoveKey( spep_2 -a1 + 81, 1, -144.8, 53.1 , 0 );
setMoveKey( spep_2 -a1 + 82, 1, -144.8, 53.1 , 0 );
setMoveKey( spep_2 -a1 + 180, 1, 31.9, -46 , 0 );  --8表示
setMoveKey( spep_2 -a1 + 182, 1, 26.4, -50.2 , 0 );
setMoveKey( spep_2 -a1 + 184, 1, 21.4, -54.1 , 0 );
setMoveKey( spep_2 -a1 + 185, 1, 21.4, -54.1 , 0 );
setMoveKey( spep_2 -a1 + 186, 1, 16.9, -57.7 , 0 );
setMoveKey( spep_2 -a1 + 187, 1, 16.9, -57.7 , 0 );
setMoveKey( spep_2 -a1 + 188, 1, 19.2, -54.4 , 0 );
setMoveKey( spep_2 -a1 + 189, 1, 19.2, -54.4 , 0 );
setMoveKey( spep_2 -a1 + 190, 1, 9.2, -63.7 , 0 );
setMoveKey( spep_2 -a1 + 191, 1, 9.2, -63.7 , 0 );
setMoveKey( spep_2 -a1 + 192, 1, 84.6, -7 , 0 ); --6
setMoveKey( spep_2 -a1 + 193, 1, 84.6, -7 , 0 );
setMoveKey( spep_2 -a1 + 194, 1, 140.7, 42.7 , 0 );
setMoveKey( spep_2 -a1 + 195, 1, 140.7, 42.7 , 0 );
setMoveKey( spep_2 -a1 + 196, 1, 116.4, 43.2 , 0 );
setMoveKey( spep_2 -a1 + 197, 1, 116.4, 43.2 , 0 );
setMoveKey( spep_2 -a1 + 198, 1, 78, 33.3 , 0 );
setMoveKey( spep_2 -a1 + 199, 1, 78, 33.3 , 0 );
setMoveKey( spep_2 -a1 + 200, 1, 113.8, -49.3 , 0 );
setMoveKey( spep_2 -a1 + 201, 1, 113.8, -49.3 , 0 );
setMoveKey( spep_2 -a1 + 202, 1, 129.1, 16.1 , 0 );
setMoveKey( spep_2 -a1 + 203, 1, 129.1, 16.1 , 0 );
setMoveKey( spep_2 -a1 + 204, 1, 128.2, 12.3 , 0 );
setMoveKey( spep_2 -a1 + 205, 1, 128.2, 12.3 , 0 );
setMoveKey( spep_2 -a1 + 206, 1, 102.3, -18.2 , 0 );
setMoveKey( spep_2 -a1 + 207, 1, 102.3, -18.2 , 0 );
setMoveKey( spep_2 -a1 + 208, 1, 84.7, -30.8 , 0 );
setMoveKey( spep_2 -a1 + 209, 1, 84.7, -30.8 , 0 );
setMoveKey( spep_2 -a1 + 210, 1, 70.8, -76.6 , 0 );
setMoveKey( spep_2 -a1 + 211, 1, 70.8, -76.6 , 0 );
setMoveKey( spep_2 -a1 + 212, 1, 35.2, -108 , 0 );
setMoveKey( spep_2 -a1 + 213, 1, 35.2, -108 , 0 );
setMoveKey( spep_2 -a1 + 214, 1, -17.4, -171.6 , 0 );
setMoveKey( spep_2 -a1 + 215, 1, -17.4, -171.6 , 0 );
setMoveKey( spep_2 -a1 + 216, 1, -74.6, -241.9 , 0 );
setMoveKey( spep_2 -a1 + 218, 1, -79.5, -249.2 , 0 );
setMoveKey( spep_2 -a1 + 220, 1, -84.4, -256.6 , 0 );
setMoveKey( spep_2 -a1 + 222, 1, -89.4, -263.9 , 0 );
setMoveKey( spep_2 -a1 + 224, 1, -94.4, -271.3 , 0 );
setMoveKey( spep_2 -a1 + 226, 1, -99.4, -278.7 , 0 );
setMoveKey( spep_2 -a1 + 228, 1, -104.5, -286.2 , 0 );
setMoveKey( spep_2 -a1 + 230, 1, -109.6, -293.6 , 0 );
setMoveKey( spep_2 -a1 + 232, 1, -114.7, -301.1 , 0 );
setMoveKey( spep_2 -a1 + 234, 1, -119.9, -308.6 , 0 );
setMoveKey( spep_2 -a1 + 236, 1, -125, -316.1 , 0 );
setMoveKey( spep_2 -a1 + 238, 1, -130.2, -323.7 , 0 );
setMoveKey( spep_2 -a1 + 240, 1, -135.5, -331.2 , 0 );
setMoveKey( spep_2 -a1 + 242, 1, -140.8, -338.8 , 0 );
setMoveKey( spep_2 -a1 + 244, 1, -146, -346.4 , 0 );
setMoveKey( spep_2 -a1 + 246, 1, -151.4, -354 , 0 );
setMoveKey( spep_2 -a1 + 248, 1, -156.7, -361.7 , 0 );
setMoveKey( spep_2 -a1 + 250, 1, -162.1, -369.4 , 0 );
setMoveKey( spep_2 -a1 + 252, 1, -167.5, -377.1 , 0 );
setMoveKey( spep_2 -a1 + 254, 1, -172.9, -384.8 , 0 );
setMoveKey( spep_2 -a1 + 256, 1, -178.4, -392.5 , 0 );
setMoveKey( spep_2 -a1 + 258, 1, -183.9, -400.3 , 0 );
setMoveKey( spep_2 -a1 + 260, 1, -189.4, -408 , 0 );
setMoveKey( spep_2 -a1 + 262, 1, -189.4, -408 , 0 );
setMoveKey( spep_2 -a1 + 442, 1, -41.4, 22.7 , 0 ); --8表示
setMoveKey( spep_2 -a1 + 444, 1, -38.4, 20.9 , 0 );
setMoveKey( spep_2 -a1 + 446, 1, -35.5, 19.2 , 0 );
setMoveKey( spep_2 -a1 + 448, 1, -32.7, 17.5 , 0 );
setMoveKey( spep_2 -a1 + 450, 1, -30, 15.9 , 0 );
setMoveKey( spep_2 -a1 + 452, 1, -27.4, 14.3 , 0 );
setMoveKey( spep_2 -a1 + 454, 1, -24.9, 12.8 , 0 );
setMoveKey( spep_2 -a1 + 456, 1, -22.4, 11.3 , 0 );
setMoveKey( spep_2 -a1 + 458, 1, -20.1, 9.9 , 0 );
setMoveKey( spep_2 -a1 + 460, 1, -17.8, 8.5 , 0 );
setMoveKey( spep_2 -a1 + 462, 1, -15.7, 7.3 , 0 );
setMoveKey( spep_2 -a1 + 464, 1, -13.6, 6 , 0 );
setMoveKey( spep_2 -a1 + 466, 1, -11.7, 4.8 , 0 );
setMoveKey( spep_2 -a1 + 467, 1, -11.7, 4.8 , 0 );
setMoveKey( spep_2 -a1 + 468, 1, -14.7, 5.6 , 0 );
setMoveKey( spep_2 -a1 + 469, 1, -14.7, 5.6 , 0 );
setMoveKey( spep_2 -a1 + 470, 1, 155.6, -164.5 , 0 ); --6
setMoveKey( spep_2 -a1 + 472, 1, 124.4, -134.3 , 0 );
setMoveKey( spep_2 -a1 + 474, 1, 88.1, -96.8 , 0 );
setMoveKey( spep_2 -a1 + 476, 1, 163.1, -182.1 , 0 );
setMoveKey( spep_2 -a1 + 478, 1, 98.4, -111.3 , 0 );
setMoveKey( spep_2 -a1 + 480, 1, 103.5, -118.6 , 0 );
setMoveKey( spep_2 -a1 + 482, 1, 113.1, -130.2 , 0 );
setMoveKey( spep_2 -a1 + 484, 1, 122.6, -141.8 , 0 );
setMoveKey( spep_2 -a1 + 486, 1, 119.4, -140.6 , 0 );
setMoveKey( spep_2 -a1 + 488, 1, 146, -185.1 , 0 );
setMoveKey( spep_2 -a1 + 490, 1, 146, -185.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a1 + 2, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a1 + 6, 1, 1.65, 1.65 );
setScaleKey( spep_2 -a1 + 8, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a1 + 12, 1, 1.64, 1.64 );
setScaleKey( spep_2 -a1 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 21, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 22, 1, 2.23, 2.23 ); --8
setScaleKey( spep_2 -a1 + 23, 1, 2.23, 2.23 );
setScaleKey( spep_2 -a1 + 24, 1, 2.84, 2.84 );
setScaleKey( spep_2 -a1 + 25, 1, 2.84, 2.84 );
setScaleKey( spep_2 -a1 + 26, 1, 2.23, 2.23 );
setScaleKey( spep_2 -a1 + 27, 1, 2.23, 2.23 );
setScaleKey( spep_2 -a1 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 29, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 30, 1, 2.44, 2.44 );
setScaleKey( spep_2 -a1 + 31, 1, 2.44, 2.44 );
setScaleKey( spep_2 -a1 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 82, 1, 1.63, 1.63 );
setScaleKey( spep_2 -a1 + 180, 1, 1.85, 1.85 );
setScaleKey( spep_2 -a1 + 191, 1, 1.85, 1.85 );
setScaleKey( spep_2 -a1 + 192, 1, 2.65, 2.65 ); --6
setScaleKey( spep_2 -a1 + 193, 1, 2.65, 2.65 );
setScaleKey( spep_2 -a1 + 194, 1, 3.5, 3.5 );
setScaleKey( spep_2 -a1 + 195, 1, 3.5, 3.5 );
setScaleKey( spep_2 -a1 + 196, 1, 2.65, 2.65 );
setScaleKey( spep_2 -a1 + 197, 1, 2.65, 2.65 );
setScaleKey( spep_2 -a1 + 198, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 199, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 200, 1, 3, 3 );
setScaleKey( spep_2 -a1 + 201, 1, 3, 3 );
setScaleKey( spep_2 -a1 + 202, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 203, 1, 1.8, 1.8 );
setScaleKey( spep_2 -a1 + 204, 1, 1.79, 1.79 );
setScaleKey( spep_2 -a1 + 206, 1, 1.77, 1.77 );
setScaleKey( spep_2 -a1 + 208, 1, 1.75, 1.75 );
setScaleKey( spep_2 -a1 + 210, 1, 1.72, 1.72 );
setScaleKey( spep_2 -a1 + 212, 1, 1.66, 1.66 );
setScaleKey( spep_2 -a1 + 214, 1, 1.59, 1.59 );
setScaleKey( spep_2 -a1 + 216, 1, 1.5, 1.5 );
setScaleKey( spep_2 -a1 + 218, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a1 + 224, 1, 1.49, 1.49 );
setScaleKey( spep_2 -a1 + 226, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a1 + 232, 1, 1.48, 1.48 );
setScaleKey( spep_2 -a1 + 234, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a1 + 238, 1, 1.47, 1.47 );
setScaleKey( spep_2 -a1 + 240, 1, 1.46, 1.46 );
setScaleKey( spep_2 -a1 + 246, 1, 1.46, 1.46 );
setScaleKey( spep_2 -a1 + 248, 1, 1.45, 1.45 );
setScaleKey( spep_2 -a1 + 254, 1, 1.45, 1.45 );
setScaleKey( spep_2 -a1 + 256, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a1 + 262, 1, 1.44, 1.44 );
setScaleKey( spep_2 -a1 + 442, 1, 1.7, 1.7 ); --8表示
setScaleKey( spep_2 -a1 + 466, 1, 1.7, 1.7 );
setScaleKey( spep_2 -a1 + 467, 1, 1.7, 1.7 );
setScaleKey( spep_2 -a1 + 468, 1, 2.55, 2.55 );
setScaleKey( spep_2 -a1 + 469, 1, 2.55, 2.55 );
setScaleKey( spep_2 -a1 + 470, 1, 3.07, 3.07 ); --6
setScaleKey( spep_2 -a1 + 471, 1, 3.07, 3.07 );
setScaleKey( spep_2 -a1 + 472, 1, 2.3, 2.3 );
setScaleKey( spep_2 -a1 + 473, 1, 2.3, 2.3 );
setScaleKey( spep_2 -a1 + 474, 1, 1.54, 1.54 );
setScaleKey( spep_2 -a1 + 475, 1, 1.54, 1.54 );
setScaleKey( spep_2 -a1 + 476, 1, 2.69, 2.69 );
setScaleKey( spep_2 -a1 + 477, 1, 2.69, 2.69 );
setScaleKey( spep_2 -a1 + 478, 1, 1.53, 1.53 );
setScaleKey( spep_2 -a1 + 490, 1, 1.53, 1.53 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -a1 + 21, 1, 0 );
setRotateKey( spep_2 -a1 + 22, 1, 0 );
setRotateKey( spep_2 -a1 + 82, 1, 0 );
setRotateKey( spep_2 -a1 + 180, 1, -15 );
setRotateKey( spep_2 -a1 + 191, 1, -15 );
setRotateKey( spep_2 -a1 + 192, 1, 10.7 );
setRotateKey( spep_2 -a1 + 194, 1, 11.5 );
setRotateKey( spep_2 -a1 + 196, 1, 12.2 );
setRotateKey( spep_2 -a1 + 198, 1, 13 );
setRotateKey( spep_2 -a1 + 200, 1, 13.7 );
setRotateKey( spep_2 -a1 + 202, 1, 14.5 );
setRotateKey( spep_2 -a1 + 204, 1, 14.6 );
setRotateKey( spep_2 -a1 + 206, 1, 14.7 );
setRotateKey( spep_2 -a1 + 208, 1, 14.8 );
setRotateKey( spep_2 -a1 + 210, 1, 14.9 );
setRotateKey( spep_2 -a1 + 212, 1, 15 );
setRotateKey( spep_2 -a1 + 214, 1, 15.1 );
setRotateKey( spep_2 -a1 + 216, 1, 15.2 );
setRotateKey( spep_2 -a1 + 218, 1, 15.2 );
setRotateKey( spep_2 -a1 + 220, 1, 15.3 );
setRotateKey( spep_2 -a1 + 222, 1, 15.4 );
setRotateKey( spep_2 -a1 + 224, 1, 15.5 );
setRotateKey( spep_2 -a1 + 226, 1, 15.6 );
setRotateKey( spep_2 -a1 + 228, 1, 15.6 );
setRotateKey( spep_2 -a1 + 230, 1, 15.7 );
setRotateKey( spep_2 -a1 + 232, 1, 15.8 );
setRotateKey( spep_2 -a1 + 234, 1, 15.9 );
setRotateKey( spep_2 -a1 + 236, 1, 15.9 );
setRotateKey( spep_2 -a1 + 238, 1, 16 );
setRotateKey( spep_2 -a1 + 240, 1, 16.1 );
setRotateKey( spep_2 -a1 + 242, 1, 16.1 );
setRotateKey( spep_2 -a1 + 244, 1, 16.2 );
setRotateKey( spep_2 -a1 + 246, 1, 16.2 );
setRotateKey( spep_2 -a1 + 248, 1, 16.3 );
setRotateKey( spep_2 -a1 + 250, 1, 16.3 );
setRotateKey( spep_2 -a1 + 252, 1, 16.4 );
setRotateKey( spep_2 -a1 + 254, 1, 16.5 );
setRotateKey( spep_2 -a1 + 258, 1, 16.5 );
setRotateKey( spep_2 -a1 + 260, 1, 16.6 );
setRotateKey( spep_2 -a1 + 262, 1, 16.6 );
setRotateKey( spep_2 -a1 + 442, 1, -19 );
setRotateKey( spep_2 -a1 + 444, 1, -18.6 );
setRotateKey( spep_2 -a1 + 446, 1, -18.2 );
setRotateKey( spep_2 -a1 + 448, 1, -17.9 );
setRotateKey( spep_2 -a1 + 450, 1, -17.5 );
setRotateKey( spep_2 -a1 + 452, 1, -17.1 );
setRotateKey( spep_2 -a1 + 454, 1, -16.8 );
setRotateKey( spep_2 -a1 + 456, 1, -16.5 );
setRotateKey( spep_2 -a1 + 458, 1, -16.2 );
setRotateKey( spep_2 -a1 + 460, 1, -15.9 );
setRotateKey( spep_2 -a1 + 462, 1, -15.6 );
setRotateKey( spep_2 -a1 + 464, 1, -15.3 );
setRotateKey( spep_2 -a1 + 466, 1, -15 );
setRotateKey( spep_2 -a1 + 467, 1, -15 );
setRotateKey( spep_2 -a1 + 468, 1, -14.8 );
setRotateKey( spep_2 -a1 + 469, 1, -14.8 );
setRotateKey( spep_2 -a1 + 470, 1, 56.1 );
setRotateKey( spep_2 -a1 + 478, 1, 56.1 );
setRotateKey( spep_2 -a1 + 480, 1, 56.2 );
setRotateKey( spep_2 -a1 + 490, 1, 56.2 );

-- ** 音 ** --
--飛んでくる2
SE014 = playSeVer2( spep_2 + 0, 1121, "",spep_2 + 48, 0, 12, -1);
setPitch( spep_2 + 0, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
SE015 = playSeVer2( spep_2 + 0, 1019, "",spep_2 + 48, 0, 12, -1);
SE016 = playSeVer2( spep_2 + 0, 1118, "",spep_2 + 48, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 0, SE016, 77 );

--敵ヒット
SE017 = playSeVer2( spep_2 + 22, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 26, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 32, 1159, "", 0, 0, 0, -1);

--飛んでくる3
SE020 = playSeVer2( spep_2 + 100, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 100, 1232, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 100, 1116, "", 0, 0, 0, -1);

--折り返す
SE023 = playSeVer2( spep_2 + 138, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE023, 54 );

--敵ヒット2
SE024 = playSeVer2( spep_2 + 188, 1024, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 188, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 200, 1117, "", 0, 0, 0, -1);

--飛んでる音
SE027 = playSeVer2( spep_2 + 268, 1116, "", 0, 0, 0, -1);

--爆発
SE028 = playSeVer2( spep_2 + 268, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE028, 89 );
SE029 = playSeVer2( spep_2 + 290, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE029, 89 );
SE030 = playSeVer2( spep_2 + 308, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE030, 79 );
SE031 = playSeVer2( spep_2 + 322, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE031, 93 );
SE032 = playSeVer2( spep_2 + 326, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE032, 79 );

--向かってくる
SE033 = playSeVer2( spep_2 + 380, 1258, "",spep_2 + 470, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 380, SE033, 76 );
SE034 = playSeVer2( spep_2 + 386, 1116, "",spep_2 + 478, 0, 10, -1);
SE035 = playSeVer2( spep_2 + 386, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 386, SE035, 76 );
setTimeStretch( SE035, 1.54, 30, 4 );
SE036 = playSeVer2( spep_2 + 386, 1019, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 450, 1019, "",spep_2 + 478, 0, 10, -1);

--敵ヒット
SE038 = playSeVer2( spep_2 + 468, 1187, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 468, 1156, "", 0, 0, 0, -1);

--爆発
SE040 = playSeVer2( spep_2 + 488, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 488, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 622 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 520 );
endPhase( spep_2 + 622 -2 );

end
