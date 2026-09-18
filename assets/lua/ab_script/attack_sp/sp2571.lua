-- 1026740: SSR_ターレス_必殺技_メテオソニック
-- sp_effect_a2_00217

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_001 = 161952;  -- ターレスと敵が見つめあう～神聖樹の実を食べる ef_001
SP_002 = 161956;  -- 食べた後の神聖樹の実を落とす～右からターレスが殴り敵が吹っ飛ぶ ef_002
SP_002b = 161957;  -- 食べた後の神聖樹の実を落とす～右からターレスが殴り敵が吹っ飛ぶ ef_002b

-- 敵側
SP_001r = 161955;  -- ターレスと敵が見つめあう～神聖樹の実を食べる ef_001r
SP_002b_r = 161958;  -- 食べた後の神聖樹の実を落とす～右からターレスが殴り敵が吹っ飛ぶ ef_002b_r
SP_002r = 161959;  -- 食べた後の神聖樹の実を落とす～右からターレスが殴り敵が吹っ飛ぶ ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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
--[[
setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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
]]
ENABLE_AUTO_TIME_STRETCH(0.85);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ターレスと敵が見つめあう～神聖樹の実を食べる ef_001 (140F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 139, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 139, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 139, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 139, entry_SP_001, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 139 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
n = 1;

changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 - n + 60, 1, 0 );

setMoveKey( spep_0 + 0, 1, 198.4, -100.4 , 0 ); --102
setMoveKey( spep_0 - n + 2, 1, 198.9, -101.4 , 0 );
setMoveKey( spep_0 - n + 3, 1, 198.9, -101.4 , 0 );
setMoveKey( spep_0 - n + 4, 1, 199.4, -102.4 , 0 );
setMoveKey( spep_0 - n + 5, 1, 199.4, -102.4 , 0 );
setMoveKey( spep_0 - n + 6, 1, 200, -103.4 , 0 );
setMoveKey( spep_0 - n + 7, 1, 200, -103.4 , 0 );
setMoveKey( spep_0 - n + 8, 1, 200.6, -104.4 , 0 );
setMoveKey( spep_0 - n + 10, 1, 201.1, -105.5 , 0 );
setMoveKey( spep_0 - n + 12, 1, 201.6, -106.6 , 0 );
setMoveKey( spep_0 - n + 14, 1, 202.2, -107.6 , 0 );
setMoveKey( spep_0 - n + 16, 1, 202.7, -108.6 , 0 );
setMoveKey( spep_0 - n + 18, 1, 203.2, -109.6 , 0 );
setMoveKey( spep_0 - n + 20, 1, 203.8, -110.7 , 0 );
setMoveKey( spep_0 - n + 22, 1, 204.3, -111.7 , 0 );
setMoveKey( spep_0 - n + 24, 1, 204.8, -112.8 , 0 );
setMoveKey( spep_0 - n + 26, 1, 205.4, -113.8 , 0 );
setMoveKey( spep_0 - n + 28, 1, 205.9, -114.9 , 0 );
setMoveKey( spep_0 - n + 30, 1, 206.4, -115.9 , 0 );
setMoveKey( spep_0 - n + 32, 1, 206.9, -117 , 0 );
setMoveKey( spep_0 - n + 34, 1, 207.4, -118 , 0 );
setMoveKey( spep_0 - n + 36, 1, 207.9, -119 , 0 );
setMoveKey( spep_0 - n + 38, 1, 208.4, -120.1 , 0 );
setMoveKey( spep_0 - n + 40, 1, 208.9, -121.2 , 0 );
setMoveKey( spep_0 - n + 42, 1, 209.3, -122.3 , 0 );
setMoveKey( spep_0 - n + 44, 1, 209.8, -123.3 , 0 );
setMoveKey( spep_0 - n + 46, 1, 210.3, -124.3 , 0 );
setMoveKey( spep_0 - n + 48, 1, 210.8, -125.4 , 0 );
setMoveKey( spep_0 - n + 50, 1, 211.3, -126.5 , 0 );
setMoveKey( spep_0 - n + 52, 1, 211.7, -127.5 , 0 );
setMoveKey( spep_0 - n + 54, 1, 212.2, -128.6 , 0 );
setMoveKey( spep_0 - n + 56, 1, 212.7, -129.7 , 0 );
setMoveKey( spep_0 - n + 58, 1, 213.1, -130.8 , 0 );
setMoveKey( spep_0 - n + 60, 1, 213.1, -130.8 , 0 );

setScaleKey( spep_0 + 0, 1, 4.01, 4.01 );
setScaleKey( spep_0 - n + 2, 1, 4.02, 4.02 );
setScaleKey( spep_0 - n + 3, 1, 4.02, 4.02 );
setScaleKey( spep_0 - n + 4, 1, 4.04, 4.04 );
setScaleKey( spep_0 - n + 5, 1, 4.04, 4.04 );
setScaleKey( spep_0 - n + 6, 1, 4.05, 4.05 );
setScaleKey( spep_0 - n + 7, 1, 4.05, 4.05 );
setScaleKey( spep_0 - n + 8, 1, 4.07, 4.07 );
setScaleKey( spep_0 - n + 10, 1, 4.08, 4.08 );
setScaleKey( spep_0 - n + 12, 1, 4.09, 4.09 );
setScaleKey( spep_0 - n + 14, 1, 4.11, 4.11 );
setScaleKey( spep_0 - n + 16, 1, 4.12, 4.12 );
setScaleKey( spep_0 - n + 18, 1, 4.13, 4.13 );
setScaleKey( spep_0 - n + 20, 1, 4.15, 4.15 );
setScaleKey( spep_0 - n + 22, 1, 4.16, 4.16 );
setScaleKey( spep_0 - n + 24, 1, 4.18, 4.18 );
setScaleKey( spep_0 - n + 26, 1, 4.19, 4.19 );
setScaleKey( spep_0 - n + 28, 1, 4.2, 4.2 );
setScaleKey( spep_0 - n + 30, 1, 4.22, 4.22 );
setScaleKey( spep_0 - n + 32, 1, 4.23, 4.23 );
setScaleKey( spep_0 - n + 34, 1, 4.24, 4.24 );
setScaleKey( spep_0 - n + 36, 1, 4.26, 4.26 );
setScaleKey( spep_0 - n + 38, 1, 4.27, 4.27 );
setScaleKey( spep_0 - n + 40, 1, 4.29, 4.29 );
setScaleKey( spep_0 - n + 42, 1, 4.3, 4.3 );
setScaleKey( spep_0 - n + 44, 1, 4.31, 4.31 );
setScaleKey( spep_0 - n + 46, 1, 4.33, 4.33 );
setScaleKey( spep_0 - n + 48, 1, 4.34, 4.34 );
setScaleKey( spep_0 - n + 50, 1, 4.36, 4.36 );
setScaleKey( spep_0 - n + 52, 1, 4.37, 4.37 );
setScaleKey( spep_0 - n + 54, 1, 4.38, 4.38 );
setScaleKey( spep_0 - n + 56, 1, 4.4, 4.4 );
setScaleKey( spep_0 - n + 58, 1, 4.41, 4.41 );
setScaleKey( spep_0 - n + 60, 1, 4.41, 4.41 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 - n + 2, 1, 0 );
setRotateKey( spep_0 - n + 3, 1, 0 );
setRotateKey( spep_0 - n + 4, 1, 0 );
setRotateKey( spep_0 - n + 5, 1, 0 );
setRotateKey( spep_0 - n + 6, 1, 0 );
setRotateKey( spep_0 - n + 7, 1, 0 );
setRotateKey( spep_0 - n + 60, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 62; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
spep_x = spep_0 + 50;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--神聖樹の実を食べる
SE002 = playSeVer2( spep_0 + 98, 1071, "",spep_0 + 120, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 98, SE002, 124 );
SE003 = playSeVer2( spep_0 + 102, 1070, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE003, 129 );

-- ** 白フェード ** --
entryFade( spep_0 + 132, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 139;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 食べた後の神聖樹の実を落とす～右からターレスが殴り敵が吹っ飛ぶ ef_002 (330F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 330, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 330, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 330, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 330, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 330, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 330, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 330, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 330, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - n + 90, 1, 1 );
changeAnime( spep_2 - n + 90, 1, 108 );
changeAnime( spep_2 - n + 108, 1, 106 );
changeAnime( spep_2 - n + 120, 1, 108 );
changeAnime( spep_2 - n + 142, 1, 107 );
changeAnime( spep_2 - n + 188, 1, 7 );

setMoveKey( spep_2 - n + 90, 1, -175.2, 3.1 , 0 );
setMoveKey( spep_2 - n + 91, 1, -175.2, 3.1 , 0 );
setMoveKey( spep_2 - n + 92, 1, -134.1, 6.6 , 0 );
setMoveKey( spep_2 - n + 93, 1, -134.1, 6.6 , 0 );
setMoveKey( spep_2 - n + 94, 1, -113.2, 4.5 , 0 );
setMoveKey( spep_2 - n + 95, 1, -113.2, 4.5 , 0 );
setMoveKey( spep_2 - n + 96, 1, -63.2, 18.5 , 0 );
setMoveKey( spep_2 - n + 97, 1, -63.2, 18.5 , 0 );
setMoveKey( spep_2 - n + 98, 1, -140.6, -6.2 , 0 );
setMoveKey( spep_2 - n + 99, 1, -140.6, -6.2 , 0 );
setMoveKey( spep_2 - n + 100, 1, -6.8, 39.1 , 0 );
setMoveKey( spep_2 - n + 101, 1, -6.8, 39.1 , 0 );
setMoveKey( spep_2 - n + 102, 1, 38.9, 8.4 , 0 );
setMoveKey( spep_2 - n + 103, 1, 38.9, 8.4 , 0 );
setMoveKey( spep_2 - n + 104, 1, 66.9, 13 , 0 );
setMoveKey( spep_2 - n + 105, 1, 66.9, 13 , 0 );
setMoveKey( spep_2 - n + 106, 1, 76.9, 10.8 , 0 );
setMoveKey( spep_2 - n + 107, 1, 76.9, 10.8 , 0 );
setMoveKey( spep_2 - n + 108, 1, 57.1, 17.2 , 0 );
setMoveKey( spep_2 - n + 109, 1, 57.1, 17.2 , 0 );
setMoveKey( spep_2 - n + 110, 1, 72.5, 25.3 , 0 );
setMoveKey( spep_2 - n + 111, 1, 72.5, 25.3 , 0 );
setMoveKey( spep_2 - n + 112, 1, 87.8, 33.3 , 0 );
setMoveKey( spep_2 - n + 113, 1, 87.8, 33.3 , 0 );
setMoveKey( spep_2 - n + 114, 1, 103.2, 41.4 , 0 );
setMoveKey( spep_2 - n + 115, 1, 103.2, 41.4 , 0 );
setMoveKey( spep_2 - n + 116, 1, 118.5, 49.6 , 0 );
setMoveKey( spep_2 - n + 117, 1, 118.5, 49.6 , 0 );
setMoveKey( spep_2 - n + 118, 1, 133.9, 57.7 , 0 );
setMoveKey( spep_2 - n + 119, 1, 133.9, 57.7 , 0 );
setMoveKey( spep_2 - n + 120, 1, 129.3, 36.4 , 0 );
setMoveKey( spep_2 - n + 121, 1, 129.3, 36.4 , 0 );
setMoveKey( spep_2 - n + 122, 1, 110.4, 30.5 , 0 );
setMoveKey( spep_2 - n + 123, 1, 110.4, 30.5 , 0 );
setMoveKey( spep_2 - n + 124, 1, 143.4, 49.6 , 0 );
setMoveKey( spep_2 - n + 125, 1, 143.4, 49.6 , 0 );
setMoveKey( spep_2 - n + 126, 1, 129, 18.6 , 0 );
setMoveKey( spep_2 - n + 127, 1, 129, 18.6 , 0 );
setMoveKey( spep_2 - n + 128, 1, 174.7, 40.1 , 0 );
setMoveKey( spep_2 - n + 129, 1, 174.7, 40.1 , 0 );
setMoveKey( spep_2 - n + 130, 1, 254, -12.5 , 0 );
setMoveKey( spep_2 - n + 131, 1, 254, -12.5 , 0 );
setMoveKey( spep_2 - n + 132, 1, 290.9, -6 , 0 );
setMoveKey( spep_2 - n + 133, 1, 290.9, -6 , 0 );
setMoveKey( spep_2 - n + 134, 1, 371.1, -21.8 , 0 );
setMoveKey( spep_2 - n + 135, 1, 371.1, -21.8 , 0 );
setMoveKey( spep_2 - n + 136, 1, 418.8, -53 , 0 );
setMoveKey( spep_2 - n + 137, 1, 418.8, -53 , 0 );
setMoveKey( spep_2 - n + 138, 1, 481.7, -67.4 , 0 );
setMoveKey( spep_2 - n + 139, 1, 481.7, -67.4 , 0 );
setMoveKey( spep_2 - n + 140, 1, 540.5, -84.4 , 0 );
setMoveKey( spep_2 - n + 141, 1, 540.5, -84.4 , 0 );
setMoveKey( spep_2 - n + 142, 1, -303.7, -337.6 , 0 );
setMoveKey( spep_2 - n + 143, 1, -303.7, -337.6 , 0 );
setMoveKey( spep_2 - n + 144, 1, -300.7, -333.4 , 0 );
setMoveKey( spep_2 - n + 145, 1, -300.7, -333.4 , 0 );
setMoveKey( spep_2 - n + 146, 1, -296, -327.4 , 0 );
setMoveKey( spep_2 - n + 147, 1, -296, -327.4 , 0 );
setMoveKey( spep_2 - n + 148, 1, -289.8, -319.5 , 0 );
setMoveKey( spep_2 - n + 149, 1, -289.8, -319.5 , 0 );
setMoveKey( spep_2 - n + 150, 1, -282.3, -310 , 0 );
setMoveKey( spep_2 - n + 151, 1, -282.3, -310 , 0 );
setMoveKey( spep_2 - n + 152, 1, -273.6, -298.9 , 0 );
setMoveKey( spep_2 - n + 153, 1, -273.6, -298.9 , 0 );
setMoveKey( spep_2 - n + 154, 1, -263.6, -286.5 , 0 );
setMoveKey( spep_2 - n + 155, 1, -263.6, -286.5 , 0 );
setMoveKey( spep_2 - n + 156, 1, -252.6, -272.7 , 0 );
setMoveKey( spep_2 - n + 157, 1, -252.6, -272.7 , 0 );
setMoveKey( spep_2 - n + 158, 1, -240.5, -257.7 , 0 );
setMoveKey( spep_2 - n + 159, 1, -240.5, -257.7 , 0 );
setMoveKey( spep_2 - n + 160, 1, -227.5, -241.6 , 0 );
setMoveKey( spep_2 - n + 161, 1, -227.5, -241.6 , 0 );
setMoveKey( spep_2 - n + 162, 1, -213.5, -224.3 , 0 );
setMoveKey( spep_2 - n + 163, 1, -213.5, -224.3 , 0 );
setMoveKey( spep_2 - n + 164, 1, -198.7, -206.1 , 0 );
setMoveKey( spep_2 - n + 165, 1, -198.7, -206.1 , 0 );
setMoveKey( spep_2 - n + 166, 1, -183.1, -186.8 , 0 );
setMoveKey( spep_2 - n + 167, 1, -183.1, -186.8 , 0 );
setMoveKey( spep_2 - n + 168, 1, -166.7, -166.6 , 0 );
setMoveKey( spep_2 - n + 169, 1, -166.7, -166.6 , 0 );
setMoveKey( spep_2 - n + 170, 1, -149.5, -145.4 , 0 );
setMoveKey( spep_2 - n + 171, 1, -149.5, -145.4 , 0 );
setMoveKey( spep_2 - n + 172, 1, -131.6, -123.4 , 0 );
setMoveKey( spep_2 - n + 173, 1, -131.6, -123.4 , 0 );
setMoveKey( spep_2 - n + 174, 1, -112.9, -100.5 , 0 );
setMoveKey( spep_2 - n + 175, 1, -112.9, -100.5 , 0 );
setMoveKey( spep_2 - n + 176, 1, -93.5, -76.7 , 0 );
setMoveKey( spep_2 - n + 177, 1, -93.5, -76.7 , 0 );
setMoveKey( spep_2 - n + 178, 1, -73.4, -52.1 , 0 );
setMoveKey( spep_2 - n + 179, 1, -73.4, -52.1 , 0 );
setMoveKey( spep_2 - n + 180, 1, -52.6, -26.6 , 0 );
setMoveKey( spep_2 - n + 181, 1, -52.6, -26.6 , 0 );
setMoveKey( spep_2 - n + 182, 1, -31, -0.2 , 0 );
setMoveKey( spep_2 - n + 183, 1, -31, -0.2 , 0 );
setMoveKey( spep_2 - n + 184, 1, -8.6, 27.3 , 0 );
setMoveKey( spep_2 - n + 185, 1, -8.6, 27.3 , 0 );
setMoveKey( spep_2 - n + 186, 1, 15, 56.1 , 0 );
setMoveKey( spep_2 - n + 187, 1, 15, 56.1 , 0 );
setMoveKey( spep_2 - n + 188, 1, 95.7, 33.2 , 0 );
setMoveKey( spep_2 - n + 189, 1, 95.7, 33.2 , 0 );
setMoveKey( spep_2 - n + 190, 1, 44.9, 16.4 , 0 );
setMoveKey( spep_2 - n + 191, 1, 44.9, 16.4 , 0 );
setMoveKey( spep_2 - n + 192, 1, 73, 16.9 , 0 );
setMoveKey( spep_2 - n + 193, 1, 73, 16.9 , 0 );
setMoveKey( spep_2 - n + 194, 1, -19.8, 7.4 , 0 );
setMoveKey( spep_2 - n + 195, 1, -19.8, 7.4 , 0 );
setMoveKey( spep_2 - n + 196, 1, -31.7, -27.4 , 0 );
setMoveKey( spep_2 - n + 197, 1, -31.7, -27.4 , 0 );
setMoveKey( spep_2 - n + 198, 1, -175.2, -52.8 , 0 );
setMoveKey( spep_2 - n + 199, 1, -175.2, -52.8 , 0 );
setMoveKey( spep_2 - n + 200, 1, -274.6, -105.4 , 0 );
setMoveKey( spep_2 - n + 201, 1, -274.6, -105.4 , 0 );
setMoveKey( spep_2 - n + 202, 1, -411.3, -139.9 , 0 );
setMoveKey( spep_2 - n + 203, 1, -411.3, -139.9 , 0 );
setMoveKey( spep_2 - n + 204, 1, -509.5, -180.2 , 0 );
setMoveKey( spep_2 - n + 205, 1, -509.5, -180.2 , 0 );
setMoveKey( spep_2 - n + 206, 1, -644.4, -226 , 0 );
setMoveKey( spep_2 - n + 207, 1, -644.4, -226 , 0 );
setMoveKey( spep_2 - n + 208, 1, -749.8, -260.2 , 0 );
setMoveKey( spep_2 - n + 209, 1, -749.8, -260.2 , 0 );
setMoveKey( spep_2 - n + 210, 1, -871.7, -310 , 0 );
setMoveKey( spep_2 - n + 211, 1, -871.7, -310 , 0 );
setMoveKey( spep_2 - n + 212, 1, -990.6, -340.2 , 0 );
setMoveKey( spep_2 - n + 213, 1, -990.6, -340.2 , 0 );
setMoveKey( spep_2 - n + 214, 1, -1105, -389.2 , 0 );
setMoveKey( spep_2 - n + 215, 1, -1105, -389.2 , 0 );
setMoveKey( spep_2 - n + 216, 1, -1222.7, -429.8 , 0 );
setMoveKey( spep_2 - n + 222, 1, -1222.7, -429.8 , 0 );

a = 1.05;
setScaleKey( spep_2 - n + 90, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 107, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 108, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_2 - n + 119, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_2 - n + 120, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 127, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 128, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_2 - n + 129, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_2 - n + 130, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_2 - n + 131, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_2 - n + 132, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_2 - n + 133, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_2 - n + 134, 1, 1.34 * a, 1.34 * a );
setScaleKey( spep_2 - n + 135, 1, 1.34 * a, 1.34 * a );
setScaleKey( spep_2 - n + 136, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_2 - n + 137, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_2 - n + 138, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_2 - n + 139, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_2 - n + 140, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_2 - n + 141, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_2 - n + 142, 1, 0.1, 0.1 );
setScaleKey( spep_2 - n + 145, 1, 0.1, 0.1 );
setScaleKey( spep_2 - n + 146, 1, 0.11, 0.11 );
setScaleKey( spep_2 - n + 147, 1, 0.11, 0.11 );
setScaleKey( spep_2 - n + 148, 1, 0.13, 0.12 );
setScaleKey( spep_2 - n + 149, 1, 0.13, 0.12 );
setScaleKey( spep_2 - n + 150, 1, 0.15, 0.14 );
setScaleKey( spep_2 - n + 151, 1, 0.15, 0.14 );
setScaleKey( spep_2 - n + 152, 1, 0.17, 0.16 );
setScaleKey( spep_2 - n + 153, 1, 0.17, 0.16 );
setScaleKey( spep_2 - n + 154, 1, 0.2, 0.19 );
setScaleKey( spep_2 - n + 155, 1, 0.2, 0.19 );
setScaleKey( spep_2 - n + 156, 1, 0.23, 0.22 );
setScaleKey( spep_2 - n + 157, 1, 0.23, 0.22 );
setScaleKey( spep_2 - n + 158, 1, 0.27, 0.26 );
setScaleKey( spep_2 - n + 159, 1, 0.27, 0.26 );
setScaleKey( spep_2 - n + 160, 1, 0.31, 0.29 );
setScaleKey( spep_2 - n + 161, 1, 0.31, 0.29 );
setScaleKey( spep_2 - n + 162, 1, 0.35, 0.33 );
setScaleKey( spep_2 - n + 163, 1, 0.35, 0.33 );
setScaleKey( spep_2 - n + 164, 1, 0.39, 0.38 );
setScaleKey( spep_2 - n + 165, 1, 0.39, 0.38 );
setScaleKey( spep_2 - n + 166, 1, 0.44, 0.42 );
setScaleKey( spep_2 - n + 167, 1, 0.44, 0.42 );
setScaleKey( spep_2 - n + 168, 1, 0.49, 0.48 );
setScaleKey( spep_2 - n + 169, 1, 0.49, 0.48 );
setScaleKey( spep_2 - n + 170, 1, 0.55, 0.53 );
setScaleKey( spep_2 - n + 171, 1, 0.55, 0.53 );
setScaleKey( spep_2 - n + 172, 1, 0.6, 0.58 );
setScaleKey( spep_2 - n + 173, 1, 0.6, 0.58 );
setScaleKey( spep_2 - n + 174, 1, 0.66, 0.64 );
setScaleKey( spep_2 - n + 175, 1, 0.66, 0.64 );
setScaleKey( spep_2 - n + 176, 1, 0.72, 0.7 );
setScaleKey( spep_2 - n + 177, 1, 0.72, 0.7 );
setScaleKey( spep_2 - n + 178, 1, 0.78, 0.77 );
setScaleKey( spep_2 - n + 179, 1, 0.78, 0.77 );
setScaleKey( spep_2 - n + 180, 1, 0.85, 0.84 );
setScaleKey( spep_2 - n + 181, 1, 0.85, 0.84 );
setScaleKey( spep_2 - n + 182, 1, 0.92, 0.91 );
setScaleKey( spep_2 - n + 183, 1, 0.92, 0.91 );
setScaleKey( spep_2 - n + 184, 1, 0.99, 0.98 );
setScaleKey( spep_2 - n + 185, 1, 0.99, 0.98 );
setScaleKey( spep_2 - n + 186, 1, 1.06, 1.06 );
setScaleKey( spep_2 - n + 222, 1, 1.06, 1.06 );

setRotateKey( spep_2 - n + 90, 1, 4.5 );
setRotateKey( spep_2 - n + 91, 1, 4.5 );
setRotateKey( spep_2 - n + 92, 1, 5 );
setRotateKey( spep_2 - n + 93, 1, 5 );
setRotateKey( spep_2 - n + 94, 1, 5.5 );
setRotateKey( spep_2 - n + 99, 1, 5.5 );
setRotateKey( spep_2 - n + 100, 1, 6.9 );
setRotateKey( spep_2 - n + 101, 1, 6.9 );
setRotateKey( spep_2 - n + 102, 1, 7.4 );
setRotateKey( spep_2 - n + 103, 1, 7.4 );
setRotateKey( spep_2 - n + 104, 1, 7.8 );
setRotateKey( spep_2 - n + 105, 1, 7.8 );
setRotateKey( spep_2 - n + 106, 1, 8.3 );
setRotateKey( spep_2 - n + 107, 1, 8.3 );
setRotateKey( spep_2 - n + 108, 1, -56 );
setRotateKey( spep_2 - n + 109, 1, -56 );
setRotateKey( spep_2 - n + 110, 1, -51.4 );
setRotateKey( spep_2 - n + 111, 1, -51.4 );
setRotateKey( spep_2 - n + 112, 1, -46.8 );
setRotateKey( spep_2 - n + 113, 1, -46.8 );
setRotateKey( spep_2 - n + 114, 1, -42.2 );
setRotateKey( spep_2 - n + 115, 1, -42.2 );
setRotateKey( spep_2 - n + 116, 1, -37.6 );
setRotateKey( spep_2 - n + 117, 1, -37.6 );
setRotateKey( spep_2 - n + 118, 1, -33 );
setRotateKey( spep_2 - n + 127, 1, -33 );
setRotateKey( spep_2 - n + 128, 1, -22.9 );
setRotateKey( spep_2 - n + 129, 1, -22.9 );
setRotateKey( spep_2 - n + 130, 1, -12.9 );
setRotateKey( spep_2 - n + 131, 1, -12.9 );
setRotateKey( spep_2 - n + 132, 1, -2.8 );
setRotateKey( spep_2 - n + 133, 1, -2.8 );
setRotateKey( spep_2 - n + 134, 1, 7.3 );
setRotateKey( spep_2 - n + 135, 1, 7.3 );
setRotateKey( spep_2 - n + 136, 1, 17.3 );
setRotateKey( spep_2 - n + 137, 1, 17.3 );
setRotateKey( spep_2 - n + 138, 1, 27.4 );
setRotateKey( spep_2 - n + 139, 1, 27.4 );
setRotateKey( spep_2 - n + 140, 1, 37.5 );
setRotateKey( spep_2 - n + 141, 1, 37.5 );
setRotateKey( spep_2 - n + 142, 1, -79 );
setRotateKey( spep_2 - n + 143, 1, -79 );
setRotateKey( spep_2 - n + 144, 1, -76 );
setRotateKey( spep_2 - n + 145, 1, -76 );
setRotateKey( spep_2 - n + 146, 1, -73 );
setRotateKey( spep_2 - n + 147, 1, -73 );
setRotateKey( spep_2 - n + 148, 1, -70 );
setRotateKey( spep_2 - n + 149, 1, -70 );
setRotateKey( spep_2 - n + 150, 1, -67 );
setRotateKey( spep_2 - n + 151, 1, -67 );
setRotateKey( spep_2 - n + 152, 1, -64 );
setRotateKey( spep_2 - n + 153, 1, -64 );
setRotateKey( spep_2 - n + 154, 1, -61 );
setRotateKey( spep_2 - n + 155, 1, -61 );
setRotateKey( spep_2 - n + 156, 1, -58 );
setRotateKey( spep_2 - n + 157, 1, -58 );
setRotateKey( spep_2 - n + 158, 1, -55 );
setRotateKey( spep_2 - n + 159, 1, -55 );
setRotateKey( spep_2 - n + 160, 1, -52 );
setRotateKey( spep_2 - n + 161, 1, -52 );
setRotateKey( spep_2 - n + 162, 1, -49 );
setRotateKey( spep_2 - n + 163, 1, -49 );
setRotateKey( spep_2 - n + 164, 1, -46 );
setRotateKey( spep_2 - n + 165, 1, -46 );
setRotateKey( spep_2 - n + 166, 1, -43 );
setRotateKey( spep_2 - n + 167, 1, -43 );
setRotateKey( spep_2 - n + 168, 1, -40 );
setRotateKey( spep_2 - n + 169, 1, -40 );
setRotateKey( spep_2 - n + 170, 1, -37 );
setRotateKey( spep_2 - n + 171, 1, -37 );
setRotateKey( spep_2 - n + 172, 1, -34 );
setRotateKey( spep_2 - n + 173, 1, -34 );
setRotateKey( spep_2 - n + 174, 1, -31 );
setRotateKey( spep_2 - n + 175, 1, -31 );
setRotateKey( spep_2 - n + 176, 1, -28 );
setRotateKey( spep_2 - n + 177, 1, -28 );
setRotateKey( spep_2 - n + 178, 1, -25 );
setRotateKey( spep_2 - n + 179, 1, -25 );
setRotateKey( spep_2 - n + 180, 1, -22 );
setRotateKey( spep_2 - n + 181, 1, -22 );
setRotateKey( spep_2 - n + 182, 1, -19 );
setRotateKey( spep_2 - n + 183, 1, -19 );
setRotateKey( spep_2 - n + 184, 1, -16 );
setRotateKey( spep_2 - n + 185, 1, -16 );
setRotateKey( spep_2 - n + 186, 1, -13 );
setRotateKey( spep_2 - n + 197, 1, -13 );
setRotateKey( spep_2 - n + 198, 1, -18.5 );
setRotateKey( spep_2 - n + 199, 1, -18.5 );
setRotateKey( spep_2 - n + 200, 1, -24 );
setRotateKey( spep_2 - n + 201, 1, -24 );
setRotateKey( spep_2 - n + 202, 1, -29.5 );
setRotateKey( spep_2 - n + 203, 1, -29.5 );
setRotateKey( spep_2 - n + 204, 1, -35 );
setRotateKey( spep_2 - n + 205, 1, -35 );
setRotateKey( spep_2 - n + 206, 1, -40.5 );
setRotateKey( spep_2 - n + 207, 1, -40.5 );
setRotateKey( spep_2 - n + 208, 1, -46 );
setRotateKey( spep_2 - n + 209, 1, -46 );
setRotateKey( spep_2 - n + 210, 1, -51.5 );
setRotateKey( spep_2 - n + 211, 1, -51.5 );
setRotateKey( spep_2 - n + 212, 1, -57 );
setRotateKey( spep_2 - n + 213, 1, -57 );
setRotateKey( spep_2 - n + 214, 1, -62.5 );
setRotateKey( spep_2 - n + 215, 1, -62.5 );
setRotateKey( spep_2 - n + 216, 1, -68 );
setRotateKey( spep_2 - n + 222, 1, -68 );

-- ** 音 ** --
--神聖樹の実落ちる
SE006 = playSeVer2( spep_2 + 26, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE006, 130 );
SE007 = playSeVer2( spep_2 + 26, 1111, "",spep_2 + 42, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 26, SE007, 229 );
SE008 = playSeVer2( spep_2 + 26, 1029, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 56, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE009, 83 );

--瞬間移動
SE010 = playSeVer2( spep_2 + 60, 1109, "", 0, 0, 0, -1);

--初手エルボー
SE011 = playSeVer2( spep_2 + 84, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 94, 1187, "",spep_2 + 120, 0, 12, -1);
SE013 = playSeVer2( spep_2 + 94, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE014 = playSeVer2( spep_2 + 120, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 120, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE015, 73 );
SE016 = playSeVer2( spep_2 + 120, 1183, "",spep_2 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 120, SE016, 77 );

--追い越す
SE017 = playSeVer2( spep_2 + 142, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 148, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE018, 155 );

--殴り飛ばす２
SE019 = playSeVer2( spep_2 + 188, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 188, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE020, 79 );
SE021 = playSeVer2( spep_2 + 188, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE021, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 330 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
--dealDamage( spep_2 + 228 );
--endPhase( spep_2 +  330 - 2 );

-------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --  spep_2 + 222 〜 330
spep_N = spep_2 + 222

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N -1 + 4, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N -1 + 6, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N -1 + 8, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N -1 + 10, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N -1 + 12, 1, -28.8, -46 , 0 );
setMoveKey( spep_N -1 + 14, 1, -32.3, -52 , 0 );
setMoveKey( spep_N -1 + 16, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 18, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 20, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 22, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 24, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 26, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 28, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 30, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 32, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_N -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_N -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_N -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_N -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_N -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_N -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -122.8 - 232 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N -1 + 4, 1, -1 );
setRotateKey( spep_N -1 + 6, 1, 120.7 );
setRotateKey( spep_N -1 + 8, 1, 242.5 );
setRotateKey( spep_N -1 + 10, 1, 364.3 );
setRotateKey( spep_N -1 + 12, 1, 486 );
setRotateKey( spep_N -1 + 14, 1, 607.8 );
setRotateKey( spep_N -1 + 16, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 4 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 - 4 ); -- 終了フレーム spep_2 + 330 - 2

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ターレスと敵が見つめあう～神聖樹の実を食べる ef_001 (140F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 139, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + 139, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 139, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 139, entry_SP_001, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 139 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
n = 1;

changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 - n + 60, 1, 0 );

setMoveKey( spep_0 + 0, 1, 198.4, -100.4 , 0 ); --102
setMoveKey( spep_0 - n + 2, 1, 198.9, -101.4 , 0 );
setMoveKey( spep_0 - n + 3, 1, 198.9, -101.4 , 0 );
setMoveKey( spep_0 - n + 4, 1, 199.4, -102.4 , 0 );
setMoveKey( spep_0 - n + 5, 1, 199.4, -102.4 , 0 );
setMoveKey( spep_0 - n + 6, 1, 200, -103.4 , 0 );
setMoveKey( spep_0 - n + 7, 1, 200, -103.4 , 0 );
setMoveKey( spep_0 - n + 8, 1, 200.6, -104.4 , 0 );
setMoveKey( spep_0 - n + 10, 1, 201.1, -105.5 , 0 );
setMoveKey( spep_0 - n + 12, 1, 201.6, -106.6 , 0 );
setMoveKey( spep_0 - n + 14, 1, 202.2, -107.6 , 0 );
setMoveKey( spep_0 - n + 16, 1, 202.7, -108.6 , 0 );
setMoveKey( spep_0 - n + 18, 1, 203.2, -109.6 , 0 );
setMoveKey( spep_0 - n + 20, 1, 203.8, -110.7 , 0 );
setMoveKey( spep_0 - n + 22, 1, 204.3, -111.7 , 0 );
setMoveKey( spep_0 - n + 24, 1, 204.8, -112.8 , 0 );
setMoveKey( spep_0 - n + 26, 1, 205.4, -113.8 , 0 );
setMoveKey( spep_0 - n + 28, 1, 205.9, -114.9 , 0 );
setMoveKey( spep_0 - n + 30, 1, 206.4, -115.9 , 0 );
setMoveKey( spep_0 - n + 32, 1, 206.9, -117 , 0 );
setMoveKey( spep_0 - n + 34, 1, 207.4, -118 , 0 );
setMoveKey( spep_0 - n + 36, 1, 207.9, -119 , 0 );
setMoveKey( spep_0 - n + 38, 1, 208.4, -120.1 , 0 );
setMoveKey( spep_0 - n + 40, 1, 208.9, -121.2 , 0 );
setMoveKey( spep_0 - n + 42, 1, 209.3, -122.3 , 0 );
setMoveKey( spep_0 - n + 44, 1, 209.8, -123.3 , 0 );
setMoveKey( spep_0 - n + 46, 1, 210.3, -124.3 , 0 );
setMoveKey( spep_0 - n + 48, 1, 210.8, -125.4 , 0 );
setMoveKey( spep_0 - n + 50, 1, 211.3, -126.5 , 0 );
setMoveKey( spep_0 - n + 52, 1, 211.7, -127.5 , 0 );
setMoveKey( spep_0 - n + 54, 1, 212.2, -128.6 , 0 );
setMoveKey( spep_0 - n + 56, 1, 212.7, -129.7 , 0 );
setMoveKey( spep_0 - n + 58, 1, 213.1, -130.8 , 0 );
setMoveKey( spep_0 - n + 60, 1, 213.1, -130.8 , 0 );

setScaleKey( spep_0 + 0, 1, 4.01, 4.01 );
setScaleKey( spep_0 - n + 2, 1, 4.02, 4.02 );
setScaleKey( spep_0 - n + 3, 1, 4.02, 4.02 );
setScaleKey( spep_0 - n + 4, 1, 4.04, 4.04 );
setScaleKey( spep_0 - n + 5, 1, 4.04, 4.04 );
setScaleKey( spep_0 - n + 6, 1, 4.05, 4.05 );
setScaleKey( spep_0 - n + 7, 1, 4.05, 4.05 );
setScaleKey( spep_0 - n + 8, 1, 4.07, 4.07 );
setScaleKey( spep_0 - n + 10, 1, 4.08, 4.08 );
setScaleKey( spep_0 - n + 12, 1, 4.09, 4.09 );
setScaleKey( spep_0 - n + 14, 1, 4.11, 4.11 );
setScaleKey( spep_0 - n + 16, 1, 4.12, 4.12 );
setScaleKey( spep_0 - n + 18, 1, 4.13, 4.13 );
setScaleKey( spep_0 - n + 20, 1, 4.15, 4.15 );
setScaleKey( spep_0 - n + 22, 1, 4.16, 4.16 );
setScaleKey( spep_0 - n + 24, 1, 4.18, 4.18 );
setScaleKey( spep_0 - n + 26, 1, 4.19, 4.19 );
setScaleKey( spep_0 - n + 28, 1, 4.2, 4.2 );
setScaleKey( spep_0 - n + 30, 1, 4.22, 4.22 );
setScaleKey( spep_0 - n + 32, 1, 4.23, 4.23 );
setScaleKey( spep_0 - n + 34, 1, 4.24, 4.24 );
setScaleKey( spep_0 - n + 36, 1, 4.26, 4.26 );
setScaleKey( spep_0 - n + 38, 1, 4.27, 4.27 );
setScaleKey( spep_0 - n + 40, 1, 4.29, 4.29 );
setScaleKey( spep_0 - n + 42, 1, 4.3, 4.3 );
setScaleKey( spep_0 - n + 44, 1, 4.31, 4.31 );
setScaleKey( spep_0 - n + 46, 1, 4.33, 4.33 );
setScaleKey( spep_0 - n + 48, 1, 4.34, 4.34 );
setScaleKey( spep_0 - n + 50, 1, 4.36, 4.36 );
setScaleKey( spep_0 - n + 52, 1, 4.37, 4.37 );
setScaleKey( spep_0 - n + 54, 1, 4.38, 4.38 );
setScaleKey( spep_0 - n + 56, 1, 4.4, 4.4 );
setScaleKey( spep_0 - n + 58, 1, 4.41, 4.41 );
setScaleKey( spep_0 - n + 60, 1, 4.41, 4.41 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 - n + 2, 1, 0 );
setRotateKey( spep_0 - n + 3, 1, 0 );
setRotateKey( spep_0 - n + 4, 1, 0 );
setRotateKey( spep_0 - n + 5, 1, 0 );
setRotateKey( spep_0 - n + 6, 1, 0 );
setRotateKey( spep_0 - n + 7, 1, 0 );
setRotateKey( spep_0 - n + 60, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 62; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
spep_x = spep_0 + 50;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--神聖樹の実を食べる
SE002 = playSeVer2( spep_0 + 98, 1071, "",spep_0 + 120, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 98, SE002, 124 );
SE003 = playSeVer2( spep_0 + 102, 1070, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE003, 129 );

-- ** 白フェード ** --
entryFade( spep_0 + 132, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 139;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 食べた後の神聖樹の実を落とす～右からターレスが殴り敵が吹っ飛ぶ ef_002 (330F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 330, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + 330, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 330, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 330, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b_r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 330, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 330, entry_SP_002b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 330, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 330, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - n + 90, 1, 1 );
changeAnime( spep_2 - n + 90, 1, 108 );
changeAnime( spep_2 - n + 108, 1, 106 );
changeAnime( spep_2 - n + 120, 1, 108 );
changeAnime( spep_2 - n + 142, 1, 107 );
changeAnime( spep_2 - n + 188, 1, 7 );

setMoveKey( spep_2 - n + 90, 1, -175.2, 3.1 , 0 );
setMoveKey( spep_2 - n + 91, 1, -175.2, 3.1 , 0 );
setMoveKey( spep_2 - n + 92, 1, -134.1, 6.6 , 0 );
setMoveKey( spep_2 - n + 93, 1, -134.1, 6.6 , 0 );
setMoveKey( spep_2 - n + 94, 1, -113.2, 4.5 , 0 );
setMoveKey( spep_2 - n + 95, 1, -113.2, 4.5 , 0 );
setMoveKey( spep_2 - n + 96, 1, -63.2, 18.5 , 0 );
setMoveKey( spep_2 - n + 97, 1, -63.2, 18.5 , 0 );
setMoveKey( spep_2 - n + 98, 1, -140.6, -6.2 , 0 );
setMoveKey( spep_2 - n + 99, 1, -140.6, -6.2 , 0 );
setMoveKey( spep_2 - n + 100, 1, -6.8, 39.1 , 0 );
setMoveKey( spep_2 - n + 101, 1, -6.8, 39.1 , 0 );
setMoveKey( spep_2 - n + 102, 1, 38.9, 8.4 , 0 );
setMoveKey( spep_2 - n + 103, 1, 38.9, 8.4 , 0 );
setMoveKey( spep_2 - n + 104, 1, 66.9, 13 , 0 );
setMoveKey( spep_2 - n + 105, 1, 66.9, 13 , 0 );
setMoveKey( spep_2 - n + 106, 1, 76.9, 10.8 , 0 );
setMoveKey( spep_2 - n + 107, 1, 76.9, 10.8 , 0 );
setMoveKey( spep_2 - n + 108, 1, 57.1, 17.2 , 0 );
setMoveKey( spep_2 - n + 109, 1, 57.1, 17.2 , 0 );
setMoveKey( spep_2 - n + 110, 1, 72.5, 25.3 , 0 );
setMoveKey( spep_2 - n + 111, 1, 72.5, 25.3 , 0 );
setMoveKey( spep_2 - n + 112, 1, 87.8, 33.3 , 0 );
setMoveKey( spep_2 - n + 113, 1, 87.8, 33.3 , 0 );
setMoveKey( spep_2 - n + 114, 1, 103.2, 41.4 , 0 );
setMoveKey( spep_2 - n + 115, 1, 103.2, 41.4 , 0 );
setMoveKey( spep_2 - n + 116, 1, 118.5, 49.6 , 0 );
setMoveKey( spep_2 - n + 117, 1, 118.5, 49.6 , 0 );
setMoveKey( spep_2 - n + 118, 1, 133.9, 57.7 , 0 );
setMoveKey( spep_2 - n + 119, 1, 133.9, 57.7 , 0 );
setMoveKey( spep_2 - n + 120, 1, 129.3, 36.4 , 0 );
setMoveKey( spep_2 - n + 121, 1, 129.3, 36.4 , 0 );
setMoveKey( spep_2 - n + 122, 1, 110.4, 30.5 , 0 );
setMoveKey( spep_2 - n + 123, 1, 110.4, 30.5 , 0 );
setMoveKey( spep_2 - n + 124, 1, 143.4, 49.6 , 0 );
setMoveKey( spep_2 - n + 125, 1, 143.4, 49.6 , 0 );
setMoveKey( spep_2 - n + 126, 1, 129, 18.6 , 0 );
setMoveKey( spep_2 - n + 127, 1, 129, 18.6 , 0 );
setMoveKey( spep_2 - n + 128, 1, 174.7, 40.1 , 0 );
setMoveKey( spep_2 - n + 129, 1, 174.7, 40.1 , 0 );
setMoveKey( spep_2 - n + 130, 1, 254, -12.5 , 0 );
setMoveKey( spep_2 - n + 131, 1, 254, -12.5 , 0 );
setMoveKey( spep_2 - n + 132, 1, 290.9, -6 , 0 );
setMoveKey( spep_2 - n + 133, 1, 290.9, -6 , 0 );
setMoveKey( spep_2 - n + 134, 1, 371.1, -21.8 , 0 );
setMoveKey( spep_2 - n + 135, 1, 371.1, -21.8 , 0 );
setMoveKey( spep_2 - n + 136, 1, 418.8, -53 , 0 );
setMoveKey( spep_2 - n + 137, 1, 418.8, -53 , 0 );
setMoveKey( spep_2 - n + 138, 1, 481.7, -67.4 , 0 );
setMoveKey( spep_2 - n + 139, 1, 481.7, -67.4 , 0 );
setMoveKey( spep_2 - n + 140, 1, 540.5, -84.4 , 0 );
setMoveKey( spep_2 - n + 141, 1, 540.5, -84.4 , 0 );
setMoveKey( spep_2 - n + 142, 1, -303.7, -337.6 , 0 );
setMoveKey( spep_2 - n + 143, 1, -303.7, -337.6 , 0 );
setMoveKey( spep_2 - n + 144, 1, -300.7, -333.4 , 0 );
setMoveKey( spep_2 - n + 145, 1, -300.7, -333.4 , 0 );
setMoveKey( spep_2 - n + 146, 1, -296, -327.4 , 0 );
setMoveKey( spep_2 - n + 147, 1, -296, -327.4 , 0 );
setMoveKey( spep_2 - n + 148, 1, -289.8, -319.5 , 0 );
setMoveKey( spep_2 - n + 149, 1, -289.8, -319.5 , 0 );
setMoveKey( spep_2 - n + 150, 1, -282.3, -310 , 0 );
setMoveKey( spep_2 - n + 151, 1, -282.3, -310 , 0 );
setMoveKey( spep_2 - n + 152, 1, -273.6, -298.9 , 0 );
setMoveKey( spep_2 - n + 153, 1, -273.6, -298.9 , 0 );
setMoveKey( spep_2 - n + 154, 1, -263.6, -286.5 , 0 );
setMoveKey( spep_2 - n + 155, 1, -263.6, -286.5 , 0 );
setMoveKey( spep_2 - n + 156, 1, -252.6, -272.7 , 0 );
setMoveKey( spep_2 - n + 157, 1, -252.6, -272.7 , 0 );
setMoveKey( spep_2 - n + 158, 1, -240.5, -257.7 , 0 );
setMoveKey( spep_2 - n + 159, 1, -240.5, -257.7 , 0 );
setMoveKey( spep_2 - n + 160, 1, -227.5, -241.6 , 0 );
setMoveKey( spep_2 - n + 161, 1, -227.5, -241.6 , 0 );
setMoveKey( spep_2 - n + 162, 1, -213.5, -224.3 , 0 );
setMoveKey( spep_2 - n + 163, 1, -213.5, -224.3 , 0 );
setMoveKey( spep_2 - n + 164, 1, -198.7, -206.1 , 0 );
setMoveKey( spep_2 - n + 165, 1, -198.7, -206.1 , 0 );
setMoveKey( spep_2 - n + 166, 1, -183.1, -186.8 , 0 );
setMoveKey( spep_2 - n + 167, 1, -183.1, -186.8 , 0 );
setMoveKey( spep_2 - n + 168, 1, -166.7, -166.6 , 0 );
setMoveKey( spep_2 - n + 169, 1, -166.7, -166.6 , 0 );
setMoveKey( spep_2 - n + 170, 1, -149.5, -145.4 , 0 );
setMoveKey( spep_2 - n + 171, 1, -149.5, -145.4 , 0 );
setMoveKey( spep_2 - n + 172, 1, -131.6, -123.4 , 0 );
setMoveKey( spep_2 - n + 173, 1, -131.6, -123.4 , 0 );
setMoveKey( spep_2 - n + 174, 1, -112.9, -100.5 , 0 );
setMoveKey( spep_2 - n + 175, 1, -112.9, -100.5 , 0 );
setMoveKey( spep_2 - n + 176, 1, -93.5, -76.7 , 0 );
setMoveKey( spep_2 - n + 177, 1, -93.5, -76.7 , 0 );
setMoveKey( spep_2 - n + 178, 1, -73.4, -52.1 , 0 );
setMoveKey( spep_2 - n + 179, 1, -73.4, -52.1 , 0 );
setMoveKey( spep_2 - n + 180, 1, -52.6, -26.6 , 0 );
setMoveKey( spep_2 - n + 181, 1, -52.6, -26.6 , 0 );
setMoveKey( spep_2 - n + 182, 1, -31, -0.2 , 0 );
setMoveKey( spep_2 - n + 183, 1, -31, -0.2 , 0 );
setMoveKey( spep_2 - n + 184, 1, -8.6, 27.3 , 0 );
setMoveKey( spep_2 - n + 185, 1, -8.6, 27.3 , 0 );
setMoveKey( spep_2 - n + 186, 1, 15, 56.1 , 0 );
setMoveKey( spep_2 - n + 187, 1, 15, 56.1 , 0 );
setMoveKey( spep_2 - n + 188, 1, 95.7, 33.2 , 0 );
setMoveKey( spep_2 - n + 189, 1, 95.7, 33.2 , 0 );
setMoveKey( spep_2 - n + 190, 1, 44.9, 16.4 , 0 );
setMoveKey( spep_2 - n + 191, 1, 44.9, 16.4 , 0 );
setMoveKey( spep_2 - n + 192, 1, 73, 16.9 , 0 );
setMoveKey( spep_2 - n + 193, 1, 73, 16.9 , 0 );
setMoveKey( spep_2 - n + 194, 1, -19.8, 7.4 , 0 );
setMoveKey( spep_2 - n + 195, 1, -19.8, 7.4 , 0 );
setMoveKey( spep_2 - n + 196, 1, -31.7, -27.4 , 0 );
setMoveKey( spep_2 - n + 197, 1, -31.7, -27.4 , 0 );
setMoveKey( spep_2 - n + 198, 1, -175.2, -52.8 , 0 );
setMoveKey( spep_2 - n + 199, 1, -175.2, -52.8 , 0 );
setMoveKey( spep_2 - n + 200, 1, -274.6, -105.4 , 0 );
setMoveKey( spep_2 - n + 201, 1, -274.6, -105.4 , 0 );
setMoveKey( spep_2 - n + 202, 1, -411.3, -139.9 , 0 );
setMoveKey( spep_2 - n + 203, 1, -411.3, -139.9 , 0 );
setMoveKey( spep_2 - n + 204, 1, -509.5, -180.2 , 0 );
setMoveKey( spep_2 - n + 205, 1, -509.5, -180.2 , 0 );
setMoveKey( spep_2 - n + 206, 1, -644.4, -226 , 0 );
setMoveKey( spep_2 - n + 207, 1, -644.4, -226 , 0 );
setMoveKey( spep_2 - n + 208, 1, -749.8, -260.2 , 0 );
setMoveKey( spep_2 - n + 209, 1, -749.8, -260.2 , 0 );
setMoveKey( spep_2 - n + 210, 1, -871.7, -310 , 0 );
setMoveKey( spep_2 - n + 211, 1, -871.7, -310 , 0 );
setMoveKey( spep_2 - n + 212, 1, -990.6, -340.2 , 0 );
setMoveKey( spep_2 - n + 213, 1, -990.6, -340.2 , 0 );
setMoveKey( spep_2 - n + 214, 1, -1105, -389.2 , 0 );
setMoveKey( spep_2 - n + 215, 1, -1105, -389.2 , 0 );
setMoveKey( spep_2 - n + 216, 1, -1222.7, -429.8 , 0 );
setMoveKey( spep_2 - n + 222, 1, -1222.7, -429.8 , 0 );

a = 1.05;
setScaleKey( spep_2 - n + 90, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 107, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 108, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_2 - n + 119, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_2 - n + 120, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 127, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_2 - n + 128, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_2 - n + 129, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_2 - n + 130, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_2 - n + 131, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_2 - n + 132, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_2 - n + 133, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_2 - n + 134, 1, 1.34 * a, 1.34 * a );
setScaleKey( spep_2 - n + 135, 1, 1.34 * a, 1.34 * a );
setScaleKey( spep_2 - n + 136, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_2 - n + 137, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_2 - n + 138, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_2 - n + 139, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_2 - n + 140, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_2 - n + 141, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_2 - n + 142, 1, 0.1, 0.1 );
setScaleKey( spep_2 - n + 145, 1, 0.1, 0.1 );
setScaleKey( spep_2 - n + 146, 1, 0.11, 0.11 );
setScaleKey( spep_2 - n + 147, 1, 0.11, 0.11 );
setScaleKey( spep_2 - n + 148, 1, 0.13, 0.12 );
setScaleKey( spep_2 - n + 149, 1, 0.13, 0.12 );
setScaleKey( spep_2 - n + 150, 1, 0.15, 0.14 );
setScaleKey( spep_2 - n + 151, 1, 0.15, 0.14 );
setScaleKey( spep_2 - n + 152, 1, 0.17, 0.16 );
setScaleKey( spep_2 - n + 153, 1, 0.17, 0.16 );
setScaleKey( spep_2 - n + 154, 1, 0.2, 0.19 );
setScaleKey( spep_2 - n + 155, 1, 0.2, 0.19 );
setScaleKey( spep_2 - n + 156, 1, 0.23, 0.22 );
setScaleKey( spep_2 - n + 157, 1, 0.23, 0.22 );
setScaleKey( spep_2 - n + 158, 1, 0.27, 0.26 );
setScaleKey( spep_2 - n + 159, 1, 0.27, 0.26 );
setScaleKey( spep_2 - n + 160, 1, 0.31, 0.29 );
setScaleKey( spep_2 - n + 161, 1, 0.31, 0.29 );
setScaleKey( spep_2 - n + 162, 1, 0.35, 0.33 );
setScaleKey( spep_2 - n + 163, 1, 0.35, 0.33 );
setScaleKey( spep_2 - n + 164, 1, 0.39, 0.38 );
setScaleKey( spep_2 - n + 165, 1, 0.39, 0.38 );
setScaleKey( spep_2 - n + 166, 1, 0.44, 0.42 );
setScaleKey( spep_2 - n + 167, 1, 0.44, 0.42 );
setScaleKey( spep_2 - n + 168, 1, 0.49, 0.48 );
setScaleKey( spep_2 - n + 169, 1, 0.49, 0.48 );
setScaleKey( spep_2 - n + 170, 1, 0.55, 0.53 );
setScaleKey( spep_2 - n + 171, 1, 0.55, 0.53 );
setScaleKey( spep_2 - n + 172, 1, 0.6, 0.58 );
setScaleKey( spep_2 - n + 173, 1, 0.6, 0.58 );
setScaleKey( spep_2 - n + 174, 1, 0.66, 0.64 );
setScaleKey( spep_2 - n + 175, 1, 0.66, 0.64 );
setScaleKey( spep_2 - n + 176, 1, 0.72, 0.7 );
setScaleKey( spep_2 - n + 177, 1, 0.72, 0.7 );
setScaleKey( spep_2 - n + 178, 1, 0.78, 0.77 );
setScaleKey( spep_2 - n + 179, 1, 0.78, 0.77 );
setScaleKey( spep_2 - n + 180, 1, 0.85, 0.84 );
setScaleKey( spep_2 - n + 181, 1, 0.85, 0.84 );
setScaleKey( spep_2 - n + 182, 1, 0.92, 0.91 );
setScaleKey( spep_2 - n + 183, 1, 0.92, 0.91 );
setScaleKey( spep_2 - n + 184, 1, 0.99, 0.98 );
setScaleKey( spep_2 - n + 185, 1, 0.99, 0.98 );
setScaleKey( spep_2 - n + 186, 1, 1.06, 1.06 );
setScaleKey( spep_2 - n + 222, 1, 1.06, 1.06 );

setRotateKey( spep_2 - n + 90, 1, 4.5 );
setRotateKey( spep_2 - n + 91, 1, 4.5 );
setRotateKey( spep_2 - n + 92, 1, 5 );
setRotateKey( spep_2 - n + 93, 1, 5 );
setRotateKey( spep_2 - n + 94, 1, 5.5 );
setRotateKey( spep_2 - n + 99, 1, 5.5 );
setRotateKey( spep_2 - n + 100, 1, 6.9 );
setRotateKey( spep_2 - n + 101, 1, 6.9 );
setRotateKey( spep_2 - n + 102, 1, 7.4 );
setRotateKey( spep_2 - n + 103, 1, 7.4 );
setRotateKey( spep_2 - n + 104, 1, 7.8 );
setRotateKey( spep_2 - n + 105, 1, 7.8 );
setRotateKey( spep_2 - n + 106, 1, 8.3 );
setRotateKey( spep_2 - n + 107, 1, 8.3 );
setRotateKey( spep_2 - n + 108, 1, -56 );
setRotateKey( spep_2 - n + 109, 1, -56 );
setRotateKey( spep_2 - n + 110, 1, -51.4 );
setRotateKey( spep_2 - n + 111, 1, -51.4 );
setRotateKey( spep_2 - n + 112, 1, -46.8 );
setRotateKey( spep_2 - n + 113, 1, -46.8 );
setRotateKey( spep_2 - n + 114, 1, -42.2 );
setRotateKey( spep_2 - n + 115, 1, -42.2 );
setRotateKey( spep_2 - n + 116, 1, -37.6 );
setRotateKey( spep_2 - n + 117, 1, -37.6 );
setRotateKey( spep_2 - n + 118, 1, -33 );
setRotateKey( spep_2 - n + 127, 1, -33 );
setRotateKey( spep_2 - n + 128, 1, -22.9 );
setRotateKey( spep_2 - n + 129, 1, -22.9 );
setRotateKey( spep_2 - n + 130, 1, -12.9 );
setRotateKey( spep_2 - n + 131, 1, -12.9 );
setRotateKey( spep_2 - n + 132, 1, -2.8 );
setRotateKey( spep_2 - n + 133, 1, -2.8 );
setRotateKey( spep_2 - n + 134, 1, 7.3 );
setRotateKey( spep_2 - n + 135, 1, 7.3 );
setRotateKey( spep_2 - n + 136, 1, 17.3 );
setRotateKey( spep_2 - n + 137, 1, 17.3 );
setRotateKey( spep_2 - n + 138, 1, 27.4 );
setRotateKey( spep_2 - n + 139, 1, 27.4 );
setRotateKey( spep_2 - n + 140, 1, 37.5 );
setRotateKey( spep_2 - n + 141, 1, 37.5 );
setRotateKey( spep_2 - n + 142, 1, -79 );
setRotateKey( spep_2 - n + 143, 1, -79 );
setRotateKey( spep_2 - n + 144, 1, -76 );
setRotateKey( spep_2 - n + 145, 1, -76 );
setRotateKey( spep_2 - n + 146, 1, -73 );
setRotateKey( spep_2 - n + 147, 1, -73 );
setRotateKey( spep_2 - n + 148, 1, -70 );
setRotateKey( spep_2 - n + 149, 1, -70 );
setRotateKey( spep_2 - n + 150, 1, -67 );
setRotateKey( spep_2 - n + 151, 1, -67 );
setRotateKey( spep_2 - n + 152, 1, -64 );
setRotateKey( spep_2 - n + 153, 1, -64 );
setRotateKey( spep_2 - n + 154, 1, -61 );
setRotateKey( spep_2 - n + 155, 1, -61 );
setRotateKey( spep_2 - n + 156, 1, -58 );
setRotateKey( spep_2 - n + 157, 1, -58 );
setRotateKey( spep_2 - n + 158, 1, -55 );
setRotateKey( spep_2 - n + 159, 1, -55 );
setRotateKey( spep_2 - n + 160, 1, -52 );
setRotateKey( spep_2 - n + 161, 1, -52 );
setRotateKey( spep_2 - n + 162, 1, -49 );
setRotateKey( spep_2 - n + 163, 1, -49 );
setRotateKey( spep_2 - n + 164, 1, -46 );
setRotateKey( spep_2 - n + 165, 1, -46 );
setRotateKey( spep_2 - n + 166, 1, -43 );
setRotateKey( spep_2 - n + 167, 1, -43 );
setRotateKey( spep_2 - n + 168, 1, -40 );
setRotateKey( spep_2 - n + 169, 1, -40 );
setRotateKey( spep_2 - n + 170, 1, -37 );
setRotateKey( spep_2 - n + 171, 1, -37 );
setRotateKey( spep_2 - n + 172, 1, -34 );
setRotateKey( spep_2 - n + 173, 1, -34 );
setRotateKey( spep_2 - n + 174, 1, -31 );
setRotateKey( spep_2 - n + 175, 1, -31 );
setRotateKey( spep_2 - n + 176, 1, -28 );
setRotateKey( spep_2 - n + 177, 1, -28 );
setRotateKey( spep_2 - n + 178, 1, -25 );
setRotateKey( spep_2 - n + 179, 1, -25 );
setRotateKey( spep_2 - n + 180, 1, -22 );
setRotateKey( spep_2 - n + 181, 1, -22 );
setRotateKey( spep_2 - n + 182, 1, -19 );
setRotateKey( spep_2 - n + 183, 1, -19 );
setRotateKey( spep_2 - n + 184, 1, -16 );
setRotateKey( spep_2 - n + 185, 1, -16 );
setRotateKey( spep_2 - n + 186, 1, -13 );
setRotateKey( spep_2 - n + 197, 1, -13 );
setRotateKey( spep_2 - n + 198, 1, -18.5 );
setRotateKey( spep_2 - n + 199, 1, -18.5 );
setRotateKey( spep_2 - n + 200, 1, -24 );
setRotateKey( spep_2 - n + 201, 1, -24 );
setRotateKey( spep_2 - n + 202, 1, -29.5 );
setRotateKey( spep_2 - n + 203, 1, -29.5 );
setRotateKey( spep_2 - n + 204, 1, -35 );
setRotateKey( spep_2 - n + 205, 1, -35 );
setRotateKey( spep_2 - n + 206, 1, -40.5 );
setRotateKey( spep_2 - n + 207, 1, -40.5 );
setRotateKey( spep_2 - n + 208, 1, -46 );
setRotateKey( spep_2 - n + 209, 1, -46 );
setRotateKey( spep_2 - n + 210, 1, -51.5 );
setRotateKey( spep_2 - n + 211, 1, -51.5 );
setRotateKey( spep_2 - n + 212, 1, -57 );
setRotateKey( spep_2 - n + 213, 1, -57 );
setRotateKey( spep_2 - n + 214, 1, -62.5 );
setRotateKey( spep_2 - n + 215, 1, -62.5 );
setRotateKey( spep_2 - n + 216, 1, -68 );
setRotateKey( spep_2 - n + 222, 1, -68 );

-- ** 音 ** --
--神聖樹の実落ちる
SE006 = playSeVer2( spep_2 + 26, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE006, 130 );
SE007 = playSeVer2( spep_2 + 26, 1111, "",spep_2 + 42, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 26, SE007, 229 );
SE008 = playSeVer2( spep_2 + 26, 1029, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 56, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE009, 83 );

--瞬間移動
SE010 = playSeVer2( spep_2 + 60, 1109, "", 0, 0, 0, -1);

--初手エルボー
SE011 = playSeVer2( spep_2 + 84, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 94, 1187, "",spep_2 + 120, 0, 12, -1);
SE013 = playSeVer2( spep_2 + 94, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE014 = playSeVer2( spep_2 + 120, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 120, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE015, 73 );
SE016 = playSeVer2( spep_2 + 120, 1183, "",spep_2 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 120, SE016, 77 );

--追い越す
SE017 = playSeVer2( spep_2 + 142, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 148, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE018, 155 );

--殴り飛ばす２
SE019 = playSeVer2( spep_2 + 188, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 188, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE020, 79 );
SE021 = playSeVer2( spep_2 + 188, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE021, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 330 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
--dealDamage( spep_2 + 228 );
--endPhase( spep_2 +  330 - 2 );

-------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --  spep_2 + 222 〜 330
spep_N = spep_2 + 222

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N -1 + 4, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N -1 + 6, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N -1 + 8, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N -1 + 10, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N -1 + 12, 1, -28.8, -46 , 0 );
setMoveKey( spep_N -1 + 14, 1, -32.3, -52 , 0 );
setMoveKey( spep_N -1 + 16, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 18, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 20, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 22, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 24, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 26, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 28, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 30, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 32, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_N -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_N -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_N -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_N -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_N -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_N -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -122.8 - 232 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N -1 + 4, 1, -1 );
setRotateKey( spep_N -1 + 6, 1, 120.7 );
setRotateKey( spep_N -1 + 8, 1, 242.5 );
setRotateKey( spep_N -1 + 10, 1, 364.3 );
setRotateKey( spep_N -1 + 12, 1, 486 );
setRotateKey( spep_N -1 + 14, 1, 607.8 );
setRotateKey( spep_N -1 + 16, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで
-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 4  ); -- ダメージ表示フレーム
endPhase( spep_N + 108 - 4 ); -- 終了フレーム spep_2 + 330 - 2

end
