-- 1026750: UR_ターレス_必殺技_メテオバースト
-- sp_effect_a2_00218

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
SP_001 = 161960;  -- ターレスと敵が見つめあう～気弾を構える ef_001
SP_001b = 161961;  -- ターレスと敵が見つめあう～気弾を構える ef_001b
SP_002 = 161964;  -- 敵に気弾を放つ ef_002
SP_002b = 161965;  -- 敵に気弾を放つ ef_002b

-- 敵側
SP_001b_r = 161962;  -- ターレスと敵が見つめあう～気弾を構える ef_001b_r
SP_001r = 161963;  -- ターレスと敵が見つめあう～気弾を構える ef_001r
SP_002b_r = 161966;  -- 敵に気弾を放つ ef_002b_r
SP_002r = 161967;  -- 敵に気弾を放つ ef_002r

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
-- ターレスと敵が見つめあう～気弾を構える ef_001 (735F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 735, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 735, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 735, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 735, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 735, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 735, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + 735, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + 735, entry_SP_001b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 735 + 2, 0, 0, 0, 0, 255 );

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
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 - n + 60, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--神聖樹の実を食べる
SE002 = playSeVer2( spep_0 + 98, 1071, "",spep_0 + 120, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 98, SE002, 124 );
SE003 = playSeVer2( spep_0 + 102, 1070, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE003, 129 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
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
spep_x = spep_0 + 646;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 515.5 , 0 );
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

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 - n + 210, 1, 1 );
setDisp( spep_0 - n + 642, 1, 0 );
changeAnime( spep_0 - n + 210, 1, 108 );
changeAnime( spep_0 - n + 228, 1, 106 );
changeAnime( spep_0 - n + 240, 1, 108 );
changeAnime( spep_0 - n + 262, 1, 107 );
changeAnime( spep_0 - n + 308, 1, 7 );
changeAnime( spep_0 - n + 348, 1, 8 );
changeAnime( spep_0 - n + 358, 1, 6 );
changeAnime( spep_0 - n + 426, 1, 105 );
changeAnime( spep_0 - n + 482, 1, 6 );
changeAnime( spep_0 - n + 498, 1, 8 );
changeAnime( spep_0 - n + 542, 1, 108 );
changeAnime( spep_0 - n + 556, 1, 106 );

setMoveKey( spep_0 - n + 210, 1, -160.5, 4.2 , 0 );
setMoveKey( spep_0 - n + 211, 1, -160.5, 4.2 , 0 ); 
setMoveKey( spep_0 - n + 212, 1, -163.9, 2.7 , 0 );
setMoveKey( spep_0 - n + 213, 1, -163.9, 2.7 , 0 );
setMoveKey( spep_0 - n + 214, 1, -62.6, 18.9 , 0 );
setMoveKey( spep_0 - n + 215, 1, -62.6, 18.9 , 0 );
setMoveKey( spep_0 - n + 216, 1, -140, -5.8 , 0 );
setMoveKey( spep_0 - n + 217, 1, -140, -5.8 , 0 );
setMoveKey( spep_0 - n + 218, 1, -125.3, 36.4 , 0 );
setMoveKey( spep_0 - n + 219, 1, -125.3, 36.4 , 0 );
setMoveKey( spep_0 - n + 220, 1, 15.2, 8.4 , 0 );
setMoveKey( spep_0 - n + 221, 1, 15.2, 8.4 , 0 );
setMoveKey( spep_0 - n + 222, 1, 48.9, 13.2 , 0 );
setMoveKey( spep_0 - n + 223, 1, 48.9, 13.2 , 0 );
setMoveKey( spep_0 - n + 224, 1, 63.7, 11.1 , 0 );
setMoveKey( spep_0 - n + 226, 1, 63.7, 11.1 , 0 );
setMoveKey( spep_0 - n + 227, 1, 79.3, 11.8 , 0 );
setMoveKey( spep_0 - n + 228, 1, 57.7, 17.7 , 0 );
setMoveKey( spep_0 - n + 229, 1, 57.7, 17.7 , 0 ); 
setMoveKey( spep_0 - n + 230, 1, 73.1, 25.7 , 0 );
setMoveKey( spep_0 - n + 231, 1, 73.1, 25.7 , 0 );
setMoveKey( spep_0 - n + 232, 1, 88.4, 33.8 , 0 );
setMoveKey( spep_0 - n + 233, 1, 88.4, 33.8 , 0 );
setMoveKey( spep_0 - n + 234, 1, 103.8, 41.9 , 0 );
setMoveKey( spep_0 - n + 235, 1, 103.8, 41.9 , 0 );
setMoveKey( spep_0 - n + 236, 1, 119.1, 50 , 0 );
setMoveKey( spep_0 - n + 237, 1, 119.1, 50 , 0 );
setMoveKey( spep_0 - n + 238, 1, 134.5, 58.1 , 0 );
setMoveKey( spep_0 - n + 239, 1, 134.5, 58.1 , 0 );
setMoveKey( spep_0 - n + 240, 1, 111, 30.9 , 0 );
setMoveKey( spep_0 - n + 241, 1, 111, 30.9 , 0 ); 
setMoveKey( spep_0 - n + 242, 1, 144, 50 , 0 );
setMoveKey( spep_0 - n + 243, 1, 144, 50 , 0 );
setMoveKey( spep_0 - n + 244, 1, 129.6, 19 , 0 );
setMoveKey( spep_0 - n + 245, 1, 129.6, 19 , 0 );
setMoveKey( spep_0 - n + 246, 1, 116.6, 57.6 , 0 );
setMoveKey( spep_0 - n + 247, 1, 116.6, 57.6 , 0 );
setMoveKey( spep_0 - n + 248, 1, 195.8, 5 , 0 );
setMoveKey( spep_0 - n + 249, 1, 195.8, 5 , 0 );
setMoveKey( spep_0 - n + 250, 1, 232.7, 11.5 , 0 );
setMoveKey( spep_0 - n + 251, 1, 232.7, 11.5 , 0 );
setMoveKey( spep_0 - n + 252, 1, 312.9, -4.3 , 0 );
setMoveKey( spep_0 - n + 253, 1, 312.9, -4.3 , 0 );
setMoveKey( spep_0 - n + 254, 1, 360.6, -35.5 , 0 );
setMoveKey( spep_0 - n + 255, 1, 360.6, -35.5 , 0 );
setMoveKey( spep_0 - n + 256, 1, 423.4, -49.9 , 0 );
setMoveKey( spep_0 - n + 257, 1, 423.4, -49.9 , 0 );
setMoveKey( spep_0 - n + 258, 1, 482.3, -66.9 , 0 );
setMoveKey( spep_0 - n + 259, 1, 482.3, -66.9 , 0 );
setMoveKey( spep_0 - n + 260, 1, 541.1, -84 , 0 );
setMoveKey( spep_0 - n + 261, 1, 541.1, -84 , 0 );
setMoveKey( spep_0 - n + 262, 1, -303.1, -337.1 , 0 );
setMoveKey( spep_0 - n + 263, 1, -303.1, -337.1 , 0 ); 
setMoveKey( spep_0 - n + 264, 1, -300.1, -333 , 0 );
setMoveKey( spep_0 - n + 265, 1, -300.1, -333 , 0 );
setMoveKey( spep_0 - n + 266, 1, -295.4, -326.9 , 0 );
setMoveKey( spep_0 - n + 267, 1, -295.4, -326.9 , 0 );
setMoveKey( spep_0 - n + 268, 1, -289.3, -319 , 0 );
setMoveKey( spep_0 - n + 269, 1, -289.3, -319 , 0 );
setMoveKey( spep_0 - n + 270, 1, -281.8, -309.5 , 0 );
setMoveKey( spep_0 - n + 271, 1, -281.8, -309.5 , 0 );
setMoveKey( spep_0 - n + 272, 1, -273, -298.5 , 0 );
setMoveKey( spep_0 - n + 273, 1, -273, -298.5 , 0 );
setMoveKey( spep_0 - n + 274, 1, -263, -286 , 0 );
setMoveKey( spep_0 - n + 275, 1, -263, -286 , 0 );
setMoveKey( spep_0 - n + 276, 1, -252, -272.2 , 0 );
setMoveKey( spep_0 - n + 277, 1, -252, -272.2 , 0 );
setMoveKey( spep_0 - n + 278, 1, -240, -257.3 , 0 );
setMoveKey( spep_0 - n + 279, 1, -240, -257.3 , 0 );
setMoveKey( spep_0 - n + 280, 1, -226.9, -241.1 , 0 );
setMoveKey( spep_0 - n + 281, 1, -226.9, -241.1 , 0 );
setMoveKey( spep_0 - n + 282, 1, -213, -223.9 , 0 );
setMoveKey( spep_0 - n + 283, 1, -213, -223.9 , 0 );
setMoveKey( spep_0 - n + 284, 1, -198.2, -205.6 , 0 );
setMoveKey( spep_0 - n + 285, 1, -198.2, -205.6 , 0 );
setMoveKey( spep_0 - n + 286, 1, -182.5, -186.3 , 0 );
setMoveKey( spep_0 - n + 287, 1, -182.5, -186.3 , 0 );
setMoveKey( spep_0 - n + 288, 1, -166.1, -166.1 , 0 );
setMoveKey( spep_0 - n + 289, 1, -166.1, -166.1 , 0 );
setMoveKey( spep_0 - n + 290, 1, -149, -145 , 0 );
setMoveKey( spep_0 - n + 291, 1, -149, -145 , 0 );
setMoveKey( spep_0 - n + 292, 1, -131, -123 , 0 );
setMoveKey( spep_0 - n + 293, 1, -131, -123 , 0 );
setMoveKey( spep_0 - n + 294, 1, -112.3, -100.1 , 0 );
setMoveKey( spep_0 - n + 295, 1, -112.3, -100.1 , 0 );
setMoveKey( spep_0 - n + 296, 1, -93, -76.3 , 0 );
setMoveKey( spep_0 - n + 297, 1, -93, -76.3 , 0 );
setMoveKey( spep_0 - n + 298, 1, -72.9, -51.7 , 0 );
setMoveKey( spep_0 - n + 299, 1, -72.9, -51.7 , 0 );
setMoveKey( spep_0 - n + 300, 1, -52, -26.2 , 0 );
setMoveKey( spep_0 - n + 301, 1, -52, -26.2 , 0 );
setMoveKey( spep_0 - n + 302, 1, -30.4, 0.2 , 0 );
setMoveKey( spep_0 - n + 303, 1, -30.4, 0.2 , 0 );
setMoveKey( spep_0 - n + 304, 1, -8, 27.7 , 0 );
setMoveKey( spep_0 - n + 305, 1, -8, 27.7 , 0 );
setMoveKey( spep_0 - n + 306, 1, 15.6, 56.5 , 0 );
setMoveKey( spep_0 - n + 307, 1, 15.6, 56.5 , 0 );
setMoveKey( spep_0 - n + 308, 1, 45.5, 16.8 , 0 );
setMoveKey( spep_0 - n + 309, 1, 45.5, 16.8 , 0 ); 
setMoveKey( spep_0 - n + 310, 1, 121.3, 34.7 , 0 );
setMoveKey( spep_0 - n + 311, 1, 121.3, 34.7 , 0 );
setMoveKey( spep_0 - n + 312, 1, 28.4, 25.1 , 0 );
setMoveKey( spep_0 - n + 313, 1, 28.4, 25.1 , 0 );
setMoveKey( spep_0 - n + 314, 1, 16.6, -9.7 , 0 );
setMoveKey( spep_0 - n + 315, 1, 16.6, -9.7 , 0 );
setMoveKey( spep_0 - n + 316, 1, -57, -11.7 , 0 );
setMoveKey( spep_0 - n + 317, 1, -57, -11.7 , 0 );
setMoveKey( spep_0 - n + 318, 1, -156.4, -64.3 , 0 );
setMoveKey( spep_0 - n + 319, 1, -156.4, -64.3 , 0 );
setMoveKey( spep_0 - n + 320, 1, -293.1, -98.8 , 0 );
setMoveKey( spep_0 - n + 321, 1, -293.1, -98.8 , 0 );
setMoveKey( spep_0 - n + 322, 1, -391.3, -139.2 , 0 );
setMoveKey( spep_0 - n + 323, 1, -391.3, -139.2 , 0 );
setMoveKey( spep_0 - n + 324, 1, -526.2, -184.9 , 0 );
setMoveKey( spep_0 - n + 325, 1, -526.2, -184.9 , 0 );
setMoveKey( spep_0 - n + 326, 1, -631.5, -219.1 , 0 );
setMoveKey( spep_0 - n + 327, 1, -631.5, -219.1 , 0 );
setMoveKey( spep_0 - n + 328, 1, -753.5, -269 , 0 );
setMoveKey( spep_0 - n + 329, 1, -753.5, -269 , 0 );
setMoveKey( spep_0 - n + 330, 1, -872.4, -299.1 , 0 );
setMoveKey( spep_0 - n + 331, 1, -872.4, -299.1 , 0 );
setMoveKey( spep_0 - n + 332, 1, -986.8, -348.1 , 0 );
setMoveKey( spep_0 - n + 333, 1, -986.8, -348.1 , 0 );
setMoveKey( spep_0 - n + 334, 1, -1104.6, -388.4 , 0 );
setMoveKey( spep_0 - n + 335, 1, -1104.6, -388.4 , 0 );
setMoveKey( spep_0 - n + 336, 1, -1222.3, -428.8 , 0 );
setMoveKey( spep_0 - n + 337, 1, -1222.3, -428.8 , 0 );
setMoveKey( spep_0 - n + 338, 1, -1222.4, -428.5 , 0 );
setMoveKey( spep_0 - n + 339, 1, -1222.4, -428.5 , 0 );
setMoveKey( spep_0 - n + 340, 1, -1222.5, -428.2 , 0 );
setMoveKey( spep_0 - n + 347, 1, -1222.5, -428.2 , 0 );
setMoveKey( spep_0 - n + 348, 1, 375.2, -7.9 , 0 );
setMoveKey( spep_0 - n + 349, 1, 375.2, -7.9 , 0 ); 
setMoveKey( spep_0 - n + 350, 1, 375.2, -7.5 , 0 );
setMoveKey( spep_0 - n + 351, 1, 375.2, -7.5 , 0 );
setMoveKey( spep_0 - n + 352, 1, 63.8, -18.3 , 0 );
setMoveKey( spep_0 - n + 353, 1, 63.8, -18.3 , 0 );
setMoveKey( spep_0 - n + 354, 1, -70.2, -19.7 , 0 );
setMoveKey( spep_0 - n + 355, 1, -70.2, -19.7 , 0 );
setMoveKey( spep_0 - n + 356, 1, -70.3, -19.4 , 0 );
setMoveKey( spep_0 - n + 357, 1, -70.3, -19.4 , 0 );
setMoveKey( spep_0 - n + 358, 1, -45.1, 7.1 , 0 );
setMoveKey( spep_0 - n + 359, 1, -45.1, 7.1 , 0 ); 
setMoveKey( spep_0 - n + 360, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 361, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 362, 1, -39.9, 9.1 , 0 );
setMoveKey( spep_0 - n + 363, 1, -39.9, 9.1 , 0 );
setMoveKey( spep_0 - n + 364, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 365, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 366, 1, -40.2, 9.6 , 0 );
setMoveKey( spep_0 - n + 367, 1, -40.2, 9.6 , 0 );
setMoveKey( spep_0 - n + 368, 1, 19.2, 29.8 , 0 );
setMoveKey( spep_0 - n + 369, 1, 19.2, 29.8 , 0 );
setMoveKey( spep_0 - n + 370, 1, 10.9, 28 , 0 );
setMoveKey( spep_0 - n + 371, 1, 10.9, 28 , 0 );
setMoveKey( spep_0 - n + 372, 1, 31, 36.2 , 0 );
setMoveKey( spep_0 - n + 373, 1, 31, 36.2 , 0 );
setMoveKey( spep_0 - n + 374, 1, 25, 31.8 , 0 );
setMoveKey( spep_0 - n + 375, 1, 25, 31.8 , 0 );
setMoveKey( spep_0 - n + 376, 1, 31.8, 30.9 , 0 );
setMoveKey( spep_0 - n + 377, 1, 31.8, 30.9 , 0 );
setMoveKey( spep_0 - n + 378, 1, 31.9, 31 , 0 );
setMoveKey( spep_0 - n + 379, 1, 31.9, 31 , 0 );
setMoveKey( spep_0 - n + 380, 1, 41, 27.1 , 0 );
setMoveKey( spep_0 - n + 381, 1, 41, 27.1 , 0 );
setMoveKey( spep_0 - n + 382, 1, 41.1, 27.2 , 0 );
setMoveKey( spep_0 - n + 383, 1, 41.1, 27.2 , 0 );
setMoveKey( spep_0 - n + 384, 1, 50.2, 23 , 0 );
setMoveKey( spep_0 - n + 385, 1, 50.2, 23 , 0 );
setMoveKey( spep_0 - n + 386, 1, 50.3, 23.1 , 0 );
setMoveKey( spep_0 - n + 387, 1, 50.3, 23.1 , 0 );
setMoveKey( spep_0 - n + 388, 1, 59.5, 19.1 , 0 );
setMoveKey( spep_0 - n + 389, 1, 59.5, 19.1 , 0 );
setMoveKey( spep_0 - n + 390, 1, 59.6, 19.2 , 0 );
setMoveKey( spep_0 - n + 391, 1, 59.6, 19.2 , 0 );
setMoveKey( spep_0 - n + 392, 1, 64.3, 17.3 , 0 );
setMoveKey( spep_0 - n + 393, 1, 64.3, 17.3 , 0 );
setMoveKey( spep_0 - n + 394, 1, -2.1, 40.7 , 0 );
setMoveKey( spep_0 - n + 395, 1, -2.1, 40.7 , 0 );
setMoveKey( spep_0 - n + 396, 1, -18.5, 76.5 , 0 );
setMoveKey( spep_0 - n + 397, 1, -18.5, 76.5 , 0 );
setMoveKey( spep_0 - n + 398, 1, 15.4, 4.8 , 0 );
setMoveKey( spep_0 - n + 399, 1, 15.4, 4.8 , 0 );
setMoveKey( spep_0 - n + 400, 1, -6.5, 63.6 , 0 );
setMoveKey( spep_0 - n + 401, 1, -6.5, 63.6 , 0 );
setMoveKey( spep_0 - n + 402, 1, -4.9, -116.2 , 0 );
setMoveKey( spep_0 - n + 403, 1, -4.9, -116.2 , 0 );
setMoveKey( spep_0 - n + 404, 1, 14.7, -318.8 , 0 );
setMoveKey( spep_0 - n + 405, 1, 14.7, -318.8 , 0 );
setMoveKey( spep_0 - n + 406, 1, 4.2, -603.2 , 0 );
setMoveKey( spep_0 - n + 407, 1, 4.2, -603.2 , 0 );
setMoveKey( spep_0 - n + 408, 1, 38.5, -836.9 , 0 );
setMoveKey( spep_0 - n + 409, 1, 38.5, -836.9 , 0 );
setMoveKey( spep_0 - n + 410, 1, 35.5, -1089.7 , 0 );
setMoveKey( spep_0 - n + 411, 1, 35.5, -1089.7 , 0 );
setMoveKey( spep_0 - n + 412, 1, 58.5, -1351.5 , 0 );
setMoveKey( spep_0 - n + 413, 1, 58.5, -1351.5 , 0 );
setMoveKey( spep_0 - n + 414, 1, 64.7, -1593.9 , 0 );
setMoveKey( spep_0 - n + 415, 1, 64.7, -1593.9 , 0 );
setMoveKey( spep_0 - n + 416, 1, 67.5, -1597.7 , 0 );
setMoveKey( spep_0 - n + 425, 1, 67.5, -1597.7 , 0 );
setMoveKey( spep_0 - n + 426, 1, -381.5, 598.4 , 0 );
setMoveKey( spep_0 - n + 429, 1, -381.5, 598.4 , 0 );
setMoveKey( spep_0 - n + 430, 1, -132.8, 156.3 , 0 );
setMoveKey( spep_0 - n + 433, 1, -132.8, 156.3 , 0 );
setMoveKey( spep_0 - n + 434, 1, -72.3, 51 , 0 );
setMoveKey( spep_0 - n + 437, 1, -72.3, 51 , 0 );
setMoveKey( spep_0 - n + 438, 1, -24.5, -27 , 0 );
setMoveKey( spep_0 - n + 441, 1, -24.5, -27 , 0 );
setMoveKey( spep_0 - n + 442, 1, 6.3, -80.3 , 0 );
setMoveKey( spep_0 - n + 445, 1, 6.3, -80.3 , 0 );
setMoveKey( spep_0 - n + 446, 1, 36.6, -134.2 , 0 );
setMoveKey( spep_0 - n + 449, 1, 36.6, -134.2 , 0 );
setMoveKey( spep_0 - n + 450, 1, 66.9, -188 , 0 );
setMoveKey( spep_0 - n + 453, 1, 66.9, -188 , 0 );
setMoveKey( spep_0 - n + 454, 1, 127.6, -295.5 , 0 );
setMoveKey( spep_0 - n + 457, 1, 127.6, -295.5 , 0 );
setMoveKey( spep_0 - n + 458, 1, 157.9, -349.3 , 0 );
setMoveKey( spep_0 - n + 461, 1, 157.9, -349.3 , 0 );
setMoveKey( spep_0 - n + 462, 1, 173.1, -376.1 , 0 );
setMoveKey( spep_0 - n + 465, 1, 173.1, -376.1 , 0 );
setMoveKey( spep_0 - n + 466, 1, 203.3, -429.9 , 0 );
setMoveKey( spep_0 - n + 469, 1, 203.3, -429.9 , 0 );
setMoveKey( spep_0 - n + 470, 1, 233.7, -483.7 , 0 );
setMoveKey( spep_0 - n + 477, 1, 233.7, -483.7 , 0 );
setMoveKey( spep_0 - n + 478, 1, 248.8, -510.5 , 0 );
setMoveKey( spep_0 - n + 481, 1, 248.8, -510.5 , 0 );
setMoveKey( spep_0 - n + 482, 1, 1.8, 416.4 , 0 );
setMoveKey( spep_0 - n + 483, 1, 1.8, 416.4 , 0 ); 
setMoveKey( spep_0 - n + 484, 1, -5.6, 349 , 0 );
setMoveKey( spep_0 - n + 485, 1, -5.6, 349 , 0 );
setMoveKey( spep_0 - n + 486, 1, -13, 281.6 , 0 );
setMoveKey( spep_0 - n + 487, 1, -13, 281.6 , 0 );
setMoveKey( spep_0 - n + 488, 1, -20.3, 214.2 , 0 );
setMoveKey( spep_0 - n + 489, 1, -20.3, 214.2 , 0 );
setMoveKey( spep_0 - n + 490, 1, -27.7, 146.8 , 0 );
setMoveKey( spep_0 - n + 491, 1, -27.7, 146.8 , 0 );
setMoveKey( spep_0 - n + 492, 1, -35, 79.4 , 0 );
setMoveKey( spep_0 - n + 493, 1, -35, 79.4 , 0 );
setMoveKey( spep_0 - n + 494, 1, -42.4, 12 , 0 );
setMoveKey( spep_0 - n + 495, 1, -42.4, 12 , 0 );
setMoveKey( spep_0 - n + 496, 1, -49.7, -55.4 , 0 );
setMoveKey( spep_0 - n + 497, 1, -49.7, -55.4 , 0 );
setMoveKey( spep_0 - n + 498, 1, -4.5, -6.6 , 0 );
setMoveKey( spep_0 - n + 499, 1, -4.5, -6.6 , 0 ); 
setMoveKey( spep_0 - n + 500, 1, -17, -26.3 , 0 );
setMoveKey( spep_0 - n + 501, 1, -17, -26.3 , 0 );
setMoveKey( spep_0 - n + 502, 1, 3.9, 9.4 , 0 );
setMoveKey( spep_0 - n + 503, 1, 3.9, 9.4 , 0 );
setMoveKey( spep_0 - n + 504, 1, 5.2, -21 , 0 );
setMoveKey( spep_0 - n + 505, 1, 5.2, -21 , 0 );
setMoveKey( spep_0 - n + 506, 1, -10.2, 13.3 , 0 );
setMoveKey( spep_0 - n + 507, 1, -10.2, 13.3 , 0 );
setMoveKey( spep_0 - n + 508, 1, -20.6, -9.4 , 0 );
setMoveKey( spep_0 - n + 509, 1, -20.6, -9.4 , 0 );
setMoveKey( spep_0 - n + 510, 1, 2.1, 36.8 , 0 );
setMoveKey( spep_0 - n + 511, 1, 2.1, 36.8 , 0 );
setMoveKey( spep_0 - n + 512, 1, -10.3, 35.8 , 0 );
setMoveKey( spep_0 - n + 513, 1, -10.3, 35.8 , 0 );
setMoveKey( spep_0 - n + 514, 1, -8.7, 48.2 , 0 );
setMoveKey( spep_0 - n + 515, 1, -8.7, 48.2 , 0 );
setMoveKey( spep_0 - n + 516, 1, -8.6, 52.7 , 0 );
setMoveKey( spep_0 - n + 517, 1, -8.6, 52.7 , 0 );
setMoveKey( spep_0 - n + 518, 1, -8.4, 56 , 0 );
setMoveKey( spep_0 - n + 519, 1, -8.4, 56 , 0 );
setMoveKey( spep_0 - n + 520, 1, -8.2, 58.7 , 0 );
setMoveKey( spep_0 - n + 521, 1, -8.2, 58.7 , 0 );
setMoveKey( spep_0 - n + 522, 1, -8, 61 , 0 );
setMoveKey( spep_0 - n + 523, 1, -8, 61 , 0 );
setMoveKey( spep_0 - n + 524, 1, -7.8, 63 , 0 );
setMoveKey( spep_0 - n + 525, 1, -7.8, 63 , 0 );
setMoveKey( spep_0 - n + 526, 1, -7.6, 64.7 , 0 );
setMoveKey( spep_0 - n + 527, 1, -7.6, 64.7 , 0 );
setMoveKey( spep_0 - n + 528, 1, -7.5, 66.3 , 0 );
setMoveKey( spep_0 - n + 529, 1, -7.5, 66.3 , 0 );
setMoveKey( spep_0 - n + 530, 1, -7.3, 67.8 , 0 );
setMoveKey( spep_0 - n + 531, 1, -7.3, 67.8 , 0 );
setMoveKey( spep_0 - n + 532, 1, -7, 69.1 , 0 );
setMoveKey( spep_0 - n + 533, 1, -7, 69.1 , 0 );
setMoveKey( spep_0 - n + 534, 1, -6.8, 70.3 , 0 );
setMoveKey( spep_0 - n + 535, 1, -6.8, 70.3 , 0 );
setMoveKey( spep_0 - n + 536, 1, -6.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 537, 1, -6.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 538, 1, -6.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 539, 1, -6.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 540, 1, -6.1, 73.5 , 0 );
setMoveKey( spep_0 - n + 541, 1, -6.1, 73.5 , 0 );
setMoveKey( spep_0 - n + 542, 1, -8.5, 55.3 , 0 );
setMoveKey( spep_0 - n + 543, 1, -8.5, 55.3 , 0 ); 
setMoveKey( spep_0 - n + 544, 1, -8.4, 59.7 , 0 );
setMoveKey( spep_0 - n + 545, 1, -8.4, 59.7 , 0 );
setMoveKey( spep_0 - n + 546, 1, -8.4, 63.9 , 0 );
setMoveKey( spep_0 - n + 547, 1, -8.4, 63.9 , 0 );
setMoveKey( spep_0 - n + 548, 1, -8.3, 68.2 , 0 );
setMoveKey( spep_0 - n + 549, 1, -8.3, 68.2 , 0 );
setMoveKey( spep_0 - n + 550, 1, -8.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 551, 1, -8.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 552, 1, -8.2, 76.9 , 0 );
setMoveKey( spep_0 - n + 554, 1, -8.2, 76.9 , 0 );
setMoveKey( spep_0 - n + 555, 1, -8.2, 81.2 , 0 );
setMoveKey( spep_0 - n + 556, 1, -13.8, -0.2 , 0 );
setMoveKey( spep_0 - n + 557, 1, -13.8, -0.2 , 0 ); 
setMoveKey( spep_0 - n + 558, 1, -14.6, -10.7 , 0 );
setMoveKey( spep_0 - n + 559, 1, -14.6, -10.7 , 0 );
setMoveKey( spep_0 - n + 560, 1, -13.7, 14.9 , 0 );
setMoveKey( spep_0 - n + 561, 1, -13.7, 14.9 , 0 );
setMoveKey( spep_0 - n + 562, 1, -14.2, -7.3 , 0 );
setMoveKey( spep_0 - n + 563, 1, -14.2, -7.3 , 0 );
setMoveKey( spep_0 - n + 564, 1, -23.6, -113.3 , 0 );
setMoveKey( spep_0 - n + 565, 1, -23.6, -113.3 , 0 );
setMoveKey( spep_0 - n + 566, 1, -30.7, -269.8 , 0 );
setMoveKey( spep_0 - n + 567, 1, -30.7, -269.8 , 0 );
setMoveKey( spep_0 - n + 568, 1, -28.2, -252.5 , 0 );
setMoveKey( spep_0 - n + 569, 1, -28.2, -252.5 , 0 );
setMoveKey( spep_0 - n + 570, 1, -30.7, -267.6 , 0 );
setMoveKey( spep_0 - n + 571, 1, -30.7, -267.6 , 0 );
setMoveKey( spep_0 - n + 572, 1, -30.7, -256 , 0 );
setMoveKey( spep_0 - n + 573, 1, -30.7, -256 , 0 );
setMoveKey( spep_0 - n + 574, 1, -27.7, -267.4 , 0 );
setMoveKey( spep_0 - n + 575, 1, -27.7, -267.4 , 0 );
setMoveKey( spep_0 - n + 576, 1, -29.4, -260.7 , 0 );
setMoveKey( spep_0 - n + 642, 1, -29.4, -260.7 , 0 );

a = 1.05;
setScaleKey( spep_0 - n + 210, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 227, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 228, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_0 - n + 239, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_0 - n + 240, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 247, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 248, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_0 - n + 249, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_0 - n + 250, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_0 - n + 251, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_0 - n + 252, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_0 - n + 253, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_0 - n + 254, 1, 1.34 * a, 1.34 * a );
setScaleKey( spep_0 - n + 255, 1, 1.34 * a, 1.34  * a);
setScaleKey( spep_0 - n + 256, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_0 - n + 257, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_0 - n + 258, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_0 - n + 259, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_0 - n + 260, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_0 - n + 261, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_0 - n + 262, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 265, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 266, 1, 0.11, 0.11 );
setScaleKey( spep_0 - n + 267, 1, 0.11, 0.11 );
setScaleKey( spep_0 - n + 268, 1, 0.13, 0.12 );
setScaleKey( spep_0 - n + 269, 1, 0.13, 0.12 );
setScaleKey( spep_0 - n + 270, 1, 0.15, 0.14 );
setScaleKey( spep_0 - n + 271, 1, 0.15, 0.14 );
setScaleKey( spep_0 - n + 272, 1, 0.17, 0.16 );
setScaleKey( spep_0 - n + 273, 1, 0.17, 0.16 );
setScaleKey( spep_0 - n + 274, 1, 0.2, 0.19 );
setScaleKey( spep_0 - n + 275, 1, 0.2, 0.19 );
setScaleKey( spep_0 - n + 276, 1, 0.23, 0.22 );
setScaleKey( spep_0 - n + 277, 1, 0.23, 0.22 );
setScaleKey( spep_0 - n + 278, 1, 0.27, 0.26 );
setScaleKey( spep_0 - n + 279, 1, 0.27, 0.26 );
setScaleKey( spep_0 - n + 280, 1, 0.31, 0.29 );
setScaleKey( spep_0 - n + 281, 1, 0.31, 0.29 );
setScaleKey( spep_0 - n + 282, 1, 0.35, 0.33 );
setScaleKey( spep_0 - n + 283, 1, 0.35, 0.33 );
setScaleKey( spep_0 - n + 284, 1, 0.39, 0.38 );
setScaleKey( spep_0 - n + 285, 1, 0.39, 0.38 );
setScaleKey( spep_0 - n + 286, 1, 0.44, 0.42 );
setScaleKey( spep_0 - n + 287, 1, 0.44, 0.42 );
setScaleKey( spep_0 - n + 288, 1, 0.49, 0.48 );
setScaleKey( spep_0 - n + 289, 1, 0.49, 0.48 );
setScaleKey( spep_0 - n + 290, 1, 0.55, 0.53 );
setScaleKey( spep_0 - n + 291, 1, 0.55, 0.53 );
setScaleKey( spep_0 - n + 292, 1, 0.6, 0.58 );
setScaleKey( spep_0 - n + 293, 1, 0.6, 0.58 );
setScaleKey( spep_0 - n + 294, 1, 0.66, 0.64 );
setScaleKey( spep_0 - n + 295, 1, 0.66, 0.64 );
setScaleKey( spep_0 - n + 296, 1, 0.72, 0.7 );
setScaleKey( spep_0 - n + 297, 1, 0.72, 0.7 );
setScaleKey( spep_0 - n + 298, 1, 0.78, 0.77 );
setScaleKey( spep_0 - n + 299, 1, 0.78, 0.77 );
setScaleKey( spep_0 - n + 300, 1, 0.85, 0.84 );
setScaleKey( spep_0 - n + 301, 1, 0.85, 0.84 );
setScaleKey( spep_0 - n + 302, 1, 0.92, 0.91 );
setScaleKey( spep_0 - n + 303, 1, 0.92, 0.91 );
setScaleKey( spep_0 - n + 304, 1, 0.99, 0.98 );
setScaleKey( spep_0 - n + 305, 1, 0.99, 0.98 );
setScaleKey( spep_0 - n + 306, 1, 1.06, 1.06 );
setScaleKey( spep_0 - n + 341, 1, 1.06, 1.06 );
setScaleKey( spep_0 - n + 342, 1, 1, 1 );
setScaleKey( spep_0 - n + 347, 1, 1, 1 );
setScaleKey( spep_0 - n + 348, 1, 4.4, 4.4 );
setScaleKey( spep_0 - n + 351, 1, 4.4, 4.4 );
setScaleKey( spep_0 - n + 352, 1, 2.94, 2.95 );
setScaleKey( spep_0 - n + 353, 1, 2.94, 2.95 );
setScaleKey( spep_0 - n + 354, 1, 2.73, 2.73 );
setScaleKey( spep_0 - n + 357, 1, 2.73, 2.73 );
setScaleKey( spep_0 - n + 358, 1, 2.5, 2.5 );
setScaleKey( spep_0 - n + 403, 1, 2.5, 2.5 );
setScaleKey( spep_0 - n + 404, 1, 2.51, 2.51 );
setScaleKey( spep_0 - n + 405, 1, 2.51, 2.51 );
setScaleKey( spep_0 - n + 406, 1, 2.52, 2.52 );
setScaleKey( spep_0 - n + 407, 1, 2.52, 2.52 );
setScaleKey( spep_0 - n + 408, 1, 2.54, 2.54 );
setScaleKey( spep_0 - n + 409, 1, 2.54, 2.54 );
setScaleKey( spep_0 - n + 410, 1, 2.55, 2.55 );
setScaleKey( spep_0 - n + 411, 1, 2.55, 2.55 );
setScaleKey( spep_0 - n + 412, 1, 2.56, 2.56 );
setScaleKey( spep_0 - n + 413, 1, 2.56, 2.56 );
setScaleKey( spep_0 - n + 414, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 421, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 422, 1, 1, 1 );
setScaleKey( spep_0 - n + 425, 1, 1, 1 );
setScaleKey( spep_0 - n + 426, 1, 7, 7 );
setScaleKey( spep_0 - n + 429, 1, 7, 7 );
setScaleKey( spep_0 - n + 430, 1, 4.63, 4.6 );
setScaleKey( spep_0 - n + 433, 1, 4.63, 4.6 );
setScaleKey( spep_0 - n + 434, 1, 3.91, 3.88 );
setScaleKey( spep_0 - n + 437, 1, 3.91, 3.88 );
setScaleKey( spep_0 - n + 438, 1, 3.36, 3.34 );
setScaleKey( spep_0 - n + 441, 1, 3.36, 3.34 );
setScaleKey( spep_0 - n + 442, 1, 3, 2.98 );
setScaleKey( spep_0 - n + 445, 1, 3, 2.98 );
setScaleKey( spep_0 - n + 446, 1, 2.64, 2.62 );
setScaleKey( spep_0 - n + 449, 1, 2.64, 2.62 );
setScaleKey( spep_0 - n + 450, 1, 2.28, 2.26 );
setScaleKey( spep_0 - n + 453, 1, 2.28, 2.26 );
setScaleKey( spep_0 - n + 454, 1, 1.55, 1.54 );
setScaleKey( spep_0 - n + 457, 1, 1.55, 1.54 );
setScaleKey( spep_0 - n + 458, 1, 1.19, 1.18 );
setScaleKey( spep_0 - n + 461, 1, 1.19, 1.18 );
setScaleKey( spep_0 - n + 462, 1, 1.01, 1 );
setScaleKey( spep_0 - n + 465, 1, 1.01, 1 );
setScaleKey( spep_0 - n + 466, 1, 0.64, 0.64 );
setScaleKey( spep_0 - n + 469, 1, 0.64, 0.64 );
setScaleKey( spep_0 - n + 470, 1, 0.28, 0.28 );
setScaleKey( spep_0 - n + 477, 1, 0.28, 0.28 );
setScaleKey( spep_0 - n + 478, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 481, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 482, 1, 2.24, 2.24 );
setScaleKey( spep_0 - n + 497, 1, 2.24, 2.24 );
setScaleKey( spep_0 - n + 498, 1, 3.02, 3.02 );
setScaleKey( spep_0 - n + 541, 1, 3.02, 3.02 );
setScaleKey( spep_0 - n + 542, 1, 3.65, 3.65 );
setScaleKey( spep_0 - n + 555, 1, 3.65, 3.65 );
setScaleKey( spep_0 - n + 556, 1, 2.98, 2.98 );
setScaleKey( spep_0 - n + 642, 1, 2.98, 2.98 );

setRotateKey( spep_0 - n + 210, 1, 4.5 );
setRotateKey( spep_0 - n + 211, 1, 4.5 );
setRotateKey( spep_0 - n + 212, 1, 5 );
setRotateKey( spep_0 - n + 213, 1, 5 );
setRotateKey( spep_0 - n + 214, 1, 5.5 );
setRotateKey( spep_0 - n + 219, 1, 5.5 );
setRotateKey( spep_0 - n + 220, 1, 6.9 );
setRotateKey( spep_0 - n + 221, 1, 6.9 );
setRotateKey( spep_0 - n + 222, 1, 7.4 );
setRotateKey( spep_0 - n + 223, 1, 7.4 );
setRotateKey( spep_0 - n + 224, 1, 7.8 );
setRotateKey( spep_0 - n + 225, 1, 7.8 );
setRotateKey( spep_0 - n + 226, 1, 8.3 );
setRotateKey( spep_0 - n + 227, 1, 8.3 );
setRotateKey( spep_0 - n + 228, 1, -56 );
setRotateKey( spep_0 - n + 229, 1, -56 );
setRotateKey( spep_0 - n + 230, 1, -51.4 );
setRotateKey( spep_0 - n + 231, 1, -51.4 );
setRotateKey( spep_0 - n + 232, 1, -46.8 );
setRotateKey( spep_0 - n + 233, 1, -46.8 );
setRotateKey( spep_0 - n + 234, 1, -42.2 );
setRotateKey( spep_0 - n + 235, 1, -42.2 );
setRotateKey( spep_0 - n + 236, 1, -37.6 );
setRotateKey( spep_0 - n + 237, 1, -37.6 );
setRotateKey( spep_0 - n + 238, 1, -33 );
setRotateKey( spep_0 - n + 247, 1, -33 );
setRotateKey( spep_0 - n + 248, 1, -22.9 );
setRotateKey( spep_0 - n + 249, 1, -22.9 );
setRotateKey( spep_0 - n + 250, 1, -12.9 );
setRotateKey( spep_0 - n + 251, 1, -12.9 );
setRotateKey( spep_0 - n + 252, 1, -2.8 );
setRotateKey( spep_0 - n + 253, 1, -2.8 );
setRotateKey( spep_0 - n + 254, 1, 7.3 );
setRotateKey( spep_0 - n + 255, 1, 7.3 );
setRotateKey( spep_0 - n + 256, 1, 17.3 );
setRotateKey( spep_0 - n + 257, 1, 17.3 );
setRotateKey( spep_0 - n + 258, 1, 27.4 );
setRotateKey( spep_0 - n + 259, 1, 27.4 );
setRotateKey( spep_0 - n + 260, 1, 37.5 );
setRotateKey( spep_0 - n + 261, 1, 37.5 );
setRotateKey( spep_0 - n + 262, 1, -79 );
setRotateKey( spep_0 - n + 263, 1, -79 );
setRotateKey( spep_0 - n + 264, 1, -76 );
setRotateKey( spep_0 - n + 265, 1, -76 );
setRotateKey( spep_0 - n + 266, 1, -73 );
setRotateKey( spep_0 - n + 267, 1, -73 );
setRotateKey( spep_0 - n + 268, 1, -70 );
setRotateKey( spep_0 - n + 269, 1, -70 );
setRotateKey( spep_0 - n + 270, 1, -67 );
setRotateKey( spep_0 - n + 271, 1, -67 );
setRotateKey( spep_0 - n + 272, 1, -64 );
setRotateKey( spep_0 - n + 273, 1, -64 );
setRotateKey( spep_0 - n + 274, 1, -61 );
setRotateKey( spep_0 - n + 275, 1, -61 );
setRotateKey( spep_0 - n + 276, 1, -58 );
setRotateKey( spep_0 - n + 277, 1, -58 );
setRotateKey( spep_0 - n + 278, 1, -55 );
setRotateKey( spep_0 - n + 279, 1, -55 );
setRotateKey( spep_0 - n + 280, 1, -52 );
setRotateKey( spep_0 - n + 281, 1, -52 );
setRotateKey( spep_0 - n + 282, 1, -49 );
setRotateKey( spep_0 - n + 283, 1, -49 );
setRotateKey( spep_0 - n + 284, 1, -46 );
setRotateKey( spep_0 - n + 285, 1, -46 );
setRotateKey( spep_0 - n + 286, 1, -43 );
setRotateKey( spep_0 - n + 287, 1, -43 );
setRotateKey( spep_0 - n + 288, 1, -40 );
setRotateKey( spep_0 - n + 289, 1, -40 );
setRotateKey( spep_0 - n + 290, 1, -37 );
setRotateKey( spep_0 - n + 291, 1, -37 );
setRotateKey( spep_0 - n + 292, 1, -34 );
setRotateKey( spep_0 - n + 293, 1, -34 );
setRotateKey( spep_0 - n + 294, 1, -31 );
setRotateKey( spep_0 - n + 295, 1, -31 );
setRotateKey( spep_0 - n + 296, 1, -28 );
setRotateKey( spep_0 - n + 297, 1, -28 );
setRotateKey( spep_0 - n + 298, 1, -25 );
setRotateKey( spep_0 - n + 299, 1, -25 );
setRotateKey( spep_0 - n + 300, 1, -22 );
setRotateKey( spep_0 - n + 301, 1, -22 );
setRotateKey( spep_0 - n + 302, 1, -19 );
setRotateKey( spep_0 - n + 303, 1, -19 );
setRotateKey( spep_0 - n + 304, 1, -16 );
setRotateKey( spep_0 - n + 305, 1, -16 );
setRotateKey( spep_0 - n + 306, 1, -13 );
setRotateKey( spep_0 - n + 317, 1, -13 );
setRotateKey( spep_0 - n + 318, 1, -18.5 );
setRotateKey( spep_0 - n + 319, 1, -18.5 );
setRotateKey( spep_0 - n + 320, 1, -24 );
setRotateKey( spep_0 - n + 321, 1, -24 );
setRotateKey( spep_0 - n + 322, 1, -29.5 );
setRotateKey( spep_0 - n + 323, 1, -29.5 );
setRotateKey( spep_0 - n + 324, 1, -35 );
setRotateKey( spep_0 - n + 325, 1, -35 );
setRotateKey( spep_0 - n + 326, 1, -40.5 );
setRotateKey( spep_0 - n + 327, 1, -40.5 );
setRotateKey( spep_0 - n + 328, 1, -46 );
setRotateKey( spep_0 - n + 329, 1, -46 );
setRotateKey( spep_0 - n + 330, 1, -51.5 );
setRotateKey( spep_0 - n + 331, 1, -51.5 );
setRotateKey( spep_0 - n + 332, 1, -57 );
setRotateKey( spep_0 - n + 333, 1, -57 );
setRotateKey( spep_0 - n + 334, 1, -62.5 );
setRotateKey( spep_0 - n + 335, 1, -62.5 );
setRotateKey( spep_0 - n + 336, 1, -68 );
setRotateKey( spep_0 - n + 341, 1, -68 );
setRotateKey( spep_0 - n + 342, 1, 0 );
setRotateKey( spep_0 - n + 357, 1, 0 );
setRotateKey( spep_0 - n + 358, 1, 49.2 );
setRotateKey( spep_0 - n + 367, 1, 49.2 );
setRotateKey( spep_0 - n + 368, 1, 51.3 );
setRotateKey( spep_0 - n + 371, 1, 51.3 );
setRotateKey( spep_0 - n + 372, 1, 53.5 );
setRotateKey( spep_0 - n + 375, 1, 53.5 );
setRotateKey( spep_0 - n + 376, 1, 55.6 );
setRotateKey( spep_0 - n + 379, 1, 55.6 );
setRotateKey( spep_0 - n + 380, 1, 57.7 );
setRotateKey( spep_0 - n + 383, 1, 57.7 );
setRotateKey( spep_0 - n + 384, 1, 59.8 );
setRotateKey( spep_0 - n + 387, 1, 59.8 );
setRotateKey( spep_0 - n + 388, 1, 61.9 );
setRotateKey( spep_0 - n + 391, 1, 61.9 );
setRotateKey( spep_0 - n + 392, 1, 63 );
setRotateKey( spep_0 - n + 393, 1, 63 );
setRotateKey( spep_0 - n + 394, 1, 147.1 );
setRotateKey( spep_0 - n + 403, 1, 147.1 );
setRotateKey( spep_0 - n + 404, 1, 166.1 );
setRotateKey( spep_0 - n + 405, 1, 166.1 );
setRotateKey( spep_0 - n + 406, 1, 185.1 );
setRotateKey( spep_0 - n + 407, 1, 185.1 );
setRotateKey( spep_0 - n + 408, 1, 204.1 );
setRotateKey( spep_0 - n + 409, 1, 204.1 );
setRotateKey( spep_0 - n + 410, 1, 223 );
setRotateKey( spep_0 - n + 411, 1, 223 );
setRotateKey( spep_0 - n + 412, 1, 242 );
setRotateKey( spep_0 - n + 413, 1, 242 );
setRotateKey( spep_0 - n + 414, 1, 261 );
setRotateKey( spep_0 - n + 421, 1, 261 );
setRotateKey( spep_0 - n + 422, 1, 0 );
setRotateKey( spep_0 - n + 425, 1, 0 );
setRotateKey( spep_0 - n + 426, 1, 131.5 );
setRotateKey( spep_0 - n + 481, 1, 131.5 );
setRotateKey( spep_0 - n + 482, 1, 171.9 );
setRotateKey( spep_0 - n + 497, 1, 171.9 );
setRotateKey( spep_0 - n + 498, 1, 114.2 );
setRotateKey( spep_0 - n + 499, 1, 114.2 );
setRotateKey( spep_0 - n + 500, 1, 114.1 );
setRotateKey( spep_0 - n + 501, 1, 114.1 );
setRotateKey( spep_0 - n + 502, 1, 114 );
setRotateKey( spep_0 - n + 509, 1, 114 );
setRotateKey( spep_0 - n + 510, 1, 113.9 );
setRotateKey( spep_0 - n + 511, 1, 113.9 );
setRotateKey( spep_0 - n + 512, 1, 113.8 );
setRotateKey( spep_0 - n + 513, 1, 113.8 );
setRotateKey( spep_0 - n + 514, 1, 113.7 );
setRotateKey( spep_0 - n + 515, 1, 113.7 );
setRotateKey( spep_0 - n + 516, 1, 113.6 );
setRotateKey( spep_0 - n + 517, 1, 113.6 );
setRotateKey( spep_0 - n + 518, 1, 113.5 );
setRotateKey( spep_0 - n + 519, 1, 113.5 );
setRotateKey( spep_0 - n + 520, 1, 113.4 );
setRotateKey( spep_0 - n + 521, 1, 113.4 );
setRotateKey( spep_0 - n + 522, 1, 113.3 );
setRotateKey( spep_0 - n + 523, 1, 113.3 );
setRotateKey( spep_0 - n + 524, 1, 113.2 );
setRotateKey( spep_0 - n + 525, 1, 113.2 );
setRotateKey( spep_0 - n + 526, 1, 113.1 );
setRotateKey( spep_0 - n + 527, 1, 113.1 );
setRotateKey( spep_0 - n + 528, 1, 113 );
setRotateKey( spep_0 - n + 529, 1, 113 );
setRotateKey( spep_0 - n + 530, 1, 112.9 );
setRotateKey( spep_0 - n + 531, 1, 112.9 );
setRotateKey( spep_0 - n + 532, 1, 112.8 );
setRotateKey( spep_0 - n + 533, 1, 112.8 );
setRotateKey( spep_0 - n + 534, 1, 112.7 );
setRotateKey( spep_0 - n + 535, 1, 112.7 );
setRotateKey( spep_0 - n + 536, 1, 112.6 );
setRotateKey( spep_0 - n + 537, 1, 112.6 );
setRotateKey( spep_0 - n + 538, 1, 112.5 );
setRotateKey( spep_0 - n + 541, 1, 112.5 );
setRotateKey( spep_0 - n + 542, 1, -94.8 );
setRotateKey( spep_0 - n + 543, 1, -94.8 );
setRotateKey( spep_0 - n + 544, 1, -94.5 );
setRotateKey( spep_0 - n + 545, 1, -94.5 );
setRotateKey( spep_0 - n + 546, 1, -94.3 );
setRotateKey( spep_0 - n + 547, 1, -94.3 );
setRotateKey( spep_0 - n + 548, 1, -94 );
setRotateKey( spep_0 - n + 549, 1, -94 );
setRotateKey( spep_0 - n + 550, 1, -93.8 );
setRotateKey( spep_0 - n + 551, 1, -93.8 );
setRotateKey( spep_0 - n + 552, 1, -93.5 );
setRotateKey( spep_0 - n + 555, 1, -93.3 );
setRotateKey( spep_0 - n + 556, 1, -143.3 );
setRotateKey( spep_0 - n + 557, 1, -143.3 );
setRotateKey( spep_0 - n + 558, 1, -143.2 );
setRotateKey( spep_0 - n + 563, 1, -143.2 );
setRotateKey( spep_0 - n + 564, 1, -142.1 );
setRotateKey( spep_0 - n + 565, 1, -142.1 );
setRotateKey( spep_0 - n + 566, 1, -141 );
setRotateKey( spep_0 - n + 642, 1, -141 );

-- ** 音 ** --
--神聖樹の実落ちる
SE004 = playSeVer2( spep_0 + 148, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE004, 130 );
SE005 = playSeVer2( spep_0 + 148, 1111, "",spep_0 + 164, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 148, SE005, 229 );
SE006 = playSeVer2( spep_0 + 148, 1029, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 178, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE007, 83 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 182, 1109, "", 0, 0, 0, -1);

--初手エルボー
SE009 = playSeVer2( spep_0 + 206, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 214, 1187, "",spep_0 + 240, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 214, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE012 = playSeVer2( spep_0 + 240, 1183, "",spep_0 + 334, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 240, SE012, 77 );
SE013 = playSeVer2( spep_0 + 242, 1120, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 242, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE014, 73 );

--追い越す
SE015 = playSeVer2( spep_0 + 262, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 268, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE016, 155 );

--殴り飛ばす２
SE017 = playSeVer2( spep_0 + 308, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 308, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE018, 79 );
SE019 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE019, 88 );

--壁激突
SE020 = playSeVer2( spep_0 + 354, 1011, "", 0, 0, 0, -1);

--蹴り落とす
SE021 = playSeVer2( spep_0 + 386, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE021, 132 );
SE022 = playSeVer2( spep_0 + 394, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_0 + 416, 1121, "",spep_0 + 520, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 416, SE023, 70 );

--追いかける
SE024 = playSeVer2( spep_0 + 446, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 456, 1277, "", 0, 0, 0, -1);

--瞬間移動
SE026 = playSeVer2( spep_0 + 480, 1109, "", 0, 0, 0, -1);

--膝蹴り
SE027 = playSeVer2( spep_0 + 496, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE027, 78 );
SE028 = playSeVer2( spep_0 + 496, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 496, 1110, "", 0, 0, 0, -1);

--両手で叩きつける
SE030 = playSeVer2( spep_0 + 552, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE030, 87 );
SE031 = playSeVer2( spep_0 + 552, 1359, "",spep_0 + 586, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 552, SE031, 75 );
SE032 = playSeVer2( spep_0 + 556, 1153, "", 0, 0, 0, -1);

--手かざす
SE033 = playSeVer2( spep_0 + 630, 1003, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 726, 8, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 735;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


------------------------------------------------------
-- 敵に気弾を放つ ef_002 (138F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 138, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 138, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 138, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 138, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 - n + 76, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, 116.1, -222.3 , 0 );
setMoveKey( spep_2 - n + 23, 1, 116.1, -222.3 , 0 );
setMoveKey( spep_2 - n + 24, 1, 135, -176.7 , 0 );
setMoveKey( spep_2 - n + 25, 1, 135, -176.7 , 0 );
setMoveKey( spep_2 - n + 26, 1, 164.7, -221.6 , 0 );
setMoveKey( spep_2 - n + 27, 1, 164.7, -221.6 , 0 );
setMoveKey( spep_2 - n + 28, 1, 131.3, -184.9 , 0 );
setMoveKey( spep_2 - n + 29, 1, 131.3, -184.9 , 0 );
setMoveKey( spep_2 - n + 30, 1, 151.6, -222 , 0 );
setMoveKey( spep_2 - n + 31, 1, 151.6, -222 , 0 );
setMoveKey( spep_2 - n + 32, 1, 165.8, -204.5 , 0 );
setMoveKey( spep_2 - n + 33, 1, 165.8, -204.5 , 0 );
setMoveKey( spep_2 - n + 34, 1, 139.8, -178.4 , 0 );
setMoveKey( spep_2 - n + 35, 1, 139.8, -178.4 , 0 );
setMoveKey( spep_2 - n + 36, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 37, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 38, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 39, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 40, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 41, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 42, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 43, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 44, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 45, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 46, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 47, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 48, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 49, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 50, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 51, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 52, 1, 147.1, -197.1 , 0 );
setMoveKey( spep_2 - n + 53, 1, 147.1, -197.1 , 0 );
setMoveKey( spep_2 - n + 54, 1, 144.5, -203.8 , 0 );
setMoveKey( spep_2 - n + 55, 1, 144.5, -203.8 , 0 );
setMoveKey( spep_2 - n + 56, 1, 147.3, -196.3 , 0 );
setMoveKey( spep_2 - n + 57, 1, 147.3, -196.3 , 0 );
setMoveKey( spep_2 - n + 58, 1, 144.1, -208.2 , 0 );
setMoveKey( spep_2 - n + 59, 1, 144.1, -208.2 , 0 );
setMoveKey( spep_2 - n + 60, 1, 153.2, -229.7 , 0 );
setMoveKey( spep_2 - n + 61, 1, 153.2, -229.7 , 0 );
setMoveKey( spep_2 - n + 62, 1, 144.1, -162.6 , 0 );
setMoveKey( spep_2 - n + 63, 1, 144.1, -162.6 , 0 );
setMoveKey( spep_2 - n + 64, 1, 141.5, -217.9 , 0 );
setMoveKey( spep_2 - n + 65, 1, 141.5, -217.9 , 0 );
setMoveKey( spep_2 - n + 66, 1, 148.2, -159.2 , 0 );
setMoveKey( spep_2 - n + 67, 1, 148.2, -159.2 , 0 );
setMoveKey( spep_2 - n + 68, 1, 144.9, -202.5 , 0 );
setMoveKey( spep_2 - n + 69, 1, 144.9, -202.5 , 0 );
setMoveKey( spep_2 - n + 70, 1, 154.1, -190.9 , 0 );
setMoveKey( spep_2 - n + 71, 1, 154.1, -190.9 , 0 );
setMoveKey( spep_2 - n + 72, 1, 144.1, -145.4 , 0 );
setMoveKey( spep_2 - n + 73, 1, 144.1, -145.4 , 0 );
setMoveKey( spep_2 - n + 74, 1, 133.8, -110.5 , 0 );
setMoveKey( spep_2 - n + 76, 1, 133.8, -110.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.42, 1.42 );
setScaleKey( spep_2 - n + 76, 1, 1.42, 1.42 );

setRotateKey( spep_2 + 0, 1, 22.2 );
setRotateKey( spep_2 - n + 23, 1, 22.2 );
setRotateKey( spep_2 - n + 24, 1, 6 );
setRotateKey( spep_2 - n + 73, 1, 6 );
setRotateKey( spep_2 - n + 74, 1, 21.2 );
setRotateKey( spep_2 - n + 76, 1, 21.2 );

setBlendColor( spep_2 + 0 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_2 - n + 24 , 1, 2, 0, 0, 0, 0.65);
setBlendColor( spep_2 - n + 59, 1, 2, 0, 0, 0, 0.65);
setBlendColor( spep_2 - n + 60 , 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 - n + 73, 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 - n + 74 , 1, 2, 0, 0, 0, 1.0);
setBlendColor( spep_2 - n + 75, 1, 2, 0, 0, 0, 1.0);
setBlendColor( spep_2 - n + 76 , 1, 2, 0, 0, 0, 0);


-- ** 音 ** --
--気弾溜め
SE036 = playSeVer2( spep_1 + 86, 1244, "",spep_2 + 28, 0, 12, 0.6);
SE037 = playSeVer2( spep_1 + 86, 1282, "",spep_2 + 26, 0, 10, 0.6);
SE038 = playSeVer2( spep_1 + 86, 1296, "",spep_2 + 26, 0, 10, -1);

--気弾発射
SE039 = playSeVer2( spep_2 + 16, 1284, "",spep_2 + 82, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 16, SE039, 76 );
SE040 = playSeVer2( spep_2 + 16, 1145, "",spep_2 + 84, 0, 20, 0.6);
SE041 = playSeVer2( spep_2 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE041, 155 );

--爆発
SE042 = playSeVer2( spep_2 + 60, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 60, 1067, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 138 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 18 );
endPhase( spep_2 + 138 - 4 ); 





else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ターレスと敵が見つめあう～気弾を構える ef_001 (735F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 735, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + 735, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 735, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 735, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001b_r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 735, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 735, entry_SP_001b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + 735, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + 735, entry_SP_001b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 735 + 2, 0, 0, 0, 0, 255 );

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
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 - n + 60, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--神聖樹の実を食べる
SE002 = playSeVer2( spep_0 + 98, 1071, "",spep_0 + 120, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 98, SE002, 124 );
SE003 = playSeVer2( spep_0 + 102, 1070, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE003, 129 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
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
spep_x = spep_0 + 646;
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

--顔カットイン
--SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 - n + 210, 1, 1 );
setDisp( spep_0 - n + 642, 1, 0 );
changeAnime( spep_0 - n + 210, 1, 108 );
changeAnime( spep_0 - n + 228, 1, 106 );
changeAnime( spep_0 - n + 240, 1, 108 );
changeAnime( spep_0 - n + 262, 1, 107 );
changeAnime( spep_0 - n + 308, 1, 7 );
changeAnime( spep_0 - n + 348, 1, 8 );
changeAnime( spep_0 - n + 358, 1, 6 );
changeAnime( spep_0 - n + 426, 1, 105 );
changeAnime( spep_0 - n + 482, 1, 6 );
changeAnime( spep_0 - n + 498, 1, 8 );
changeAnime( spep_0 - n + 542, 1, 108 );
changeAnime( spep_0 - n + 556, 1, 106 );

setMoveKey( spep_0 - n + 210, 1, -160.5, 4.2 , 0 );
setMoveKey( spep_0 - n + 211, 1, -160.5, 4.2 , 0 ); 
setMoveKey( spep_0 - n + 212, 1, -163.9, 2.7 , 0 );
setMoveKey( spep_0 - n + 213, 1, -163.9, 2.7 , 0 );
setMoveKey( spep_0 - n + 214, 1, -62.6, 18.9 , 0 );
setMoveKey( spep_0 - n + 215, 1, -62.6, 18.9 , 0 );
setMoveKey( spep_0 - n + 216, 1, -140, -5.8 , 0 );
setMoveKey( spep_0 - n + 217, 1, -140, -5.8 , 0 );
setMoveKey( spep_0 - n + 218, 1, -125.3, 36.4 , 0 );
setMoveKey( spep_0 - n + 219, 1, -125.3, 36.4 , 0 );
setMoveKey( spep_0 - n + 220, 1, 15.2, 8.4 , 0 );
setMoveKey( spep_0 - n + 221, 1, 15.2, 8.4 , 0 );
setMoveKey( spep_0 - n + 222, 1, 48.9, 13.2 , 0 );
setMoveKey( spep_0 - n + 223, 1, 48.9, 13.2 , 0 );
setMoveKey( spep_0 - n + 224, 1, 63.7, 11.1 , 0 );
setMoveKey( spep_0 - n + 226, 1, 63.7, 11.1 , 0 );
setMoveKey( spep_0 - n + 227, 1, 79.3, 11.8 , 0 );
setMoveKey( spep_0 - n + 228, 1, 57.7, 17.7 , 0 );
setMoveKey( spep_0 - n + 229, 1, 57.7, 17.7 , 0 ); 
setMoveKey( spep_0 - n + 230, 1, 73.1, 25.7 , 0 );
setMoveKey( spep_0 - n + 231, 1, 73.1, 25.7 , 0 );
setMoveKey( spep_0 - n + 232, 1, 88.4, 33.8 , 0 );
setMoveKey( spep_0 - n + 233, 1, 88.4, 33.8 , 0 );
setMoveKey( spep_0 - n + 234, 1, 103.8, 41.9 , 0 );
setMoveKey( spep_0 - n + 235, 1, 103.8, 41.9 , 0 );
setMoveKey( spep_0 - n + 236, 1, 119.1, 50 , 0 );
setMoveKey( spep_0 - n + 237, 1, 119.1, 50 , 0 );
setMoveKey( spep_0 - n + 238, 1, 134.5, 58.1 , 0 );
setMoveKey( spep_0 - n + 239, 1, 134.5, 58.1 , 0 );
setMoveKey( spep_0 - n + 240, 1, 111, 30.9 , 0 );
setMoveKey( spep_0 - n + 241, 1, 111, 30.9 , 0 ); 
setMoveKey( spep_0 - n + 242, 1, 144, 50 , 0 );
setMoveKey( spep_0 - n + 243, 1, 144, 50 , 0 );
setMoveKey( spep_0 - n + 244, 1, 129.6, 19 , 0 );
setMoveKey( spep_0 - n + 245, 1, 129.6, 19 , 0 );
setMoveKey( spep_0 - n + 246, 1, 116.6, 57.6 , 0 );
setMoveKey( spep_0 - n + 247, 1, 116.6, 57.6 , 0 );
setMoveKey( spep_0 - n + 248, 1, 195.8, 5 , 0 );
setMoveKey( spep_0 - n + 249, 1, 195.8, 5 , 0 );
setMoveKey( spep_0 - n + 250, 1, 232.7, 11.5 , 0 );
setMoveKey( spep_0 - n + 251, 1, 232.7, 11.5 , 0 );
setMoveKey( spep_0 - n + 252, 1, 312.9, -4.3 , 0 );
setMoveKey( spep_0 - n + 253, 1, 312.9, -4.3 , 0 );
setMoveKey( spep_0 - n + 254, 1, 360.6, -35.5 , 0 );
setMoveKey( spep_0 - n + 255, 1, 360.6, -35.5 , 0 );
setMoveKey( spep_0 - n + 256, 1, 423.4, -49.9 , 0 );
setMoveKey( spep_0 - n + 257, 1, 423.4, -49.9 , 0 );
setMoveKey( spep_0 - n + 258, 1, 482.3, -66.9 , 0 );
setMoveKey( spep_0 - n + 259, 1, 482.3, -66.9 , 0 );
setMoveKey( spep_0 - n + 260, 1, 541.1, -84 , 0 );
setMoveKey( spep_0 - n + 261, 1, 541.1, -84 , 0 );
setMoveKey( spep_0 - n + 262, 1, -303.1, -337.1 , 0 );
setMoveKey( spep_0 - n + 263, 1, -303.1, -337.1 , 0 ); 
setMoveKey( spep_0 - n + 264, 1, -300.1, -333 , 0 );
setMoveKey( spep_0 - n + 265, 1, -300.1, -333 , 0 );
setMoveKey( spep_0 - n + 266, 1, -295.4, -326.9 , 0 );
setMoveKey( spep_0 - n + 267, 1, -295.4, -326.9 , 0 );
setMoveKey( spep_0 - n + 268, 1, -289.3, -319 , 0 );
setMoveKey( spep_0 - n + 269, 1, -289.3, -319 , 0 );
setMoveKey( spep_0 - n + 270, 1, -281.8, -309.5 , 0 );
setMoveKey( spep_0 - n + 271, 1, -281.8, -309.5 , 0 );
setMoveKey( spep_0 - n + 272, 1, -273, -298.5 , 0 );
setMoveKey( spep_0 - n + 273, 1, -273, -298.5 , 0 );
setMoveKey( spep_0 - n + 274, 1, -263, -286 , 0 );
setMoveKey( spep_0 - n + 275, 1, -263, -286 , 0 );
setMoveKey( spep_0 - n + 276, 1, -252, -272.2 , 0 );
setMoveKey( spep_0 - n + 277, 1, -252, -272.2 , 0 );
setMoveKey( spep_0 - n + 278, 1, -240, -257.3 , 0 );
setMoveKey( spep_0 - n + 279, 1, -240, -257.3 , 0 );
setMoveKey( spep_0 - n + 280, 1, -226.9, -241.1 , 0 );
setMoveKey( spep_0 - n + 281, 1, -226.9, -241.1 , 0 );
setMoveKey( spep_0 - n + 282, 1, -213, -223.9 , 0 );
setMoveKey( spep_0 - n + 283, 1, -213, -223.9 , 0 );
setMoveKey( spep_0 - n + 284, 1, -198.2, -205.6 , 0 );
setMoveKey( spep_0 - n + 285, 1, -198.2, -205.6 , 0 );
setMoveKey( spep_0 - n + 286, 1, -182.5, -186.3 , 0 );
setMoveKey( spep_0 - n + 287, 1, -182.5, -186.3 , 0 );
setMoveKey( spep_0 - n + 288, 1, -166.1, -166.1 , 0 );
setMoveKey( spep_0 - n + 289, 1, -166.1, -166.1 , 0 );
setMoveKey( spep_0 - n + 290, 1, -149, -145 , 0 );
setMoveKey( spep_0 - n + 291, 1, -149, -145 , 0 );
setMoveKey( spep_0 - n + 292, 1, -131, -123 , 0 );
setMoveKey( spep_0 - n + 293, 1, -131, -123 , 0 );
setMoveKey( spep_0 - n + 294, 1, -112.3, -100.1 , 0 );
setMoveKey( spep_0 - n + 295, 1, -112.3, -100.1 , 0 );
setMoveKey( spep_0 - n + 296, 1, -93, -76.3 , 0 );
setMoveKey( spep_0 - n + 297, 1, -93, -76.3 , 0 );
setMoveKey( spep_0 - n + 298, 1, -72.9, -51.7 , 0 );
setMoveKey( spep_0 - n + 299, 1, -72.9, -51.7 , 0 );
setMoveKey( spep_0 - n + 300, 1, -52, -26.2 , 0 );
setMoveKey( spep_0 - n + 301, 1, -52, -26.2 , 0 );
setMoveKey( spep_0 - n + 302, 1, -30.4, 0.2 , 0 );
setMoveKey( spep_0 - n + 303, 1, -30.4, 0.2 , 0 );
setMoveKey( spep_0 - n + 304, 1, -8, 27.7 , 0 );
setMoveKey( spep_0 - n + 305, 1, -8, 27.7 , 0 );
setMoveKey( spep_0 - n + 306, 1, 15.6, 56.5 , 0 );
setMoveKey( spep_0 - n + 307, 1, 15.6, 56.5 , 0 );
setMoveKey( spep_0 - n + 308, 1, 45.5, 16.8 , 0 );
setMoveKey( spep_0 - n + 309, 1, 45.5, 16.8 , 0 ); 
setMoveKey( spep_0 - n + 310, 1, 121.3, 34.7 , 0 );
setMoveKey( spep_0 - n + 311, 1, 121.3, 34.7 , 0 );
setMoveKey( spep_0 - n + 312, 1, 28.4, 25.1 , 0 );
setMoveKey( spep_0 - n + 313, 1, 28.4, 25.1 , 0 );
setMoveKey( spep_0 - n + 314, 1, 16.6, -9.7 , 0 );
setMoveKey( spep_0 - n + 315, 1, 16.6, -9.7 , 0 );
setMoveKey( spep_0 - n + 316, 1, -57, -11.7 , 0 );
setMoveKey( spep_0 - n + 317, 1, -57, -11.7 , 0 );
setMoveKey( spep_0 - n + 318, 1, -156.4, -64.3 , 0 );
setMoveKey( spep_0 - n + 319, 1, -156.4, -64.3 , 0 );
setMoveKey( spep_0 - n + 320, 1, -293.1, -98.8 , 0 );
setMoveKey( spep_0 - n + 321, 1, -293.1, -98.8 , 0 );
setMoveKey( spep_0 - n + 322, 1, -391.3, -139.2 , 0 );
setMoveKey( spep_0 - n + 323, 1, -391.3, -139.2 , 0 );
setMoveKey( spep_0 - n + 324, 1, -526.2, -184.9 , 0 );
setMoveKey( spep_0 - n + 325, 1, -526.2, -184.9 , 0 );
setMoveKey( spep_0 - n + 326, 1, -631.5, -219.1 , 0 );
setMoveKey( spep_0 - n + 327, 1, -631.5, -219.1 , 0 );
setMoveKey( spep_0 - n + 328, 1, -753.5, -269 , 0 );
setMoveKey( spep_0 - n + 329, 1, -753.5, -269 , 0 );
setMoveKey( spep_0 - n + 330, 1, -872.4, -299.1 , 0 );
setMoveKey( spep_0 - n + 331, 1, -872.4, -299.1 , 0 );
setMoveKey( spep_0 - n + 332, 1, -986.8, -348.1 , 0 );
setMoveKey( spep_0 - n + 333, 1, -986.8, -348.1 , 0 );
setMoveKey( spep_0 - n + 334, 1, -1104.6, -388.4 , 0 );
setMoveKey( spep_0 - n + 335, 1, -1104.6, -388.4 , 0 );
setMoveKey( spep_0 - n + 336, 1, -1222.3, -428.8 , 0 );
setMoveKey( spep_0 - n + 337, 1, -1222.3, -428.8 , 0 );
setMoveKey( spep_0 - n + 338, 1, -1222.4, -428.5 , 0 );
setMoveKey( spep_0 - n + 339, 1, -1222.4, -428.5 , 0 );
setMoveKey( spep_0 - n + 340, 1, -1222.5, -428.2 , 0 );
setMoveKey( spep_0 - n + 347, 1, -1222.5, -428.2 , 0 );
setMoveKey( spep_0 - n + 348, 1, 375.2, -7.9 , 0 );
setMoveKey( spep_0 - n + 349, 1, 375.2, -7.9 , 0 ); 
setMoveKey( spep_0 - n + 350, 1, 375.2, -7.5 , 0 );
setMoveKey( spep_0 - n + 351, 1, 375.2, -7.5 , 0 );
setMoveKey( spep_0 - n + 352, 1, 63.8, -18.3 , 0 );
setMoveKey( spep_0 - n + 353, 1, 63.8, -18.3 , 0 );
setMoveKey( spep_0 - n + 354, 1, -70.2, -19.7 , 0 );
setMoveKey( spep_0 - n + 355, 1, -70.2, -19.7 , 0 );
setMoveKey( spep_0 - n + 356, 1, -70.3, -19.4 , 0 );
setMoveKey( spep_0 - n + 357, 1, -70.3, -19.4 , 0 );
setMoveKey( spep_0 - n + 358, 1, -45.1, 7.1 , 0 );
setMoveKey( spep_0 - n + 359, 1, -45.1, 7.1 , 0 ); 
setMoveKey( spep_0 - n + 360, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 361, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 362, 1, -39.9, 9.1 , 0 );
setMoveKey( spep_0 - n + 363, 1, -39.9, 9.1 , 0 );
setMoveKey( spep_0 - n + 364, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 365, 1, -19.5, 8.2 , 0 );
setMoveKey( spep_0 - n + 366, 1, -40.2, 9.6 , 0 );
setMoveKey( spep_0 - n + 367, 1, -40.2, 9.6 , 0 );
setMoveKey( spep_0 - n + 368, 1, 19.2, 29.8 , 0 );
setMoveKey( spep_0 - n + 369, 1, 19.2, 29.8 , 0 );
setMoveKey( spep_0 - n + 370, 1, 10.9, 28 , 0 );
setMoveKey( spep_0 - n + 371, 1, 10.9, 28 , 0 );
setMoveKey( spep_0 - n + 372, 1, 31, 36.2 , 0 );
setMoveKey( spep_0 - n + 373, 1, 31, 36.2 , 0 );
setMoveKey( spep_0 - n + 374, 1, 25, 31.8 , 0 );
setMoveKey( spep_0 - n + 375, 1, 25, 31.8 , 0 );
setMoveKey( spep_0 - n + 376, 1, 31.8, 30.9 , 0 );
setMoveKey( spep_0 - n + 377, 1, 31.8, 30.9 , 0 );
setMoveKey( spep_0 - n + 378, 1, 31.9, 31 , 0 );
setMoveKey( spep_0 - n + 379, 1, 31.9, 31 , 0 );
setMoveKey( spep_0 - n + 380, 1, 41, 27.1 , 0 );
setMoveKey( spep_0 - n + 381, 1, 41, 27.1 , 0 );
setMoveKey( spep_0 - n + 382, 1, 41.1, 27.2 , 0 );
setMoveKey( spep_0 - n + 383, 1, 41.1, 27.2 , 0 );
setMoveKey( spep_0 - n + 384, 1, 50.2, 23 , 0 );
setMoveKey( spep_0 - n + 385, 1, 50.2, 23 , 0 );
setMoveKey( spep_0 - n + 386, 1, 50.3, 23.1 , 0 );
setMoveKey( spep_0 - n + 387, 1, 50.3, 23.1 , 0 );
setMoveKey( spep_0 - n + 388, 1, 59.5, 19.1 , 0 );
setMoveKey( spep_0 - n + 389, 1, 59.5, 19.1 , 0 );
setMoveKey( spep_0 - n + 390, 1, 59.6, 19.2 , 0 );
setMoveKey( spep_0 - n + 391, 1, 59.6, 19.2 , 0 );
setMoveKey( spep_0 - n + 392, 1, 64.3, 17.3 , 0 );
setMoveKey( spep_0 - n + 393, 1, 64.3, 17.3 , 0 );
setMoveKey( spep_0 - n + 394, 1, -2.1, 40.7 , 0 );
setMoveKey( spep_0 - n + 395, 1, -2.1, 40.7 , 0 );
setMoveKey( spep_0 - n + 396, 1, -18.5, 76.5 , 0 );
setMoveKey( spep_0 - n + 397, 1, -18.5, 76.5 , 0 );
setMoveKey( spep_0 - n + 398, 1, 15.4, 4.8 , 0 );
setMoveKey( spep_0 - n + 399, 1, 15.4, 4.8 , 0 );
setMoveKey( spep_0 - n + 400, 1, -6.5, 63.6 , 0 );
setMoveKey( spep_0 - n + 401, 1, -6.5, 63.6 , 0 );
setMoveKey( spep_0 - n + 402, 1, -4.9, -116.2 , 0 );
setMoveKey( spep_0 - n + 403, 1, -4.9, -116.2 , 0 );
setMoveKey( spep_0 - n + 404, 1, 14.7, -318.8 , 0 );
setMoveKey( spep_0 - n + 405, 1, 14.7, -318.8 , 0 );
setMoveKey( spep_0 - n + 406, 1, 4.2, -603.2 , 0 );
setMoveKey( spep_0 - n + 407, 1, 4.2, -603.2 , 0 );
setMoveKey( spep_0 - n + 408, 1, 38.5, -836.9 , 0 );
setMoveKey( spep_0 - n + 409, 1, 38.5, -836.9 , 0 );
setMoveKey( spep_0 - n + 410, 1, 35.5, -1089.7 , 0 );
setMoveKey( spep_0 - n + 411, 1, 35.5, -1089.7 , 0 );
setMoveKey( spep_0 - n + 412, 1, 58.5, -1351.5 , 0 );
setMoveKey( spep_0 - n + 413, 1, 58.5, -1351.5 , 0 );
setMoveKey( spep_0 - n + 414, 1, 64.7, -1593.9 , 0 );
setMoveKey( spep_0 - n + 415, 1, 64.7, -1593.9 , 0 );
setMoveKey( spep_0 - n + 416, 1, 67.5, -1597.7 , 0 );
setMoveKey( spep_0 - n + 425, 1, 67.5, -1597.7 , 0 );
setMoveKey( spep_0 - n + 426, 1, -381.5, 598.4 , 0 );
setMoveKey( spep_0 - n + 429, 1, -381.5, 598.4 , 0 );
setMoveKey( spep_0 - n + 430, 1, -132.8, 156.3 , 0 );
setMoveKey( spep_0 - n + 433, 1, -132.8, 156.3 , 0 );
setMoveKey( spep_0 - n + 434, 1, -72.3, 51 , 0 );
setMoveKey( spep_0 - n + 437, 1, -72.3, 51 , 0 );
setMoveKey( spep_0 - n + 438, 1, -24.5, -27 , 0 );
setMoveKey( spep_0 - n + 441, 1, -24.5, -27 , 0 );
setMoveKey( spep_0 - n + 442, 1, 6.3, -80.3 , 0 );
setMoveKey( spep_0 - n + 445, 1, 6.3, -80.3 , 0 );
setMoveKey( spep_0 - n + 446, 1, 36.6, -134.2 , 0 );
setMoveKey( spep_0 - n + 449, 1, 36.6, -134.2 , 0 );
setMoveKey( spep_0 - n + 450, 1, 66.9, -188 , 0 );
setMoveKey( spep_0 - n + 453, 1, 66.9, -188 , 0 );
setMoveKey( spep_0 - n + 454, 1, 127.6, -295.5 , 0 );
setMoveKey( spep_0 - n + 457, 1, 127.6, -295.5 , 0 );
setMoveKey( spep_0 - n + 458, 1, 157.9, -349.3 , 0 );
setMoveKey( spep_0 - n + 461, 1, 157.9, -349.3 , 0 );
setMoveKey( spep_0 - n + 462, 1, 173.1, -376.1 , 0 );
setMoveKey( spep_0 - n + 465, 1, 173.1, -376.1 , 0 );
setMoveKey( spep_0 - n + 466, 1, 203.3, -429.9 , 0 );
setMoveKey( spep_0 - n + 469, 1, 203.3, -429.9 , 0 );
setMoveKey( spep_0 - n + 470, 1, 233.7, -483.7 , 0 );
setMoveKey( spep_0 - n + 477, 1, 233.7, -483.7 , 0 );
setMoveKey( spep_0 - n + 478, 1, 248.8, -510.5 , 0 );
setMoveKey( spep_0 - n + 481, 1, 248.8, -510.5 , 0 );
setMoveKey( spep_0 - n + 482, 1, 1.8, 416.4 , 0 );
setMoveKey( spep_0 - n + 483, 1, 1.8, 416.4 , 0 ); 
setMoveKey( spep_0 - n + 484, 1, -5.6, 349 , 0 );
setMoveKey( spep_0 - n + 485, 1, -5.6, 349 , 0 );
setMoveKey( spep_0 - n + 486, 1, -13, 281.6 , 0 );
setMoveKey( spep_0 - n + 487, 1, -13, 281.6 , 0 );
setMoveKey( spep_0 - n + 488, 1, -20.3, 214.2 , 0 );
setMoveKey( spep_0 - n + 489, 1, -20.3, 214.2 , 0 );
setMoveKey( spep_0 - n + 490, 1, -27.7, 146.8 , 0 );
setMoveKey( spep_0 - n + 491, 1, -27.7, 146.8 , 0 );
setMoveKey( spep_0 - n + 492, 1, -35, 79.4 , 0 );
setMoveKey( spep_0 - n + 493, 1, -35, 79.4 , 0 );
setMoveKey( spep_0 - n + 494, 1, -42.4, 12 , 0 );
setMoveKey( spep_0 - n + 495, 1, -42.4, 12 , 0 );
setMoveKey( spep_0 - n + 496, 1, -49.7, -55.4 , 0 );
setMoveKey( spep_0 - n + 497, 1, -49.7, -55.4 , 0 );
setMoveKey( spep_0 - n + 498, 1, -4.5, -6.6 , 0 );
setMoveKey( spep_0 - n + 499, 1, -4.5, -6.6 , 0 ); 
setMoveKey( spep_0 - n + 500, 1, -17, -26.3 , 0 );
setMoveKey( spep_0 - n + 501, 1, -17, -26.3 , 0 );
setMoveKey( spep_0 - n + 502, 1, 3.9, 9.4 , 0 );
setMoveKey( spep_0 - n + 503, 1, 3.9, 9.4 , 0 );
setMoveKey( spep_0 - n + 504, 1, 5.2, -21 , 0 );
setMoveKey( spep_0 - n + 505, 1, 5.2, -21 , 0 );
setMoveKey( spep_0 - n + 506, 1, -10.2, 13.3 , 0 );
setMoveKey( spep_0 - n + 507, 1, -10.2, 13.3 , 0 );
setMoveKey( spep_0 - n + 508, 1, -20.6, -9.4 , 0 );
setMoveKey( spep_0 - n + 509, 1, -20.6, -9.4 , 0 );
setMoveKey( spep_0 - n + 510, 1, 2.1, 36.8 , 0 );
setMoveKey( spep_0 - n + 511, 1, 2.1, 36.8 , 0 );
setMoveKey( spep_0 - n + 512, 1, -10.3, 35.8 , 0 );
setMoveKey( spep_0 - n + 513, 1, -10.3, 35.8 , 0 );
setMoveKey( spep_0 - n + 514, 1, -8.7, 48.2 , 0 );
setMoveKey( spep_0 - n + 515, 1, -8.7, 48.2 , 0 );
setMoveKey( spep_0 - n + 516, 1, -8.6, 52.7 , 0 );
setMoveKey( spep_0 - n + 517, 1, -8.6, 52.7 , 0 );
setMoveKey( spep_0 - n + 518, 1, -8.4, 56 , 0 );
setMoveKey( spep_0 - n + 519, 1, -8.4, 56 , 0 );
setMoveKey( spep_0 - n + 520, 1, -8.2, 58.7 , 0 );
setMoveKey( spep_0 - n + 521, 1, -8.2, 58.7 , 0 );
setMoveKey( spep_0 - n + 522, 1, -8, 61 , 0 );
setMoveKey( spep_0 - n + 523, 1, -8, 61 , 0 );
setMoveKey( spep_0 - n + 524, 1, -7.8, 63 , 0 );
setMoveKey( spep_0 - n + 525, 1, -7.8, 63 , 0 );
setMoveKey( spep_0 - n + 526, 1, -7.6, 64.7 , 0 );
setMoveKey( spep_0 - n + 527, 1, -7.6, 64.7 , 0 );
setMoveKey( spep_0 - n + 528, 1, -7.5, 66.3 , 0 );
setMoveKey( spep_0 - n + 529, 1, -7.5, 66.3 , 0 );
setMoveKey( spep_0 - n + 530, 1, -7.3, 67.8 , 0 );
setMoveKey( spep_0 - n + 531, 1, -7.3, 67.8 , 0 );
setMoveKey( spep_0 - n + 532, 1, -7, 69.1 , 0 );
setMoveKey( spep_0 - n + 533, 1, -7, 69.1 , 0 );
setMoveKey( spep_0 - n + 534, 1, -6.8, 70.3 , 0 );
setMoveKey( spep_0 - n + 535, 1, -6.8, 70.3 , 0 );
setMoveKey( spep_0 - n + 536, 1, -6.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 537, 1, -6.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 538, 1, -6.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 539, 1, -6.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 540, 1, -6.1, 73.5 , 0 );
setMoveKey( spep_0 - n + 541, 1, -6.1, 73.5 , 0 );
setMoveKey( spep_0 - n + 542, 1, -8.5, 55.3 , 0 );
setMoveKey( spep_0 - n + 543, 1, -8.5, 55.3 , 0 ); 
setMoveKey( spep_0 - n + 544, 1, -8.4, 59.7 , 0 );
setMoveKey( spep_0 - n + 545, 1, -8.4, 59.7 , 0 );
setMoveKey( spep_0 - n + 546, 1, -8.4, 63.9 , 0 );
setMoveKey( spep_0 - n + 547, 1, -8.4, 63.9 , 0 );
setMoveKey( spep_0 - n + 548, 1, -8.3, 68.2 , 0 );
setMoveKey( spep_0 - n + 549, 1, -8.3, 68.2 , 0 );
setMoveKey( spep_0 - n + 550, 1, -8.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 551, 1, -8.3, 72.5 , 0 );
setMoveKey( spep_0 - n + 552, 1, -8.2, 76.9 , 0 );
setMoveKey( spep_0 - n + 554, 1, -8.2, 76.9 , 0 );
setMoveKey( spep_0 - n + 555, 1, -8.2, 81.2 , 0 );
setMoveKey( spep_0 - n + 556, 1, -13.8, -0.2 , 0 );
setMoveKey( spep_0 - n + 557, 1, -13.8, -0.2 , 0 ); 
setMoveKey( spep_0 - n + 558, 1, -14.6, -10.7 , 0 );
setMoveKey( spep_0 - n + 559, 1, -14.6, -10.7 , 0 );
setMoveKey( spep_0 - n + 560, 1, -13.7, 14.9 , 0 );
setMoveKey( spep_0 - n + 561, 1, -13.7, 14.9 , 0 );
setMoveKey( spep_0 - n + 562, 1, -14.2, -7.3 , 0 );
setMoveKey( spep_0 - n + 563, 1, -14.2, -7.3 , 0 );
setMoveKey( spep_0 - n + 564, 1, -23.6, -113.3 , 0 );
setMoveKey( spep_0 - n + 565, 1, -23.6, -113.3 , 0 );
setMoveKey( spep_0 - n + 566, 1, -30.7, -269.8 , 0 );
setMoveKey( spep_0 - n + 567, 1, -30.7, -269.8 , 0 );
setMoveKey( spep_0 - n + 568, 1, -28.2, -252.5 , 0 );
setMoveKey( spep_0 - n + 569, 1, -28.2, -252.5 , 0 );
setMoveKey( spep_0 - n + 570, 1, -30.7, -267.6 , 0 );
setMoveKey( spep_0 - n + 571, 1, -30.7, -267.6 , 0 );
setMoveKey( spep_0 - n + 572, 1, -30.7, -256 , 0 );
setMoveKey( spep_0 - n + 573, 1, -30.7, -256 , 0 );
setMoveKey( spep_0 - n + 574, 1, -27.7, -267.4 , 0 );
setMoveKey( spep_0 - n + 575, 1, -27.7, -267.4 , 0 );
setMoveKey( spep_0 - n + 576, 1, -29.4, -260.7 , 0 );
setMoveKey( spep_0 - n + 642, 1, -29.4, -260.7 , 0 );

a = 1.05;
setScaleKey( spep_0 - n + 210, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 227, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 228, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_0 - n + 239, 1, 1.25 * a, 1.25 * a );
setScaleKey( spep_0 - n + 240, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 247, 1, 1.55 * a, 1.55 * a );
setScaleKey( spep_0 - n + 248, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_0 - n + 249, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_0 - n + 250, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_0 - n + 251, 1, 1.45 * a, 1.45 * a );
setScaleKey( spep_0 - n + 252, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_0 - n + 253, 1, 1.4 * a, 1.4 * a );
setScaleKey( spep_0 - n + 254, 1, 1.34 * a, 1.34 * a );
setScaleKey( spep_0 - n + 255, 1, 1.34 * a, 1.34  * a);
setScaleKey( spep_0 - n + 256, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_0 - n + 257, 1, 1.29 * a, 1.29 * a );
setScaleKey( spep_0 - n + 258, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_0 - n + 259, 1, 1.24 * a, 1.24 * a );
setScaleKey( spep_0 - n + 260, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_0 - n + 261, 1, 1.19 * a, 1.19 * a );
setScaleKey( spep_0 - n + 262, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 265, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 266, 1, 0.11, 0.11 );
setScaleKey( spep_0 - n + 267, 1, 0.11, 0.11 );
setScaleKey( spep_0 - n + 268, 1, 0.13, 0.12 );
setScaleKey( spep_0 - n + 269, 1, 0.13, 0.12 );
setScaleKey( spep_0 - n + 270, 1, 0.15, 0.14 );
setScaleKey( spep_0 - n + 271, 1, 0.15, 0.14 );
setScaleKey( spep_0 - n + 272, 1, 0.17, 0.16 );
setScaleKey( spep_0 - n + 273, 1, 0.17, 0.16 );
setScaleKey( spep_0 - n + 274, 1, 0.2, 0.19 );
setScaleKey( spep_0 - n + 275, 1, 0.2, 0.19 );
setScaleKey( spep_0 - n + 276, 1, 0.23, 0.22 );
setScaleKey( spep_0 - n + 277, 1, 0.23, 0.22 );
setScaleKey( spep_0 - n + 278, 1, 0.27, 0.26 );
setScaleKey( spep_0 - n + 279, 1, 0.27, 0.26 );
setScaleKey( spep_0 - n + 280, 1, 0.31, 0.29 );
setScaleKey( spep_0 - n + 281, 1, 0.31, 0.29 );
setScaleKey( spep_0 - n + 282, 1, 0.35, 0.33 );
setScaleKey( spep_0 - n + 283, 1, 0.35, 0.33 );
setScaleKey( spep_0 - n + 284, 1, 0.39, 0.38 );
setScaleKey( spep_0 - n + 285, 1, 0.39, 0.38 );
setScaleKey( spep_0 - n + 286, 1, 0.44, 0.42 );
setScaleKey( spep_0 - n + 287, 1, 0.44, 0.42 );
setScaleKey( spep_0 - n + 288, 1, 0.49, 0.48 );
setScaleKey( spep_0 - n + 289, 1, 0.49, 0.48 );
setScaleKey( spep_0 - n + 290, 1, 0.55, 0.53 );
setScaleKey( spep_0 - n + 291, 1, 0.55, 0.53 );
setScaleKey( spep_0 - n + 292, 1, 0.6, 0.58 );
setScaleKey( spep_0 - n + 293, 1, 0.6, 0.58 );
setScaleKey( spep_0 - n + 294, 1, 0.66, 0.64 );
setScaleKey( spep_0 - n + 295, 1, 0.66, 0.64 );
setScaleKey( spep_0 - n + 296, 1, 0.72, 0.7 );
setScaleKey( spep_0 - n + 297, 1, 0.72, 0.7 );
setScaleKey( spep_0 - n + 298, 1, 0.78, 0.77 );
setScaleKey( spep_0 - n + 299, 1, 0.78, 0.77 );
setScaleKey( spep_0 - n + 300, 1, 0.85, 0.84 );
setScaleKey( spep_0 - n + 301, 1, 0.85, 0.84 );
setScaleKey( spep_0 - n + 302, 1, 0.92, 0.91 );
setScaleKey( spep_0 - n + 303, 1, 0.92, 0.91 );
setScaleKey( spep_0 - n + 304, 1, 0.99, 0.98 );
setScaleKey( spep_0 - n + 305, 1, 0.99, 0.98 );
setScaleKey( spep_0 - n + 306, 1, 1.06, 1.06 );
setScaleKey( spep_0 - n + 341, 1, 1.06, 1.06 );
setScaleKey( spep_0 - n + 342, 1, 1, 1 );
setScaleKey( spep_0 - n + 347, 1, 1, 1 );
setScaleKey( spep_0 - n + 348, 1, 4.4, 4.4 );
setScaleKey( spep_0 - n + 351, 1, 4.4, 4.4 );
setScaleKey( spep_0 - n + 352, 1, 2.94, 2.95 );
setScaleKey( spep_0 - n + 353, 1, 2.94, 2.95 );
setScaleKey( spep_0 - n + 354, 1, 2.73, 2.73 );
setScaleKey( spep_0 - n + 357, 1, 2.73, 2.73 );
setScaleKey( spep_0 - n + 358, 1, 2.5, 2.5 );
setScaleKey( spep_0 - n + 403, 1, 2.5, 2.5 );
setScaleKey( spep_0 - n + 404, 1, 2.51, 2.51 );
setScaleKey( spep_0 - n + 405, 1, 2.51, 2.51 );
setScaleKey( spep_0 - n + 406, 1, 2.52, 2.52 );
setScaleKey( spep_0 - n + 407, 1, 2.52, 2.52 );
setScaleKey( spep_0 - n + 408, 1, 2.54, 2.54 );
setScaleKey( spep_0 - n + 409, 1, 2.54, 2.54 );
setScaleKey( spep_0 - n + 410, 1, 2.55, 2.55 );
setScaleKey( spep_0 - n + 411, 1, 2.55, 2.55 );
setScaleKey( spep_0 - n + 412, 1, 2.56, 2.56 );
setScaleKey( spep_0 - n + 413, 1, 2.56, 2.56 );
setScaleKey( spep_0 - n + 414, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 421, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 422, 1, 1, 1 );
setScaleKey( spep_0 - n + 425, 1, 1, 1 );
setScaleKey( spep_0 - n + 426, 1, 7, 7 );
setScaleKey( spep_0 - n + 429, 1, 7, 7 );
setScaleKey( spep_0 - n + 430, 1, 4.63, 4.6 );
setScaleKey( spep_0 - n + 433, 1, 4.63, 4.6 );
setScaleKey( spep_0 - n + 434, 1, 3.91, 3.88 );
setScaleKey( spep_0 - n + 437, 1, 3.91, 3.88 );
setScaleKey( spep_0 - n + 438, 1, 3.36, 3.34 );
setScaleKey( spep_0 - n + 441, 1, 3.36, 3.34 );
setScaleKey( spep_0 - n + 442, 1, 3, 2.98 );
setScaleKey( spep_0 - n + 445, 1, 3, 2.98 );
setScaleKey( spep_0 - n + 446, 1, 2.64, 2.62 );
setScaleKey( spep_0 - n + 449, 1, 2.64, 2.62 );
setScaleKey( spep_0 - n + 450, 1, 2.28, 2.26 );
setScaleKey( spep_0 - n + 453, 1, 2.28, 2.26 );
setScaleKey( spep_0 - n + 454, 1, 1.55, 1.54 );
setScaleKey( spep_0 - n + 457, 1, 1.55, 1.54 );
setScaleKey( spep_0 - n + 458, 1, 1.19, 1.18 );
setScaleKey( spep_0 - n + 461, 1, 1.19, 1.18 );
setScaleKey( spep_0 - n + 462, 1, 1.01, 1 );
setScaleKey( spep_0 - n + 465, 1, 1.01, 1 );
setScaleKey( spep_0 - n + 466, 1, 0.64, 0.64 );
setScaleKey( spep_0 - n + 469, 1, 0.64, 0.64 );
setScaleKey( spep_0 - n + 470, 1, 0.28, 0.28 );
setScaleKey( spep_0 - n + 477, 1, 0.28, 0.28 );
setScaleKey( spep_0 - n + 478, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 481, 1, 0.1, 0.1 );
setScaleKey( spep_0 - n + 482, 1, 2.24, 2.24 );
setScaleKey( spep_0 - n + 497, 1, 2.24, 2.24 );
setScaleKey( spep_0 - n + 498, 1, 3.02, 3.02 );
setScaleKey( spep_0 - n + 541, 1, 3.02, 3.02 );
setScaleKey( spep_0 - n + 542, 1, 3.65, 3.65 );
setScaleKey( spep_0 - n + 555, 1, 3.65, 3.65 );
setScaleKey( spep_0 - n + 556, 1, 2.98, 2.98 );
setScaleKey( spep_0 - n + 642, 1, 2.98, 2.98 );

setRotateKey( spep_0 - n + 210, 1, 4.5 );
setRotateKey( spep_0 - n + 211, 1, 4.5 );
setRotateKey( spep_0 - n + 212, 1, 5 );
setRotateKey( spep_0 - n + 213, 1, 5 );
setRotateKey( spep_0 - n + 214, 1, 5.5 );
setRotateKey( spep_0 - n + 219, 1, 5.5 );
setRotateKey( spep_0 - n + 220, 1, 6.9 );
setRotateKey( spep_0 - n + 221, 1, 6.9 );
setRotateKey( spep_0 - n + 222, 1, 7.4 );
setRotateKey( spep_0 - n + 223, 1, 7.4 );
setRotateKey( spep_0 - n + 224, 1, 7.8 );
setRotateKey( spep_0 - n + 225, 1, 7.8 );
setRotateKey( spep_0 - n + 226, 1, 8.3 );
setRotateKey( spep_0 - n + 227, 1, 8.3 );
setRotateKey( spep_0 - n + 228, 1, -56 );
setRotateKey( spep_0 - n + 229, 1, -56 );
setRotateKey( spep_0 - n + 230, 1, -51.4 );
setRotateKey( spep_0 - n + 231, 1, -51.4 );
setRotateKey( spep_0 - n + 232, 1, -46.8 );
setRotateKey( spep_0 - n + 233, 1, -46.8 );
setRotateKey( spep_0 - n + 234, 1, -42.2 );
setRotateKey( spep_0 - n + 235, 1, -42.2 );
setRotateKey( spep_0 - n + 236, 1, -37.6 );
setRotateKey( spep_0 - n + 237, 1, -37.6 );
setRotateKey( spep_0 - n + 238, 1, -33 );
setRotateKey( spep_0 - n + 247, 1, -33 );
setRotateKey( spep_0 - n + 248, 1, -22.9 );
setRotateKey( spep_0 - n + 249, 1, -22.9 );
setRotateKey( spep_0 - n + 250, 1, -12.9 );
setRotateKey( spep_0 - n + 251, 1, -12.9 );
setRotateKey( spep_0 - n + 252, 1, -2.8 );
setRotateKey( spep_0 - n + 253, 1, -2.8 );
setRotateKey( spep_0 - n + 254, 1, 7.3 );
setRotateKey( spep_0 - n + 255, 1, 7.3 );
setRotateKey( spep_0 - n + 256, 1, 17.3 );
setRotateKey( spep_0 - n + 257, 1, 17.3 );
setRotateKey( spep_0 - n + 258, 1, 27.4 );
setRotateKey( spep_0 - n + 259, 1, 27.4 );
setRotateKey( spep_0 - n + 260, 1, 37.5 );
setRotateKey( spep_0 - n + 261, 1, 37.5 );
setRotateKey( spep_0 - n + 262, 1, -79 );
setRotateKey( spep_0 - n + 263, 1, -79 );
setRotateKey( spep_0 - n + 264, 1, -76 );
setRotateKey( spep_0 - n + 265, 1, -76 );
setRotateKey( spep_0 - n + 266, 1, -73 );
setRotateKey( spep_0 - n + 267, 1, -73 );
setRotateKey( spep_0 - n + 268, 1, -70 );
setRotateKey( spep_0 - n + 269, 1, -70 );
setRotateKey( spep_0 - n + 270, 1, -67 );
setRotateKey( spep_0 - n + 271, 1, -67 );
setRotateKey( spep_0 - n + 272, 1, -64 );
setRotateKey( spep_0 - n + 273, 1, -64 );
setRotateKey( spep_0 - n + 274, 1, -61 );
setRotateKey( spep_0 - n + 275, 1, -61 );
setRotateKey( spep_0 - n + 276, 1, -58 );
setRotateKey( spep_0 - n + 277, 1, -58 );
setRotateKey( spep_0 - n + 278, 1, -55 );
setRotateKey( spep_0 - n + 279, 1, -55 );
setRotateKey( spep_0 - n + 280, 1, -52 );
setRotateKey( spep_0 - n + 281, 1, -52 );
setRotateKey( spep_0 - n + 282, 1, -49 );
setRotateKey( spep_0 - n + 283, 1, -49 );
setRotateKey( spep_0 - n + 284, 1, -46 );
setRotateKey( spep_0 - n + 285, 1, -46 );
setRotateKey( spep_0 - n + 286, 1, -43 );
setRotateKey( spep_0 - n + 287, 1, -43 );
setRotateKey( spep_0 - n + 288, 1, -40 );
setRotateKey( spep_0 - n + 289, 1, -40 );
setRotateKey( spep_0 - n + 290, 1, -37 );
setRotateKey( spep_0 - n + 291, 1, -37 );
setRotateKey( spep_0 - n + 292, 1, -34 );
setRotateKey( spep_0 - n + 293, 1, -34 );
setRotateKey( spep_0 - n + 294, 1, -31 );
setRotateKey( spep_0 - n + 295, 1, -31 );
setRotateKey( spep_0 - n + 296, 1, -28 );
setRotateKey( spep_0 - n + 297, 1, -28 );
setRotateKey( spep_0 - n + 298, 1, -25 );
setRotateKey( spep_0 - n + 299, 1, -25 );
setRotateKey( spep_0 - n + 300, 1, -22 );
setRotateKey( spep_0 - n + 301, 1, -22 );
setRotateKey( spep_0 - n + 302, 1, -19 );
setRotateKey( spep_0 - n + 303, 1, -19 );
setRotateKey( spep_0 - n + 304, 1, -16 );
setRotateKey( spep_0 - n + 305, 1, -16 );
setRotateKey( spep_0 - n + 306, 1, -13 );
setRotateKey( spep_0 - n + 317, 1, -13 );
setRotateKey( spep_0 - n + 318, 1, -18.5 );
setRotateKey( spep_0 - n + 319, 1, -18.5 );
setRotateKey( spep_0 - n + 320, 1, -24 );
setRotateKey( spep_0 - n + 321, 1, -24 );
setRotateKey( spep_0 - n + 322, 1, -29.5 );
setRotateKey( spep_0 - n + 323, 1, -29.5 );
setRotateKey( spep_0 - n + 324, 1, -35 );
setRotateKey( spep_0 - n + 325, 1, -35 );
setRotateKey( spep_0 - n + 326, 1, -40.5 );
setRotateKey( spep_0 - n + 327, 1, -40.5 );
setRotateKey( spep_0 - n + 328, 1, -46 );
setRotateKey( spep_0 - n + 329, 1, -46 );
setRotateKey( spep_0 - n + 330, 1, -51.5 );
setRotateKey( spep_0 - n + 331, 1, -51.5 );
setRotateKey( spep_0 - n + 332, 1, -57 );
setRotateKey( spep_0 - n + 333, 1, -57 );
setRotateKey( spep_0 - n + 334, 1, -62.5 );
setRotateKey( spep_0 - n + 335, 1, -62.5 );
setRotateKey( spep_0 - n + 336, 1, -68 );
setRotateKey( spep_0 - n + 341, 1, -68 );
setRotateKey( spep_0 - n + 342, 1, 0 );
setRotateKey( spep_0 - n + 357, 1, 0 );
setRotateKey( spep_0 - n + 358, 1, 49.2 );
setRotateKey( spep_0 - n + 367, 1, 49.2 );
setRotateKey( spep_0 - n + 368, 1, 51.3 );
setRotateKey( spep_0 - n + 371, 1, 51.3 );
setRotateKey( spep_0 - n + 372, 1, 53.5 );
setRotateKey( spep_0 - n + 375, 1, 53.5 );
setRotateKey( spep_0 - n + 376, 1, 55.6 );
setRotateKey( spep_0 - n + 379, 1, 55.6 );
setRotateKey( spep_0 - n + 380, 1, 57.7 );
setRotateKey( spep_0 - n + 383, 1, 57.7 );
setRotateKey( spep_0 - n + 384, 1, 59.8 );
setRotateKey( spep_0 - n + 387, 1, 59.8 );
setRotateKey( spep_0 - n + 388, 1, 61.9 );
setRotateKey( spep_0 - n + 391, 1, 61.9 );
setRotateKey( spep_0 - n + 392, 1, 63 );
setRotateKey( spep_0 - n + 393, 1, 63 );
setRotateKey( spep_0 - n + 394, 1, 147.1 );
setRotateKey( spep_0 - n + 403, 1, 147.1 );
setRotateKey( spep_0 - n + 404, 1, 166.1 );
setRotateKey( spep_0 - n + 405, 1, 166.1 );
setRotateKey( spep_0 - n + 406, 1, 185.1 );
setRotateKey( spep_0 - n + 407, 1, 185.1 );
setRotateKey( spep_0 - n + 408, 1, 204.1 );
setRotateKey( spep_0 - n + 409, 1, 204.1 );
setRotateKey( spep_0 - n + 410, 1, 223 );
setRotateKey( spep_0 - n + 411, 1, 223 );
setRotateKey( spep_0 - n + 412, 1, 242 );
setRotateKey( spep_0 - n + 413, 1, 242 );
setRotateKey( spep_0 - n + 414, 1, 261 );
setRotateKey( spep_0 - n + 421, 1, 261 );
setRotateKey( spep_0 - n + 422, 1, 0 );
setRotateKey( spep_0 - n + 425, 1, 0 );
setRotateKey( spep_0 - n + 426, 1, 131.5 );
setRotateKey( spep_0 - n + 481, 1, 131.5 );
setRotateKey( spep_0 - n + 482, 1, 171.9 );
setRotateKey( spep_0 - n + 497, 1, 171.9 );
setRotateKey( spep_0 - n + 498, 1, 114.2 );
setRotateKey( spep_0 - n + 499, 1, 114.2 );
setRotateKey( spep_0 - n + 500, 1, 114.1 );
setRotateKey( spep_0 - n + 501, 1, 114.1 );
setRotateKey( spep_0 - n + 502, 1, 114 );
setRotateKey( spep_0 - n + 509, 1, 114 );
setRotateKey( spep_0 - n + 510, 1, 113.9 );
setRotateKey( spep_0 - n + 511, 1, 113.9 );
setRotateKey( spep_0 - n + 512, 1, 113.8 );
setRotateKey( spep_0 - n + 513, 1, 113.8 );
setRotateKey( spep_0 - n + 514, 1, 113.7 );
setRotateKey( spep_0 - n + 515, 1, 113.7 );
setRotateKey( spep_0 - n + 516, 1, 113.6 );
setRotateKey( spep_0 - n + 517, 1, 113.6 );
setRotateKey( spep_0 - n + 518, 1, 113.5 );
setRotateKey( spep_0 - n + 519, 1, 113.5 );
setRotateKey( spep_0 - n + 520, 1, 113.4 );
setRotateKey( spep_0 - n + 521, 1, 113.4 );
setRotateKey( spep_0 - n + 522, 1, 113.3 );
setRotateKey( spep_0 - n + 523, 1, 113.3 );
setRotateKey( spep_0 - n + 524, 1, 113.2 );
setRotateKey( spep_0 - n + 525, 1, 113.2 );
setRotateKey( spep_0 - n + 526, 1, 113.1 );
setRotateKey( spep_0 - n + 527, 1, 113.1 );
setRotateKey( spep_0 - n + 528, 1, 113 );
setRotateKey( spep_0 - n + 529, 1, 113 );
setRotateKey( spep_0 - n + 530, 1, 112.9 );
setRotateKey( spep_0 - n + 531, 1, 112.9 );
setRotateKey( spep_0 - n + 532, 1, 112.8 );
setRotateKey( spep_0 - n + 533, 1, 112.8 );
setRotateKey( spep_0 - n + 534, 1, 112.7 );
setRotateKey( spep_0 - n + 535, 1, 112.7 );
setRotateKey( spep_0 - n + 536, 1, 112.6 );
setRotateKey( spep_0 - n + 537, 1, 112.6 );
setRotateKey( spep_0 - n + 538, 1, 112.5 );
setRotateKey( spep_0 - n + 541, 1, 112.5 );
setRotateKey( spep_0 - n + 542, 1, -94.8 );
setRotateKey( spep_0 - n + 543, 1, -94.8 );
setRotateKey( spep_0 - n + 544, 1, -94.5 );
setRotateKey( spep_0 - n + 545, 1, -94.5 );
setRotateKey( spep_0 - n + 546, 1, -94.3 );
setRotateKey( spep_0 - n + 547, 1, -94.3 );
setRotateKey( spep_0 - n + 548, 1, -94 );
setRotateKey( spep_0 - n + 549, 1, -94 );
setRotateKey( spep_0 - n + 550, 1, -93.8 );
setRotateKey( spep_0 - n + 551, 1, -93.8 );
setRotateKey( spep_0 - n + 552, 1, -93.5 );
setRotateKey( spep_0 - n + 555, 1, -93.3 );
setRotateKey( spep_0 - n + 556, 1, -143.3 );
setRotateKey( spep_0 - n + 557, 1, -143.3 );
setRotateKey( spep_0 - n + 558, 1, -143.2 );
setRotateKey( spep_0 - n + 563, 1, -143.2 );
setRotateKey( spep_0 - n + 564, 1, -142.1 );
setRotateKey( spep_0 - n + 565, 1, -142.1 );
setRotateKey( spep_0 - n + 566, 1, -141 );
setRotateKey( spep_0 - n + 642, 1, -141 );

-- ** 音 ** --
--神聖樹の実落ちる
SE004 = playSeVer2( spep_0 + 148, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE004, 130 );
SE005 = playSeVer2( spep_0 + 148, 1111, "",spep_0 + 164, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 148, SE005, 229 );
SE006 = playSeVer2( spep_0 + 148, 1029, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 178, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE007, 83 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 182, 1109, "", 0, 0, 0, -1);

--初手エルボー
SE009 = playSeVer2( spep_0 + 206, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 214, 1187, "",spep_0 + 240, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 214, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE012 = playSeVer2( spep_0 + 240, 1183, "",spep_0 + 334, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 240, SE012, 77 );
SE013 = playSeVer2( spep_0 + 242, 1120, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 242, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE014, 73 );

--追い越す
SE015 = playSeVer2( spep_0 + 262, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 268, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE016, 155 );

--殴り飛ばす２
SE017 = playSeVer2( spep_0 + 308, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 308, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE018, 79 );
SE019 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE019, 88 );

--壁激突
SE020 = playSeVer2( spep_0 + 354, 1011, "", 0, 0, 0, -1);

--蹴り落とす
SE021 = playSeVer2( spep_0 + 386, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE021, 132 );
SE022 = playSeVer2( spep_0 + 394, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_0 + 416, 1121, "",spep_0 + 520, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 416, SE023, 70 );

--追いかける
SE024 = playSeVer2( spep_0 + 446, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 456, 1277, "", 0, 0, 0, -1);

--瞬間移動
SE026 = playSeVer2( spep_0 + 480, 1109, "", 0, 0, 0, -1);

--膝蹴り
SE027 = playSeVer2( spep_0 + 496, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE027, 78 );
SE028 = playSeVer2( spep_0 + 496, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 496, 1110, "", 0, 0, 0, -1);

--両手で叩きつける
SE030 = playSeVer2( spep_0 + 552, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE030, 87 );
SE031 = playSeVer2( spep_0 + 552, 1359, "",spep_0 + 586, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 552, SE031, 75 );
SE032 = playSeVer2( spep_0 + 556, 1153, "", 0, 0, 0, -1);

--手かざす
SE033 = playSeVer2( spep_0 + 630, 1003, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 726, 8, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 735;

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
-- 敵に気弾を放つ ef_002 (138F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + 138, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 138, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 138, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b_r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 138, entry_SP_002b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 138, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 138, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 - n + 76, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, 116.1, -222.3 , 0 );
setMoveKey( spep_2 - n + 23, 1, 116.1, -222.3 , 0 );
setMoveKey( spep_2 - n + 24, 1, 135, -176.7 , 0 );
setMoveKey( spep_2 - n + 25, 1, 135, -176.7 , 0 );
setMoveKey( spep_2 - n + 26, 1, 164.7, -221.6 , 0 );
setMoveKey( spep_2 - n + 27, 1, 164.7, -221.6 , 0 );
setMoveKey( spep_2 - n + 28, 1, 131.3, -184.9 , 0 );
setMoveKey( spep_2 - n + 29, 1, 131.3, -184.9 , 0 );
setMoveKey( spep_2 - n + 30, 1, 151.6, -222 , 0 );
setMoveKey( spep_2 - n + 31, 1, 151.6, -222 , 0 );
setMoveKey( spep_2 - n + 32, 1, 165.8, -204.5 , 0 );
setMoveKey( spep_2 - n + 33, 1, 165.8, -204.5 , 0 );
setMoveKey( spep_2 - n + 34, 1, 139.8, -178.4 , 0 );
setMoveKey( spep_2 - n + 35, 1, 139.8, -178.4 , 0 );
setMoveKey( spep_2 - n + 36, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 37, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 38, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 39, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 40, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 41, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 42, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 43, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 44, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 45, 1, 153.5, -206.9 , 0 );
setMoveKey( spep_2 - n + 46, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 47, 1, 141.1, -186.4 , 0 );
setMoveKey( spep_2 - n + 48, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 49, 1, 149.2, -189.1 , 0 );
setMoveKey( spep_2 - n + 50, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 51, 1, 143, -206.6 , 0 );
setMoveKey( spep_2 - n + 52, 1, 147.1, -197.1 , 0 );
setMoveKey( spep_2 - n + 53, 1, 147.1, -197.1 , 0 );
setMoveKey( spep_2 - n + 54, 1, 144.5, -203.8 , 0 );
setMoveKey( spep_2 - n + 55, 1, 144.5, -203.8 , 0 );
setMoveKey( spep_2 - n + 56, 1, 147.3, -196.3 , 0 );
setMoveKey( spep_2 - n + 57, 1, 147.3, -196.3 , 0 );
setMoveKey( spep_2 - n + 58, 1, 144.1, -208.2 , 0 );
setMoveKey( spep_2 - n + 59, 1, 144.1, -208.2 , 0 );
setMoveKey( spep_2 - n + 60, 1, 153.2, -229.7 , 0 );
setMoveKey( spep_2 - n + 61, 1, 153.2, -229.7 , 0 );
setMoveKey( spep_2 - n + 62, 1, 144.1, -162.6 , 0 );
setMoveKey( spep_2 - n + 63, 1, 144.1, -162.6 , 0 );
setMoveKey( spep_2 - n + 64, 1, 141.5, -217.9 , 0 );
setMoveKey( spep_2 - n + 65, 1, 141.5, -217.9 , 0 );
setMoveKey( spep_2 - n + 66, 1, 148.2, -159.2 , 0 );
setMoveKey( spep_2 - n + 67, 1, 148.2, -159.2 , 0 );
setMoveKey( spep_2 - n + 68, 1, 144.9, -202.5 , 0 );
setMoveKey( spep_2 - n + 69, 1, 144.9, -202.5 , 0 );
setMoveKey( spep_2 - n + 70, 1, 154.1, -190.9 , 0 );
setMoveKey( spep_2 - n + 71, 1, 154.1, -190.9 , 0 );
setMoveKey( spep_2 - n + 72, 1, 144.1, -145.4 , 0 );
setMoveKey( spep_2 - n + 73, 1, 144.1, -145.4 , 0 );
setMoveKey( spep_2 - n + 74, 1, 133.8, -110.5 , 0 );
setMoveKey( spep_2 - n + 76, 1, 133.8, -110.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.42, 1.42 );
setScaleKey( spep_2 - n + 76, 1, 1.42, 1.42 );

setRotateKey( spep_2 + 0, 1, 22.2 );
setRotateKey( spep_2 - n + 23, 1, 22.2 );
setRotateKey( spep_2 - n + 24, 1, 6 );
setRotateKey( spep_2 - n + 73, 1, 6 );
setRotateKey( spep_2 - n + 74, 1, 21.2 );
setRotateKey( spep_2 - n + 76, 1, 21.2 );

setBlendColor( spep_2 + 0 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_2 - n + 24 , 1, 2, 0, 0, 0, 0.65);
setBlendColor( spep_2 - n + 59, 1, 2, 0, 0, 0, 0.65);
setBlendColor( spep_2 - n + 60 , 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 - n + 73, 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 - n + 74 , 1, 2, 0, 0, 0, 1.0);
setBlendColor( spep_2 - n + 75, 1, 2, 0, 0, 0, 1.0);
setBlendColor( spep_2 - n + 76 , 1, 2, 0, 0, 0, 0);


-- ** 音 ** --
--気弾溜め
SE036 = playSeVer2( spep_1 + 86, 1244, "",spep_2 + 28, 0, 12, 0.6);
SE037 = playSeVer2( spep_1 + 86, 1282, "",spep_2 + 26, 0, 10, 0.6);
SE038 = playSeVer2( spep_1 + 86, 1296, "",spep_2 + 26, 0, 10, -1);

--気弾発射
SE039 = playSeVer2( spep_2 + 16, 1284, "",spep_2 + 82, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 16, SE039, 76 );
SE040 = playSeVer2( spep_2 + 16, 1145, "",spep_2 + 84, 0, 20, 0.6);
SE041 = playSeVer2( spep_2 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE041, 155 );

--爆発
SE042 = playSeVer2( spep_2 + 60, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 60, 1067, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 138 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 18 );
endPhase( spep_2 + 138 - 4 ); 


end
